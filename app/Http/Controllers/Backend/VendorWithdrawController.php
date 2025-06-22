<?php

namespace App\Http\Controllers\Backend;

use App\DataTables\VendorWithdrawDataTable;
use App\Http\Controllers\Controller;
use App\Models\WithDrawMethod;
use App\Models\WithdrawRequest;
use Illuminate\Validation\ValidationException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class VendorWithdrawController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(VendorWithdrawDataTable $dataTable)
    {
        return $dataTable->render('vendor.withdraw.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $methods = WithDrawMethod::all();
        return view('vendor.withdraw.create', compact('methods'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'method' => ['required', 'integer'],
            'amount' => ['required', 'numeric'],
            'account_info' => ['required', 'max:200']
        ]);

        $method = WithDrawMethod::findOrFail($request->method);

        if(($request->amount < $method->minimum_amount) || ($request->amount > $method->maximum_amount)){
            throw ValidationException::withMessages([
                'amount' => ['The amount has to be between ' . $method->minimum_amount . ' and ' . $method->maximum_amount . '.']
            ]);
        }

        $withdraw = new WithdrawRequest();
        $withdraw->vendor_id = Auth::user()->id;
        $withdraw->method = $method->name;
        $withdraw->total_amount = $request->amount;
        $withdraw->withdraw_amount = $request->amount - ($method->withdraw_charge / 100) * $request->amount;
        $withdraw->withdraw_charge = ($method->withdraw_charge / 100) * $request->amount;
        $withdraw->account_info = $request->account_info;
        $withdraw->save();

        toastr('Request Added Successfully', 'success');
        return redirect()->route('vendor.vendor-withdraw.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $methodInfo = WithDrawMethod::findOrFail($id);
        return response($methodInfo);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
