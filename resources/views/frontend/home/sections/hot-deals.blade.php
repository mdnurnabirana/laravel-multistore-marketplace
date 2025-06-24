<section id="wsus__hot_deals" class="wsus__hot_deals_2">
    <div class="container">
        <div class="wsus__hot_large_item">
            <div class="row">
                <div class="col-xl-12">
                    <div class="wsus__section_header justify-content-start">
                        <div class="monthly_top_filter2 mb-1">
                            <button class="auto_click active" data-filter=".new_arrival">New Arrival</button>
                            <button data-filter=".featured_product">Featured Product</button>
                            <button data-filter=".top_product">Top Product</button>
                            <button data-filter=".best_product">Best Product</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row grid2">
                @foreach ($typeBaseProducts as $key => $products)
                    @foreach ($products as $product)
                        <x-product-card :product="$product" :key="$key"/>
                    @endforeach
                @endforeach
            </div>
        </div>
        <section id="wsus__single_banner" class="home_2_single_banner">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6">
                        @if (@$homepage_section_banner_three->banner_one->status == 1)
                            <div class="wsus__single_banner_content banner_1">
                                <a href="{{ $homepage_section_banner_three->banner_one->banner_url ?? '#' }}">
                                    <img class="img-fluid w-100"
                                        src="{{ asset($homepage_section_banner_three->banner_one->banner_image ?? 'images/single_banner_55.jpg') }}"
                                        alt="banner">
                                </a>
                            </div>
                        @endif
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div class="row">
                            <div class="col-12">
                                @if (@$homepage_section_banner_three->banner_two->status == 1)
                                    <div class="wsus__single_banner_content single_banner_2">
                                        <a href="{{ $homepage_section_banner_three->banner_two->banner_url ?? '#' }}">
                                            <div class="wsus__single_banner_img">
                                                <img class="img-fluid w-100"
                                                    src="{{ asset($homepage_section_banner_three->banner_two->banner_image ?? 'images/single_banner_66.jpg') }}"
                                                    alt="banner">
                                            </div>
                                        </a>
                                    </div>
                                @endif
                            </div>
                            <div class="col-12 mt-lg-4">
                                @if (@$homepage_section_banner_three->banner_three->status == 1)
                                    <div class="wsus__single_banner_content">
                                        <a
                                            href="{{ $homepage_section_banner_three->banner_three->banner_url ?? '#' }}">
                                            <div class="wsus__single_banner_img">
                                                <img class="img-fluid w-100"
                                                    src="{{ asset($homepage_section_banner_three->banner_three->banner_image ?? 'images/single_banner_66.jpg') }}"
                                                    alt="banner">
                                            </div>
                                        </a>
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>
</section>