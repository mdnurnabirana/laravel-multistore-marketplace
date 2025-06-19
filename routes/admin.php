<?php

use App\Http\Controllers\Backend\AboutController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Backend\AdminController;
use App\Http\Controllers\Backend\AdminListController;
use App\Http\Controllers\Backend\AdminReviewController;
use App\Http\Controllers\Backend\ProfileController;
use App\Http\Controllers\Backend\SliderController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\SubCategoryController;
use App\Http\Controllers\Backend\ChildCategoryController;
use App\Http\Controllers\Backend\BrandController;
use App\Http\Controllers\Backend\AdminVendorProfileController;
use App\Http\Controllers\Backend\AdvertisementController;
use App\Http\Controllers\Backend\BlogCategoryController;
use App\Http\Controllers\Backend\BlogCommentController;
use App\Http\Controllers\Backend\BlogController;
use App\Http\Controllers\Backend\CouponController;
use App\Http\Controllers\Backend\CustomerListController;
use App\Http\Controllers\Backend\FlashSaleController;
use App\Http\Controllers\Backend\FooterGridThreeController;
use App\Http\Controllers\Backend\FooterGridTwoController;
use App\Http\Controllers\Backend\FooterInfoController;
use App\Http\Controllers\Backend\FooterSocialController;
use App\Http\Controllers\Backend\HomePageSettingController;
use App\Http\Controllers\Backend\ManageUserController;
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
use App\Http\Controllers\Backend\SubscribersController;
use App\Http\Controllers\Backend\TermsAndCondition;
use App\Http\Controllers\Backend\TransactionController;
use App\Http\Controllers\Backend\VendorConditionController;
use App\Http\Controllers\Backend\VendorListController;
use App\Http\Controllers\Backend\VendorRequestController;

