<div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
    <div class="card border">
        <div class="card-body">
            <form action="{{ route('admin.logo-setting-update') }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')

                <div class="form-group">
                    <img src="{{ asset(@$logoSettings->logo) }}" alt="Logo" class="img-fluid mb-3" style="max-width: 200px;">
                    <br>
                    <label>Logo</label>
                    <input type="file" name="logo" class="form-control">
                    <input type="hidden" name="old_logo" value="{{ @$logoSettings->logo }}">
                </div>

                <div class="form-group">
                    <img src="{{ asset(@$logoSettings->favicon) }}" alt="Favicon" class="img-fluid mb-3" style="max-width: 50px;">
                    <br>
                    <label>Favicon</label>
                    <input type="file" name="favicon" class="form-control">
                    <input type="hidden" name="old_favicon" value="{{ @$logoSettings->favicon }}">
                </div>

                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>
</div>