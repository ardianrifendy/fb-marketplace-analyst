@echo off
REM ============================================================
REM  FB Marketplace Analyst by Rifendy Ardian
REM  Klik dua kali file ini untuk membuka aplikasi.
REM ============================================================
title FB Marketplace Analyst by Rifendy Ardian

REM Pindah ke folder tempat file .bat ini berada (apa pun lokasinya).
cd /d "%~dp0"

REM Jalankan aplikasi. Coba 'python', bila gagal coba 'py'.
python src\app.py
if errorlevel 1 (
    echo.
    echo [info] 'python' gagal / tidak ditemukan, mencoba 'py'...
    py src\app.py
)

REM Jeda hanya bila terjadi error, supaya pesan bisa dibaca.
if errorlevel 1 (
    echo.
    echo [ERROR] Aplikasi gagal dijalankan.
    echo [INFO] Pastikan Python sudah terinstal. Jika ini pertama kalinya, jalankan "setup_and_run.bat"!
    pause
)
