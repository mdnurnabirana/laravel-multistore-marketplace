<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductVarientItem;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;


class CartController extends Controller
{
    // Add Item To Cart
    public function addToCart(Request $request)
    {
        $product = Product::findOrFail($request->product_id);

        $variants = [];
        $variantTotalAmount = 0;

        if($request->has('variant_items'))
        {
            foreach($request->variants_items as $item_id)
            {
                $variantItem = ProductVarientItem::find($item_id);
                $variants[$variantItem->productVariant->name]['name'] = $variantItem->name;
                $variants[$variantItem->productVariant->name]['price'] = $variantItem->price;
                $variantTotalAmount += $variantItem->price;
            }
        }
        
        // Check Discount
        $productTotalAmount = 0;

        if(checkDiscount($product)){
            $productTotalAmount = ($product->offer_price + $variantTotalAmount);
        }else{
            $productTotalAmount = ($product->price + $variantTotalAmount);
        }

        $cartData = [];
        $cartData['id'] = $product->id;
        $cartData['name'] = $product->name;
        $cartData['qty'] = $request->qty;
        $cartData['price'] = $productTotalAmount;
        $cartData['weight'] = 10;
        $cartData['options']['variants'] = $variants;
        $cartData['options']['image'] = $product->thumb_image;
        $cartData['options']['slug'] = $product->slug;

        Cart::add($cartData);

        return response(['message' => 'Added to Cart Successfully!', 'status'=>'success']);
    }
}
