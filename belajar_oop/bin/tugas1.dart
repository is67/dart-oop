// File: tugas1.dart

// 1. Class Mobil
class Mobil {
  String? merk;
  String? model;
  int? tahun;

  void cetakInfo() {
    print("Mobil: $merk $model ($tahun)");
  }
}

void tugasMobil() {
  var mobil1 = Mobil();
  mobil1.merk = "Toyota";
  mobil1.model = "Avanza";
  mobil1.tahun = 2022;
  mobil1.cetakInfo();
}

// 2. Class Mahasiswa
class Mahasiswa {
  String nama;
  String nim;

  Mahasiswa({this.nama = "Nama Default", this.nim = "NIM000000"});

  void cetakInfo() {
    print("Mahasiswa: $nama, NIM: $nim");
  }
}

void tugasMahasiswa() {
  var mhs1 = Mahasiswa();
  mhs1.cetakInfo();
}

// 3. Class Buku dengan Constructor berparameter
class Buku {
  String judul;
  String pengarang;

  Buku(this.judul, this.pengarang);

  void cetakInfo() {
    print("Buku: \"$judul\" oleh $pengarang");
  }
}

void tugasBuku() {
  var buku1 = Buku("Belajar Dart", "Ahmad Rois");
  buku1.cetakInfo();
}

// 4. Class Segitiga dengan Named Constructor
class Segitiga {
  double alas;
  double tinggi;
  String jenis;

  Segitiga.samaSisi() : alas = 10, tinggi = 8.7, jenis = "Sama Sisi";

  Segitiga.sikuSiku() : alas = 6, tinggi = 8, jenis = "Siku-siku";

  void cetakInfo() {
    print("Segitiga $jenis: alas = $alas, tinggi = $tinggi");
  }
}

void tugasSegitiga() {
  var segitiga1 = Segitiga.samaSisi();
  var segitiga2 = Segitiga.sikuSiku();
  segitiga1.cetakInfo();
  segitiga2.cetakInfo();
}

// 5. Class Warna dengan Constant Constructor
class Warna {
  final int red;
  final int green;
  final int blue;

  const Warna(this.red, this.green, this.blue);

  void cetakInfo() {
    print("Warna: RGB($red, $green, $blue)");
  }
}

void tugasWarna() {
  const warna1 = Warna(255, 0, 0); // Merah
  const warna2 = Warna(0, 255, 0); // Hijau
  const warna3 = Warna(0, 0, 255); // Biru

  warna1.cetakInfo();
  warna2.cetakInfo();
  warna3.cetakInfo();
}

// Main untuk menjalankan semua tugas
void main() {
  print("\nTugas Mobil:");
  tugasMobil();

  print("\nTugas Mahasiswa:");
  tugasMahasiswa();

  print("\nTugas Buku:");
  tugasBuku();

  print("\nTugas Segitiga:");
  tugasSegitiga();

  print("\nTugas Warna:");
  tugasWarna();
}
