// Modul 1: Bahasa Pemrograman Dart
// Latihan 5: Pembuatan dan Pemanggilan Fungsi
// Mahasiswa : M Fathan Ramdani
// NIM       : H1D024026
// Shift     : Awal G / Akhir C

// Fungsi penjumlahan dengan parameter dan nilai kembalian int
int tambah(int a, int b) {
  return a + b;
}

// Fungsi perkalian
int kali(int a, int b) {
  return a * b;
}

// Fungsi salam
void sapaMahasiswa(String nama, String nim) {
  print("Halo, saya $nama dengan NIM $nim siap mengikuti praktikum mobile!");
}

void main() {
  print("=== Output Pemanggilan Fungsi ===");
  int hasil1 = tambah(3, 7);
  int hasil2 = kali(4, 5);

  print("Hasil penjumlahan (3 + 7): $hasil1");
  print("Hasil perkalian (4 * 5): $hasil2");

  sapaMahasiswa("M Fathan Ramdani", "H1D024026");
}
