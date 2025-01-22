<div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
    <div class="card border">
        <div class="card-body">
            <form action="{{route('admin.paypal-setting.update', 1)}}" method="POST">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label>Paypal Status</label>
                    <select name="status" class="form-control">
                        <option {{$paypalSetting->status == 1 ? 'selected' : ''}} value="1">Enable</option>
                        <option {{$paypalSetting->status == 0 ? 'selected' : ''}} value="0">Disable</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Account Mode</label>
                    <select name="mode" class="form-control">
                        <option {{$paypalSetting->mode == 0 ? 'selected' : ''}} value="0">Sandbox</option>
                        <option {{$paypalSetting->mode == 1 ? 'selected' : ''}} value="1">Live</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Country Name</label>
                    <select name="country_name" class="form-control select2">
                        <option value="">Select</option>
                        @foreach (config('settings.country_list') as $country)
                            <option {{$country == $paypalSetting->country_name ? 'selected' : ''}} value="{{$country}}">{{$country}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label>Currency Name</label>
                    <select name="currency_name" class="form-control select2">
                        <option value="">Select</option>
                        @foreach (config('settings.currency_list') as $key => $currency)
                            <option {{$currency == $paypalSetting->currency_name ? 'selected' : ''}} value="{{$currency}}">{{$key}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label>Currency Rate <code>(Per {{$settings->currency_name}})</code></label>
                    <input type="text" name="currency_rate" class="form-control" value="{{$paypalSetting->currency_rate}}">
                </div>
                <div class="form-group">
                    <label>Paypal Client Id</label>
                    <input type="text" name="client_id" class="form-control" value="{{$paypalSetting->client_id}}">
                </div>
                <div class="form-group">
                    <label>Paypal Secret Key</label>
                    <input type="text" name="secret_key" class="form-control" value="{{$paypalSetting->secret_key}}">
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>
</div>
