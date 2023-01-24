<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pet extends Model
{
    use HasFactory;

    protected $fillable = [
        'client_profile_id',
        'name',
        'age'
    ];

    public function owner()
    {
        return $this->belongsTo(ClientProfile::class);
    }
}
