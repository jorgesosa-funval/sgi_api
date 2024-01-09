<?php

use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\ComprasController;
use App\Http\Controllers\ComprasProductosController;
use App\Http\Controllers\ProductosController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\VentasController;
use App\Http\Controllers\VentasProductosController;
use Illuminate\Auth\Events\Login;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/login', function(Request $request){
  $credentials = $request->only(['email', 'password']);
  if(!$token = auth()->attempt($credentials)){
    abort(401, 'No Autorizado');
  }
  return response()->json([
    'data' => [
        'token' => $token,
        'token_type' => 'bearer',
        'expires_in' => auth()->factory()->getTTL() * 60
    ]
  ]);
});

Route::controller(UsersController::class)->group(function(){
    Route::get('/users','index');
});

Route::controller(RoleController::class)->group(function(){
    Route::get('/roles','index');
});

Route::controller(ComprasController::class)->group(function(){
    Route::get('/compras','index');
});

Route::controller(ComprasProductosController::class)->group(function(){
    Route::get('/comprasp','index');
});

Route::controller(ProductosController::class)->group(function(){
    Route::get('/productos','index');
    Route::post('/productos','store');
    Route::put('/productos/{$nombreProducto}','update');
    Route::delete('/productos/{$nombreProducto}','destroy');
});

Route::controller(VentasController::class)->group(function(){
    Route::get('/ventas','index');
    Route::post('/ventas','store');
    Route::put('/ventas/{user_id}','update');
    Route::delete('/ventas/{user_id}','destroy');
});

Route::controller(ComprasController::class)->group(function(){
    Route::get('/compras','index');
    Route::post('/compras','store');
    Route::put('/compras/{user_id}','update');
    Route::delete('/compras/{user_id}','destroy');
});

Route::controller(ComprasProductosController::class)->group(function(){
    Route::get('/comprasproduct','index');
    Route::post('/comprasproduct','store');
    Route::put('/comprasproduct/{user_id}','update');
    Route::delete('/comprasproduct/{user_id}','destroy');
});

Route::controller(VentasProductosController::class)->group(function(){
    Route::get('/productosventas','index');
    Route::post('/productosventas','store');
    Route::put('/productosventas/{venta_id}','update');
    Route::delete('/productosventas/{venta_id}','destroy');
});
