<?php

use App\Http\Controllers\prodcontrol;
use App\Http\Controllers\AuthController;
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

// Route::resource('products', prodcontrol::class);

// Public routes
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::get('/products', [prodcontrol::class, 'index']);
Route::get('/products/{id}', [prodcontrol::class, 'show']);
Route::get('/products/search/{name}', [prodcontrol::class, 'search']);




// Protected routes
Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::post('/products', [prodcontrol::class, 'store']);
    Route::put('/products/{id}', [prodcontrol::class, 'update']);
    Route::delete('/products/{id}', [prodcontrol::class, 'destroy']);
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::get('/products-vista', [prodcontrol::class, 'vista']);
    Route::get('/products-compra', [prodcontrol::class, 'compra']);
});



Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});