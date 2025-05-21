<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Vendor;
use App\Traits\ImageUploadTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx\Rels;

class UserVendorRequestController extends Controller
{
    use ImageUploadTrait;
    public function index()
    {
        return view('frontend.dashboard.vendor-request.index');
    }

    public function create(Request $request)
    {
        $request->validate([
            'shop_image' => ['required', 'image', 'max:3000'],
            'shop_name' => ['required', 'max:255'],
            'shop_email' => ['required', 'email', 'max:255'],
            'shop_phone' => ['required', 'max:255'],
            'shop_address' => ['required'],
            'about' => ['required']
        ]);

        $imagePath = $this->uploadImage($request, 'shop_image', 'uploads');

        $vendor = new Vendor();
        $vendor->banner = $imagePath;
        $vendor->shop_name = $request->shop_name;
        $vendor->phone = $request->shop_phone;  
        $vendor->email = $request->shop_email;
        $vendor->address = $request->shop_address;
        $vendor->description = $request->about;
        $vendor->user_id = Auth::user()->id;
        $vendor->status = 0; // 0 for pending
        $vendor->save();

        toastr('Request Submitted Successfully, Please wait for Approve!', 'success');

        return redirect()->back();
    }
}
