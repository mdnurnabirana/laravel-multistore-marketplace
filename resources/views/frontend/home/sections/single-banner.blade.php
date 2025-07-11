<section id="wsus__single_banner" class="wsus__single_banner_2">
    <div class="container">
        <div class="row">
            @if (@$homepage_section_banner_two->banner_one->status == 1)
                <div class="col-xl-6 col-lg-6">
                    <div class="wsus__single_banner_content">
                        <a href="{{ $homepage_section_banner_two->banner_one->banner_url ?? '#' }}">
                            <img class="img-fluid" src="{{ asset($homepage_section_banner_two->banner_one->banner_image ?? '') }}" />
                        </a>
                    </div>
                </div>
            @endif

            @if (@$homepage_section_banner_two->banner_two->status == 1)
                <div class="col-xl-6 col-lg-6">
                    <div class="wsus__single_banner_content single_banner_2">
                        <a href="{{ $homepage_section_banner_two->banner_two->banner_url ?? '#' }}">
                            <img class="img-fluid" src="{{ asset($homepage_section_banner_two->banner_two->banner_image ?? '') }}" />
                        </a>
                    </div>
                </div>
            @endif
        </div>
    </div>
</section>
