<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\ProductReview;
use App\Models\ProductReviewImageGallery;
use App\Traits\ImageUploadTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReviewController extends Controller
{
    use ImageUploadTrait;
    public function create(Request $request)
    {
        $request->validate([
            'rating' => ['required'],
            'review' => ['required', 'max:255'],
            'image.*' => ['image']
        ]);

        $checkReviewExist = ProductReview::where('product_id', $request->product_id)->where('user_id', Auth::user()->id)->first();
        if($checkReviewExist) {
            toastr('You have already submitted a review for this product', 'error');
            return redirect()->back();
        }

        $imagePaths = $this->uploadMultiImage($request, 'image', 'uploads');
        $productReview = new ProductReview();
        $productReview->product_id = $request->product_id;
        $productReview->vendor_id = $request->vendor_id;
        $productReview->rating = $request->rating;
        $productReview->user_id = Auth::user()->id;
        $productReview->review = $request->review;
        $productReview->status = 0;
        $productReview->save();

        if(!empty($imagePaths)) {
            $reviewGallery = new ProductReviewImageGallery();
            foreach ($imagePaths as $path) {
                $reviewGallery->product_review_id = $productReview->id;
                $reviewGallery->image = $path;
                $reviewGallery->save();
            }
        }
        toastr('Review submitted successfully', 'success');
        return redirect()->back();
    }
}
