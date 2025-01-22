<div class="tab-pane fade" id="list-rajorpay" role="tabpanel" aria-labelledby="list-rajorpay-list">
    <div class="card border">
        <div class="card-body">
            <form action="{{route('admin.rajorpay-setting.update', 1)}}" method="POST">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label>Rajorpay Status</label>
                    <select name="status" class="form-control">
                        <option {{$rajorpaySetting->status == 1 ? 'selected' : ''}} value="1">Enable</option>
                        <option {{$rajorpaySetting->status == 0 ? 'selected' : ''}} value="0">Disable</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Country Name</label>
                    <select name="country_name" class="form-control select2">
                        <option value="">Select</option>
                        @foreach (config('settings.country_list') as $country)
                            <option {{$country == $rajorpaySetting->country_name ? 'selected' : ''}} value="{{$country}}">{{$country}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label>Currency Name</label>
                    <select name="currency_name" class="form-control select2">
                        <option value="">Select</option>
                        @foreach (config('settings.currency_list') as $key => $currency)
                            <option {{$currency == $rajorpaySetting->currency_name ? 'selected' : ''}} value="{{$currency}}">{{$key}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label>Currency Rate <code>(Per {{$settings->currency_name}})</code></label>
                    <input type="text" name="currency_rate" class="form-control" value="{{$rajorpaySetting->currency_rate}}">
                </div>
                <div class="form-group">
                    <label>RajorPay Key</label>
                    <input type="text" name="rajorpay_key" class="form-control" value="{{$rajorpaySetting->rajorpay_key}}">
                </div>
                <div class="form-group">
                    <label>rajorpay Secret Key</label>
                    <input type="text" name="rajorpay_secret_key" class="form-control" value="{{$rajorpaySetting->rajorpay_secret_key}}">
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>
</div>
