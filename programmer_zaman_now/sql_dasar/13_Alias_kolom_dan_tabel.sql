SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- Alias
-- MySQL memiliki fitur untuk melakukan alias untuk kolom dan tabel.
-- Alias berguna jika kita ingin mengubah nama kolom atau nama tabel ketika melakukan SELECT data.
-- Fitur Alias akan berguna ketika melakukan JOIN.
SELECT id AS 'Kode_Produk', nama AS 'Nama_Produk', category AS 'Kategori',
price AS 'Harga', quantity AS 'Jumlah'
FROM products;

-- Memberi alias untuk tabel, jika di JOIN dengan tabel lainnya
SELECT p.id AS 'Kode_Produk',
        p.nama AS 'Nama_Produk',
        p.category AS 'Kategori',
        p.price AS 'Harga',
        p.quantity AS 'Jumlah'
FROM products AS p;



