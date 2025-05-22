<?php

namespace App\Http\Controllers\Backend;

use App\DataTables\VendorRequestDataTable;
use App\Http\Controllers\Controller;
use App\Models\Vendor;
use Illuminate\Http\Request;

class VendorRequestController extends Controller
{
    public function index(VendorRequestDataTable $dataTable)
    {
        return $dataTable->render('admin.vendor-request.index');
    }

    public function show(string $id)
    {
        $vendor = Vendor::findOrFail($id);
        return view('admin.vendor-request.show', compact('vendor'));
    }
}
