@extends('vendor.layouts.master')
@section('title')
    {{$settings->site_name}} || Reviews
@endsection
@section('content')
    <!--=============================
    DASHBOARD START
    ==============================-->
    <section id="wsus__dashboard">
        <div class="container-fluid">
            @include('vendor.layouts.sidebar')
            
            <div class="row">
                <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
                    <div class="dashboard_content mt-2 mt-md-0">
                        <h3><i class="fas fa-shopping-cart"></i> All Reviews</h3>
                        <div class="wsus__dashboard_profile">
                            <div class="wsus__dash_pro_area">
                                {{ $dataTable -> table() }}
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

@push('scripts')
    {{ $dataTable->scripts(attributes: ['type' => 'module'])}}
@endpush
