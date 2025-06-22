<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Advertisement;
use App\Models\Coupon;
use App\Models\Product;
use App\Models\ProductVarientItem;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use PhpParser\Node\Stmt\Else_;

class CartController extends Controller
{
    // Show Cart Page
    public function cartDetails()
    {
        $cartItems = Cart::content();

        if(count($cartItems)==0){
            Session::forget('coupon');
            toastr('Please Add Cart Product to view this page!!', 'warning', ['title' => 'Cart is Empty!']);
            return redirect()->route('home');
        }

        $cart_page_banner = Advertisement::where('key', 'cart_page_banner')->first();
        $cart_page_banner = json_decode($cart_page_banner?->value);

        return view('frontend.pages.cart-detail', compact('cartItems', 'cart_page_banner'));
    }

    // Add Item To Cart
    public function addToCart(Request $request)
    {
        $product = Product::findOrFail($request->product_id);

        // Check Product Quantity
        if( $product->qty == 0){
            return response(['status' => 'error', 'message' => 'Product stock Out!!']);
        }else if($product->qty < $request->qty){
            return response(['status' => 'error', 'message' => 'Quantity not available on Stock!!']);
        }

        $variants = [];
        $variantTotalAmount = 0;

        if($request->has('variants_items'))
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
        $productPrice = 0;

        if(checkDiscount($product)){
            $productPrice = $product->offer_price;
        }else{
            $productPrice = $product->price;
        }

        $cartData = [];
        $cartData['id'] = $product->id;
        $cartData['name'] = $product->name;
        $cartData['qty'] = $request->qty;
        $cartData['price'] = $productPrice;
        $cartData['weight'] = 10;
        $cartData['options']['variants'] = $variants;
        $cartData['options']['variants_total'] = $variantTotalAmount;
        $cartData['options']['image'] = $product->thumb_image;
        $cartData['options']['slug'] = $product->slug;

        Cart::add($cartData);

        return response(['message' => 'Added to Cart Successfully!', 'status'=>'success']);
    }

    public function updateProductQty(Request $request)
    {   
        $productId = Cart::get($request->rowId)->id;
        $product = Product::findOrFail($productId);

        // Check Product Quantity
        if( $product->qty == 0){
            return response(['status' => 'error', 'message' => 'Product stock Out!!']);
        }else if($product->qty < $request->qty){
            return response(['status' => 'error', 'message' => 'Quantity not available on Stock!!']);
        }

        Cart::update($request->rowId, $request->quantity);

        $productTotal = $this->getProductTotal($request->rowId);
        return response(['message' => 'Product Quantity Updated', 'status' => 'success', 'product_total' => $productTotal]);
    }

    // Get Product Total
    public function getProductTotal($rowId)
    {
        $product = Cart::get($rowId);

        $total = ($product->price + $product->options->variants_total) * ($product->qty);

        return $total;
    }

    // Get Cart Total
    public function cartTotal()
    {
        $total = 0;

        foreach(Cart::content() as $product){
            $total += $this->getProductTotal($product->rowId);
        }
        return $total;
    }

    // Clear all Cart Products
    public function clearCart()
    {
        Cart::destroy();

        return response(['status' => 'success', 'message' => 'Cleared Successfully!']);
    }

    // Clear single Cart Product!
    public function removeCartProduct($rowId)
    {
        Cart::remove($rowId);
        toastr('Item removed from Cart!!', 'success', ['title' => 'Success!!']);
        return redirect()->back();
    }

    public function getCartCount()
    {
        return Cart::content()->count();
    }

    // Get Cart Products List
    public function getCartProducts()
    {
        return Cart::content();
    }

    // Remove Sidebar Product

    public function removeSidebarProduct(Request $request)
    {
        Cart::remove($request->rowId);

        return response(['status' => 'success', 'message' => 'Item Removed Successfully!']);
    }

    public function applyCoupon(Request $request)
    {
        if ($request->coupon_code == null) {
            return response(['status' => 'error', 'message' => 'Coupon field is required!']);
        }

        $coupon = Coupon::where(['code' => $request->coupon_code, 'status' => 1])->first();

        if ($coupon == null) {
            return response(['status' => 'error', 'message' => 'Coupon does not Exist!']);
        } elseif ($coupon->start_date > date('Y-m-d')) {
            return response(['status' => 'error', 'message' => 'Coupon is not yet valid!']);
        } elseif ($coupon->end_date < date('Y-m-d')) {
            return response(['status' => 'error', 'message' => 'Coupon has been Expired!']);
        } elseif ($coupon->total_used >= $coupon->quantity) {
            return response(['status' => 'error', 'message' => 'This coupon has reached its usage limit and cannot be applied.']);
        }

        Session::put('coupon', [
            'coupon_name' => $coupon->name,
            'coupon_code' => $coupon->code,
            'discount_type' => $coupon->discount_type,
            'discount' => $coupon->discount
        ]);

        return response(['status' => 'success', 'message' => 'Coupon Applied']);
    }

    public function couponCalculation()
    {
        if (Session::has('coupon')) {
            $coupon = Session::get('coupon');
            $subTotal = getCartTotal();
    
            if ($coupon['discount_type'] == 'amount') {
                $discount = $coupon['discount'];
                $total = max(0, ($subTotal - $discount));
            } elseif ($coupon['discount_type'] == 'percent') {
                $discount = $subTotal * $coupon['discount'] / 100;
                $total = $subTotal - $discount;
            }
    
            return response([
                'status' => 'success',
                'cart_total' => $total,
                'discount' => $discount
            ]);
        } else {
            // If no coupon is applied, just return the cart total with no discount
            $total = getCartTotal();
            return response(['status' => 'success', 'cart_total' => $total, 'discount' => 0]);
        }
    }
        
}
