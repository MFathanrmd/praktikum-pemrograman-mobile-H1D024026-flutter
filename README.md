# Laporan Praktikum Pemrograman Mobile
**Nama** : M Fathan Ramdani  
**NIM** : H1D024026  
**Shift** : Awal G / Akhir C  
**Praktikum** : Pemrograman Mobile  

---

## 📝 Tugas Pertemuan 1
**Tanggal**: Selasa, 20 Oktober 2026  
**Topik**: Pengenalan Dasar Bahasa Pemrograman Dart & Pembuatan Aplikasi Pertama Flutter (Hello World)

![Tugas Pertemuan 1](docs/tugas-1.png)

### Laporan & Kesimpulan Praktikum:
Pada praktikum pertemuan pertama ini, saya mempelajari konsep dasar bahasa pemrograman Dart serta pengenalan awal terhadap framework Flutter. Dart menjadi fondasi utama dalam pengembangan aplikasi di Flutter karena menawarkan performa tinggi, fitur keamanan tipe data (*type safety*), dukungan *null safety*, serta sintaksis bergaya C/Java yang mudah dipahami oleh mahasiswa.

Beberapa materi yang berhasil saya pelajari, eksplorasi, dan implementasikan pada pertemuan ini antara lain:

1. **Pemahaman Dasar Bahasa Pemrograman Dart (Modul 1):**
   - **Tipe Data Fundamental**: Mempelajari dan menguji penggunaan tipe data bilangan bulat (`int`), bilangan pecahan (`double`), teks atau karakter (`String`), serta nilai kebenaran boolean (`bool`). Selain itu, saya juga mencoba penggunaan kata kunci `var` untuk penentuan tipe data secara otomatis (*type inference*).
   - **Operasi Aritmatika & Logika**: Mengimplementasikan perhitungan penjumlahan (`+`), pengurangan (`-`), perkalian (`*`), pembagian (`/`), dan sisa bagi (`%`), serta operasi perbandingan dan logika (`>`, `<`, `==`, `&&`).
   - **Struktur Kontrol**: Menerapkan percabangan bersyarat menggunakan `if-else` untuk penentuan alur program, serta perulangan berulang menggunakan `for loop` dan `while loop`.
   - **Fungsi (Functions)**: Membuat fungsi modular yang menerima parameter dan mengembalikan nilai (*return value*), seperti fungsi perhitungan aritmatika dan fungsi pencetak pesan.
   - **Pemrograman Berorientasi Objek (OOP)**: Merancang sebuah kelas (`Mahasiswa`) lengkap dengan atribut nama, NIM, usia, shift, *constructor*, serta *method* interaktif.
   - **Pustaka Bawaan (Import)**: Mengimpor dan memanfaatkan library `dart:math` untuk membangkitkan bilangan acak dan menghitung nilai pangkat serta akar kuadrat.
   - **Penanganan Kesalahan (Exception Handling)**: Mengamankan alur program dari *runtime error* dengan blok `try ... on ... catch ... finally`.
   - **Pemrograman Asinkronus (Async-Await)**: Memahami konsep eksekusi *non-blocking* menggunakan `Future`, `async`, dan `await`.

2. **Pengenalan Framework Flutter & Pembuatan Aplikasi Hello World:**
   - Memahami struktur direktori proyek Flutter, fungsi `main()` sebagai titik masuk, dan pemanggilan `runApp()`.
   - Menerapkan konsep *declarative UI* dengan hierarki *widget tree*: `MaterialApp` → `Scaffold` → `AppBar` → `Center` → `Text('Hello World')`.
   - Mengenal dan memanfaatkan fitur *Hot Reload* dan *Hot Restart* untuk mempercepat proses *development*.

---

## 📝 Tugas Pertemuan 2
**Tanggal**: Selasa, 27 Oktober 2026  
**Topik**: Tata Letak Antarmuka (*Layouting Widget*), Pengelolaan Formulir Produk, dan *ListView*

![Tugas Pertemuan 2](docs/tugas-2.png)

