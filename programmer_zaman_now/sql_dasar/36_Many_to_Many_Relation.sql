SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database

SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products; SELECT * FROM admins; SELECT * FROM customers; SELECT * FROM sellers;


-- Many to Many Relationship
-- merupakan relasi antar tabel yang sangat kompleks.
-- Misalkan ada 2 tabel, tabel pertama bisa punya banyak relasi di tabel kedua
-- dan sebaliknya juga, tabel kedua juga bisa punya banyak relasi di tabel pertama.
-- 
-- Ini memang sedikit membingungkan, bagaimana caranya bisa relasi kebanyakan secara bolak-balik, sedangkan di tabel cuma punya 1 kolom ?
-- 
-- Contoh relasi M to M
-- Relasi antara produk dan penjualan, dimana setiap produk bisa dijual berkali-kali, dan setiap penjualan bisa untuk lebih dari satu produk
-- 
-- Membuat tabel relasi untuk M to M
-- Solusi yang biasa dilakukan jika terjadi relasi M to M adalah, biasanya kita akan menambah 1 tabel di tengahnya
-- Tabel ini bertugas sebagai jembatan untuk menggabungkan relasi M to M
-- Isi tabel ini akan ada id dari tabel pertama dan tabel kedua, dalam kasus ini adalah id_product dan id_order
-- Dengan demikian, kita bisa menambahkan beberapa data ke dalam tabel relasi ini, sehingga berarti
-- satu product bisa dijual beberapa kali di dalam tabel order, dan satu order bisa membeli lebih dari satu product

CREATE TABLE orders (
    id INT NOT NULL AUTO_INCREMENT,
    total INT NOT NULL,
    order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

DESCRIBE orders; SELECT * FROM orders; SHOW CREATE TABLE orders;

-- Ini tabel yang menjadi penghubung relasi M to M
CREATE TABLE orders_detail (
    id_product VARCHAR(10) NOT NULL,
    id_order INT NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (id_product, id_order)
) ENGINE = InnoDB;

DESCRIBE orders_detail; SELECT * FROM orders_detail; SHOW CREATE TABLE orders_detail;

-- membuat FOREIGN KEY untuk id_product dan id_order
ALTER TABLE orders_detail
    ADD CONSTRAINT fk_orders_detail_product
        FOREIGN KEY (id_product) REFERENCES products(id);

ALTER TABLE orders_detail
    ADD CONSTRAINT fk_orders_detail_orders
        FOREIGN KEY (id_order) REFERENCES orders(id);

-- Menambahkan transaksi orders
INSERT INTO orders(total) VALUES (50000);

-- Menambahkan detail transaksi item yang dibeli oleh customer
INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P0004', 1, 25000, 1), ('P0006', 1, 25000, 1); -- transaksi pertama
INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P0001', 2, 20000, 2), ('P0009', 2, 5000, 2); -- transaksi kedua
INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P0015', 3, 25000, 1), ('P0013', 3, 20000, 1), ('P0012', 3, 5000, 1); -- transaksi ketiga
INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P0005', 4, 15000, 2), ('P0009', 4, 5000, 2), ('P0012', 4, 5000, 2); -- transaksi keempat


-- Melihat data order, detail, dan product yang dibeli customer
SELECT * FROM orders
    JOIN orders_detail ON (orders_detail.id_order = orders.id)
    JOIN products ON (products.id = orders_detail.id_product);

SELECT orders.id, products.id, products.nama, orders_detail.quantity, orders_detail.price 
FROM orders
    JOIN orders_detail ON (orders_detail.id_order = orders.id)
    JOIN products ON (products.id = orders_detail.id_product);

