SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products;


-- Join Table
-- MySQL mendukung query SELECT langsung ke beberapa tabel secara sekaligus
-- Namun untuk melakukan itu, kita perlu melakukan JOIN di SQL SELECT yang kita buat
-- Untuk melakukan JOIN, kita perlu menentukan tabel mana yang merupakan referensi ke tabel lain
-- Join cocok sekali dengan FOREIGN KEY, walaupun di MySQL tidak ada aturan kalau JOIN harus ada FOREIGN KEY
-- Join di MySQL bisa dilakukan untuk lebih dari beberapa tabel
-- Tapi perlu di ingat, semakin banyak JOIN, maka proses query akan semakin berat dan lambat, jadi harap bijak ketika melakukan JOIN
-- Idealnya kita melakukan JOIN tidak lebih dari 5 tabel, karena itu bisa berdampak ke performa query yang lambat
SELECT * FROM wishlist
JOIN products ON (wishlist.id_product = products.id);

-- Seleksi join beberapa kolom saja
SELECT wishlist.id, products.id, products.nama, wishlist.descriptions 
FROM wishlist
JOIN products ON (wishlist.id_product = products.id);

-- Seleksi join beberapa kolom, beserta TABLE ALIAS
SELECT w.id, p.id, p.nama, w.descriptions 
FROM wishlist AS w
JOIN products AS p ON (w.id_product = p.id);

-- Seleksi join beberapa kolom, beserta TABLE ALIAS dan COLUMN alias
SELECT w.id AS id_wishlist, 
        p.id AS id_products, 
        p.nama AS product_name, 
        w.descriptions AS product_description
FROM wishlist AS w
JOIN products AS p ON (w.id_product = p.id);


-- Join tabel wishlist ke tabel customer
SELECT * FROM customers;
DESCRIBE customers;
ALTER TABLE wishlist ADD COLUMN id_customer INT;
ALTER TABLE wishlist
    ADD CONSTRAINT fk_wishlist_customer
    FOREIGN KEY (id_customer) REFERENCES customers(id);

DESCRIBE wishlist;
SHOW CREATE TABLE wishlist;

UPDATE wishlist SET id_customer = 1 WHERE id = 1;
SELECT * FROM wishlist;


-- Join multiple tabel
SELECT customers.email,
    products.id,
    products.nama,
    wishlist.descriptions
FROM wishlist
JOIN products ON (products.id = wishlist.id_product)
JOIN customers ON (customers.id = wishlist.id_customer);


