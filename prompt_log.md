# AI Prompt Log - Payroll Service

## Identitas
- Nama: M Farhan Chanafi
- Service: Payroll Service
- Mata Kuliah: Integrasi Aplikasi Enterprise
- Tugas: Tugas 2
- Tema Proses Bisnis: Penggajian Karyawan

---

## Prompt 1
Memahami ketentuan Tugas 2 Integrasi Aplikasi Enterprise, khususnya mengenai pembuatan mini-service, REST API, API Key, Swagger/OpenAPI, GraphQL, Docker, dan Standard Integration Contract.

## Prompt 2
Menganalisis proses bisnis kelompok dengan tema Penggajian Karyawan dan menentukan peran Payroll Service dalam alur integrasi antar service.

## Prompt 3
Menyusun rancangan endpoint utama pada Payroll Service sesuai kebutuhan proses penggajian bulanan:
- GET /api/v1/payroll-slips
- GET /api/v1/payroll-slips/{NIP}/{TAHUN}/{BULAN}
- POST /api/v1/payroll-runs

## Prompt 4
Membahas rancangan tabel payroll_slips yang digunakan untuk menyimpan data slip gaji berdasarkan NIP, tahun, bulan, komponen gaji, rekap absensi, potongan, total gaji, dan status payroll.

## Prompt 5
Membahas alur perhitungan payroll sederhana yang digunakan dalam service:
gaji pokok + tunjangan tetap - potongan alpha = total gaji.

## Prompt 6
Membahas konsep Standard Integration Contract agar response API menggunakan format JSON yang konsisten, baik untuk response berhasil maupun response error.

## Prompt 7
Membahas konsep middleware X-IAE-KEY untuk membatasi akses endpoint Payroll Service sesuai ketentuan keamanan sederhana pada tugas.

## Prompt 8
Menentukan penggunaan SQLite sebagai database Payroll Service agar konfigurasi lebih sederhana dan dapat berjalan di dalam Docker tanpa perlu membuat database manual.

## Prompt 9
Membahas konfigurasi Docker untuk menjalankan Laravel Payroll Service, termasuk penggunaan Dockerfile, docker-compose.yml, dan file database/database.sqlite.

## Prompt 10
Mengecek konfigurasi .env dan .env.example agar sesuai dengan kebutuhan Payroll Service, seperti APP_NAME, APP_URL, DB_CONNECTION, DB_DATABASE, dan IAE_KEY.

## Prompt 11
Membahas pembuatan model PayrollSlip sebagai representasi tabel payroll_slips pada Laravel.

## Prompt 12
Membahas pembuatan PayrollController untuk menangani fungsi utama Payroll Service, yaitu menampilkan seluruh slip gaji, menampilkan detail slip gaji berdasarkan periode, dan menjalankan proses payroll bulanan.

## Prompt 13
Menyusun route REST API Payroll Service sesuai endpoint yang telah dirancang agar dapat diakses melalui prefix /api/v1.

## Prompt 14
Melakukan pengujian REST API menggunakan Postman untuk memastikan endpoint POST dan GET berjalan dengan status code yang sesuai.

## Prompt 15
Menguji proteksi API Key dengan header X-IAE-KEY untuk memastikan request tanpa API Key atau dengan API Key yang salah akan ditolak oleh sistem.

## Prompt 16
Membahas kebutuhan dokumentasi Swagger/OpenAPI agar seluruh endpoint Payroll Service dapat terdokumentasi secara interaktif.

## Prompt 17
Membahas implementasi GraphQL pada Payroll Service agar data slip gaji dapat diakses melalui query dengan pemilihan field sesuai kebutuhan client.

## Prompt 18
Memahami konsep integrasi antar service, yaitu Payroll Service nantinya mengambil data dari Employee Service dan Absensi Service melalui HTTP API, bukan dengan mengakses database service lain secara langsung.

## Prompt 19
Menambahkan konfigurasi environment untuk kebutuhan integrasi antar service, seperti EMPLOYEE_SERVICE_URL, EMPLOYEE_SERVICE_KEY, ABSENSI_SERVICE_URL, dan ABSENSI_SERVICE_KEY.

## Prompt 20
Mengecek kendala koneksi saat mencoba integrasi dengan service lain. Diketahui bahwa koneksi belum dapat dilakukan karena Employee Service dan Absensi Service belum berjalan pada port yang ditentukan.

## Prompt 21
Menyimpulkan bahwa Payroll Service sudah dapat berjalan secara mandiri dengan REST API, response JSON sesuai kontrak, API Key, Swagger, GraphQL, Docker, dan SQLite. Integrasi real antar service akan dilanjutkan ketika service anggota kelompok lain sudah tersedia atau sudah di jalankan.

---