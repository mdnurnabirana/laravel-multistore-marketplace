<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WishlistController extends Controller
{
    public function index()
    {
        $wishlistProducts = Wishlist::with('product')->where('user_id', Auth::user()->id)->orderBy('id', 'DESC')->get();
        return view('frontend.pages.wishlist', compact('wishlistProducts'));
    }

    public function addToWishlist(Request $request)
    {
        if(!Auth::check()) {
            return response(['message' => 'Please login first', 'status' => 'error']);
        }

        $wishlistCount = Wishlist::where(['product_id' => $request->id, 'user_id' => Auth::user()->id])->count();

        if($wishlistCount > 0) {
            return response(['message' => 'Product already added to wishlist', 'status' => 'error']);
        }

        $wishlist = new Wishlist();
        $wishlist->product_id = $request->id;
        $wishlist->user_id = Auth::user()->id;

        $wishlist->save();

        $count = Wishlist::where('user_id', Auth::user()->id)->count();

        return response(['message' => 'Product added to wishlist', 'status' => 'success', 'count' => $count]);
    }

    public function removeFromWishlist(string $id)
    {
        $wishlistProduct = Wishlist::where('id', $id)->firstOrFail();
        if($wishlistProduct->user_id != Auth::user()->id) {
            return redirect()->back();
        }
        $wishlistProduct->delete();

        toastr('Product removed from wishlist', 'success');

        return redirect()->back();
    }
}
