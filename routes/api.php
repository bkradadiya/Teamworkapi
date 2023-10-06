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


Route::post('/login', 'App\Http\Controllers\API\AuthController@login');

//Route::post('/editphoto1', 'App\Http\Controllers\API\Client\ProfileController@edit_photo');
Route::middleware('auth:api')->group(function () {

    Route::post('/profile', 'App\Http\Controllers\API\Client\ProfileController@profile');
    Route::get('/clientdata', 'App\Http\Controllers\API\Client\ProfileController@get_profiledata');
    Route::post('/editphoto', 'App\Http\Controllers\API\Client\ProfileController@edit_photo');
    Route::get('/project', 'App\Http\Controllers\API\Client\ProjectController@view');
    Route::get('/listclientProject', 'App\Http\Controllers\API\Client\ProjectController@listclientProject');
    Route::get('/dashboard', 'App\Http\Controllers\API\Client\DashboardController@dashboard');

//Staff Api//

    Route::post('/profile', 'App\Http\Controllers\API\Staff\ProfileController@profile');
    Route::get('/staffdata', 'App\Http\Controllers\API\Staff\ProfileController@get_profiledata');
    Route::get('/liststaffdata', 'App\Http\Controllers\API\Staff\ProfileController@liststaff');
    Route::get('/search', 'App\Http\Controllers\API\Staff\ProfileController@getSearchResults');
    Route::get('/liststaffProject', 'App\Http\Controllers\API\Staff\ProjectController@liststaffProject');
    Route::get('/dashboard', 'App\Http\Controllers\API\Staff\DashboardController@dashboard');


    Route::post('/logout', 'App\Http\Controllers\API\Client\AuthController@logout');
});



// Staff Api //

//Route::post('/login', 'App\Http\Controllers\API\Staff\AuthController@login');

