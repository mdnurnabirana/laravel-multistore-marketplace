<div class="dashboard_sidebar">
    <span class="close_icon">
        <i class="far fa-bars dash_bar"></i>
        <i class="far fa-times dash_close"></i>
    </span>
    <a href="dsahboard.html" class="dash_logo"><img src="images/logo.png" alt="logo" class="img-fluid"></a>
    <ul class="dashboard_link">
        <li><a class="active" href="{{ route('user.dashboard') }}"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
        </li>
        <li><a class="" href="{{ route('home') }}"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="{{ route('user.orders.index') }}"><i class="fas fa-list-ul"></i> Orders</a></li>
        <li><a href="{{ route('user.review.index') }}"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="{{ route('user.profile') }}"><i class="fas fa-user"></i> My Profile</a></li>
        <li><a href="{{ route('user.vendor-request.index') }}"><i class="fas fa-store"></i> Request to be a Vendor</a></li>
        <li><a href="{{ route('user.address.index') }}"><i class="fas fa-map-marker-alt"></i> Addresses</a></li>
        <li>
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <a href="{{ route('logout') }}"
                    onclick="event.preventDefault();
                              this.closest('form').submit();"><i
                        class="far fa-sign-out-alt"></i> Log out</a>
            </form>
        </li>

    </ul>
</div>
