SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- Grouping
-- GROUP BY clause digunakan untuk mengelompokkan suatu data berdasarkan
-- kategori tertentu. GROUP BY biasanya dipakai bersama Aggregate Function
SELECT COUNT(id) AS 'Jumlah Produk', category FROM products GROUP BY category;
SELECT MAX(price) AS 'Harga Produk Termahal', category FROM products GROUP BY category;
SELECT MIN(price) AS 'Harga Produk Termurah', category FROM products GROUP BY category;


-- HAVING Clause
-- Untuk memfilter hasil fungsi aggregasi dan grouping.
-- karena setelah di lakukan GROUP BY, maka sintaks WHERE tidak bisa dipakai.
SELECT COUNT(id) AS total, category
FROM products
GROUP BY category
HAVING total > 5;

