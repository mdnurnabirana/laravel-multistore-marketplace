@extends('admin.layouts.master')
@section('content')
<section class="section">
    <div class="section-header">
        <h1>Dashboard</h1>
    </div>

    <div class="row">

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.admin-list.index') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-user-shield text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Total Admin</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $totalAdmins }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.customers.index') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-users text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Total Users</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $totalUsers }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.vendor-list.index') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-store text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Total Vendors</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $totalVendors }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.order.index') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-shopping-cart text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Today's Orders</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $todaysOrders }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.pending-orders') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-clock text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Today's Pending Orders</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $todaysPendingOrders }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.order.index') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-list-alt text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Total Orders</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $totalOrders }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.pending-orders') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-hourglass-half text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Total Pending Orders</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $totalPendingOrders }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.cancelled-orders') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-times-circle text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Total Cancelled Orders</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $totalCancelledOrders }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.delivered-orders') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-check-circle text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Total Completed Orders</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $totalCompletedOrders }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.order.index') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-coins text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Today's Earning</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $settings->currency_icon }} {{ $todaysEarnings }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.order.index') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-coins text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">This Month Earning</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $settings->currency_icon }} {{ $thisMonthsEarnings }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.order.index') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-coins text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">This Year Earning</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $settings->currency_icon }} {{ $thisYearsEarnings }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.order.index') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-coins text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Total Earnings</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $settings->currency_icon }} {{ $totalEarnings }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.review.index') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-comment text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Total Review</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $totalReviews }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.review.index') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-star text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Average Ratings</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $avgRatings }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.brand.index') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-tags text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Total Brands</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $totalBrands }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.blog.index') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-newspaper text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Total Blogs</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $totalBlogs }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-12 mb-2">
            <a href="{{ route('admin.subscribers') }}" class="text-decoration-none text-dark">
                <div class="card card-statistic-1 h-80">
                    <div class="card-icon bg-primary">
                        <i class="fas fa-envelope text-white"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header"><h4 class="mb-0">Total Subscribers</h4></div>
                        <div class="card-body"><h5 class="mb-0">{{ $totalSubscribers }}</h5></div>
                    </div>
                </div>
            </a>
        </div>

    </div>
</section>
@endsection