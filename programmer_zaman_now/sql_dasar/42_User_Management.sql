SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database
SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products; SELECT * FROM admins; SELECT * FROM customers; SELECT * FROM sellers;
SELECT * FROM categories; SELECT * FROM orders; SELECT * FROM orders_detail;
SELECT * FROM guestbooks; SELECT * FROM wallet; SELECT * FROM wishlist;


-- My keyboard error. copy paste -> g, G, h, H, '_', "_"


-- User Management
-- Ini untuk membuat user
CREATE USER 'user01'@'localhost'; -- artinya user01 bisa mengakses data pakai server static / localPC
CREATE USER 'user02'@'%'; -- artinya user02 bisa akses dari berbagai perangkat

-- Ini untuk menghapus user
DROP USER 'user01'@'localhost';
DROP USER 'user02'@'%';

-- Memberikan hak akses (PRIVILEGES) untuk setiap user terhadap database
-- GRANT (hak akses SELECT saja) ON (nama_database).(semua_tabel) TO 'user01'@'localhost';
GRANT SELECT ON belajar_mariadb.* TO 'user01'@'localhost';
-- GRANT (hak akses SELECT, INSERT, UPDATE, DELETE saja) ON (nama_database).(semua_tabel) TO 'user02'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON belajar_mariadb.* TO 'user02'@'%';


-- Melihat daftar hak akses database untuk user
SHOW GRANTS FOR 'user01'@'localhost';
SHOW GRANTS FOR 'user02'@'%';
SHOW GRANTS FOR 'root'@'localhost'; -- ini untuk account root ya...!


-- Menghapus hak akses database untuk user
-- REVOKE (hak akses SELECT saja) ON (nama_database).(semua_tabel) FROM 'user01'@'localhost';
REVOKE SELECT ON belajar_mariadb.* FROM 'user01'@'localhost';
-- REVOKE (hak akses SELECT, INSERT, UPDATE saja) ON (nama_database).(semua_tabel) FROM 'user02'@'%';
REVOKE SELECT, INSERT, UPDATE, DELETE ON belajar_mariadb.* FROM 'user02'@'%';


-- Memberikan password untuk setiap user
SET PASSWORD FOR 'user01'@'localhost' = "12345678"; -- error : password hash should be a 41-digit hexadecimal number
SET PASSWORD FOR 'user02'@'%' = 'secret'; -- error : password hash should be a 41-digit hexadecimal number

