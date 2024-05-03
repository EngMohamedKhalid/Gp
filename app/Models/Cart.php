<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;
    protected $guarded = [];



    protected $casts = [
        'Book_ids' => 'array',
        'Book_price' => 'array',
        'Book_qtys' => 'array'
    ];

}