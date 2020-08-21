<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;

class Message extends Model
{
    //
    protected $table = 'message';
    public $timestamps = false;
    protected $fillable = ['name', 'department','type','date','reason'];
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
