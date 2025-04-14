// lib/models/mobil.dart
class Mobil {
  String? merk;
  String? model;
  int? tahun;

  Mobil(this.merk, this.model, this.tahun);

  void klakson() {
    print("Beep! Beep!");
  }
}