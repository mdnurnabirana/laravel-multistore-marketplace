<div class="dashboard_sidebar">
    <span class="close_icon">
        <i class="far fa-bars dash_bar"></i>
        <i class="far fa-times dash_close"></i>
    </span>
    <a href="{{route('home')}}" class="dash_logo"><img src="{{asset($logoSettings->logo)}}" alt="logo" class="img-fluid"></a> 
    <ul class="dashboard_link">
        <li>
            <a class="{{setActive(['vendor.dashboard'])}}" href="{{route('vendor.dashboard')}}">
                <i class="fas fa-home"></i> Dashboard
            </a>
        </li>
        <li>
            <a class="" href="{{route('home')}}">
                <i class="fas fa-home"></i> Go To Home
            </a>
        </li>
        <li>
            <a class="{{setActive(['vendor.orders.*'])}}" href="{{route('vendor.orders.index')}}">
                <i class="fas fa-shopping-cart"></i> Orders
            </a>
        </li>
        <li>
            <a class="{{setActive(['vendor.reviews.*'])}}" href="{{route('vendor.reviews.index')}}">
                <i class="fas fa-shopping-cart"></i> Reviews
            </a>
        </li>
        <li>
            <a class="{{setActive(['vendor.vendor-withdraw.*'])}}" href="{{route('vendor.vendor-withdraw.index')}}">
                <i class="fas fa-wallet"></i> Withdraw Payment
            </a>
        </li>
        <li>
            <a class="{{setActive(['vendor.products.*'])}}" href="{{ route('vendor.products.index') }}">
                <i class="fas fa-box"></i> Products
            </a>
        </li>
        <li>
            <a class="{{setActive(['vendor.shop-profile'])}}" href="{{ route('vendor.shop-profile.index') }}">
                <i class="fas fa-store"></i> Shop Profile
            </a>
        </li>
        <li>
            <a class="{{setActive(['vendor.profile'])}}" href="{{ route('vendor.profile') }}">
                <i class="fas fa-user-circle"></i> My Profile
            </a>
        </li>
        <li>
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <a href="{{ route('logout') }}" onclick="event.preventDefault(); this.closest('form').submit();">
                    <i class="far fa-sign-out-alt"></i> Log out
                </a>
            </form>
        </li>
    </ul>
</div>