// lib/models/siswa.dart
class Siswa {
  String? nama;
  int? umur;

  Siswa(this.nama, this.umur);

  void belajar() {
    print("$nama sedang belajar.");
  }
}