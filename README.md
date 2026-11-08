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

    Cara melakukan routing adalah dengan melihat bagaimana jalur dari satu subnet ke subnet yang lainnya. Untuk detail routing per routernya ada pada file berikut:

    [Routing semua route](ip-routings/CPT/ip-route.txt)

### GNS - CIDR

1. Topologi pada GNS3

    ![alt text](assets/Topologi_GNS.png)

2. Perhitungan IP (Subnetting)

    Pada GNS3 - CIDR, perhitungan IP dilakukan hampir mirip dengan cara melakukan perhitungan IP pada VLSM. Langkah pertama yang harus dilakukan adalah menghitung jumlah host yang diperlukan kemudian menghitung nilai netmask dan blok yang akan dibutuhkan.

    Perhitungan lebih detail dapat dilihat pada link spreadsheet yang telah diberikan di awal laporan atau lihat pada tangkapan layar berikut:

    ![alt text](assets/pembagian-IP-CIDR.png)

3. Perhitungan IP dan Penggabungannya

    Kemudian untuk penggabungan IP Address bagi GNS3 ini dilakukan dengan menghitung jumlah **hop** yang dimiliki oleh antar subnet. kemudian setiap subnet digabung berdasarkan hop yang terdekat.

    Berikut tabel pembagiannya:

    ![alt text](assets/LAMA-tabel-1-sampe-6.png)

    ![alt text](assets/LAMA-tabel-7-sampe-11.png)

    ![alt text](assets/LAMA-tabel-12-sampe-17.png)

    Kemudian berikut untuk visualisasi penggabungan subnettingnya:

    - Tahap 1
    ![alt text](assets/subnetting-B.jpeg)

    - Tahap 2
    ![alt text](assets/subnetting-C.jpeg)

    - Tahap 3
    ![alt text](assets/subnetting-D.jpeg)

    - Tahap 4
    ![alt text](assets/subnetting-E.jpeg)

    - Tahap 5
    ![alt text](assets/subnetting-F.jpeg)

    - Tahap 6
    ![alt text](assets/subnetting-G.jpeg)

    - Tahap 7
    ![alt text](assets/subnetting-H.jpeg)

    - Tahap 8
    ![alt text](assets/subnetting-I.jpeg)

    - Tahap 9
    ![alt text](assets/subnetting-J.jpeg)

    - Tahap 10
    ![alt text](assets/subnetting-K.jpeg)

    - Tahap 11
    ![alt text](assets/subnetting-L.jpeg)

    - Tahap 12
    ![alt text](assets/subnetting-M.jpeg)

    - Tahap 13
    ![alt text](assets/subnetting-N.jpeg)

    - Tahap 14
    ![alt text](assets/subnetting-O.jpeg)

    - Tahap 15
    ![alt text](assets/subnetting-P.jpeg)

    - Tahap 17
    ![alt text](assets/subnetting-Q.jpeg)

    - Tahap 18
    ![alt text](assets/subnetting-R.jpeg)

    Berdasarkan perhitungan tersebut, netmask yang dihasilkan adalah netmask `/11`.

4. Konfigurasi & Routing

    Untuk melakukan konfigurasi dan routing pada topologi tersebut, cukup masukkan script berdasarkan node/routernya yang bisa dilihat di dalam `semua node.sh` dan `semua router.sh` yang berisi settingan ip dan rute-rutenya berdasarkan hasil dari perhitungan IP yang dimasukkan ke dalam konfigurasi nodenya.

5. Testing Koneksi (Ping)

    Untuk testing koneksi ini kita cukup untuk melakukan pengujian apakah node tersebut dapat ping `8.8.8.8`, antar node, dan `google.com` (untuk mengecek apakah terhubung ke internet).

    Pada Node Mika:

    ```bash
    ping 8.8.8.8
    ping 192.232.15.2 #IP Chisa
    ping google.com
    ```

    ![alt text](/assets/testingMika.png)

    Kita juga testing lagi ke beberapa node lain untuk memastikan.

    Pada Node Yasuo:

    ```bash
    ping 8.8.8.8
    ping 192.232.8.2 #IP Masayuki
    ping google.com
    ```

    ![alt text](/assets/testingYasuo.png)

    Pada Node Lain:

    ```bash
    ping 8.8.8.8
    ping 192.232.0.2 #IP Karl
    ping google.com
    ```

    ![alt text](/assets/testingLain.png)

    Dengan demikian, semua node sudah terhubung ke masing-masing dan dapat ping 8.8.8.8 serta google.com (bukti tersambung ke internet).

### Perbaikan

Ada beberapa perbaikan/revisi yang perlu dilaukan berdasarkan saran dari asisten penguji:

1. Menambahkan `ip route` untuk `8.8.8.8` agar semua node dapat terhubung ke Google.
2. Memperbaiki perhitungan untuk penggabungan IP CIDR agar tidak boros IP.

#### Penambahan ip `8.8.8.8`

Untuk membuat semua node terhubung ke Internet/Google, maka router yang terhubung ke  harus dikonfigurasi terlebih dulu. Masukkan perintah dibawah ini untuk membuat router yang terhubung ke NAT, yakni `Cyberia` dapat terkoneksi dengan Google.

```bash
interface fa0/0
ip address 192.168.100.1 255.255.255.252
no shutdown
exit
no ip route 0.0.0.0 0.0.0.0 192.232.16.58
ip route 0.0.0.0 0.0.0.0 192.168.100.2
ip route 192.232.0.0 255.255.224.0 192.232.16.58
```

Selanjutnya, pada router setelahnya, yakni `Wired`, masukkan pula perintah untuk aturan pengiriman packets.

```bash
ip route 0.0.0.0 0.0.0.0 192.232.16.57
```

#### Perhitungan penggabungan IP CIDR

Dalam penggabungan IP CIDR, apabila netmask yang digabung dirasa cukup menampung host, maka tingkat netmask tidak perlu diubah. Berikut adalah perbaikan tabel penggabungan netmask pada topologi GNS3.

![alt text](assets/BARU-tabel-1-sampe-6.png)

![alt text](assets/BARU-tabel-7-sampe-11.png)

![alt text](assets/BARU-tabel-12-sampe-17.png)

Dari hasil perhitungan tersebut, didapatkan hasil netmask untuk perhitungan dari CIDR adalah `/19`.