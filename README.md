<div align="center">

# 🚀 FB Marketplace Analyst - *Pro Edition* 🚀
**Bukan scraper biasa. Ini senjata rahasia reseler sejati. 💸**

[![Python 3.10+](https://img.shields.io/badge/Python-3.10%2B-blue.svg?style=for-the-badge&logo=python)](#)
[![Playwright](https://img.shields.io/badge/Playwright-Fast-green.svg?style=for-the-badge&logo=playwright)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](#)
[![Status: Gacor](https://img.shields.io/badge/Status-Gacor_Parah-ff69b4.svg?style=for-the-badge)](#)

</div>

---

## 🌟 *What is this?*
Capek *scroll-scroll* FB Marketplace buat nyari harga pasaran HP atau barang inceran? Takut kemahalan atau jual kemurahan? Santai *bre*, **FB Marketplace Analyst** hadir buat otomatisin semuanya! 

Aplikasi ini bakal ngerayap (nge-*scrape*) ke seluruh pelosok FB Marketplace, kumpulin harganya, buang harga *troll* (kayak harga "Rp 123" atau "Gratis"), dan nampilin **Rata-rata, Median, sampe Rekomendasi Harga Jual** langsung di layar lo!

✨ **Aplikasi ini 100% jalan di Desktop dengan antarmuka (UI) super premium, mulus, dan *anti-ngelag*. Nggak perlu pusing baca kode, tinggal klik-klik doang kelar!**

> [!WARNING]
> **Khusus PC / Laptop (Windows OS)!** 💻
> Aplikasi ini dibangun dengan ekstensi `.bat` dan pustaka *desktop-native*. Oleh karena itu, aplikasi ini **TIDAK BISA** dijalankan di HP (Android/iOS) atau Tablet. Pastikan Anda membukanya melalui komputer atau laptop Windows!

---

## 🔥 Fitur *Killer* (Kenapa Lo Harus Pake Ini)

- ⚡ **Multi-Tab Pararel (Multitasking Bebas Hambatan)**: Bisa nge-riset POCO X8, iPhone 12, dan PS5 sekaligus dalam 3 tab berbeda tanpa bikin aplikasi nge-*crash*!
- 🎨 **10 Opsi Tema Profesional**: Bosen sama warna *Dark Mode* standar? Ganti ke *Dracula*, *Hacker Matrix*, *Soft Latte*, atau *Sunset Orange*! Ada 5 tema gelap dan 5 tema terang siap pakai!
- 🤖 **Auto-Scrape Tanpa Kepala (*Headless*)**: Proses nyari data jalan di *background*. FB lo tetep aman, dan lo bisa sambil nonton YouTube!
- 📊 **Anti Harga *Troll***: Mesin analisis otomatis ngebuang harga yang nggak masuk akal pake algoritma MAD (*Median Absolute Deviation*).
- 💡 **Rekomendasi Pintar**: Kasih tau lo harga jual "Cepat", "Seimbang", atau "Maksimal" biar barang lo cepet laku tanpa rugi!
- 💾 **Export ke CSV**: Mau olah data di Excel? Tinggal pencet "Simpan", langsung jadi file CSV!

---

## 🛠️ Cara Pemasangan (*Setup* Gampang Banget!)

Cuma butuh **Python 3.10+** (pastikan centang *Add to PATH* pas install). Sisanya? Serahin ke bot!

1. **Download/Clone** *repository* ini.
2. Klik 2x pada file `setup_and_run.bat`.
3. Tungguin bentar, dia bakal *install* semua *requirements* dan *browser engine* secara otomatis.
4. **BOOM!** Aplikasinya kebuka! 💥

> **💡 *Pro Tip*:** Buat penggunaan selanjutnya, nggak perlu setup lagi. Langsung aja klik 2x `run.bat` buat buka aplikasinya secara instan!

---

## 🎮 Cara Pakai (*How to Use*)

1. **Login FB Dulu**: Di pojok kanan atas, klik **"Login Facebook"**. Bakal muncul jendela Chrome. Login pake akun lo (cuma sekali doang, sesi bakal disimpen lokal di folder `.fb_session`, 100% aman!).
2. **Ketik Barang Inceran**: Di sebelah kiri, masukin barang yang pengen lo riset (misal: "iPhone 13 128GB").
3. **Pilih Lokasi & Filter**: Tulis kota (misal: "Surabaya") dan batas harga kalo butuh.
4. **Gas Analisa!**: Klik tombol **🔍 Analisa Harga**. Tungguin prosesnya kelar.
5. **Cek Hasil**: Di sebelah kanan, bakal muncul harga terendah, rata-rata, sama tabel barangnya. Kalo butuh *insight*, klik **💡 Beri Rekomendasi**!

---

## ⚙️ Arsitektur Direktori (*Clean AF*)
Biar nggak nyampah, strukturnya dibikin rapi banget:
```text
fb_marketplace_analyst/
├── run.bat              # 🚀 Klik ini buat buka aplikasi!
├── setup_and_run.bat    # 🛠️ Klik ini buat instalasi awal!
├── README.md            # 📖 Buku panduan super kece (You are here)
├── .gitignore           # 🛑 Biar FB Session gak ke-upload ke GitHub
└── src/                 # 🧠 Otak aplikasinya ada di dalam sini semua!
    ├── app.py           # Core UI & Logic
    ├── scraper.py       # Scraper Playwright
    ├── analysis.py      # Mesin Kalkulator Outlier
    └── r.txt            # Dependensi Python
```

---

<div align="center">
<i>Dibuat dengan ❤️ oleh <b>Rifendy Ardian</b> untuk Reseler se-Nusantara.</i><br>
<b>*Happy Cuan!* 💸✨</b>
</div>
