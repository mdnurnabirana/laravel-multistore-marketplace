<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\RajorpaySetting;
use Illuminate\Http\Request;

class RajorpaySettingController extends Controller
{
    public function update(Request $request, string $id)
    {
        $request->validate([
            'status' => ['required', 'integer'],
            'country_name' => ['required', 'max: 200'],
            'currency_name' => ['required', 'max: 200'],
            'currency_rate' => ['required'],
            'rajorpay_key' => ['required'],
            'rajorpay_secret_key' => ['required']
        ]);

        RajorpaySetting::updateOrCreate(
            ['id' => $id],
            [
            'status' => $request->status,
            'country_name' => $request->country_name,
            'currency_name' => $request->currency_name,
            'currency_rate' => $request->currency_rate,
            'rajorpay_key' => $request->rajorpay_key,
            'rajorpay_secret_key' => $request->rajorpay_secret_key
            ]
        );
        toastr('Updated Successfully!', 'success');
        return redirect()->back();
    }
}
