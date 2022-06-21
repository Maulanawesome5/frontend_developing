SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products; SELECT * FROM admins; SELECT * FROM customers; SELECT * FROM sellers;


-- 1 to Many Relationship
-- Adalah relasi antar tabel dimana satu data bisa digunakan lebih dari satu kali dari tabel relasinya
-- Berbeda dengan 1 to 1 yang cuma bisa digunakan maksimal 1 kali di tabel relasinya, 1 to Many tidak ada batasan berapa banyak data digunakan
-- Contoh relasi antar tabel category dan product, dimana satu kategori bisa digunakan oleh lebih dari satu produk, yang berarti relasinya 'one category to many products'
-- Pembuatan relasi 1 to many sebenarnya sama dengan 1 to 1, bedanya adalah kita tidak perlu menggunakan UNIQUE KEY, sebab datanya memang bisa berkali-kali ditambahkan di tabel relasinya

CREATE TABLE categories (
    id VARCHAR(10) NOT NULL,
    nama VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

DESCRIBE categories; SELECT * FROM categories;

DROP TABLE categories;

-- Menghapus kolom category yang ada di tabel products, kemudian diganti dengan
-- kolom category yang diatas ini
ALTER TABLE products DROP COLUMN category; SELECT * FROM products;
ALTER TABLE products ADD COLUMN id_category VARCHAR(10); DESCRIBE products;

-- Membuat FOREIGN KEY untuk menghubungkan tabel product dengan tabel category
-- yang dibuat disini
ALTER TABLE products
    ADD CONSTRAINT fk_product_categories
        FOREIGN KEY (id_category) REFERENCES categories (id);

ALTER TABLE products
    DROP CONSTRAINT fk_product_categories; -- untuk menghapus constraint

-- Isi jenis-jenis kategori produk di dalam tabel Categories
INSERT INTO categories(id, nama) VALUES ('C0001', 'Makanan'), ('C0002', 'Minuman'), ('C0003', 'Lain-Lain');
SELECT * FROM categories;

-- Isi tabel product, kolom id_category 
UPDATE products
SET id_category = 'C0001'
WHERE id IN ('P0001', 'P0002', 'P0003', 'P0004', 'P0005', 'P0006', 'P0013', 'P0014', 'P0015');

UPDATE products
SET id_category = 'C0002'
WHERE id IN ('P0007', 'P0008', 'P0009');

UPDATE products
SET id_category = 'C0003'
WHERE id IN ('P0010', 'P0011', 'P0012', 'P0016');

-- Join tabel products dan tabel categories
SELECT products.id, products.nama, categories.nama
FROM products
JOIN categories ON (categories.id = products.id_category);
