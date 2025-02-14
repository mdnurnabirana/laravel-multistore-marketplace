<section id="wsus__large_banner">
    <div class="container">
        <div class="row">
            <div class="cl-xl-12">
                @if ($homepage_section_banner_four->banner_one->status == 1)
                    <div class="wsus__large_banner_content" style="background: url({{ asset($homepage_section_banner_four->banner_one->banner_image ?? 'images/large_banner_img.jpg') }});">
                        <div class="wsus__large_banner_content_overlay">
                            <div class="row">
                                <div class="col-xl-6 col-12 col-md-6">
                                    <a class="shop_btn" href="{{ $homepage_section_banner_four->banner_one->banner_url ?? '#' }}">view more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </div>
</section>
