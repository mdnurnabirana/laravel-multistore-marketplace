@extends('admin.layouts.master')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Withdraw Methods</h1>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create Payment Method</h4>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.withdraw-method.store') }}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" class="form-control" name="name">
                                </div>
                                
                                <div class="form-group">
                                    <label>Minimum Amount</label>
                                    <input type="text" class="form-control" name="minimum_amount">
                                </div>

                                <div class="form-group">
                                    <label>Maximum Amount</label>
                                    <input type="text" class="form-control" name="maximum_amount">
                                </div>

                                <div class="form-group">
                                    <label>Withdraw Charge (%)</label>
                                    <input type="text" class="form-control" name="withdraw_charge">
                                </div>

                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea type="text" class="summernote" name="description"></textarea>
                                </div>

                                <button type="submit" mt-5 class="btn btn-primary">Create</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection