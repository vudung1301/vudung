-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: javaweb16
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `seo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_internal_idx` (`parent_id`),
  CONSTRAINT `fk_self_joing` FOREIGN KEY (`parent_id`) REFERENCES `tbl_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa danh mục sản phẩm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (38,'python','python','2021-12-09 16:48:49','2022-07-25 21:35:57',NULL,NULL,NULL,1,'ngon-ngu-lap-trinh-pythoon1658759756652'),(39,'java','java','2021-12-12 09:55:04','2022-07-25 21:35:57',NULL,NULL,NULL,1,'ngon-ngu-lap-trinh-pythoon1658759756700');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `request_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `message` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa thông tin liên hệ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contact`
--

LOCK TABLES `tbl_contact` WRITE;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
INSERT INTO `tbl_contact` VALUES (12,NULL,NULL,'vuvandung1301@gmail.com',NULL,NULL,'2021-12-16 21:12:34',NULL,NULL,NULL,1),(14,NULL,NULL,'',NULL,NULL,'2022-01-11 15:29:55',NULL,NULL,NULL,1),(15,NULL,NULL,'',NULL,NULL,'2022-01-11 15:32:51',NULL,NULL,NULL,1),(16,NULL,NULL,'dsadasbdhfas',NULL,NULL,'2022-01-11 15:33:13',NULL,NULL,NULL,1),(17,NULL,NULL,'dsadasbdhfas',NULL,NULL,'2022-01-11 15:33:45',NULL,NULL,NULL,1),(18,NULL,NULL,'dsadasbdhfas',NULL,NULL,'2022-01-11 15:33:49',NULL,NULL,NULL,1),(19,NULL,NULL,'hello',NULL,NULL,'2022-01-11 19:53:18',NULL,NULL,NULL,1),(20,NULL,NULL,'hello',NULL,NULL,'2022-01-11 19:56:19',NULL,NULL,NULL,1),(21,NULL,NULL,'',NULL,NULL,'2022-01-11 19:56:21',NULL,NULL,NULL,1),(22,NULL,NULL,'hello',NULL,NULL,'2022-01-11 20:12:02',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `price_sale` decimal(13,2) DEFAULT NULL,
  `short_description` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `seo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_hot` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_category_products_idx` (`category_id`),
  CONSTRAINT `fk_category_products` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa danh mục sản phẩm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products`
--

LOCK TABLES `tbl_products` WRITE;
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` VALUES (176,'mi11 ultra',1100.00,NULL,'smartPhone','<p>smartPhone<br></p>','product/avatar/600_xiaomi-mi-11-ultra-xtmobile.jpg',38,NULL,NULL,NULL,NULL,1,'mi11-ultra',0),(177,'s20 ultra',1100.00,NULL,'','','product/avatar/samsung-galaxy-s20-ultra-128gb-didongviet_2.jpg',38,'2021-12-20 08:51:17',NULL,NULL,NULL,1,'s20-ultra',0),(179,'iphone 11 promax',1000.00,NULL,'','smartPhone','product/avatar/11-pro-max_1612693328.jpg',38,NULL,NULL,NULL,NULL,1,'iphone-11-promax',0),(181,'iphone 12 promax',1000.00,NULL,'','dsad','product/avatar/iphone_13-_pro-1_2.jpg',38,NULL,NULL,NULL,NULL,1,'iphone-12-promax',0),(183,'s22ultra',900.00,NULL,'smartPhone','dsa','product/avatar/samsung-galaxy-note-20-ultra-5g-trang-094920-014914.jpg',38,NULL,NULL,NULL,NULL,1,'s22ultra',0),(185,'s22ultraa',900.00,NULL,'smartPhone','smartPhone','product/avatar/s22ultra.jpg',38,NULL,NULL,NULL,NULL,1,'s22ultraa',0),(192,'iphone 14 promax',1000.00,NULL,'smartPhone','smartPhone','product/avatar/iphone_13-_pro-1_2.jpg',38,NULL,NULL,NULL,NULL,1,'iphone-14-promax',0),(207,'s22ultra',221.00,NULL,'smartPhone','<p>smartPhone<br></p>','product/avatar/s22ultra.jpg',38,'2022-01-11 18:37:58',NULL,NULL,NULL,1,'s22ultra',0);
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products_images`
--

DROP TABLE IF EXISTS `tbl_products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `product_id` int NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_product_images_idx` (`product_id`),
  CONSTRAINT `fk_product_images` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu danh sách ảnh sản phẩm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products_images`
--

