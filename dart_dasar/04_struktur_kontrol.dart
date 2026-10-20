// Modul 1: Bahasa Pemrograman Dart
// Latihan 4: Percabangan (If-Else) dan Perulangan (For, While)
// Mahasiswa : M Fathan Ramdani
// NIM       : H1D024026
// Shift     : Awal G / Akhir C

void main() {
  print("=== 1. Pengujian Percabangan (If - Else) ===");
  int angka = 4;

  if (angka > 5) {
    print("Angka $angka lebih besar dari 5");
  } else {
    print("Angka $angka tidak lebih besar dari 5");
  }

  print("\n=== 2. Pengujian Perulangan For ===");
  for (int i = 0; i < 5; i++) {
    print("Iterasi ke-$i");
  }

  print("\n=== 3. Pengujian Perulangan While ===");
  int hitung = angka;
  while (hitung > 0) {
    print("Nilai angka hitung mundur: $hitung");
    hitung--;
  }
}
