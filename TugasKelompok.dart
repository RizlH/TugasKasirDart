double hitungPersenDiskon(double nilaiTransaksi, bool member) {

  double diskon = 0;

  if (nilaiTransaksi >= 100000) {
    if (member == true) {
      diskon = 0.15;
    } 
    if (member == false) {
      diskon = 0.10;
    }
  }

  return diskon;
}

double hitungPotonganHarga(double diskon, double nilaiTransaksi) {

  double potonganHarga = nilaiTransaksi * diskon;

  if (potonganHarga > 25000) {
    potonganHarga = 25000;
  }

  return potonganHarga;
}

double hitungTotalBayar(double nilaiTransaksi, bool member) {

  double diskon = hitungPersenDiskon(nilaiTransaksi, member);
  double potonganHarga = hitungPotonganHarga(diskon, nilaiTransaksi);

  return nilaiTransaksi - potonganHarga;
}

void main() {
  print(hitungTotalBayar(80000, false));
  print(hitungTotalBayar(150000, false));
  print(hitungTotalBayar(150000, true));
  print(hitungTotalBayar(300000, true));
}