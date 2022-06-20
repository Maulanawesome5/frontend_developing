SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- INDEX system
-- Secara default, data yang disimpan dalam SQL akan menjadi berupa tabel
-- Di setiap barisnya (ke arah bawah), data diakses menggunakan index, jika tidak diberikan Primary key ataupun Unique key
-- Index juga akan mempermudah ketika melakukan pengurutan menggunakan query order by

-- Kelemahan INDEX system
-- Proses update, delete, tambah akan menjadi lambat

-- Tidak Perlu INDEX system
-- Jika di dalam tabel sudah dibuatkan PRIMARY ataupun UNIQUE

CREATE TABLE sellers (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    nama VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY email_unique (email),
    INDEX name_index (nama)
) ENGINE = InnoDB;

DESCRIBE sellers;

ALTER TABLE sellers
ADD COLUMN nama2 VARCHAR(100);

ALTER TABLE sellers
ADD COLUMN nama3 VARCHAR(100);

ALTER TABLE sellers
ADD INDEX nama2_index (nama2);

ALTER TABLE sellers
ADD INDEX nama3_index (nama3);

ALTER TABLE sellers
ADD INDEX nama1_nama2_nama3_index (nama, nama2, nama3);


DESCRIBE sellers;
SHOW CREATE TABLE sellers;


