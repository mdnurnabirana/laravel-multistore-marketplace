@extends('frontend.layouts.master')
@section('title')
    {{ $settings->site_name }} || Vendor Products
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
                        <h4>vendor products</h4>
                        <ul>
                            <li><a href="{{ url('/') }}">home</a></li>
                            <li><a href="javascript:void(0);">vendor product</a></li>
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
        PRODUCT PAGE START
    ==============================-->
    <section id="wsus__product_page">
        <div class="container">
            <div class="row">
                <div class="">
                    <div class="wsus__pro_page_bammer vendor_det_banner">
                        <img src="{{asset($vendor->banner)}}" alt="banner" class="img-fluid w-100">
                        <div class="wsus__pro_page_bammer_text wsus__vendor_det_banner_text">
                            <div class="wsus__vendor_text_center">
                                <h4>{{$vendor->shop_name}}</h4>
                                <p class="wsus__vendor_rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                </p>
                                <a href="javascript:;"><i class="far fa-phone-alt"></i> {{$vendor->phone}}</a>
                                <a href="javascript:;"><i class="far fa-envelope"></i> {{$vendor->email}}</a>
                                <p class="wsus__vendor_location"><i class="fal fa-map-marker-alt"></i> {{$vendor->address}} </p>
                                <p class="wsus__open_store"><i class="fab fa-shopify"></i> store open</p>
                                <ul class="d-flex">
                                    <li><a class="facebook" href="{{$vendor->fb_link}}"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a class="twitter" href="{{$vendor->tw_link}}"><i class="fab fa-twitter"></i></a></li>
                                    <li><a class="instagram" href="{{$vendor->insta_link}}"><i class="fab fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="">
                    <div class="row">
                        <div class="col-xl-12 d-none d-md-block mt-md-4 mt-lg-0">
                            <div class="wsus__product_topbar">
                                <div class="wsus__product_topbar_left">
                                    <div class="nav nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                        <button
                                            class="nav-link {{ session()->has('product_list_style') && session()->get('product_list_style') == 'grid' ? 'active' : '' }} {{ !session()->has('product_list_style') ? 'active' : '' }} list-view"
                                            data-id="grid" id="v-pills-home-tab" data-bs-toggle="pill"
                                            data-bs-target="#v-pills-home" type="button" role="tab"
                                            aria-controls="v-pills-home" aria-selected="true">
                                            <i class="fas fa-th"></i>
                                        </button>

                                        <button
                                            class="nav-link {{ session()->has('product_list_style') && session()->get('product_list_style') == 'list' ? 'active' : '' }} list-view"
                                            data-id="list" id="v-pills-profile-tab" data-bs-toggle="pill"
                                            data-bs-target="#v-pills-profile" type="button" role="tab"
                                            aria-controls="v-pills-profile" aria-selected="false">
                                            <i class="fas fa-list-ul"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-content" id="v-pills-tabContent">
                            <div class="tab-pane fade {{ session()->has('product_list_style') && session()->get('product_list_style') == 'grid' ? 'show active' : '' }} {{ !session()->has('product_list_style') ? 'show active' : '' }}"
                                id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                <div class="row">
                                    @foreach ($products as $product)
                                        <div class="col-xl-3  col-sm-6">
                                            <div class="wsus__product_item">
                                                <span class="wsus__new">{{ productType($product->product_type) }}</span>
                                                @if (checkDiscount($product))
                                                    <span
                                                        class="wsus__minus">-{{ calculateDiscountPercent($product->price, $product->offer_price) }}%</span>
                                                @endif
                                                <a class="wsus__pro_link"
                                                    href="{{ route('product-detail', $product->slug) }}">
                                                    <img src="{{ asset($product->thumb_image) }}" alt="product"
                                                        class="img-fluid w-100 img_1" />
                                                    <img src="
                                    @if (isset($product->productImageGalleries[0]->image)) {{ asset($product->productImageGalleries[0]->image) }}
                                    @else
                                        {{ asset($product->thumb_image) }} @endif
                                    "
                                                        class="img-fluid w-100 img_2" />
                                                </a>
                                                <ul class="wsus__single_pro_icon">
                                                    <li><a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#product-{{ $product->id }}"><i
                                                                class="far fa-eye"></i></a></li>
                                                    <li><a href="" class="add_to_wishlist"
                                                            data-id="{{ $product->id }}"><i
                                                                class="far fa-heart"></i></a></li>
                                                    {{-- <li><a href="#"><i class="far fa-random"></i></a> --}}
                                                </ul>
                                                <div class="wsus__product_details">
                                                    <a class="wsus__category"
                                                        href="#">{{ $product->category->name }} </a>
                                                    <p class="wsus__pro_rating">
                                                        @php
                                                            $avgRating = $product->reviews()->avg('rating');
                                                            $fullRating = floor($avgRating);
                                                            $halfRating = $avgRating - $fullRating >= 0.5;
                                                        @endphp
                                                        @for ($i = 1; $i <= 5; $i++)
                                                            @if ($i <= $fullRating)
                                                                <i class="fas fa-star"></i>
                                                            @elseif ($i == $fullRating + 1 && $halfRating)
                                                                <i class="fas fa-star-half-alt"></i>
                                                            @else
                                                                <i class="far fa-star"></i>
                                                            @endif
                                                        @endfor
                                                        <span>( {{ count($product->reviews) }} review)</span>
                                                    </p>
                                                    <a class="wsus__pro_name"
                                                        href="{{ route('product-detail', $product->slug) }}">{{ limitText($product->name, 50) }}</a>
                                                    @if (checkDiscount($product))
                                                        <p class="wsus__price">
                                                            {{ $settings->currency_icon }}{{ $product->offer_price }}
                                                            <del>{{ $settings->currency_icon }}{{ $product->price }}</del>
                                                        </p>
                                                    @else
                                                        <p class="wsus__price">
                                                            {{ $settings->currency_icon }}{{ $product->price }}</p>
                                                    @endif
                                                    <form class="shopping-cart-form">
                                                        <input type="hidden" name="product_id"
                                                            value="{{ $product->id }}">
                                                        @foreach ($product->variants as $variant)
                                                            <select class="d-none" name="variants_items[]">
                                                                @foreach ($variant->productVariantItems as $variantItem)
                                                                    <option value="{{ $variantItem->id }}"
                                                                        {{ $variantItem->is_default == 1 ? 'selected' : '' }}>
                                                                        {{ $variantItem->name }}
                                                                        ({{ $settings->currency_icon }}
                                                                        {{ $variantItem->price }})
                                                                    </option>
                                                                @endforeach
                                                            </select>
                                                        @endforeach
                                                        <input name="qty" type="hidden" min="1"
                                                            max="100" value="1">
                                                        <button class="add_cart" href="#" type="submit">add to
                                                            cart</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                            <div class="tab-pane fade {{ session()->has('product_list_style') && session()->get('product_list_style') == 'list' ? 'show active' : '' }}"
                                id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                <div class="row">
                                    @foreach ($products as $product)
                                        <div class="col-xl-12">
                                            <div class="wsus__product_item wsus__list_view">
                                                <span class="wsus__new">{{ productType($product->product_type) }}</span>
                                                @if (checkDiscount($product))
                                                    <span
                                                        class="wsus__minus">-{{ calculateDiscountPercent($product->price, $product->offer_price) }}%</span>
                                                @endif
                                                <a class="wsus__pro_link"
                                                    href="{{ route('product-detail', $product->slug) }}">
                                                    <img src="{{ asset($product->thumb_image) }}" alt="product"
                                                        class="img-fluid w-100 img_1" />
                                                    @if (isset($product->productImageGalleries[0]->image))
                                                        {{ asset($product->productImageGalleries[0]->image) }}
                                                    @else
                                                        {{ asset($product->thumb_image) }}
                                                    @endif
                                                    "
                                                    class="img-fluid w-100 img_2" />

                                                </a>
                                                <div class="wsus__product_details">
                                                    <a class="wsus__category"
                                                        href="#">{{ @$product->category->name }} </a>
                                                    <p class="wsus__pro_rating">
                                                        @php
                                                            $avgRating = $product->reviews()->avg('rating');
                                                            $fullRating = floor($avgRating);
                                                            $halfRating = $avgRating - $fullRating >= 0.5;
                                                        @endphp
                                                        @for ($i = 1; $i <= 5; $i++)
                                                            @if ($i <= $fullRating)
                                                                <i class="fas fa-star"></i>
                                                            @elseif ($i == $fullRating + 1 && $halfRating)
                                                                <i class="fas fa-star-half-alt"></i>
                                                            @else
                                                                <i class="far fa-star"></i>
                                                            @endif
                                                        @endfor
                                                        <span>( {{ count($product->reviews) }} review)</span>
                                                    </p>
                                                    <a class="wsus__pro_name"
                                                        href="{{ route('product-detail', $product->slug) }}">{{ $product->name }}
                                                        watch</a>
                                                    @if (checkDiscount($product))
                                                        <p class="wsus__price">
                                                            {{ $settings->currency_icon }}{{ $product->offer_price }}
                                                            <del>{{ $settings->currency_icon }}{{ $product->price }}</del>
                                                        </p>
                                                    @else
                                                        <p class="wsus__price">
                                                            {{ $settings->currency_icon }}{{ $product->price }}</p>
                                                    @endif
                                                    <p class="list_description">{{ $product->short_description }} </p>
                                                    <ul class="wsus__single_pro_icon">
                                                        <form class="shopping-cart-form">
                                                            <input type="hidden" name="product_id"
                                                                value="{{ $product->id }}">
                                                            @foreach ($product->variants as $variant)
                                                                <select class="d-none" name="variants_items[]">
                                                                    @foreach ($variant->productVariantItems as $variantItem)
                                                                        <option value="{{ $variantItem->id }}"
                                                                            {{ $variantItem->is_default == 1 ? 'selected' : '' }}>
                                                                            {{ $variantItem->name }}
                                                                            ({{ $settings->currency_icon }}
                                                                            {{ $variantItem->price }})
                                                                        </option>
                                                                    @endforeach
                                                                </select>
                                                            @endforeach
                                                            <input name="qty" type="hidden" min="1"
                                                                max="100" value="1">
                                                            <button class="add_cart_two" href="#"
                                                                type="submit">Add to
                                                                Cart</button>
                                                        </form>
                                                        <li><a href="" class="add_to_wishlist"
                                                                data-id="{{ $product->id }}"><i
                                                                    class="far fa-heart"></i></a></li>
                                                        {{-- <li><a href="#"><i class="far fa-random"></i></a> --}}
                                                    </ul>

                                                </div>
                                            </div>
                                        </div>
                                    @endforeach

                                </div>
                            </div>
                        </div>
                    </div>
                    @if (count($products) == 0)
                        <div class="card mt-5">
                            <div class="card-body">
                                <div class="text-center">
                                    <h2>Product Not Found</h2>
                                </div>
                            </div>
                        </div>
                    @endif
                </div>

                <div class="col-xl-12 ">
                    <div class="mt-5" style="display: flex; justify-content: center;">
                        @if ($products->hasPages())
                            {{ $products->withQueryString()->links() }}
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============================
                                                                    PRODUCT PAGE END
                                                                ==============================-->
    @foreach ($products as $product)
        <section class="product_popup_modal">
            <div class="modal fade" id="product-{{ $product->id }}" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-body">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><i
                                    class="far fa-times"></i></button>
                            <div class="row">
                                <div class="col-xl-6 col-12 col-sm-10 col-md-8 col-lg-6 m-auto display">
                                    <div class="wsus__quick_view_img">
                                        @if ($product->video_link)
                                            <a class="venobox wsus__pro_det_video" data-autoplay="true"
                                                data-vbtype="video" href="{{ $product->video_link }}">
                                                <i class="fas fa-play"></i>
                                            </a>
                                        @endif
                                        <div class="row modal_slider">
                                            <div class="col-xl-12">
                                                <div class="modal_slider_img">
                                                    <img src="{{ asset($product->thumb_image) }}" alt="product"
                                                        class="img-fluid w-100">
                                                </div>
                                            </div>

                                            @if (count($product->productImageGalleries) == 0)
                                                {
                                                <div class="col-xl-12">
                                                    <div class="modal_slider_img">
                                                        <img src="{{ asset($product->thumb_image) }}" alt="product"
                                                            class="img-fluid w-100">
                                                    </div>
                                                </div>
                                                }
                                            @endif

                                            @foreach ($product->productImageGalleries as $productImage)
                                                <div class="col-xl-12">
                                                    <div class="modal_slider_img">
                                                        <img src="{{ asset($productImage->image) }}"
                                                            alt="{{ $product->name }}" class="img-fluid w-100">
                                                    </div>
                                                </div>
                                            @endforeach

                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-12 col-sm-12 col-md-12 col-lg-6">
                                    <div class="wsus__pro_details_text">
                                        <a class="title" href="#">{{ $product->name }}</a>
                                        <p class="wsus__stock_area"><span class="in_stock">in stock</span> (167
                                            item)</p>
                                        @if (checkDiscount($product))
                                            <h4>{{ $settings->currency_icon }}{{ $product->offer_price }}
                                                <del>{{ $settings->currency_icon }}{{ $product->price }}</del>
                                            </h4>
                                        @else
                                            <h4>{{ $settings->currency_icon }}{{ $product->price }}</del></h4>
                                        @endif
                                        <p class="review">
                                            @php
                                                $avgRating = $product->reviews()->avg('rating');
                                                $fullRating = floor($avgRating);
                                                $halfRating = $avgRating - $fullRating >= 0.5;
                                            @endphp
                                            @for ($i = 1; $i <= 5; $i++)
                                                @if ($i <= $fullRating)
                                                    <i class="fas fa-star"></i>
                                                @elseif ($i == $fullRating + 1 && $halfRating)
                                                    <i class="fas fa-star-half-alt"></i>
                                                @else
                                                    <i class="far fa-star"></i>
                                                @endif
                                            @endfor
                                            <span>( {{ count($product->reviews) }} review)</span>
                                        </p>
                                        <p class="description">{!! $product->short_description !!}</p>

                                        {{-- <div class="wsus_pro_hot_deals">
                                                                            <h5>offer ending time : </h5>
                                                                            <div class="simply-countdown simply-countdown-one"></div>
                                                                        </div> --}}

                                        <form class="shopping-cart-form">
                                            <div class="wsus__selectbox">
                                                <div class="row">
                                                    <input type="hidden" name="product_id" value="{{ $product->id }}">
                                                    @foreach ($product->variants as $variant)
                                                        @if ($variant->status != 0)
                                                            <div class="col-xl-6 col-sm-6">
                                                                <h5 class="mb-2">{{ $variant->name }}</h5>
                                                                <select class="select_2" name="variants_items[]">
                                                                    @foreach ($variant->productVariantItems as $variantItem)
                                                                        @if ($variantItem->status != 0)
                                                                            <option value="{{ $variantItem->id }}"
                                                                                {{ $variantItem->is_default == 1 ? 'selected' : '' }}>
                                                                                {{ $variantItem->name }}
                                                                                ({{ $settings->currency_icon }}
                                                                                {{ $variantItem->price }})
                                                                            </option>
                                                                        @endif
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                        @endif
                                                    @endforeach
                                                </div>
                                            </div>
                                            <div class="wsus__quentity">
                                                <h5>quantity :</h5>
                                                <div class="select_number">
                                                    <input class="number_area" type="text" min="1"
                                                        max="100" name="qty" value="1" />
                                                </div>
                                            </div>
                                            <ul class="wsus__button_area">
                                                <li><button type="submit" class="add_cart" href="">add to
                                                        cart</button></li>
                                                <li><a class="buy_now" href="#">buy now</a></li>
                                                <li><a href="" class="add_to_wishlist"
                                                        data-id="{{ $product->id }}"><i class="fal fa-heart"></i></a>
                                                </li>
                                                {{-- <li><a href="#"><i class="far fa-random"></i></a></li> --}}
                                            </ul>
                                        </form>
                                        <p class="brand_model"><span>brand :</span> {{ $product->brand->name }}
                                        </p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endforeach
@endsection

@push('scripts')
    <script>
        $(document).ready(function() {
            $('.list-view').on('click', function() {
                let style = $(this).data('id');

                $.ajax({
                    method: 'GET',
                    url: "{{ route('change-product-list-view') }}",
                    data: {
                        style: style
                    },
                    success: function(data) {
                        // Optionally handle success response
                    }
                });
            });
        });

        @php
            if (request()->has('range') && request()->range != null) {
                $price = explode(';', request()->range);
                $from = $price[0];
                $to = $price[1];
            } else {
                $from = 0;
                $to = 8000;
            }
        @endphp
        //*==========PRICE SLIDER========= 
        jQuery(function() {
            jQuery("#slider_range").flatslider({
                min: 0,
                max: 10000,
                step: 100,
                values: [{{ $from }}, {{ $to }}],
                range: true,
                einheit: '{{ $settings->currency_icon }}',
            });
        });
    </script>
@endpush