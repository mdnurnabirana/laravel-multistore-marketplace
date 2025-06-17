@extends('vendor.layouts.master')
@section('title')
    {{$settings->site_name}} || Dashboard
@endsection
@section('content')
<section id="wsus__dashboard">
    <div class="container-fluid">

        @include('vendor.layouts.sidebar')

        <div class="row">
            <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
                <div class="dashboard_content">
                    <div class="wsus__dashboard">
                        <div class="row g-3">
                            <div class="col-xl-2 col-6 col-md-4 d-flex">
                                <div class="wsus__dashboard_item bg-danger d-flex flex-column align-items-center text-center w-100 py-3">
                                    <div>
                                        <i class="fas fa-shopping-cart mb-2"></i>
                                        <p class="mb-1">today's order</p>
                                    </div>
                                    <h5 class="text-white mt-auto">{{$todaysOrders}}</h5>
                                </div>
                            </div>

                            <div class="col-xl-2 col-6 col-md-4 d-flex">
                                <div class="wsus__dashboard_item bg-warning d-flex flex-column align-items-center text-center w-100 py-3">
                                    <div>
                                        <i class="fas fa-clock mb-2"></i>
                                        <p class="mb-1">today's pending Order</p>
                                    </div>
                                    <h5 class="text-white mt-auto">{{$todaysPendingOrders}}</h5>
                                </div>
                            </div>

                            <div class="col-xl-2 col-6 col-md-4 d-flex">
                                <div class="wsus__dashboard_item bg-primary d-flex flex-column align-items-center text-center w-100 py-3">
                                    <div>
                                        <i class="fas fa-list mb-2"></i>
                                        <p class="mb-1">total order</p>
                                    </div>
                                    <h5 class="text-white mt-auto">{{$totalOrders}}</h5>
                                </div>
                            </div>

                            <div class="col-xl-2 col-6 col-md-4 d-flex">
                                <div class="wsus__dashboard_item bg-warning d-flex flex-column align-items-center text-center w-100 py-3">
                                    <div>
                                        <i class="fas fa-hourglass-half mb-2"></i>
                                        <p class="mb-1">total pending order</p>
                                    </div>
                                    <h5 class="text-white mt-auto">{{$totalPendingOrders}}</h5>
                                </div>
                            </div>

                            <div class="col-xl-2 col-6 col-md-4 d-flex">
                                <div class="wsus__dashboard_item bg-success d-flex flex-column align-items-center text-center w-100 py-3">
                                    <div>
                                        <i class="fas fa-check-circle mb-2"></i>
                                        <p class="mb-1">total completed order</p>
                                    </div>
                                    <h5 class="text-white mt-auto">{{$totalCompletedOrders}}</h5>
                                </div>
                            </div>

                            <div class="col-xl-2 col-6 col-md-4 d-flex">
                                <div class="wsus__dashboard_item bg-info d-flex flex-column align-items-center text-center w-100 py-3">
                                    <div>
                                        <i class="fas fa-box-open mb-2"></i>
                                        <p class="mb-1">total product</p>
                                    </div>
                                    <h5 class="text-white mt-auto">{{$totalProducts}}</h5>
                                </div>
                            </div>

                            <div class="col-xl-2 col-6 col-md-4 d-flex">
                                <div class="wsus__dashboard_item bg-success d-flex flex-column align-items-center text-center w-100 py-3">
                                    <div>
                                        <i class="fas fa-dollar-sign mb-2"></i>
                                        <p class="mb-1">today's earning</p>
                                    </div>
                                    <h5 class="text-white mt-auto">{{$settings->currency_icon}} {{$todaysEarnings}}</h5>
                                </div>
                            </div>

                            <div class="col-xl-2 col-6 col-md-4 d-flex">
                                <div class="wsus__dashboard_item bg-primary d-flex flex-column align-items-center text-center w-100 py-3">
                                    <div>
                                        <i class="fas fa-calendar-alt mb-2"></i>
                                        <p class="mb-1">this month's earning</p>
                                    </div>
                                    <h5 class="text-white mt-auto">{{$settings->currency_icon}} {{$thisMonthsEarnings}}</h5>
                                </div>
                            </div>

                            <div class="col-xl-2 col-6 col-md-4 d-flex">
                                <div class="wsus__dashboard_item bg-dark d-flex flex-column align-items-center text-center w-100 py-3">
                                    <div>
                                        <i class="fas fa-calendar mb-2"></i>
                                        <p class="mb-1">this year's earning</p>
                                    </div>
                                    <h5 class="text-white mt-auto">{{$settings->currency_icon}} {{$thisYearsEarnings}}</h5>
                                </div>
                            </div>

                            <div class="col-xl-2 col-6 col-md-4 d-flex">
                                <div class="wsus__dashboard_item bg-secondary d-flex flex-column align-items-center text-center w-100 py-3">
                                    <div>
                                        <i class="fas fa-wallet mb-2"></i>
                                        <p class="mb-1">total earning</p>
                                    </div>
                                    <h5 class="text-white mt-auto">{{$settings->currency_icon}} {{$totalEarnings}}</h5>
                                </div>
                            </div>

                            <div class="col-xl-2 col-6 col-md-4 d-flex">
                                <div class="wsus__dashboard_item bg-info d-flex flex-column align-items-center text-center w-100 py-3">
                                    <div>
                                        <i class="fas fa-comments mb-2"></i>
                                        <p class="mb-1">total reviews</p>
                                    </div>
                                    <h5 class="text-white mt-auto">{{$totalReviews}}</h5>
                                </div>
                            </div>

                            <div class="col-xl-2 col-6 col-md-4 d-flex">
                                <div class="wsus__dashboard_item bg-success d-flex flex-column align-items-center text-center w-100 py-3">
                                    <div>
                                        <i class="fas fa-star mb-2"></i>
                                        <p class="mb-1">average rating</p>
                                    </div>
                                    <h5 class="text-white mt-auto">{{@$avgRatings}}</h5>
                                </div>
                            </div>
                        </div> <!-- row -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection