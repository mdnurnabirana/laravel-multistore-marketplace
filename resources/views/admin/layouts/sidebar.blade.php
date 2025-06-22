<div class="main-sidebar sidebar-style-2">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="{{ route('home') }}">{{ $settings->site_name }}</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="{{ route('home') }}">St</a>
        </div>
        <ul class="sidebar-menu">

            <li class="menu-header">Ecommerce</li>

            <!-- Manage Categories -->
            <li class="dropdown {{ setActive(['admin.category.*', 'admin.sub-category.*', 'admin.child-category.*']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                    <i class="fas fa-sitemap"></i> <span>Manage Categories</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.category.*']) }}"><a class="nav-link" href="{{ route('admin.category.index') }}">Category</a></li>
                    <li class="{{ setActive(['admin.sub-category.*']) }}"><a class="nav-link" href="{{ route('admin.sub-category.index') }}">Sub Category</a></li>
                    <li class="{{ setActive(['admin.child-category.*']) }}"><a class="nav-link" href="{{ route('admin.child-category.index') }}">Child Category</a></li>
                </ul>
            </li>

            <!-- Manage Products -->
            <li class="dropdown {{ setActive(['admin.brand.*', 'admin.products.*', 'admin.products-image-gallery.*', 'admin.products-variant.*', 'admin.products-variant-item.*', 'admin.seller-products.*', 'admin.seller-pending-products.*', 'admin.reviews.*']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                    <i class="fas fa-box-open"></i> <span>Manage Products</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.brand.*']) }}"><a class="nav-link" href="{{ route('admin.brand.index') }}">Brands</a></li>
                    <li class="{{ setActive(['admin.products.*', 'admin.products-image-gallery.*', 'admin.products-variant.*', 'admin.products-variant-item.*', 'admin.reviews.*']) }}">
                        <a class="nav-link" href="{{ route('admin.products.index') }}">Products</a>
                    </li>
                    <li class="{{ setActive(['admin.seller-products.*']) }}"><a class="nav-link" href="{{ route('admin.seller-products.index') }}">Seller Products</a></li>
                    <li class="{{ setActive(['admin.seller-pending-products.*']) }}"><a class="nav-link" href="{{ route('admin.seller-pending-products.index') }}">Pending Seller Products</a></li>
                    <li class="{{ setActive(['admin.reviews.*']) }}"><a class="nav-link" href="{{ route('admin.review.index') }}">Product Reviews</a></li>
                </ul>
            </li>

            <!-- Orders -->
            <li class="dropdown {{ setActive(['admin.order.index.*', 'admin.pending-orders*', 'admin.processed-orders*', 'admin.dropped-off-orders*', 'admin.shipped-orders*', 'admin.out-for-delivery-orders*', 'admin.delivered-orders*', 'admin.cancelled-orders*']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                    <i class="fas fa-shopping-cart"></i> <span>Orders</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.order.index*']) }}"><a class="nav-link" href="{{ route('admin.order.index') }}">All Orders</a></li>
                    <li class="{{ setActive(['admin.pending-orders*']) }}"><a class="nav-link" href="{{ route('admin.pending-orders') }}">Pending</a></li>
                    <li class="{{ setActive(['admin.processed-orders*']) }}"><a class="nav-link" href="{{ route('admin.processed-orders') }}">Processed</a></li>
                    <li class="{{ setActive(['admin.dropped-off-orders*']) }}"><a class="nav-link" href="{{ route('admin.dropped-off-orders') }}">Dropped Off</a></li>
                    <li class="{{ setActive(['admin.shipped-orders*']) }}"><a class="nav-link" href="{{ route('admin.shipped-orders') }}">Shipped</a></li>
                    <li class="{{ setActive(['admin.out-for-delivery-orders*']) }}"><a class="nav-link" href="{{ route('admin.out-for-delivery-orders') }}">Out For Delivery</a></li>
                    <li class="{{ setActive(['admin.delivered-orders*']) }}"><a class="nav-link" href="{{ route('admin.delivered-orders') }}">Delivered</a></li>
                    <li class="{{ setActive(['admin.cancelled-orders*']) }}"><a class="nav-link" href="{{ route('admin.cancelled-orders') }}">Cancelled</a></li>
                </ul>
            </li>

            <!-- Transactions -->
            <li class="{{ setActive(['admin.transaction*']) }}"><a class="nav-link" href="{{ route('admin.transaction') }}">
                <i class="fas fa-exchange-alt"></i> <span>Transactions</span></a></li>

            <!-- Ecommerce Settings -->
            <li class="dropdown {{ setActive(['admin.flash-sale.*', 'admin.coupons.*', 'admin.shipping-rule.*', 'admin.vendor-profile.*', 'admin.payment-settings.*']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                    <i class="fas fa-tags"></i> <span>Ecommerce Settings</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.flash-sale.*']) }}"><a class="nav-link" href="{{ route('admin.flash-sale.index') }}">Flash Sale</a></li>
                    <li class="{{ setActive(['admin.coupons.*']) }}"><a class="nav-link" href="{{ route('admin.coupons.index') }}">Coupons</a></li>
                    <li class="{{ setActive(['admin.shipping-rule.*']) }}"><a class="nav-link" href="{{ route('admin.shipping-rule.index') }}">Shipping Rule</a></li>
                    <li class="{{ setActive(['admin.vendor-profile.*']) }}"><a class="nav-link" href="{{ route('admin.vendor-profile.index') }}">Vendor Profile</a></li>
                    <li class="{{ setActive(['admin.payment-settings.*']) }}"><a class="nav-link" href="{{ route('admin.payment-settings.index') }}">Payment Settings</a></li>
                </ul>
            </li>

            <!-- Manage Website -->
            <li class="dropdown {{ setActive(['admin.slider.*', 'admin.home-page-setting.*', 'admin.vendor-condition.index', 'admin.about.index', 'admin.termsandcondition.index']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                    <i class="fas fa-cogs"></i> <span>Manage Website</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.slider.*']) }}"><a class="nav-link" href="{{ route('admin.slider.index') }}">Slider</a></li>
                    <li class="{{ setActive(['admin.home-page-setting.*']) }}"><a class="nav-link" href="{{ route('admin.home-page-setting') }}">Home Page Settings</a></li>
                    <li class="{{ setActive(['admin.vendor-condition.index']) }}"><a class="nav-link" href="{{ route('admin.vendor-condition.index') }}">Vendor Conditions</a></li>
                    <li class="{{ setActive(['admin.about.index']) }}"><a class="nav-link" href="{{ route('admin.about.index') }}">About</a></li>
                    <li class="{{ setActive(['admin.termsandcondition.index']) }}"><a class="nav-link" href="{{ route('admin.termsandcondition.index') }}">Terms & Conditions</a></li>
                </ul>
            </li>

            <!-- Advertisement -->
            <li class="{{ setActive(['admin.advertisement.index']) }}"><a class="nav-link" href="{{ route('admin.advertisement.index') }}">
                <i class="fas fa-ad"></i> <span>Advertisement</span></a></li>

            <!-- Manage Blog -->
            <li class="dropdown {{ setActive(['admin.blog-category.*', 'admin.blog.*', 'admin.blog-comments.*']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                    <i class="fas fa-newspaper"></i> <span>Manage Blog</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.blog-category.*']) }}"><a class="nav-link" href="{{ route('admin.blog-category.index') }}">Categories</a></li>
                    <li class="{{ setActive(['admin.blog.*']) }}"><a class="nav-link" href="{{ route('admin.blog.index') }}">Blogs</a></li>
                    <li class="{{ setActive(['admin.blog-comments.*']) }}"><a class="nav-link" href="{{ route('admin.blog-comments.index') }}">Comments</a></li>
                </ul>
            </li>

            <!-- Manage Withdraw Methods -->
            <li class="dropdown {{ setActive(['admin.withdraw-method.*']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                    <i class="fas fa-money-check-alt"></i> <span>WithDraw Payments</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.withdraw-method.index']) }}"><a class="nav-link" href="{{ route('admin.withdraw-method.index') }}">WithDraw Method</a></li>
                </ul>
            </li>

            <li class="menu-header">Settings & More</li>

            <!-- Footer -->
            <li class="dropdown {{ setActive(['admin.footer-info.*', 'admin.footer-socials.*', 'admin.footer-grid-two.*', 'admin.footer-grid-three.*']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                    <i class="fas fa-shoe-prints"></i> <span>Footer</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.footer-info.index']) }}"><a class="nav-link" href="{{ route('admin.footer-info.index') }}">Footer Info</a></li>
                    <li class="{{ setActive(['admin.footer-socials.index']) }}"><a class="nav-link" href="{{ route('admin.footer-socials.index') }}">Footer Socials</a></li>
                    <li class="{{ setActive(['admin.footer-grid-two.index']) }}"><a class="nav-link" href="{{ route('admin.footer-grid-two.index') }}">Grid Two</a></li>
                    <li class="{{ setActive(['admin.footer-grid-three.index']) }}"><a class="nav-link" href="{{ route('admin.footer-grid-three.index') }}">Grid Three</a></li>
                </ul>
            </li>

            <!-- Users -->
            <li class="dropdown {{ setActive(['admin.vendor-requests.index', 'admin.customers.index', 'admin.vendor-list.index', 'admin.manage-user.index', 'admin.admin-list.index']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                    <i class="fas fa-users-cog"></i> <span>Users</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.customers.index']) }}"><a class="nav-link" href="{{ route('admin.customers.index') }}">Customers</a></li>
                    <li class="{{ setActive(['admin.vendor-list.index']) }}"><a class="nav-link" href="{{ route('admin.vendor-list.index') }}">Vendors</a></li>
                    <li class="{{ setActive(['admin.vendor-requests.index']) }}"><a class="nav-link" href="{{ route('admin.vendor-requests.index') }}">Pending Vendors</a></li>
                    <li class="{{ setActive(['admin.admin-list.index']) }}"><a class="nav-link" href="{{ route('admin.admin-list.index') }}">Admin List</a></li>
                    <li class="{{ setActive(['admin.manage-user.index']) }}"><a class="nav-link" href="{{ route('admin.manage-user.index') }}">Manage Users</a></li>
                </ul>
            </li>

            <!-- Subscribers -->
            <li class="{{ setActive(['admin.subscribers']) }}"><a class="nav-link" href="{{ route('admin.subscribers') }}">
                <i class="fas fa-envelope-open-text"></i> <span>Subscribers</span></a></li>

            <!-- Settings -->
            <li class="{{ setActive(['admin.settings.index']) }}"><a class="nav-link" href="{{ route('admin.settings.index') }}">
                <i class="fas fa-cogs"></i> <span>Settings</span></a></li>

        </ul>
    </aside>
</div>