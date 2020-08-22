<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });


Route::post('register', 'API\UserController@register');
Route::post('login', 'API\UserController@login');
Route::get('accept/{name}/{auditStatus}', 'API\UserController@accept');
Route::post('submit', 'API\UserController@submit');
Route::get('look/{name}', 'API\UserController@look');
Route::post('details', 'API\UserController@details');
//Route::group(['middleware' => 'auth:api'], function(){
//
//});
