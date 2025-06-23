<?php

namespace App\Http\Controllers\Backend;

use App\DataTables\WithdrawRequestDataTable;
use App\Http\Controllers\Controller;
use App\Models\WithdrawRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use function Termwind\render;

class WithdrawController extends Controller
{
    function index(WithdrawRequestDataTable $dataTable)
    {
        return $dataTable->render('admin.withdraw.index');
    }

    function show(string $id)
    {
        $requests = WithdrawRequest::findOrFail($id);
        return view('admin.withdraw.show', compact('requests'));
    }

    public function update(Request $request, string $id)
    {
        $request->validate([
            'status' => ['required', 'in:pending,paid,declined']
        ]);

        $withdraw = WithdrawRequest::findOrFail($id);
        $withdraw->status = $request->status;
        $withdraw->save();

        toastr('Updated Successfully!', 'success');
        return redirect()->route('admin.withdraw.index');
    }

}
