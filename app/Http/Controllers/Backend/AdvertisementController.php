<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Advertisement;
use App\Traits\ImageUploadTrait;
use Illuminate\Http\Request;

class AdvertisementController extends Controller
{
    use ImageUploadTrait;

    public function index()
    {
        $homepage_section_banner_one = Advertisement::where('key', 'homepage_section_banner_one')->first();
        $homepage_section_banner_one = json_decode($homepage_section_banner_one?->value);

        $homepage_section_banner_two = Advertisement::where('key', 'homepage_section_banner_two')->first();
        $homepage_section_banner_two = json_decode($homepage_section_banner_two?->value);

        return view('admin.advertisement.index', compact([
            'homepage_section_banner_one',
            'homepage_section_banner_two'
        ]));
    }

    public function homepageBannerSectionOne(Request $request)
    {
        $request->validate([
            'banner_image' => ['image'],
            'banner_url' => ['required']
        ]);

        $imagePath = $this->updateImage($request, 'banner_image', 'uploads');

        $value = [
            'banner_one' => [
                'banner_url' => $request->banner_url,
                'status' => $request->status == 'on' ? 1 : 0,
                'banner_image' => !empty($imagePath) ? $imagePath : $request->banner_old_image
            ]
        ];

        Advertisement::updateOrCreate(
            ['key' => 'homepage_section_banner_one'],
            ['value' => json_encode($value)]
        );

        toastr('Updated Successfully!', 'success');
        return redirect()->back();
    }

    public function homepageBannerSectionTwo(Request $request)
    {
        $request->validate([
            'banner_one_image' => ['image'],
            'banner_one_url' => ['required'],
            'banner_two_image' => ['image'],
            'banner_two_url' => ['required']
        ]);

        $imagePath1 = $this->updateImage($request, 'banner_one_image', 'uploads');
        $imagePath2 = $this->updateImage($request, 'banner_two_image', 'uploads');

        $value = [
            'banner_one' => [
                'banner_url' => $request->banner_one_url,
                'status' => $request->banner_one_status == 'on' ? 1 : 0,
                'banner_image' => !empty($imagePath1) ? $imagePath1 : $request->banner_one_old_image
            ],
            'banner_two' => [
                'banner_url' => $request->banner_two_url,
                'status' => $request->banner_two_status == 'on' ? 1 : 0,
                'banner_image' => !empty($imagePath2) ? $imagePath2 : $request->banner_two_old_image
            ]
        ];

        Advertisement::updateOrCreate(
            ['key' => 'homepage_section_banner_two'],
            ['value' => json_encode($value)]
        );

        toastr('Updated Successfully!', 'success');
        return redirect()->back();
    }
}
