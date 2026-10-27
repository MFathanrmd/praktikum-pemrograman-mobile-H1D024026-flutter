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
   - **Pemrograman Berorientasi Objek (OOP)**: Merancang sebuah kelas (`Mahasiswa`) lengkap dengan atribut nama, NIM, usia, shift, *constructor*, serta *method* interaktif seperti `perkenalan()` dan `ikutiPraktikum()`.
   - **Pustaka Bawaan (Import)**: Mengimpor dan memanfaatkan library `dart:math` untuk membangkitkan bilangan acak (`Random().nextInt()`), serta menghitung nilai kuadrat dan akar kuadrat.
   - **Penanganan Kesalahan (Exception Handling)**: Mengamankan alur program dari *runtime error* dengan menggunakan blok `try ... on UnsupportedError` dan `try ... catch(e) ... finally`.
   - **Pemrograman Asinkronus (Async-Await)**: Memahami konsep eksekusi *non-blocking* menggunakan `Future`, `async`, dan `await` (mensimulasikan proses unduh data berdurasi waktu tertentu dengan `Future.delayed`).

2. **Pengenalan Framework Flutter & Pembuatan Aplikasi Hello World:**
   - Memahami struktur direktori proyek Flutter standar (folder `lib/` sebagai lokasi utama kode sumber Dart, file `pubspec.yaml` untuk manajemen dependensi dan aset, serta folder platform pendukung seperti `android/`, `ios/`, dan `web/`).
   - Memahami fungsi `main()` sebagai titik masuk (*entry point*) dan pemanggilan `runApp()` untuk menginisialisasi aplikasi.
   - Menerapkan konsep *declarative UI* dengan hierarki *widget tree*:
     - `StatelessWidget`: Digunakan sebagai kelas pembungkus komponen yang bersifat statis dan tidak mengalami perubahan status secara internal.
     - `MaterialApp`: Widget tingkat atas (*root widget*) yang menyediakan tema dan konfigurasi desain Material Design.
     - `Scaffold`: Struktur dasar tata letak layar aplikasi yang menyediakan slot untuk `AppBar` dan `body`.
     - `AppBar`: Menampilkan bilah judul navigasi di bagian atas dengan teks "Belajar Flutter".
     - `Center` dan `Text`: Menempatkan elemen teks "Hello World" tepat di bagian tengah layar perangkat.
   - Mengenal dan memanfaatkan fitur *Hot Reload* dan *Hot Restart*, yang sangat mempercepat proses *development* dan perbaikan tampilan antarmuka secara instan tanpa perlu mematikan aplikasi.

---

## 📝 Tugas Pertemuan 2
**Tanggal**: Selasa, 27 Oktober 2026  
**Topik**: Tata Letak Antarmuka (*Layouting Widget*), Pengelolaan Formulir Produk, dan *ListView*

![Tugas Pertemuan 2](docs/tugas-2.png)

### Laporan & Kesimpulan Praktikum:
Pada praktikum pertemuan kedua ini, saya mendalami perancangan antarmuka pengguna (UI) pada framework Flutter secara lebih komprehensif. Fokus utama pembelajaran adalah memahami mekanisme penataan tata letak (*layouting*), pembuatan formulir interaktif untuk menerima masukan data pengguna (*form handling*), teknik pengiriman data antar-halaman (*passing data*), serta penyajian kumpulan data menggunakan komponen daftar (*list view*).

Poin-poin penting yang telah dipelajari dan diimplementasikan meliputi:

1. **Hierarki dan Tata Letak Linier (Column & Row):**
   - **Widget Column**: Mampu menyusun elemen anak (*children*) secara vertikal dari atas ke bawah. Diimplementasikan pada `lib/column_widget.dart` untuk menampilkan deretan teks kolom secara berurutan.
   - **Widget Row**: Mampu mengatur elemen anak berjajar secara horizontal dari kiri ke kanan. Diterapkan pada `lib/row_widget.dart` untuk menampilkan teks baris menyamping.
   - Memahami perbedaan pemanfaatan sumbu `MainAxisAlignment` (sumbu utama) dan `CrossAxisAlignment` (sumbu silang) untuk mengatur perataan posisi widget secara presisi.

2. **Perancangan Formulir Interaktif (*Form Handling*):**
   - Membangun halaman form penambahan data produk pada `lib/ui/produk_form.dart` menggunakan `StatefulWidget` untuk menangani perubahan status antarmuka.
   - Menggunakan widget `TextField` dengan dekorasi `InputDecoration` untuk menyediakan kolom isian Kode Produk, Nama Produk, dan Harga Produk.
   - Mengintegrasikan `TextEditingController` (`_kodeProdukController`, `_namaProdukController`, `_hargaProdukController`) agar aplikasi dapat mengambil dan memproses teks yang diinputkan oleh pengguna secara real-time.
   - Menerapkan tipe input numerik melalui properti `keyboardType: TextInputType.number` pada kolom harga produk guna memastikan kenyamanan input data.

