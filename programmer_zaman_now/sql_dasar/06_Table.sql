SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


CREATE TABLE barang (
    id INT,
    nama VARCHAR(100),
    harga INT,
    jumlah INT
) ENGINE = InnoDB; -- membuat table barang

SHOW TABLES; -- tampilkan semua daftar tabel di database

-- Melihat struktur tabel
DESCRIBE barang;
DESC barang;
SHOW CREATE TABLE barang;


-- Mengubah tabel (untuk contoh saja)
-- ALTER TABLE barang
--     ADD COLUMN nama_column TEXT,
--     DROP COLUMN nama,
--     RENAME COLUMN nama TO nama_baru,
--     MODIFY nama VARCHAR(100) AFTER jumlah,
--     MODIFY nama VARCHAR(100) FIRST;


ALTER TABLE barang
ADD COLUMN deskripsi TEXT;
DESCRIBE barang;


-- NULL VALUE
ALTER TABLE barang
MODIFY id INT NOT NULL, MODIFY nama VARCHAR(200) NOT NULL;


-- DEFAULT VALUE
ALTER TABLE barang
MODIFY jumlah INT NOT NULL DEFAULT 0,
MODIFY harga INT NOT NULL DEFAULT 0;

ALTER TABLE barang
ADD waktu_dibuat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;


DESCRIBE barang;


-- insert data ke dalam tabel
INSERT INTO barang (id, nama) VALUES (1, 'Apel');
SELECT * FROM barang;


-- Mereset atau menghapus tabel
TRUNCATE barang; -- reset
DROP barang; -- hapus tabel