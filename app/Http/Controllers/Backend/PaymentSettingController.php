<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PaymentSettingController extends Controller
{
    public function index()
    {
        return view('admin.payment-settings.index');
    }
}
