<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function create(Request $request)
    {
        $request->validate([
            'rating' => ['required'],
            'review' => ['required', 'max:255'],
            'image.*' => ['required', 'image']
        ]);

        
    }
}
