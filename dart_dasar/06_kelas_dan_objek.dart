// Modul 1: Bahasa Pemrograman Dart
// Latihan 6: Pemrograman Berorientasi Objek (Class dan Object)
// Mahasiswa : M Fathan Ramdani
// NIM       : H1D024026
// Shift     : Awal G / Akhir C

class Mahasiswa {
  String nama;
  String nim;
  int usia;
  String shift;

  // Constructor
  Mahasiswa(this.nama, this.nim, this.usia, this.shift);

  // Method perkenalan
  void perkenalan() {
    print("Halo, saya $nama dan saya berusia $usia tahun.");
    print("NIM: $nim | Shift: $shift");
  }

  // Method aktivitas praktikum
  void ikutiPraktikum(String topik) {
    print("$nama sedang mengerjakan praktikum topik: $topik");
  }
}

void main() {
  print("=== Output Pembuatan Objek Mahasiswa ===");
  Mahasiswa mhs = Mahasiswa(
    "M Fathan Ramdani",
    "H1D024026",
    20,
    "Awal G / Akhir C",
  );

  mhs.perkenalan();
  mhs.ikutiPraktikum("Pengenalan Flutter & Hello World");
}
