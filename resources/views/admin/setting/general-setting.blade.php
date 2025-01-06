<div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
    <div class="card border">
        <div class="card-body">
            <form action="{{ route('admin.setting.update') }}" method="POST">
                @csrf
                <div class="form-group>
                    <label>Site Name</label>
                    <input type="text" name="site_name" class="form-control" value="">
                </div>
                <div class="form-group">
                    <label>Layout</label>
                    <select name="site_title" class="form-control">
                        <option value="LTR">LTR</option>
                        <option value="RTL">RTL</option>
                    </select>
                </div>
                <div class="form-group>
                    <label>Contact Email</label>
                    <input type="text" name="site_title" class="form-control" value="">
                </div>
                <div class="form-group>
                    <label>Default Currency Name</label>
                    <select name="" class="form-control">
                        <option value="USD">USD</option>
                    </select>
                </div>
                <div class="form-group>
                    <label>Currency Symbol</label>
                    <input type="text" name="site_title" class="form-control" value="">
                </div>
                <div class="form-group>
                    <label>Time Zone</label>
                    <select name="" class="form-control">
                        <option value="USD">USD</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>
</div>
