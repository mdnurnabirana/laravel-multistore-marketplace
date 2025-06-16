<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\ProductReview;
use App\Models\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserDashboardController extends Controller
{
    public function index()
    {
        $totalOrder = Order::where('user_id', Auth::id())->count();
        $pendingOrder = Order::where('user_id', Auth::id())->where('order_status', 'pending')->count();
        $completedOrder = Order::where('user_id', Auth::id())->where('order_status', 'delivered')->count();
        $reviews = ProductReview::where('user_id', Auth::id())->count();
        $wishlist = Wishlist::where('user_id', Auth::id())->count();
        return view('frontend.dashboard.dashboard', compact('totalOrder', 'completedOrder', 'pendingOrder', 'reviews', 'wishlist'));
    }
}
