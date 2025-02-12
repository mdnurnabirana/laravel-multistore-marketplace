@extends('admin.layouts.master')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Newsletter Subscriber</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Send Mail to Subscriber</h4>
                        </div>
                        <div class="card-body">
                            <form action="{{route('admin.subscribers-send-mail')}}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label for="">Subject</label>
                                    <input type="text" class="form-control" name="subject">

                                    <div class="form-group">
                                        <label for="">Message</label>
                                        <textarea class="form-control" name="message"></textarea>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="section-body">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>All Subscriber</h4>
                        </div>
                        <div class="card-body">
                            {{ $dataTable->table() }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('scripts')
    {{ $dataTable->scripts(attributes: ['type' => 'module']) }}
@endpush
