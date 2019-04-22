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

CRUDBooster::routeController('/','FrontendController');
//CRUDBooster::routeController('weather','WeatherChartController');
//CRUDBooster::routeController('dash','WeatherChartController');

Route::get('print-chart', 'pdfController@pdfchartview')->name('print-chart');
Route::get('print-d3chart', 'pdfController@pdfd3chart')->name('print-d3chart');

Route::get('test', function () { return view('test'); });


// Route::get('getIndextogallery', 'AdminAlbumController@getIndextogallery');
Route::get('/admin/album/getIndextogallery/{id}', 'AdminAlbumController@getIndextogallery')->name('getIndextogallery');

Route::get('dash', 'AdminDashboardController@getIndex2')->name('getIndex2');
Route::get('dashboard', 'AdminDashboardController@getIndex1')->name('getIndex1');

Route::get('Main DashBoard', 'AdminDashboardController@getdash')->name('getdash');

//CRUDBooster::routeController('dash','AdminDashboardController');
//CRUDBooster::routeController('dashboard','AdminDashboardController');


Route::get('/dashboard/getIndex1/{id}', 'AdminDashboardController@getIndex1')->name('getIndex1');
Route::get('/weather/{id}', 'AdminDashboardController@weather_view')->name('weather_view');
Route::get('/CCTV/{id}', 'AdminDashboardController@camera_view')->name('camera_view');
