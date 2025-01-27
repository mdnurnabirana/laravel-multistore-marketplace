<?php

namespace App\Http\Controllers\Backend;

use App\DataTables\VendorOrderDataTable;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class VendorOrderController extends Controller
{
    public function index(VendorOrderDataTable $vendorOrderDataTable)
    {
        return $vendorOrderDataTable->render('vendor.order.index');
    }
}
