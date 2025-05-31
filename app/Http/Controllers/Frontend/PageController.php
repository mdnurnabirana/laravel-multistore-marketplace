<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\About;
use App\Models\EmailConfiguration;
use App\Models\TermsAndCondition;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx\Rels;
use App\Mail\Contact;

class PageController extends Controller
{
    public function about()
    {
        $about = About::first();
        return view('frontend.pages.about', compact('about'));
    }

    public function termsAndCondition()
    {
        $terms = TermsAndCondition::first();
        return view('frontend.pages.termsandcondition', compact('terms'));
    }

    public function contact()
    {
        return view('frontend.pages.contact');
    }

    public function handleContactForm(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'subject' => 'required|string|max:255',
            'message' => 'required|string|max:1000',
        ]);

        $settings = EmailConfiguration::first();
        Mail::to($settings->email)->send(new Contact($request->subject, $request->message, $request->email));

        return response([
            'status' => 'success',
            'message' => 'Your message has been sent successfully!'
        ]);
    }
}
