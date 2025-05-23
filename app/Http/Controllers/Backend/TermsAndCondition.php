<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\TermsAndCondition as ModelsTermsAndCondition;
use Illuminate\Http\Request;

class TermsAndCondition extends Controller
{
    public function index()
    {
        $content = ModelsTermsAndCondition::first();
        return view('admin.termsandcondition.index', compact('content'));
    }

    public function update(Request $request)
    {
        $request->validate([
            'content' => ['required']
        ]);

        ModelsTermsAndCondition::updateOrCreate(
            ['id' => 1], 
            ['content' => $request->content]
        );
        toastr('About content updated successfully', 'success');
        return redirect()->back();
    }
}
