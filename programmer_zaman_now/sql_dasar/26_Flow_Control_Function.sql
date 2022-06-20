SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- Flow Control Function
-- CASE statement, IF ELSE statement, IFNULL
SELECT id, nama,
    CASE category
    WHEN 'Makanan' THEN 'Enak'
    WHEN 'Minuman' THEN 'Segar'
    ELSE 'Apa itu?'
    END AS 'Category' -- ini alias, atau nama kolom sementara
FROM products;

SELECT id, nama, price,
    IF(price <= 15000, 'Murah',
        IF(price <= 20000, 'Mahal', 'Mahal Banget')
    ) AS 'Apakah Mahal ?'
FROM products;

-- Menggunakan IFNULL
SELECT id, nama, IFNULL(descriptions, 'Kosong') FROM products;
