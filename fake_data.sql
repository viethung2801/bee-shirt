-- Tài khoản khách hàng: 0963277913/Hung2003
-- Tài khoản admin : duongviethung2003@gmail.com/123456
-- Tài khoản nhân viên: hungboong30@gmail.com/123456

CREATE DATABASE  IF NOT EXISTS `datn-bee-shirt` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `datn-bee-shirt`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: datn-bee-shirt
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trang_thai` bit(1) NOT NULL,
  `forget_pwd_verify_code` varchar(255) DEFAULT NULL,
  `mat_khau` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `ten_dang_nhap` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,_binary '',NULL,'$2a$10$C/TmpHxcNKt3L5lQm4NUB.9.Kd45cFKholW2Ibi0r2kn8cSxE7BzO','ROLE_ADMIN','langcoc@gmail.com'),(2,_binary '',NULL,'$2a$10$C/TmpHxcNKt3L5lQm4NUB.9.Kd45cFKholW2Ibi0r2kn8cSxE7BzO','ROLE_CUSTOMER','0375773852'),(3,_binary '',NULL,'$2a$10$WZy8CMj/J8qlb1Yz8Kywie0WDSxUyvSX68k3kvvzR6T.TQFS9rggu','ROLE_CUSTOMER','0375773851'),(4,_binary '',NULL,'$2a$10$boEjt3LgOLrzurBYR54yWeOz7AsQxsdz6KFutZ14Y/pJihuFbbEwW','ROLE_CUSTOMER','0333333333'),(5,_binary '',NULL,'$2a$10$C/TmpHxcNKt3L5lQm4NUB.9.Kd45cFKholW2Ibi0r2kn8cSxE7BzO','ROLE_ADMIN','hohao2001@gmail.com'),(6,_binary '\0',NULL,'$2a$10$lrMrrJrQLy01GNOm8ynz.eRmc4EZL/wHRcZRJpgBHFwYXsi4E4Zna','ROLE_ADMIN','vantuan28@gmail.com'),(7,_binary '',NULL,'$2a$10$ujd0hvvhy53Bx1QTDUxeR.SI5up53gucrSiIJesroevcuO3TXcfpa','ROLE_ADMIN','anhtunguyen05@gmail.com'),(8,_binary '',NULL,'$2a$10$C/TmpHxcNKt3L5lQm4NUB.9.Kd45cFKholW2Ibi0r2kn8cSxE7BzO','ROLE_ADMIN','duongviethung2003@gmail.com'),(9,_binary '',NULL,'$2a$10$kUowZpdjyKxWxMJw7KA3kONo7eJ3/IFyRglBpdn7XtJxNaML.qPTq','ROLE_CUSTOMER','0901234567'),(10,_binary '',NULL,'$2a$10$Xs.o9K.o5Nf27Pnxjd8L/.jdsaMUsGGFLTQcUer5e4yko.CBukZWS','ROLE_CUSTOMER','0902234567'),(11,_binary '',NULL,'$2a$10$BlURGAE2dNZcj1csjGDqH.nU28wI83Y5M2n74otLpprnh1PLhza9W','ROLE_CUSTOMER','0903234567'),(12,_binary '',NULL,'$2a$10$VCnQfQROOBysEuvLzjdz7OgC/z52kIMQshHDGwdvbF9uXRJ74PZY6','ROLE_CUSTOMER','0904234567'),(13,_binary '',NULL,'$2a$10$QWXwY7SXB7L.IBoeINBcaO5IYaa9TYcJ69EOfSEJF421qLMS4ha8q','ROLE_CUSTOMER','0905234567'),(14,_binary '',NULL,'$2a$10$KAyE1FW5rhihQCjg73w3aenTqBCSKBuDgbuQVumGlMbMbq7SErn8i','ROLE_CUSTOMER','0906234567'),(15,_binary '',NULL,'$2a$10$IA7sgQZyoMfIyYODlGiW8uYfapm8F7PMGvZlGOwfe/RBJDikmb4sC','ROLE_CUSTOMER','0907234567'),(16,_binary '',NULL,'$2a$10$7Ir5phJ6dKWSAJTFFEiYPOzEZt/XogLnmAWUb6xiunbKD0J2bghNa','ROLE_CUSTOMER','0909234567'),(17,_binary '',NULL,'$2a$10$izghr.yaBiZO/5kwEHWJXO4guRvLnU/AnteMzvAhlP7dUQw/0n.ZS','ROLE_CUSTOMER','0911234567'),(18,_binary '',NULL,'$2a$10$ON6DyK.H2mYiNmH8EqYIS.qd73pmey4TaOyXqCHwQOTbUkYKcFPzS','ROLE_CUSTOMER','0913234567'),(19,_binary '',NULL,'$2a$10$ZNPR9yvKXyEispIERQnosexyYo7Fz2groXbJF2tkFTdLB2.L3/XEa','ROLE_CUSTOMER','0915234567'),(20,_binary '',NULL,'$2a$10$fRDW1VS3DFAUbqpLQdr8Vean8D21MCGBRehuPGw9vkY3bxWCnR2zK','ROLE_CUSTOMER','0919234567'),(21,_binary '',NULL,'$2a$10$EQOav3T1uqTVhNl.pBQkUeHMbX2N0CWYaNmSbOCUCaqSsHe2JKBiO','ROLE_CUSTOMER','0921234567'),(22,_binary '',NULL,'$2a$10$f7nfCRJiRZj/qg/GJFl8nupSaAKsTVgJgQNiGOobRVTgjpEEM767y','ROLE_CUSTOMER','0922234567'),(23,_binary '',NULL,'$2a$10$Etm7btDxNUwiCbOqKMw50.68PvXon7INsuB.y1uXv3kZauoZsMXOi','ROLE_CUSTOMER','0924234567'),(24,_binary '',NULL,'$2a$10$C/TmpHxcNKt3L5lQm4NUB.9.Kd45cFKholW2Ibi0r2kn8cSxE7BzO','ROLE_STAFF','hungdvph29421@fpt.edu.vn'),(25,_binary '',NULL,'$2a$10$QH6.2mxqXe.asngm43eqxew69Ifyi07Ab4VN1XsRW7IKLWHLZioX.','ROLE_ADMIN','hungboong30@gmail.com'),(26,_binary '',NULL,'$2a$10$nSk0KkoRiN848ONm5EMiJOzflbGvDyAJ/6EP68H/rA4X9Evl3.5FO','ROLE_CUSTOMER','0375773850'),(27,_binary '',NULL,'$2a$10$xl3KS5C17dZtDveNqp5h6eIXaagcLrkXHbiNyRHz5Yge0swYIOqUi','ROLE_STAFF','hungdvph29422@fpt.edu.vn'),(28,_binary '',NULL,'$2a$10$vD12.qApqT.g3gWIRYIJAOk2z/CdQRCrHg8R7GskenbAGlufdM1ou','ROLE_CUSTOMER','0963277913'),(29,_binary '',NULL,'$2a$10$E0gIjLE2nbi7A7vsuciUYO8wx4tjA3YCwEu3xsTbkzCMeB0iKfwSO','ROLE_CUSTOMER','0963277914'),(30,_binary '',NULL,'$2a$10$yYgFd..yVEDP.NmsbC1ikuxDm376gHQI48Q0ERAI9FP.yQbf2z3da','ROLE_CUSTOMER','0378328133'),(31,_binary '',NULL,'$2a$10$WPtzB80KhtSL2jvlR5SW0u11KhH5vQZ8V01mOtYyS4wGcjPkLHK6a','ROLE_CUSTOMER','0333665781'),(32,_binary '',NULL,'$2a$10$8Nhz9YjmhqzI1QskNoPVLe2c8z7tCCa./AGvGdEU5Sfc8mjAyM/EK','ROLE_CUSTOMER','0365487974'),(33,_binary '',NULL,'$2a$10$jDKg5YA9YAngFV9xZYzi5e9d50WZsJFRumLYCfT9v83XOeNE7xsEm','ROLE_CUSTOMER','0612533044'),(34,_binary '',NULL,'$2a$10$sH5LUyiTY6tPv27MQiwd7.ueCM5cdpgAXYu4TxxBsN6d1fxZAd5o2','ROLE_ADMIN','hungviet@gmail.com');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_lieu`
--

DROP TABLE IF EXISTS `chat_lieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_lieu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trang_thai` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_lieu`
--

LOCK TABLES `chat_lieu` WRITE;
/*!40000 ALTER TABLE `chat_lieu` DISABLE KEYS */;
INSERT INTO `chat_lieu` VALUES (1,_binary '','2024-04-25 22:41:01.931233',NULL,'admin0203',NULL,'Denim'),(2,_binary '','2024-04-25 22:41:25.104764','2024-04-25 22:41:38.521261','admin0203','admin0203','Cotton 100%'),(4,_binary '','2024-04-25 22:41:59.270845',NULL,'admin0203',NULL,'Lanh'),(5,_binary '','2024-04-25 22:42:05.572543',NULL,'admin0203',NULL,'Nhung tăm'),(6,_binary '','2024-04-25 22:43:11.555960',NULL,'admin0203',NULL,'Kaki'),(7,_binary '','2024-04-25 22:43:31.632801',NULL,'admin0203',NULL,'Voan'),(8,_binary '','2024-05-02 23:02:14.281334',NULL,'duongviethung2003@gmail.com',NULL,'Vải sợi tổng hợp');
/*!40000 ALTER TABLE `chat_lieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_ao`
--

DROP TABLE IF EXISTS `co_ao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_ao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trang_thai` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_ao`
--

