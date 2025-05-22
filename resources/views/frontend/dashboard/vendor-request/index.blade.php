@extends('vendor.layouts.master')
@section('title')
    {{ $settings->site_name }} || Vendor Request
@endsection
@section('content')
    <!--=============================
        DASHBOARD START
        ==============================-->
    <section id="wsus__dashboard">
        <div class="container-fluid">
            @include('frontend.dashboard.layouts.sidebar')

            <div class="row">
                <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
                    <div class="dashboard_content mt-2 mt-md-0">
                        <h3><i class="fas fa-shopping-cart"></i> Become a Vendor Today</h3>
                        <div class="wsus__dashboard_profile">
                            <div class="wsus__dash_pro_area">
                                {!! @$content->content !!}
                            </div>
                        </div>
                        <div class="wsus__dashboard_profile mt-5">
                            <div class="wsus__dash_pro_area">
                                <form action="{{ route('user.vendor-request.create') }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="wsus__dash_pro_single" bis_skin_checked="1">
                                        <i class="fas fa-image" aria-hidden="true"></i>
                                        <input type="file" placeholder="Shop Banner Image" name="shop_image"
                                            value="">
                                    </div>
                                    <div class="wsus__dash_pro_single" bis_skin_checked="1">
                                        <i class="fas fa-store" aria-hidden="true"></i>
                                        <input type="text" placeholder="Shop Name" name="shop_name" value="">
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="wsus__dash_pro_single" bis_skin_checked="1">
                                                <i class="fas fa-envelope" aria-hidden="true"></i>
                                                <input type="text" placeholder="Shop Email" name="shop_email"
                                                    value="">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="wsus__dash_pro_single" bis_skin_checked="1">
                                                <i class="fas fa-phone" aria-hidden="true"></i>
                                                <input type="text" placeholder="Shop Phone" name="shop_phone"
                                                    value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="wsus__dash_pro_single" bis_skin_checked="1">
                                        <i class="fas fa-map-marker-alt" aria-hidden="true"></i>
                                        <input type="text" placeholder="Shop Address" name="shop_address" value="">
                                    </div>
                                    <div class="wsus__dash_pro_single" bis_skin_checked="1">
                                        <textarea placeholder="About Shop..." name="about"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--=============================
        DASHBOARD START
    ==============================-->
@endsection
