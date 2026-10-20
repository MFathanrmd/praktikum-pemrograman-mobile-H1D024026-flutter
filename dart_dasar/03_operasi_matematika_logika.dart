// Modul 1: Bahasa Pemrograman Dart
// Latihan 3: Operasi Aritmatika dan Operasi Perbandingan Logika
// Mahasiswa : M Fathan Ramdani
// NIM       : H1D024026
// Shift     : Awal G / Akhir C

void main() {
  int a = 12;
  int b = 4;

  // Operasi matematika
  int hasilTambah = a + b;
  int hasilKurang = a - b;
  int hasilKali = a * b;
  double hasilBagi = a / b;
  int hasilSisaBagi = a % b;

  // Operasi logika & perbandingan
  bool hasilLebihBesar = a > b;
  bool hasilSamaDengan = a == b;
  bool hasilLogikaAnd = (a > 5) && (b < 10);

  print("=== Operasi Matematika ===");
  print("Penjumlahan ($a + $b) : $hasilTambah");
  print("Pengurangan ($a - $b) : $hasilKurang");
  print("Perkalian   ($a * $b) : $hasilKali");
  print("Pembagian   ($a / $b) : $hasilBagi");
  print("Sisa Bagi   ($a % $b) : $hasilSisaBagi");

  print("\n=== Operasi Logika ===");
  print("Apakah $a > $b ? $hasilLebihBesar");
  print("Apakah $a == $b ? $hasilSamaDengan");
  print("Apakah ($a > 5 && $b < 10) ? $hasilLogikaAnd");
}
