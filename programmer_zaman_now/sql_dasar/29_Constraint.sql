SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- Constraint
-- Constraint sangat bagus ditambahkan untuk menjaga terjadi validasi yang salah di program

-- UNIQUE KEY
-- Jika memasukkan data yang duplikat, maka dengan adanya UNIQUE akan otomatis ditolak oleh MySQL
-- dan dipilih satu saja
CREATE TABLE customers (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    PRIMARY KEY (id),
    UNIQUE KEY email_unique (email)
) ENGINE = InnoDB;

DESCRIBE customers;

-- cara menambahkan UNIQUE KEY jika tabel sudah terlanjur dibuat
ALTER TABLE customers
ADD CONSTRAINT email_unique UNIQUE (email);

-- cara menghapus UNIQUE KEY
ALTER TABLE customers
DROP CONSTRAINT email_unique;


-- insert data
INSERT INTO customers(email, first_name, last_name)
VALUES ('maulanawesome5@gmail.com', 'Maulana', 'Aji');


-- CHECK Constraint
-- adalah constraint yang bisa kita tambahkan kondisi pengecekannya.
-- Berguna untuk mengecek data sebelum dimasukkan ke dalam database

-- Membuat CHECK constraint jika tabel terlanjur dibuat
ALTER TABLE products
ADD CONSTRAINT price_check CHECK(price >= 1000);

-- Membuat CHECK constraint jika tabel terlanjur dibuat
ALTER TABLE products
DROP CONSTRAINT price_check;


INSERT INTO products(id, nama, category, price, quantity)
VALUES ('P0016', 'Permen', 'Lain-Lain', 500, 1000);

UPDATE products SET price = 1000 WHERE id = 'P0016';

SELECT * FROM products;

