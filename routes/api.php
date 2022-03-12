<?php

use App\Http\Controllers\prodcontrol;
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

Route::get('/products',[prodcontrol::class,'index']);

/*Route::post('/products',function(){
    return Product::create([
        'nombre'=>'Producto uno',
        'token'=>'producto-uno',
        'descripcion'=>'Primer Producto',
        'precio'=>'15.22'
    ]);
});*/


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
