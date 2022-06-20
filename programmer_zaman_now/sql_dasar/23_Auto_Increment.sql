SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- Auto increment
-- merupakan fitur untuk menandai bahwa suatu primary key data akan diisi secara otomatis
CREATE TABLE admins(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
)ENGINE = InnoDB; -- new tables

DESCRIBE admins;

SELECT * FROM admins;

-- insert auto increment to data table
INSERT INTO admins(first_name, last_name)
VALUES ('Eko', 'Khannedy'), ('Budi', 'Nugraha'), ('Joko', 'Suseno');
SELECT * FROM admins ORDER BY id;

INSERT INTO admins(first_name, last_name)
VALUES ('Hernaldi', 'Kesatriawan'), ('Doddy', 'Ferdiansyah'), ('Aditya', 'Prasetya');

-- Melihat nomor id terakhir yang dimasukkan
SELECT LAST_INSERT_ID();


