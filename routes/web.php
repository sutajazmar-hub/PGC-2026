<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\TurismoController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\PlaceController;

/* REGISTER */

Route::get('/register', [RegisterController::class, 'create'])
    ->name('register');

Route::post('/register', [RegisterController::class, 'store'])
    ->name('register.store');

/* LOGIN  */

Route::get('/login', [LoginController::class, 'create'])
    ->name('login');

Route::post('/login', [LoginController::class, 'store'])
    ->middleware('throttle:5,1')
    ->name('login.store');

/* LOGOUT */

Route::post('/logout', [LoginController::class, 'destroy'])
    ->middleware('auth')
    ->name('logout');

    

/* DASHBOARD  */

Route::get('/dashboard', [TurismoController::class, 'index'])
    ->name('dashboard')
    ->middleware('auth');

/* CONTACTO S*/
    Route::post('/contacto', [TurismoController::class, 'enviarContacto'])
    ->name('contacto.enviar')
    ->middleware('auth');

/* POST */
Route::middleware('auth')->group(function (){
    Route::resource('posts',PostsController::class);
});

/* LUGARES */
Route::get('/lugares', [PlaceController::class, 'index']);
Route::get('/lugares/crear', [PlaceController::class, 'create']);
Route::post('/lugares', [PlaceController::class, 'store']);
Route::get('/lugares/{id}', [PlaceController::class, 'show']);

/* PLACE */
Route::get('/lugares', [PlaceController::class, 'index'])->middleware('auth');
Route::get('/lugares/crear', [PlaceController::class, 'create'])->middleware('auth');
Route::post('/lugares', [PlaceController::class, 'store'])->middleware('auth');

Route::get('/municipio/{municipio}', [PlaceController::class, 'municipio']);
Route::get('/categoria/{tipo}', [PlaceController::class, 'categoria']);