<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\PublicidadController;

Route::get('publicidad', [PublicidadController::class, 'index'])->name('index');
Route::post('publicidad/store', [PublicidadController::class, 'store'])->name('store');
Route::get('publicidad/show/{id}', [PublicidadController::class, 'show'])->name('show');
Route::post('publicidad/update/{id}', [PublicidadController::class, 'update'])->name('update');
Route::delete('publicidad/destroy/{id}', [PublicidadController::class, 'destroy'])->name('destroy');
Route::put('/publicidad/update/status/{publicidad:id}', [PublicidadController::class, 'updateStatus'])
    ->name('publicidad.updateStatus');