Route::middleware(['auth', 'role:admin'])->prefix('admin') ->as('admin.') ->group(function () {
        Route::get('dashboard', [AdminController::class, 'dashboard'])->name('dashboard');
        Route::get('profile', [ProfileController::class, 'index'])->name('profile');
        Route::post('profile/update', [ProfileController::class, 'updateProfile'])->name('profile.update');
        Route::post('profile/update/password', [ProfileController::class, 'updatePassword'])->name('password.update');
        
        // Slider
        Route::resource('slider', SliderController::class);

        // Category
        Route::put('change-status', [CategoryController::class, 'changeStatus'])->name('category.change-status');
        Route::resource('category', CategoryController::class);

        // Sub Category
        Route::put('subcategory/change-status', [SubCategoryController::class, 'changeStatus'])->name('sub-category.change-status');
        Route::resource('sub-category', SubCategoryController::class);

        // Child Category
        Route::put('child-category/change-status', [ChildCategoryController::class, 'changeStatus'])->name('child-category.change-status');
        Route::get('get-subcategory', [ChildCategoryController::class, 'getSubCategories'])->name('get-subcategories');
        Route::resource('child-category', ChildCategoryController::class);

        // Brand Routes
        Route::put('brand/change-status', [BrandController::class, 'changeStatus'])->name('brand.change-status');
        Route::resource('brand', BrandController::class);

        // Vendor Profile Routes
        Route::resource('vendor-profile', AdminVendorProfileController::class);

        // Product Routes
        Route::get('product/get-subcategories', [ProductController::class, 'getSubCategories'])->name('product.get-subcategories');
        Route::get('product/get-child-categories', [ProductController::class, 'getChildCategories'])->name('product.get-child-categories');
        Route::put('product/change-status', [ProductController::class, 'changeStatus'])->name('product.change-status');
        Route::resource('products', ProductController::class);

        // Product Image Gallery
        Route::resource('products-image-gallery', ProductImageGalleryController::class);

        // Products Varient Route
        Route::put('products-variant/change-status', [ProductVariantController::class, 'changeStatus'])->name('products-variant.change-status');
        Route::resource('products-variant', ProductVariantController::class);
        
        // Products Varient Item Route
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
        Route::put('email-setting-update', [SettingController::class, 'emailConfigSettingUpdate'])->name('email-setting-update');
        Route::put('logo-setting-update', [SettingController::class, 'logoSettingUpdate'])->name('logo-setting-update');
        
        // Paypal Payment Settings Routes
        Route::get('payment-settings', [PaymentSettingController::class, 'index'])->name('payment-settings.index');
        Route::resource('paypal-setting', PaypalSettingController::class);

        // Stripe & RazorPay Settings Routes
        Route::put('stripe-settings/{id}', [StripeSettingController::class, 'update'])->name('stripe-setting.update');
        Route::put('razorpay-settings/{id}', [RazorpaySettingController::class, 'update'])->name('razorpay-setting.update');

        // Order Related Routes
        Route::get('payment-status', [OrderController::class, 'changePaymentStatus'])->name('payment.status');
        Route::get('order-status', [OrderController::class, 'changeOrderStatus'])->name('order.status');
        Route::get('pending-orders', [OrderController::class, 'pendingOrders'])->name('pending-orders');
        Route::get('processed-orders', [OrderController::class, 'processedOrders'])->name('processed-orders');
        Route::get('dropped-off-orders', [OrderController::class, 'droppedOffOrders'])->name('dropped-off-orders');
        Route::get('shipped-orders', [OrderController::class, 'shippedOrders'])->name('shipped-orders');
        Route::get('out-for-delivery-orders', [OrderController::class, 'outForDeliveryOrders'])->name('out-for-delivery-orders');
        Route::get('delivered-orders', [OrderController::class, 'deliveredOrders'])->name('delivered-orders');
        Route::get('cancelled-orders', [OrderController::class, 'cancelledOrders'])->name('cancelled-orders');
        Route::resource('order', OrderController::class);

        // Transaction Routes
        Route::get('transaction', [TransactionController::class, 'index'])->name('transaction');

        // Home Page Setting Routes
        Route::get('home-page-setting', [HomePageSettingController::class, 'index'])->name('home-page-setting');
        Route::put('popular-category-section', [HomePageSettingController::class, 'updatePopularCategorySection'])->name('popular-category-section');
        Route::put('product-slider-section-one', [HomePageSettingController::class, 'updateProductSliderSectionOne'])->name('product-slider-section-one');
        Route::put('product-slider-section-two', [HomePageSettingController::class, 'updateProductSliderSectionTwo'])->name('product-slider-section-two');
        Route::put('product-slider-section-three', [HomePageSettingController::class, 'updateProductSliderSectionThree'])->name('product-slider-section-three');
        
        // Footer Routes
        Route::resource('footer-info', FooterInfoController::class);
        Route::put('change-status', [FooterSocialController::class, 'changeStatus'])->name('footer-socials.change-status');
        Route::resource('footer-socials', FooterSocialController::class);
        Route::put('change-status', [FooterGridTwoController::class, 'changeStatus'])->name('footer-grid-two.change-status');
        Route::put('change-title', [FooterGridTwoController::class, 'changeTitle'])->name('footer-grid-two.change-title');
        Route::resource('footer-grid-two', FooterGridTwoController::class);

        Route::put('change-status', [FooterGridThreeController::class, 'changeStatus'])->name('footer-grid-three.change-status');
        Route::put('change-title', [FooterGridThreeController::class, 'changeTitle'])->name('footer-grid-three.change-title');
        Route::resource('footer-grid-three', FooterGridThreeController::class);

       // Subscriber Routes
        Route::get('subscribers', [SubscribersController::class, 'index'])->name('subscribers');
        Route::post('subscribers-send-mail', [SubscribersController::class, 'sendMail'])->name('subscribers-send-mail');
        Route::delete('subscribers/{id}', [SubscribersController::class, 'destroy'])->name('subscribers.destroy');

        // Advertisement
        Route::get('advertisement', [AdvertisementController::class, 'index'])->name('advertisement.index');
        Route::put('advertisement/homepage-banner-section-one', [AdvertisementController::class, 'homepageBannerSectionOne'])->name('homepage-banner-section-one');
        Route::put('advertisement/homepage-banner-section-two', [AdvertisementController::class, 'homepageBannerSectionTwo'])->name('homepage-banner-section-two');
        Route::put('advertisement/homepage-banner-section-three', [AdvertisementController::class, 'homepageBannerSectionThree'])->name('homepage-banner-section-three');
        Route::put('advertisement/homepage-banner-section-four', [AdvertisementController::class, 'homepageBannerSectionFour'])->name('homepage-banner-section-four');
        Route::put('advertisement/product-page-banner', [AdvertisementController::class, 'productPageBanner'])->name('product-page-banner');
        Route::put('advertisement/cart-page-banner', [AdvertisementController::class, 'cartPageBanner'])->name('cart-page-banner');
        
        // Reviews
        Route::get('reviews', [AdminReviewController::class, 'index'])->name('review.index');
        Route::put('change-status', [AdminReviewController::class, 'changeStatus'])->name('review.change-status');

        // Venodr Request
        Route::get('vendor-requests', [VendorRequestController::class, 'index'])->name('vendor-requests.index');
        Route::get('vendor-requests/{id}/show', [VendorRequestController::class, 'show'])->name('vendor-requests.show');
        Route::put('vendor-requests/{id}/change-status', [VendorRequestController::class, 'changeStatus'])->name('vendor-requests.change-status');
       
        // Customer List 
        Route::get('customers', [CustomerListController::class, 'index'])->name('customers.index');   
        Route::put('customer/change-status', [CustomerListController::class, 'changeStatus'])->name('customer.change-status');
        
        // Vendor List
        Route::get('vendor-list', [VendorListController::class, 'index'])->name('vendor-list.index');   
        Route::put('vendor-list/change-status', [VendorListController::class, 'changeStatus'])->name('vendor-list.change-status');
        
        // Vendor Conditions
        Route::get('vendor-condition', [VendorConditionController::class, 'index'])->name('vendor-condition.index');
        Route::put('vendor-condition/update', [VendorConditionController::class, 'update'])->name('vendor-condition.update');

        // About
        Route::get('about', [AboutController::class, 'index'])->name('about.index');
        Route::put('about/update', [AboutController::class, 'update'])->name('about.update');

        // Term's & Condition
        Route::get('termsandcondition', [TermsAndCondition::class, 'index'])->name('termsandcondition.index');
        Route::put('termsandcondition/update', [TermsAndCondition::class, 'update'])->name('termsandcondition.update');

        // Manage User 
        Route::get('manage-user', [ManageUserController::class, 'index'])->name('manage-user.index');
        Route::post('manage-user/create', [ManageUserController::class, 'create'])->name('manage-user.create');

        // Admin List
        Route::get('admin-list', [AdminListController::class, 'index'])->name('admin-list.index');
        Route::put('admin-list/change-status', [AdminListController::class, 'changeStatus'])->name('admin-list.change-status');
        Route::delete('admin-list/{id}', [AdminListController::class, 'destroy'])->name('admin-list.destroy');

        // Manage Blog Categories
        Route::put('blog-category/change-status', [BlogCategoryController::class, 'changeStatus'])->name('blog-category.change-status');
        Route::resource('blog-category', BlogCategoryController::class);

        // Manage Blog Posts
        Route::put('blog/change-status', [BlogController::class, 'changeStatus'])->name('blog.change-status');
        Route::resource('blog', BlogController::class);
        Route::get('blog-comments', [BlogCommentController::class, 'index'])->name('blog-comments.index');
        Route::delete('blog-comments/{id}', [BlogCommentController::class, 'destroy'])->name('blog-comments.destroy');

        // 
});