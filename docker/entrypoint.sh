#!/bin/sh
set -e

cd /app

# Siapkan environment aplikasi tanpa bantuan manual dari host.
if [ ! -f "/app/.env" ]; then
    cp /app/.env.example /app/.env
    echo "[payroll-service] .env dibuat dari .env.example."
fi

# Buat file SQLite jika belum ada
mkdir -p /app/database
if [ ! -f "/app/database/database.sqlite" ]; then
    touch /app/database/database.sqlite
    echo "[payroll-service] SQLite database dibuat."
fi

# Buat storage dirs
mkdir -p /app/storage/logs \
         /app/storage/framework/cache \
         /app/storage/framework/sessions \
         /app/storage/framework/views

# Generate APP_KEY jika belum tersedia dari environment maupun file .env.
ENV_APP_KEY="$(sed -n 's/^APP_KEY=//p' /app/.env | tail -n 1)"
if [ -z "${APP_KEY:-$ENV_APP_KEY}" ]; then
    php artisan key:generate --force
    echo "[payroll-service] APP_KEY dibuat."
fi

# Jalankan migrasi
php artisan migrate --force
echo "[payroll-service] Migrasi selesai."

# Pastikan dokumentasi selalu sesuai dengan annotation terbaru.
php artisan l5-swagger:generate
echo "[payroll-service] Swagger berhasil digenerate."

# Start server
echo "[payroll-service] Starting on 0.0.0.0:8000 ..."
exec php artisan serve --host=0.0.0.0 --port=8000
