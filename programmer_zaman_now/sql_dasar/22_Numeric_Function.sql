SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- Numeric Function
-- aritmatika operator dan function matematika.
-- Aritmatika Operator
-- % atau MOD, +, -, *, /, DIV
SELECT 10 + 10 AS jumlah;
SELECT 10 * 10 AS jumlah;
SELECT 10, 10, 10 * 10 AS jumlah;
SELECT id, nama, price DIV 1000 AS 'Harga (K)' FROM products;

-- function matematika
SELECT id, COS(price), SIN(price), TAN(price) FROM products;
SELECT id, nama, price FROM products WHERE price DIV 1000 > 15;

