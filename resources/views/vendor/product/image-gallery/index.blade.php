@extends('vendor.layouts.master')
@section('title')
    {{$settings->site_name}} || Image Gallery
@endsection
@section('content')
    <!--=============================
    DASHBOARD START
    ==============================-->
    <section id="wsus__dashboard">
        <div class="container-fluid">
            @include('vendor.layouts.sidebar')
            
            <div class="row">
                <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
                    <a href="{{ route('vendor.products.index') }}" class="btn btn-primary mb-3"><i class="fas fa-chevron-left me-2"></i>Back</a>
                    <div class="dashboard_content mt-2 mt-md-0">
                        <h3><i class="far fa-image"></i>Product : {{ $product->name }}</h3>
                
                        <div class="wsus__dashboard_profile">
                            <div class="wsus__dash_pro_area">
                                <form action="{{route('vendor.products-image-gallery.store')}}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    <div class="form-group wsus__input">
                                      <label for="">Image <code>(Multiple Image Supported!)</code></label>
                                      <input type="file" name="image[]" class="form-control" multiple>
                                      <input type="hidden" name="product" value="{{$product->id}}">
                                      <div id="imagePreview" class="d-flex flex-wrap mt-2"></div>
                                    </div>

                                    <script>
                                        document.querySelector('input[name="image[]"]').addEventListener('change', function(event) {
                                            const imagePreview = document.getElementById('imagePreview');
                                            imagePreview.innerHTML = '';
                                            Array.from(event.target.files).forEach(file => {
                                                const reader = new FileReader();
                                                reader.onload = function(e) {
                                                    const img = document.createElement('img');
                                                    img.src = e.target.result;
                                                    img.style.width = '100px';
                                                    img.style.margin = '5px';
                                                    imagePreview.appendChild(img);
                                                };
                                                reader.readAsDataURL(file);
                                            });
                                        });
                                    </script>
                                    <button type="submit" class="btn btn-primary">Upload</button>
                                  </form>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-5">
                <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
                    <div class="dashboard_content mt-2 mt-md-0">
                        <h3><i class="far fa-images"></i>Product Images</h3>
                
                        <div class="wsus__dashboard_profile">
                            <div class="wsus__dash_pro_area">
                                {{ $dataTable->table() }}
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--=============================
    DASHBOARD START
    ==============================-->
@endsection

@push('scripts')
    {{ $dataTable->scripts(attributes : ['type' => 'module']) }}
@endpush
