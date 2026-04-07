# Laporan Tugas Pertemuan 6: Aplikasi Daftar Buku & PDF Viewer Flutter

## Deskripsi Proyek
Proyek ini merupakan aplikasi perangkat bergerak (Mobile App) berbasis Android menggunakan Flutter. Aplikasi ini berfungsi sebagai purwarupa perpustakaan digital yang memuat daftar 10 buku referensi seputar pemrograman dan teknologi komputer. 

Pengguna dapat melihat detail masing-masing buku dan membaca pratinjau buku menggunakan fitur PDF Viewer yang terintegrasi di dalam aplikasi tanpa perlu menggunakan aplikasi pihak ketiga.

## Pekerjaan yang Telah Diselesaikan

Berikut adalah rincian fungsionalitas dan tugas yang telah diimplementasikan dalam proyek ini:

1. **Pengembangan Antarmuka (UI) & Daftar Buku**
   - Menambahkan data statis daftar buku hingga genap **10 buku** beserta rincian berupa judul, penulis, dan deskripsi singkat pada berkas `main.dart`.
   - Mengatur navigasi aplikasi layar ganda, mulai dari daftar utama hingga mem-passing data (*parameter*) ke halaman `BookDetailScreen`.

2. **Integrasi Fitur Pembaca PDF (PDF Viewer) di Mobile**
   - Mengimplementasikan *library* pihak ketiga `syncfusion_flutter_pdfviewer` ke dalam proyek.
   - Merancang antarmuka `ReadingBookFile` yang didedikasikan sepenuhnya untuk me-*render* URL atau path berkas PDF dengan mulus di perangkat Android.
   - Menyambungkan logika tombol interaktif **"Read the book"** di halaman detail agar otomatis transisi ke mode baca PDF buku yang ditekan.

3. *(Opsional/Tambahan)* **Konfigurasi Dukungan Web**
   - Menginisiasi konfigurasi pendukung pada platform Web (`flutter create .`) serta menyuntikkan *script* `pdf.js` pada `web/index.html` untuk memastikan *viewer* PDF tetap tidak *blank* dan dapat diuji lintas platform.

## Cara Menjalankan Proyek (Perangkat / Emulator Android)
1. Buka terminal di dalam *directory* proyek (`pertemuan6`).
2. Pastikan perangkat Android atau Emulator telah tersambung. Anda dapat memeriksanya dengan menjalankan:
   ```bash
   flutter devices
   ```
3. Jalankan perintah instalasi dan *build* berikut:
   ```bash
   flutter run
   ```
4. Tunggu proses kompilasi APK selesai dan aplikasi akan terbuka secara otomatis di layar perangkat seluler Anda.

---

## Screenshot Hasil Pengerjaan

> *(Sisipkan gambar atau tangkapan layar untuk setiap tampilan berikut di bawah teks)*

**1. Tampilan Utama (Daftar 10 Buku)**
`[ MASUKKAN_SCREENSHOT_LAYAR_UTAMA_DISINI ]`

**2. Halaman Detail Buku**
`[ MASUKKAN_SCREENSHOT_LAYAR_DETAIL_BUKU_DISINI ]`

**3. Tampilan Saat Fitur Pembaca Berjalan (PDF Viewer)**
`[ MASUKKAN_SCREENSHOT_LAYAR_KONTEN_PDF_DISINI ]`
