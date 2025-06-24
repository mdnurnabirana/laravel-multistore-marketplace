<section id="wsus__flash_sell" class="wsus__flash_sell_2">
    <div class=" container">
        <div class="row">
            <div class="col-xl-12">
                <div class="offer_time" style="background: url({{ asset('frontend/images/flash_sell_bg.jpg') }})">
                    <div class="wsus__flash_coundown">
                        <span class=" end_text">Flash Sale</span>
                        <div class="simply-countdown simply-countdown-one"></div>
                        <a class="common_btn" href="{{ route('flash-sale') }}">see more <i
                                class="fas fa-caret-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row flash_sell_slider">
            @foreach ($flashSaleItems as $item)
                @php
                    $product = \App\Models\Product::with(['reviews', 'variants', 'category'])->find($item->product_id);
                @endphp
                <div class="col-xl-3 col-sm-6 col-lg-4">
                    <div class="wsus__product_item">
                        <span class="wsus__new">{{ productType($product->product_type) }}</span>
                        @if (checkDiscount($product))
                            <span
                                class="wsus__minus">-{{ calculateDiscountPercent($product->price, $product->offer_price) }}%</span>
                        @endif
                        <a class="wsus__pro_link" href="{{ route('product-detail', $product->slug) }}">
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
                                    data-bs-target="#exampleModal" class="show_product_modal" data-id="{{$product->id}}"><i class="far fa-eye"></i></a>
                            </li>
                            <li><a href="" class="add_to_wishlist" data-id="{{ $product->id }}"><i
                                        class="far fa-heart"></i></a></li>
                            {{-- <li><a href="#"><i class="far fa-random"></i></a> --}}
                        </ul>
                        <div class="wsus__product_details">
                            <a class="wsus__category" href="#">{{ $product->category->name }} </a>
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
                                <span>( {{count($product->reviews)}} review)</span>
                            </p>
                            <a class="wsus__pro_name"
                                href="{{ route('product-detail', $product->slug) }}">{{ limitText($product->name, 50) }}</a>
                            @if (checkDiscount($product))
                                <p class="wsus__price">{{ $settings->currency_icon }}{{ $product->offer_price }}
                                    <del>৳{{ $product->price }}</del>
                                </p>
                            @else
                                <p class="wsus__price">{{ $settings->currency_icon }}{{ $product->price }}</p>
                            @endif
                            <form class="shopping-cart-form">
                                <input type="hidden" name="product_id" value="{{ $product->id }}">
                                @foreach ($product->variants as $variant)
                                    <select class="d-none" name="variants_items[]">
                                        @foreach ($variant->productVariantItems as $variantItem)
                                            <option value="{{ $variantItem->id }}"
                                                {{ $variantItem->is_default == 1 ? 'selected' : '' }}>
                                                {{ $variantItem->name }} ({{ $settings->currency_icon }}
                                                {{ $variantItem->price }} )</option>
                                        @endforeach
                                    </select>
                                @endforeach
                                <input name="qty" type="hidden" min="1" max="100" value="1">
                                <button class="add_cart" href="#" type="submit">add to cart</button>
                            </form>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>

@push('scripts')
    <script>
        $(document).ready(function() {
            simplyCountdown('.simply-countdown-one', {
                year: {{ date('Y', strtotime($flashSaleDate->end_date)) }},
                month: {{ date('m', strtotime($flashSaleDate->end_date)) }},
                day: {{ date('d', strtotime($flashSaleDate->end_date)) }},
            });
        })
    </script>
@endpush
