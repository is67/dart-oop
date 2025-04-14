import 'package:test/test.dart'; // Impor library test

void main() {
  test('Menambahkan dua angka', () {
    var result = 2 + 3; // Kode yang diuji
    expect(result, 5); // Mengharapkan hasilnya 5
  });

  test('Mengalikan dua angka', () {
    var result = 2 * 3; // Kode yang diuji
    expect(result, 6); // Mengharapkan hasilnya 6
  });
}
