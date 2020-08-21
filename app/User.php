<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Laravel\Passport\HasApiTokens;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Model;


class User extends Authenticatable
{
    use HasApiTokens, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'password'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    public function messages()
    {
        return $this->hasMany('App\Models\Message');
    }
//    public function  find($name)
//    {
//
//        $data = DB::table('users')->where('name', $name);
//
//
//        /**            @foreach($users as $user)
//         *
//         *           @foreach($user->products as $product)  // fetch products
//         *                  // do your magic
//         *            @endforeach
//         *
//         *@endforeach
//         */
//        dump($data);
//    }
}

