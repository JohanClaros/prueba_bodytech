<?php

use App\Http\Controllers\prodcontrol;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::resource('products',prodcontrol::class);



/*
Route::get('/products',[prodcontrol::class,'index']);

Route::post('/products',[prodcontrol::class, 'store']);
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
