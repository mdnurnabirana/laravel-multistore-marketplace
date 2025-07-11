@php
    $popularCategories = json_decode($popularCategory->value, true);
    $products = [];
@endphp
<section id="wsus__monthly_top" class="wsus__monthly_top_2">
    <div class="container">
        <div class="row">
            @if (@$homepage_section_banner_one->banner_one->status == 1)
                <div class="col-xl-12 col-lg-12">
                    <div class="wsus__monthly_top_banner">
                        <div class="wsus__monthly_top_banner_img">
                            <img src="{{ asset($homepage_section_banner_one->banner_one->banner_image ?? 'images/monthly_top_img3.jpg') }}"
                                alt="img" class="img-fluid w-100">
                            <span></span>
                        </div>
                    </div>
                </div>
            @endif
        </div>

        <div class="row">
            <div class="col-xl-12">
                <div class="wsus__section_header for_md">
                    <h3>Popular Categories</h3>
                    <div class="monthly_top_filter">
                        @php
                            $products = [];
                        @endphp
                        @foreach ($popularCategories as $key => $popularCategory)
                            @php
                                $lastKey = [];

                                foreach ($popularCategory as $key => $category) {
                                    if ($category === null) {
                                        break;
                                    }
                                    $lastKey = [$key => $category];
                                }

                                $lastKeyKeys = array_keys($lastKey);

                                // Check if lastKey has a valid key before proceeding
                                if (!empty($lastKeyKeys)) {
                                    if ($lastKeyKeys[0] === 'category') {
                                        $category = \App\Models\Category::find($lastKey['category']);
                                        if ($category) {
                                            $products[] = \App\Models\Product::withAvg('reviews', 'rating')->with(['variants', 'category', 'productImageGalleries'])->where('category_id', $category->id)
                                                ->orderBy('id', 'DESC')
                                                ->take(12)
                                                ->get();
                                        }
                                    } elseif ($lastKeyKeys[0] === 'sub_category') {
                                        $category = \App\Models\SubCategory::find($lastKey['sub_category']);
                                        if ($category) {
                                            $products[] = \App\Models\Product::withAvg('reviews', 'rating')->with(['variants', 'category', 'productImageGalleries'])->where('sub_category_id', $category->id)
                                                ->orderBy('id', 'DESC')
                                                ->take(12)
                                                ->get();
                                        }
                                    } else {
                                        $category = \App\Models\ChildCategory::find($lastKey['child_category']);
                                        if ($category) {
                                            $products[] = \App\Models\Product::withAvg('reviews', 'rating')->with(['variants', 'category', 'productImageGalleries'])->where('child_category_id', $category->id)
                                                ->orderBy('id', 'DESC')
                                                ->take(12)
                                                ->get();
                                        }
                                    }
                                }

                            @endphp
                            @if (isset($category))
                                <button class="{{ $loop->index === 0 ? 'auto_click active' : '' }}"
                                    data-filter=".category-{{ $loop->index }}">{{ $category->name }}</button>
                            @endif
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12 col-lg-12">
                <div class="row grid">
                    @foreach ($products as $key => $product)
                        @foreach ($product as $item)
                            <div class="col-xl-2 col-6 col-sm-6 col-md-4 col-lg-3 category-{{ $key }}">
                                <a class="wsus__hot_deals__single" href="{{ route('product-detail', $item->slug) }}">
                                    <div class="wsus__hot_deals__single_img">
                                        <img src="{{ asset($item->thumb_image) }}" alt="bag"
                                            class="img-fluid w-100">
                                    </div>
                                    <div class="wsus__hot_deals__single_text">
                                        <h5>{!! limitText($item->name) !!}</h5>
                                        <p class="wsus__rating">
                                            {{-- @php
                                                $avgRating = $item->reviews()->avg('rating');
                                                $fullRating = floor($avgRating);
                                            @endphp --}}
                                            @for ($i = 1; $i <= 5; $i++)
                                                @if ($i <= $item->reviews_avg_rating)
                                                    <i class="fas fa-star"></i>
                                                @else
                                                    <i class="far fa-star"></i>
                                                @endif
                                            @endfor
                                            <span>( {{ count($item->reviews) }} review)</span>
                                        </p>
                                        @if (checkDiscount($item))
                                            <p class="wsus__tk">{{ $settings->currency_icon }}{{ $item->offer_price }}
                                                <del>{{ $settings->currency_icon }}{{ $item->price }}</del></p>
                                        @else
                                            <p class="wsus__tk">{{ $settings->currency_icon }}{{ $item->price }}</p>
                                        @endif
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    @endforeach

                </div>
            </div>
        </div>
    </div>
</section>