LOCK TABLES `co_ao` WRITE;
/*!40000 ALTER TABLE `co_ao` DISABLE KEYS */;
INSERT INTO `co_ao` VALUES (1,_binary '','2024-04-25 22:44:26.668190','2024-04-25 22:46:33.156661','admin0203','admin0203','Cổ tròn'),(2,_binary '','2024-04-25 22:45:15.559470',NULL,'admin0203',NULL,'Cổ cao'),(3,_binary '\0','2024-04-25 22:45:24.458980','2024-04-27 15:25:09.581335','admin0203','admin0203','Cổ nhọn'),(4,_binary '','2024-04-25 22:46:26.583173',NULL,'admin0203',NULL,'Cổ xòe'),(5,_binary '','2024-04-25 22:47:27.534334','2024-04-25 22:51:51.474343','admin0203','admin0203','Cổ chữ V');
/*!40000 ALTER TABLE `co_ao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danh_sach_chi_tiet`
--

DROP TABLE IF EXISTS `danh_sach_chi_tiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danh_sach_chi_tiet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `khach_hang_id` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_j4ki5uri6jth6sadv3c329joa` (`khach_hang_id`),
  CONSTRAINT `FK1hreicpwti9f262xnh5ssfilo` FOREIGN KEY (`khach_hang_id`) REFERENCES `khach_hang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danh_sach_chi_tiet`
--

LOCK TABLES `danh_sach_chi_tiet` WRITE;
/*!40000 ALTER TABLE `danh_sach_chi_tiet` DISABLE KEYS */;
INSERT INTO `danh_sach_chi_tiet` VALUES (1,3,'2024-04-27 10:05:48.485728',NULL,'admin0203',NULL),(2,4,'2024-04-30 09:36:23.614061',NULL,'admin0203',NULL),(3,5,'2024-04-30 09:38:59.134294',NULL,'admin0203',NULL),(4,6,'2024-04-30 09:40:10.580364',NULL,'admin0203',NULL),(5,7,'2024-04-30 09:41:20.670182',NULL,'admin0203',NULL),(6,8,'2024-04-30 09:42:48.152548',NULL,'admin0203',NULL),(7,9,'2024-04-30 09:44:18.069168',NULL,'admin0203',NULL),(8,10,'2024-04-30 09:45:55.463598',NULL,'admin0203',NULL),(9,11,'2024-04-30 09:52:26.763394',NULL,'admin0203',NULL),(10,12,'2024-04-30 09:54:37.328753',NULL,'admin0203',NULL),(11,13,'2024-04-30 10:02:50.344369',NULL,'admin0203',NULL),(12,14,'2024-04-30 10:07:08.426309',NULL,'admin0203',NULL),(13,15,'2024-04-30 10:09:27.106718',NULL,'admin0203',NULL),(14,16,'2024-04-30 10:10:43.433133',NULL,'admin0203',NULL),(15,17,'2024-04-30 10:17:44.666570',NULL,'admin0203',NULL),(16,18,'2024-04-30 10:18:57.317091',NULL,'admin0203',NULL),(17,19,'2024-04-30 22:48:58.276828',NULL,'admin0203',NULL),(18,21,'2024-05-01 10:36:23.311536',NULL,'admin0203',NULL),(19,23,'2024-05-01 21:29:39.490834',NULL,'hohao2001@gmail.com',NULL),(20,24,'2024-05-01 21:42:41.271200',NULL,'hohao2001@gmail.com',NULL),(21,25,'2024-05-02 23:28:54.967179',NULL,'duongviethung2003@gmail.com',NULL);
/*!40000 ALTER TABLE `danh_sach_chi_tiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia_chi`
--

DROP TABLE IF EXISTS `dia_chi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dia_chi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `khach_hang_id` int DEFAULT NULL,
  `mac_dinh` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `duong` varchar(255) DEFAULT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `huyen` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `tinh` varchar(255) DEFAULT NULL,
  `xa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbbd8bxqdl1w9vhasn86u0q9w3` (`khach_hang_id`),
  CONSTRAINT `FKbbd8bxqdl1w9vhasn86u0q9w3` FOREIGN KEY (`khach_hang_id`) REFERENCES `khach_hang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia_chi`
--

LOCK TABLES `dia_chi` WRITE;
/*!40000 ALTER TABLE `dia_chi` DISABLE KEYS */;
INSERT INTO `dia_chi` VALUES (1,1,_binary '','2024-04-26 21:15:52.810269',NULL,'admin0203','Nhà 99',NULL,'Huyện Chương Mỹ',NULL,NULL,'Hà Nội','Xã Đại Yên'),(2,2,_binary '','2024-04-26 21:43:32.480373',NULL,'admin0203','Ngõ 30',NULL,'Huyện Kim Bôi',NULL,NULL,'Hòa Bình','Xã Nật Sơn'),(3,3,_binary '','2024-04-27 10:05:48.476190',NULL,'admin0203','gảews',NULL,'Huyện Sơn Hòa',NULL,NULL,'Phú Yên','Xã Sơn Nguyên'),(4,4,_binary '','2024-04-30 09:36:23.519879',NULL,'admin0203','123 Đường Trần Phú',NULL,'Huyện Hòa Vang',NULL,NULL,'Đà Nẵng','Xã Hòa Nhơn'),(5,5,_binary '','2024-04-30 09:38:59.047069',NULL,'admin0203','Đường Trần Phú',NULL,'Huyện Đan Phượng',NULL,NULL,'Hà Nội','Xã Hồng Hà'),(6,6,_binary '','2024-04-30 09:40:10.485423',NULL,'admin0203','Đường Hùng Vương',NULL,'Huyện Phú Tân',NULL,NULL,'Cà Mau','Xã Rạch Chèo'),(7,7,_binary '','2024-04-30 09:41:20.571166',NULL,'admin0203','Đường Lê Lợi',NULL,'Huyện Đức Linh',NULL,NULL,'Bình Thuận','Xã Nam Chính'),(8,8,_binary '','2024-04-30 09:42:48.054519',NULL,'admin0203','Đường Nguyễn Thị Minh Khai',NULL,'Thị xã Mường Lay',NULL,NULL,'Điện Biên','Phường Sông Đà'),(9,9,_binary '','2024-04-30 09:44:17.971792',NULL,'admin0203','Đường Lê Lợi',NULL,'Huyện Phú Lộc',NULL,NULL,'Thừa Thiên - Huế','Xã Lộc Hòa'),(10,10,_binary '','2024-04-30 09:45:55.367341',NULL,'admin0203','Đường Nguyễn Huệ',NULL,'Huyện Lâm Bình',NULL,NULL,'Tuyên Quang','Xã Thổ Bình'),(11,11,_binary '','2024-04-30 09:52:26.662119',NULL,'admin0203','Đường Hòa Bình',NULL,'Huyện Hương Sơn',NULL,NULL,'Hà Tĩnh','Xã Sơn Tây'),(12,12,_binary '','2024-04-30 09:54:37.229360',NULL,'admin0203',' Đường Lê Thánh Tôn',NULL,'Huyện Ninh Hải',NULL,NULL,'Ninh Thuận','Xã Nhơn Hải'),(13,13,_binary '','2024-04-30 10:02:50.246464',NULL,'admin0203','Đường Nguyễn Huệ',NULL,'Huyện Sa Thầy',NULL,NULL,'Kon Tum','Xã Ya ly'),(14,14,_binary '','2024-04-30 10:07:08.045094',NULL,'admin0203','Đường Nguyễn Thị Minh Khai',NULL,'Huyện Dầu Tiếng',NULL,NULL,'Bình Dương','Xã Minh Hoà'),(15,15,_binary '','2024-04-30 10:09:27.014186',NULL,'admin0203','nhà 30',NULL,'Huyện Gia Bình',NULL,NULL,'Bắc Ninh','Xã Đông Cứu'),(16,16,_binary '','2024-04-30 10:10:43.343656',NULL,'admin0203','nhà 44',NULL,'Huyện Tân Biên',NULL,NULL,'Tây Ninh','Xã Tân Lập'),(17,17,_binary '','2024-04-30 10:17:44.571936',NULL,'admin0203','Đường Lê Lợi',NULL,'Huyện Võ Nhai',NULL,NULL,'Thái Nguyên','Xã Dân Tiến'),(18,18,_binary '','2024-04-30 10:18:57.224232',NULL,'admin0203','nhà 66',NULL,'Huyện Ba Chẽ',NULL,NULL,'Quảng Ninh','Xã Minh Cầm'),(19,19,_binary '','2024-04-30 22:48:58.261836',NULL,'admin0203','đường quốc lộ 6',NULL,'Huyện Chương Mỹ',NULL,NULL,'Hà Nội','Xã Đại Yên'),(20,20,_binary '','2024-05-01 10:32:42.277965',NULL,'anonymousUser','nhà 99','Dương Nguyễn Trung','Huyện Sìn Hồ',NULL,'0963277913','Lai Châu','Xã Phăng Sô Lin'),(21,21,_binary '','2024-05-01 10:36:23.301523',NULL,'admin0203','ngõ 30/4',NULL,'Huyện Đầm Dơi',NULL,NULL,'Cà Mau','Xã Tạ An Khương Đông'),(22,22,_binary '','2024-05-01 10:39:56.199940',NULL,'admin0203','nhà 30',NULL,'Huyện Yên Châu',NULL,NULL,'Sơn La','Xã Chiềng Sàng'),(23,1,_binary '\0','2024-05-01 16:25:28.511723',NULL,'hohao2001@gmail.com','Nhà 30',NULL,'Huyện Xuyên Mộc',NULL,NULL,'Bà Rịa - Vũng Tàu','Xã Hòa Hưng'),(24,23,_binary '','2024-05-01 21:29:39.481959',NULL,'hohao2001@gmail.com','nhà 99',NULL,'Huyện Ngọc Hồi',NULL,NULL,'Kon Tum','Xã Đắk Kan'),(25,24,_binary '','2024-05-01 21:42:41.266726',NULL,'hohao2001@gmail.com','nhà 30',NULL,'Huyện Đầm Dơi',NULL,NULL,'Cà Mau','Xã Tạ An Khương Đông'),(26,25,_binary '','2024-05-02 23:28:54.958640',NULL,'duongviethung2003@gmail.com','nhà 33',NULL,'Thành phố Yên Bái',NULL,NULL,'Yên Bái','Xã Tuy Lộc');
/*!40000 ALTER TABLE `dia_chi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dot_giam_gia`
--

DROP TABLE IF EXISTS `dot_giam_gia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dot_giam_gia` (
  `gia_tri_phan_tram` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `trang_thai` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `ma_dot_giam_gia` varchar(255) DEFAULT NULL,
  `ten_dot_giam_gia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dot_giam_gia`
--

LOCK TABLES `dot_giam_gia` WRITE;
/*!40000 ALTER TABLE `dot_giam_gia` DISABLE KEYS */;
INSERT INTO `dot_giam_gia` VALUES (12,1,0,'2024-04-30 14:12:25.452514','2024-04-30 14:22:57.886774','admin0203','admin0203','DGGF926CC8','Mừng đại lễ'),(12,2,0,'2024-04-30 14:23:30.373501',NULL,'admin0203',NULL,'DGG6D0F430','Tri ân'),(15,3,0,'2024-04-30 21:07:40.805124',NULL,'admin0203',NULL,'DGG1D59863','Khuyến mãi giờ vàng'),(15,4,1,'2024-05-01 20:42:51.632419','2024-05-01 21:08:06.471193','hohao2001@gmail.com','hohao2001@gmail.com','DGGCA2B0EF','Mừng đại lễ'),(10,5,1,'2024-05-02 23:24:09.092158',NULL,'duongviethung2003@gmail.com',NULL,'DGG356889C','Sale Ngày Vui');
/*!40000 ALTER TABLE `dot_giam_gia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dot_giam_gia_san_pham`
--

DROP TABLE IF EXISTS `dot_giam_gia_san_pham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dot_giam_gia_san_pham` (
  `dot_giam_gia_id` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `san_pham_chi_tiet_id` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `thoi_gian_bat_dau` datetime(6) DEFAULT NULL,
  `thoi_gian_ket_thuc` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjbtk25k8sxmitbpkof4f8auwk` (`dot_giam_gia_id`),
  KEY `FKjdh6kribb549mwwgej7br6so4` (`san_pham_chi_tiet_id`),
  CONSTRAINT `FKjbtk25k8sxmitbpkof4f8auwk` FOREIGN KEY (`dot_giam_gia_id`) REFERENCES `dot_giam_gia` (`id`),
  CONSTRAINT `FKjdh6kribb549mwwgej7br6so4` FOREIGN KEY (`san_pham_chi_tiet_id`) REFERENCES `san_pham_chi_tiet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dot_giam_gia_san_pham`
--

LOCK TABLES `dot_giam_gia_san_pham` WRITE;
/*!40000 ALTER TABLE `dot_giam_gia_san_pham` DISABLE KEYS */;
INSERT INTO `dot_giam_gia_san_pham` VALUES (1,1,13,'2024-04-30 14:12:25.615835','2024-04-30 14:11:00.000000','2024-04-30 16:11:00.000000',NULL,'admin0203',NULL),(1,2,14,'2024-04-30 14:12:25.715044','2024-04-30 14:11:00.000000','2024-04-30 16:11:00.000000',NULL,'admin0203',NULL),(1,3,15,'2024-04-30 14:12:25.808718','2024-04-30 14:11:00.000000','2024-04-30 16:11:00.000000',NULL,'admin0203',NULL),(1,4,16,'2024-04-30 14:12:25.910509','2024-04-30 14:11:00.000000','2024-04-30 16:11:00.000000',NULL,'admin0203',NULL),(1,5,17,'2024-04-30 14:12:26.008747','2024-04-30 14:11:00.000000','2024-04-30 16:11:00.000000',NULL,'admin0203',NULL),(1,6,18,'2024-04-30 14:12:26.109161','2024-04-30 14:11:00.000000','2024-04-30 16:11:00.000000',NULL,'admin0203',NULL),(1,7,19,'2024-04-30 14:12:26.201792','2024-04-30 14:11:00.000000','2024-04-30 16:11:00.000000',NULL,'admin0203',NULL),(1,8,20,'2024-04-30 14:12:26.295831','2024-04-30 14:11:00.000000','2024-04-30 16:11:00.000000',NULL,'admin0203',NULL),(1,9,21,'2024-04-30 14:12:26.391706','2024-04-30 14:11:00.000000','2024-04-30 16:11:00.000000',NULL,'admin0203',NULL),(1,10,37,'2024-04-30 14:12:26.487220','2024-04-30 14:11:00.000000','2024-04-30 16:11:00.000000',NULL,'admin0203',NULL),(1,11,38,'2024-04-30 14:12:26.586859','2024-04-30 14:11:00.000000','2024-04-30 16:11:00.000000',NULL,'admin0203',NULL),(1,12,39,'2024-04-30 14:12:26.683210','2024-04-30 14:11:00.000000','2024-04-30 16:11:00.000000',NULL,'admin0203',NULL),(2,13,1,'2024-04-30 14:23:30.517671','2024-04-30 14:23:00.000000','2024-04-30 15:23:00.000000',NULL,'admin0203',NULL),(2,14,2,'2024-04-30 14:23:30.612797','2024-04-30 14:23:00.000000','2024-04-30 15:23:00.000000',NULL,'admin0203',NULL),(2,15,3,'2024-04-30 14:23:30.712708','2024-04-30 14:23:00.000000','2024-04-30 15:23:00.000000',NULL,'admin0203',NULL),(2,16,4,'2024-04-30 14:23:30.808828','2024-04-30 14:23:00.000000','2024-04-30 15:23:00.000000',NULL,'admin0203',NULL),(2,17,5,'2024-04-30 14:23:30.907756','2024-04-30 14:23:00.000000','2024-04-30 15:23:00.000000',NULL,'admin0203',NULL),(2,18,6,'2024-04-30 14:23:31.002825','2024-04-30 14:23:00.000000','2024-04-30 15:23:00.000000',NULL,'admin0203',NULL),(2,19,7,'2024-04-30 14:23:31.099723','2024-04-30 14:23:00.000000','2024-04-30 15:23:00.000000',NULL,'admin0203',NULL),(2,20,8,'2024-04-30 14:23:31.196022','2024-04-30 14:23:00.000000','2024-04-30 15:23:00.000000',NULL,'admin0203',NULL),(2,21,9,'2024-04-30 14:23:31.295302','2024-04-30 14:23:00.000000','2024-04-30 15:23:00.000000',NULL,'admin0203',NULL),(3,22,2,'2024-04-30 21:07:40.814667','2024-04-30 21:08:00.000000','2024-04-30 22:07:00.000000',NULL,'admin0203',NULL),(3,23,3,'2024-04-30 21:07:40.818178','2024-04-30 21:08:00.000000','2024-04-30 22:07:00.000000',NULL,'admin0203',NULL),(3,24,4,'2024-04-30 21:07:40.821210','2024-04-30 21:08:00.000000','2024-04-30 22:07:00.000000',NULL,'admin0203',NULL),(3,25,5,'2024-04-30 21:07:40.824210','2024-04-30 21:08:00.000000','2024-04-30 22:07:00.000000',NULL,'admin0203',NULL),(4,26,37,'2024-05-01 20:42:51.687127','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000','2024-05-01 21:08:06.500769','hohao2001@gmail.com','hohao2001@gmail.com'),(4,27,38,'2024-05-01 20:42:51.692124','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000','2024-05-01 21:08:06.501770','hohao2001@gmail.com','hohao2001@gmail.com'),(4,28,39,'2024-05-01 20:42:51.695127','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000','2024-05-01 21:08:06.501770','hohao2001@gmail.com','hohao2001@gmail.com'),(4,29,71,'2024-05-01 20:42:51.699647','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000','2024-05-01 21:08:06.501770','hohao2001@gmail.com','hohao2001@gmail.com'),(4,30,72,'2024-05-01 20:42:51.703647','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000','2024-05-01 21:08:06.501770','hohao2001@gmail.com','hohao2001@gmail.com'),(4,31,73,'2024-05-01 20:42:51.707647','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000','2024-05-01 21:08:06.501770','hohao2001@gmail.com','hohao2001@gmail.com'),(4,32,74,'2024-05-01 20:42:51.710849','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000','2024-05-01 21:08:06.501770','hohao2001@gmail.com','hohao2001@gmail.com'),(4,33,75,'2024-05-01 20:42:51.714850','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000','2024-05-01 21:08:06.502770','hohao2001@gmail.com','hohao2001@gmail.com'),(4,34,76,'2024-05-01 20:42:51.717848','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000','2024-05-01 21:08:06.502770','hohao2001@gmail.com','hohao2001@gmail.com'),(4,35,77,'2024-05-01 20:42:51.721849','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000','2024-05-01 21:08:06.502770','hohao2001@gmail.com','hohao2001@gmail.com'),(4,36,78,'2024-05-01 20:42:51.724851','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000','2024-05-01 21:08:06.502770','hohao2001@gmail.com','hohao2001@gmail.com'),(4,37,79,'2024-05-01 20:42:51.728848','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000','2024-05-01 21:08:06.502770','hohao2001@gmail.com','hohao2001@gmail.com'),(4,38,80,'2024-05-01 20:42:51.731847','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000','2024-05-01 21:08:06.502770','hohao2001@gmail.com','hohao2001@gmail.com'),(4,39,10,'2024-05-01 21:08:30.299947','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000',NULL,'hohao2001@gmail.com',NULL),(4,40,11,'2024-05-01 21:08:30.305511','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000',NULL,'hohao2001@gmail.com',NULL),(4,41,12,'2024-05-01 21:08:30.310504','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000',NULL,'hohao2001@gmail.com',NULL),(4,42,22,'2024-05-01 21:08:30.315049','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000',NULL,'hohao2001@gmail.com',NULL),(4,43,23,'2024-05-01 21:08:30.319055','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000',NULL,'hohao2001@gmail.com',NULL),(4,44,24,'2024-05-01 21:08:30.322051','2024-05-01 20:42:00.000000','2024-05-08 21:42:00.000000',NULL,'hohao2001@gmail.com',NULL),(5,45,13,'2024-05-02 23:24:09.102735','2024-05-02 23:24:00.000000','2024-05-03 00:23:00.000000',NULL,'duongviethung2003@gmail.com',NULL),(5,46,14,'2024-05-02 23:24:09.107730','2024-05-02 23:24:00.000000','2024-05-03 00:23:00.000000',NULL,'duongviethung2003@gmail.com',NULL),(5,47,15,'2024-05-02 23:24:09.111239','2024-05-02 23:24:00.000000','2024-05-03 00:23:00.000000',NULL,'duongviethung2003@gmail.com',NULL),(5,48,16,'2024-05-02 23:24:09.114243','2024-05-02 23:24:00.000000','2024-05-03 00:23:00.000000',NULL,'duongviethung2003@gmail.com',NULL),(5,49,17,'2024-05-02 23:24:09.117246','2024-05-02 23:24:00.000000','2024-05-03 00:23:00.000000',NULL,'duongviethung2003@gmail.com',NULL),(5,50,18,'2024-05-02 23:24:09.121776','2024-05-02 23:24:00.000000','2024-05-03 00:23:00.000000',NULL,'duongviethung2003@gmail.com',NULL),(5,51,19,'2024-05-02 23:24:09.125775','2024-05-02 23:24:00.000000','2024-05-03 00:23:00.000000',NULL,'duongviethung2003@gmail.com',NULL),(5,52,20,'2024-05-02 23:24:09.129289','2024-05-02 23:24:00.000000','2024-05-03 00:23:00.000000',NULL,'duongviethung2003@gmail.com',NULL),(5,53,21,'2024-05-02 23:24:09.132799','2024-05-02 23:24:00.000000','2024-05-03 00:23:00.000000',NULL,'duongviethung2003@gmail.com',NULL);
/*!40000 ALTER TABLE `dot_giam_gia_san_pham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_yeu_thich_chi_tiet`
--

DROP TABLE IF EXISTS `ds_yeu_thich_chi_tiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ds_yeu_thich_chi_tiet` (
  `gio_hang_id` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `so_luong` int NOT NULL,
  `spct_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk0ju90jenuk49d4l6gdkbgq4f` (`gio_hang_id`),
  KEY `FK7gj8e3cffejlrkrv4855bkabh` (`spct_id`),
  CONSTRAINT `FK7gj8e3cffejlrkrv4855bkabh` FOREIGN KEY (`spct_id`) REFERENCES `san_pham_chi_tiet` (`id`),
  CONSTRAINT `FKk0ju90jenuk49d4l6gdkbgq4f` FOREIGN KEY (`gio_hang_id`) REFERENCES `danh_sach_chi_tiet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_yeu_thich_chi_tiet`
--

LOCK TABLES `ds_yeu_thich_chi_tiet` WRITE;
/*!40000 ALTER TABLE `ds_yeu_thich_chi_tiet` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_yeu_thich_chi_tiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gio_hang`
--

DROP TABLE IF EXISTS `gio_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gio_hang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `khach_hang_id` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_l2kj7mgai2gvxdsli3yf35w2h` (`khach_hang_id`),
  CONSTRAINT `FKtfg3dplbmn3wiwy26si1daye3` FOREIGN KEY (`khach_hang_id`) REFERENCES `khach_hang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gio_hang`
--

LOCK TABLES `gio_hang` WRITE;
/*!40000 ALTER TABLE `gio_hang` DISABLE KEYS */;
INSERT INTO `gio_hang` VALUES (1,3,'2024-04-27 10:05:48.481725',NULL,'admin0203',NULL),(2,4,'2024-04-30 09:36:23.565274',NULL,'admin0203',NULL),(3,5,'2024-04-30 09:38:59.090616',NULL,'admin0203',NULL),(4,6,'2024-04-30 09:40:10.537042',NULL,'admin0203',NULL),(5,7,'2024-04-30 09:41:20.623601',NULL,'admin0203',NULL),(6,8,'2024-04-30 09:42:48.103893',NULL,'admin0203',NULL),(7,9,'2024-04-30 09:44:18.021324',NULL,'admin0203',NULL),(8,10,'2024-04-30 09:45:55.415741',NULL,'admin0203',NULL),(9,11,'2024-04-30 09:52:26.715008',NULL,'admin0203',NULL),(10,12,'2024-04-30 09:54:37.279338',NULL,'admin0203',NULL),(11,13,'2024-04-30 10:02:50.296419',NULL,'admin0203',NULL),(12,14,'2024-04-30 10:07:08.216886',NULL,'admin0203',NULL),(13,15,'2024-04-30 10:09:27.060853',NULL,'admin0203',NULL),(14,16,'2024-04-30 10:10:43.388276',NULL,'admin0203',NULL),(15,17,'2024-04-30 10:17:44.619945',NULL,'admin0203',NULL),(16,18,'2024-04-30 10:18:57.271259',NULL,'admin0203',NULL),(17,19,'2024-04-30 22:48:58.268862',NULL,'admin0203',NULL),(18,21,'2024-05-01 10:36:23.307525',NULL,'admin0203',NULL),(19,20,'2024-05-01 11:37:07.218672',NULL,'0963277913',NULL),(20,23,'2024-05-01 21:29:39.486834',NULL,'hohao2001@gmail.com',NULL),(21,24,'2024-05-01 21:42:41.268735',NULL,'hohao2001@gmail.com',NULL),(22,25,'2024-05-02 23:28:54.962185',NULL,'duongviethung2003@gmail.com',NULL);
/*!40000 ALTER TABLE `gio_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gio_hang_chi_tiet`
--

DROP TABLE IF EXISTS `gio_hang_chi_tiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gio_hang_chi_tiet` (
  `gio_hang_id` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `so_luong` int NOT NULL,
  `spct_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa5oymui7wplf9fwttmw8v1o3o` (`gio_hang_id`),
  KEY `FKcvkcb0n1ghigo34hxlf5w30vu` (`spct_id`),
  CONSTRAINT `FKa5oymui7wplf9fwttmw8v1o3o` FOREIGN KEY (`gio_hang_id`) REFERENCES `gio_hang` (`id`),
  CONSTRAINT `FKcvkcb0n1ghigo34hxlf5w30vu` FOREIGN KEY (`spct_id`) REFERENCES `san_pham_chi_tiet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gio_hang_chi_tiet`
--

LOCK TABLES `gio_hang_chi_tiet` WRITE;
/*!40000 ALTER TABLE `gio_hang_chi_tiet` DISABLE KEYS */;
/*!40000 ALTER TABLE `gio_hang_chi_tiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hinh_anh`
--

DROP TABLE IF EXISTS `hinh_anh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hinh_anh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_id` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinh_anh`
--

LOCK TABLES `hinh_anh` WRITE;
/*!40000 ALTER TABLE `hinh_anh` DISABLE KEYS */;
INSERT INTO `hinh_anh` VALUES (1,'nm0hewhk5bhjx9kz12oi','ao2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714140299/nm0hewhk5bhjx9kz12oi.webp'),(2,'rx4q4bfsvqnybrwizjzp','ao3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714140299/rx4q4bfsvqnybrwizjzp.webp'),(3,'wk54iq9wmeh7ga9xfwnb','ao1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714140300/wk54iq9wmeh7ga9xfwnb.webp'),(4,'i1bdbzu5jsn6meam96rs','partern1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714190686/i1bdbzu5jsn6meam96rs.webp'),(5,'szlck0t7qqmw7cjljhjr','partern2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714190689/szlck0t7qqmw7cjljhjr.webp'),(6,'don92gdpvzmooueel7kh','partern3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714190691/don92gdpvzmooueel7kh.jpg'),(7,'zz67386imkzzhsffgtuu','spred1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714191158/zz67386imkzzhsffgtuu.webp'),(8,'qkaz25xausvppkeusnd4','spred2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714191158/qkaz25xausvppkeusnd4.webp'),(9,'cj3zqw3cigr4pxfumgbo','spred3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714191158/cj3zqw3cigr4pxfumgbo.webp'),(10,'eqevd1ra7wiyqxvhcssz','ao4','http://res.cloudinary.com/dpsryzyev/image/upload/v1714191301/eqevd1ra7wiyqxvhcssz.webp'),(11,'lhtzbjgxhpyecxchngs5','ao5jpg','http://res.cloudinary.com/dpsryzyev/image/upload/v1714191303/lhtzbjgxhpyecxchngs5.jpg'),(12,'iqile7rvixyq1sfih5p6','ao6','http://res.cloudinary.com/dpsryzyev/image/upload/v1714191305/iqile7rvixyq1sfih5p6.jpg'),(13,'yonwkus7jmxw22obizfs','craft2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714192121/yonwkus7jmxw22obizfs.webp'),(14,'allorhsehmotkpgrnf3d','craft3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714192121/allorhsehmotkpgrnf3d.webp'),(15,'zxcbwqtj4flloupdsdqx','craft1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714192122/zxcbwqtj4flloupdsdqx.webp'),(16,'s6rcz1dstqmmczbltjj2','craft4','http://res.cloudinary.com/dpsryzyev/image/upload/v1714192123/s6rcz1dstqmmczbltjj2.webp'),(17,'kdxwqlmexbn0er2lhshi','maze1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714202981/kdxwqlmexbn0er2lhshi.jpg'),(18,'zdv1e03e7ebkremqwky1','maze2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714202984/zdv1e03e7ebkremqwky1.webp'),(19,'nrw4gr3cfanpaald9cin','old1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714203424/nrw4gr3cfanpaald9cin.jpg'),(20,'cuoybgpwiamaaefevmhf','old2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714203427/cuoybgpwiamaaefevmhf.jpg'),(21,'kb3zqx5dqcnjgy4xuzrl','old3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714203425/kb3zqx5dqcnjgy4xuzrl.webp'),(22,'ohgrlj2cwoiyeiecewlv','old4','http://res.cloudinary.com/dpsryzyev/image/upload/v1714203427/ohgrlj2cwoiyeiecewlv.webp'),(23,'etd9hctynvxbywqgcjgi','denim1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714203717/etd9hctynvxbywqgcjgi.jpg'),(24,'rn2m6vurmijillaczuag','denim2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714203718/rn2m6vurmijillaczuag.webp'),(25,'okhpauettcdafmriw4a0','denim3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714203720/okhpauettcdafmriw4a0.webp'),(26,'kx1b2cb899atmiq2hndk','ao-den','http://res.cloudinary.com/dpsryzyev/image/upload/v1714204533/kx1b2cb899atmiq2hndk.webp'),(27,'mojfqmlidwod4whaxkvu','caro2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714204533/mojfqmlidwod4whaxkvu.webp'),(28,'hs79fibfzj6qwb29domv','caro3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714204533/hs79fibfzj6qwb29domv.webp'),(29,'fjs7tzdrooxvid7402dl','fabric1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714204948/fjs7tzdrooxvid7402dl.webp'),(30,'mlwsfp7qvtkqvw4i0aez','fabric3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714204948/mlwsfp7qvtkqvw4i0aez.webp'),(31,'bkinh9nacoxyvl6eznq6','fabric2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714204952/bkinh9nacoxyvl6eznq6.webp'),(32,'vyccuxth1gei9qtvsuet','stripe1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714205188/vyccuxth1gei9qtvsuet.webp'),(33,'caixhqdtvukpvo2v8kv5','stripe2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714205191/caixhqdtvukpvo2v8kv5.webp'),(34,'ftokoox5fqi5qqdhrd3p','stripe3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714205193/ftokoox5fqi5qqdhrd3p.webp'),(35,'an2ywvoqhgtumxfwdrhg','rymthm1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714205409/an2ywvoqhgtumxfwdrhg.webp'),(36,'ln0y4bq3nqhxdrz3c2nv','rymthm2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714205410/ln0y4bq3nqhxdrz3c2nv.webp'),(37,'eoduzwwjt72td0gvp8fx','rymthm3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714205413/eoduzwwjt72td0gvp8fx.webp'),(38,'cui6vlcnlsew3sgxkmwu','newyork3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714205732/cui6vlcnlsew3sgxkmwu.webp'),(39,'tacxz5twxc96cat6uhro','newyork1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714205732/tacxz5twxc96cat6uhro.webp'),(40,'bjwptboz7si2ttrkauej','newyork2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714205734/bjwptboz7si2ttrkauej.webp'),(41,'kssui6ytijcbsgpbrsl2','portransit3jpg','http://res.cloudinary.com/dpsryzyev/image/upload/v1714205991/kssui6ytijcbsgpbrsl2.jpg'),(42,'gv4jn0lvatvlis1o0qx6','portransit2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714205993/gv4jn0lvatvlis1o0qx6.jpg'),(43,'oxtif5xl7l2tr2ca2tbh','portransit','http://res.cloudinary.com/dpsryzyev/image/upload/v1714205994/oxtif5xl7l2tr2ca2tbh.webp'),(44,'b3oek5yzll1dneho8xli','spring1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714206429/b3oek5yzll1dneho8xli.webp'),(45,'bxkn0otvlyjwlfaq4qjd','spring2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714206431/bxkn0otvlyjwlfaq4qjd.webp'),(46,'uozkbbn5f7hoclfz3gka','spring3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714206433/uozkbbn5f7hoclfz3gka.webp'),(47,'fv5cjqpy6nfvnwotnes8','mysterius1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714206641/fv5cjqpy6nfvnwotnes8.jpg'),(48,'xkueplvhktn1d6t7mcb3','mysterius2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714206644/xkueplvhktn1d6t7mcb3.jpg'),(49,'jvnkf3wbodmlzg9a2u7j','mysterius3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714206647/jvnkf3wbodmlzg9a2u7j.jpg'),(50,'oy8u9hnmhy0vaitohile','elegant2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714206964/oy8u9hnmhy0vaitohile.webp'),(51,'ditvjdhdo2xeh7bh5sil','elegant1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714206965/ditvjdhdo2xeh7bh5sil.webp'),(52,'qdppzjlckkagttvhgn53','elegant3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714206965/qdppzjlckkagttvhgn53.webp'),(53,'lveik7qqrqhwqwexfrdy','relaxed1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714207248/lveik7qqrqhwqwexfrdy.webp'),(54,'rj7neot0ifiqg5aa5dyv','relaxed2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714207251/rj7neot0ifiqg5aa5dyv.jpg'),(55,'eev6xb7fxu8nuf0tgyyx','relaxed3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714207248/eev6xb7fxu8nuf0tgyyx.jpg'),(56,'ufoz3inxfvo0x7vznfnb','relaxed4','http://res.cloudinary.com/dpsryzyev/image/upload/v1714207251/ufoz3inxfvo0x7vznfnb.jpg'),(57,'fnig1djkdsysvuumcbhc','henley','http://res.cloudinary.com/dpsryzyev/image/upload/v1714207545/fnig1djkdsysvuumcbhc.webp'),(58,'sv6za0okathfrbqo4zsq','henley2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714207547/sv6za0okathfrbqo4zsq.webp'),(59,'s75t9e2yrvkk80mbydbu','henley3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714207546/s75t9e2yrvkk80mbydbu.webp'),(60,'uhwr9ngmnyyomwq0cpgy','henley4','http://res.cloudinary.com/dpsryzyev/image/upload/v1714207548/uhwr9ngmnyyomwq0cpgy.webp'),(61,'uxqbperyagn84wu0aabc','ao2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714656973/uxqbperyagn84wu0aabc.webp'),(62,'vwoq2vepvuzgi72evhu0','ao-so-mi-3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714656974/vwoq2vepvuzgi72evhu0.webp'),(63,'gusbtomxxugatrk4prg7','henley','http://res.cloudinary.com/dpsryzyev/image/upload/v1714656974/gusbtomxxugatrk4prg7.webp'),(64,'gio7bdebezqwhcuqabzx','henley2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714656976/gio7bdebezqwhcuqabzx.webp'),(65,'cnjjzy7jcekwczkshcmp','ao-trang','http://res.cloudinary.com/dpsryzyev/image/upload/v1714665977/cnjjzy7jcekwczkshcmp.webp'),(66,'ztlrfjhjlaehzzm4m7hu','caro3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714665979/ztlrfjhjlaehzzm4m7hu.webp'),(67,'yl68dcl8ecbhqvho8ewx','elegant1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714665978/yl68dcl8ecbhqvho8ewx.webp'),(68,'aydh2lb8tevq6jq6wxrv','henley3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714665980/aydh2lb8tevq6jq6wxrv.webp'),(69,'vve0wudueitx9mziwqsx','ao2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714665977/vve0wudueitx9mziwqsx.webp'),(70,'t5c2frvqrbbtmruvijtw','ao-so-mi-3','http://res.cloudinary.com/dpsryzyev/image/upload/v1714665980/t5c2frvqrbbtmruvijtw.webp');
/*!40000 ALTER TABLE `hinh_anh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hinh_thuc_thanh_toan`
--

DROP TABLE IF EXISTS `hinh_thuc_thanh_toan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hinh_thuc_thanh_toan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `hinh_thuc` enum('TIEN_MAT','CHUYEN_KHOAN') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinh_thuc_thanh_toan`
--

LOCK TABLES `hinh_thuc_thanh_toan` WRITE;
/*!40000 ALTER TABLE `hinh_thuc_thanh_toan` DISABLE KEYS */;
INSERT INTO `hinh_thuc_thanh_toan` VALUES (1,NULL,NULL,NULL,NULL,'TIEN_MAT'),(2,NULL,NULL,NULL,NULL,'CHUYEN_KHOAN');
/*!40000 ALTER TABLE `hinh_thuc_thanh_toan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoa_don`
--

DROP TABLE IF EXISTS `hoa_don`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoa_don` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_khach_hang` int DEFAULT NULL,
  `id_nhan_vien` int DEFAULT NULL,
  `id_phieu_giam_gia` int DEFAULT NULL,
  `phi_van_chuyen` decimal(38,2) DEFAULT NULL,
  `tien_giam` decimal(38,2) DEFAULT NULL,
  `tong_tien` decimal(38,2) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `dia_chi_nguoi_nhan` varchar(255) DEFAULT NULL,
  `email_nguoi_nhan` varchar(255) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `ma` varchar(255) DEFAULT NULL,
  `sdt_nguoi_nhan` varchar(255) DEFAULT NULL,
  `ten_nguoi_nhan` varchar(255) DEFAULT NULL,
  `loai_hoa_don` enum('TAI_QUAY','GIAO_HANG') DEFAULT NULL,
  `trang_thai` enum('TAO_DON','CHO_XAC_NHAN','DA_XAC_NHAN','CHO_GIAO','DANG_GIAO','HOAN_THANH','HUY','TRA_HANG','HOAN_TIEN','CHO_HOAN_TIEN','DA_HOAN_TIEN') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrygimdf5nr1g2t6u03gvtr1te` (`id_khach_hang`),
  KEY `FKkuxkrkgq8yftm4d8d7o0w6nbv` (`id_nhan_vien`),
  KEY `FKmueylgcm7h1gb4f9nbnp3j5c6` (`id_phieu_giam_gia`),
  CONSTRAINT `FKkuxkrkgq8yftm4d8d7o0w6nbv` FOREIGN KEY (`id_nhan_vien`) REFERENCES `nhan_vien` (`id`),
  CONSTRAINT `FKmueylgcm7h1gb4f9nbnp3j5c6` FOREIGN KEY (`id_phieu_giam_gia`) REFERENCES `phieu_giam_gia` (`id`),
  CONSTRAINT `FKrygimdf5nr1g2t6u03gvtr1te` FOREIGN KEY (`id_khach_hang`) REFERENCES `khach_hang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoa_don`
--

LOCK TABLES `hoa_don` WRITE;
/*!40000 ALTER TABLE `hoa_don` DISABLE KEYS */;
INSERT INTO `hoa_don` VALUES (1,NULL,1,NULL,0.00,0.00,1500000.00,'2024-04-26 21:05:24.683069','2024-04-26 21:05:24.726074','admin0203',NULL,NULL,NULL,'admin0203','HDf75dce8',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(2,NULL,1,NULL,0.00,0.00,1500000.00,'2024-04-26 21:06:26.729095','2024-04-26 21:06:26.802106','admin0203',NULL,NULL,NULL,'admin0203','HDB48110A',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(3,1,1,NULL,25300.00,0.00,6000000.00,'2024-03-02 21:13:11.677663','2024-04-27 09:30:18.413068','admin0203','Nhà 99,Xã Đại Yên,Huyện Chương Mỹ,Hà Nội','duongviethung2003@gmail.com',NULL,'admin0203','HDAD07836','0345649831','Nguyễn Văn Hiếu','GIAO_HANG','DA_HOAN_TIEN'),(4,2,1,NULL,25301.00,0.00,3000000.00,'2024-03-02 21:13:11.677663','2024-04-26 21:45:39.165180','admin0203','Ngõ 30,Xã Nật Sơn,Huyện Kim Bôi,Hòa Bình',NULL,NULL,'admin0203','HDC532412','0375773850','Dương Việt Hùng','GIAO_HANG','CHO_XAC_NHAN'),(5,NULL,1,NULL,25301.00,0.00,1500000.00,'2024-04-26 21:51:12.448792','2024-05-02 21:48:05.625755','admin0203','vfwsd,Xã Vĩnh Tiến,Huyện Kim Bôi,Hòa Bình',NULL,NULL,'duongviethung2003@gmail.com','HD4584966','0999999999','qgfe','GIAO_HANG','DA_HOAN_TIEN'),(6,NULL,1,NULL,0.00,0.00,1340000.00,'2024-04-29 17:37:29.531970','2024-04-29 17:37:30.208168','admin0203',NULL,NULL,NULL,'admin0203','HD62A13E8',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(7,1,1,NULL,0.00,0.00,890000.00,'2024-04-29 17:38:22.161826','2024-04-29 17:38:22.705031','admin0203',NULL,NULL,NULL,'admin0203','HD20C7154',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(8,1,1,NULL,25300.00,0.00,3780000.00,'2024-03-02 21:13:11.677663','2024-04-29 17:45:13.083204','admin0203','Nhà 99,Xã Đại Yên,Huyện Chương Mỹ,Hà Nội',NULL,NULL,'admin0203','HD7C3729F','0345649831','Nguyễn Văn Hiếu','GIAO_HANG','HOAN_THANH'),(9,NULL,1,NULL,25301.00,0.00,2820000.00,'2024-04-29 17:47:31.051015','2024-04-29 17:49:25.668813','admin0203','33/5,Xã Nà Tăm,Huyện Tam Đường,Lai Châu',NULL,'khách đổi địa chỉ','admin0203','HD70C77C5','0955673821','Phạm Văn Tú','GIAO_HANG','CHO_GIAO'),(10,8,1,2,0.00,100000.00,1290000.00,'2024-04-30 17:03:25.380862','2024-04-30 17:03:25.430670','admin0203',NULL,NULL,NULL,'admin0203','HD848F8EE',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(11,2,1,NULL,25301.00,192000.00,1600000.00,'2024-04-30 17:06:53.756449','2024-05-02 21:45:40.001181','admin0203','Ngõ 30,Xã Nật Sơn,Huyện Kim Bôi,Hòa Bình',NULL,NULL,'duongviethung2003@gmail.com','HD087DEBE','0375773850','Dương Việt Hùng','GIAO_HANG','DA_HOAN_TIEN'),(12,3,1,5,58301.00,144000.00,1200000.00,'2024-04-30 17:08:38.387186','2024-04-30 17:23:50.347101','admin0203','Nhà 99,Xã Sơn Nguyên,Huyện Sơn Hòa,Phú Yên',NULL,NULL,'admin0203','HDB7E4123','0333333333','Trần Văn Bình','GIAO_HANG','DANG_GIAO'),(13,1,1,3,25300.00,10000.00,400000.00,'2024-04-30 17:10:36.264294','2024-04-30 17:24:04.969381','admin0203','Nhà 99,Xã Đại Yên,Huyện Chương Mỹ,Hà Nội',NULL,NULL,'admin0203','HDEB3E4EE','0345649831','Nguyễn Văn Hiếu','GIAO_HANG','DANG_GIAO'),(14,1,1,3,25300.00,10000.00,400000.00,'2024-04-30 17:17:00.302229','2024-04-30 17:24:18.438539','admin0203','Nhà 99,Xã Đại Yên,Huyện Chương Mỹ,Hà Nội',NULL,NULL,'admin0203','HD7283D8D','0345649831','Nguyễn Văn Hiếu','GIAO_HANG','CHO_GIAO'),(15,2,1,NULL,25301.00,10000.00,1700000.00,'2024-04-30 17:20:07.249591','2024-04-30 19:23:00.110438','admin0203','Ngõ 30,Xã Nật Sơn,Huyện Kim Bôi,Hòa Bình',NULL,NULL,'admin0203','HD54488D2','0375773850','Dương Việt Hùng','GIAO_HANG','HUY'),(16,2,1,NULL,25301.00,10000.00,1000000.00,'2024-04-30 17:23:41.868501','2024-04-30 17:25:00.777540','admin0203','Ngõ 30,Xã Nật Sơn,Huyện Kim Bôi,Hòa Bình','hungboong30@gmail.com',NULL,'admin0203','HD1427082','0375773850','Dương Việt Hùng','GIAO_HANG','HUY'),(17,NULL,1,3,0.00,10000.00,490000.00,'2024-04-30 18:57:27.454612','2024-04-30 18:57:27.564953','admin0203',NULL,NULL,NULL,'admin0203','HD517939C',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(21,5,1,3,0.00,10000.00,3600000.00,'2024-03-02 21:13:11.677663','2024-04-30 19:00:57.937554','admin0203',NULL,NULL,NULL,'admin0203','HD424D3E9',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(22,14,1,NULL,58301.00,0.00,980000.00,'2024-04-30 19:02:23.759013','2024-04-30 19:13:32.457872','admin0203','Đường Nguyễn Thị Minh Khai,Xã Minh Hoà,Huyện Dầu Tiếng,Bình Dương','nguyen.van.son@gmail.com',NULL,'admin0203','HDA3E0C1F','0915234567','Nguyễn Văn Sơn','GIAO_HANG','DA_XAC_NHAN'),(23,9,1,NULL,0.00,0.00,10100000.00,'2024-01-02 21:13:11.677663','2024-04-30 19:10:41.885485','admin0203',NULL,NULL,NULL,'admin0203','HDB4E3929',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(24,10,1,NULL,0.00,0.00,1390000.00,'2024-04-30 19:15:42.727623','2024-04-30 19:15:42.758813','admin0203',NULL,NULL,NULL,'admin0203','HDD86E9A0',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(25,18,1,NULL,0.00,0.00,1600000.00,'2024-04-30 19:18:16.516456','2024-04-30 19:18:16.546049','admin0203',NULL,NULL,NULL,'admin0203','HD5D6A794',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(26,7,1,NULL,0.00,0.00,630000.00,'2024-04-30 19:19:53.461892','2024-04-30 19:19:53.495980','admin0203',NULL,NULL,NULL,'admin0203','HD5D7E57E',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(27,6,1,NULL,0.00,0.00,1000000.00,'2024-04-30 19:22:24.286240','2024-04-30 19:22:24.364822','admin0203',NULL,NULL,NULL,'admin0203','HDEC7E27C',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(28,NULL,1,6,0.00,50000.00,1200000.00,'2024-04-30 21:14:18.536125','2024-04-30 21:14:18.556186','admin0203',NULL,NULL,NULL,'admin0203','HD1B4D911',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(29,NULL,1,6,0.00,50000.00,950000.00,'2024-04-30 21:16:41.302625','2024-04-30 21:16:41.321790','admin0203',NULL,NULL,NULL,'admin0203','HDBD97814',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(30,19,NULL,3,0.00,10000.00,2000000.00,'2024-04-30 23:21:33.791087','2024-04-30 23:22:53.177728','0375773850','đường quốc lộ 6, Xã Đại Yên, Huyện Chương Mỹ, Hà Nội','duongviethung2003@gmail.com',NULL,'admin0203','HDAF87E65',NULL,NULL,'GIAO_HANG','DANG_GIAO'),(31,20,NULL,NULL,0.00,0.00,1500000.00,'2024-05-01 14:08:50.418127','2024-05-02 21:46:33.700278','0963277913','nhà 99, Xã Phăng Sô Lin, Huyện Sìn Hồ, Lai Châu','softwareviet88@gmail.com',NULL,'duongviethung2003@gmail.com','HD08E428C','0963277913','Dương Nguyễn Trung','GIAO_HANG','DA_HOAN_TIEN'),(32,NULL,12,NULL,25301.00,0.00,400000.00,'2024-05-01 14:36:54.850251','2024-05-02 21:43:12.794444','hohao2001@gmail.com','nhà 99656,Xã Sáng Nhè,Huyện Tủa Chùa,Điện Biên','duongviethung2003@gmail.com',NULL,'duongviethung2003@gmail.com','HDF253FB3','0375773850','hungdv','GIAO_HANG','DA_HOAN_TIEN'),(33,NULL,12,NULL,25301.00,0.00,400000.00,'2024-05-01 15:23:43.883168','2024-05-02 21:42:31.281666','hohao2001@gmail.com','99999,Xã Yên Lạc,Huyện Yên Thủy,Điện Biên','',NULL,'duongviethung2003@gmail.com','HD3391EC3','0375773850','Hùng','GIAO_HANG','HUY'),(34,1,12,NULL,58301.00,0.00,400000.00,'2024-05-01 16:29:54.228588','2024-05-02 21:40:05.849709','hohao2001@gmail.com','Nhà 99/7,Xã Vĩnh Lợi,Huyện Thạnh Trị,Sóc Trăng','duong.viet.hung@gmail.com',NULL,'duongviethung2003@gmail.com','HDD66F379','0345649831','Nguyễn Văn Hiếu','GIAO_HANG','HUY'),(35,7,12,NULL,0.00,0.00,932500.00,'2024-05-01 20:47:00.816150','2024-05-01 20:47:00.848838','hohao2001@gmail.com',NULL,NULL,NULL,'hohao2001@gmail.com','HDCDD736E',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(36,NULL,12,9,0.00,200000.00,2050000.00,'2024-05-01 21:20:11.879367','2024-05-01 21:20:11.901023','hohao2001@gmail.com',NULL,NULL,NULL,'hohao2001@gmail.com','HD03A016E',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(37,NULL,12,8,0.00,70000.00,1380000.00,'2024-05-01 21:20:45.940970','2024-05-01 21:20:45.959241','hohao2001@gmail.com',NULL,NULL,NULL,'hohao2001@gmail.com','HD5EDA137',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(38,9,12,8,0.00,70000.00,1360000.00,'2024-05-01 21:21:38.758561','2024-05-01 21:21:38.775092','hohao2001@gmail.com',NULL,NULL,NULL,'hohao2001@gmail.com','HDC1CA97E',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(39,NULL,15,9,0.00,200000.00,19000000.00,'2024-01-02 21:13:11.677663','2024-05-02 20:57:42.967425','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HD1E750F8',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(40,NULL,15,9,0.00,200000.00,25260000.00,'2024-04-02 21:13:11.677663','2024-05-02 20:58:42.607337','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HD4B8ADC5',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(41,NULL,15,9,0.00,200000.00,18600000.00,'2024-01-02 21:13:11.677663','2024-05-02 20:59:13.961292','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HDEB9C79F',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(42,5,15,9,0.00,200000.00,36500000.00,'2024-04-02 21:13:11.677663','2024-05-02 21:00:12.735503','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HD0AA0423',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(43,10,15,9,0.00,200000.00,19780000.00,'2024-04-02 21:13:11.677663','2024-05-02 21:00:52.213262','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HD86FE9A0',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(44,NULL,15,9,0.00,200000.00,56500000.00,'2024-03-02 21:13:11.677663','2024-05-02 21:01:51.454465','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HDB27FDE0',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(45,NULL,15,NULL,0.00,0.00,55560016.00,'2024-03-02 21:13:11.677663','2024-05-02 21:03:29.017095','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HD5811D3E',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(46,1,15,NULL,0.00,0.00,36200000.00,'2024-04-02 21:13:11.677663','2024-05-02 21:04:05.923072','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HDC6A3C79',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(47,4,15,NULL,0.00,0.00,62700000.00,'2024-02-02 21:13:11.677663','2024-05-02 21:04:47.578671','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HD339D97A',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(48,6,15,NULL,0.00,0.00,29042000.00,'2024-04-02 21:13:11.677663','2024-05-02 21:05:22.759663','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HDE963122',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(49,NULL,15,NULL,0.00,0.00,49462500.00,'2024-03-02 21:13:11.677663','2024-05-02 21:05:58.655846','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HD230F684',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(50,NULL,15,NULL,0.00,0.00,30147500.00,'2024-04-02 21:13:11.677663','2024-05-02 21:06:32.640039','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HD16FEC9A',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(51,8,15,NULL,0.00,0.00,47300000.00,'2024-04-02 21:13:11.677663','2024-05-02 21:07:15.968486','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HDD952391',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(52,NULL,15,NULL,0.00,0.00,39350000.00,'2024-04-02 21:13:11.677663','2024-05-02 21:07:57.059359','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HDADD05AA',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(53,NULL,15,NULL,0.00,0.00,24050000.00,'2024-02-02 21:13:11.677663','2024-05-02 21:08:36.937905','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HD3FC1FC9',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(54,3,15,NULL,0.00,0.00,25750000.00,'2024-04-02 21:13:11.677663','2024-05-02 21:10:17.950919','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HDEFBECDD',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(55,NULL,15,NULL,0.00,0.00,32000032.00,'2024-04-02 21:13:11.677663','2024-05-02 21:11:31.322733','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HD89FF04A',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(56,NULL,15,NULL,0.00,0.00,110080000.00,'2024-02-02 21:13:11.677663','2024-05-02 21:12:11.765903','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HD11AAEA8',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(57,1,15,NULL,0.00,0.00,251100000.00,'2024-01-02 21:13:11.677663','2024-05-02 21:13:11.698683','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HD561A12A',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(58,1,15,NULL,58301.00,0.00,1500000.00,'2024-05-02 21:38:41.153474','2024-05-02 21:39:08.971733','duongviethung2003@gmail.com','Nhà 30,Xã Hòa Hưng,Huyện Xuyên Mộc,Bà Rịa - Vũng Tàu','duong.viet.hung@gmail.com',NULL,'duongviethung2003@gmail.com','HDB10203A','0345649831','Nguyễn Văn Hiếu','GIAO_HANG','DA_HOAN_TIEN'),(59,1,15,NULL,58301.00,0.00,1500000.00,'2024-05-02 21:48:57.313906','2024-05-02 21:49:15.832417','duongviethung2003@gmail.com','Nhà 30,Xã Hòa Hưng,Huyện Xuyên Mộc,Bà Rịa - Vũng Tàu','duong.viet.hung@gmail.com',NULL,'duongviethung2003@gmail.com','HD26E18B2','0345649831','Nguyễn Văn Hiếu','GIAO_HANG','DA_HOAN_TIEN'),(60,2,15,NULL,25301.00,0.00,1500000.00,'2024-05-02 21:50:47.882978','2024-05-02 21:51:10.093472','duongviethung2003@gmail.com','Ngõ 30,Xã Nật Sơn,Huyện Kim Bôi,Hòa Bình','hungboong30@gmail.com',NULL,'duongviethung2003@gmail.com','HD30BFFB5','0375773851','Dương Việt Hùng','GIAO_HANG','DA_HOAN_TIEN'),(61,9,15,NULL,58301.00,0.00,4500000.00,'2024-05-02 21:52:09.128059','2024-05-02 21:52:33.682647','duongviethung2003@gmail.com','Đường Lê Lợi,Xã Lộc Hòa,Huyện Phú Lộc,Thừa Thiên - Huế','do.thi.hoa@gmail.com',NULL,'duongviethung2003@gmail.com','HD99D9E81','0906234567','Đỗ Thị Hoa','GIAO_HANG','DA_HOAN_TIEN'),(62,20,NULL,NULL,25301.00,0.00,2210000.00,'2024-05-02 21:59:55.004096',NULL,'0963277913','nhà 99, Xã Phăng Sô Lin, Huyện Sìn Hồ, Lai Châu','softwareviet88@gmail.com',NULL,NULL,'HDCE73B11','0963277913','Dương Nguyễn Trung','GIAO_HANG','CHO_XAC_NHAN'),(63,2,15,NULL,0.00,0.00,3200000.00,'2024-05-02 22:01:22.433900','2024-05-02 22:01:22.449928','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HDA6074FC',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(64,4,15,NULL,0.00,0.00,2180000.00,'2024-05-02 22:01:51.179803','2024-05-02 22:01:51.201397','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HD3CBEC0E',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(65,3,15,NULL,58301.00,0.00,5200000.00,'2024-05-02 22:02:40.008888','2024-05-02 22:02:40.021308','duongviethung2003@gmail.com','gảews,Xã Sơn Nguyên,Huyện Sơn Hòa,Phú Yên','hungdvph29421@fpt.edu.vn',NULL,'duongviethung2003@gmail.com','HDFAB6DC5','0333333333','Trần Văn Bình','GIAO_HANG','CHO_XAC_NHAN'),(66,10,15,NULL,0.00,0.00,11950000.00,'2024-05-02 22:03:45.941007','2024-05-02 22:03:45.971155','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HD7E81CED',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(67,2,15,NULL,25301.00,0.00,7500000.00,'2024-05-02 22:04:10.394760','2024-05-02 22:04:10.407280','duongviethung2003@gmail.com','Ngõ 30,Xã Nật Sơn,Huyện Kim Bôi,Hòa Bình','hungboong30@gmail.com',NULL,'duongviethung2003@gmail.com','HD8295903','0375773851','Dương Việt Hùng','GIAO_HANG','CHO_XAC_NHAN'),(68,20,NULL,10,25301.00,200000.00,2382500.00,'2024-05-02 23:08:51.362306','2024-05-02 23:19:43.518493','0963277913','nhà 99, Xã Phăng Sô Lin, Huyện Sìn Hồ, Lai Châu','softwareviet88@gmail.com',NULL,'duongviethung2003@gmail.com','HD6040A95','0963277913','Dương Nguyễn Trung','GIAO_HANG','TRA_HANG'),(69,NULL,15,10,0.00,200000.00,2680000.00,'2024-05-02 23:14:41.799514','2024-05-02 23:14:41.820636','duongviethung2003@gmail.com',NULL,NULL,NULL,'duongviethung2003@gmail.com','HD30393E2',NULL,NULL,'TAI_QUAY','HOAN_THANH'),(70,2,15,10,25301.00,200000.00,3360000.00,'2024-05-02 23:17:03.345384','2024-05-02 23:17:03.360457','duongviethung2003@gmail.com','Ngõ 30,Xã Nật Sơn,Huyện Kim Bôi,Hòa Bình','hungboong30@gmail.com',NULL,'duongviethung2003@gmail.com','HDD8D4ADA','0375773851','Dương Việt Hùng','GIAO_HANG','CHO_XAC_NHAN'),(71,20,15,NULL,0.00,0.00,382500.00,'2024-05-02 23:19:43.471181','2024-05-02 23:19:43.494368','duongviethung2003@gmail.com',NULL,NULL,'Hóa đơn mới của hóa đơn trả hàng','duongviethung2003@gmail.com','HD67',NULL,NULL,'TAI_QUAY','HOAN_THANH');
/*!40000 ALTER TABLE `hoa_don` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoa_don_chi_tiet`
--

DROP TABLE IF EXISTS `hoa_don_chi_tiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoa_don_chi_tiet` (
  `gia_ban` decimal(38,2) DEFAULT NULL,
  `gia_nhap` decimal(38,2) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `id_hoa_don` int DEFAULT NULL,
  `id_hoa_don_tra_hang` int DEFAULT NULL,
  `id_spct` int DEFAULT NULL,
  `so_luong` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5adopt864mjisuy5xmgmy8iun` (`id_hoa_don`),
  KEY `FK8ue9uh9qjbp1lhy52ajb46hpk` (`id_hoa_don_tra_hang`),
  KEY `FKtg7wf3f4noic4uhrdn3lju7k6` (`id_spct`),
  CONSTRAINT `FK5adopt864mjisuy5xmgmy8iun` FOREIGN KEY (`id_hoa_don`) REFERENCES `hoa_don` (`id`),
  CONSTRAINT `FK8ue9uh9qjbp1lhy52ajb46hpk` FOREIGN KEY (`id_hoa_don_tra_hang`) REFERENCES `hoa_don_tra_hang` (`id`),
  CONSTRAINT `FKtg7wf3f4noic4uhrdn3lju7k6` FOREIGN KEY (`id_spct`) REFERENCES `san_pham_chi_tiet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoa_don_chi_tiet`
--

LOCK TABLES `hoa_don_chi_tiet` WRITE;
/*!40000 ALTER TABLE `hoa_don_chi_tiet` DISABLE KEYS */;
INSERT INTO `hoa_don_chi_tiet` VALUES (1500000.00,1000000.00,1,1,NULL,1,1),(1500000.00,1000000.00,2,2,NULL,3,1),(1500000.00,1000000.00,3,3,NULL,1,4),(1500000.00,1000000.00,4,4,NULL,1,1),(1500000.00,1000000.00,5,4,NULL,5,1),(1500000.00,1000000.00,6,5,NULL,2,1),(450000.00,300000.00,7,6,NULL,74,1),(400000.00,200000.00,8,6,NULL,109,1),(490000.00,350000.00,9,6,NULL,99,1),(400000.00,200000.00,10,7,NULL,109,1),(490000.00,350000.00,11,7,NULL,101,1),(890000.00,700000.00,12,8,NULL,95,2),(1000000.00,700000.00,13,8,NULL,12,2),(490000.00,350000.00,14,9,NULL,97,3),(450000.00,300000.00,15,9,NULL,83,3),(400000.00,200000.00,16,10,NULL,109,2),(490000.00,350000.00,17,10,NULL,96,1),(400000.00,200000.00,18,11,NULL,109,4),(400000.00,200000.00,19,12,NULL,109,3),(400000.00,200000.00,20,13,NULL,109,1),(400000.00,200000.00,21,14,NULL,109,1),(400000.00,200000.00,22,15,NULL,109,1),(1300000.00,1000000.00,23,15,NULL,27,1),(500000.00,300000.00,24,16,NULL,13,2),(490000.00,350000.00,25,17,NULL,96,1),(400000.00,200000.00,26,21,NULL,108,5),(400000.00,200000.00,27,21,NULL,109,4),(490000.00,350000.00,28,22,NULL,98,2),(600000.00,300000.00,29,23,NULL,61,4),(400000.00,200000.00,30,23,NULL,109,3),(1300000.00,1000000.00,31,23,NULL,34,5),(450000.00,300000.00,32,24,NULL,82,1),(490000.00,350000.00,33,24,NULL,101,1),(450000.00,300000.00,34,24,NULL,74,1),(800000.00,550000.00,35,25,NULL,48,2),(630000.00,400000.00,36,26,NULL,78,1),(500000.00,250000.00,37,27,NULL,70,2),(400000.00,200000.00,38,28,NULL,109,3),(550000.00,300000.00,39,29,NULL,60,1),(400000.00,200000.00,40,29,NULL,109,1),(800000.00,600000.00,41,30,NULL,40,2),(400000.00,200000.00,42,30,NULL,108,1),(1500000.00,1000000.00,43,31,NULL,6,1),(400000.00,200000.00,44,32,NULL,109,1),(400000.00,200000.00,45,33,NULL,109,1),(400000.00,200000.00,46,34,NULL,109,1),(550000.00,350000.00,47,35,NULL,20,1),(382500.00,300000.00,48,35,NULL,73,1),(400000.00,200000.00,49,36,NULL,102,3),(850000.00,700000.00,50,36,NULL,12,1),(490000.00,350000.00,51,37,NULL,97,1),(890000.00,700000.00,52,37,NULL,95,1),(1360000.00,1300000.00,53,38,NULL,39,1),(5000000.00,1000000.00,54,39,NULL,113,3),(4000000.00,200000.00,55,39,NULL,109,1),(4000000.00,200000.00,56,40,NULL,107,4),(4900000.00,350000.00,57,40,NULL,100,1),(4360000.00,1300000.00,58,40,NULL,39,1),(3600000.00,1300000.00,59,41,NULL,39,1),(15000000.00,1000000.00,60,41,NULL,113,1),(5500000.00,1000000.00,61,42,NULL,110,3),(4000000.00,200000.00,62,42,NULL,102,5),(4000000.00,200000.00,63,43,NULL,103,3),(3890000.00,700000.00,64,43,NULL,94,2),(6500000.00,1000000.00,65,44,NULL,112,5),(4000000.00,200000.00,66,44,NULL,106,6),(5000004.00,1000000.00,67,45,NULL,111,4),(8890000.00,700000.00,68,45,NULL,93,4),(3890000.00,700000.00,69,46,NULL,93,5),(3350000.00,250000.00,70,46,NULL,89,5),(4350000.00,250000.00,71,47,NULL,88,5),(4350000.00,250000.00,72,47,NULL,87,2),(6450000.00,300000.00,73,47,NULL,85,5),(5450000.00,300000.00,74,48,NULL,84,2),(4535500.00,400000.00,75,48,NULL,80,4),(5510000.00,400000.00,76,49,NULL,76,5),(4382500.00,300000.00,77,49,NULL,74,5),(5382500.00,300000.00,78,50,NULL,71,3),(3500000.00,250000.00,79,50,NULL,70,4),(5500000.00,250000.00,80,51,NULL,68,5),(6600000.00,300000.00,81,51,NULL,66,3),(3600000.00,300000.00,82,52,NULL,63,3),(3600000.00,300000.00,83,52,NULL,61,3),(3550000.00,300000.00,84,52,NULL,59,5),(2550000.00,300000.00,85,53,NULL,58,3),(5400000.00,200000.00,86,53,NULL,57,2),(1400000.00,200000.00,87,53,NULL,55,4),(1400000.00,200000.00,88,54,NULL,53,4),(1400000.00,200000.00,89,54,NULL,52,3),(1450000.00,200000.00,90,54,NULL,51,2),(1450000.00,200000.00,91,54,NULL,50,6),(1450000.00,200000.00,92,54,NULL,49,3),(8000008.00,600000.00,93,55,NULL,45,3),(8000008.00,600000.00,94,55,NULL,44,1),(8800000.00,600000.00,95,56,NULL,42,4),(6800000.00,600000.00,96,56,NULL,43,6),(11360000.00,1300000.00,97,56,NULL,39,3),(11360000.00,1300000.00,98,57,NULL,37,5),(11300000.00,1000000.00,99,57,NULL,36,4),(21300000.00,1000000.00,100,57,NULL,34,7),(1500000.00,1000000.00,101,58,NULL,113,1),(1500000.00,1000000.00,102,59,NULL,112,1),(1500000.00,1000000.00,103,60,NULL,112,1),(1500000.00,1000000.00,104,61,NULL,113,3),(1360000.00,1300000.00,105,62,NULL,37,1),(850000.00,700000.00,106,62,NULL,10,1),(400000.00,200000.00,107,63,NULL,109,3),(400000.00,200000.00,108,63,NULL,105,5),(400000.00,200000.00,109,64,NULL,104,3),(490000.00,350000.00,110,64,NULL,100,2),(1300000.00,1000000.00,111,65,NULL,27,2),(1300000.00,1000000.00,112,65,NULL,25,2),(1500000.00,1000000.00,113,66,NULL,112,3),(550000.00,350000.00,114,66,NULL,21,5),(850000.00,700000.00,115,66,NULL,11,2),(1500000.00,1000000.00,116,66,NULL,8,1),(1500000.00,1000000.00,117,66,NULL,4,1),(1500000.00,1000000.00,118,67,NULL,2,2),(1500000.00,1000000.00,119,67,NULL,6,3),(2000000.00,1000000.00,120,68,NULL,118,1),(382500.00,300000.00,121,68,NULL,74,1),(2000000.00,1000000.00,122,69,NULL,120,1),(680000.00,500000.00,123,69,NULL,24,1),(2000000.00,1000000.00,124,70,NULL,122,1),(1360000.00,1300000.00,125,70,NULL,37,1),(382500.00,300000.00,126,71,NULL,74,1),(2000000.00,1000000.00,127,NULL,1,118,1);
/*!40000 ALTER TABLE `hoa_don_chi_tiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoa_don_tra_hang`
--

DROP TABLE IF EXISTS `hoa_don_tra_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoa_don_tra_hang` (
  `hoa_don_id` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `tong_tien` decimal(38,2) DEFAULT NULL,
  `tong_tien_phieu_giam_gia_cu` decimal(38,2) DEFAULT NULL,
  `tong_tien_phieu_giam_gia_moi` decimal(38,2) DEFAULT NULL,
  `tong_tien_tra_khach` decimal(38,2) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `dia_chi_nguoi_nhan` varchar(255) DEFAULT NULL,
  `email_nguoi_nhan` varchar(255) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `ma` varchar(255) DEFAULT NULL,
  `sdt_nguoi_nhan` varchar(255) DEFAULT NULL,
  `ten_nguoi_nhan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_a10fuo2ij18b8kd3chd02okrx` (`hoa_don_id`),
  CONSTRAINT `FKtpfop93u138d574n1hc3onapr` FOREIGN KEY (`hoa_don_id`) REFERENCES `hoa_don` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoa_don_tra_hang`
--

LOCK TABLES `hoa_don_tra_hang` WRITE;
/*!40000 ALTER TABLE `hoa_don_tra_hang` DISABLE KEYS */;
INSERT INTO `hoa_don_tra_hang` VALUES (68,1,2000000.00,200000.00,0.00,1800000.00,'2024-05-02 23:19:43.529704',NULL,'duongviethung2003@gmail.com','nhà 99, Xã Phăng Sô Lin, Huyện Sìn Hồ, Lai Châu','softwareviet88@gmail.com','Sản phẩm bị lỗi (rách, mất cúc áo, cúc tay, mốc, v.v)',NULL,'HDTH0','0963277913','Dương Nguyễn Trung');
/*!40000 ALTER TABLE `hoa_don_tra_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khach_hang`
--

DROP TABLE IF EXISTS `khach_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khach_hang` (
  `account_id` int DEFAULT NULL,
  `gioi_tinh` bit(1) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `image_id` int DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `trang_thai` int NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_altrjwb4si5pi5noki9m4luou` (`account_id`),
  KEY `FK98t4n6gmjvxcfk7ecl91hov2k` (`image_id`),
  CONSTRAINT `FK98t4n6gmjvxcfk7ecl91hov2k` FOREIGN KEY (`image_id`) REFERENCES `khach_hang_image` (`id`),
  CONSTRAINT `FKhmkyfp115c2sjj4gjab9ciyqd` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khach_hang`
--

LOCK TABLES `khach_hang` WRITE;
/*!40000 ALTER TABLE `khach_hang` DISABLE KEYS */;
INSERT INTO `khach_hang` VALUES (2,_binary '',1,1,'2024-04-24',1,'2024-04-26 21:15:52.725238','2024-04-26 21:15:56.106178','admin0203','duong.viet.hung@gmail.com','Nguyễn Văn Hiếu','admin0203','0345649831'),(3,_binary '',2,2,'2003-03-01',1,'2024-04-26 21:43:32.395095','2024-04-26 21:43:37.484912','admin0203','hungboong30@gmail.com','Dương Việt Hùng','admin0203','0375773851'),(4,_binary '',3,3,'2024-04-01',1,'2024-04-27 10:05:48.437850',NULL,'admin0203','hungdvph29421@fpt.edu.vn','Trần Văn Bình',NULL,'0333333333'),(9,_binary '',4,4,'1999-01-29',1,'2024-04-30 09:36:23.385137',NULL,'admin0203','nguyen.van.an@gmail.com','Nguyễn Văn An',NULL,'0901234567'),(10,_binary '\0',5,5,'1999-05-04',1,'2024-04-30 09:38:58.916192',NULL,'admin0203','tran.thi.binh@gmail.com','Trần Thị Bình',NULL,'0902234567'),(11,_binary '',6,6,'2024-03-14',1,'2024-04-30 09:40:10.353324',NULL,'admin0203','le.minh.cuong@gmail.com','Lê Minh Cường',NULL,'0903234567'),(12,_binary '\0',7,7,'2001-03-27',1,'2024-04-30 09:41:20.434164',NULL,'admin0203','pham.thi.dung@gmail.com','Phạm Thị Dung',NULL,'0904234567'),(13,_binary '',8,8,'1998-02-25',1,'2024-04-30 09:42:47.909489',NULL,'admin0203','hoang.tuan.anh@gmail.com','Hoàng Tuấn Anh',NULL,'0905234567'),(14,_binary '\0',9,9,'1999-07-05',1,'2024-04-30 09:44:17.828129',NULL,'admin0203','do.thi.hoa@gmail.com','Đỗ Thị Hoa',NULL,'0906234567'),(15,_binary '',10,10,'2000-08-15',1,'2024-04-30 09:45:55.222400',NULL,'admin0203','nguyen.hoang.gia@gmail.com','Nguyễn Hoàng Gia',NULL,'0907234567'),(16,_binary '',11,11,'2005-06-21',1,'2024-04-30 09:52:26.514944',NULL,'admin0203','tran.dang.khoa@gmail.com','Trần Đăng Khoa',NULL,'0909234567'),(17,_binary '',12,12,'2000-03-26',1,'2024-04-30 09:54:37.083603',NULL,'admin0203','nguyen.van.manh@gmail.com','Nguyễn Văn Mạnh',NULL,'0911234567'),(18,_binary '',13,13,'1998-07-12',1,'2024-04-30 10:02:50.100548',NULL,'admin0203','tran.huu.phuc@gmail.com','Trần Hữu Phúc',NULL,'0913234567'),(19,_binary '',14,14,'1995-04-08',1,'2024-04-30 10:07:07.645228',NULL,'admin0203','nguyen.van.son@gmail.com','Nguyễn Văn Sơn',NULL,'0915234567'),(20,_binary '',15,15,'1980-07-26',1,'2024-04-30 10:09:26.861522',NULL,'admin0203','nguyen.huu.vinh@gmail.com','Nguyễn Hữu Vinh',NULL,'0919234567'),(21,_binary '',16,16,'2024-04-15',1,'2024-04-30 10:10:43.205036',NULL,'admin0203','phan.van.tuan@gmail.com','Phan Văn Tuấn',NULL,'0921234567'),(22,_binary '',17,17,'2003-09-18',1,'2024-04-30 10:17:44.432468',NULL,'admin0203','nguyen.trong.hai@gmail.com','Nguyễn Trọng Hải',NULL,'0922234567'),(23,_binary '',18,18,'2002-09-11',1,'2024-04-30 10:18:57.085008',NULL,'admin0203','truong.quoc.hung@gmail.com','Trương Quốc Hùng',NULL,'0924234567'),(26,_binary '',19,19,'2003-01-30',1,'2024-04-30 22:48:58.250036',NULL,'admin0203','duongviethung2003@gmail.com','Dương Việt Hùng',NULL,'0375773850'),(28,_binary '',20,20,'2024-05-01',1,'2024-05-01 10:32:42.252220',NULL,'anonymousUser','softwareviet88@gmail.com','Dương Nguyễn Trung',NULL,'0963277913'),(29,_binary '',21,21,'2024-04-30',1,'2024-05-01 10:36:23.293513',NULL,'admin0203','softwareviet@gmail.com','Dương Việt Hùng',NULL,'0963277914'),(30,_binary '',22,22,'2024-04-30',1,'2024-05-01 10:39:56.123834','2024-05-01 20:45:06.173674','admin0203','softwareviet8@gmail.com','Ngô Thị Tình','hohao2001@gmail.com','0378328133'),(31,_binary '',23,23,'2024-04-29',1,'2024-05-01 21:29:39.443277',NULL,'hohao2001@gmail.com','binhpremium2024@gmail.com','Nguyễn Anh Tú',NULL,'0333665781'),(32,_binary '',24,24,'2024-04-30',1,'2024-05-01 21:42:41.261735',NULL,'hohao2001@gmail.com','nguyenvana@gmail.com','Hùng Việt Dương',NULL,'0365487974'),(33,_binary '',25,25,'2003-04-02',1,'2024-05-02 23:28:54.950081','2024-05-02 23:29:10.452245','duongviethung2003@gmail.com','longvu@gmail.com','Vũ Thế Long','duongviethung2003@gmail.com','0612533044');
/*!40000 ALTER TABLE `khach_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khach_hang_image`
--

DROP TABLE IF EXISTS `khach_hang_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khach_hang_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_id` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khach_hang_image`
--

LOCK TABLES `khach_hang_image` WRITE;
/*!40000 ALTER TABLE `khach_hang_image` DISABLE KEYS */;
INSERT INTO `khach_hang_image` VALUES (1,'cca9f97c-32ce-4a3b-89e4-d5eb6063bf2c','default-user-img','https://res.cloudinary.com/dpsryzyev/image/upload/v1712851456/default-user-img_ri7fap.webp'),(2,'b781a834-a58f-47c7-b227-e4dfc07eb37f','default-user-img','https://res.cloudinary.com/dpsryzyev/image/upload/v1712851456/default-user-img_ri7fap.webp'),(3,'gwyyjwgufexaxaupmc3f','lovepik-display-of-white-collar-image-of-male-staff-picture_500872022','http://res.cloudinary.com/dpsryzyev/image/upload/v1714187146/gwyyjwgufexaxaupmc3f.jpg'),(4,'pei98b1gg0gddn965sf2','anh_the_1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714444582/pei98b1gg0gddn965sf2.jpg'),(5,'jzc80yk87nrkcicwejy5','anh-chan-dung-6','http://res.cloudinary.com/dpsryzyev/image/upload/v1714444738/jzc80yk87nrkcicwejy5.jpg'),(6,'vgdww64yqv5okopgyptw','anh_the_7','http://res.cloudinary.com/dpsryzyev/image/upload/v1714444809/vgdww64yqv5okopgyptw.jpg'),(7,'tnygpzkcq3brj5scuoyj','anh_the_2','http://res.cloudinary.com/dpsryzyev/image/upload/v1714444879/tnygpzkcq3brj5scuoyj.jpg'),(8,'xer7kazxohavajrekxwa','anh-the-2024','http://res.cloudinary.com/dpsryzyev/image/upload/v1714444966/xer7kazxohavajrekxwa.jpg'),(9,'yifzfktnjmxaj0dapkpx','chup-anh-the-tha-toc-3007','http://res.cloudinary.com/dpsryzyev/image/upload/v1714445056/yifzfktnjmxaj0dapkpx.jpg'),(10,'biqj6w1fnganbvabuha1','lovepik-display-of-white-collar-image-of-male-staff-picture_500872022','http://res.cloudinary.com/dpsryzyev/image/upload/v1714445154/biqj6w1fnganbvabuha1.jpg'),(11,'ymviny99rpyzifxluczq','anh_the_1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714445545/ymviny99rpyzifxluczq.jpg'),(12,'ifbbownmhkxzuyr4zetv','anh-the-2024','http://res.cloudinary.com/dpsryzyev/image/upload/v1714445675/ifbbownmhkxzuyr4zetv.jpg'),(13,'ylzeixdnufdakcexms1x','anh_the_19','http://res.cloudinary.com/dpsryzyev/image/upload/v1714446169/ylzeixdnufdakcexms1x.jpg'),(14,'wywdjok0jdm1ksdodawl','anh_the127','http://res.cloudinary.com/dpsryzyev/image/upload/v1714446426/wywdjok0jdm1ksdodawl.jpg'),(15,'e7p8tnuqjtdgs3utcaow','anh_the_9','http://res.cloudinary.com/dpsryzyev/image/upload/v1714446565/e7p8tnuqjtdgs3utcaow.jpg'),(16,'e8vwvk9kfmpla5o0uwl4','anh_the_101','http://res.cloudinary.com/dpsryzyev/image/upload/v1714446642/e8vwvk9kfmpla5o0uwl4.jpg'),(17,'qfs9uabpmplqca50qafo','anh_the_101','http://res.cloudinary.com/dpsryzyev/image/upload/v1714447063/qfs9uabpmplqca50qafo.jpg'),(18,'asodazv0m2dsjt5ufcr7','anh_the127','http://res.cloudinary.com/dpsryzyev/image/upload/v1714447136/asodazv0m2dsjt5ufcr7.jpg'),(19,'lxewaxhcfu5uztyyngtw','anh_the_101','http://res.cloudinary.com/dpsryzyev/image/upload/v1714492135/lxewaxhcfu5uztyyngtw.jpg'),(20,'default-user-img-id','default-user-img','https://res.cloudinary.com/dpsryzyev/image/upload/v1712851456/default-user-img_ri7fap.webp'),(21,'lfzreonntubgbd3a7ewp','anh_the127','http://res.cloudinary.com/dpsryzyev/image/upload/v1714534581/lfzreonntubgbd3a7ewp.jpg'),(22,'5d6a6738-2bcf-4259-99a9-793ce2c82c15','default-user-img','https://res.cloudinary.com/dpsryzyev/image/upload/v1712851456/default-user-img_ri7fap.webp'),(23,'dbbiceqrde4qm2mpjd52','anh_the_1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714573777/dbbiceqrde4qm2mpjd52.jpg'),(24,'kwsyrwfolonrmx958uk0','anh-chan-dung-6','http://res.cloudinary.com/dpsryzyev/image/upload/v1714574559/kwsyrwfolonrmx958uk0.jpg'),(25,'nnz5worhxoic9ykrynct','anh_the_1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714667333/nnz5worhxoic9ykrynct.jpg');
/*!40000 ALTER TABLE `khach_hang_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kich_co`
--

DROP TABLE IF EXISTS `kich_co`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kich_co` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trang_thai` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kich_co`
--

LOCK TABLES `kich_co` WRITE;
/*!40000 ALTER TABLE `kich_co` DISABLE KEYS */;
INSERT INTO `kich_co` VALUES (1,_binary '','2024-04-25 22:30:23.489978',NULL,'admin0203',NULL,'S'),(2,_binary '','2024-04-25 22:30:27.975970',NULL,'admin0203',NULL,'M'),(3,_binary '','2024-04-25 22:30:34.316623',NULL,'admin0203',NULL,'L'),(4,_binary '','2024-04-25 22:30:46.816753',NULL,'admin0203',NULL,'XS'),(5,_binary '','2024-04-25 22:30:52.626635',NULL,'admin0203',NULL,'XL'),(6,_binary '','2024-04-25 22:31:02.335074',NULL,'admin0203',NULL,'XXL');
/*!40000 ALTER TABLE `kich_co` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kieu_dang`
--

DROP TABLE IF EXISTS `kieu_dang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kieu_dang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trang_thai` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kieu_dang`
--

LOCK TABLES `kieu_dang` WRITE;
/*!40000 ALTER TABLE `kieu_dang` DISABLE KEYS */;
INSERT INTO `kieu_dang` VALUES (1,_binary '','2024-04-25 22:33:00.963072',NULL,'admin0203',NULL,'Classic Fit'),(2,_binary '','2024-04-25 22:33:13.429317',NULL,'admin0203',NULL,'Slim Fit'),(3,_binary '','2024-04-25 22:33:29.137517',NULL,'admin0203',NULL,'Oversize'),(4,_binary '','2024-04-25 22:36:22.046494',NULL,'admin0203',NULL,'Regular fit'),(5,_binary '','2024-05-02 23:03:07.125021',NULL,'duongviethung2003@gmail.com',NULL,'Rộng');
/*!40000 ALTER TABLE `kieu_dang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kieu_thiet_ke`
--

DROP TABLE IF EXISTS `kieu_thiet_ke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kieu_thiet_ke` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trang_thai` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kieu_thiet_ke`
--

LOCK TABLES `kieu_thiet_ke` WRITE;
/*!40000 ALTER TABLE `kieu_thiet_ke` DISABLE KEYS */;
INSERT INTO `kieu_thiet_ke` VALUES (1,_binary '','2024-04-25 22:48:34.652171',NULL,'admin0203',NULL,'Túi ngực'),(2,_binary '','2024-04-25 22:48:40.999247',NULL,'admin0203',NULL,'Trơn'),(3,_binary '','2024-04-25 22:49:59.555589',NULL,'admin0203',NULL,'Kẻ sọc'),(4,_binary '','2024-04-25 22:50:08.288840',NULL,'admin0203',NULL,'Kẻ caro'),(5,_binary '','2024-04-25 22:50:14.761251',NULL,'admin0203',NULL,'Họa tiết'),(6,_binary '','2024-04-25 22:51:00.267367',NULL,'admin0203',NULL,'Hàn Quốc');
/*!40000 ALTER TABLE `kieu_thiet_ke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lich_su_hoa_don`
--

DROP TABLE IF EXISTS `lich_su_hoa_don`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lich_su_hoa_don` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_hoa_don` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `mo_ta` varchar(255) DEFAULT NULL,
  `tieu_de` varchar(255) DEFAULT NULL,
  `trang_thai` enum('TAO_DON','CHO_XAC_NHAN','DA_XAC_NHAN','CHO_GIAO','DANG_GIAO','HOAN_THANH','HUY','TRA_HANG','HOAN_TIEN','CHO_HOAN_TIEN','DA_HOAN_TIEN') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcan7u6m18x7j4e4cxoojeu9b5` (`id_hoa_don`),
  CONSTRAINT `FKcan7u6m18x7j4e4cxoojeu9b5` FOREIGN KEY (`id_hoa_don`) REFERENCES `hoa_don` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lich_su_hoa_don`
--

LOCK TABLES `lich_su_hoa_don` WRITE;
/*!40000 ALTER TABLE `lich_su_hoa_don` DISABLE KEYS */;
INSERT INTO `lich_su_hoa_don` VALUES (1,1,'2024-04-26 21:05:24.693076',NULL,'admin0203',NULL,'','Hoàn thành','HOAN_THANH'),(2,2,'2024-04-26 21:06:26.765105',NULL,'admin0203',NULL,'','Hoàn thành','HOAN_THANH'),(3,3,'2024-04-26 21:16:51.335982',NULL,'admin0203',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(4,3,'2024-04-26 21:17:02.075064',NULL,'admin0203',NULL,'Cập nhật sản phẩm Áo Sơmi Cuban Linen Glamorous Embroidery Logo màu Beige size M số lượng 4','Cập nhật sản phẩm',NULL),(5,3,'2024-04-26 21:17:54.151446',NULL,'admin0203',NULL,'Chuyển trạng thái','Đã xác nhận','DA_XAC_NHAN'),(6,3,'2024-04-26 21:20:26.091949',NULL,'admin0203',NULL,'Chuyển trạng thái','Chờ giao hàng','CHO_GIAO'),(7,3,'2024-04-26 21:21:23.066466',NULL,'admin0203',NULL,'Chuyển trạng thái','Đang giao hàng','DANG_GIAO'),(8,3,'2024-04-26 21:24:53.894925',NULL,'admin0203',NULL,'Tạo thanh toán với số tiền : 6.025.300','Tạo thanh toán',NULL),(9,3,'2024-04-26 21:26:51.443600',NULL,'admin0203',NULL,'Chuyển trạng thái','Hoàn thành','HOAN_THANH'),(10,4,'2024-04-26 21:45:39.161174',NULL,'admin0203',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(11,5,'2024-04-26 21:51:12.457452',NULL,'admin0203',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(12,3,'2024-04-27 09:16:15.971787',NULL,'admin0203',NULL,'Chuyển trạng thái','Đang giao hàng','DANG_GIAO'),(13,3,'2024-04-27 09:24:04.306598',NULL,'admin0203',NULL,'Chuyển trạng thái','Chờ giao hàng','CHO_GIAO'),(14,3,'2024-04-27 09:25:36.765834',NULL,'admin0203',NULL,'Chuyển trạng thái','Đang giao hàng','DANG_GIAO'),(15,3,'2024-04-27 09:27:04.526083',NULL,'admin0203',NULL,'Chuyển trạng thái','Hoàn thành','HOAN_THANH'),(16,3,'2024-04-27 09:29:50.516994',NULL,'admin0203',NULL,'Chuyển trạng thái','Hủy','HUY'),(17,3,'2024-04-27 09:29:50.544329',NULL,'admin0203',NULL,'Yêu cầu hoàn tiền : 6.025.300','Chờ hoàn tiền','CHO_HOAN_TIEN'),(18,3,'2024-04-27 09:30:14.873758',NULL,'admin0203',NULL,'Đã hoàn số tiền: 6.025.300','Đã hoàn tiền','DA_HOAN_TIEN'),(19,6,'2024-04-29 17:37:29.910924',NULL,'admin0203',NULL,'','Hoàn thành','HOAN_THANH'),(20,7,'2024-04-29 17:38:22.403478',NULL,'admin0203',NULL,'','Hoàn thành','HOAN_THANH'),(21,8,'2024-04-29 17:41:45.581418',NULL,'admin0203',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(22,8,'2024-04-29 17:42:54.741775',NULL,'admin0203',NULL,'Chuyển trạng thái','Đã xác nhận','DA_XAC_NHAN'),(23,8,'2024-04-29 17:44:30.423780',NULL,'admin0203',NULL,'Chuyển trạng thái','Chờ giao hàng','CHO_GIAO'),(24,8,'2024-04-29 17:45:05.299122',NULL,'admin0203',NULL,'Chuyển trạng thái','Đang giao hàng','DANG_GIAO'),(25,8,'2024-04-29 17:45:13.033644',NULL,'admin0203',NULL,'Chuyển trạng thái','Hoàn thành','HOAN_THANH'),(26,9,'2024-04-29 17:47:31.378532',NULL,'admin0203',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(27,9,'2024-04-29 17:47:54.172606',NULL,'admin0203',NULL,'Cập nhật sản phẩm Áo Sơmi Cổ Trụ Relaxed Tay Dài màu Hồng size L số lượng 3','Cập nhật sản phẩm',NULL),(28,9,'2024-04-29 17:47:55.554318',NULL,'admin0203',NULL,'Cập nhật sản phẩm Áo Sơ mi Monogram Portraits màu Xanh đen size XL số lượng 3','Cập nhật sản phẩm',NULL),(29,9,'2024-04-29 17:49:18.255102',NULL,'admin0203',NULL,'Chuyển trạng thái','Đã xác nhận','DA_XAC_NHAN'),(30,9,'2024-04-29 17:49:25.618795',NULL,'admin0203',NULL,'Chuyển trạng thái','Chờ giao hàng','CHO_GIAO'),(31,10,'2024-04-30 17:03:25.412835',NULL,'admin0203',NULL,'','Hoàn thành','HOAN_THANH'),(32,11,'2024-04-30 17:06:53.764449',NULL,'admin0203',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(33,11,'2024-04-30 17:07:01.182674',NULL,'admin0203',NULL,'Chuyển trạng thái','Đã xác nhận','DA_XAC_NHAN'),(34,12,'2024-04-30 17:08:38.405627',NULL,'admin0203',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(35,12,'2024-04-30 17:08:44.744593',NULL,'admin0203',NULL,'Chuyển trạng thái','Đã xác nhận','DA_XAC_NHAN'),(36,12,'2024-04-30 17:08:58.383354',NULL,'admin0203',NULL,'Chuyển trạng thái','Chờ giao hàng','CHO_GIAO'),(37,13,'2024-04-30 17:10:36.271300',NULL,'admin0203',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(38,14,'2024-04-30 17:17:00.310229',NULL,'admin0203',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(39,15,'2024-04-30 17:20:07.260593',NULL,'admin0203',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(40,16,'2024-04-30 17:23:41.917965',NULL,'admin0203',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(41,12,'2024-04-30 17:23:50.345112',NULL,'admin0203',NULL,'Chuyển trạng thái','Đang giao hàng','DANG_GIAO'),(42,13,'2024-04-30 17:23:55.926184',NULL,'admin0203',NULL,'Chuyển trạng thái','Đã xác nhận','DA_XAC_NHAN'),(43,13,'2024-04-30 17:24:03.057195',NULL,'admin0203',NULL,'Chuyển trạng thái','Chờ giao hàng','CHO_GIAO'),(44,13,'2024-04-30 17:24:04.967370',NULL,'admin0203',NULL,'Chuyển trạng thái','Đang giao hàng','DANG_GIAO'),(45,14,'2024-04-30 17:24:13.731503',NULL,'admin0203',NULL,'Chuyển trạng thái','Đã xác nhận','DA_XAC_NHAN'),(46,14,'2024-04-30 17:24:18.436538',NULL,'admin0203',NULL,'Chuyển trạng thái','Chờ giao hàng','CHO_GIAO'),(47,16,'2024-04-30 17:24:29.772909',NULL,'admin0203',NULL,'Chuyển trạng thái','Đã xác nhận','DA_XAC_NHAN'),(48,16,'2024-04-30 17:24:43.208200',NULL,'admin0203',NULL,'Chuyển trạng thái','Chờ giao hàng','CHO_GIAO'),(49,16,'2024-04-30 17:24:57.632031',NULL,'admin0203',NULL,'Chuyển trạng thái','Hủy','HUY'),(50,17,'2024-04-30 18:57:27.507283',NULL,'admin0203',NULL,'','Hoàn thành','HOAN_THANH'),(51,21,'2024-04-30 19:00:57.922522',NULL,'admin0203',NULL,'','Hoàn thành','HOAN_THANH'),(52,22,'2024-04-30 19:02:23.770206',NULL,'admin0203',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(53,23,'2024-04-30 19:10:41.868480',NULL,'admin0203',NULL,'','Hoàn thành','HOAN_THANH'),(54,22,'2024-04-30 19:12:58.758697',NULL,'admin0203',NULL,'Chuyển trạng thái','Đã xác nhận','DA_XAC_NHAN'),(55,22,'2024-04-30 19:13:18.294571',NULL,'admin0203',NULL,'Cập nhật sản phẩm Áo Sơmi Cổ Trụ Relaxed Tay Dài màu Hồng size XL số lượng 3','Cập nhật sản phẩm',NULL),(56,22,'2024-04-30 19:13:32.435831',NULL,'admin0203',NULL,'Cập nhật sản phẩm Áo Sơmi Cổ Trụ Relaxed Tay Dài màu Hồng size XL số lượng 2','Cập nhật sản phẩm',NULL),(57,24,'2024-04-30 19:15:42.744633',NULL,'admin0203',NULL,'','Hoàn thành','HOAN_THANH'),(58,25,'2024-04-30 19:18:16.537032',NULL,'admin0203',NULL,'','Hoàn thành','HOAN_THANH'),(59,26,'2024-04-30 19:19:53.485423',NULL,'admin0203',NULL,'','Hoàn thành','HOAN_THANH'),(60,27,'2024-04-30 19:22:24.337783',NULL,'admin0203',NULL,'','Hoàn thành','HOAN_THANH'),(61,15,'2024-04-30 19:23:00.101898',NULL,'admin0203',NULL,'Chuyển trạng thái','Hủy','HUY'),(62,28,'2024-04-30 21:14:18.544659',NULL,'admin0203',NULL,'','Hoàn thành','HOAN_THANH'),(63,29,'2024-04-30 21:16:41.312185',NULL,'admin0203',NULL,'','Hoàn thành','HOAN_THANH'),(64,30,'2024-04-30 23:21:33.798092',NULL,'0375773850',NULL,NULL,'Chờ xác nhận','CHO_XAC_NHAN'),(65,30,'2024-04-30 23:22:12.256257',NULL,'admin0203',NULL,'Chuyển trạng thái','Đã xác nhận','DA_XAC_NHAN'),(66,30,'2024-04-30 23:22:23.034515',NULL,'admin0203',NULL,'Cập nhật sản phẩm Áo Sơ mi Old School màu Xanh lá size M số lượng 2','Cập nhật sản phẩm',NULL),(67,30,'2024-04-30 23:22:35.535244',NULL,'admin0203',NULL,'Chuyển trạng thái','Chờ giao hàng','CHO_GIAO'),(68,30,'2024-04-30 23:22:40.288670',NULL,'admin0203',NULL,'Thêm 1 sản phẩm Áo Sơ mi Linen Henley màu Đen ,size L','Thêm sản phẩm',NULL),(69,30,'2024-04-30 23:22:53.175731',NULL,'admin0203',NULL,'Chuyển trạng thái','Đang giao hàng','DANG_GIAO'),(70,31,'2024-05-01 14:08:50.432550',NULL,'0963277913',NULL,NULL,'Chờ xác nhận','CHO_XAC_NHAN'),(71,31,'2024-05-01 14:09:38.679084',NULL,'hohao2001@gmail.com',NULL,'Chuyển trạng thái','Đã xác nhận','DA_XAC_NHAN'),(72,32,'2024-05-01 14:36:54.863854',NULL,'hohao2001@gmail.com',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(73,33,'2024-05-01 15:23:43.896846',NULL,'hohao2001@gmail.com',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(74,34,'2024-05-01 16:29:54.239129',NULL,'hohao2001@gmail.com',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(75,35,'2024-05-01 20:47:00.831767',NULL,'hohao2001@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(76,36,'2024-05-01 21:20:11.890899',NULL,'hohao2001@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(77,37,'2024-05-01 21:20:45.950529',NULL,'hohao2001@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(78,38,'2024-05-01 21:21:38.765078',NULL,'hohao2001@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(79,39,'2024-05-02 20:57:42.951861',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(80,40,'2024-05-02 20:58:42.594807',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(81,41,'2024-05-02 20:59:13.952778',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(82,42,'2024-05-02 21:00:12.721973',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(83,43,'2024-05-02 21:00:52.205254',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(84,44,'2024-05-02 21:01:51.446907',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(85,45,'2024-05-02 21:03:29.008580',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(86,46,'2024-05-02 21:04:05.911541',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(87,47,'2024-05-02 21:04:47.569115',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(88,48,'2024-05-02 21:05:22.749925',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(89,49,'2024-05-02 21:05:58.646825',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(90,50,'2024-05-02 21:06:32.635022',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(91,51,'2024-05-02 21:07:15.954948',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(92,52,'2024-05-02 21:07:57.050842',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(93,53,'2024-05-02 21:08:36.928813',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(94,54,'2024-05-02 21:10:17.935663',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(95,55,'2024-05-02 21:11:31.316196',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(96,56,'2024-05-02 21:12:11.759883',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(97,57,'2024-05-02 21:13:11.690864',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(98,58,'2024-05-02 21:38:41.187351',NULL,'duongviethung2003@gmail.com',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(99,58,'2024-05-02 21:38:47.485635',NULL,'duongviethung2003@gmail.com',NULL,'Chuyển trạng thái','Hủy','HUY'),(100,58,'2024-05-02 21:38:47.490148',NULL,'duongviethung2003@gmail.com',NULL,'Yêu cầu hoàn tiền : 1.558.301','Chờ hoàn tiền','CHO_HOAN_TIEN'),(101,58,'2024-05-02 21:39:05.500396',NULL,'duongviethung2003@gmail.com',NULL,'Đã hoàn số tiền: 1.558.301','Đã hoàn tiền','DA_HOAN_TIEN'),(102,34,'2024-05-02 21:40:01.902992',NULL,'duongviethung2003@gmail.com',NULL,'Chuyển trạng thái','Hủy','HUY'),(103,33,'2024-05-02 21:42:31.277603',NULL,'duongviethung2003@gmail.com',NULL,'Chuyển trạng thái','Hủy','HUY'),(104,32,'2024-05-02 21:42:43.030692',NULL,'duongviethung2003@gmail.com',NULL,'Tạo thanh toán với số tiền : 425.301','Tạo thanh toán',NULL),(105,32,'2024-05-02 21:42:49.254929',NULL,'duongviethung2003@gmail.com',NULL,'Chuyển trạng thái','Hủy','HUY'),(106,32,'2024-05-02 21:42:49.261439',NULL,'duongviethung2003@gmail.com',NULL,'Yêu cầu hoàn tiền : 425.301','Chờ hoàn tiền','CHO_HOAN_TIEN'),(107,32,'2024-05-02 21:43:09.237940',NULL,'duongviethung2003@gmail.com',NULL,'Đã hoàn số tiền: 425.301','Đã hoàn tiền','DA_HOAN_TIEN'),(110,11,'2024-05-02 21:45:16.948324',NULL,'duongviethung2003@gmail.com',NULL,'Tạo thanh toán với số tiền : 1.433.301','Tạo thanh toán',NULL),(111,11,'2024-05-02 21:45:24.425382',NULL,'duongviethung2003@gmail.com',NULL,'Chuyển trạng thái','Hủy','HUY'),(112,11,'2024-05-02 21:45:24.427909',NULL,'duongviethung2003@gmail.com',NULL,'Yêu cầu hoàn tiền : 1.433.301','Chờ hoàn tiền','CHO_HOAN_TIEN'),(113,11,'2024-05-02 21:45:39.987091',NULL,'duongviethung2003@gmail.com',NULL,'Đã hoàn số tiền: 1.433.301','Đã hoàn tiền','DA_HOAN_TIEN'),(114,31,'2024-05-02 21:46:10.380997',NULL,'duongviethung2003@gmail.com',NULL,'Tạo thanh toán với số tiền : 1.500.000','Tạo thanh toán',NULL),(115,31,'2024-05-02 21:46:12.863860',NULL,'duongviethung2003@gmail.com',NULL,'Chuyển trạng thái','Hủy','HUY'),(116,31,'2024-05-02 21:46:12.865868',NULL,'duongviethung2003@gmail.com',NULL,'Yêu cầu hoàn tiền : 1.500.000','Chờ hoàn tiền','CHO_HOAN_TIEN'),(117,31,'2024-05-02 21:46:30.637429',NULL,'duongviethung2003@gmail.com',NULL,'Đã hoàn số tiền: 1.500.000','Đã hoàn tiền','DA_HOAN_TIEN'),(118,5,'2024-05-02 21:47:52.034278',NULL,'duongviethung2003@gmail.com',NULL,'Tạo thanh toán với số tiền : 1.525.301','Tạo thanh toán',NULL),(119,5,'2024-05-02 21:47:54.209103',NULL,'duongviethung2003@gmail.com',NULL,'Chuyển trạng thái','Hủy','HUY'),(120,5,'2024-05-02 21:47:54.211821',NULL,'duongviethung2003@gmail.com',NULL,'Yêu cầu hoàn tiền : 1.525.301','Chờ hoàn tiền','CHO_HOAN_TIEN'),(121,5,'2024-05-02 21:48:05.614195',NULL,'duongviethung2003@gmail.com',NULL,'Đã hoàn số tiền: 1.525.301','Đã hoàn tiền','DA_HOAN_TIEN'),(122,59,'2024-05-02 21:48:57.321916',NULL,'duongviethung2003@gmail.com',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(123,59,'2024-05-02 21:49:04.657746',NULL,'duongviethung2003@gmail.com',NULL,'Chuyển trạng thái','Hủy','HUY'),(124,59,'2024-05-02 21:49:04.661900',NULL,'duongviethung2003@gmail.com',NULL,'Yêu cầu hoàn tiền : 1.558.301','Chờ hoàn tiền','CHO_HOAN_TIEN'),(125,59,'2024-05-02 21:49:12.226092',NULL,'duongviethung2003@gmail.com',NULL,'Đã hoàn số tiền: 1.558.301','Đã hoàn tiền','DA_HOAN_TIEN'),(126,60,'2024-05-02 21:50:47.888049',NULL,'duongviethung2003@gmail.com',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(127,60,'2024-05-02 21:50:54.641310',NULL,'duongviethung2003@gmail.com',NULL,'Chuyển trạng thái','Hủy','HUY'),(128,60,'2024-05-02 21:50:54.644318',NULL,'duongviethung2003@gmail.com',NULL,'Yêu cầu hoàn tiền : 1.525.301','Chờ hoàn tiền','CHO_HOAN_TIEN'),(129,60,'2024-05-02 21:51:07.016542',NULL,'duongviethung2003@gmail.com',NULL,'Đã hoàn số tiền: 1.525.301','Đã hoàn tiền','DA_HOAN_TIEN'),(130,61,'2024-05-02 21:52:09.134649',NULL,'duongviethung2003@gmail.com',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(131,61,'2024-05-02 21:52:17.325790',NULL,'duongviethung2003@gmail.com',NULL,'Chuyển trạng thái','Hủy','HUY'),(132,61,'2024-05-02 21:52:17.328786',NULL,'duongviethung2003@gmail.com',NULL,'Yêu cầu hoàn tiền : 4.558.301','Chờ hoàn tiền','CHO_HOAN_TIEN'),(133,61,'2024-05-02 21:52:30.273783',NULL,'duongviethung2003@gmail.com',NULL,'Đã hoàn số tiền: 4.558.301','Đã hoàn tiền','DA_HOAN_TIEN'),(134,62,'2024-05-02 21:59:55.010666',NULL,'0963277913',NULL,NULL,'Chờ xác nhận','CHO_XAC_NHAN'),(135,63,'2024-05-02 22:01:22.443417',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(136,64,'2024-05-02 22:01:51.190887',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(137,65,'2024-05-02 22:02:40.020279',NULL,'duongviethung2003@gmail.com',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(138,66,'2024-05-02 22:03:45.960082',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(139,67,'2024-05-02 22:04:10.405283',NULL,'duongviethung2003@gmail.com',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(140,68,'2024-05-02 23:08:51.377895',NULL,'0963277913',NULL,NULL,'Chờ xác nhận','CHO_XAC_NHAN'),(141,68,'2024-05-02 23:10:15.803482',NULL,'duongviethung2003@gmail.com',NULL,'Chuyển trạng thái','Đã xác nhận','DA_XAC_NHAN'),(142,68,'2024-05-02 23:10:45.044623',NULL,'duongviethung2003@gmail.com',NULL,'Chuyển trạng thái','Chờ giao hàng','CHO_GIAO'),(143,68,'2024-05-02 23:11:26.603826',NULL,'duongviethung2003@gmail.com',NULL,'Chuyển trạng thái','Đang giao hàng','DANG_GIAO'),(144,68,'2024-05-02 23:11:49.177651',NULL,'duongviethung2003@gmail.com',NULL,'Tạo thanh toán với số tiền : 2.207.801','Tạo thanh toán',NULL),(145,68,'2024-05-02 23:12:23.495404',NULL,'duongviethung2003@gmail.com',NULL,'Chuyển trạng thái','Hoàn thành','HOAN_THANH'),(146,69,'2024-05-02 23:14:41.810096',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(147,70,'2024-05-02 23:17:03.358439',NULL,'duongviethung2003@gmail.com',NULL,'','Chờ xác nhận','CHO_XAC_NHAN'),(148,71,'2024-05-02 23:19:43.483268',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn thành','HOAN_THANH'),(149,68,'2024-05-02 23:19:43.516486',NULL,'duongviethung2003@gmail.com',NULL,'Sản phẩm bị lỗi (rách, mất cúc áo, cúc tay, mốc, v.v)','Trả hàng','TRA_HANG');
/*!40000 ALTER TABLE `lich_su_hoa_don` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mau_sac`
--

DROP TABLE IF EXISTS `mau_sac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mau_sac` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_id` int DEFAULT NULL,
  `trang_thai` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `ma` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_q7pi6vpa0r7k8d4511krmkmkr` (`image_id`),
  CONSTRAINT `FKs2yox2vbl1l9adiu6mup5luo4` FOREIGN KEY (`image_id`) REFERENCES `mau_sac_image` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mau_sac`
--

LOCK TABLES `mau_sac` WRITE;
/*!40000 ALTER TABLE `mau_sac` DISABLE KEYS */;
INSERT INTO `mau_sac` VALUES (1,1,_binary '','2024-04-25 22:12:38.300205',NULL,'admin0203',NULL,'TRANG','Trắng'),(2,2,_binary '','2024-04-25 22:13:15.041268',NULL,'admin0203',NULL,'DEN','Đen'),(3,3,_binary '','2024-04-25 22:14:33.732909',NULL,'admin0203',NULL,'XANHDUONG','Xanh dương'),(4,4,_binary '','2024-04-25 22:15:41.857384','2024-04-27 15:02:49.503171','admin0203','admin0203','BEIGE','Be'),(5,5,_binary '','2024-04-25 22:18:31.299396',NULL,'admin0203',NULL,'XANHLA','Xanh lá'),(6,6,_binary '','2024-04-25 22:22:55.198241',NULL,'admin0203',NULL,'DORUOU','Đỏ rượu'),(7,7,_binary '','2024-04-25 22:26:22.346425',NULL,'admin0203',NULL,'NAU','Nâu'),(8,8,_binary '','2024-04-25 22:28:07.940748',NULL,'admin0203',NULL,'HONG','Hồng'),(9,9,_binary '','2024-04-25 22:30:11.545197',NULL,'admin0203',NULL,'VANG','Vàng'),(10,10,_binary '','2024-04-27 11:08:59.931226',NULL,'admin0203',NULL,'XANHDEN','Xanh đen');
/*!40000 ALTER TABLE `mau_sac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mau_sac_image`
--

DROP TABLE IF EXISTS `mau_sac_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mau_sac_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_id` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mau_sac_image`
--

LOCK TABLES `mau_sac_image` WRITE;
/*!40000 ALTER TABLE `mau_sac_image` DISABLE KEYS */;
INSERT INTO `mau_sac_image` VALUES (1,'yev8leuwg8cbm9tjrgyt','trang','http://res.cloudinary.com/dpsryzyev/image/upload/v1714057956/yev8leuwg8cbm9tjrgyt.jpg'),(2,'ld9x6bwtgptce2qhshnb','mau-den-01','http://res.cloudinary.com/dpsryzyev/image/upload/v1714057993/ld9x6bwtgptce2qhshnb.jpg'),(3,'mfftvewfyoiqueexiq17','xanh-duong-nhat','http://res.cloudinary.com/dpsryzyev/image/upload/v1714058072/mfftvewfyoiqueexiq17.jpg'),(4,'gicnmdpg9un6sr8ism7u','mau-be','http://res.cloudinary.com/dpsryzyev/image/upload/v1714058900/gicnmdpg9un6sr8ism7u.jpg'),(5,'rzowiulw7id88dp1c2gf','xanh-reu-11','http://res.cloudinary.com/dpsryzyev/image/upload/v1714058833/rzowiulw7id88dp1c2gf.jpg'),(6,'ysbj7l5ooyrktwbzuxh3','do-ruou','http://res.cloudinary.com/dpsryzyev/image/upload/v1714058573/ysbj7l5ooyrktwbzuxh3.png'),(7,'f89kuuswrw85sfnoj2gd','mau-nau','http://res.cloudinary.com/dpsryzyev/image/upload/v1714058780/f89kuuswrw85sfnoj2gd.png'),(8,'ya1e50tp1ufywuxzkkj9','hong','http://res.cloudinary.com/dpsryzyev/image/upload/v1714058886/ya1e50tp1ufywuxzkkj9.jpg'),(9,'sspixlqscvbyud9anghc','vang','http://res.cloudinary.com/dpsryzyev/image/upload/v1714059010/sspixlqscvbyud9anghc.png'),(10,'aito0jabusr5wg0crwnm','xanh-den','http://res.cloudinary.com/dpsryzyev/image/upload/v1714190938/aito0jabusr5wg0crwnm.png');
/*!40000 ALTER TABLE `mau_sac_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhan_vien`
--

DROP TABLE IF EXISTS `nhan_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhan_vien` (
  `account_id` int DEFAULT NULL,
  `gioi_tinh` bit(1) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `image_id` int DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `cccd` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5n9lbijsdl4qn33dqr58cf1cb` (`account_id`),
  KEY `FK2bnmp6n2nkowummqr4n6ie44e` (`image_id`),
  CONSTRAINT `FK2bnmp6n2nkowummqr4n6ie44e` FOREIGN KEY (`image_id`) REFERENCES `staff_image` (`id`),
  CONSTRAINT `FK32eawtyqqx6sdv28q9df6qyqd` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhan_vien`
--

LOCK TABLES `nhan_vien` WRITE;
/*!40000 ALTER TABLE `nhan_vien` DISABLE KEYS */;
INSERT INTO `nhan_vien` VALUES (1,_binary '',1,NULL,'2004-04-03',NULL,'2024-04-30 09:16:03.458983','001234567899',NULL,'Hà Nội','langcoc@gmail.com','Nguyễn Lăng Cọc','admin0203','0123456789'),(5,_binary '\0',12,1,'2001-04-30','2024-04-30 09:19:40.911836',NULL,'001236598763','admin0203','Phương Canh, Nam Từ Liêm, Hà Nội','hohao2001@gmail.com','Hồ Thị Hảo',NULL,'0369788346'),(6,_binary '',13,2,'2000-02-08','2024-04-30 09:22:07.871607',NULL,'003456369997','admin0203','Tân Phú, Quốc Oai, Hà Nội','vantuan28@gmail.com','Trần Văn Tuấn',NULL,'0221779635'),(7,_binary '',14,3,'2002-05-30','2024-04-30 09:25:12.288098',NULL,'003269865479','admin0203','Thượng Bì, Kim Bôi, Hòa Bình','anhtunguyen05@gmail.com','Nguyễn Anh Tú',NULL,'0326986356'),(8,_binary '',15,4,'2003-01-30','2024-04-30 09:28:45.882935',NULL,'001236598763','admin0203','Đại Yên, Chương Mỹ, Hà Nội','duongviethung2003@gmail.com','Dương Việt Hùng',NULL,'0369863547'),(24,_binary '',16,5,'2005-03-01','2024-04-30 16:24:03.002103',NULL,'001265987635','admin0203','Chương Mỹ, Hà Nội','hungdvph29421@fpt.edu.vn','Ma Thu Thủy',NULL,'0369986599'),(25,_binary '',17,6,'2003-12-12','2024-04-30 16:29:46.460036','2024-05-02 20:38:07.655575','001236986579','admin0203','Chương Mỹ, Hà Nội','hungboong30@gmail.com','Trần Đại Hùng','hohao2001@gmail.com','0369886359'),(27,_binary '',18,7,'2024-04-11','2024-04-30 23:17:29.256069','2024-05-01 11:52:53.611573','001203698979','admin0203','Chương Mỹ Hà Nội','hungdvph29422@fpt.edu.vn','Phạm văn Bình abc','hohao2001@gmail.com','0375773850'),(34,_binary '',19,8,'2002-11-13','2024-05-02 23:30:52.246287',NULL,'010202003060','duongviethung2003@gmail.com','TDP Hang Rồng, TT. Si Ma Cai, Si Ma Cai, Lào Cai','hungviet@gmail.com','Vũ Thế Long',NULL,'0225678935');
/*!40000 ALTER TABLE `nhan_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `cust_id` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `is_read` bit(1) NOT NULL,
  `time` datetime(6) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `related_url` varchar(255) DEFAULT NULL,
  `type` enum('ORDER_STATUS_UPDATED','NEW_ORDER_CREATED') DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsx31tdcvw1x426q44kgafiay5` (`cust_id`),
  CONSTRAINT `FKsx31tdcvw1x426q44kgafiay5` FOREIGN KEY (`cust_id`) REFERENCES `khach_hang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,1,_binary '\0','2024-04-26 21:17:54.271532','Hóa đơn HDAD07836 đã được cập nhật trạng thái','/profile/order-tracking/HDAD07836','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,2,_binary '\0','2024-04-26 21:20:26.215521','Hóa đơn HDAD07836 đã được cập nhật trạng thái','/profile/order-tracking/HDAD07836','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,3,_binary '\0','2024-04-26 21:21:23.225304','Hóa đơn HDAD07836 đã được cập nhật trạng thái','/profile/order-tracking/HDAD07836','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,4,_binary '\0','2024-04-26 21:26:51.609817','Hóa đơn HDAD07836 đã được cập nhật trạng thái','/profile/order-tracking/HDAD07836','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,5,_binary '\0','2024-04-27 09:16:16.090219','Hóa đơn HDAD07836 đã được cập nhật trạng thái','/profile/order-tracking/HDAD07836','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,6,_binary '\0','2024-04-27 09:24:04.464210','Hóa đơn HDAD07836 đã được cập nhật trạng thái','/profile/order-tracking/HDAD07836','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,7,_binary '\0','2024-04-27 09:25:36.890423','Hóa đơn HDAD07836 đã được cập nhật trạng thái','/profile/order-tracking/HDAD07836','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,8,_binary '\0','2024-04-27 09:27:04.650709','Hóa đơn HDAD07836 đã được cập nhật trạng thái','/profile/order-tracking/HDAD07836','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,9,_binary '\0','2024-04-29 17:42:55.293862','Hóa đơn HD7C3729F đã được cập nhật trạng thái','/profile/order-tracking/HD7C3729F','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,10,_binary '\0','2024-04-29 17:44:30.937204','Hóa đơn HD7C3729F đã được cập nhật trạng thái','/profile/order-tracking/HD7C3729F','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,11,_binary '\0','2024-04-29 17:45:05.754335','Hóa đơn HD7C3729F đã được cập nhật trạng thái','/profile/order-tracking/HD7C3729F','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,12,_binary '\0','2024-04-29 17:45:13.548829','Hóa đơn HD7C3729F đã được cập nhật trạng thái','/profile/order-tracking/HD7C3729F','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(2,13,_binary '\0','2024-04-30 17:07:01.337821','Hóa đơn HD087DEBE đã được cập nhật trạng thái!','/profile/order-tracking/HD087DEBE','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(3,14,_binary '\0','2024-04-30 17:08:44.908743','Hóa đơn HDB7E4123 đã được cập nhật trạng thái!','/profile/order-tracking/HDB7E4123','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(3,15,_binary '\0','2024-04-30 17:08:58.410397','Hóa đơn HDB7E4123 đã được cập nhật trạng thái!','/profile/order-tracking/HDB7E4123','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(3,16,_binary '\0','2024-04-30 17:23:50.377093','Hóa đơn HDB7E4123 đã được cập nhật trạng thái!','/profile/order-tracking/HDB7E4123','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,17,_binary '\0','2024-04-30 17:23:56.099510','Hóa đơn HDEB3E4EE đã được cập nhật trạng thái!','/profile/order-tracking/HDEB3E4EE','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,18,_binary '\0','2024-04-30 17:24:03.085871','Hóa đơn HDEB3E4EE đã được cập nhật trạng thái!','/profile/order-tracking/HDEB3E4EE','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,19,_binary '\0','2024-04-30 17:24:04.994369','Hóa đơn HDEB3E4EE đã được cập nhật trạng thái!','/profile/order-tracking/HDEB3E4EE','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,20,_binary '\0','2024-04-30 17:24:13.831718','Hóa đơn HD7283D8D đã được cập nhật trạng thái!','/profile/order-tracking/HD7283D8D','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(1,21,_binary '\0','2024-04-30 17:24:18.462910','Hóa đơn HD7283D8D đã được cập nhật trạng thái!','/profile/order-tracking/HD7283D8D','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(2,22,_binary '\0','2024-04-30 17:24:29.858633','Hóa đơn HD1427082 đã được cập nhật trạng thái!','/profile/order-tracking/HD1427082','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(2,23,_binary '\0','2024-04-30 17:24:43.235180','Hóa đơn HD1427082 đã được cập nhật trạng thái!','/profile/order-tracking/HD1427082','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(14,24,_binary '\0','2024-04-30 19:12:58.933060','Hóa đơn HDA3E0C1F đã được cập nhật trạng thái!','/profile/order-tracking/HDA3E0C1F','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(19,25,_binary '\0','2024-04-30 23:22:12.399420','Hóa đơn HDAF87E65 đã được cập nhật trạng thái!','/profile/order-tracking/HDAF87E65','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(19,26,_binary '\0','2024-04-30 23:22:35.562546','Hóa đơn HDAF87E65 đã được cập nhật trạng thái!','/profile/order-tracking/HDAF87E65','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(19,27,_binary '\0','2024-04-30 23:22:53.202786','Hóa đơn HDAF87E65 đã được cập nhật trạng thái!','/profile/order-tracking/HDAF87E65','ORDER_STATUS_UPDATED',NULL,NULL,NULL,NULL),(NULL,28,_binary '\0','2024-05-01 14:08:50.506746','Bạn có đơn hàng mới từ khách hàng Dương Nguyễn Trung!','/hoa-don/chi-tiet-hoa-don/31','NEW_ORDER_CREATED','2024-05-01 14:08:50.512765','anonymousUser',NULL,NULL),(20,29,_binary '\0','2024-05-01 14:09:38.810691','Hóa đơn HD08E428C đã được cập nhật trạng thái!','/profile/order-tracking/HD08E428C','ORDER_STATUS_UPDATED','2024-05-01 14:09:38.811692','hohao2001@gmail.com',NULL,NULL),(NULL,30,_binary '\0','2024-05-02 21:59:55.054536','Bạn có đơn hàng mới từ khách hàng Dương Nguyễn Trung!','/hoa-don/chi-tiet-hoa-don/62','NEW_ORDER_CREATED','2024-05-02 21:59:55.061559','anonymousUser',NULL,NULL),(NULL,31,_binary '\0','2024-05-02 23:08:51.448653','Bạn có đơn hàng mới từ khách hàng Dương Nguyễn Trung!','/hoa-don/chi-tiet-hoa-don/68','NEW_ORDER_CREATED','2024-05-02 23:08:51.457233','anonymousUser',NULL,NULL),(20,32,_binary '\0','2024-05-02 23:10:16.093351','Hóa đơn HD6040A95 đã được cập nhật trạng thái!','/profile/order-tracking/HD6040A95','ORDER_STATUS_UPDATED','2024-05-02 23:10:16.093351','duongviethung2003@gmail.com',NULL,NULL),(20,33,_binary '\0','2024-05-02 23:10:45.071905','Hóa đơn HD6040A95 đã được cập nhật trạng thái!','/profile/order-tracking/HD6040A95','ORDER_STATUS_UPDATED','2024-05-02 23:10:45.072907','duongviethung2003@gmail.com',NULL,NULL),(20,34,_binary '\0','2024-05-02 23:11:26.634119','Hóa đơn HD6040A95 đã được cập nhật trạng thái!','/profile/order-tracking/HD6040A95','ORDER_STATUS_UPDATED','2024-05-02 23:11:26.635120','duongviethung2003@gmail.com',NULL,NULL),(20,35,_binary '\0','2024-05-02 23:12:23.525107','Hóa đơn HD6040A95 đã được cập nhật trạng thái!','/profile/order-tracking/HD6040A95','ORDER_STATUS_UPDATED','2024-05-02 23:12:23.526108','duongviethung2003@gmail.com',NULL,NULL);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_giam_gia`
--

DROP TABLE IF EXISTS `phieu_giam_gia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_giam_gia` (
  `dieu_kien_giam` decimal(38,2) DEFAULT NULL,
  `gia_tri` decimal(38,2) DEFAULT NULL,
  `gia_tri_max` decimal(38,2) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `kieu` int DEFAULT NULL,
  `loai` int DEFAULT NULL,
  `so_luong` int NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `thoi_gian_bat_dau` datetime(6) DEFAULT NULL,
  `thoi_gian_ket_thuc` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `ma_phieu_giam_gia` varchar(255) DEFAULT NULL,
  `ten_phieu_giam_gia` varchar(255) DEFAULT NULL,
  `trang_thai` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_giam_gia`
--

LOCK TABLES `phieu_giam_gia` WRITE;
/*!40000 ALTER TABLE `phieu_giam_gia` DISABLE KEYS */;
INSERT INTO `phieu_giam_gia` VALUES (600000.00,15.00,50000.00,1,0,1,30,'2024-04-30 14:03:12.185040','2024-04-30 14:04:00.000000','2024-04-30 15:03:00.000000',NULL,'admin0203',NULL,'17PB1B','Ưu Đãi Vàng','Đã kết thúc'),(1000000.00,100000.00,NULL,2,1,1,49,'2024-04-30 14:05:01.452851','2024-04-30 15:04:00.000000','2024-04-30 17:04:00.000000','2024-04-30 17:03:25.429793','admin0203','admin0203','Z56R1D','Voucher Ngày Vui','Đã kết thúc'),(5.00,10.00,10000.00,3,0,1,0,'2024-04-30 14:20:37.631433','2024-04-30 14:21:00.000000','2024-05-02 14:20:00.000000','2024-04-30 23:21:33.814303','admin0203','0375773850','XZTETH','Tri ân','Đã kết thúc'),(2000000.00,15.00,150000.00,4,0,0,3,'2024-04-30 14:36:34.409417','2024-04-30 14:37:00.000000','2024-04-30 14:42:00.000000',NULL,'admin0203',NULL,'9I0ZHW','Khách hàng mới','Đã kết thúc'),(1000000.00,12.00,200000.00,5,0,0,4,'2024-04-30 17:05:38.854909','2024-04-30 17:06:00.000000','2024-04-30 17:16:00.000000','2024-05-02 21:45:24.414864','admin0203','duongviethung2003@gmail.com','9V2QYJ','Tri ân 30 04','Đã kết thúc'),(800000.00,10.00,50000.00,6,0,1,18,'2024-04-30 21:09:49.214886','2024-04-30 21:10:00.000000','2024-04-30 22:09:00.000000','2024-04-30 21:16:41.321790','admin0203','admin0203','4A0WBN','Tri ân','Đã kết thúc'),(500000.00,10.00,30000.00,7,0,1,30,'2024-04-30 21:10:36.789321','2024-04-30 21:12:00.000000','2024-04-30 21:40:00.000000','2024-04-30 21:11:38.631558','admin0203','admin0203','UKSHRV','Tri ân','Đã kết thúc'),(1000000.00,10.00,70000.00,8,0,1,23,'2024-05-01 21:13:34.288310','2024-05-01 21:15:00.000000','2024-05-02 21:02:00.000000','2024-05-02 21:02:44.016801','hohao2001@gmail.com','duongviethung2003@gmail.com','F7CKCB','Mua Sắm Thả Ga','Đã kết thúc'),(2000000.00,15.00,200000.00,9,0,1,23,'2024-05-01 21:16:18.064445','2024-05-01 21:17:00.000000','2024-05-02 21:02:00.000000','2024-05-02 21:02:31.452152','hohao2001@gmail.com','duongviethung2003@gmail.com','POK63K','Khuyến Mãi Siêu Tiết Kiệm','Đã kết thúc'),(2000000.00,15.00,200000.00,10,0,1,17,'2024-05-02 22:22:19.855310','2024-05-02 22:24:00.000000','2024-05-06 22:22:00.000000','2024-05-02 23:17:03.360457','duongviethung2003@gmail.com','duongviethung2003@gmail.com','DM02QW','Khuyến Mãi Vô Tận','Đang diễn ra'),(1000000.00,10.00,70000.00,11,0,1,25,'2024-05-02 22:24:34.375119','2024-05-02 22:25:00.000000','2024-05-06 22:24:00.000000',NULL,'duongviethung2003@gmail.com',NULL,'OYI20T','Quà Bất Ngờ','Đang diễn ra'),(1000000.00,10.00,100000.00,12,0,1,15,'2024-05-02 23:22:16.832192','2024-05-02 23:23:00.000000','2024-05-03 14:22:00.000000',NULL,'duongviethung2003@gmail.com',NULL,'2QE4AW','Tri ân','Đang diễn ra');
/*!40000 ALTER TABLE `phieu_giam_gia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_giam_gia_kh`
--

DROP TABLE IF EXISTS `phieu_giam_gia_kh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_giam_gia_kh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_used` bit(1) NOT NULL,
  `khach_hang_id` int DEFAULT NULL,
  `phieu_giam_gia_id` int DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe2f6kd9jdsa3bb47g9p6dr9jh` (`khach_hang_id`),
  KEY `FKm0wxpf9di0mh1qjsgls0sbqvl` (`phieu_giam_gia_id`),
  CONSTRAINT `FKe2f6kd9jdsa3bb47g9p6dr9jh` FOREIGN KEY (`khach_hang_id`) REFERENCES `khach_hang` (`id`),
  CONSTRAINT `FKm0wxpf9di0mh1qjsgls0sbqvl` FOREIGN KEY (`phieu_giam_gia_id`) REFERENCES `phieu_giam_gia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_giam_gia_kh`
--

LOCK TABLES `phieu_giam_gia_kh` WRITE;
/*!40000 ALTER TABLE `phieu_giam_gia_kh` DISABLE KEYS */;
INSERT INTO `phieu_giam_gia_kh` VALUES (1,_binary '\0',1,4,1),(2,_binary '\0',2,4,1),(3,_binary '\0',13,4,1),(4,_binary '\0',1,5,1),(5,_binary '\0',2,5,1),(6,_binary '\0',3,5,0),(7,_binary '\0',4,5,1),(8,_binary '\0',5,5,1);
/*!40000 ALTER TABLE `phieu_giam_gia_kh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `san_pham` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trang_thai` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `ma` varchar(255) DEFAULT NULL,
  `mo_ta` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_pham`
--

LOCK TABLES `san_pham` WRITE;
/*!40000 ALTER TABLE `san_pham` DISABLE KEYS */;
INSERT INTO `san_pham` VALUES (1,_binary '','2024-04-26 21:02:28.618442',NULL,'admin0203',NULL,'AO01','- Được cập nhật với hàm lượng cotton cao hơn để có kết cấu mềm mại hơn mà không ảnh hưởng đến cảm giác mát mẻ của vải lanh.','Áo Sơmi Cuban Linen Glamorous Embroidery Logo'),(2,_binary '','2024-04-27 11:00:43.530656','2024-04-27 11:01:24.639256','admin0203','admin0203','SM001','&#272;&#432;&#7907;c c&#7853;p nh&#7853;t v&#7899;i h&#224;m l&#432;&#7907;ng cotton cao h&#417;n &#273;&#7875; c&#243; k&#7871;t c&#7845;u m&#7873;m m&#7841;i h&#417;n&#160;','Áo sơ mi Chrysanthenum Pattern'),(3,_binary '','2024-04-27 11:05:58.025064',NULL,'admin0203',NULL,'SPRE','- Được cập nhật với hàm lượng cotton cao hơn để có kết cấu mềm mại hơn mà không ảnh hưởng đến cảm giác mát mẻ của vải lanh.','Áo Sơ mi Semi Spread'),(4,_binary '','2024-04-27 11:13:37.387353',NULL,'admin0203',NULL,'SCRIPT','- Được cập nhật với hàm lượng cotton cao hơn để có kết cấu mềm mại hơn mà không ảnh hưởng đến cảm giác mát mẻ của vải lanh.','Áo Sơmi Script'),(5,_binary '','2024-04-27 11:23:26.375032',NULL,'admin0203',NULL,'CRAFT','- Được cập nhật với hàm lượng cotton cao hơn để có kết cấu mềm mại hơn mà không ảnh hưởng đến cảm giác mát mẻ của vải lanh.','Áo Sơmi Cuban CigarCraft'),(6,_binary '','2024-04-27 14:28:31.506207',NULL,'admin0203',NULL,'MAZE','- Được cập nhật với hàm lượng cotton cao hơn để có kết cấu mềm mại hơn mà không ảnh hưởng đến cảm giác mát mẻ của vải lanh.','Áo Sơ mi Maze'),(7,_binary '','2024-04-27 14:32:40.503635',NULL,'admin0203',NULL,'OLD01','- Được cập nhật với hàm lượng cotton cao hơn để có kết cấu mềm mại hơn mà không ảnh hưởng đến cảm giác mát mẻ của vải lanh.','Áo Sơ mi Old School'),(8,_binary '','2024-04-27 14:39:00.604838',NULL,'admin0203',NULL,'INDIGO','Với tinh thần đơn giản nhưng sang trọng, áo sơ mi denim Dark Blue không chỉ là một sản phẩm thời trang, mà còn là sự kết hợp hoàn hảo giữa thoải mái và phong cách','Áo Sơmi Indigo'),(9,_binary '','2024-04-27 14:51:44.939180',NULL,'admin0203',NULL,'SPRED2','Áo Sơmi Regular Semi Spread Caro là sự kết hợp giữa 3 chất liệu bamboo, polyester, và spandex. Đây là 3 chất liệu mang đến nhiều ưu điểm cho người mặc giúp áo sơ mi có độ thoáng khí cao, giữ form dáng tốt, co giãn và bền bỉ.','Áo Sơ mi Spread Caro'),(10,_binary '','2024-04-27 14:58:24.261197',NULL,'admin0203',NULL,'FABRIC','Chất liệu corduroy không chỉ tạo nên cảm giác mềm mại và ấm áp mà còn đảm bảo áo sơmi giữ được form dáng và màu sắc, chống nhăn sau nhiều lần sử dụng.','Áo Sơ mi Corduroy Fabric Embroidered'),(11,_binary '','2024-04-27 15:04:28.350536',NULL,'admin0203',NULL,'STRIPE','Với sọc dọc màu xanh trên nền trắng, áo Sơmi này tạo nên sự tươi mới và gần gũi với thiên nhiên. Màu xanh thanh lịch kết hợp với nền trắng tinh tế, tạo nên sự hài hòa và dễ dàng phối hợp với nhiều kiểu trang phục khác nhau.','Áo Sơ mi Vertical Stripe'),(12,_binary '','2024-04-27 15:07:42.273417',NULL,'admin0203',NULL,'RYMTHM','Thiết kế của áo mang đến thông điệp về nhịp sống, năng động và tích cực là biểu tượng của sự đồng điệu và tính hiện đại.','Áo Sơ mi Basic The Rhythm Of Life'),(13,_binary '','2024-04-27 15:13:11.436998',NULL,'admin0203',NULL,'NEWYORK','Thiết kế của áo mang đến thông điệp về nhịp sống, năng động và tích cực là biểu tượng của sự đồng điệu và tính hiện đại.','Áo Sơ mi Baseball New York'),(14,_binary '','2024-04-27 15:17:14.318280',NULL,'admin0203',NULL,'PORT','Thiết kế của áo mang đến thông điệp về nhịp sống, năng động và tích cực là biểu tượng của sự đồng điệu và tính hiện đại.','Áo Sơ mi Monogram Portraits'),(15,_binary '','2024-04-27 15:24:36.340242',NULL,'admin0203',NULL,'SPRING','Thiết kế của áo mang đến thông điệp về nhịp sống, năng động và tích cực là biểu tượng của sự đồng điệu và tính hiện đại.','Áo Sơ mi Vibrant Spring'),(16,_binary '','2024-04-27 15:29:21.692087',NULL,'admin0203',NULL,'MYSTERIUS','Thiết kế của áo mang đến thông điệp về nhịp sống, năng động và tích cực là biểu tượng của sự đồng điệu và tính hiện đại.','Áo Sơ mi Linen Mysterious Shapes'),(17,_binary '','2024-04-27 15:32:51.170051',NULL,'admin0203',NULL,'ELEGANT','Thiết kế của áo mang đến thông điệp về nhịp sống, năng động và tích cực là biểu tượng của sự đồng điệu và tính hiện đại.','Áo Sơ mi Elegant Vibe'),(18,_binary '','2024-04-27 15:39:17.090227',NULL,'admin0203',NULL,'RELAXED','Thiết kế của áo mang đến thông điệp về nhịp sống, năng động và tích cực là biểu tượng của sự đồng điệu và tính hiện đại.','Áo Sơmi Cổ Trụ Relaxed Tay Dài'),(19,_binary '','2024-04-27 15:44:14.632219',NULL,'admin0203',NULL,'HENLEY','Thiết kế của áo mang đến thông điệp về nhịp sống, năng động và tích cực là biểu tượng của sự đồng điệu và tính hiện đại.','Áo Sơ mi Linen Henley'),(20,_binary '\0','2024-04-27 17:20:23.582063','2024-04-29 20:52:33.944197','admin0203','admin0203','TAKEA','Thiết kế của áo mang đến thông điệp về nhịp sống, năng động và tích cực là biểu tượng của sự đồng điệu và tính hiện đại.','Áo sơ mi Take A Move'),(21,_binary '','2024-05-02 23:02:43.896260',NULL,'duongviethung2003@gmail.com',NULL,'AO999','Thiết kế của áo mang đến thông điệp về nhịp sống, năng động và tích cực là biểu tượng của sự đồng điệu và tính hiện đại','Áo sơ mi nam dài tay');
/*!40000 ALTER TABLE `san_pham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_pham_chi_tiet`
--

DROP TABLE IF EXISTS `san_pham_chi_tiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `san_pham_chi_tiet` (
  `chat_lieu_id` int DEFAULT NULL,
  `co_ao_id` int DEFAULT NULL,
  `gia_ban` decimal(38,2) DEFAULT NULL,
  `gia_nhap` decimal(38,2) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `kich_co_id` int DEFAULT NULL,
  `kieu_dang_id` int DEFAULT NULL,
  `mau_sac_id` int DEFAULT NULL,
  `san_pham_id` int DEFAULT NULL,
  `so_luong_ton` int NOT NULL,
  `tay_ao_id` int DEFAULT NULL,
  `thiet_ke_id` int DEFAULT NULL,
  `trang_thai` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdt0k3gay0pwsfl5392tivmn6b` (`chat_lieu_id`),
  KEY `FK6lc1iawydl6olme4p5eowk1w3` (`co_ao_id`),
  KEY `FKnksu2p5k20le5lqjm55qbtkdi` (`kich_co_id`),
  KEY `FK2hhnx38dqgvlaja0f2b69ct1n` (`kieu_dang_id`),
  KEY `FK69otryack9hyggsfl8oonges0` (`mau_sac_id`),
  KEY `FK1h21xucteeu2y93ybdvk4i8bw` (`san_pham_id`),
  KEY `FK5vejc3ffrnoy0k7ox1193kpcv` (`tay_ao_id`),
  KEY `FKe8bsk8tykrry0233yd2vp9q82` (`thiet_ke_id`),
  CONSTRAINT `FK1h21xucteeu2y93ybdvk4i8bw` FOREIGN KEY (`san_pham_id`) REFERENCES `san_pham` (`id`),
  CONSTRAINT `FK2hhnx38dqgvlaja0f2b69ct1n` FOREIGN KEY (`kieu_dang_id`) REFERENCES `kieu_dang` (`id`),
  CONSTRAINT `FK5vejc3ffrnoy0k7ox1193kpcv` FOREIGN KEY (`tay_ao_id`) REFERENCES `tay_ao` (`id`),
  CONSTRAINT `FK69otryack9hyggsfl8oonges0` FOREIGN KEY (`mau_sac_id`) REFERENCES `mau_sac` (`id`),
  CONSTRAINT `FK6lc1iawydl6olme4p5eowk1w3` FOREIGN KEY (`co_ao_id`) REFERENCES `co_ao` (`id`),
  CONSTRAINT `FKdt0k3gay0pwsfl5392tivmn6b` FOREIGN KEY (`chat_lieu_id`) REFERENCES `chat_lieu` (`id`),
  CONSTRAINT `FKe8bsk8tykrry0233yd2vp9q82` FOREIGN KEY (`thiet_ke_id`) REFERENCES `kieu_thiet_ke` (`id`),
  CONSTRAINT `FKnksu2p5k20le5lqjm55qbtkdi` FOREIGN KEY (`kich_co_id`) REFERENCES `kich_co` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_pham_chi_tiet`
--

LOCK TABLES `san_pham_chi_tiet` WRITE;
/*!40000 ALTER TABLE `san_pham_chi_tiet` DISABLE KEYS */;
INSERT INTO `san_pham_chi_tiet` VALUES (2,2,1500000.00,1000000.00,1,2,4,4,1,18,3,2,_binary '','2024-04-26 21:05:00.603312','2024-04-27 09:29:54.371326','admin0203','admin0203'),(2,2,1500000.00,1000000.00,2,3,4,4,1,18,3,2,_binary '','2024-04-26 21:05:00.606313','2024-05-02 22:04:10.407280','admin0203','duongviethung2003@gmail.com'),(2,2,1500000.00,1000000.00,3,1,4,4,1,19,3,2,_binary '','2024-04-26 21:05:00.608309','2024-04-26 21:06:26.802106','admin0203','admin0203'),(2,2,1500000.00,1000000.00,4,2,4,1,1,19,3,2,_binary '','2024-04-26 21:05:00.662999','2024-05-02 22:03:45.971155','admin0203','duongviethung2003@gmail.com'),(2,2,1500000.00,1000000.00,5,3,4,1,1,19,3,2,_binary '','2024-04-26 21:05:00.666003','2024-04-26 21:45:39.170170','admin0203','admin0203'),(2,2,1500000.00,1000000.00,6,1,4,1,1,17,3,2,_binary '','2024-04-26 21:05:00.668000','2024-05-02 22:04:10.407280','admin0203','duongviethung2003@gmail.com'),(2,2,1500000.00,1000000.00,7,2,4,2,1,20,3,2,_binary '','2024-04-26 21:05:01.677436',NULL,'admin0203',NULL),(2,2,1500000.00,1000000.00,8,3,4,2,1,19,3,2,_binary '','2024-04-26 21:05:01.679422','2024-05-02 22:03:45.971155','admin0203','duongviethung2003@gmail.com'),(2,2,1500000.00,1000000.00,9,1,4,2,1,20,3,2,_binary '','2024-04-26 21:05:01.681418',NULL,'admin0203',NULL),(2,5,1000000.00,700000.00,10,2,1,2,2,49,2,5,_binary '','2024-04-27 11:04:53.625613','2024-05-02 21:59:55.025218','admin0203','0963277913'),(2,5,1000000.00,700000.00,11,3,1,2,2,48,2,5,_binary '','2024-04-27 11:04:53.628626','2024-05-02 22:03:45.971155','admin0203','duongviethung2003@gmail.com'),(2,5,1000000.00,700000.00,12,5,1,2,2,47,2,5,_binary '','2024-04-27 11:04:53.629613','2024-05-01 21:20:11.902020','admin0203','hohao2001@gmail.com'),(2,2,500000.00,300000.00,13,5,2,8,3,10,1,2,_binary '','2024-04-27 11:12:39.607072','2024-04-30 17:25:00.777540','admin0203','admin0203'),(2,2,500000.00,300000.00,14,3,2,8,3,10,1,2,_binary '','2024-04-27 11:12:39.612098',NULL,'admin0203',NULL),(2,2,500000.00,300000.00,15,2,2,8,3,10,1,2,_binary '','2024-04-27 11:12:39.613089',NULL,'admin0203',NULL),(2,2,500000.00,300000.00,16,5,2,1,3,10,1,2,_binary '','2024-04-27 11:12:39.659144',NULL,'admin0203',NULL),(2,2,500000.00,300000.00,17,3,2,1,3,10,1,2,_binary '','2024-04-27 11:12:39.661150',NULL,'admin0203',NULL),(2,2,500000.00,300000.00,18,2,2,1,3,10,1,2,_binary '','2024-04-27 11:12:39.663150',NULL,'admin0203',NULL),(2,2,550000.00,350000.00,19,5,2,2,3,10,1,2,_binary '','2024-04-27 11:12:39.952890',NULL,'admin0203',NULL),(2,2,550000.00,350000.00,20,3,2,2,3,9,1,2,_binary '','2024-04-27 11:12:39.954897','2024-05-01 20:47:00.848838','admin0203','hohao2001@gmail.com'),(2,2,550000.00,350000.00,21,2,2,2,3,5,1,2,_binary '','2024-04-27 11:12:39.956897','2024-05-02 22:03:45.971155','admin0203','duongviethung2003@gmail.com'),(4,2,800000.00,500000.00,22,3,4,3,4,30,1,3,_binary '','2024-04-27 11:15:08.692495',NULL,'admin0203',NULL),(4,2,800000.00,500000.00,23,2,4,3,4,30,1,3,_binary '','2024-04-27 11:15:08.694496',NULL,'admin0203',NULL),(4,2,800000.00,500000.00,24,1,4,3,4,29,1,3,_binary '','2024-04-27 11:15:08.696495','2024-05-02 23:14:41.821641','admin0203','duongviethung2003@gmail.com'),(6,5,1300000.00,1000000.00,25,1,3,5,5,8,2,6,_binary '','2024-04-27 11:28:43.103589','2024-05-02 22:02:40.022296','admin0203','duongviethung2003@gmail.com'),(6,5,1300000.00,1000000.00,26,2,3,5,5,10,2,6,_binary '','2024-04-27 11:28:43.106590',NULL,'admin0203',NULL),(6,5,1300000.00,1000000.00,27,3,3,5,5,8,2,6,_binary '','2024-04-27 11:28:43.107589','2024-05-02 22:02:40.021308','admin0203','duongviethung2003@gmail.com'),(6,5,1300000.00,1000000.00,28,1,3,1,5,10,2,6,_binary '','2024-04-27 11:28:43.397896',NULL,'admin0203',NULL),(6,5,1300000.00,1000000.00,29,2,3,1,5,10,2,6,_binary '','2024-04-27 11:28:43.400407',NULL,'admin0203',NULL),(6,5,1300000.00,1000000.00,30,3,3,1,5,10,2,6,_binary '','2024-04-27 11:28:43.402931',NULL,'admin0203',NULL),(6,5,1300000.00,1000000.00,31,1,3,2,5,15,2,6,_binary '','2024-04-27 11:28:44.555509',NULL,'admin0203',NULL),(6,5,1300000.00,1000000.00,32,2,3,2,5,15,2,6,_binary '','2024-04-27 11:28:44.557512',NULL,'admin0203',NULL),(6,5,1300000.00,1000000.00,33,3,3,2,5,15,2,6,_binary '','2024-04-27 11:28:44.558512',NULL,'admin0203',NULL),(6,5,1300000.00,1000000.00,34,1,3,4,5,8,2,6,_binary '','2024-04-27 11:28:44.803026','2024-05-02 21:13:11.698683','admin0203','duongviethung2003@gmail.com'),(6,5,1300000.00,1000000.00,35,2,3,4,5,20,2,6,_binary '','2024-04-27 11:28:44.805015',NULL,'admin0203',NULL),(6,5,1300000.00,1000000.00,36,3,3,4,5,16,2,6,_binary '','2024-04-27 11:28:44.806017','2024-05-02 21:13:11.698683','admin0203','duongviethung2003@gmail.com'),(7,5,1600000.00,1300000.00,37,2,4,3,6,13,1,5,_binary '','2024-04-27 14:29:46.036577','2024-05-02 23:17:03.360457','admin0203','duongviethung2003@gmail.com'),(7,5,1600000.00,1300000.00,38,3,4,3,6,20,1,5,_binary '','2024-04-27 14:29:46.038573',NULL,'admin0203',NULL),(7,5,1600000.00,1300000.00,39,5,4,3,6,14,1,5,_binary '','2024-04-27 14:29:46.040571','2024-05-02 21:12:11.766908','admin0203','duongviethung2003@gmail.com'),(7,5,800000.00,600000.00,40,2,3,5,7,18,3,2,_binary '','2024-04-27 14:37:09.181480','2024-04-30 23:22:23.057069','admin0203','admin0203'),(7,5,800000.00,600000.00,41,3,3,5,7,20,3,2,_binary '','2024-04-27 14:37:09.183483',NULL,'admin0203',NULL),(7,5,800000.00,600000.00,42,5,3,5,7,16,3,2,_binary '','2024-04-27 14:37:09.184513','2024-05-02 21:12:11.766908','admin0203','duongviethung2003@gmail.com'),(7,5,800000.00,600000.00,43,2,3,4,7,4,3,2,_binary '','2024-04-27 14:37:09.439950','2024-05-02 21:12:11.766908','admin0203','duongviethung2003@gmail.com'),(7,5,800000.00,600000.00,44,3,3,4,7,9,3,2,_binary '','2024-04-27 14:37:09.441957','2024-05-02 21:11:31.322733','admin0203','duongviethung2003@gmail.com'),(7,5,800000.00,600000.00,45,5,3,4,7,7,3,2,_binary '','2024-04-27 14:37:09.443967','2024-05-02 21:11:31.322733','admin0203','duongviethung2003@gmail.com'),(1,2,800000.00,550000.00,46,2,1,10,8,30,1,6,_binary '','2024-04-27 14:42:02.866424',NULL,'admin0203',NULL),(1,2,800000.00,550000.00,47,3,1,10,8,30,1,6,_binary '','2024-04-27 14:42:02.868408',NULL,'admin0203',NULL),(1,2,800000.00,550000.00,48,5,1,10,8,28,1,6,_binary '','2024-04-27 14:42:02.870413','2024-04-30 19:18:16.546049','admin0203','admin0203'),(2,2,450000.00,200000.00,49,1,4,2,9,27,1,4,_binary '','2024-04-27 14:55:35.222606','2024-05-02 21:10:17.950919','admin0203','duongviethung2003@gmail.com'),(2,2,450000.00,200000.00,50,2,4,2,9,24,1,4,_binary '','2024-04-27 14:55:35.224611','2024-05-02 21:10:17.950919','admin0203','duongviethung2003@gmail.com'),(2,2,450000.00,200000.00,51,3,4,2,9,28,1,4,_binary '','2024-04-27 14:55:35.226612','2024-05-02 21:10:17.950919','admin0203','duongviethung2003@gmail.com'),(2,2,400000.00,200000.00,52,1,4,3,9,27,1,4,_binary '','2024-04-27 14:55:35.273323','2024-05-02 21:10:17.950919','admin0203','duongviethung2003@gmail.com'),(2,2,400000.00,200000.00,53,2,4,3,9,26,1,4,_binary '','2024-04-27 14:55:35.275324','2024-05-02 21:10:17.950919','admin0203','duongviethung2003@gmail.com'),(2,2,400000.00,200000.00,54,3,4,3,9,30,1,4,_binary '','2024-04-27 14:55:35.276329',NULL,'admin0203',NULL),(2,2,400000.00,200000.00,55,1,4,1,9,26,1,4,_binary '','2024-04-27 14:55:35.501632','2024-05-02 21:08:36.938892','admin0203','duongviethung2003@gmail.com'),(2,2,400000.00,200000.00,56,2,4,1,9,30,1,4,_binary '','2024-04-27 14:55:35.503639',NULL,'admin0203',NULL),(2,2,400000.00,200000.00,57,3,4,1,9,28,1,4,_binary '','2024-04-27 14:55:35.505638','2024-05-02 21:08:36.937905','admin0203','duongviethung2003@gmail.com'),(5,2,550000.00,300000.00,58,2,3,2,10,17,1,6,_binary '','2024-04-27 15:02:30.864669','2024-05-02 21:08:36.937905','admin0203','duongviethung2003@gmail.com'),(5,2,550000.00,300000.00,59,3,3,2,10,15,1,6,_binary '','2024-04-27 15:02:30.866679','2024-05-02 21:07:57.059359','admin0203','duongviethung2003@gmail.com'),(5,2,550000.00,300000.00,60,5,3,2,10,19,1,6,_binary '','2024-04-27 15:02:30.867881','2024-04-30 21:16:41.322799','admin0203','admin0203'),(5,2,600000.00,300000.00,61,2,3,4,10,13,1,6,_binary '','2024-04-27 15:02:31.037117','2024-05-02 21:07:57.059359','admin0203','duongviethung2003@gmail.com'),(5,2,600000.00,300000.00,62,3,3,4,10,20,1,6,_binary '','2024-04-27 15:02:31.039135',NULL,'admin0203',NULL),(5,2,600000.00,300000.00,63,5,3,4,10,17,1,6,_binary '','2024-04-27 15:02:31.040124','2024-05-02 21:07:57.059359','admin0203','duongviethung2003@gmail.com'),(5,2,600000.00,300000.00,64,2,3,7,10,20,1,6,_binary '','2024-04-27 15:02:34.085226',NULL,'admin0203',NULL),(5,2,600000.00,300000.00,65,3,3,7,10,20,1,6,_binary '','2024-04-27 15:02:34.087229',NULL,'admin0203',NULL),(5,2,600000.00,300000.00,66,5,3,7,10,17,1,6,_binary '','2024-04-27 15:02:34.088229','2024-05-02 21:07:15.968486','admin0203','duongviethung2003@gmail.com'),(2,2,500000.00,250000.00,67,1,1,3,11,20,1,3,_binary '','2024-04-27 15:06:35.580296',NULL,'admin0203',NULL),(2,2,500000.00,250000.00,68,2,1,3,11,15,1,3,_binary '','2024-04-27 15:06:35.582324','2024-05-02 21:07:15.968486','admin0203','duongviethung2003@gmail.com'),(2,2,500000.00,250000.00,69,3,1,3,11,20,1,3,_binary '','2024-04-27 15:06:35.583325',NULL,'admin0203',NULL),(2,2,500000.00,250000.00,70,5,1,3,11,14,1,3,_binary '','2024-04-27 15:06:35.584324','2024-05-02 21:06:32.641019','admin0203','duongviethung2003@gmail.com'),(2,2,450000.00,300000.00,71,2,3,5,12,17,1,1,_binary '','2024-04-27 15:10:15.474483','2024-05-02 21:06:32.641019','admin0203','duongviethung2003@gmail.com'),(2,2,450000.00,300000.00,72,3,3,5,12,20,1,1,_binary '','2024-04-27 15:10:15.476484',NULL,'admin0203',NULL),(2,2,450000.00,300000.00,73,5,3,5,12,19,1,1,_binary '','2024-04-27 15:10:15.478487','2024-05-01 20:47:00.848838','admin0203','hohao2001@gmail.com'),(2,2,450000.00,300000.00,74,1,3,5,12,12,1,1,_binary '','2024-04-27 15:10:15.479490','2024-05-02 23:08:51.414075','admin0203','0963277913'),(2,1,600000.00,400000.00,75,2,3,2,13,20,2,5,_binary '','2024-04-27 15:15:34.883658',NULL,'admin0203',NULL),(2,1,600000.00,400000.00,76,3,3,2,13,15,2,5,_binary '','2024-04-27 15:15:34.885641','2024-05-02 21:05:58.655846','admin0203','duongviethung2003@gmail.com'),(2,1,600000.00,400000.00,77,5,3,2,13,20,2,5,_binary '','2024-04-27 15:15:34.887653',NULL,'admin0203',NULL),(2,1,630000.00,400000.00,78,2,3,4,13,19,2,5,_binary '','2024-04-27 15:15:36.183891','2024-04-30 19:19:53.495980','admin0203','admin0203'),(2,1,630000.00,400000.00,79,3,3,4,13,20,2,5,_binary '','2024-04-27 15:15:36.185881',NULL,'admin0203',NULL),(2,1,630000.00,400000.00,80,5,3,4,13,16,2,5,_binary '','2024-04-27 15:15:36.187893','2024-05-02 21:05:22.759663','admin0203','duongviethung2003@gmail.com'),(2,4,450000.00,300000.00,81,2,3,10,14,15,2,5,_binary '','2024-04-27 15:19:56.839426',NULL,'admin0203',NULL),(2,4,450000.00,300000.00,82,3,3,10,14,14,2,5,_binary '','2024-04-27 15:19:56.841440','2024-04-30 19:15:42.758813','admin0203','admin0203'),(2,4,450000.00,300000.00,83,5,3,10,14,12,2,5,_binary '','2024-04-27 15:19:56.843421','2024-04-29 17:47:55.836874','admin0203','admin0203'),(2,5,450000.00,300000.00,84,3,3,6,15,18,1,5,_binary '','2024-04-27 15:27:16.084791','2024-05-02 21:05:22.759663','admin0203','duongviethung2003@gmail.com'),(2,5,450000.00,300000.00,85,2,3,6,15,15,1,5,_binary '','2024-04-27 15:27:16.086802','2024-05-02 21:04:47.578671','admin0203','duongviethung2003@gmail.com'),(2,5,450000.00,300000.00,86,5,3,6,15,20,1,5,_binary '','2024-04-27 15:27:16.089791',NULL,'admin0203',NULL),(2,4,350000.00,250000.00,87,2,3,10,16,28,2,5,_binary '','2024-04-27 15:30:49.563147','2024-05-02 21:04:47.578671','admin0203','duongviethung2003@gmail.com'),(2,4,350000.00,250000.00,88,3,3,10,16,25,2,5,_binary '','2024-04-27 15:30:49.565132','2024-05-02 21:04:47.578671','admin0203','duongviethung2003@gmail.com'),(2,4,350000.00,250000.00,89,5,3,10,16,25,2,5,_binary '','2024-04-27 15:30:49.566133','2024-05-02 21:04:05.923072','admin0203','duongviethung2003@gmail.com'),(2,2,890000.00,700000.00,90,2,1,1,17,20,1,6,_binary '','2024-04-27 15:36:06.335195',NULL,'admin0203',NULL),(2,2,890000.00,700000.00,91,3,1,1,17,20,1,6,_binary '','2024-04-27 15:36:06.338204',NULL,'admin0203',NULL),(2,2,890000.00,700000.00,92,2,1,2,17,20,1,6,_binary '','2024-04-27 15:36:07.582949',NULL,'admin0203',NULL),(2,2,890000.00,700000.00,93,3,1,2,17,11,1,6,_binary '','2024-04-27 15:36:07.584955','2024-05-02 21:04:05.923072','admin0203','duongviethung2003@gmail.com'),(2,2,890000.00,700000.00,94,2,1,3,17,18,1,6,_binary '','2024-04-27 15:36:07.923693','2024-05-02 21:00:52.213262','admin0203','duongviethung2003@gmail.com'),(2,2,890000.00,700000.00,95,3,1,3,17,17,1,6,_binary '','2024-04-27 15:36:07.927710','2024-05-01 21:20:45.960231','admin0203','hohao2001@gmail.com'),(7,1,490000.00,350000.00,96,2,4,8,18,28,1,3,_binary '','2024-04-27 15:40:53.212692','2024-04-30 18:57:27.564953','admin0203','admin0203'),(7,1,490000.00,350000.00,97,3,4,8,18,26,1,3,_binary '','2024-04-27 15:40:53.215702','2024-05-01 21:20:45.959241','admin0203','hohao2001@gmail.com'),(7,1,490000.00,350000.00,98,5,4,8,18,28,1,3,_binary '','2024-04-27 15:40:53.218696','2024-04-30 19:13:32.457872','admin0203','admin0203'),(7,1,490000.00,350000.00,99,2,4,3,18,29,1,3,_binary '','2024-04-27 15:40:54.000465','2024-04-29 17:37:30.210142','admin0203','admin0203'),(7,1,490000.00,350000.00,100,3,4,3,18,27,1,3,_binary '','2024-04-27 15:40:54.003462','2024-05-02 22:01:51.202397','admin0203','duongviethung2003@gmail.com'),(7,1,490000.00,350000.00,101,5,4,3,18,28,1,3,_binary '','2024-04-27 15:40:54.006454','2024-04-30 19:15:42.759817','admin0203','admin0203'),(2,2,400000.00,200000.00,102,1,2,1,19,42,1,6,_binary '','2024-04-27 15:45:49.348949','2024-05-02 21:00:12.736502','admin0203','duongviethung2003@gmail.com'),(2,2,400000.00,200000.00,103,2,2,1,19,47,1,6,_binary '','2024-04-27 15:45:49.350944','2024-05-02 21:00:52.213262','admin0203','duongviethung2003@gmail.com'),(2,2,400000.00,200000.00,104,3,2,1,19,47,1,6,_binary '','2024-04-27 15:45:49.352950','2024-05-02 22:01:51.201397','admin0203','duongviethung2003@gmail.com'),(2,2,400000.00,200000.00,105,5,2,1,19,45,1,6,_binary '','2024-04-27 15:45:49.354951','2024-05-02 22:01:22.450930','admin0203','duongviethung2003@gmail.com'),(2,2,400000.00,200000.00,106,1,2,2,19,44,1,6,_binary '','2024-04-27 15:45:51.123094','2024-05-02 21:01:51.454465','admin0203','duongviethung2003@gmail.com'),(2,2,400000.00,200000.00,107,2,2,2,19,46,1,6,_binary '','2024-04-27 15:45:51.126102','2024-05-02 20:58:42.608339','admin0203','duongviethung2003@gmail.com'),(2,2,400000.00,200000.00,108,3,2,2,19,44,1,6,_binary '','2024-04-27 15:45:51.129089','2024-04-30 23:22:40.308670','admin0203','admin0203'),(2,2,400000.00,200000.00,109,5,2,2,19,26,1,6,_binary '','2024-04-27 15:45:51.131090','2024-05-02 22:01:22.450930','admin0203','duongviethung2003@gmail.com'),(2,2,1500000.00,1000000.00,110,2,3,4,20,27,1,1,_binary '','2024-05-02 20:36:16.142898','2024-05-02 21:00:12.736502','hohao2001@gmail.com','duongviethung2003@gmail.com'),(2,2,1500000.00,1000000.00,111,3,3,4,20,26,1,1,_binary '','2024-05-02 20:36:16.150104','2024-05-02 21:03:29.017095','hohao2001@gmail.com','duongviethung2003@gmail.com'),(2,2,1500000.00,1000000.00,112,2,3,1,20,22,1,1,_binary '','2024-05-02 20:36:17.386604','2024-05-02 22:03:45.971155','hohao2001@gmail.com','duongviethung2003@gmail.com'),(2,2,1500000.00,1000000.00,113,3,3,1,20,26,1,1,_binary '','2024-05-02 20:36:17.388518','2024-05-02 21:52:20.325752','hohao2001@gmail.com','duongviethung2003@gmail.com'),(8,5,2000000.00,1000000.00,114,1,5,1,21,20,1,2,_binary '','2024-05-02 23:06:21.113385',NULL,'duongviethung2003@gmail.com',NULL),(8,5,2000000.00,1000000.00,115,2,5,1,21,20,1,2,_binary '','2024-05-02 23:06:21.116372',NULL,'duongviethung2003@gmail.com',NULL),(8,5,2000000.00,1000000.00,116,3,5,1,21,20,1,2,_binary '','2024-05-02 23:06:21.119574',NULL,'duongviethung2003@gmail.com',NULL),(8,5,1500000.00,1000000.00,117,1,5,9,21,20,1,2,_binary '','2024-05-02 23:06:22.168384',NULL,'duongviethung2003@gmail.com',NULL),(8,5,2000000.00,1000000.00,118,2,5,9,21,19,1,2,_binary '','2024-05-02 23:06:22.170381','2024-05-02 23:08:51.414075','duongviethung2003@gmail.com','0963277913'),(8,5,2000000.00,1000000.00,119,3,5,9,21,20,1,2,_binary '','2024-05-02 23:06:22.172392',NULL,'duongviethung2003@gmail.com',NULL),(8,5,2000000.00,1000000.00,120,1,5,4,21,19,1,2,_binary '','2024-05-02 23:06:22.337221','2024-05-02 23:14:41.820636','duongviethung2003@gmail.com','duongviethung2003@gmail.com'),(8,5,2000000.00,1000000.00,121,2,5,4,21,20,1,2,_binary '','2024-05-02 23:06:22.339754',NULL,'duongviethung2003@gmail.com',NULL),(8,5,2000000.00,1000000.00,122,3,5,4,21,19,1,2,_binary '','2024-05-02 23:06:22.341744','2024-05-02 23:17:03.360457','duongviethung2003@gmail.com','duongviethung2003@gmail.com');
/*!40000 ALTER TABLE `san_pham_chi_tiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spct_hinhanh`
--

DROP TABLE IF EXISTS `spct_hinhanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spct_hinhanh` (
  `hinhanh_id` int NOT NULL,
  `spct_id` int NOT NULL,
  PRIMARY KEY (`hinhanh_id`,`spct_id`),
  KEY `FKq85ngcpbd61j63w8bejful92b` (`hinhanh_id`),
  KEY `FKfpxrjb1rhj16rewyc8v07ntpj` (`spct_id`),
  CONSTRAINT `FKfpxrjb1rhj16rewyc8v07ntpj` FOREIGN KEY (`spct_id`) REFERENCES `san_pham_chi_tiet` (`id`),
  CONSTRAINT `FKq85ngcpbd61j63w8bejful92b` FOREIGN KEY (`hinhanh_id`) REFERENCES `hinh_anh` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spct_hinhanh`
--

LOCK TABLES `spct_hinhanh` WRITE;
/*!40000 ALTER TABLE `spct_hinhanh` DISABLE KEYS */;
INSERT INTO `spct_hinhanh` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(3,7),(3,8),(3,9),(4,10),(4,11),(4,12),(5,10),(5,11),(5,12),(6,10),(6,11),(6,12),(7,13),(7,14),(7,15),(8,16),(8,17),(8,18),(9,19),(9,20),(9,21),(10,22),(10,23),(10,24),(11,22),(11,23),(11,24),(12,22),(12,23),(12,24),(13,25),(13,26),(13,27),(14,28),(14,29),(14,30),(15,31),(15,32),(15,33),(16,34),(16,35),(16,36),(17,37),(17,38),(17,39),(18,37),(18,38),(18,39),(19,40),(19,41),(19,42),(20,40),(20,41),(20,42),(21,43),(21,44),(21,45),(22,43),(22,44),(22,45),(23,46),(23,47),(23,48),(24,46),(24,47),(24,48),(25,46),(25,47),(25,48),(26,49),(26,50),(26,51),(27,52),(27,53),(27,54),(28,55),(28,56),(28,57),(29,58),(29,59),(29,60),(30,61),(30,62),(30,63),(31,64),(31,65),(31,66),(32,67),(32,68),(32,69),(32,70),(33,67),(33,68),(33,69),(33,70),(34,67),(34,68),(34,69),(34,70),(35,71),(35,72),(35,73),(35,74),(36,71),(36,72),(36,73),(36,74),(37,71),(37,72),(37,73),(37,74),(38,75),(38,76),(38,77),(39,78),(39,79),(39,80),(40,78),(40,79),(40,80),(41,81),(41,82),(41,83),(42,81),(42,82),(42,83),(43,81),(43,82),(43,83),(44,84),(44,85),(44,86),(45,84),(45,85),(45,86),(46,84),(46,85),(46,86),(47,87),(47,88),(47,89),(48,87),(48,88),(48,89),(49,87),(49,88),(49,89),(50,90),(50,91),(51,92),(51,93),(52,94),(52,95),(53,96),(53,97),(53,98),(54,96),(54,97),(54,98),(55,99),(55,100),(55,101),(56,99),(56,100),(56,101),(57,102),(57,103),(57,104),(57,105),(58,102),(58,103),(58,104),(58,105),(59,106),(59,107),(59,108),(59,109),(60,106),(60,107),(60,108),(60,109),(61,110),(61,111),(62,110),(62,111),(63,112),(63,113),(64,112),(64,113),(65,114),(65,115),(65,116),(66,114),(66,115),(66,116),(67,117),(67,118),(67,119),(68,117),(68,118),(68,119),(69,120),(69,121),(69,122),(70,120),(70,121),(70,122);
/*!40000 ALTER TABLE `spct_hinhanh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_image`
--

DROP TABLE IF EXISTS `staff_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_id` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_image`
--

LOCK TABLES `staff_image` WRITE;
/*!40000 ALTER TABLE `staff_image` DISABLE KEYS */;
INSERT INTO `staff_image` VALUES (1,'yrntjn9qk63dbm5fmsdq','anh-chan-dung-6','http://res.cloudinary.com/dpsryzyev/image/upload/v1714443579/yrntjn9qk63dbm5fmsdq.jpg'),(2,'idsntjjzsrrxd7w7mii8','anh_the_1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714443726/idsntjjzsrrxd7w7mii8.jpg'),(3,'iasi3yfgcw5vujpogaog','anh_the_7','http://res.cloudinary.com/dpsryzyev/image/upload/v1714443911/iasi3yfgcw5vujpogaog.jpg'),(4,'urcazdsz5dsxdd0ity6t','anh-the-2024','http://res.cloudinary.com/dpsryzyev/image/upload/v1714444124/urcazdsz5dsxdd0ity6t.jpg'),(5,'lzgwdiimwye4sdzn0d4w','anh_the_9','http://res.cloudinary.com/dpsryzyev/image/upload/v1714469041/lzgwdiimwye4sdzn0d4w.jpg'),(6,'i1khwielc4pdw0hzjion','anh_the_1','http://res.cloudinary.com/dpsryzyev/image/upload/v1714469384/i1khwielc4pdw0hzjion.jpg'),(7,'nhbrfxx6iej7tjd0dndy','anh_the_9','http://res.cloudinary.com/dpsryzyev/image/upload/v1714493846/nhbrfxx6iej7tjd0dndy.jpg'),(8,'nq13zluymj5gvqgobjzi','anh_the_7','http://res.cloudinary.com/dpsryzyev/image/upload/v1714667450/nq13zluymj5gvqgobjzi.jpg');
/*!40000 ALTER TABLE `staff_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tay_ao`
--

DROP TABLE IF EXISTS `tay_ao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tay_ao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trang_thai` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tay_ao`
--

LOCK TABLES `tay_ao` WRITE;
/*!40000 ALTER TABLE `tay_ao` DISABLE KEYS */;
INSERT INTO `tay_ao` VALUES (1,_binary '','2024-04-25 22:40:11.877885',NULL,'admin0203',NULL,'Tay dài'),(2,_binary '','2024-04-25 22:40:20.633845',NULL,'admin0203',NULL,'Tay ngắn'),(3,_binary '','2024-04-25 22:40:28.820062',NULL,'admin0203',NULL,'Tay lỡ');
/*!40000 ALTER TABLE `tay_ao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thanh_toan`
--

DROP TABLE IF EXISTS `thanh_toan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thanh_toan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_hoa_don` int DEFAULT NULL,
  `id_httt` int DEFAULT NULL,
  `so_tien` decimal(38,2) DEFAULT NULL,
  `trang_thai` bit(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `ma_giao_dich` varchar(255) DEFAULT NULL,
  `mo_ta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj9aik00pboiihg2ekgf3ceusn` (`id_httt`),
  KEY `FK543gfw2cged82vmxbl65i7p9u` (`id_hoa_don`),
  CONSTRAINT `FK543gfw2cged82vmxbl65i7p9u` FOREIGN KEY (`id_hoa_don`) REFERENCES `hoa_don` (`id`),
  CONSTRAINT `FKj9aik00pboiihg2ekgf3ceusn` FOREIGN KEY (`id_httt`) REFERENCES `hinh_thuc_thanh_toan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thanh_toan`
--

LOCK TABLES `thanh_toan` WRITE;
/*!40000 ALTER TABLE `thanh_toan` DISABLE KEYS */;
INSERT INTO `thanh_toan` VALUES (1,1,1,1500000.00,_binary '','2024-04-26 21:05:24.724073',NULL,'admin0203',NULL,'',NULL),(2,2,1,1500000.00,_binary '','2024-04-26 21:06:26.799093',NULL,'admin0203',NULL,'',NULL),(3,3,2,6025300.00,_binary '','2024-04-26 21:24:53.927459',NULL,'admin0203',NULL,'ctgyvbhyjv',''),(4,3,2,-6025300.00,_binary '','2024-04-27 09:30:14.925875',NULL,'admin0203',NULL,'jcabwsgyfr','Hoàn tiền: '),(5,6,1,1340000.00,_binary '','2024-04-29 17:37:30.158567',NULL,'admin0203',NULL,'',NULL),(6,7,2,890000.00,_binary '','2024-04-29 17:38:22.648640',NULL,'admin0203',NULL,'888888888',NULL),(7,8,2,3805300.00,_binary '','2024-04-29 17:41:45.805938',NULL,'admin0203',NULL,'03003324',NULL),(8,10,2,1190000.00,_binary '','2024-04-30 17:03:25.427651',NULL,'admin0203',NULL,'vhddg',NULL),(9,12,2,1114301.00,_binary '','2024-04-30 17:08:38.415172',NULL,'admin0203',NULL,'6846163484',NULL),(10,17,1,480000.00,_binary '','2024-04-30 18:57:27.559967',NULL,'admin0203',NULL,'',NULL),(11,21,1,3590000.00,_binary '','2024-04-30 19:00:57.934806',NULL,'admin0203',NULL,'',NULL),(12,23,2,10100000.00,_binary '','2024-04-30 19:10:41.882474',NULL,'admin0203',NULL,'KNSD8932473',NULL),(13,24,1,1390000.00,_binary '','2024-04-30 19:15:42.754818',NULL,'admin0203',NULL,'',NULL),(14,25,2,1600000.00,_binary '','2024-04-30 19:18:16.543056',NULL,'admin0203',NULL,'9862647382',NULL),(15,26,1,630000.00,_binary '','2024-04-30 19:19:53.491983',NULL,'admin0203',NULL,'',NULL),(16,27,2,1000000.00,_binary '','2024-04-30 19:22:24.360837',NULL,'admin0203',NULL,'978983748','khách quên trả tiền'),(17,28,1,1150000.00,_binary '','2024-04-30 21:14:18.554184',NULL,'admin0203',NULL,'',''),(18,29,1,900000.00,_binary '','2024-04-30 21:16:41.319800',NULL,'admin0203',NULL,'',''),(19,35,1,932500.00,_binary '','2024-05-01 20:47:00.846297',NULL,'hohao2001@gmail.com',NULL,'',''),(20,36,1,1850000.00,_binary '','2024-05-01 21:20:11.898469',NULL,'hohao2001@gmail.com',NULL,'',''),(21,37,1,1310000.00,_binary '','2024-05-01 21:20:45.957046',NULL,'hohao2001@gmail.com',NULL,'',''),(22,38,1,1290000.00,_binary '','2024-05-01 21:21:38.772097',NULL,'hohao2001@gmail.com',NULL,'',''),(23,39,1,18800000.00,_binary '','2024-05-02 20:57:42.962475',NULL,'duongviethung2003@gmail.com',NULL,'',''),(24,40,1,25060000.00,_binary '','2024-05-02 20:58:42.604345',NULL,'duongviethung2003@gmail.com',NULL,'',''),(25,41,1,18400000.00,_binary '','2024-05-02 20:59:13.958314',NULL,'duongviethung2003@gmail.com',NULL,'',''),(26,42,1,36300000.00,_binary '','2024-05-02 21:00:12.732506',NULL,'duongviethung2003@gmail.com',NULL,'',''),(27,43,1,19580000.00,_binary '','2024-05-02 21:00:52.211262',NULL,'duongviethung2003@gmail.com',NULL,'',''),(28,44,1,56300000.00,_binary '','2024-05-02 21:01:51.452479',NULL,'duongviethung2003@gmail.com',NULL,'',''),(29,45,1,55560016.00,_binary '','2024-05-02 21:03:29.015119',NULL,'duongviethung2003@gmail.com',NULL,'',''),(30,46,1,36200000.00,_binary '','2024-05-02 21:04:05.921070',NULL,'duongviethung2003@gmail.com',NULL,'',''),(31,47,1,62700000.00,_binary '','2024-05-02 21:04:47.576671',NULL,'duongviethung2003@gmail.com',NULL,'',''),(32,48,1,29042000.00,_binary '','2024-05-02 21:05:22.757495',NULL,'duongviethung2003@gmail.com',NULL,'',''),(33,49,1,49462500.00,_binary '','2024-05-02 21:05:58.653845',NULL,'duongviethung2003@gmail.com',NULL,'',''),(34,50,1,30147500.00,_binary '','2024-05-02 21:06:32.639028',NULL,'duongviethung2003@gmail.com',NULL,'',''),(35,51,1,1100000.00,_binary '','2024-05-02 21:07:15.965479',NULL,'duongviethung2003@gmail.com',NULL,'',''),(36,51,1,46200000.00,_binary '','2024-05-02 21:07:15.967486',NULL,'duongviethung2003@gmail.com',NULL,'',''),(37,52,1,39350000.00,_binary '','2024-05-02 21:07:57.057360',NULL,'duongviethung2003@gmail.com',NULL,'',''),(38,53,1,24050000.00,_binary '','2024-05-02 21:08:36.935884',NULL,'duongviethung2003@gmail.com',NULL,'',''),(39,54,1,25750000.00,_binary '','2024-05-02 21:10:17.948744',NULL,'duongviethung2003@gmail.com',NULL,'',''),(40,55,1,32000032.00,_binary '','2024-05-02 21:11:31.320733',NULL,'duongviethung2003@gmail.com',NULL,'',''),(41,56,1,110080000.00,_binary '','2024-05-02 21:12:11.764886',NULL,'duongviethung2003@gmail.com',NULL,'',''),(42,57,1,251100000.00,_binary '','2024-05-02 21:13:11.697681',NULL,'duongviethung2003@gmail.com',NULL,'',''),(43,58,2,1558301.00,_binary '','2024-05-02 21:38:41.206465',NULL,'duongviethung2003@gmail.com',NULL,'54877647',''),(44,58,1,-1558301.00,_binary '','2024-05-02 21:39:05.505119',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn tiền: '),(45,32,1,425301.00,_binary '','2024-05-02 21:42:43.033080',NULL,'duongviethung2003@gmail.com',NULL,'',''),(46,32,1,-425301.00,_binary '','2024-05-02 21:43:09.242452',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn tiền: '),(49,11,1,1433301.00,_binary '','2024-05-02 21:45:16.950325',NULL,'duongviethung2003@gmail.com',NULL,'',''),(50,11,1,-1433301.00,_binary '','2024-05-02 21:45:39.993124',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn tiền: '),(51,31,1,1500000.00,_binary '','2024-05-02 21:46:10.382999',NULL,'duongviethung2003@gmail.com',NULL,'',''),(52,31,2,-1500000.00,_binary '','2024-05-02 21:46:30.640981',NULL,'duongviethung2003@gmail.com',NULL,'2346846','Hoàn tiền: '),(53,5,1,1525301.00,_binary '','2024-05-02 21:47:52.037276',NULL,'duongviethung2003@gmail.com',NULL,'',''),(54,5,1,-1525301.00,_binary '','2024-05-02 21:48:05.618214',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn tiền: '),(55,59,1,1558301.00,_binary '','2024-05-02 21:48:57.330448',NULL,'duongviethung2003@gmail.com',NULL,'',''),(56,59,1,-1558301.00,_binary '','2024-05-02 21:49:12.232084',NULL,'duongviethung2003@gmail.com',NULL,'','Hoàn tiền: '),(57,60,1,1525301.00,_binary '','2024-05-02 21:50:47.894039',NULL,'duongviethung2003@gmail.com',NULL,'',''),(58,60,2,-1525301.00,_binary '','2024-05-02 21:51:07.020997',NULL,'duongviethung2003@gmail.com',NULL,'3416456','Hoàn tiền: '),(59,61,1,4558301.00,_binary '','2024-05-02 21:52:09.140179',NULL,'duongviethung2003@gmail.com',NULL,'',''),(60,61,2,-4558301.00,_binary '','2024-05-02 21:52:30.276783',NULL,'duongviethung2003@gmail.com',NULL,'6538683','Hoàn tiền: '),(61,63,1,3200000.00,_binary '','2024-05-02 22:01:22.447934',NULL,'duongviethung2003@gmail.com',NULL,'',''),(62,64,2,2180000.00,_binary '','2024-05-02 22:01:51.200396',NULL,'duongviethung2003@gmail.com',NULL,'315846313',''),(63,66,1,11950000.00,_binary '','2024-05-02 22:03:45.969288',NULL,'duongviethung2003@gmail.com',NULL,'',''),(64,68,1,2207801.00,_binary '','2024-05-02 23:11:49.181630',NULL,'duongviethung2003@gmail.com',NULL,'',''),(65,69,1,2480000.00,_binary '','2024-05-02 23:14:41.818626',NULL,'duongviethung2003@gmail.com',NULL,'',''),(66,71,1,NULL,_binary '','2024-05-02 23:19:43.491282',NULL,'duongviethung2003@gmail.com',NULL,NULL,NULL);
/*!40000 ALTER TABLE `thanh_toan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-02 23:36:29
