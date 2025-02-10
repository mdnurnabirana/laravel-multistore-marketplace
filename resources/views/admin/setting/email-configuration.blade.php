<div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
    <div class="card border">
        <div class="card-body">
            <form action="{{route('admin.email-setting-update')}}" method="POST">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label>Email</label>
                    <input type="text" name="email" class="form-control" value="{{$emailSettings->email}}">
                </div>
                <div class="form-group">
                    <label>Mail Host</label>
                    <input type="text" name="host" class="form-control" value="{{$emailSettings->host}}">
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Smtp Username</label>
                            <input type="text" name="username" class="form-control" value="{{$emailSettings->username}}">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Smtp Password</label>
                            <input type="text" name="password" class="form-control" value="{{$emailSettings->password}}">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Mail Port</label>
                            <input type="text" name="port" class="form-control" value="{{$emailSettings->port}}">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Mail Encryption</label>
                            <select name="encryption" class="form-control">
                                <option {{$emailSettings->encryption == 'tls' ? 'selected' : ''}} value="tls">TLS</option>
                                <option {{$emailSettings->encryption == 'ssl' ? 'selected' : ''}} value="ssl">SSL</option>
                            </select>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>
</div>
