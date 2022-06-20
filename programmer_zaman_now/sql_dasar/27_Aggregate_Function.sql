SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- Aggregate Function
-- AVG(), MAX(), COUNT(), MIN(), ....
SELECT COUNT(id) AS 'Total Product Tersedia' FROM products;
SELECT MAX(price) AS 'Produk Termahal' FROM products;
SELECT MIN(price) AS 'Produk Termurah' FROM products;

SELECT
    MAX(price) AS 'Produk Termahal',
    MIN(price) AS 'Produk Termurah',
    AVG(price) AS 'Rata-Rata Harga',
    SUM(quantity) AS 'Jumlah Stok Seluruhnya'
FROM products;


