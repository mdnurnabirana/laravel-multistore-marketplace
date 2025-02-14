<div class="tab-pane fade" id="list-cart" role="tabpanel" aria-labelledby="list-cart-list">
    <div class="card border">
        <div class="card-body">
            <form action="{{ route('admin.cart-page-banner') }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')

                <h4>Banner One</h4>
                <label for="status">Status</label><br>
                <label class="custom-switch mt-2">
                    <input type="checkbox" {{ @$cart_page_banner->banner_one->status == 1 ? 'checked' : '' }} name="banner_one_status" class="custom-switch-input">
                    <span class="custom-switch-indicator"></span>
                </label>
                <div class="form-group">
                    <img src="{{ asset(@$cart_page_banner->banner_one->banner_image) }}" width="150px">
                </div> 
                <div class="form-group">
                    <label>Banner Image</label>
                    <input type="file" name="banner_one_image" class="form-control">
                    <input type="hidden" name="banner_one_old_image" value="{{ @$cart_page_banner->banner_one->banner_image }}">
                </div>
                <div class="form-group">
                    <label>Banner Url</label>
                    <input type="text" name="banner_one_url" class="form-control" value="{{ @$cart_page_banner->banner_one->banner_url }}">
                </div>

                <hr>

                <h4>Banner Two</h4>
                <label for="status">Status</label><br>
                <label class="custom-switch mt-2">
                    <input type="checkbox" {{ @$cart_page_banner->banner_two->status == 1 ? 'checked' : '' }} name="banner_two_status" class="custom-switch-input">
                    <span class="custom-switch-indicator"></span>
                </label>
                <div class="form-group">
                    <img src="{{ asset(@$cart_page_banner->banner_two->banner_image) }}" width="150px">
                </div> 
                <div class="form-group">
                    <label>Banner Image</label>
                    <input type="file" name="banner_two_image" class="form-control">
                    <input type="hidden" name="banner_two_old_image" value="{{ @$cart_page_banner->banner_two->banner_image }}">
                </div>
                <div class="form-group">
                    <label>Banner Url</label>
                    <input type="text" name="banner_two_url" class="form-control" value="{{ @$cart_page_banner->banner_two->banner_url }}">
                </div>

                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>
</div>
