// Modul 1: Bahasa Pemrograman Dart
// Latihan 7: Penggunaan Pernyataan Import (Pustaka dart:math)
// Mahasiswa : M Fathan Ramdani
// NIM       : H1D024026
// Shift     : Awal G / Akhir C

import 'dart:math';

void main() {
  print("=== Output Penggunaan Library dart:math ===");

  // Menghasilkan bilangan acak antara 0 - 9
  int acak = Random().nextInt(10);
  print("Angka acak dari sistem (0-9): $acak");

  // Perhitungan pangkat dan akar
  double pangkat = pow(3, 4).toDouble();
  double akar = sqrt(81);

  print("3 pangkat 4 = $pangkat");
  print("Akar kuadrat dari 81 = $akar");
  print("Nilai Konstanta Pi = $pi");
}
