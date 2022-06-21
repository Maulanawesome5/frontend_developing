SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database
SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products; SELECT * FROM admins; SELECT * FROM customers; SELECT * FROM sellers;
SELECT * FROM categories; SELECT * FROM orders; SELECT * FROM orders_detail;

-- Jenis Jenis JOIN tabel MySQL
-- Inner JOIN, Left JOIN, Right JOIN, Cross JOIN
-- 
-- Inner JOIN
-- Merupakan mekanisme JOIN, dimana terdapat relasi antara tabel pertama dan tabel kedua
-- Jika ada data di tabel pertama yang tidak memiliki relasi di tabel kedua ataupun sebaliknya, maka hasil Inner JOIN tidak akan ditampilkan
-- Inner JOIN merupakan default di dalam MySQL
-- Pada praktik sebelumnya, Join yang sudah dilakukan sampai saat ini merupakan Inner JOIN

INSERT INTO categories (id, nama) VALUES ('C0004', 'Oleh-Oleh'), ('C0005', 'Gadget');
INSERT INTO products (id, nama, price, quantity)
VALUES ('x0001', 'Dummy data 1', 27000, 150), ('x0002', 'Dummy data 2', 14500, 300),
('x0003', 'Dummy data 3', 51000, 500);

SELECT * FROM categories
INNER JOIN products ON (products.id_category = categories.id);

-- 
-- Left JOIN
-- mekanisme-nya sama dengan Inner, namun semua data di tabel pertama akan diambil juga
-- Jika ada yang tidak memiliki relasi di tabel kedua, maka hasilnya akan NULL
SELECT * FROM categories
LEFT JOIN products ON (products.id_category = categories.id);

-- Right JOIN
-- mekanisme-nya sama dengan Inner, namun semua data di tabel kedua akan diambil juga
-- Jika ada yang tidak memiliki relasi di tabel pertama, maka hasilnya akan NULL
-- Kebalikan dari LEFT JOIN
SELECT * FROM categories
RIGHT JOIN products ON (products.id_category = categories.id);

-- Cross JOIN
-- Merupakan mekanisme JOIN yang akan mengalikan data di tabel pertama dengan data di tabel kedua
-- Artinya jika ada 5 data di tabel pertama, dan 5 data di tabel kedua, akan menghasilkan 25 kombinasi data (5 x 5)
-- Mekanisme Cross JOIN ini sangat jarang digunakan, apalagi untuk kebutuhan software engineer
CREATE TABLE numbers (
    id INT NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

INSERT INTO numbers(id) VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

SELECT * FROM numbers;

SELECT numbers1.id, numbers2.id, (numbers1.id * numbers2.id)
FROM numbers AS numbers1
CROSS JOIN numbers AS numbers2
ORDER BY numbers1.id, numbers2.id;