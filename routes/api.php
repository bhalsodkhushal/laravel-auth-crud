<?php

use Illuminate\Http\Request;

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

Route::group([
    'prefix' => 'auth'
], function () {
    Route::post('login', 'AuthController@login');
    Route::post('signup', 'AuthController@signup');
  
    Route::group([
      'middleware' => 'auth:api'
    ], function() {
		Route::get('logout', 'AuthController@logout');
        Route::get('user', 'AuthController@user');
		Route::get('userlist', 'AuthController@userlist');
		
		Route::post('employee-add', 'EmployeeController@createEmployee');
		Route::post('employee-list', 'EmployeeController@listEmployee');
		Route::get('department-list', 'EmployeeController@listDepartment');
    });
});