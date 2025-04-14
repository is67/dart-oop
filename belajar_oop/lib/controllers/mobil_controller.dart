// lib/controllers/mobil_controller.dart
import '../models/mobil.dart';

class MobilController {
  void startMobil(Mobil mobil) {
    print("Mobil ${mobil.merk} sedang dinyalakan.");
    mobil.klakson();
  }
}