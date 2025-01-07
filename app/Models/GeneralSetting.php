<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GeneralSetting extends Model
{
    protected $fillable = [
        'site_name',
        'layout',
        'contact_email',
        'currency_name',
        'currency_icon',
        'time_zone',
    ];
}
