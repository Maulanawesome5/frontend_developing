SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- Table Relationship
-- Dalam Relational DBMS, salah satu fitur andalannya adalah table relationship atau relasi antar tabel
-- Kita bisa melakukan relasi dari satu tabel ke tabel lain
-- Contoh relasi tabel di kehidupan nyata adalah 
-- 
-- Aplikasi penjualan. 
-- Di laporan penjualan pasti ada data barang yang telah terjual.
-- Artinya tabel transaksi penjualan dan tabel barang saling berelasi.
-- Stok di tabel barang berkurang, nilai penjualan bertambah
-- 
-- Foreign Key
-- Saat membuat relasi tabel, biasanya kita akan membuat sebuah kolom sebagai referensi ke tabel lainnya
-- Misal saat kita membuat tabel penjualan, di dalam tabel penjualan kita akan menambahkan id_produk sebagai referensi ke tabel produk, yang berisi primary key di tabel produk
-- Kolom referensi ini di MySQL dinamakan FOREIGN KEY
-- kita bisa menambah satu atau lebih FOREIGN KEY ke dalam suatu tabel
-- membuat FOREIGN KEY sama seperti membuat kolom biasanya, hanya saja kita perlu memberi tahu MySQL bahwa itu adalah FOREIGN KEY ke tabel lainnya
-- 
-- Keuntungan pakai FOREIGN KEY
-- Memastikan bahwa data yang kita masukkan ke kolom tersebut harus tersedia di tabel reference-nya
-- Selain itu saat kita menghapus data di tabel REFERENCES, MySQL akan memeriksa apakah id-nya digunakan sebagai fk tabel lain atau tidak
-- Jika digunakan, maka secara otomatis MySQL akan menolak proses delete data di tabel reference tersebut
CREATE TABLE wishlist (
    id INT NOT NULL AUTO_INCREMENT,
    id_product VARCHAR(10) NOT NULL,
    descriptions TEXT,
    PRIMARY KEY (id),
    CONSTRAINT fk_wishlist_product FOREIGN KEY (id_product) REFERENCES products (id)
) ENGINE = InnoDB;

DESCRIBE wishlist;
SHOW CREATE TABLE wishlist;


-- Membuat fk jika tabel sudah terbuat
ALTER TABLE wishlist
ADD CONSTRAINT fk_wishlist_product
FOREIGN KEY (id_product) REFERENCES products (id);

-- Menghapus fk
ALTER TABLE wishlist
DROP CONSTRAINT fk_wishlist_product;


-- menambahkan data ke wishlist
INSERT INTO wishlist(id_product, descriptions)
VALUES ('P0001', 'Makanan Kesukaan');

SELECT * FROM wishlist;

-- Ketika menghapus data berelasi
-- Ketika ingin menghapus data berelasi maka secara otomatis MySQL akan menolak operasi delete tersebut
-- Kita bisa mengubah fitur ini jika kita mau, ada banyak hal yang bisa dilakukan ketika data berelasi dihapus, defaultnya memang akan ditolak (restict)
-- 
-- Behavior FOREIGN KEY
-- RESTRICT ----> on delete = Ditolak ----> on update = ditolak
-- CASCADE  ----> on delete = Data akan dihapus ----> on update = data akan ikut diubah
-- NO ACTION  ----> on delete = Data dibiarkan ----> on update = data dibiarkan
-- SET NULL  ----> on delete = Data diubah jadi NULL ----> on update = data diubah jadi NULL
ALTER TABLE wishlist
ADD CONSTRAINT fk_wishlist_product
FOREIGN KEY (id_product) REFERENCES products (id)
ON DELETE CASCADE ON UPDATE CASCADE;

