@extends('admin.layouts.master')

@section('content')
    <section class="section">
      <div class="section-header">
        <h1>Blogs</h1>
      </div>

      <div class="section-body">
        <div class="row">
          <div class="col-12 col-md-6 col-lg-12">
            <div class="card">
              <div class="card-header">
                <h4>Update Blog</h4>
              </div>

              <div class="card-body">
                <form action="{{route('admin.blog.update', $blog->id)}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <img src="{{asset($blog->image)}}" alt="Blog Image" class="img-fluid mb-3" style="max-width: 200px;">
                        <br>
                        <label>Image</label>
                        <input type="file" class="form-control" name="image">
                    </div>

                    <div class="form-group">
                        <label>Title</label>
                        <input type="text" class="form-control" name="title" value="{{$blog->title}}">
                    </div>

                    <div class="form-group">
                        <label for="inputState">Category</label>
                        <select id="inputState" class="form-control main-category" name="category">
                        <option value="">Select</option>
                        @foreach ($categories as $category)
                            <option value="{{$category->id}}" {{ $category->id == $blog->category_id ? 'selected' : '' }}>{{$category->name}}</option>
                        @endforeach
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label>Description</label>
                        <textarea name="description" class="form-control summernote">{{$blog->description}}</textarea>
                    </div>


                    <div class="form-group">
                        <label>SEO Title</label>
                        <input type="text" class="form-control" name="seo_title" value="{{$blog->seo_title}}">
                    </div>

                    <div class="form-group">
                        <label>SEO Description</label>
                        <textarea name="seo_description" class="form-control">{{$blog->seo_description}}</textarea>
                    </div>

                    <div class="form-group">
                        <label for="inputState">Status</label>
                        <select id="inputState" class="form-control" name="status">
                          <option value="1" {{ $blog->status == 1 ? 'selected' : '' }}>Active</option>
                          <option value="0" {{ $blog->status == 0 ? 'selected' : '' }}>Inactive</option>
                        </select>
                    </div>
                    <button type="submit" mt-5 class="btn btn-primary">Update</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
@endsection