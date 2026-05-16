<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\PayrollController;
use App\Http\Middleware\CheckIaeKey;

Route::middleware([CheckIaeKey::class])->prefix('v1')->group(function () {
    Route::get('/payroll-slips', [PayrollController::class, 'index']);
    Route::get('/payroll-slips/{nip}/{tahun}/{bulan}', [PayrollController::class, 'showByPeriod']);
    Route::post('/payroll-runs', [PayrollController::class, 'runPayroll']);
});