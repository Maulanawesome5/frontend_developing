SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk melihat isi di dalam database
SHOW TABLES; -- untuk melihat isi tabel di dalam database


-- Tipe data numbers integer
-- Nama tipe       Ukuran       Min Value                   Max Value           Min UNSIGNED    Max UNSIGNED
-- Tinyint        1 byte        -218                        127                     0           255
-- Smallint       2 byte        -32768                      32767                   0           65535
-- Mediumint      3 byte        -8388608                    8388607                 0           16777215
-- Int            4 byte        -2147483648                 2147483647              0           4294967295
-- BIGINT         8 byte        -9223372036854775808        9223372036854775807     0           18446744073709551615


-- Tipe data numbers floating point
-- Nama tipe       Ukuran       Min Value                   Max Value                       Min UNSIGNED                    Max UNSIGNED
-- Float           4 bytes      -3.402823466E+38            -1.175494351E-38                1.175494351E-38                 3.402823466E+38
-- Double          8 bytes      -1.7976931348623157E+308    -2.2250738585072014E-308        0,dan 2.225073855072014E-308    1.7976931348623157E+308

-- Tipe data decimal
-- Ini tipe data number khusus yang bisa ditentukan jumlah precision dan scale-nya.
-- Decimal              Minimal              Maximal
-- DECIMAL(5, 2)        -999.99              999.99
-- DECIMAL(5, 0)        -99999               99999
-- DECIMAL(3, 1)        -99.9                999
-- DECIMAL(3)           -999                 999

-- Number attribute
-- TYPE(n)     Dimana n adalah integer dan menampilkan jangkauan angka sampai n digit.
-- ZEROFILL    The default padding of spaces is replaced with zeros. So, for a column INT(3) ZEROFILL, 7 is displayed as 007.

