SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- String Function
SELECT id, LOWER(nama) as 'Nama Lower' FROM products;
SELECT id, nama,
    LOWER(nama) as 'Nama Lower',
    UPPER(nama) as 'Nama Upper',
    LENGTH(nama) as 'Length_name'
FROM products;


