SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- FULL-TEXT Search
-- Kadang kita ingin mencari suatu kata dalam tabel, dan biasanya kita akan menggunakan LIKE Operator
-- Operasi yang dilakukan LIKE operator adalah dengan cara mencari seluruh data di tabel dan baris pertama sampai terakhir, hal ini membuat operasi LIKE sangat lambat.
-- Menambah index di tabel juga tidak akan membantu, karena LIKE operator tidak menggunakan index system
-- MySQL menyediakan fitur Full Text Search jika ada kasus kita ingin mencari satu kalimat
ALTER TABLE products
ADD FULLTEXT product_search (nama, descriptions);

SHOW CREATE TABLE products;

-- Cara search dengan operator like
SELECT * FROM products
WHERE nama LIKE '%ayam%' OR descriptions LIKE '%ayam%';

-- Mode FULL-TEXT Search
-- Natural Language, Query Expansion, Boolean
SELECT * FROM products
WHERE MATCH(nama, descriptions) AGAINST('ayam' IN NATURAL LANGUAGE MODE); -- Natural Language mode

SELECT * FROM products
WHERE MATCH(nama, descriptions) AGAINST('+ayam -bakso' IN BOOLEAN MODE); -- Boolean mode

SELECT * FROM products
WHERE MATCH(nama, descriptions) AGAINST('bakso' WITH QUERY EXPANSION); -- Query Expansion


