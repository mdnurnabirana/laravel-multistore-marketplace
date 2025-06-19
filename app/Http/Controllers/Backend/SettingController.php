<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\EmailConfiguration;
use App\Models\GeneralSetting;
use App\Models\LogoSetting;
use App\Traits\ImageUploadTrait;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    use ImageUploadTrait;

    public function index()
    {
        $generalSettings = GeneralSetting::first();
        $emailSettings = EmailConfiguration::first();
        $logoSettings = LogoSetting::first();
        return view('admin.setting.index', compact('generalSettings', 'emailSettings', 'logoSettings'));
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

    public function logoSettingUpdate(Request $request)
    {
        $request->validate([
            'logo' => ['image', 'mimes:jpeg,png,jpg,gif,svg', 'max:3072'],
            'footer_logo' => ['image', 'mimes:jpeg,png,jpg,gif,svg', 'max:3072'],
            'favicon' => ['image', 'mimes:jpeg,png,jpg,gif,svg', 'max:3072'],
        ]);

        $logoPath = $this->updateImage($request, 'logo', 'uploads', $request->old_logo);
        $footerLogoPath = $this->updateImage($request, 'footer_logo', 'uploads', $request->old_footer_logo);
        $faviconPath = $this->updateImage($request, 'favicon', 'uploads', $request->old_favicon);

        $logoSetting = LogoSetting::updateOrCreate(
            ['id' => 1],
            [
                'logo' => !empty($logoPath) ? $logoPath : $request->old_logo,
                'footer_logo' => !empty($footerLogoPath) ? $footerLogoPath : $request->old_footer_logo,
                'favicon' => !empty($faviconPath) ? $faviconPath : $request->old_favicon,
            ]
        );

        toastr('Logo Settings Updated Successfully', 'success');

        return redirect()->back();
    }
}
