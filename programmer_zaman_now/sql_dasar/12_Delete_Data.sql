SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- Update dummy data terlebih dahulu
INSERT INTO products (id, nama, price, quantity)
VALUES ('P0009', 'Mie Ayam Pizza', 15000, 50);

-- Cara delete record data
DELETE FROM products WHERE id = 'P0009';

