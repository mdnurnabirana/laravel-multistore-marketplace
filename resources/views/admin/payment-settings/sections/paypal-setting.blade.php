<div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
    <div class="card border">
        <div class="card-body">
            <form action="{{route('admin.general-setting-update')}}" method="POST">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label>Paypal Status</label>
                    <select name="status" class="form-control">
                        <option value="1">Enable</option>
                        <option value="0">Disable</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Account Mode</label>
                    <select name="mode" class="form-control">
                        <option value="0">Sandbox</option>
                        <option value="1">Live</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Account Mode</label>
                    <select name="country_name" class="form-control select2">
                        <option value="">Select</option>
                        @foreach (config('settings.country_list') as $country)
                            <option value="{{$country}}">{{$country}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label>Currency Name</label>
                    <select name="currency" class="form-control select2">
                        <option value="">Select</option>
                        @foreach (config('settings.currency_list') as $key => $currency)
                            <option value="{{$currency}}">{{$key}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label>Currency Rate <code>(Per USD)</code></label>
                    <input type="text" name="currency_rate" class="form-control" value="">
                </div>
                <div class="form-group">
                    <label>Paypal Client Id</label>
                    <input type="text" name="client_id" class="form-control" value="">
                </div>
                <div class="form-group">
                    <label>Paypal Secret Key</label>
                    <input type="text" name="secret_key" class="form-control" value="">
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>
</div>
