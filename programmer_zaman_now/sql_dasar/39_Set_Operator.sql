SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database
SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products; SELECT * FROM admins; SELECT * FROM customers; SELECT * FROM sellers;
SELECT * FROM categories; SELECT * FROM orders; SELECT * FROM orders_detail;

-- Set Operator
-- Operasi antara hasil dari dua SELECT query. Jenisnya seperti berikut:
-- Union, Union All, Intersect, dan Minus
CREATE TABLE guestbooks (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100),
    title VARCHAR(200),
    content TEXT,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

-- Tambahkan data dulu ke tabel Guestbook
INSERT INTO guestbooks(email, title, content)
VALUES ('random_people1@guest.com', 'Apa Kabar', 'Apa Kabar'),
        ('random_people2@guest.com', 'Apa Kabar', 'Apa Kabar'),
        ('random_people3@guest.com', 'Apa Kabar', 'Apa Kabar'),
        ('maulanawesome5@gmail.com', 'Apa Kabar', 'Apa Kabar'),
        ('maulanawesome5@gmail.com', 'Apa Kabar', 'Apa Kabar'),
        ('maulanawesome5@gmail.com', 'Apa Kabar', 'Apa Kabar');

SELECT * FROM guestbooks;

-- UNION
-- Merupakan operasi menggabungkan dua SELECT query, dimana jika terdapat data yang duplikat,
-- maka data duplikat tersebut akan dihapus dari hasil query dan disisakan satu saja.
SELECT DISTINCT email FROM customers
UNION
SELECT DISTINCT email FROM guestbooks;

-- UNION ALL
-- Merupakan operasi yang sama dengan UNION, namun data duplikat tetap akan
-- ditampilkan di hasil query
SELECT DISTINCT email FROM customers
UNION ALL
SELECT DISTINCT email FROM guestbooks;

SELECT emails.email, COUNT(emails.email) FROM (
    SELECT email FROM customers
    UNION ALL
    SELECT email FROM guestbooks
) AS emails GROUP BY emails.email; -- tanpa DISTINCT, untuk menampilkan berapa total duplikasi

-- INTERSECT
-- Operasi menggabungkan dua query, namun yang diambil hanya data yang terdapat pada hasil query pertama dan query kedua
-- Data yang tidak hanya ada di salah satu query, akan dihapus dari hasil operasi INTERSECT
-- Datanya muncul dalam keadaan tidak duplikat
-- Sayangnya, MySQL tidak memiliki operator INTERSECT, dengan demikian untuk melakukan operasi intersect
-- harus dilakukan secara manual menggunakan JOIN atau Subquery
SELECT DISTINCT email FROM customers
WHERE email IN (
    SELECT DISTINCT email FROM guestbooks
); -- query intersect 1

SELECT DISTINCT customers.email FROM customers
INNER JOIN guestbooks ON (guestbooks.email = customers.email); -- query intersect 2

-- tutorial sampai 05:28:21
-- My keyboard error. copy paste -> g, G, h, H, '_', "_"


-- MINUS
-- Adalah operasi dimana query pertama akan dihilangkan oleh query kedua
-- Artinya jika ada data di query pertama yang sama dengan data yang di query kedua, maka data tersebut akan dihapus dari hasil query Minus
-- Sayang sekali di MySQL juga tidak ada operator untuk MINUS, namun hal ini bisa dilakukan menggunakan JOIN
SELECT DISTINCT customers.email, guestbooks.email FROM customers
LEFT JOIN guestbooks ON (guestbooks.email = customers.email)
WHERE guestbooks.email IS NULL;


