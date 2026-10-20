// Modul 1: Bahasa Pemrograman Dart
// Latihan 9: Pemrograman Asinkronus (Async dan Await)
// Mahasiswa : M Fathan Ramdani
// NIM       : H1D024026
// Shift     : Awal G / Akhir C

Future<void> prosesData() async {
  // Menunggu eksekusi asinkron selama 2 detik
  await Future.delayed(const Duration(seconds: 2));
  print("Data berhasil diproses setelah delay 2 detik.");
}

Future<void> main() async {
  print("=== Simulasi Pemrosesan Asinkronus Dimulai ===");
  print("Memulai pemrosesan...");

  await prosesData();

  print("Pemrosesan selesai.");
  print("=== Alur Program Berjalan Normal ===");
}