3. **Navigasi Layar dan Pengiriman Parameter (*Passing Data*):**
   - Mengatur aksi tombol simpan (`ElevatedButton`) untuk berpindah layar secara dinamis menggunakan `Navigator.of(context).push()`.
   - Mengirimkan data nilai dari form ke halaman tujuan rincian produk (`lib/ui/produk_detail.dart`) melalui parameter konstruktor `ProdukDetail(kodeProduk, namaProduk, hargaProduk)`.
   - Menampilkan kembali nilai data produk yang telah diinputkan pengguna ke dalam kartu informasi (`Card`) yang rapi dan terstruktur.

4. **Penyajian Data Berulang (*ListView & Card*):**
   - Mengimplementasikan `ListView` pada `lib/ui/produk_page.dart` untuk menampilkan koleksi data barang secara dapat digulir (*scrollable*).
   - Memanfaatkan kombinasi widget `Card` dan `ListTile` lengkap dengan ikon visual, teks judul produk, dan subjudul harga sehingga menghasilkan tampilan katalog belanja yang bersih dan estetik.
   - Menyediakan tombol aksi penambahan produk (`IconButton` dengan ikon plus) pada `AppBar` untuk mempermudah navigasi langsung menuju halaman formulir produk.

---

## 📁 Struktur Direktori Proyek

```text
├── dart_dasar/                           # Kumpulan latihan dasar Dart (Modul 1)
│   ├── 01_hello_world.dart               # Program cetak teks Hello World Dart
│   ├── 02_tipe_data.dart                 # Demonstrasi tipe data int, double, String, bool, var
│   ├── 03_operasi_matematika_logika.dart # Operasi hitung aritmatika & relasi logika
│   ├── 04_struktur_kontrol.dart          # Percabangan if-else dan perulangan for / while
│   ├── 05_fungsi.dart                    # Definisi fungsi berparameter dan return value
│   ├── 06_kelas_dan_objek.dart           # Konsep OOP (Class Mahasiswa, Constructor, Method)
│   ├── 07_import_library.dart            # Penggunaan library dart:math untuk angka acak
│   ├── 08_eksepsi.dart                   # Penanganan error (try, on Exception, catch, finally)
│   └── 09_async_await.dart               # Pemrograman asinkronus dengan Future dan await
├── docs/
│   ├── tugas-1.png                       # Screenshot hasil running Hello World Flutter (Pertemuan 1)
│   └── tugas-2.png                       # Screenshot hasil running Column & Row Widget (Pertemuan 2)
├── lib/
│   ├── ui/
│   │   ├── produk_detail.dart            # Layar rincian data produk (passing data)
│   │   ├── produk_form.dart              # Layar formulir input produk interaktif
│   │   └── produk_page.dart              # Layar katalog list produk (ListView & Card)
│   ├── column_widget.dart                # Implementasi widget layout Column
│   ├── hello_world.dart                  # Widget StatelessWidget halaman Hello World
│   ├── main.dart                         # Titik masuk utama aplikasi Flutter (Routing & Theme)
│   └── row_widget.dart                   # Implementasi widget layout Row
├── test/
│   └── modul2_test.dart                  # Unit & Widget test pengujian komponen modul 2
├── pubspec.yaml                          # Berkas konfigurasi dependensi dan versi Flutter
└── README.md                             # Laporan dokumentasi praktikum
```

---

## 🚀 Panduan Menjalankan Program

### 1. Menjalankan Kode Latihan Dart (Modul 1)
Setiap berkas latihan Dart pada folder `dart_dasar/` dapat dijalankan langsung melalui terminal menggunakan perintah Dart SDK:
```bash
# Menjalankan program Hello World Dart
dart run dart_dasar/01_hello_world.dart

# Menjalankan latihan OOP Class Mahasiswa
dart run dart_dasar/06_kelas_dan_objek.dart
```

### 2. Menjalankan Aplikasi Flutter (Pertemuan 1 & 2)
Pastikan SDK Flutter sudah terpasang, lalu buka terminal pada direktori proyek:
1. Unduh seluruh dependensi proyek:
   ```bash
   flutter pub get
   ```
2. Menjalankan aplikasi pada browser Chrome atau emulator:
   ```bash
   flutter run -d chrome
   ```
