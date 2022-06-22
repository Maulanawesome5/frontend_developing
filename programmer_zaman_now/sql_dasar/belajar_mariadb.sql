-- MariaDB dump 10.19  Distrib 10.4.20-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: belajar_mariadb
-- ------------------------------------------------------
-- Server version	10.4.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Eko','Khannedy'),(2,'Budi','Nugraha'),(3,'Joko','Suseno'),(4,'Hernaldi','Kesatriawan'),(5,'Doddy','Ferdiansyah'),(6,'Aditya','Prasetya');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL DEFAULT 0,
  `jumlah` int(11) NOT NULL DEFAULT 0,
  `deskripsi` text DEFAULT NULL,
  `waktu_dibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang`
--

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` VALUES (1,'Apel',0,0,NULL,'2022-06-12 12:48:52');
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('C0001','Makanan'),('C0002','Minuman'),('C0003','Lain-Lain'),('C0004','Oleh-Oleh'),('C0005','Gadget');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'maulanawesome5@gmail.com','Maulana','Aji'),(2,'marini.tourtravels@gmail.com','Marini','Nasution'),(3,'dovan99@gmail.com','Dovan','Nasution'),(4,'samantha@nobi.com','Samantha','Lawrence'),(5,'bima_pandw2011@gmail.com','Bima','Pandu');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestbooks`
--

DROP TABLE IF EXISTS `guestbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestbooks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestbooks`
--

LOCK TABLES `guestbooks` WRITE;
/*!40000 ALTER TABLE `guestbooks` DISABLE KEYS */;
INSERT INTO `guestbooks` VALUES (1,'random_people1@guest.com','Apa Kabar','Apa Kabar'),(2,'random_people2@guest.com','Apa Kabar','Apa Kabar'),(3,'random_people3@guest.com','Apa Kabar','Apa Kabar'),(4,'maulanawesome5@gmail.com','Apa Kabar','Apa Kabar'),(5,'maulanawesome5@gmail.com','Apa Kabar','Apa Kabar'),(6,'maulanawesome5@gmail.com','Apa Kabar','Apa Kabar'),(7,'random_people01@tamu.com','tamu ke 1','apa kabar my friend'),(8,'random_people02@tamu.com','tamu ke 2','saya mau komplain'),(9,'random_people03@tamu.com','Diubah oleh user 2','saya berikan bintank 3');
/*!40000 ALTER TABLE `guestbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numbers`
--

DROP TABLE IF EXISTS `numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `numbers` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numbers`
--

LOCK TABLES `numbers` WRITE;
/*!40000 ALTER TABLE `numbers` DISABLE KEYS */;
INSERT INTO `numbers` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);
/*!40000 ALTER TABLE `numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,50000,'2022-06-21 12:37:45'),(2,50000,'2022-06-21 12:38:07'),(3,50000,'2022-06-21 12:38:09'),(4,50000,'2022-06-21 12:38:13');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_detail`
--

DROP TABLE IF EXISTS `orders_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_detail` (
  `id_product` varchar(10) NOT NULL,
  `id_order` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id_product`,`id_order`),
  KEY `fk_orders_detail_orders` (`id_order`),
  CONSTRAINT `fk_orders_detail_orders` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`),
  CONSTRAINT `fk_orders_detail_product` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_detail`
--

LOCK TABLES `orders_detail` WRITE;
/*!40000 ALTER TABLE `orders_detail` DISABLE KEYS */;
INSERT INTO `orders_detail` VALUES ('P0001',2,20000,2),('P0004',1,25000,1),('P0005',4,15000,2),('P0006',1,25000,1),('P0009',2,5000,2),('P0009',4,5000,2),('P0012',3,5000,1),('P0012',4,5000,2),('P0013',3,20000,1),('P0015',3,25000,1);
/*!40000 ALTER TABLE `orders_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `descriptions` text DEFAULT NULL,
  `price` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_category` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_categories` (`id_category`),
  FULLTEXT KEY `product_search` (`nama`,`descriptions`),
  CONSTRAINT `fk_product_categories` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`),
  CONSTRAINT `price_check` CHECK (`price` >= 1000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('P0001','Mie Ayam Original',NULL,20000,80,'2022-06-12 13:03:52','C0001'),('P0002','Mie Ayam Bakso Tahu','Mie Ayam Original + Tahu Bakso',20000,100,'2022-06-12 13:06:37','C0001'),('P0003','Mie Ayam Ceker','Mie Ayam + Ceker',20000,100,'2022-06-12 13:09:46','C0001'),('P0004','Mie Ayam Spesial',NULL,25000,100,'2022-06-12 13:09:46','C0001'),('P0005','Mie Ayam Yamin',NULL,15000,100,'2022-06-12 13:09:46','C0001'),('P0006','Bakso Rusuk',NULL,25000,200,'2022-06-12 16:21:00','C0001'),('P0007','Es Jeruk',NULL,10000,300,'2022-06-12 16:21:00','C0002'),('P0008','Es Campur',NULL,15000,500,'2022-06-12 16:21:00','C0002'),('P0009','Es Teh Manis',NULL,5000,400,'2022-06-12 16:21:00','C0002'),('P0010','Kerupuk',NULL,2500,1000,'2022-06-12 16:21:00','C0003'),('P0011','Keripik Udang',NULL,10000,300,'2022-06-12 16:21:00','C0003'),('P0012','Es Krim',NULL,5000,200,'2022-06-12 16:21:00','C0003'),('P0013','Mie Ayam Jamur',NULL,20000,50,'2022-06-12 16:21:00','C0001'),('P0014','Bakso Kikil',NULL,20000,150,'2022-06-12 16:21:00','C0001'),('P0015','Bakso Babat',NULL,25000,300,'2022-06-12 16:21:00','C0001'),('P0016','Permen',NULL,1000,1000,'2022-06-20 11:01:20','C0003'),('x0001','Dummy data 1',NULL,27000,150,'2022-06-21 06:30:21',NULL),('x0002','Dummy data 2',NULL,14500,300,'2022-06-21 06:30:21',NULL),('x0003','Dummy data 3',NULL,51000,500,'2022-06-21 06:30:21',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sellers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nama2` varchar(100) DEFAULT NULL,
  `nama3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_unique` (`email`),
  KEY `name_index` (`nama`),
  KEY `nama2_index` (`nama2`),
  KEY `nama3_index` (`nama3`),
  KEY `nama1_nama2_nama3_index` (`nama`,`nama2`,`nama3`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fk_id_customer_unique` (`id_customer`),
  CONSTRAINT `fk_wallet_customer` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet`
--

LOCK TABLES `wallet` WRITE;
/*!40000 ALTER TABLE `wallet` DISABLE KEYS */;
INSERT INTO `wallet` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0);
/*!40000 ALTER TABLE `wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` varchar(10) NOT NULL,
  `descriptions` text DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_wishlist_product` (`id_product`),
  KEY `fk_wishlist_customer` (`id_customer`),
  CONSTRAINT `fk_wishlist_customer` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`),
  CONSTRAINT `fk_wishlist_product` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,'P0001','Makanan Kesukaan',1);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-23  1:11:39
