@extends('frontend.layouts.master')
@section('title')
    {{ $settings->site_name }} || Contact US
@endsection
@section('content')
    <!--============================
            BREADCRUMB START
        ==============================-->
    <section id="wsus__breadcrumb">
        <div class="wsus_breadcrumb_overlay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h4>contact us</h4>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><a href="#">contact us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============================
            BREADCRUMB END
        ==============================-->

    <!--============================
            CONTACT PAGE START
        ==============================-->
    <section id="wsus__contact">
        <div class="container">
            <div class="wsus__contact_area">
                <div class="row">
                    <div class="col-xl-4">
                        <div class="row">
                            @if ($settings->contact_email)
                                <div class="col-xl-12">
                                    <div class="wsus__contact_single">
                                        <i class="fal fa-envelope"></i>
                                        <h5>mail address</h5>
                                        <a href="mailto:{{ $settings->contact_email }}">{{ $settings->contact_email }}</a>
                                        <span><i class="fal fa-envelope"></i></span>
                                    </div>
                                </div>
                            @endif
                            @if ($settings->contact_phone)
                                <div class="col-xl-12">
                                    <div class="wsus__contact_single">
                                        <i class="far fa-phone-alt"></i>
                                        <h5>phone number</h5>
                                        <a href="tel:{{ $settings->contact_phone }}">{{ $settings->contact_phone }}</a>
                                        <span><i class="far fa-phone-alt"></i></span>
                                    </div>
                                </div>
                            @endif
                            @if ($settings->contact_address)
                                <div class="col-xl-12">
                                    <div class="wsus__contact_single">
                                        <i class="fal fa-map-marker-alt"></i>
                                        <h5>contact address</h5>
                                        <a href="javascript:void(0);">{{ $settings->contact_address }}</a>
                                        <span><i class="fal fa-map-marker-alt"></i></span>
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>
                    <div class="col-xl-8">
                        <div class="wsus__contact_question">
                            <h5>Send Us a Message</h5>
                            <form id="contact-form">
                                @csrf
                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="wsus__con_form_single">
                                            <input type="text" name="name" placeholder="Your Name" >
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="wsus__con_form_single">
                                            <input type="email" name="email" placeholder="Email" >
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="wsus__con_form_single">
                                            <input type="text" name="subject" placeholder="Subject">
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="wsus__con_form_single">
                                            <textarea name="message" cols="3" rows="5" placeholder="Message" ></textarea>
                                        </div>
                                        <button type="submit" class="common_btn" id="form-submit-btn">send now</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-xl-12">
                        <div class="wsus__con_map">
                            <iframe
                                src="{{ $settings->map }}"
                                width="1600" height="450" style="border:0;" allowfullscreen loading="lazy">
                            </iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============================
            CONTACT PAGE END
        ==============================-->
@endsection

@push('scripts')
    <script>
        $(document).ready(function () {
            $('#contact-form').on('submit', function (e) {
                e.preventDefault();
                let $btn = $('#form-submit-btn');
                $btn.prop('disabled', true).text('Sending...');

                let data = $(this).serialize();
                $.ajax({
                    method: "POST",
                    url: "{{ route('contact.form-submit') }}",
                    data: data,
                    success: function (msg) {
                        if (msg.status === 'success') {
                            toastr.success(msg.message);
                            $('#contact-form')[0].reset();
                        } else {
                            toastr.error(msg.message || 'Something went wrong.');
                        }
                        $btn.prop('disabled', false).text('Send Now');
                    },
                    error: function (xhr) {
                        if (xhr.status === 422) {
                            let errors = xhr.responseJSON.errors;
                            $.each(errors, function (key, value) {
                                toastr.error(value[0]);
                            });
                        } else {
                            toastr.error('An error occurred. Please try again.');
                        }
                        $btn.prop('disabled', false).text('Send Now');
                    }
                });
            });
        });
    </script>
@endpush

