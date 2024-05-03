<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\StoreController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\FavBookController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\Auth\AuthUserController;
use App\Http\Controllers\Auth\ResetPasswordController;

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

// User Auth
Route::post("/register",[AuthUserController::class,"register"]);
Route::post("/login",[AuthUserController::class,"login"]);
Route::post("/forget/password",[AuthUserController::class,"resetpassword"]);
Route::post("/confirmOtp",[ResetPasswordController::class,"confirmOtp"]);
Route::post("/password/reset",[ResetPasswordController::class,"passwordreset"]);
Route::middleware("api")->group(function(){
    // user
    Route::get("/logout",[AuthUserController::class,"logout"]);
    Route::get("/profile",[AuthUserController::class,"profile"]);
    Route::post("/edit/profile",[AuthUserController::class,"editprofile"]);
    // list category
    Route::get("/category/list",[CategoryController::class,"index"]);
    // list Author
    Route::get("/Author/list",[AuthorController::class,"index"]);
    // home
    Route::get("/home",[HomeController::class,"home"]);
    Route::post("/search",[HomeController::class,"search"]);
    // book
    Route::get("/list/book",[BookController::class,"index"]);
    Route::get("/book/details/{id}",[BookController::class,"indexdetails"]);
    Route::get("/book/bycategory/{id}",[BookController::class,"showbycategory"]);
    // add to card
    Route::post("/Add/Tocart",[CartController::class,"AddToCard"]);
    Route::get("/show/cart",[CartController::class,"showcard"])->name('showcard');
    Route::post("/change/qty",[CartController::class,"change"]);
    Route::get("/checkout/{card_id}",[CartController::class,"checkout"]);

    // show location
    Route::get("/stores/location",[StoreController::class,"index"]);
    // fav book
    Route::get("/fav/book/{id}",[FavBookController::class,"favbook"]);
    Route::get("/fav/list",[FavBookController::class,"favbooklist"]);

    // list all user
    Route::get("/user/list",[UserController::class,"index"]);

});
