# Perhitungan Diskon Belanja

## Anggota Kelompok

* Rizal Hermawan
* Dias Mayri


## Tentang Program

Program ini digunakan untuk menghitung total pembayaran setelah pelanggan mendapatkan diskon.

Diskon ditentukan berdasarkan jumlah belanja dan status membership pelanggan.

### Aturan Diskon

* Belanja kurang dari Rp100.000 → tidak mendapat diskon.
* Belanja minimal Rp100.000 dan bukan member → diskon 10%.
* Belanja minimal Rp100.000 dan member → diskon 15%.
* Potongan diskon maksimal Rp25.000.

## Input dan Output

**Input:**

* `total` → untuk menentukan total jumlah belanja.
* `member` → status membership jika member berarti true jika bukan member berarti false.

**Output:**

* Total pembayaran setelah dikurangi diskon.

## Alur Program

```text
Total Belanja
      ↓
Cek apakah >= Rp100.000
      ↓
    Ya
      ↓
Cek status member
   ↙       ↘
Member   Non-member
 15%        10%
   ↘       ↙
  Hitung Potongan
      ↓
Maksimal Rp25.000
      ↓
Total Belanja - Potongan
      ↓
Total Bayar
```

Kalau belanja kurang dari Rp.100.000 berarti pelanggan tidak mendapatkan diskon, karena diskon hanya untuk total belanja diatas Rp.100.000.

## Source Code

```dart
double hitungTotalBayar(double total, bool member) {
  double diskon = 0;

  if (total >= 100000) {
    diskon = member ? 0.15 : 0.10;
  }

  double potongan = total * diskon;

  if (potongan > 25000) {
    potongan = 25000;
  }

  return total - potongan;
}

void main() {
  print("80rb non member: ${hitungTotalBayar(80000, false)}");
  print("150rb non member: ${hitungTotalBayar(150000, false)}");
  print("150rb member: ${hitungTotalBayar(150000, true)}");
  print("300rb member: ${hitungTotalBayar(300000, true)}");
}
```

## Hasil Pengujian

| Total Belanja | Member | Diskon |   Total Bayar |
| ------------: | :----: | -----: | ------------: |
|      Rp80.000 |  Tidak |     0% |  **Rp80.000** |
|     Rp150.000 |  Tidak |    10% | **Rp135.000** |
|     Rp150.000 |   Ya   |    15% | **Rp127.500** |
|     Rp300.000 |   Ya   |   15%* | **Rp275.000** |

`*` Pada belanja Rp300.000, diskon 15% sebenarnya mendapatkan potongan Rp45.000. Tapi karena dibatasi potongan maksimal Rp.25.000, jadi pelanggan hanya mendapatkan potongan sebesar Rp.25.000.

## Kesimpulan

Program ini menggunakan kondisi sederhana untuk menentukan diskon berdasarkan total belanja dan status membership. Setelah diskon dihitung, program memastikan potongannya tidak lebih dari Rp25.000, kemudian mengurangi potongan tersebut dari total belanja untuk mendapatkan jumlah yang harus dibayar.