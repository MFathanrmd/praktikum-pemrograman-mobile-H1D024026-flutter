// Modul 1: Bahasa Pemrograman Dart
// Latihan 8: Penanganan Eksepsi (Exception Handling)
// Mahasiswa : M Fathan Ramdani
// NIM       : H1D024026
// Shift     : Awal G / Akhir C

void main() {
  print("=== Penanganan Eksepsi (Try-Catch) ===");

  // 1. Menangani tipe kesalahan spesifik menggunakan 'on UnsupportedError'
  try {
    print("Mencoba operasi pembagian integer dengan nol (5 ~/ 0):");
    int hasilBagiNol = 5 ~/ 0;
    print("Hasil: $hasilBagiNol");
  } on UnsupportedError {
    print("Pesan Exception: Operasi tidak didukung (division by zero)");
  }

  // 2. Menangani error secara umum dengan parameter catch (e)
  try {
    print("\nMencoba operasi pembagian nol kedua:");
    int a = 5 ~/ 0;
    print(a);
  } catch (e) {
    print("Error tertangkap pada blok catch: $e");
  } finally {
    print("Blok finally: Bagian ini selalu dijalankan.");
  }
}
