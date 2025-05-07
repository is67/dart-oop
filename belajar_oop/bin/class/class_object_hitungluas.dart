class PersegiPanjang {
  double? panjang;
  double? lebar;

  double area() {
    return panjang! * lebar!;
  }
}

void main() {
  PersegiPanjang persegiPanjang = PersegiPanjang();
  persegiPanjang.panjang = 40;
  persegiPanjang.lebar = 5;
  print("Luas Persegi Panjang adalah ${persegiPanjang.area()}.");
}
