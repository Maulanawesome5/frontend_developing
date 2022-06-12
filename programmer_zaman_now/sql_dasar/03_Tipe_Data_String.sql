SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk melihat isi di dalam database
SHOW TABLES; -- untuk melihat isi tabel di dalam database


-- Tipe data STRING
-- CHAR dan VARCHAR
-- CHAR(10) atau VARCHAR(10) artinya tipe data string dengan maksimal jumlah karakternya adalah 10 karakter.
-- Maksimum ukuran CHAR dan VARCHAR adalah 65535 karakter.


-- Perbedaan CHAR dengan VARCHAR
-- Value        CHAR(4)         Penyimpanan         VARCHAR(4)      Penyimpanan
-- ''           '    '          4 byte              ''              1 byte
-- 'ab'         'ab  '          4 byte              'ab'            3 byte
-- 'abcd'       'abcd'          4 byte              'abcd'          5 byte
-- 'abcdefgh'   'abdc'          4 byte              'abcd'          5 byte


-- Tipe data TEXT
-- TINYTEXT     maksimal 255 karakter (~ 256 byte)
-- TEXT         maksimum 65535 karakter (~ 64 kb)
-- MEDIUMTEXT   maksimum 16777215 karakter (~ 16 mb)
-- LONGTEXT     maksimum 4294967295 karakter (~ 4 gb)


-- Tipe data ENUM
-- ENUM adalah tipe data string yang biasa digunakan untuk pilihan.
-- ENUM('Pria', 'Wanita')
-- ENUM('Makanan', 'Minuman', 'Snack')



