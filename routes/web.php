<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('detectives/index', 'DetectiveController@index');
Route::get('/', function () {
    return view('index');
});
Route::get('/home', function () {
    return view('index');
});
Auth::routes();
Route::get('detective/{detective_slug}', 'DetectiveController@show');

// Route::resource('/detectives','DetectiveController');