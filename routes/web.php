<?php

use App\Http\Controllers\Alunos\AlunosController;
use App\Http\Controllers\Turmas\TurmasController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('index');
})->name('home');
Route::prefix('alunos')->name('alunos')->group(function () {
    Route::get('/', [AlunosController::class, 'index'])->name('.index');
    Route::get('/new', [AlunosController::class, 'create'])->name('.create');
    Route::post('/new', [AlunosController::class, 'store'])->name('.store');
    Route::get('/{uuid}', [AlunosController::class, 'edit'])->name('.edit');
    Route::post('/{uuid}', [AlunosController::class, 'update'])->name('.update');
    Route::delete('/{uuid}', [AlunosController::class, 'delete'])->name('.delete');
});
Route::prefix('turmas')->name('turmas')->group(function () {
    Route::get('/', [TurmasController::class, 'index'])->name('.index');
    Route::get('/new', [TurmasController::class, 'create'])->name('.create');
    Route::post('/new', [TurmasController::class, 'store'])->name('.store');
    Route::get('/{uuid}', [TurmasController::class, 'edit'])->name('.edit');
    Route::post('/{uuid}', [TurmasController::class, 'update'])->name('.update');
    Route::delete('/{uuid}', [TurmasController::class, 'delete'])->name('.delete');
});