### Laporan & Kesimpulan Praktikum:
Pada praktikum pertemuan kedua ini, saya mendalami perancangan antarmuka pengguna (UI) pada framework Flutter secara lebih komprehensif. Fokus utama pembelajaran adalah memahami mekanisme penataan tata letak (*layouting*), pembuatan formulir interaktif untuk menerima masukan data pengguna (*form handling*), teknik pengiriman data antar-halaman (*passing data*), serta penyajian kumpulan data menggunakan komponen daftar (*list view*).

Poin-poin penting yang telah dipelajari dan diimplementasikan meliputi:

1. **Hierarki dan Tata Letak Linier (Column & Row):**
   - **Widget Column**: Menyusun elemen secara vertikal, diimplementasikan pada `lib/column_widget.dart`.
   - **Widget Row**: Mengatur elemen berjajar secara horizontal, diterapkan pada `lib/row_widget.dart`.
   - Memahami `MainAxisAlignment` dan `CrossAxisAlignment` untuk perataan presisi.

2. **Perancangan Formulir Interaktif (*Form Handling*):**
   - Membangun halaman form `ProdukForm` sebagai `StatefulWidget` dengan `TextField` dan `TextEditingController` untuk Kode Produk, Nama Produk, dan Harga.

3. **Navigasi Layar dan Pengiriman Parameter (*Passing Data*):**
   - Navigasi dinamis menggunakan `Navigator.push()` dengan `MaterialPageRoute`.
   - Mengirim data form ke `ProdukDetail` melalui parameter konstruktor dan menampilkannya dalam `Card`.

4. **Penyajian Data Berulang (*ListView & Card*):**
   - Mengimplementasikan `ListView` di `ProdukPage` dengan kombinasi `Card` dan `ListTile` untuk katalog produk yang rapi dan *scrollable*.

---

## 📝 Tugas Pertemuan 3
**Tanggal**: Selasa, 3 November 2026  
**Topik**: *Routes*, Navigasi Samping (*Drawer Sidemenu*), Sistem Login, dan Manajemen Sesi Lokal (*SharedPreferences*)

![Tugas Pertemuan 3](docs/tugas-3.png)

### Laporan & Kesimpulan Praktikum:
Pada praktikum pertemuan ketiga ini, saya mempelajari cara membangun sistem autentikasi login sederhana, navigasi multi-halaman menggunakan *named routes*, pembuatan menu navigasi samping (*Drawer*), serta penyimpanan data sesi pengguna secara persisten di penyimpanan lokal perangkat menggunakan library `shared_preferences`.

Poin-poin penting yang berhasil saya pelajari dan implementasikan:

1. **Manajemen Sesi Lokal dengan `shared_preferences`:**
   - Menambahkan dependensi `shared_preferences: ^2.0.17` pada `pubspec.yaml`.
   - Membuat fungsi `_saveUsername()` pada `LoginPage` untuk menyimpan nilai username ke penyimpanan lokal menggunakan `SharedPreferences.getInstance()` dan metode `setString()`.
   - Membuat fungsi `_loadUsername()` pada `HomePage` untuk memuat kembali nilai username yang telah tersimpan menggunakan `getString()`, sehingga data sesi tetap persisten meski aplikasi dijalankan ulang.

2. **Sistem Autentikasi Login (`login_page.dart`):**
   - Membangun halaman login sebagai `StatefulWidget` dengan dua `TextField` (Username & Password) beserta `TextEditingController` masing-masing.
   - Mengimplementasikan tiga fungsi utama: `_saveUsername()` untuk penyimpanan lokal, `_showInput()` untuk menampilkan widget form input, dan `_showDialog()` untuk menampilkan `AlertDialog` respons.
   - Logika validasi: jika input username dan password bernilai `'admin'`, tampilkan dialog berhasil lalu navigasi ke `HomePage` menggunakan `Navigator.pushReplacement()`; jika salah, tampilkan pesan gagal tanpa berpindah halaman.

