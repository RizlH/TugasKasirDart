# Perhitungan Diskon Belanja

**Anggota Kelompok**
* Rizal Hermawan
* Dias Mayri

## Requirement & Business Rule

* **BR-01** – Belanja minimal Rp100.000 mendapat diskon 10%.
* **BR-02** – Member mendapat tambahan diskon 5% (hanya jika BR-01 terpenuhi), jadi total 15%.
* **BR-03** – Total potongan maksimal Rp25.000.

## Input, Output, Abstraction

* **Input** – `nilaiTransaksi` (double), `member` (bool)
* **Output** – total bayar (double)
* **Abstraction**
  * `hitungPersenDiskon(nilaiTransaksi, member)`
  * `hitungPotonganHarga(diskon, nilaiTransaksi)`
  * `hitungTotalBayar(nilaiTransaksi, member)`

## Decomposition

```text
hitungTotalBayar
├── hitungPersenDiskon     → cek minimal belanja & member (BR-01, BR-02)
├── hitungPotonganHarga    → hitung potongan & batas Rp25.000 (BR-03)
└── nilaiTransaksi - potonganHarga
```

## Flowchart

```text
                START
                  |
                  v
   Input nilaiTransaksi, member
                  |
                  v
      /-------------------------\
     < nilaiTransaksi >= 100000? > ---- Tidak ---> diskon = 0
      \-------------------------/                      |
                  |                                    |
                 Ya                                    |
                  v                                    |
          /---------------\                            |
         <  member == true? > --- Tidak -> diskon = 0.10
          \---------------/                            |
                  |                                    |
                 Ya                                    |
                  v                                    |
           diskon = 0.15                               |
                  |                                    |
                  +<-----------------------------------+
                  |
                  v
   potonganHarga = nilaiTransaksi * diskon
                  |
                  v
        /----------------------\
       < potonganHarga > 25000? > ---- Ya ---> potonganHarga = 25000
        \----------------------/                      |
                  |                                   |
                Tidak                                 |
                  |                                   |
                  +<----------------------------------+
                  |
                  v
   totalBayar = nilaiTransaksi - potonganHarga
                  |
                  v
          Tampilkan totalBayar
                  |
                  v
                 END
```

## Hasil Pengujian

* **Rp80.000, bukan member** → diskon 0%, potongan Rp0, bayar **Rp80.000**
* **Rp150.000, bukan member** → diskon 10%, potongan Rp15.000, bayar **Rp135.000**
* **Rp150.000, member** → diskon 15%, potongan Rp22.500, bayar **Rp127.500**
* **Rp300.000, member** → diskon 15% (Rp45.000), kena batas maksimal, potongan Rp25.000, bayar **Rp275.000**