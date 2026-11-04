# Jarkom-Modul-4-2026-K-42

## Anggota

| | Nama | NRP |
| --- | --- | --- |
| 1 | Azita Zahwa Zahida Asmoro | 5027251058 |
| 2 | I Made Gyanendra Anand Wisnawa | 5027251072 |

## Laporan

[LINK SPREADSHEET]
[Spreadsheet_Perhitungan_IP_Address](https://docs.google.com/spreadsheets/d/1KNO8pKr-fQ73o9m3PeI0tCLzYzH6t3Ab/edit?usp=sharing&ouid=114067059484823198071&rtpof=true&sd=true)

### CPT - VLSM

1. Berikut merupakan topologi yang dibuat untuk Cisco Packet Tracer.

    ![Topologi_CPT](assets/Topologi_CPT.png)

    Setelah dilakukan analisa terhadap topologi tersebut, dapat disimpulkan terdapat **25 subnet** yang perlu dilakukan.

2. Total Perhitungan Subnet

    Total subnet yang digunakan adalah **23 subnet** dimana total IP yang digunakan adalah **2815 IP**. Nilai IP tersebut menghasilkan subnet /20 yang memiliki IP *available* 4094 IP.

3. Static Routing


### GNS - CIDR

1. Topologi pada GNS3

    ![alt text](assets/Topologi_GNS.png)

2. Perhitungan IP (Subnetting)

3. Perhitungan IP dan Penggabungannya

4. Konfigurasi & Routing
Untuk melakukan konfigurasi dan routing pada topologi tersebut, cukup masukkan script berdasarkan node/routernya yang bisa dilihat di dalam `semua node.sh` dan `semua router.sh` yang berisi settingan ip dan rute-rutenya berdasarkan hasil dari perhitungan IP yang dimasukkan ke dalam konfigurasi nodenya.

5. Testing Koneksi (Ping)
Untuk testing koneksi ini kita cukup untuk melakukan pengujian apakah node tersebut dapat ping `8.8.8.8`, antar node, dan `google.com` (untuk mengecek apakah terhubung ke internet).

Pada Node Mika:
```
ping 8.8.8.8
ping 192.232.15.2 #IP Chisa
ping google.com
```

![alt text](/assets/testingMika.png)

Kita juga testing lagi ke beberapa node lain untuk memastikan.

Pada Node Yasuo:
```
ping 8.8.8.8
ping 192.232.8.2 #IP Masayuki
ping google.com
```

![alt text](/assets/testingYasuo.png)

Pada Node Lain:
```
ping 8.8.8.8
ping 192.232.0.2 #IP Karl
ping google.com
```

![alt text](/assets/testingLain.png)

Dengan demikian, semua node sudah terhubung ke masing-masing dan dapat ping 8.8.8.8 serta google.com (bukti tersambung ke internet).