LOCK TABLES `tbl_products_images` WRITE;
/*!40000 ALTER TABLE `tbl_products_images` DISABLE KEYS */;
INSERT INTO `tbl_products_images` VALUES (71,'hieu-nang-s20-ultra-didongviet.jfif','product/pictures/hieu-nang-s20-ultra-didongviet.jfif',177,NULL,NULL,NULL,NULL,1),(72,'thiet-ke-galaxy-s20-ultra-didongviet.jfif','product/pictures/thiet-ke-galaxy-s20-ultra-didongviet.jfif',177,NULL,NULL,NULL,NULL,1),(122,'iphone_13-_pro-1_2.jpg','product/pictures/iphone_13-_pro-1_2.jpg',181,NULL,NULL,NULL,NULL,1),(123,'iphone_13-_pro-5_4.jpg','product/pictures/iphone_13-_pro-5_4.jpg',181,NULL,NULL,NULL,NULL,1),(124,'iphone_13-_pro-5_4.jpg','product/pictures/iphone_13-_pro-5_4.jpg',192,NULL,NULL,NULL,NULL,1),(125,'iphone_13-_pro-1_2.jpg','product/pictures/iphone_13-_pro-1_2.jpg',179,NULL,NULL,NULL,NULL,1),(126,'iphone_13-_pro-5_4.jpg','product/pictures/iphone_13-_pro-5_4.jpg',179,NULL,NULL,NULL,NULL,1),(139,'iphone 11 promax xanh r�u onewaymobile.vn_1576217896_1.jpg','product/pictures/iphone 11 promax xanh r�u onewaymobile.vn_1576217896_1.jpg',183,NULL,NULL,NULL,NULL,1),(168,'thong-so-cau-hinh-samsung-galaxy-s22-ultra.jpg','product/pictures/thong-so-cau-hinh-samsung-galaxy-s22-ultra.jpg',207,NULL,NULL,NULL,NULL,1),(171,'s22ultra.jpg','product/pictures/s22ultra.jpg',185,NULL,NULL,NULL,NULL,1),(172,'2-1637337141-536-width660height440.jpg','product/pictures/2-1637337141-536-width660height440.jpg',176,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa thông tin roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles`
--

LOCK TABLES `tbl_roles` WRITE;
/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES (13,'ADMIN','ADMIN',NULL,NULL,NULL,NULL,1),(14,'GUEST','GUEST',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder`
--

DROP TABLE IF EXISTS `tbl_saleorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `total` decimal(13,2) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `customer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `customer_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `seo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `customer_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa phiếu mua hàng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder`
--

LOCK TABLES `tbl_saleorder` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder` DISABLE KEYS */;
INSERT INTO `tbl_saleorder` VALUES (38,'1641890290891',NULL,2700.00,'2022-01-11 15:38:11',NULL,NULL,NULL,1,'thuphuong','Cao Bằng',NULL,'0987655511','vuvandung1301@gmail.com'),(39,'1641906707403',NULL,2200.00,'2022-01-11 20:11:47',NULL,NULL,NULL,1,'thuphuong','Cao Bằng',NULL,'0987655511','vuvandung1301@gmail.com');
/*!40000 ALTER TABLE `tbl_saleorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder_products`
--

DROP TABLE IF EXISTS `tbl_saleorder_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `saleorder_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quality` int NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_saleorder_product_idx` (`saleorder_id`),
  KEY `fk_product_saleorder_idx` (`product_id`),
  CONSTRAINT `fk_product_saleorder` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_saleorder_product` FOREIGN KEY (`saleorder_id`) REFERENCES `tbl_saleorder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa phiếu mua hàng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder_products`
--

LOCK TABLES `tbl_saleorder_products` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder_products` DISABLE KEYS */;
INSERT INTO `tbl_saleorder_products` VALUES (53,39,176,2,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_saleorder_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_infor`
--

DROP TABLE IF EXISTS `tbl_user_infor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_infor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `phone_number` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `email_address` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_infor`
--

LOCK TABLES `tbl_user_infor` WRITE;
/*!40000 ALTER TABLE `tbl_user_infor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_user_infor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `address` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `phone_number` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa thông tin người dùng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (25,'vudung','$2a$10$jvdaOVAFIOtU9AUL9x1nluzyRYDHEVMKymKRCkT38B6XVF98FwrAm','vuvandung1301@gmail.com','2021-12-30 10:53:17',NULL,NULL,NULL,1,'','',''),(26,'tiendung','$2a$10$TbkFMKiCWbdOW9oRIfckNuf3lY6ZvREjcn1OZOBqb0Wz/Kp5lq.S.','tiendung@123','2021-12-31 23:25:27',NULL,NULL,NULL,1,'','',''),(27,'nguyenphuong','$2a$10$eFitdiBTO4oCUuHI/t/rP.NHUc9p/m17BdoXrYL5L6twefhx.2Sb6','nguyenthuphuong@123','2021-12-31 23:35:21',NULL,NULL,NULL,1,'','',''),(30,'vuvandung','$2a$10$7Ntc4mNjuZwe.KsphUcjGO7R/xeXGXF4.9/ldtC6d3UTmRpzjCd1a','vuvandung1301@gmail.com','2022-01-01 01:10:22',NULL,NULL,NULL,1,'','',''),(38,'thuphuong','$2a$10$MGl/cW.4GUz77R4M.hgUdupdnOCTh2pW/BcjftIH6qGBMJH.0cdmC','vuvandung1301@gmail.com','2022-01-08 15:31:20',NULL,NULL,NULL,1,'Cao Bằng','0987655511','Nguyễn Thu Phương'),(39,'manh123','$2a$10$Zf/PhVBHuhAMjPUxpWkfeeWaS5IWfqpYz0wYaO6zRSHbqZN4QLKM.','manh123@gmail.com','2022-01-10 21:06:39',NULL,NULL,NULL,1,'Hai Phong','123456789','Nguyen Tien Manh'),(40,'abc','$2a$10$dXPM7KH2yysO7XR3YxESOuEeUf2Ub4kNr1Fv.Yhh7dnHphPV1SMWS','vudung@gmail.com','2022-01-11 17:19:52',NULL,NULL,NULL,1,'bac giang','123','vu dung');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users_roles`
--

DROP TABLE IF EXISTS `tbl_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_roles_idx` (`role_id`),
  CONSTRAINT `fk_roles` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`id`),
  CONSTRAINT `fk_users` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='bảng trung gian thể hiện quan hệ n-n của users và roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users_roles`
--

LOCK TABLES `tbl_users_roles` WRITE;
/*!40000 ALTER TABLE `tbl_users_roles` DISABLE KEYS */;
INSERT INTO `tbl_users_roles` VALUES (25,13),(26,14),(27,14),(38,14),(39,14),(40,14);
/*!40000 ALTER TABLE `tbl_users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-25 21:49:41
