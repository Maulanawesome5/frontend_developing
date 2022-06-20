SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- Date and Time Function
SELECT id, created_at,
    EXTRACT(YEAR FROM created_at) AS Tahun,
    EXTRACT(MONTH FROM created_at) AS Bulan
FROM products;

SELECT id, created_at, YEAR(created_at), MONTH(created_at) FROM products;
