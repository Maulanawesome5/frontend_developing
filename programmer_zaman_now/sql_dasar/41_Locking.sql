SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database
SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products; SELECT * FROM admins; SELECT * FROM customers; SELECT * FROM sellers;
SELECT * FROM categories; SELECT * FROM orders; SELECT * FROM orders_detail;
SELECT * FROM guestbooks; SELECT * FROM wallet; SELECT * FROM wishlist;


-- My keyboard error. copy paste -> g, G, h, H, '_', "_"


-- Locking
-- merupakan proses mengunci data di DBMS
-- Proses mengunci data sangat penting dilakukan, salah satunya agar data benar-benar terjamin konsistensinya
-- Karena pada kenyataannya, aplikasi yang akan kita buat pasti digunakan oleh banyak pengguna, dan banyak
-- pengguna tersebut bisa saja akan mengakses data yang sama, jika tidak ada proses locking.
-- Bisa dipastikan akan terjadi RACE Condition, yaitu proses balapan ketika mengubah data yang sama
-- Contoh
-- Ketika belanja di toko online, kita akan balapan membeli barang yang sama, jika data tidak terjaga
-- bisa jadi kita salah mengupdate stock karena pada saat yang bersamaan banyak yang melakukan perubahan
-- jumlah stok barang
-- 
-- 
-- Locking Record
-- Saat kita melakukan proses transaction, lalu kita akan melakukan proses perubahan data, data yang kita ubah tersebut akan secara otomatis di LOCK
-- Hal ini membuat proses TRANSACTION sangat aman
-- Oleh karena itu, sangat disarankan untuk selalu menggunakan fitur TRANSACTION ketika memanipulasi data di database, terutama ketika perintah manipulasinya lebih dari satu kali
-- Locking ini akan membuat sebuah proses perubahan yang dilakukan oleh pihak lain akan diminta untuk menunggu
-- Data akan di LOCK sampai kita melakukan COMMIT atau ROLLBACK transaksi tersebut
START TRANSACTION;

SELECT * FROM guestbooks;

UPDATE guestbooks
SET title = 'Diubah oleh user 1'
WHERE id = 9;

COMMIT;


-- Locking Record Manual
-- Selain secara otomatis, kadang saat membuat aplikasi, kita juga sering melakukan SELECT query terlebih dahulu sebelum melakukan proses UPDATE misalnya
-- Jika kita ingin melakukan LOCKING suatu data secara manual, kita bisa menambahkan perintah FOR UPDATE di belakang query SELECT
-- Saat kita lock record yang kita SELECT, maka jika ada proses lain akan melakukan UPDATE, DELETE atau SELECT FOR UPDATE lagi, maka proses lain diminta menunggu sampai kita selesai melakukan COMMIT atau ROLLBACK transaction
START TRANSACTION;
SELECT * FROM products;
SELECT * FROM products WHERE id = 'P0001';
SELECT * FROM products WHERE id = 'P0001' FOR UPDATE;

UPDATE products
SET quantity = quantity - 10
WHERE id = 'P0001';

COMMIT;


-- Deadlock condition
-- Saat kita terlalu banyak melakukan proses locking, hati-hati akan masalah yang bisa terjadi, yaitu Deadlock
-- Deadlock adalah situasi dimana 2 proses yang saling menunggu satu sama lain, namun data yang ditunggu keduanya di lock oleh proses lainnya.
-- Sehingga proses menunggunya ini tidak akan pernah selesai
-- 
-- Contoh Deadlock condition
-- Proses 1 melakukan SELECT FOR UPDATE untuk data 001
-- Proses 2 melakukan SELECT FOR UPDATE untuk data 002
-- Proses 1 melakukan SELECT FOR UPDATE untuk data 002, diminta menunggu karena di lock oleh Proses 2
-- Proses 2 melakukan SELECT FOR UPDATE untuk data 001, diminta menunggu karena di lock oleh Proses 1
-- Akhirnya proses 1 dan proses 2 saling menunggu
-- dan Deadlock pun terjadi

-- Locking Table
-- MySQL mendukung proses locking terhadap suatu tabel
-- Jika kita me-lock tabel, artinya seluruh data di tabel tersebut akan di lock
-- Ada 2 jenis lock tabel, yaitu READ dan WRITE
-- Cara melakukan lock table adalah dengan perintah :
--      LOCK TABLE nama_table READ;
--      LOCK TABLE nama_table WRITE;
-- Setelah selesai melakukan lock tabel, kita bisa menggunakan unlock dengan perintah UNLOCK TABLES;
-- 
-- 
-- Proses Lock TABLE mode READ
LOCK TABLES products READ;
SELECT * FROM products;
UNLOCK TABLE;
-- 
-- Proses Lock TABLE mode WRITE
LOCK TABLE products WRITE;
SELECT * FROM products;
ROLLBACK;
UNLOCK TABLES;

