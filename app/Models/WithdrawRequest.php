<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Vendor;

class WithdrawRequest extends Model
{
    use HasFactory;

    function vendor()
    {
        return $this->belongsTo(Vendor::class);
    }
}