3. **Halaman Beranda dengan Pembacaan Sesi (`home_page.dart`):**
   - `HomePage` memanggil `_loadUsername()` pada `initState()` untuk membaca username dari `SharedPreferences` secara reaktif, lalu menampilkan pesan sambutan yang dipersonalisasi kepada pengguna.
   - Halaman ini juga menyematkan `Drawer` yang diarahkan ke komponen `Sidemenu`.

4. **Menu Navigasi Samping (`sidemenu.dart`):**
   - Membuat komponen `Drawer` yang menampilkan header bergradasi biru berisi nama dan NIM mahasiswa.
   - Menyediakan dua `ListTile` sebagai menu: **Home** (kembali ke `HomePage`) dan **About** (navigasi ke `AboutPage`).

5. **Halaman About (`about_page.dart`):**
   - Membuat halaman informasi profil mahasiswa yang menampilkan Nama (`M Fathan Ramdani`), NIM (`H1D024026`), Shift, dan keterangan praktikum dalam tampilan `Card` yang rapi.

6. **Pembaruan `main.dart` & Routing:**
   - Mengubah `home` di `MaterialApp` dari `ProdukPage` menjadi `const LoginPage()`, sehingga alur aplikasi selalu dimulai dari halaman login.
   - Mendaftarkan semua rute baru: `/login`, `/home`, `/about` di dalam `routes`.

---

## 📁 Struktur Direktori Proyek

```text
├── dart_dasar/                           # Kumpulan latihan dasar Dart (Modul 1)
│   ├── 01_hello_world.dart
│   ├── 02_tipe_data.dart
│   ├── 03_operasi_matematika_logika.dart
│   ├── 04_struktur_kontrol.dart
│   ├── 05_fungsi.dart
│   ├── 06_kelas_dan_objek.dart
│   ├── 07_import_library.dart
│   ├── 08_eksepsi.dart
│   └── 09_async_await.dart
├── docs/
│   ├── tugas-1.png                       # Screenshot Hello World (Pertemuan 1)
│   ├── tugas-2.png                       # Screenshot Column & Row Widget (Pertemuan 2)
│   └── tugas-3.png                       # Screenshot Login & Home Page (Pertemuan 3)
├── lib/
│   ├── ui/
│   │   ├── produk_detail.dart            # Layar rincian data produk
│   │   ├── produk_form.dart              # Layar formulir input produk
│   │   └── produk_page.dart              # Layar katalog list produk
│   ├── about_page.dart                   # Halaman About (profil mahasiswa)
│   ├── column_widget.dart                # Widget layout Column
│   ├── hello_world.dart                  # Widget Hello World
│   ├── home_page.dart                    # Halaman Home (memuat sesi username)
│   ├── login_page.dart                   # Halaman Login (SharedPreferences & validasi)
│   ├── main.dart                         # Entry point & routing aplikasi
│   ├── row_widget.dart                   # Widget layout Row
│   └── sidemenu.dart                     # Komponen Drawer navigasi samping
├── test/
│   ├── modul2_test.dart                  # Widget test modul 2
│   ├── modul3_test.dart                  # Widget test login, about modul 3
│   └── widget_test.dart
├── pubspec.yaml                          # Dependensi (shared_preferences: ^2.0.17)
└── README.md                             # Laporan dokumentasi praktikum
```

---

## 🚀 Panduan Menjalankan Program

### 1. Menjalankan Kode Latihan Dart (Modul 1)
```bash
dart run dart_dasar/01_hello_world.dart
dart run dart_dasar/06_kelas_dan_objek.dart
```

### 2. Menjalankan Aplikasi Flutter
Pastikan SDK Flutter sudah terpasang:
1. Unduh seluruh dependensi proyek:
   ```bash
   flutter pub get
   ```
2. Jalankan aplikasi (mulai dari halaman Login):
   ```bash
   flutter run -d chrome
   ```
3. Gunakan kredensial berikut untuk login:
   - **Username**: `admin`
   - **Password**: `admin`
