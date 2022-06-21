SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database
SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products; SELECT * FROM admins; SELECT * FROM customers; SELECT * FROM sellers;
SELECT * FROM categories; SELECT * FROM orders; SELECT * FROM orders_detail;

-- Subquery di WHERE
-- MySQL mendukung pencarian data menggunakan WHERE dari hasil SELECT query
-- Fitur ini dinamakan Subquery
-- Contohnya jika ingin mencari product yang harganya diatas harga rata-rata, artinya
-- kita akan melakukan SELECT dengan WHERE price > harga_rata
-- dimana rata-rata harga perlu dihitung menggunakan query SELECT dan juga fungsi aggregasi AVG()
SELECT * FROM products WHERE price > (SELECT AVG(price) FROM products);


-- Subquery di FROM
-- Memfilter / selection suatu produk yang harganya paling mahal
-- dan produk tersebut harus terelasi dengan tabel 'categories'
SELECT MAX(price) FROM (
    SELECT price FROM categories
    INNER JOIN products ON (products.id_category = categories.id)
) AS cp;



