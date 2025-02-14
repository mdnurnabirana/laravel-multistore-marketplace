<div class="tab-pane fade show active" id="list-product-page" role="tabpanel" aria-labelledby="list-product-page-list">
    <div class="card border">
        <div class="card-body">
            <form action="{{ route('admin.product-page-banner') }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')

                <label for="status">Status</label><br>
                <label class="custom-switch mt-2">
                    <input type="checkbox" {{ @$product_page_banner->banner_one->status == 1 ? 'checked' : '' }} name="status" class="custom-switch-input">
                    <span class="custom-switch-indicator"></span>
                </label>

                <div class="form-group">
                    <img src="{{ asset(@$product_page_banner->banner_one->banner_image) }}" width="150px">
                </div> 

                <div class="form-group">
                    <label>Banner Image</label>
                    <input type="file" name="banner_image" class="form-control">
                    <input type="hidden" name="banner_old_image" class="form-control" value="{{ @$product_page_banner->banner_one->banner_image }}">
                </div>

                <div class="form-group">
                    <label>Banner Url</label>
                    <input type="text" name="banner_url" class="form-control" value="{{ @$product_page_banner->banner_one->banner_url }}">
                </div>

                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>
</div>
