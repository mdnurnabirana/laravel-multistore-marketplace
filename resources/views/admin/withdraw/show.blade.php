@extends('admin.layouts.master')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Payment Requests</h1>
        </div>

        <div class="section-body">
            <div class="invoice">
                <div class="invoice-print">
                    <div class="row mt-4">
                        <div class="col-md-12">
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td>Withdraw Method</td>
                                        <td>{{ $requests->method }}</td>
                                    </tr>
                                    <tr>
                                        <td>Withdraw Charge</td>
                                        <td>{{ ($requests->withdraw_charge / $requests->total_amount) * 100 }}%</td>
                                    </tr>
                                    <tr>
                                        <td>Withdraw Charge Amount</td>
                                        <td>{{ $settings->currency_icon }} {{ $requests->withdraw_charge }}</td>
                                    </tr>
                                    <tr>
                                        <td>Total Amount</td>
                                        <td>{{ $settings->currency_icon }} {{ $requests->total_amount }}</td>
                                    </tr>
                                    <tr>
                                        <td>Status</td>
                                        <td>
                                            @if ($requests->status == 'pending')
                                                <span class="badge bg-warning">Pending</span>
                                            @elseif ($requests->status == 'paid')
                                                <span class="badge bg-success">Paid</span>
                                            @elseif ($requests->status == 'decline')
                                                <span class="badge bg-danger">Declined</span>
                                            @endif
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Account Information</td>
                                        <td>{!! $requests->account_info !!}</td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <hr>
            </div>
        </div>
    </section>
    <section class="section">
        <div class="section-body">
            <div class="invoice">
                <div class="invoice-print">
                    <div class="row mt-4">
                        <div class="col-md-4">
                            <form action="{{route('admin.withdraw.update', $requests->id)}}" method="POST">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="">Status</label>
                                    <select name="status" class="form-control" id="status">
                                        <option value="pending" {{ $requests->status == 'pending' ? 'selected' : '' }}>Pending</option>
                                        <option value="paid" {{ $requests->status == 'paid' ? 'selected' : '' }}>Paid</option>
                                        <option value="declined" {{ $requests->status == 'decline' ? 'selected' : '' }}>Declined</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <hr>
            </div>
        </div>
    </section>
@endsection