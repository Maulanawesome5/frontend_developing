SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- SELECT DISTINCT data
-- untuk menyeleksi data yang ganda, kemudian ditampilkan tunggal.
-- Misalkan menampilkan data dengan category 'Makanan', maka akan ditampilkan keseluruhan yang berjenis makanan.
-- Distinct akan menampilkannya dalam satu baris saja.
SELECT category FROM products; -- cara biasanya
SELECT DISTINCT category FROM products; -- dengan DISTINCT


