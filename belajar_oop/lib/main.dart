// lib/main.dart
import 'models/mobil.dart';
import 'models/hewan.dart';
import 'models/siswa.dart';
import 'controllers/mobil_controller.dart';
import 'controllers/siswa_controller.dart';

void main() {
  // Membuat objek Mobil
  Mobil mobil1 = Mobil("Toyota", "Corolla", 2020);
  MobilController mobilController = MobilController();
  mobilController.startMobil(mobil1);

  // Membuat objek Hewan
  Hewan hewan1 = Hewan("Kucing", "Mamalia");
  hewan1.suara();

  // Membuat objek Siswa
  Siswa siswa1 = Siswa("Ali", 15);
  SiswaController siswaController = SiswaController();
  siswaController.siswaBelajar(siswa1);
}
