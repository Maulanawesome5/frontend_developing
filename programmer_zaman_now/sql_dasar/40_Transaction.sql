SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database
SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products; SELECT * FROM admins; SELECT * FROM customers; SELECT * FROM sellers;
SELECT * FROM categories; SELECT * FROM orders; SELECT * FROM orders_detail;
SELECT * FROM guestbooks; SELECT * FROM wallet; SELECT * FROM wishlist;


-- My keyboard error. copy paste -> g, G, h, H, '_', "_"


-- Transaction
-- 
-- Kenapa butuh Transaction ?
-- Saat membuat aplikasi berbasis database, jarang sekali kita akan melakukan satu jenis perintah SQL per aksi yang dibuat untuk aplikasi
-- Contoh ketika membuat toko online, ketika customer menekan tombol Pesan, banyak yang harus kita lakukan
-- misalnya :
--      Membuat data pesanan di tabel order
--      Membuat data detail pesanan di tabel order detail
--      Menurunkan quantity di tabel produk
--      Dan lain-lain
-- Artinya bisa saja dalam satu aksi, kita akan melakukan beberapa perintah sekaligus
-- Jika terjadi kesalahan di satu perintah, harapannya adalah perintah-perintah sebelumnya dibatalkan, agar tetap konsisten
-- 
-- Database Transaction
-- Database transaction adalah fitur di DBMS, dimana kita bisa memungkinkan beberapa perintah dianggap menjadi satu kesatuan perintah yang kita sebut transaction
-- Jika terdapat satu saja proses gagal di transaction, maka secara otomatis perintah-perintah sebelumnya akan dibatalkan
-- Jika suatu transaction sukses, maka semua perintah akan dipastikan sukses
-- 
-- Skema proses transaction
-- Start transaction --> insert... --> insert... --> update... --> commit transaction
-- 
-- Membatalkan transaction
-- Start transaction --> insert... --> insert... --> update... --> rollback transaction
-- 
-- 
-- Perintah Transaction di MySQL
-- START TRANSACTION = Memulai proses transaksi, proses selanjutnya akan dianggap transaksi sampai perintah COMMIT atau ROLLBACK
-- COMMIT = Menyimpan secara permanen seluruh proses transaksi
-- ROLLBACK = Membatalkan secara permanen seluruh proses transaksi
START TRANSACTION; -- eksekusi ini dulu

INSERT INTO guestbooks (email, title, content)
VALUES ('random_people01@tamu.com', 'tamu ke 1', 'apa kabar my friend'),
('random_people02@tamu.com', 'tamu ke 2', 'saya mau komplain'), ('random_people03@tamu.com', 'tamu ke 3', 'saya berikan bintank 3');

SELECT * FROM guestbooks; -- setela insert, cek dulu
COMMIT; -- kalau suda benar, eksekusi commit

-- Rollback transaction
-- Misalkan kita tidak sengaja menghapus data yang sudah terlanjur di input
START TRANSACTION; -- eksekusi dulu
DELETE FROM guestbooks; -- misalkan terhapus datanya
SELECT * FROM guestbooks; -- data kosong, preview kembali setelah di ROLLBACK
ROLLBACK; -- Lakukan ROLLBACK untuk membatalkan perintah


-- Yang Tidak Bisa Menggunakan Transaction
-- Perintah DDl (Data Definition Language) tidak bisa menggunakan fitur transaction
-- DDl adalah perintah - perintah yang digunakan untuk mengubah struktur, seperti membuat tabel, menambah kolom, menghapus tabel, menghapus database, dan sejenisnya
-- Transaction hanya bisa dilakukan pada perintah DML (Data Manipulation language), seperti operasi INSERT, UPDATE, dan DELETE

