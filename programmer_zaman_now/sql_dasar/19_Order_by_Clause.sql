SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- ORDER BY clause
-- untuk mengurutkan data berdasarkan kolom yang dipilih
-- Urutannya secara ascending (ASC) atau descending (DESC)
SELECT * FROM products ORDER BY price ASC; -- satu kolom ascending
SELECT * FROM products ORDER BY quantity DESC; -- satu kolom descending
SELECT id, category, nama FROM products ORDER BY category; -- lebih dari satu kolom, default ascending
SELECT id, category, price, nama FROM products ORDER BY category ASC, price DESC;


