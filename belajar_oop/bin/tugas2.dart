// Class induk
class Hewan {
  String nama;

  Hewan(this.nama);

  void suara() {
    print('$nama mengeluarkan suara.');
  }
}

// Class anak
class Kucing extends Hewan {
  String jenisBulu;

  Kucing(String nama, this.jenisBulu) : super(nama);

  @override
  void suara() {
    print('$nama mengeong. Bulu: $jenisBulu');
  }
}

// Class RekeningBank dengan Encapsulation
class RekeningBank {
  double _saldo = 0.0;

  double get saldo => _saldo;

  void setor(double jumlah) {
    if (jumlah > 0) {
      _saldo += jumlah;
      print('Setor: Rp$jumlah, Saldo sekarang: Rp$_saldo');
    }
  }

  void tarik(double jumlah) {
    if (jumlah > 0 && jumlah <= _saldo) {
      _saldo -= jumlah;
      print('Tarik: Rp$jumlah, Saldo sekarang: Rp$_saldo');
    } else {
      print('Transaksi gagal. Saldo tidak cukup atau jumlah tidak valid.');
    }
  }
}

// Polymorphism: BangunDatar, Persegi, Segitiga
class BangunDatar {
  double hitungLuas() {
    return 0;
  }
}

class Persegi extends BangunDatar {
  double sisi;

  Persegi(this.sisi);

  @override
  double hitungLuas() => sisi * sisi;
}

class Segitiga extends BangunDatar {
  double alas, tinggi;

  Segitiga(this.alas, this.tinggi);

  @override
  double hitungLuas() => 0.5 * alas * tinggi;
}

// Abstraction: Bentuk dan Lingkaran
abstract class Bentuk {
  double hitungLuas();
}

class Lingkaran extends Bentuk {
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double hitungLuas() => 3.14 * jariJari * jariJari;
}

void main() {
  // Kucing
  var kucing = Kucing('Mimi', 'Pendek');
  kucing.suara();

  // RekeningBank
  var rekening = RekeningBank();
  rekening.setor(500000);
  rekening.tarik(200000);
  rekening.tarik(400000); // saldo tidak cukup

  // Bangun Datar
  var persegi = Persegi(4);
  var segitiga = Segitiga(3, 6);

  print('Luas Persegi: ${persegi.hitungLuas()}');
  print('Luas Segitiga: ${segitiga.hitungLuas()}');

  // Lingkaran
  var lingkaran = Lingkaran(7);
  print('Luas Lingkaran: ${lingkaran.hitungLuas()}');
}
