<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class NewsletterController extends Controller
{
    public function newsLetterRequest(Request $request)
    {
        $request->validate([
            'email' => ['required', 'email']
        ]);
    }
}
