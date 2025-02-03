<?php

/* Sidebar Activation Part */

use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Session;

function setActive(array $route){
    if(is_array($route)){
        foreach($route as $r){
            if(request()->routeIs($r)){
                return 'active';
            }
        }
    }
}

/** Check if product have discount */

function checkDiscount($product) {
    $currentDate = date('Y-m-d');

    if($product->offer_price > 0 && $currentDate >= $product->offer_start_date && $currentDate <= $product->offer_end_date) {
        return true;
    }

    return false;
}

/** Calculate discount percent */

function calculateDiscountPercent($originalPrice, $discountPrice) {
    $discountAmount = $originalPrice - $discountPrice;
    $discountPercent = ($discountAmount / $originalPrice) * 100;

    return round($discountPercent);
}


/** Check the product type */

function productType($type)
{
    switch ($type) {
        case 'new_arrival':
            return 'New';
            break;
        case 'featured_product':
            return 'Featured';
            break;
        case 'top_product':
            return 'Top';
            break;

        case 'best_product':
            return 'Best';
            break;

        default:
            return '';
            break;
    }
}

// Get Total Cart Amount
function getCartTotal()
{
    $total = 0;
    foreach(Cart::content() as $product){
        $total += ($product->price + $product->options->variants_total) * ($product->qty);
    }
    return $total;
}

// Get Payable Total Amount
function getMainCartTotal()
{
    if (Session::has('coupon')) {
        $coupon = Session::get('coupon');
        $subTotal = getCartTotal();
        $total = 0;
        if ($coupon['discount_type'] == 'amount') {
            $discount = $coupon['discount'];
            $total = $subTotal - $discount;
        } elseif ($coupon['discount_type'] == 'percent') {
            $discount = $subTotal * $coupon['discount'] / 100;
            $total = $subTotal - $discount;
        }

        return $total;
    }else{
        return getCartTotal();
    }
}
// Get Cart Discount
function getCartDiscount()
{
    if (Session::has('coupon')) {
        $coupon = Session::get('coupon');
        $subTotal = getCartTotal();
        $total = 0;
        if ($coupon['discount_type'] == 'amount') {
            return $coupon['discount'];
        } elseif ($coupon['discount_type'] == 'percent') {
            $discount = $subTotal * $coupon['discount'] / 100;
            return $discount;
        }
    }else{
        return 0;
    }
}

// Get Shipping Fee
function getShippingFee()
{
    if(Session::has('shipping_method')){
        return Session::get('shipping_method')['cost'];
    }else{
        return 0;
    }
}

// Get Payable Amount
function getPayableAmount()
{
    return getMainCartTotal() + getShippingFee();
}

// Limit Text
function limitText($text, $limit = 15) {
    return  \Str::limit($text, $limit);
}