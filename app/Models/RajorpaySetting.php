<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RajorpaySetting extends Model
{
    protected $fillable = [
        'status',
        'country_name',
        'currency_name',
        'currency_rate',
        'rajorpay_key',
        'rajorpay_secret_key'
    ];
}
