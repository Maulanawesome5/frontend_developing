SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;
SELECT * FROM admins;
SELECT * FROM customers;
SELECT * FROM sellers;


-- 1 to 1 Relationship
-- Relasi antar tabel yang paling sederhana
-- Artinya tiap data di suatu tabel hanya boleh berelasi ke maksimal 1 data di tabel lainnya
-- Tidak boleh ada relasi lebih dari 1 data
-- 
-- Contoh 
-- misalkan membuat aplikasi toko online yang terdapat fitur wallet
-- dan 1 customer hanya boleh punya 1 wallet
-- 
-- Cara buat relasi 1 to 1
-- Membuat kolom FOREIGN KEY, lalu SET kolom tersebut menggunakan UNIQUE KEY. Hal ini dapat mencegah terjadinya duplikasi data
-- Atau cara lainnya, bisa membuat tabel dengan PRIMARY KEY yang sama, sehingga tidak butuh lagi kolom untuk FOREIGN KEY
CREATE TABLE wallet (
    id INT NOT NULL AUTO_INCREMENT,
    id_customer INT NOT NULL,
    balance INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    UNIQUE KEY fk_id_customer_unique (id_customer),
    CONSTRAINT fk_wallet_customer FOREIGN KEY (id_customer) REFERENCES customers (id)
) ENGINE = InnoDB;

DESCRIBE wallet; SHOW CREATE TABLE wallet; SELECT * FROM wallet;
SELECT * FROM customers; DESCRIBE customers;

-- Insert data ke wallet tabel
INSERT INTO wallet(id_customer) VALUES (1), (2), (3), (4), (5);

-- Join 1 to 1 relation, tabel wallet dan tabel customers
SELECT customers.email, wallet.balance
FROM wallet JOIN customers ON (wallet.id_customer = customers.id);

