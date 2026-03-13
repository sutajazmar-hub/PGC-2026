<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Place extends Model
{
    protected $fillable = [
        'nombre',
        'descripcion',
        'municipio',
        'tipo',
        'imagen',
        'user_id'
    ];
}
