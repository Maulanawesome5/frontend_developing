SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- LIMIT clause
-- membatasi jumlah data yang akan dibaca dengan LIMIT.
-- Selain itu, LIMIT juga berfungsi untuk melewati / skip beberapa data yang tidak ingin dibaca
-- Biasanya dipakai untuk menampilkan data dalam beberapa halaman (paging), misalkan datanya sudah banyak.
SELECT * FROM products ORDER BY id LIMIT 5;
SELECT * FROM products ORDER BY id LIMIT 3;

SELECT * FROM products ORDER BY id LIMIT 0, 5; -- halaman 1 menampilkan 5 baris
SELECT * FROM products ORDER BY id LIMIT 5, 5; -- halaman 2 menampilkan 5 baris
SELECT * FROM products ORDER BY id LIMIT 10, 5; -- halaman 3 menampilkan 5 baris



