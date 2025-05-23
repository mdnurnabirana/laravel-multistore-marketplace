<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Testing\Fluent\Concerns\Has;

class TermsAndCondition extends Model
{
    use HasFactory;
    protected $fillable = [
        'content'
    ];
}
