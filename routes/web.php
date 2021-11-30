<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
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

Route::get('/', function () {
    return view('cms.homepage.index');
})->name('home');

Route::get('/checkout', function () {
    return view('checkout.onepage');
})->name('checkout');

Route::get('product/{id}', ProductController::class)->name('product');
Route::get('category/{id}', CategoryController::class)->name('category');

Route::rewrites();