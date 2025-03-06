<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductReview extends Model
{
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function productReviewGalleries()
    {
        return $this->hasMany(ProductReviewImageGallery::class);
    }
}
