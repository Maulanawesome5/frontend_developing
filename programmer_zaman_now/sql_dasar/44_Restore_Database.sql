SHOW DATABASES; -- untuk melihat daftar database yang tersedia
CREATE DATABASE belajar_mariadb; -- Membuat database
USE belajar_mariadb; -- untuk megakses database
SHOW TABLES; -- untuk melihat isi tabel di dalam database
SHOW ENGINES; -- Menampilkan STORAGE ENGINE


SELECT * FROM products; SELECT * FROM admins; SELECT * FROM customers; SELECT * FROM sellers;
SELECT * FROM categories; SELECT * FROM orders; SELECT * FROM orders_detail;
SELECT * FROM guestbooks; SELECT * FROM wallet; SELECT * FROM wishlist;


-- My keyboard error. copy paste -> g, G, h, H, '_', "_"


-- Backup Database
-- Saat membuat aplikasi menggunakan database, ada baiknya kita selalu melakukan backup data secara REGULER
-- MySQl mendukung proses bakcup database
-- Untuk melakukan backup database, kita tidak menggunakan perintah SQL seperti biasanya.
-- Sebab MySQL sudah menyediakan suatu aplikasi yang bertugas melakukan backup data, yaitu 'mysqldump'
-- Untuk tampilan, mysqldump berbasis tampilan command line, artinya dijalankan melalui CMD/terminal
-- Jika memakai MySQL dari instalasi XAMPP, maka backup bisa dilakukan melalui PHP My Admin
-- 
-- Saya akan coba dari Command Prompt
-- Masuk ke direktori "D:\LATIHAN PEMROGRAMAN\Frontend_Dev\programmer_zaman_now\sql_dasar"
-- Melalui CMD, ketik perintah seperti dibawah ini :
-- mysqldump.exe belajar_mariadb --user=root --result-file=belajar_mariadb.sql
-- 
-- Note : Bisa saya lakukan begitu karena MySQL yang dari XAMPP saya install ke System Environtment Variables
-- Note : Operating System yang saya pakai Windows 10


-- Restore Database
-- Selain melakukan backup database, di MySQL juga kita bisa melakukan proses restore data dari file hasil backup
-- Untuk melakukan restore database, kita bisa menggunakan aplikasi mysql client atau menggunakan perintah SOURCE
-- 
-- Caranya
-- Saya buat database baru bernama belajar_mariadb_import
-- Buka CMD / Terminal
-- Ketikkan perintah seperti di bawah ini :
-- mysql --user=root belajar_mariadb_import < "/LATIHAN PEMROGRAMAN/Frontend_Dev/programmer_zaman_now/sql_dasar/belajar_mariadb.sql"
-- 
-- Coba untuk akses database belajar_mariadb_import
-- Periksa semua tabel apakah sudah sesuai dengan hasil backup
-- 
-- 
-- 
-- Cara berikutnya
-- Saya buat database baru bernama belajar_mariadb_restore
-- 
-- Buka CMD / Terminal
-- Masuk ke MySQL dengan cara ketik perintah :
-- mysql -uroot
-- tekan enter (saya tanpa password)
-- 
-- Buat database baru : CREATE DATABASE belajar_mariadb_restore;
-- (Masih didalam MySQL di command prompt)
-- 
-- Selanjutnya ketik perintah di bawah ini
-- use belajar_mariadb_restore;
-- source /LATIHAN PEMROGRAMAN/Frontend_Dev/programmer_zaman_now/sql_dasar/belajar_mariadb.sql;
-- Tunggu sampai muncul tulisan "Query OK, 0 rows affected"
-- 
-- Jika selesai, cek setiap tabel di dalamnya
