SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- Seleksi menggunakan klausa WHERE untuk tabel products
SELECT * FROM products WHERE quantity = 100;
SELECT * FROM products WHERE price = 15000;
SELECT * FROM products WHERE id = 'P0001';
SELECT * FROM products WHERE nama = 'Mie Ayam';



