# Database

* datatbase
* jenis-jenis datatbase
* ERD datatbase
* datatbase

## What is?

sekumpulan data yang disimpan secara sistematis
tujuannya adalah untuk memudahkan penyimpanan, pengambila, pembaruan dan analisis data

## Jenis-jenis Database

* relational (sql)
  * menggunakan query sql
  * kompleks dengan relasi
  * Postgree mariadb
* no sql
  * Menggunakan document based storage
  * Flexsible tanpa skema tetap
  * Mongodb
* Database Khusus
  * time-series db (influxDB)
  * In-Memory DB (Redis, memcached)

## ERD

representasi dari struktur data suatu sistem atau database yang menghubungkan suatu entitas dengan entitas kaub beserta atributnya
Digunakan dalam perancangan database
Kardinalitas menunjukan berapa banyak entitas A dapat berelasi dengan entitas B dan sebaliknya

### jenis kardinalitas

tiga jenis utama kardinalitas

* one to one (1:1)
contoh: satu user mempunyai satu profile
* one to many (1:N)
satu kategori memiliki banyak prooduct
* many to many (M:N)
banyak product bisa dipasok oleh banyak supplier

<!-- |----------------------------|
|        product             |
|----------------------------|
|  string |  id_product | pk |
|----------------------------| -->

Membuat minitask erd untuk sistem perpustakaan
entitas terdiri dari buku, kategori, rak_buku,petugas, peminjam
tentukan relasi dan kardinalitas antara entitas
tentukan setiap atribut sintak

koda-b6-db1
