double hitungTotalBayar(double total, bool member) {
  double diskon = 0;

  if (total >= 100000) {
    diskon = member ? 0.15 : 0.10;
  }

  double potongan = total * diskon;
  if (potongan > 25000) potongan = 25000;

  return total - potongan;
}

void main() {
  print("80rb non member: ${hitungTotalBayar(80000, false)}");
  print("150rb non member: ${hitungTotalBayar(150000, false)}");
  print("150rb member: ${hitungTotalBayar(150000, true)}");
  print("300rb member: ${hitungTotalBayar(300000, true)}");
}
