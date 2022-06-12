SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE



-- Membuat tabel produk
CREATE TABLE products (
    id VARCHAR(10) NOT NULL,
    nama VARCHAR(100) NOT NULL,
    descriptions TEXT,
    price INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

SHOW TABLES;
DESCRIBE products;



-- Insert data ke dalam tabel products
INSERT INTO products (id, nama, price, quantity)
VALUES ('P0001', 'Mie Ayam Original', 15000, 100);

SELECT * FROM products;

INSERT INTO products (id, nama, descriptions, price, quantity)
VALUES ('P0002', 'Mie Ayam Bakso Tahu', 'Mie Ayam Original + Tahu Bakso', 20000, 100);

INSERT INTO products (id, nama, price, quantity)
VALUES ('P0003', 'Mie Ayam Ceker', 20000, 100), 
('P0004', 'Mie Ayam Spesial', 25000, 100), 
('P0005', 'Mie Ayam Yamin', 15000, 100);



