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
                            <div class="row">
                                <div class="col-xl-2 col-6 col-md-6">
                                    <a class="wsus__dashboard_item red" href="{{ route('user.orders.index') }}">
                                        <i class="fas fa-shopping-cart"></i>
                                        <p>total order</p>
                                        <h4 class="text-white">{{ $totalOrder }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-6">
                                    <a class="wsus__dashboard_item green" href="{{ route('user.orders.index') }}">
                                        <i class="fas fa-clock"></i>
                                        <p>pending order</p>
                                        <h4 class="text-white">{{ $pendingOrder }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-6">
                                    <a class="wsus__dashboard_item sky" href="{{ route('user.orders.index') }}">
                                        <i class="fas fa-check-circle"></i>
                                        <p>completed order</p>
                                        <h4 class="text-white">{{ $completedOrder }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item blue" href="{{ route('user.review.index') }}">
                                        <i class="fas fa-star"></i>
                                        <p>reviews</p>
                                        <h4 class="text-white">{{ $reviews }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item orange" href="{{ route('user.wishlist.index') }}">
                                        <i class="fas fa-heart"></i>
                                        <p>wishlist</p>
                                        <h4 class="text-white">{{ $wishlist }}</h4>
                                    </a>
                                </div>
                                <div class="col-xl-2 col-6 col-md-4">
                                    <a class="wsus__dashboard_item purple" href="{{route('user.profile')}}">
                                        <i class="fas fa-user"></i>
                                        <p>profile</p>
                                        <h4 class="text-white">-</h4>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
