<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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

Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');

Route::get('/feeds/{event}', 'FeedsController@show')
    ->name('feeds.show');
Route::feeds();


Route::get('/', 'VacancyController@index')->name('home');

Route::get('/vacancy/create', 'VacancyController@create');
Route::get('/vacancy/{post}', 'VacancyController@show');
Route::post('/vacancy', 'VacancyController@store');

Route::get('/vacancy/user/apply', 'VacancyController@apply')->name('apply-vacancy')->middleware('auth');
