SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- Update data lebih banyak
INSERT INTO products(id, category, nama, price, quantity)
VALUES ('P0006', 'Makanan', 'Bakso Rusuk', 25000, 200),
('P0007', 'Minuman', 'Es Jeruk', 10000, 300),
('P0008', 'Minuman', 'Es Campur', 15000, 500),
('P0009', 'Minuman', 'Es Teh Manis', 5000, 400),
('P0010', 'Lain-Lain', 'Kerupuk', 2500, 1000),
('P0011', 'Lain-Lain', 'Keripik Udang', 10000, 300),
('P0012', 'Lain-Lain', 'Es Krim', 5000, 200),
('P0013', 'Makanan', 'Mie Ayam Jamur', 20000, 50),
('P0014', 'Makanan', 'Bakso Kikil', 20000, 150),
('P0015', 'Makanan', 'Bakso Babat', 25000, 300);

-- Operator WHERE clause
-- Operator         Keterangan
--    =             Sama dengan
-- <> atau !=       Tidak sama dengan
--    <             Kurang dari
--    <=            Kurang dari atau sama dengan
--    >             Lebih dari
--    >=            Lebih dari atau sama dengan
SELECT * FROM products WHERE quantity > 100;
SELECT * FROM products WHERE quantity >= 100;
SELECT * FROM products WHERE category != 'Makanan';


-- Operator AND dan OR
-- Merupakan operator yang digunakan untuk menggabungkan beberapa kondisi
SELECT * FROM products WHERE quantity > 100 AND price > 20000;
SELECT * FROM products WHERE category = 'Makanan' AND price < 20000;
SELECT * FROM products WHERE quantity > 100 OR price > 20000;
SELECT * FROM products WHERE category = 'Makanan' OR quantity > 500 AND price > 20000;

-- Menggunakan operation precedence / prioritas -> ()
SELECT * FROM products WHERE (category = 'Makanan' OR quantity > 500) AND price > 20000;


-- like operator
-- LIKE 'b%' ---> mencari string dengan awalan b
-- LIKE '%b' ---> mencari string dengan akhiran b
-- LIKE '%eko%' ---> mencari string berisi eko
-- NOT LIKE ---> bukan seperti yang dicari
SELECT * FROM products WHERE nama LIKE '%mie%';
SELECT * FROM products WHERE nama LIKE '%bakso%';
SELECT * FROM products WHERE nama LIKE '%yam%';

