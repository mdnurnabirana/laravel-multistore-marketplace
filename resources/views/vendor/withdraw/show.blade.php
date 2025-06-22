@extends('vendor.layouts.master')
@section('title')
    {{ $settings->site_name }} || Withdraw Request
@endsection
@section('content')
    <section id="wsus__dashboard">
        <div class="container-fluid">
            @include('vendor.layouts.sidebar')

            <div class="row">
                <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
                    <div class="dashboard_content mt-2 mt-md-0">
                        <h3><i class="fas fa-plus-circle"></i>Withdraw Request</h3>

                        <div class="wsus__dashboard_profile">
                            <div class="row">
                                <div class="wsus__dash_pro_area col-md-6">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('scripts')
    <script>
        $(document).ready(function() {
            $('#method').on('change', function(e) {
                let id = $(this).val();
                $.ajax({
                    method: 'GET',
                    url: "{{ route('vendor.vendor-withdraw.show', ':id') }}".replace(':id', id),
                    success: function(response) {
                        $('.account_area_info').html(`
                        <h3>Payout Range: ${response.minimum_amount} - ${response.maximum_amount}</h3><br>
                        <h3>Withdraw Charge: ${response.withdraw_charge}%</h3>
                        <p>${response.description ? response.description : ''}</p>
                        `)
                    },
                    error: function(response) {
                        console.log('error');
                    }
                })
            })
        })
    </script>
@endpush
