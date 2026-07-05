@echo off
title Setup FB Marketplace Analyst by Rifendy Ardian
echo ==========================================================
echo    SETUP PERTAMA KALI - FB MARKETPLACE ANALYST
echo           by RIFENDY ARDIAN
echo ==========================================================
echo.
echo Selamat datang! Skrip ini akan menginstal semua pustaka
echo yang dibutuhkan aplikasi sebelum menjalankannya.
echo Pastikan Anda memiliki koneksi internet yang stabil.
echo.
echo Tekan tombol apa saja untuk memulai instalasi...
pause >nul

REM Pindah ke direktori skrip ini dijalankan
cd /d "%~dp0"

echo Memeriksa instalasi Python...
python --version >nul 2>&1
if %errorlevel% equ 0 goto python_installed

py --version >nul 2>&1
if %errorlevel% equ 0 goto python_installed

echo.
echo [INFO] Python belum terinstal di komputer Anda!
echo [INFO] Sedang mengunduh Python 3.11 (64-bit)... Mohon tunggu...
curl -L -o python-installer.exe https://www.python.org/ftp/python/3.11.9/python-3.11.9-amd64.exe
if not exist python-installer.exe (
    echo [ERROR] Gagal mengunduh Python. Periksa koneksi internet Anda.
    pause
    exit /b
)

echo [INFO] Menginstal Python secara diam-diam (Silent Install)... 
python-installer.exe /quiet InstallAllUsers=0 PrependPath=1 Include_test=0
del python-installer.exe

echo.
echo [SUKSES] Python berhasil diinstal! 🎉
echo [PENTING] Anda HARUS MENUTUP jendela hitam ini, lalu buka lagi file "setup_and_run.bat" untuk melanjutkan.
pause
exit /b

:python_installed
echo Python terdeteksi. Melanjutkan proses...

echo.
echo [1/3] Menginstal dependensi Python dari src\r.txt...
python -m pip install -r src\r.txt
if errorlevel 1 (
    echo.
    echo [WARNING] 'python' tidak mempan, mencoba menggunakan 'py'...
    py -m pip install -r src\r.txt
    if errorlevel 1 (
        echo.
        echo [FATAL ERROR] Instalasi gagal. Pastikan Python sudah terinstal di komputer ini!
        pause
        exit /b
    )
)

echo.
echo [2/3] Menginstal browser Chromium untuk Playwright...
python -m playwright install chromium
if errorlevel 1 (
    py -m playwright install chromium
)

echo.
echo [3/3] Instalasi selesai! Aplikasi siap digunakan.
echo Menjalankan aplikasi dalam 3 detik...
timeout /t 3 /nobreak >nul

echo.
echo ==========================================================
echo                  MEMBUKA APLIKASI...
echo ==========================================================
python src\app.py
if errorlevel 1 (
    py src\app.py
)

if errorlevel 1 (
    echo.
    echo [ERROR] Aplikasi berhenti secara tidak wajar. Baca pesan error di atas.
    pause
)
