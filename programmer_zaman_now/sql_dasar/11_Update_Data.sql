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


-- Menambahkan kolom bernama kategori
ALTER TABLE products
ADD COLUMN category ENUM('Makanan', 'Minuman', 'Lain-Lain')
AFTER nama;


SELECT * FROM products;


-- update kolom kategori
UPDATE products SET category = "Makanan" WHERE id = 'P0001';
UPDATE products
SET category = 'Makanan', descriptions = 'Mie Ayam + Ceker'
WHERE id = 'P0003';
UPDATE products SET category = "Makanan" WHERE id = 'P0002';
UPDATE products SET category = "Makanan" WHERE id = 'P0004';
UPDATE products SET category = "Makanan" WHERE id = 'P0005';


SELECT * FROM products;


UPDATE products
SET price = price + 5000 WHERE id = 'P0001'; -- mengubah isi data harga dengan nilai literal



