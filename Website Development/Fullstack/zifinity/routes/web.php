<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AppController;
use App\Http\Controllers\RESTAPIController;
use Illuminate\Routing\RouteGroup;

Route::prefix('api')->group( function(){
    Route::get('/techstacks', [RESTAPIController::class, 'getTechstacks']);
    Route::get('/services', [RESTAPIController::class, 'getServices']);
});

Route::get('/', [AppController::class, 'index']);