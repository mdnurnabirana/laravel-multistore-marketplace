<?php

namespace App\Http\Controllers\Backend;

use App\DataTables\NewsletterSubscriberDataTable;
use App\Http\Controllers\Controller;
use App\Mail\Newsletter;
use App\Models\NewsletterSubscriber;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class SubscribersController extends Controller
{
    public function index(NewsletterSubscriberDataTable $datatable)
    {
        return $datatable->render('admin.subscriber.index');
    }
    public function sendMail(Request $request)
    {
        $request->validate([
            'subject' => ['required'],
            'message' => ['required']
        ]);

        $subscriber = NewsletterSubscriber::where('is_verified', 1)->pluck('email')->toArray();

        Mail::to($subscriber)->send(new Newsletter($request->subject, $request->message));

        toastr('Mail has been send', 'success');
        return redirect()->back();
    }
    public function destroy(string $id)
    {
        NewsletterSubscriber::findOrFail($id)->delete();
        return response(['status' => 'success', 'message' => 'Deleted Successfully!']);
    }
}
