<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    protected $fillable = ['name', 'nit', 'phone', 'email', 'created_at', 'updated_at'];
}
