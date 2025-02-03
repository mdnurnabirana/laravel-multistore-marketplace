@php
    $popularCategories = json_decode($popularCategory->value, true);
@endphp
<section id="wsus__monthly_top" class="wsus__monthly_top_2">
    <div class="container">
        <div class="row">
            <div class="col-xl-12 col-lg-12">
                <div class="wsus__monthly_top_banner">
                    <div class="wsus__monthly_top_banner_img">
                        <img src="images/monthly_top_img3.jpg" alt="img" class="img-fluid w-100">
                        <span></span>
                    </div>
                    <div class="wsus__monthly_top_banner_text">
                        <h4>Black Friday Sale</h4>
                        <h3>Up To <span>70% Off</span></h3>
                        <h6>Everything</h6>
                        <a class="shop_btn" href="#">shop now</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="wsus__section_header for_md">
                    <h3>Popular Categories</h3>
                    <div class="monthly_top_filter">
                        @php
                            $products = [];
                        @endphp
                        @foreach ($popularCategories as $key => $popularCategoryItem)
                            @php
                                $lastKey = [];
                                foreach ($popularCategoryItem as $innerKey => $categoryItem) {
                                    if ($categoryItem == null) {
                                        break;
                                    }
                                    $lastKey = [$innerKey => $categoryItem];
                                }

                                $categoryName = '';
                                if (isset($lastKey['category'])) {
                                    $category = \App\Models\Category::find($lastKey['category']);
                                    $categoryName = $category->name ?? '';
                                    $products[] = \App\Models\Product::where('category_id', $category->id)->orderBy('id', 'DESC')->take(12)->get();
                                } elseif (isset($lastKey['sub_category'])) {
                                    $subCategory = \App\Models\SubCategory::find($lastKey['sub_category']);
                                    $categoryName = $subCategory->name ?? '';
                                    $products[] = \App\Models\Product::where('sub_category_id', $subCategory->id)->orderBy('id', 'DESC')->take(12)->get();
                                } elseif (isset($lastKey['child_category'])) {
                                    $childCategory = \App\Models\ChildCategory::find($lastKey['child_category']);
                                    $categoryName = $childCategory->name ?? '';
                                    $products[] = \App\Models\Product::where('child_category_id', $childCategory->id)->orderBy('id', 'DESC')->take(12)->get();
                                }
                            @endphp
                            <button class="{{ $loop->index == 0 ? 'auto_click active' : '' }}" data-filter=".category-{{$key}}">{{ $categoryName }}</button>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12 col-lg-12">
                <div class="row grid">
                    @foreach ($products as $key => $productList)
                        @foreach ($productList as $item)
                            <div class="col-xl-2 col-6 col-sm-6 col-md-4 col-lg-3 category-{{$key}}">
                                <a class="wsus__hot_deals__single" href="#">
                                    <div class="wsus__hot_deals__single_img">
                                        <img src="{{ asset($item->thumb_image) }}" alt="bag" class="img-fluid w-100">
                                    </div>
                                    <div class="wsus__hot_deals__single_text">
                                        <h5>{!! limitText($item->name) !!}</h5>
                                        <p class="wsus__rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star-half-alt"></i>
                                        </p>
                                        @if (checkDiscount($item))
                                            <p class="wsus__tk">{{ $settings->currency_icon }}{{ $item->offer_price }} <del>{{ $settings->currency_icon }}{{ $item->price }}</del></p>
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
