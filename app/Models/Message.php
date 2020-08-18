<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    //
    protected $table = 'message';
    public $timestamps = false;
    protected $fillable = ['name', 'department','type','date','reason'];
}
