<div class="main-sidebar sidebar-style-2">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="index.html">Stisla</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="index.html">St</a>
        </div>
        <ul class="sidebar-menu">
            <li class="menu-header">Dashboard</li>
            <li class="dropdown active">
                <a href="{{ route('admin.dashboard') }}" class="nav-link "><i
                        class="fas fa-fire"></i><span>Dashboard</span></a>
            </li>
            <li class="menu-header">Starter</li>
            <li
                class="dropdown {{ setActive(['admin.category.*', 'admin.sub-category.*', 'admin.child-category.*']) }}">
                <a href="{{ route('admin.category.index') }}" class="nav-link has-dropdown" data-toggle="dropdown"><i
                        class="fas fa-columns"></i> <span>Manage Categories</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.category.*']) }}"><a class="nav-link"
                            href="{{ route('admin.category.index') }}">Category</a></li>
                    <li class="{{ setActive(['admin.sub-category.*']) }}"><a class="nav-link"
                            href="{{ route('admin.sub-category.index') }}">Sub Category</a></li>
                    <li class="{{ setActive(['admin.child-category.*']) }}"><a class="nav-link"
                            href="{{ route('admin.child-category.index') }}">Child Category</a></li>
                </ul>
            </li>
            <li
                class="dropdown {{ setActive([
                    'admin.order.index.*',
                    'admin.pending-orders*',
                    'admin.processed-orders*',
                    'admin.dropped-off-orders*',
                    'admin.shipped-orders*',
                    'admin.out-for-delivery-orders*',
                    'admin.delivered-orders*',
                    'admin.cancelled-orders*',
                ]) }}">
                <a href="{{ route('admin.order.index') }}" class="nav-link has-dropdown" data-toggle="dropdown"><i
                        class="fas fa-columns"></i> <span>Manage Orders</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.order.index*']) }}"><a class="nav-link"
                            href="{{ route('admin.order.index') }}">All Orders</a></li>
                </ul>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.pending-orders*']) }}"><a class="nav-link"
                            href="{{ route('admin.pending-orders') }}">All Pending Orders</a></li>
                </ul>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.processed-orders*']) }}"><a class="nav-link"
                            href="{{ route('admin.processed-orders') }}">All Processed Orders</a></li>
                </ul>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.dropped-off-orders*']) }}"><a class="nav-link"
                            href="{{ route('admin.dropped-off-orders') }}">All Dropped Off Orders</a></li>
                </ul>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.shipped-orders*']) }}"><a class="nav-link"
                            href="{{ route('admin.shipped-orders') }}">All Shipped Orders</a></li>
                </ul>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.out-for-delivery-orders*']) }}"><a class="nav-link"
                            href="{{ route('admin.out-for-delivery-orders') }}">All Out For Delivery Orders</a></li>
                </ul>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.delivered-orders*']) }}"><a class="nav-link"
                            href="{{ route('admin.delivered-orders') }}">All Delivered Orders</a></li>
                </ul>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.cancelled-orders*']) }}"><a class="nav-link"
                            href="{{ route('admin.cancelled-orders') }}">All Cancelled Orders</a></li>
                </ul>
            </li>
            <li class="{{ setActive(['admin.transaction*']) }}"><a class="nav-link"
                    href="{{ route('admin.transaction') }}"><i
                        class="fas fa-exchange-alt"></i><span>Transactions</span></a></li>
            <li
                class="dropdown {{ setActive([
                    'admin.brand.*',
                    'admin.products.*',
                    'admin.products-image-gallery.*',
                    'admin.products-variant.*',
                    'admin.products-variant-item.*',
                    'admin.seller-products.*',
                    'admin.seller-products.*',
                ]) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-columns"></i>
                    <span>Manage Products</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.brand.*']) }}"><a class="nav-link"
                            href="{{ route('admin.brand.index') }}">Brands</a></li>
                    <li
                        class="{{ setActive([
                            'admin.products.*',
                            'admin.products-image-gallery.*',
                            'admin.products-variant.*',
                            'admin.products-variant-item.*',
                            'admin.reviews.*'
                        ]) }}">
                        <a class="nav-link" href="{{ route('admin.products.index') }}">Products</a>
                    </li>
                    <li class="{{ setActive(['admin.seller-products.*']) }}"><a class="nav-link"
                            href="{{ route('admin.seller-products.index') }}">Seller Products</a></li>
                    <li class="{{ setActive(['admin.seller-pending-products.*']) }}"><a class="nav-link"
                            href="{{ route('admin.seller-pending-products.index') }}">Seller Pending Products</a></li>
                    <li class="{{ setActive(['admin.reviews.*']) }}"><a class="nav-link"
                            href="{{ route('admin.review.index') }}">Product Reviews</a></li>
                </ul>
            </li>

            <li
                class="dropdown {{ setActive([
                    'admin.vendor-profile.*',
                    'admin.flash-sale.*',
                    'admin.coupons.*',
                    'admin.shipping-rule.*',
                    'admin.payment-settings.*',
                ]) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-columns"></i>
                    <span>Ecommerce</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.flash-sale.*']) }}"><a class="nav-link"
                            href="{{ route('admin.flash-sale.index') }}">Flash Sale</a></li>
                    <li class="{{ setActive(['admin.coupons.*']) }}"><a class="nav-link"
                            href="{{ route('admin.coupons.index') }}">Coupons</a></li>
                    <li class="{{ setActive(['admin.shipping-rule.*']) }}"><a class="nav-link"
                            href="{{ route('admin.shipping-rule.index') }}">Shipping Rule</a></li>
                    <li class="{{ setActive(['admin.vendor-profile.*']) }}"><a class="nav-link"
                            href="{{ route('admin.vendor-profile.index') }}">Vendor Profile</a></li>
                    <li class="{{ setActive(['admin.payment-settings.*']) }}"><a class="nav-link"
                            href="{{ route('admin.payment-settings.index') }}">Payment Settings</a></li>
                </ul>
            </li>

            <li
                class="dropdown {{ setActive(['admin.slider.*', 'admin.home-page-setting.*', 'admin.vendor-condition.index',
                'admin.about.index', 'admin.termsandcondition.index']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i
                        class="fas fa-columns"></i>
                    <span>Manage Website</span>
                </a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.slider.*']) }}">
                        <a class="nav-link" href="{{ route('admin.slider.index') }}">Slider</a>
                    </li>
                    <li class="{{ setActive(['admin.home-page-setting.*']) }}">
                        <a class="nav-link" href="{{ route('admin.home-page-setting') }}">Home Page Settings</a>
                    </li>
                    <li class="{{ setActive(['admin.vendor-condition.index']) }}">
                        <a class="nav-link" href="{{ route('admin.vendor-condition.index') }}">Vendor Conditions</a>
                    </li>
                    <li class="{{ setActive(['admin.about.index']) }}">
                        <a class="nav-link" href="{{ route('admin.about.index') }}">About</a>
                    </li>
                    <li class="{{ setActive(['admin.termsandcondition.index']) }}">
                        <a class="nav-link" href="{{ route('admin.termsandcondition.index') }}">Term's & Condition</a>
                    </li>
                </ul>
            </li>

            <li
                class="dropdown {{ setActive([
                    'admin.blog-category.*',
                ]) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i
                        class="fas fa-columns"></i>
                    <span>Manage Blog</span>
                </a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.blog-category.*']) }}">
                        <a class="nav-link" href="{{ route('admin.blog-category.index') }}">Categories</a>
                    </li>
                </ul>
            </li>
            
            <li
                class="dropdown {{ setActive([
                    'admin.footer-info.*',
                    'admin.footer-socials.*',
                    'admin.footer-grid-two.*',
                    'admin.footer-grid-three.*',
                ]) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i
                        class="fas fa-columns"></i>
                    <span>Footer</span>
                </a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.footer-info.index']) }}">
                        <a class="nav-link" href="{{ route('admin.footer-info.index') }}">Footer Info</a>
                    </li>
                    <li class="{{ setActive(['admin.footer-socials.index']) }}">
                        <a class="nav-link" href="{{ route('admin.footer-socials.index') }}">Footer Socials</a>
                    </li>
                    <li class="{{ setActive(['admin.footer-grid-two.index']) }}">
                        <a class="nav-link" href="{{ route('admin.footer-grid-two.index') }}">Footer Grid Two</a>
                    </li>
                    <li class="{{ setActive(['admin.footer-grid-three.index']) }}">
                        <a class="nav-link" href="{{ route('admin.footer-grid-three.index') }}">Footer Grid Three</a>
                    </li>
                </ul>
            </li>

            <li
                class="dropdown {{ setActive([
                    'admin.vendor-requests.index',
                    'admin.customers.index',
                    'admin.vendor-list.index',
                    'admin.manage-user.index',
                    'admin.admin-list.index',
                ]) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i
                        class="fas fa-columns"></i>
                    <span>Users</span>
                </a>
                <ul class="dropdown-menu">
                    <li class="{{ setActive(['admin.customers.index']) }}">
                        <a class="nav-link" href="{{ route('admin.customers.index') }}">Customers</a>
                    </li>
                    <li class="{{ setActive(['admin.vendor-list.index']) }}">
                        <a class="nav-link" href="{{ route('admin.vendor-list.index') }}">Vendors</a>
                    </li>
                    <li class="{{ setActive(['admin.vendor-requests.index']) }}">
                        <a class="nav-link" href="{{ route('admin.vendor-requests.index') }}">Pending Vendors</a>
                    </li>
                    <li class="{{ setActive(['admin.admin-list.index']) }}">
                        <a class="nav-link" href="{{ route('admin.admin-list.index') }}">Admin List</a>
                    </li>
                    <li class="{{ setActive(['admin.manage-user.index']) }}">
                        <a class="nav-link" href="{{ route('admin.manage-user.index') }}">Manage User</a>
                    </li>
                </ul>
            </li>

            <li class="{{ setActive(['admin.advertisement.index']) }}"><a class="nav-link"
                    href="{{ route('admin.advertisement.index') }}"><i class="far fa-square"></i>
                    <span>Advertisement</span></a></li>
            <li class="{{ setActive(['admin.subscribers']) }}"><a class="nav-link"
                    href="{{ route('admin.subscribers') }}"><i class="far fa-square"></i>
                    <span>Subscriber's</span></a></li>
            <li class="{{ setActive(['admin.settings.index']) }}"><a class="nav-link"
                    href="{{ route('admin.settings.index') }}"><i class="far fa-square"></i>
                    <span>Settings</span></a></li>

            {{-- <li class="menu-header">Starter</li>
        <li class="dropdown">
          <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-columns"></i> <span>Layout</span></a>
          <ul class="dropdown-menu">
            <li><a class="nav-link" href="layout-default.html">Default Layout</a></li>
            <li><a class="nav-link" href="layout-transparent.html">Transparent Sidebar</a></li>
            <li><a class="nav-link" href="layout-top-navigation.html">Top Navigation</a></li>
          </ul>
        </li> --}}

            {{-- <li><a class="nav-link" href="blank.html"><i class="far fa-square"></i> <span>Blank Page</span></a></li> --}}
        </ul>
    </aside>
</div>
