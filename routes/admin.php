<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Backend\AdminController;
use App\Http\Controllers\Backend\ProfileController;
use App\Http\Controllers\Backend\SliderController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\SubCategoryController;
use App\Http\Controllers\Backend\ChildCategoryController;
use App\Http\Controllers\Backend\BrandController;
use App\Http\Controllers\Backend\AdminVendorProfileController;
use App\Http\Controllers\Backend\CouponController;
use App\Http\Controllers\Backend\FlashSaleController;
use App\Http\Controllers\Backend\OrderController;
use App\Http\Controllers\Backend\PaymentSettingController;
use App\Http\Controllers\Backend\PaypalSettingController;
use App\Http\Controllers\Backend\ProductController;
use App\Http\Controllers\Backend\ProductImageGalleryController;
use App\Http\Controllers\Backend\ProductVariantController;
use App\Http\Controllers\Backend\ProductVariantItemController;
use App\Http\Controllers\Backend\RazorpaySettingController;
use App\Http\Controllers\Backend\SellerProductController;
use App\Http\Controllers\Backend\SettingController;
use App\Http\Controllers\Backend\ShippingRuleController;
use App\Http\Controllers\Backend\StripeSettingController;

Route::middleware(['auth', 'role:admin'])->prefix('admin') ->as('admin.') ->group(function () {
        Route::get('dashboard', [AdminController::class, 'dashboard'])->name('dashboard');
        Route::get('profile', [ProfileController::class, 'index'])->name('profile');
        Route::post('profile/update', [ProfileController::class, 'updateProfile'])->name('profile.update');
        Route::post('profile/update/password', [ProfileController::class, 'updatePassword'])->name('password.update');
        
        // Slider
        Route::resource('slider', SliderController::class);

        //Category
        Route::put('change-status', [CategoryController::class, 'changeStatus'])->name('category.change-status');
        Route::resource('category', CategoryController::class);

        //Sub Category
        Route::put('subcategory/change-status', [SubCategoryController::class, 'changeStatus'])->name('sub-category.change-status');
        Route::resource('sub-category', SubCategoryController::class);

        //Child Category
        Route::put('child-category/change-status', [ChildCategoryController::class, 'changeStatus'])->name('child-category.change-status');
        Route::get('get-subcategory', [ChildCategoryController::class, 'getSubCategories'])->name('get-subcategories');
        Route::resource('child-category', ChildCategoryController::class);

        //Brand Routes
        Route::put('brand/change-status', [BrandController::class, 'changeStatus'])->name('brand.change-status');
        Route::resource('brand', BrandController::class);

        //Vendor Profile Routes
        Route::resource('vendor-profile', AdminVendorProfileController::class);

        //Product Routes
        Route::get('product/get-subcategories', [ProductController::class, 'getSubCategories'])->name('product.get-subcategories');
        Route::get('product/get-child-categories', [ProductController::class, 'getChildCategories'])->name('product.get-child-categories');
        Route::put('product/change-status', [ProductController::class, 'changeStatus'])->name('product.change-status');
        Route::resource('products', ProductController::class);

        //Product Image Gallery
        Route::resource('products-image-gallery', ProductImageGalleryController::class);

        //Products Varient Route
        Route::put('products-variant/change-status', [ProductVariantController::class, 'changeStatus'])->name('products-variant.change-status');
        Route::resource('products-variant', ProductVariantController::class);
        
        //Products Varient Item Route
        Route::get('products-variant-item/{productId}/{variantId}', [ProductVariantItemController::class, 'index'])->name('products-variant-item.index');
        Route::get('products-variant-item/create/{productId}/{variantId}', [ProductVariantItemController::class, 'create'])->name('products-variant-item.create');
        Route::post('products-variant-item', [ProductVariantItemController::class, 'store'])->name('products-variant-item.store');
        Route::get('products-variant-item-edit/{variantItemId}', [ProductVariantItemController::class, 'edit'])->name('products-variant-item.edit');
        Route::put('products-variant-item-update/{variantItemId}', [ProductVariantItemController::class, 'update'])->name('products-variant-item.update');
        Route::delete('products-variant-item/{variantItemId}', [ProductVariantItemController::class, 'destroy'])->name('products-variant-item.destroy');
        Route::put('products-variant-item-status', [ProductVariantItemController::class, 'changeStatus'])->name('products-variant-item.change-status');
        
        // Seller Products Routes
        Route::get('seller-products', [SellerProductController::class, 'index'])->name('seller-products.index');
        Route::get('seller-pending-products', [SellerProductController::class, 'pendingProducts'])->name('seller-pending-products.index');
        Route::put('change-approve-status', [SellerProductController::class, 'changeApproveStatus'])->name('change-approve-status');

        // Flash Sale Routes
        Route::get('flash-sale', [FlashSaleController::class, 'index'])->name('flash-sale.index');
        Route::put('flash-sale', [FlashSaleController::class, 'update'])->name('flash-sale.update');
        Route::post('flash-sale/add-product', [FlashSaleController::class, 'addProduct'])->name('flash-sale.add-product');
        Route::put('flash-sale/show-at-home/status-change', [FlashSaleController::class, 'changeShowAtHomeStatus'])->name('flash-sale.show-at-home.change-status');
        Route::put('flash-sale/change-status', [FlashSaleController::class, 'changeStatus'])->name('flash-sale-status');
        Route::delete('flash-sale/{id}', [FlashSaleController::class, 'destroy'])->name('flash-sale.destroy');

        // Coupon Routes
        Route::put('coupons/change-status', [CouponController::class, 'changeStatus'])->name('coupons.change-status');
        Route::resource('coupons', CouponController::class);

        // Shipping Rule
        Route::put('shipping-rule/change-status', [ShippingRuleController::class, 'changeStatus'])->name('shipping-rule.change-status');
        Route::resource('shipping-rule', ShippingRuleController::class);

        // Settings Routes
        Route::get('settings', [SettingController::class, 'index'])->name('settings.index');
        Route::put('general-setting-update', [SettingController::class, 'generalSettingUpdate'])->name('general-setting-update');

        // Paypal Payment Settings Routes
        Route::get('payment-settings', [PaymentSettingController::class, 'index'])->name('payment-settings.index');
        Route::resource('paypal-setting', PaypalSettingController::class);

        // Stripe & RazorPay Settings Routes
        Route::put('stripe-settings/{id}', [StripeSettingController::class, 'update'])->name('stripe-setting.update');
        Route::put('razorpay-settings/{id}', [RazorpaySettingController::class, 'update'])->name('razorpay-setting.update');

        // Order Related Routes
        Route::get('payment-status', [OrderController::class, 'changePaymentStatus'])->name('payment.status');
        Route::get('order-status', [OrderController::class, 'changeOrderStatus'])->name('order.status');
        Route::resource('order', OrderController::class);

});

