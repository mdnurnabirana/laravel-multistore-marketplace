@extends('frontend.dashboard.layouts.master')
@section('title')
    {{$settings->site_name}} || Dashboard
@endsection
@section('content')
<section id="wsus__dashboard">
    <div class="container-fluid">

        @include('frontend.dashboard.layouts.sidebar')

        <div class="row">
            <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
                <div class="dashboard_content">
                    <div class="wsus__dashboard">
                        <div class="row g-3">
                            <div class="col-xl-2 col-6 col-md-6 d-flex">
                                <a class="wsus__dashboard_item bg-primary d-flex flex-column align-items-center text-center w-100 py-3" href="{{ route('user.orders.index') }}">
                                    <div>
                                        <i class="fas fa-shopping-cart mb-2"></i>
                                        <p class="mb-1">total order</p>
                                    </div>
                                    <h4 class="text-white mt-auto">{{ $totalOrder }}</h4>
                                </a>
                            </div>

                            <div class="col-xl-2 col-6 col-md-6 d-flex">
                                <a class="wsus__dashboard_item bg-warning d-flex flex-column align-items-center text-center w-100 py-3" href="{{ route('user.orders.index') }}">
                                    <div>
                                        <i class="fas fa-clock mb-2"></i>
                                        <p class="mb-1">pending order</p>
                                    </div>
                                    <h4 class="text-white mt-auto">{{ $pendingOrder }}</h4>
                                </a>
                            </div>

                            <div class="col-xl-2 col-6 col-md-6 d-flex">
                                <a class="wsus__dashboard_item bg-success d-flex flex-column align-items-center text-center w-100 py-3" href="{{ route('user.orders.index') }}">
                                    <div>
                                        <i class="fas fa-check-circle mb-2"></i>
                                        <p class="mb-1">completed order</p>
                                    </div>
                                    <h4 class="text-white mt-auto">{{ $completedOrder }}</h4>
                                </a>
                            </div>

                            <div class="col-xl-2 col-6 col-md-4 d-flex">
                                <a class="wsus__dashboard_item bg-info d-flex flex-column align-items-center text-center w-100 py-3" href="{{ route('user.review.index') }}">
                                    <div>
                                        <i class="fas fa-star mb-2"></i>
                                        <p class="mb-1">reviews</p>
                                    </div>
                                    <h4 class="text-white mt-auto">{{ $reviews }}</h4>
                                </a>
                            </div>

                            <div class="col-xl-2 col-6 col-md-4 d-flex">
                                <a class="wsus__dashboard_item bg-danger d-flex flex-column align-items-center text-center w-100 py-3" href="{{ route('user.wishlist.index') }}">
                                    <div>
                                        <i class="fas fa-heart mb-2"></i>
                                        <p class="mb-1">wishlist</p>
                                    </div>
                                    <h4 class="text-white mt-auto">{{ $wishlist }}</h4>
                                </a>
                            </div>

                            <div class="col-xl-2 col-6 col-md-4 d-flex">
                                <a class="wsus__dashboard_item bg-secondary d-flex flex-column align-items-center text-center w-100 py-3" href="{{route('user.profile')}}">
                                    <div>
                                        <i class="fas fa-user mb-2"></i>
                                        <p class="mb-1">profile</p>
                                    </div>
                                    <h4 class="text-white mt-auto">-</h4>
                                </a>
                            </div>
                        </div> <!-- row -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection