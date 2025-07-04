@extends('frontend.layouts.master')
@section('title')
    {{ $settings->site_name }} || Blogs
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
                        <h4>our latest blogs</h4>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><a href="#">blogs</a></li>
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
        BLOGS PAGE START
    ==============================-->
    <section id="wsus__blogs">
        <div class="container">
            @if (request()->has('search'))
                <h5>
                    Search results for: {{ request()->input('search') }}
                </h5>
                <hr>
            @elseif (request()->has('category'))
                <h5>
                    Search results for: {{ request()->input('category') }}
                </h5>
                <hr>
            @endif
            <div class="row">
                @foreach ($blogs as $blog)
                <div class="col-xl-3">
                    <div class="wsus__single_blog wsus__single_blog_2">
                        <a class="wsus__blog_img" href="{{ route('blog.details', $blog->slug) }}">
                            <img src="{{ asset($blog->image) }}" alt="blog" class="img-fluid w-100">
                        </a>
                        <div class="wsus__blog_text">
                            <a class="blog_top red" href="#">{{ $blog->category->name }}</a>
                            <div class="wsus__blog_text_center">
                                <a href="{{ route('blog.details', $blog->slug) }}">{{ limitText($blog->title, 40) }}</a>
                                <p class="date">{{ $blog->created_at->format('M d Y') }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
            </div>
            @if (count($blogs) == 0)
                <div class="row">
                    <div class="card">
                        <div class="card-body">
                            <h3>Sorry No Blogs Found</h3>
                            <p>We couldn't find any blogs matching your search criteria. Please try a different search term or check back later for new content.</p>
                        </div>
                    </div>
                </div>
            @endif
            <div id="pagination">
                <div class="mt-5">
                    @if ($blogs->hasPages())
                        {{ $blogs->withQueryString()->links() }}
                    @endif
                </div>
            </div>
        </div>
    </section>
    <!--============================
        BLOGS PAGE END
    ==============================-->
@endsection  
