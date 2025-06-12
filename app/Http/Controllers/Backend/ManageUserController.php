<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Mail\AccountCreateMail;
use App\Models\User;
use App\Models\Vendor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ManageUserController extends Controller
{
    public function index()
    {
        return view('admin.manage-user.index');
    }

    public function create(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:8|confirmed',
            'role' => 'required',
        ]);

        $user = new User();

        if($request->role == 'user'){
            $user->name = $request->name;
            $user->email = $request->email;
            $user->password = bcrypt($request->password);
            $user->role = 'user';
            $user->status = 'active';
            $user->save();
            Mail::to($request->email)->send(new AccountCreateMail($request->name, $request->email, $request->password));
        } elseif ($request->role == 'vendor') {
            $user->name = $request->name;
            $user->email = $request->email;
            $user->password = bcrypt($request->password);
            $user->role = 'vendor';
            $user->status = 'active';
            $user->save();
            Mail::to($request->email)->send(new AccountCreateMail($request->name, $request->email, $request->password));
            $vendor = new Vendor();
            $vendor->banner = 'uploads/1343.jpg';
            $vendor->shop_name = $request->name . ' Shop';
            $vendor->phone = '01111111111'; // Placeholder phone number
            $vendor->email = 'vendor@gmail.com';
            $vendor->address = 'Bangladesh';
            $vendor->description = 'Shop Description';
            $vendor->user_id = $user->id;
            $vendor->status = 1;
            $vendor->save();
        } elseif ($request->role == 'admin') {
            $user->name = $request->name;
            $user->email = $request->email;
            $user->password = bcrypt($request->password);
            $user->role = 'admin';
            $user->status = 'active';
            $user->save();
            Mail::to($request->email)->send(new AccountCreateMail($request->name, $request->email, $request->password));
            $admin = new Vendor();
            $admin->banner = 'uploads/1343.jpg';
            $admin->shop_name = $request->name . ' Shop';
            $admin->phone = '01111111111'; // Placeholder phone number
            $admin->email = 'admin@gmail.com';
            $admin->address = 'Bangladesh';
            $admin->description = 'Shop Description';
            $admin->user_id = $user->id;
            $admin->status = 1;
            $admin->save();
        }

        toastr('User created successfully', 'success');
        return redirect()->route('admin.manage-user.index');
    }
}
