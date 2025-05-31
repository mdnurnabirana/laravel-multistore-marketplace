<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\EmailConfiguration;
use App\Models\GeneralSetting;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    public function index()
    {
        $generalSettings = GeneralSetting::first();
        $emailSettings = EmailConfiguration::first();
        return view('admin.setting.index', compact('generalSettings', 'emailSettings'));
    }

    public function generalSettingUpdate(Request $request)
    {
        $request->validate([
            'site_name' => ['required', 'max:255'],
            'layout' => ['required', 'max:255'],
            'contact_email' => ['required', 'email', 'max:255'],
            'currency_name' => ['required', 'max:255'],
            'currency_icon' => ['required', 'max:255'],
            'time_zone' => ['required', 'max:255'],
        ]);

        GeneralSetting::updateOrCreate(
            ['id' => 1],
            [
                'site_name' => $request->site_name,
                'layout' => $request->layout,
                'contact_email' => $request->contact_email,
                'currency_name' => $request->currency_name,
                'contact_phone' => $request->contact_phone,
                'contact_address' => $request->contact_address,
                'map' => $request->map,
                'currency_icon' => $request->currency_icon,
                'time_zone' => $request->time_zone,
            ]
        );

        toastr('Update General Setting Successfully', 'success');

        return redirect()->back();
    }

    public function emailConfigSettingUpdate(Request $request)
    {
        $request->validate([
            'email' => ['required', 'max:255', 'email'],
            'host' => ['required', 'max:255'],
            'username' => ['required', 'max:255'],
            'password' => ['required', 'max:255'],
            'port' => ['required', 'max:255'],
            'encryption' => ['required', 'max:255']
        ]);

        EmailConfiguration::updateOrCreate(
            ['id' => 1], // Search criteria
            [
                'email' => $request->email,
                'host' => $request->host,
                'username' => $request->username,
                'password' => $request->password,
                'port' => $request->port,
                'encryption' => $request->encryption,
            ]
        );
        

        toastr('Updated Successfully!', 'success');
        return redirect()->back();
    }
}
