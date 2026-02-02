-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: interchange.proxy.rlwy.net    Database: railway
-- ------------------------------------------------------
-- Server version	9.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `access_logs`
--

DROP TABLE IF EXISTS `access_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `action` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_general_ci,
  `browser` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `device` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_timestamp` (`user_id`,`timestamp`),
  KEY `idx_timestamp` (`timestamp`),
  CONSTRAINT `access_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_logs`
--

LOCK TABLES `access_logs` WRITE;
/*!40000 ALTER TABLE `access_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `access_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `action` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `record_id` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `old_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `new_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_module` (`user_id`,`module`),
  KEY `idx_timestamp` (`timestamp`),
  CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `activity_logs_chk_1` CHECK (json_valid(`old_values`)),
  CONSTRAINT `activity_logs_chk_2` CHECK (json_valid(`new_values`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_logs`
--

LOCK TABLES `activity_logs` WRITE;
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `middle_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `extension` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `position` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender_id` int DEFAULT NULL,
  `mobile_number` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role_id` int NOT NULL,
  `branch_id` int DEFAULT NULL COMMENT 'For branch and barangay admins',
  `barangay_id` int DEFAULT NULL COMMENT 'For barangay admins only',
  `is_active` tinyint(1) DEFAULT '1',
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`),
  UNIQUE KEY `username` (`username`),
  KEY `gender_id` (`gender_id`),
  KEY `role_id` (`role_id`),
  KEY `branch_id` (`branch_id`),
  KEY `barangay_id` (`barangay_id`),
  CONSTRAINT `admin_users_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`),
  CONSTRAINT `admin_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`),
  CONSTRAINT `admin_users_ibfk_3` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  CONSTRAINT `admin_users_ibfk_4` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'OSCA-ADMIN-001','mainadmin','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Main',NULL,'Administrator',NULL,'System Administrator',1,'09171234567','admin@osca.gov.ph',1,NULL,NULL,1,'2026-02-02 00:05:16','2025-12-15 01:34:10','2026-02-02 00:05:16'),(2,'OSCA-FO1-001','fo1admin','$2y$10$oZGAfalfM5Cm1vSXxtPTjOd0h3pe7eXBXsxJonghoB3gA.O3Os6oK','FO1',NULL,'Admin',NULL,'Field Office 1 Manager',1,'09171234568','fo1@osca.gov.ph',2,2,NULL,1,'2026-02-01 17:18:43','2025-12-15 01:34:10','2026-02-01 17:18:43'),(3,'OSCA-FO2-001','fo2admin','$2y$10$oZGAfalfM5Cm1vSXxtPTjOd0h3pe7eXBXsxJonghoB3gA.O3Os6oK','FO2',NULL,'Admin',NULL,'Field Office 2 Manager',2,'09171234569','fo2@osca.gov.ph',2,3,NULL,1,'2026-02-01 12:50:26','2025-12-15 01:34:10','2026-02-01 12:50:26'),(4,'OSCA-BRGY-001','tetuan.admin','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Tetuan',NULL,'Admin',NULL,'Barangay Tetuan Coordinator',1,'09171234570','tetuan@osca.gov.ph',3,5,79,1,'2026-02-01 15:02:16','2025-12-15 01:34:10','2026-02-01 15:02:16'),(5,'OSCA-BRGY-002','santamaria.admin','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Santa Maria',NULL,'Admin',NULL,'Barangay Santa Maria Coordinator',2,'09171234571','santamaria@osca.gov.ph',3,4,68,1,'2026-02-01 07:22:42','2025-12-15 01:34:10','2026-02-01 07:22:42'),(6,'OSCA-BRGY-003','guiwan.admin','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Guiwan',NULL,'Admin',NULL,'Barangay Guiwan Coordinator',1,'09171234572','guiwan@osca.gov.ph',3,5,26,1,'2026-02-01 17:03:09','2025-12-15 01:34:10','2026-02-01 17:03:09'),(7,'OSCA-ADMIN-999','admin','$2y$10$KQ8NHMt5LVbuyjYuW3p1zuzZOeJ7.1q3FSRnWb/Zkqr03YMR7GQxe','System',NULL,'Administrator',NULL,'Main Administrator',1,'09999999999','admin@osca.local',1,NULL,NULL,1,'2025-12-18 08:42:26','2025-12-16 18:26:07','2026-02-02 09:56:24'),(8,'OSCA-FO3-001','fo3admin','$2y$10$oZGAfalfM5Cm1vSXxtPTjOd0h3pe7eXBXsxJonghoB3gA.O3Os6oK','FO3',NULL,'Admin',NULL,'Field Office 3 Manager',NULL,NULL,'fo3@osca.gov.ph',2,4,NULL,1,'2026-02-01 12:52:05','2026-01-29 21:48:48','2026-02-01 15:51:28'),(9,'OSCA-FO4-001','fo4admin','$2y$10$oZGAfalfM5Cm1vSXxtPTjOd0h3pe7eXBXsxJonghoB3gA.O3Os6oK','FO4',NULL,'Admin',NULL,'Field Office 4 Manager',NULL,NULL,'fo4@osca.gov.ph',2,5,NULL,1,'2026-02-01 13:26:12','2026-01-29 21:48:49','2026-02-01 15:51:55'),(10,'OSCA-FO5-001','fo5admin','$2y$10$oZGAfalfM5Cm1vSXxtPTjOd0h3pe7eXBXsxJonghoB3gA.O3Os6oK','FO5',NULL,'Admin',NULL,'Field Office 5 Manager',NULL,NULL,'fo5@osca.gov.ph',2,6,NULL,1,'2026-02-01 15:59:07','2026-01-29 21:48:49','2026-02-01 15:59:07'),(11,'OSCA-FO6-001','fo6admin','$2y$10$oZGAfalfM5Cm1vSXxtPTjOd0h3pe7eXBXsxJonghoB3gA.O3Os6oK','FO6',NULL,'Admin',NULL,'Field Office 6 Manager',NULL,NULL,'fo6@osca.gov.ph',2,7,NULL,1,'2026-02-01 16:00:02','2026-01-29 21:48:49','2026-02-01 16:00:02'),(12,'OSCA-FO7-001','fo7admin','$2y$10$oZGAfalfM5Cm1vSXxtPTjOd0h3pe7eXBXsxJonghoB3gA.O3Os6oK','FO7',NULL,'Admin',NULL,'Field Office 7 Manager',NULL,NULL,'fo7@osca.gov.ph',2,8,NULL,1,'2026-02-01 16:00:29','2026-01-29 21:48:49','2026-02-01 16:00:29'),(13,'123','loniel','$2y$12$xFdJhWzEhGJ62kIT/.0xOe/d1HKyVhXPcmUZ0Ej4Mckh56npER8TK','Loniel',NULL,'Gapol',NULL,'Final Boss',NULL,NULL,'lons@gmail.com',1,NULL,NULL,1,NULL,'2026-02-02 09:58:05','2026-02-02 09:58:05');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_media`
--

DROP TABLE IF EXISTS `announcement_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement_media` (
  `id` int NOT NULL AUTO_INCREMENT,
  `announcement_id` int NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `media_type` enum('image','video','document') COLLATE utf8mb4_general_ci NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `announcement_id` (`announcement_id`),
  CONSTRAINT `announcement_media_ibfk_1` FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_media`
--

LOCK TABLES `announcement_media` WRITE;
/*!40000 ALTER TABLE `announcement_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_types`
--

DROP TABLE IF EXISTS `announcement_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_types`
--

LOCK TABLES `announcement_types` WRITE;
/*!40000 ALTER TABLE `announcement_types` DISABLE KEYS */;
INSERT INTO `announcement_types` VALUES (3,'Alert'),(1,'Event'),(2,'News'),(4,'Program');
/*!40000 ALTER TABLE `announcement_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` time DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `target_audience` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `is_published` tinyint(1) DEFAULT '0',
  `published_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  KEY `created_by` (`created_by`),
  KEY `idx_event_date` (`event_date`),
  KEY `idx_published` (`is_published`),
  KEY `idx_event_date_published` (`event_date`,`is_published`),
  CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `announcement_types` (`id`),
  CONSTRAINT `announcements_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `admin_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,1,'Medical Mission 2025','Free medical checkup and medicines for senior citizens','2025-10-25','09:00:00','Barangay Hall, Tetuan','All Senior Citizens',1,1,'2025-01-10 00:00:00','2025-12-15 01:34:59','2025-12-15 01:34:59'),(2,1,'Quarterly Pension (Octogenarian)','Distribution of quarterly pension for seniors aged 80-89','2025-10-25','09:00:00','DSWD Office','Ages 80-89',1,1,'2025-01-11 00:00:00','2025-12-15 01:34:59','2025-12-15 01:34:59');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_documents`
--

DROP TABLE IF EXISTS `application_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `application_id` int NOT NULL,
  `document_type_id` int NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `original_filename` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_size` int DEFAULT NULL,
  `uploaded_by` int NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `application_id` (`application_id`),
  KEY `document_type_id` (`document_type_id`),
  KEY `uploaded_by` (`uploaded_by`),
  CONSTRAINT `application_documents_ibfk_1` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`) ON DELETE CASCADE,
  CONSTRAINT `application_documents_ibfk_2` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`),
  CONSTRAINT `application_documents_ibfk_3` FOREIGN KEY (`uploaded_by`) REFERENCES `admin_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_documents`
--

LOCK TABLES `application_documents` WRITE;
/*!40000 ALTER TABLE `application_documents` DISABLE KEYS */;
INSERT INTO `application_documents` VALUES (16,18,1,'uploads/applications/1766073588_dbd90a24.jpg','dog.jpg',14746,1,'2025-12-18 15:59:48'),(17,18,1,'uploads/applications/1766073588_37479067.jpg','gorz1.jpg',27583,1,'2025-12-18 15:59:48'),(18,18,3,'uploads/applications/1766073588_b6b593a3.jpg','dog.jpg',14746,1,'2025-12-18 15:59:48'),(19,19,1,'uploads/applications/1766074257_2cf64a6a.jpg','dog.jpg',14746,1,'2025-12-18 16:10:57'),(20,19,1,'uploads/applications/1766074257_8c34bf8d.jpg','dog.jpg',14746,1,'2025-12-18 16:10:57'),(21,19,3,'uploads/applications/1766074257_1fefda6f.jpg','dog.jpg',14746,1,'2025-12-18 16:10:57'),(61,27,5,'uploads/applications/1766089109_02425194.jpg','birth_certificate.jpg',14746,1,'2025-12-18 20:18:29'),(62,27,2,'uploads/applications/1766089109_d4acafa3.jpg','barangay_certificate.jpg',27583,1,'2025-12-18 20:18:29'),(63,27,3,'uploads/applications/1766089109_f4325320.jpg','senior_photo.jpg',6796,1,'2025-12-18 20:18:29'),(64,6,5,'uploads/applications/1766089286_birth_certificate_28eef890.jpg','birth_certificate.jpg',14746,1,'2025-12-18 20:21:26'),(65,6,2,'uploads/applications/1766089286_barangay_certificate_96a437ef.jpg','barangay_certificate.jpg',27583,1,'2025-12-18 20:21:26'),(66,6,3,'uploads/applications/1766089286_senior_photo_fc867758.jpg','senior_photo.jpg',6796,1,'2025-12-18 20:21:26'),(101,34,5,'uploads/applications/1766092915_birth_certificate_5c4ac61b.jpg','birth_certificate.jpg',14746,1,'2025-12-18 21:21:55'),(102,34,2,'uploads/applications/1766092915_barangay_certificate_0f13585e.jpg','barangay_certificate.jpg',14746,1,'2025-12-18 21:21:55'),(103,34,6,'uploads/applications/1766092915_comelec_id_f12733ad.jpg','comelec_id.jpg',6796,1,'2025-12-18 21:21:55'),(104,34,3,'uploads/applications/1766092915_senior_photo_bd9c9228.jpg','senior_photo.jpg',9541,1,'2025-12-18 21:21:55'),(112,37,5,'uploads/applications/1766109297_b41f271d.jpg','birth_certificate.jpg',27583,1,'2025-12-19 01:54:57'),(113,37,2,'uploads/applications/1766109297_bac47745.jpg','barangay_certificate.jpg',14746,1,'2025-12-19 01:54:57'),(114,37,3,'uploads/applications/1766109297_6742159a.jpg','senior_photo.jpg',14746,1,'2025-12-19 01:54:57'),(120,40,1,'uploads/applications/40/1769730345_697bf1290ac01.jpg','proof of age.jpg',53247,1,'2026-01-29 15:45:45'),(121,40,2,'uploads/applications/40/1769730348_697bf12c7cd8a.png','barangay cert.png',619105,1,'2026-01-29 15:45:48'),(122,40,4,'uploads/applications/40/1769730352_697bf13060036.png','sample profile.png',5599,1,'2026-01-29 15:45:52'),(123,41,1,'uploads/applications/41/1769730801_697bf2f181e6d.jpg','proof of age.jpg',53247,1,'2026-01-29 15:53:21'),(125,41,4,'uploads/applications/41/1769730812_697bf2fc80c47.png','sample profile.png',5599,1,'2026-01-29 15:53:32'),(126,41,2,'uploads/applications/41/1769730816_697bf300c8314.png','barangay cert.png',619105,1,'2026-01-29 15:53:36'),(127,44,1,'uploads/applications/44/1769753324_697c4aece376e.jpg','proof of age.jpg',53247,1,'2026-01-29 22:08:45'),(128,44,2,'uploads/applications/44/1769753326_697c4aeeaf770.png','barangay cert.png',619105,1,'2026-01-29 22:08:46'),(129,44,4,'uploads/applications/44/1769753329_697c4af1ee212.jpg','471227600_2046694792506644_4958639581521235393_n.jpg',179569,1,'2026-01-29 22:08:49'),(130,44,3,'uploads/applications/44/1769753332_697c4af438418.jpg','gorz1.jpg',27583,1,'2026-01-29 22:08:52'),(131,45,1,'uploads/applications/45/1769753420_697c4b4c08131.jpg','proof of age.jpg',53247,1,'2026-01-29 22:10:20'),(132,45,2,'uploads/applications/45/1769753421_697c4b4dbd78f.png','barangay cert.png',619105,1,'2026-01-29 22:10:21'),(133,45,4,'uploads/applications/45/1769753424_697c4b50e2f8c.jpg','471227600_2046694792506644_4958639581521235393_n.jpg',179569,1,'2026-01-29 22:10:24'),(134,45,3,'uploads/applications/45/1769753428_697c4b54a9e4e.jpg','dog.jpg',14746,1,'2026-01-29 22:10:28'),(135,46,1,'uploads/applications/46/1769754224_697c4e70aa741.jpg','dog.jpg',14746,1,'2026-01-29 22:23:44'),(136,46,2,'uploads/applications/46/1769754226_697c4e7273bc8.jpg','dog.jpg',14746,1,'2026-01-29 22:23:46'),(137,46,4,'uploads/applications/46/1769754230_697c4e7668264.jpg','dog.jpg',14746,1,'2026-01-29 22:23:50'),(138,47,1,'uploads/applications/47/1769756842_697c58aa03551.jpg','proof of age.jpg',53247,8,'2026-01-29 23:07:22'),(139,47,2,'uploads/applications/47/1769756846_697c58ae0acde.png','barangay cert.png',619105,8,'2026-01-29 23:07:26'),(140,47,4,'uploads/applications/47/1769756849_697c58b176310.png','sample profile.png',5599,8,'2026-01-29 23:07:29'),(141,48,1,'uploads/applications/48/1769758557_697c5f5dcc87e.jpg','search.jpg',9541,8,'2026-01-29 23:35:57'),(142,48,2,'uploads/applications/48/1769758560_697c5f606e468.jpg','search.jpg',9541,8,'2026-01-29 23:36:00'),(143,48,4,'uploads/applications/48/1769758562_697c5f62a8e9b.jpg','search.jpg',9541,8,'2026-01-29 23:36:02'),(144,49,1,'uploads/applications/49/1769809589_697d26b59c237.jpg','proof of age.jpg',53247,1,'2026-01-30 21:46:29'),(145,49,2,'uploads/applications/49/1769809595_697d26bb6ef06.png','barangay cert.png',619105,1,'2026-01-30 21:46:35'),(146,49,4,'uploads/applications/49/1769809599_697d26bf46167.png','sample profile.png',5599,1,'2026-01-30 21:46:39'),(147,50,1,'uploads/applications/50/1769813102_697d346e49ed0.jpg','proof of age.jpg',53247,1,'2026-01-30 22:45:02'),(148,50,2,'uploads/applications/50/1769813105_697d34719e244.png','barangay cert.png',619105,1,'2026-01-30 22:45:05'),(149,50,4,'uploads/applications/50/1769813108_697d34740140c.png','sample profile.png',5599,1,'2026-01-30 22:45:08'),(150,51,1,'uploads/applications/51/1769814535_697d3a07d75cb.jpg','proof of age.jpg',53247,1,'2026-01-30 23:08:55'),(151,51,2,'uploads/applications/51/1769814540_697d3a0c80c28.png','barangay cert.png',619105,1,'2026-01-30 23:09:00'),(152,51,4,'uploads/applications/51/1769814543_697d3a0f5d040.png','sample profile.png',5599,1,'2026-01-30 23:09:03'),(153,52,1,'uploads/applications/52/1769814735_697d3acf3596b.jpg','proof of age.jpg',53247,8,'2026-01-30 23:12:15'),(154,52,2,'uploads/applications/52/1769814738_697d3ad2c61c7.png','barangay cert.png',619105,8,'2026-01-30 23:12:18'),(155,52,4,'uploads/applications/52/1769814746_697d3adabc921.png','sample profile.png',5599,8,'2026-01-30 23:12:26'),(156,101,4,'uploads/applications/101/1769837483_697d93ab6d5ce.png','sample profile.png',5599,1,'2026-01-31 05:31:23'),(157,101,1,'uploads/applications/101/1769837492_697d93b42b222.jpg','proof of age.jpg',53247,1,'2026-01-31 05:31:32'),(158,101,2,'uploads/applications/101/1769837516_697d93cc62a9e.png','barangay cert.png',619105,1,'2026-01-31 05:31:56'),(159,102,1,'uploads/applications/102/1769837903_697d954f5d11d.jpg','petpaw logo orig.jpg',6796,1,'2026-01-31 05:38:23'),(160,102,2,'uploads/applications/102/1769837907_697d9553bb867.png','barangay cert.png',619105,1,'2026-01-31 05:38:27'),(161,102,4,'uploads/applications/102/1769837909_697d95559478b.png','sample profile.png',5599,1,'2026-01-31 05:38:29'),(162,105,1,'uploads/applications/105/1769839083_697d99eb75ba9.jpg','dog.jpg',14746,1,'2026-01-31 05:58:03'),(163,105,2,'uploads/applications/105/1769839085_697d99ed1a333.jpg','dog.jpg',14746,1,'2026-01-31 05:58:05'),(164,105,4,'uploads/applications/105/1769839087_697d99efbc2b5.jpg','proof of age.jpg',53247,1,'2026-01-31 05:58:07'),(165,106,1,'uploads/applications/106/1769840741_697da06588c77.jpg','proof of age.jpg',53247,1,'2026-01-31 06:25:41'),(166,108,1,'uploads/applications/108/1769844602_697daf7aad8ab.jpg','proof of age.jpg',53247,1,'2026-01-31 07:30:02'),(167,108,2,'uploads/applications/108/1769844607_697daf7f4394b.png','barangay cert.png',619105,1,'2026-01-31 07:30:07'),(168,108,4,'uploads/applications/108/1769844609_697daf817d03e.png','sample profile.png',5599,1,'2026-01-31 07:30:09'),(169,110,1,'uploads/applications/110/1769845696_697db3c086c21.jpg','proof of age.jpg',53247,1,'2026-01-31 07:48:16'),(170,110,4,'uploads/applications/110/1769845711_697db3cfc3ba7.png','sample profile.png',5599,1,'2026-01-31 07:48:31'),(171,110,2,'uploads/applications/110/1769845716_697db3d460f18.png','barangay cert.png',619105,1,'2026-01-31 07:48:36'),(172,111,1,'uploads/applications/111/1769848157_697dbd5d16197.jpg','IMG20260129132321.jpg',1594043,1,'2026-01-31 08:29:17'),(173,111,2,'uploads/applications/111/1769848183_697dbd770b35c.jpg','IMG20260129132321.jpg',1594043,1,'2026-01-31 08:29:43'),(174,111,4,'uploads/applications/111/1769848194_697dbd82749b0.jpg','Screenshot_2026-01-28-20-15-01-21_cc0c40aae00121c8e1b1866ef91e05c7.jpg',153854,1,'2026-01-31 08:29:54'),(175,112,1,'uploads/applications/112/1769850356_697dc5f419a83.jpg','proof of age.jpg',53247,1,'2026-01-31 09:05:56'),(176,113,1,'uploads/applications/113/1769851080_697dc8c8cb7cd.jpg','proof of age.jpg',53247,1,'2026-01-31 09:18:00'),(178,114,1,'uploads/applications/114/1769851371_697dc9eb24549.jpg','proof of age.jpg',53247,1,'2026-01-31 09:22:51'),(179,115,1,'uploads/applications/115/1769851744_697dcb609a3b0.jpg','proof of age.jpg',53247,1,'2026-01-31 09:29:04'),(180,116,1,'uploads/applications/116/1769930133_697efd95f029a.jpg','gorz1.jpg',27583,1,'2026-02-01 07:15:34'),(181,116,2,'uploads/applications/116/1769930137_697efd9974228.jpg','gorz1.jpg',27583,1,'2026-02-01 07:15:37'),(182,116,4,'uploads/applications/116/1769930140_697efd9c6dfdd.jpg','gorz1.jpg',27583,1,'2026-02-01 07:15:40'),(183,117,1,'uploads/applications/117/1769930259_697efe13efb60.jpg','proof of age.jpg',53247,1,'2026-02-01 07:17:39'),(184,117,2,'uploads/applications/117/1769930264_697efe18ea036.png','barangay cert.png',619105,1,'2026-02-01 07:17:44'),(185,117,4,'uploads/applications/117/1769930269_697efe1d0dd24.jpg','gorz1.jpg',27583,1,'2026-02-01 07:17:49'),(186,118,4,'uploads/applications/118/1769930915_697f00a3dcfd8.jpg','search.jpg',9541,4,'2026-02-01 07:28:35'),(187,118,3,'uploads/applications/118/1769930916_697f00a4ab7a0.jpg','search.jpg',9541,4,'2026-02-01 07:28:36'),(188,118,1,'uploads/applications/118/1769930921_697f00a97631a.jpg','search.jpg',9541,4,'2026-02-01 07:28:41'),(189,118,2,'uploads/applications/118/1769930930_697f00b2d57a2.jpg','search.jpg',9541,4,'2026-02-01 07:28:50'),(190,119,1,'uploads/applications/119/1769931122_697f0172357e8.png','sample profile.png',5599,6,'2026-02-01 07:32:02'),(191,119,2,'uploads/applications/119/1769931123_697f017308af4.jpg','search.jpg',9541,6,'2026-02-01 07:32:03'),(192,119,4,'uploads/applications/119/1769931125_697f01759543c.jpg','search.jpg',9541,6,'2026-02-01 07:32:05'),(193,121,1,'uploads/applications/121/1769950081_697f4b8159ed9.png','1_DNbVVGoFd0qa--BGltIuLw.png',363213,1,'2026-02-01 12:48:01'),(194,121,2,'uploads/applications/121/1769950099_697f4b9345f5e.png','download.png',50781,1,'2026-02-01 12:48:19'),(195,121,3,'uploads/applications/121/1769950119_697f4ba7784ac.jpg','pexels-olly-3791664.jpg',1000235,1,'2026-02-01 12:48:39'),(196,121,4,'uploads/applications/121/1769950127_697f4baf6d56c.png','flat_750x_075_f-pad_750x1000_f8f8f8.u1-removebg-preview.png',77312,1,'2026-02-01 12:48:47'),(197,124,1,'uploads/applications/124/1770023314_69806992d3b0c.jpg','proof of age.jpg',53247,1,'2026-02-02 09:08:34'),(198,125,1,'uploads/applications/125/1770023401_698069e96b5ff.jpg','proof of age.jpg',53247,1,'2026-02-02 09:10:01');
/*!40000 ALTER TABLE `application_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_types`
--

DROP TABLE IF EXISTS `application_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `required_documents` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_types`
--

LOCK TABLES `application_types` WRITE;
/*!40000 ALTER TABLE `application_types` DISABLE KEYS */;
INSERT INTO `application_types` VALUES (1,'New ID','New senior citizen ID application','Birth Certificate, Barangay Certificate, Photo'),(2,'Renewal','Renewal of existing ID','Old ID, Photo'),(3,'Lost ID','Replacement for lost ID','Affidavit of Loss, Barangay Certificate, Photo'),(4,'Damaged ID','Replacement for damaged ID','Damaged ID, Photo'),(5,'Update','Update of information','Supporting documents for changes');
/*!40000 ALTER TABLE `application_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `application_number` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `senior_id` int DEFAULT NULL,
  `application_type_id` int NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Draft',
  `submitted_by` int DEFAULT NULL,
  `submission_date` timestamp NULL DEFAULT NULL,
  `verified_by` int DEFAULT NULL,
  `verification_date` timestamp NULL DEFAULT NULL,
  `approved_by` int DEFAULT NULL,
  `approval_date` timestamp NULL DEFAULT NULL,
  `printed_by` int DEFAULT NULL,
  `print_date` timestamp NULL DEFAULT NULL,
  `claimed_by` int DEFAULT NULL,
  `claim_date` timestamp NULL DEFAULT NULL,
  `notes` text COLLATE utf8mb4_general_ci,
  `applicant_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `application_number` (`application_number`),
  KEY `application_type_id` (`application_type_id`),
  KEY `submitted_by` (`submitted_by`),
  KEY `verified_by` (`verified_by`),
  KEY `approved_by` (`approved_by`),
  KEY `printed_by` (`printed_by`),
  KEY `claimed_by` (`claimed_by`),
  KEY `idx_application_number` (`application_number`),
  KEY `idx_status` (`status`),
  KEY `idx_senior` (`senior_id`),
  KEY `idx_application_senior_status` (`senior_id`,`status`),
  KEY `idx_app_senior_created` (`senior_id`,`created_at`),
  CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`),
  CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`application_type_id`) REFERENCES `application_types` (`id`),
  CONSTRAINT `applications_ibfk_3` FOREIGN KEY (`submitted_by`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `applications_ibfk_4` FOREIGN KEY (`verified_by`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `applications_ibfk_5` FOREIGN KEY (`approved_by`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `applications_ibfk_6` FOREIGN KEY (`printed_by`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `applications_ibfk_7` FOREIGN KEY (`claimed_by`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `applications_chk_1` CHECK (json_valid(`applicant_data`))
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (40,'APP-2026-00003',39,1,'Approved',1,'2026-01-29 15:50:58',NULL,NULL,1,'2026-01-29 15:51:38',NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Seven\",\"middle_name\":null,\"last_name\":\"terty five\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":2,\"barangay_id\":5},\"contact_info\":{\"house_number\":\"dsa\",\"street\":\"dwa\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-29 15:25:45','2026-01-29 15:51:38'),(41,'APP-2026-00004',40,1,'Approved',1,'2026-01-29 15:54:21',NULL,NULL,1,'2026-01-29 15:54:59',NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Seven\",\"middle_name\":null,\"last_name\":\"Fifty two\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":1,\"barangay_id\":5},\"contact_info\":{\"house_number\":\"das\",\"street\":\"sad\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-29 15:53:20','2026-01-29 15:54:59'),(42,'APP-2026-00005',NULL,1,'Draft',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Fatima\",\"middle_name\":null,\"last_name\":\"Abubakar\",\"extension\":null,\"birthdate\":\"1940-03-05\",\"gender_id\":1,\"barangay_id\":4},\"contact_info\":{\"house_number\":\"dasd\",\"street\":\"sad\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-29 20:39:17','2026-01-29 20:39:17'),(43,'APP-2026-00006',NULL,1,'Draft',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"twelve\",\"middle_name\":null,\"last_name\":\"forty two\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":1,\"barangay_id\":31},\"contact_info\":{\"house_number\":\"dsa\",\"street\":\"dsa\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-29 20:42:56','2026-01-29 20:42:56'),(44,'APP-2026-00007',42,1,'Approved',1,'2026-01-29 22:08:57',NULL,NULL,1,'2026-01-29 22:11:12',NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Asanul\",\"middle_name\":null,\"last_name\":\"Asanul\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":1,\"barangay_id\":1},\"contact_info\":{\"house_number\":\"123\",\"street\":\"Secret\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-29 22:08:43','2026-01-29 22:11:12'),(47,'APP-2026-00010',44,1,'Approved',8,'2026-01-29 23:07:34',NULL,NULL,8,'2026-01-29 23:08:09',NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"FO\",\"middle_name\":null,\"last_name\":\"Regis\",\"extension\":null,\"birthdate\":\"1932-05-02\",\"gender_id\":1,\"barangay_id\":1},\"contact_info\":{\"house_number\":\"412\",\"street\":\"frew\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-29 23:07:21','2026-01-29 23:08:09'),(48,'APP-2026-00011',45,1,'Approved',8,'2026-01-29 23:36:05',NULL,NULL,1,'2026-01-29 23:36:52',NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"FO New\",\"middle_name\":null,\"last_name\":\"Regis\",\"extension\":null,\"birthdate\":\"1923-05-02\",\"gender_id\":2,\"barangay_id\":1},\"contact_info\":{\"house_number\":\"dsa\",\"street\":\"da\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-29 23:34:38','2026-01-29 23:36:52'),(49,'APP-2026-00012',46,1,'Approved',1,'2026-01-30 21:46:43',NULL,NULL,1,'2026-01-30 21:47:32',NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Deployed\",\"middle_name\":null,\"last_name\":\"Regis\",\"extension\":null,\"birthdate\":\"1942-05-02\",\"gender_id\":2,\"barangay_id\":1},\"contact_info\":{\"house_number\":\"194\",\"street\":null,\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-30 21:46:02','2026-01-30 21:47:32'),(50,'APP-2026-00013',47,1,'Approved',1,'2026-01-30 22:45:15',NULL,NULL,1,'2026-01-30 22:45:28',NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Loniel\",\"middle_name\":null,\"last_name\":\"Gapol\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":1,\"barangay_id\":2},\"contact_info\":{\"house_number\":\"Secret\",\"street\":\"Hehe\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-30 22:44:37','2026-01-30 22:45:28'),(51,'APP-2026-00014',48,1,'Approved',1,'2026-01-30 23:09:06',NULL,NULL,1,'2026-01-30 23:09:36',NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Onl\",\"middle_name\":null,\"last_name\":\"Appli\",\"extension\":null,\"birthdate\":\"1945-05-03\",\"gender_id\":1,\"barangay_id\":1},\"contact_info\":{\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-30 23:08:54','2026-01-30 23:09:36'),(52,'APP-2026-00015',49,1,'Approved',8,'2026-01-30 23:12:33',NULL,NULL,1,'2026-01-30 23:12:49',NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Conv\",\"middle_name\":null,\"last_name\":\"Appli\",\"extension\":null,\"birthdate\":\"1942-05-02\",\"gender_id\":1,\"barangay_id\":1},\"contact_info\":{\"house_number\":null,\"street\":\"Haha hehe\",\"mobile_number\":\"09661572185\",\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-30 23:12:13','2026-01-30 23:12:49'),(101,'APP-2026-00016',NULL,1,'For Verification',1,'2026-01-31 05:32:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"John\",\"middle_name\":null,\"last_name\":\"Dave\",\"extension\":null,\"birthdate\":\"1955-02-15\",\"gender_id\":1,\"barangay_id\":14},\"contact_info\":{\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-31 05:31:22','2026-01-31 05:32:01'),(102,'APP-2026-00017',50,1,'Approved',1,'2026-01-31 05:38:32',NULL,NULL,1,'2026-01-31 05:39:03',NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Rafat\",\"middle_name\":null,\"last_name\":\"asanul\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":1,\"barangay_id\":10},\"contact_info\":{\"house_number\":null,\"street\":\"Pauline\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-31 05:38:22','2026-01-31 05:39:03'),(103,'APP-2026-00018',NULL,1,'Draft',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Mhyco\",\"middle_name\":null,\"last_name\":\"Bunao\",\"extension\":null,\"birthdate\":\"1934-02-05\",\"gender_id\":1,\"barangay_id\":15},\"contact_info\":{\"house_number\":\"111\",\"street\":\"Aderez\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-31 05:42:26','2026-01-31 05:42:26'),(104,'APP-2026-00019',NULL,1,'Draft',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Luffy\",\"middle_name\":null,\"last_name\":\"Strawhat\",\"extension\":null,\"birthdate\":\"1927-05-02\",\"gender_id\":1,\"barangay_id\":22},\"contact_info\":{\"house_number\":\"199\",\"street\":\"sda\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-31 05:51:19','2026-01-31 05:51:19'),(105,'APP-2026-00020',NULL,1,'For Verification',1,'2026-01-31 05:58:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Nami\",\"middle_name\":null,\"last_name\":\"Swan\",\"extension\":null,\"birthdate\":\"1927-08-02\",\"gender_id\":2,\"barangay_id\":43},\"contact_info\":{\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-31 05:58:02','2026-01-31 05:58:12'),(106,'APP-2026-00021',NULL,1,'Draft',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Franky\",\"middle_name\":null,\"last_name\":\"Superr\",\"extension\":null,\"birthdate\":\"1924-05-23\",\"gender_id\":1,\"barangay_id\":1},\"contact_info\":{\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-31 05:59:21','2026-01-31 05:59:21'),(107,'APP-2026-00022',NULL,1,'Draft',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Dep\",\"middle_name\":null,\"last_name\":\"Yess\",\"extension\":null,\"birthdate\":\"1942-05-02\",\"gender_id\":2,\"barangay_id\":1},\"contact_info\":{\"house_number\":null,\"street\":\"214\",\"mobile_number\":\"09661572185\",\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-31 06:29:29','2026-01-31 06:29:29'),(108,'APP-2026-00023',51,1,'Approved',1,'2026-01-31 07:30:12',NULL,NULL,1,'2026-01-31 07:30:23',NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Ash\",\"middle_name\":null,\"last_name\":\"Ketchup\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":1,\"barangay_id\":14},\"contact_info\":{\"house_number\":\"142\",\"street\":\"Pokemon\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-31 07:29:34','2026-01-31 07:30:23'),(109,'APP-2026-00024',NULL,1,'Draft',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Masters\",\"middle_name\":null,\"last_name\":\"Shanghai\",\"extension\":null,\"birthdate\":\"1932-05-02\",\"gender_id\":2,\"barangay_id\":7},\"contact_info\":{\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-31 07:33:05','2026-01-31 07:33:05'),(110,'APP-2026-00025',52,1,'Approved',1,'2026-01-31 07:48:40',NULL,NULL,1,'2026-01-31 07:49:08',NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Fuego\",\"middle_name\":null,\"last_name\":\"Toma\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":1,\"barangay_id\":3},\"contact_info\":{\"house_number\":\"123\",\"street\":\"Pauline\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-31 07:47:41','2026-01-31 07:49:08'),(111,'APP-2026-00026',53,1,'Approved',1,'2026-01-31 08:30:03',NULL,NULL,1,'2026-01-31 08:30:24',NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Vaniel\",\"middle_name\":null,\"last_name\":\"Cornelio\",\"extension\":null,\"birthdate\":\"1959-03-29\",\"gender_id\":1,\"barangay_id\":26},\"contact_info\":{\"house_number\":\"123\",\"street\":\"Hihi\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-31 08:27:34','2026-01-31 08:30:24'),(112,'APP-2026-00027',NULL,1,'Draft',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Gab\",\"middle_name\":null,\"last_name\":\"Modillias\",\"extension\":null,\"birthdate\":\"1955-05-02\",\"gender_id\":1,\"barangay_id\":57},\"contact_info\":{\"house_number\":\"123\",\"street\":\"Heather\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-31 09:05:38','2026-01-31 09:05:38'),(113,'APP-2026-00028',NULL,1,'Draft',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Ahmad\",\"middle_name\":null,\"last_name\":\"Yahiya\",\"extension\":null,\"birthdate\":\"1920-05-02\",\"gender_id\":2,\"barangay_id\":32},\"contact_info\":{\"house_number\":\"123\",\"street\":\"Etac st\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-31 09:17:59','2026-01-31 09:17:59'),(114,'APP-2026-00029',NULL,1,'Draft',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Neil\",\"middle_name\":null,\"last_name\":\"Jam\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":1,\"barangay_id\":29},\"contact_info\":{\"house_number\":\"321\",\"street\":\"dsa\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-31 09:22:49','2026-01-31 09:22:49'),(115,'APP-2026-00030',NULL,1,'Draft',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Vinczar\",\"middle_name\":null,\"last_name\":\"Jailani\",\"extension\":null,\"birthdate\":\"1920-05-02\",\"gender_id\":1,\"barangay_id\":64},\"contact_info\":{\"house_number\":\"123\",\"street\":\"Pekong\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-01-31 09:29:03','2026-01-31 09:29:03'),(116,'APP-2026-00031',54,1,'Approved',1,'2026-02-01 07:15:42',NULL,NULL,1,'2026-02-01 07:16:03',NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"John\",\"middle_name\":null,\"last_name\":\"Dave\",\"extension\":null,\"birthdate\":\"1934-05-20\",\"gender_id\":1,\"barangay_id\":26},\"contact_info\":{\"house_number\":\"23\",\"street\":\"Sheila\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-02-01 07:15:09','2026-02-01 07:16:03'),(117,'APP-2026-00032',55,1,'Approved',1,'2026-02-01 07:17:55',NULL,NULL,1,'2026-02-01 07:18:21',NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Fo One\",\"middle_name\":null,\"last_name\":\"Person\",\"extension\":null,\"birthdate\":\"1960-04-17\",\"gender_id\":2,\"barangay_id\":6},\"contact_info\":{\"house_number\":\"66\",\"street\":\"Tondo\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-02-01 07:17:38','2026-02-01 07:18:21'),(118,'APP-2026-00033',NULL,1,'For Verification',4,'2026-02-01 07:28:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Tetuan\",\"middle_name\":null,\"last_name\":\"Resident\",\"extension\":null,\"birthdate\":\"1920-06-18\",\"gender_id\":2,\"barangay_id\":79},\"contact_info\":{\"house_number\":\"784\",\"street\":\"Pauline\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-02-01 07:28:34','2026-02-01 07:28:52'),(119,'APP-2026-00034',NULL,1,'Draft',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Guiwan\",\"middle_name\":null,\"last_name\":\"Resid\",\"extension\":null,\"birthdate\":\"1925-07-27\",\"gender_id\":2,\"barangay_id\":26},\"contact_info\":{\"house_number\":\"231\",\"street\":\"Hayahay\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-02-01 07:32:01','2026-02-01 07:32:01'),(120,'APP-2026-00035',NULL,1,'Draft',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Tetuan\",\"middle_name\":null,\"last_name\":\"Draft\",\"extension\":null,\"birthdate\":\"1923-05-17\",\"gender_id\":2,\"barangay_id\":79},\"contact_info\":{\"house_number\":\"13\",\"street\":\"Tetu\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-02-01 12:42:37','2026-02-01 12:42:37'),(121,'APP-2026-00036',NULL,1,'For Verification',1,'2026-02-01 12:48:51',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Omar\",\"middle_name\":null,\"last_name\":\"Taji\",\"extension\":null,\"birthdate\":\"1965-09-23\",\"gender_id\":1,\"barangay_id\":15},\"contact_info\":{\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[{\"id\":1769949984385,\"first_name\":\"Fatima\",\"middle_name\":null,\"last_name\":\"Taji\",\"extension\":null,\"relationship\":\"Daughter\",\"age\":20,\"monthly_salary\":null}],\"target_sectors\":[],\"sub_categories\":[]}','2026-02-01 12:47:59','2026-02-01 12:48:51'),(122,'APP-2026-00037',NULL,1,'Draft',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Chris\",\"middle_name\":null,\"last_name\":\"Fernando\",\"extension\":\"JR\",\"birthdate\":\"1965-02-09\",\"gender_id\":1,\"barangay_id\":86},\"contact_info\":{\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[{\"id\":1769950417371,\"first_name\":\"Frieren\",\"middle_name\":null,\"last_name\":\"Fernando\",\"extension\":null,\"relationship\":\"Daughter\",\"age\":21,\"monthly_salary\":null}],\"target_sectors\":[],\"sub_categories\":[\"Solo Parents\"]}','2026-02-01 12:54:17','2026-02-01 12:54:17'),(123,'APP-2026-00038',NULL,1,'Draft',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Ohyul\",\"middle_name\":null,\"last_name\":\"Kwon\",\"extension\":null,\"birthdate\":\"1955-02-11\",\"gender_id\":1,\"barangay_id\":40},\"contact_info\":{\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":8,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-02-01 12:57:44','2026-02-01 12:57:44'),(124,'APP-2026-00039',NULL,1,'Draft',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Kiara\",\"middle_name\":null,\"last_name\":\"Masuhud\",\"extension\":null,\"birthdate\":\"1945-10-10\",\"gender_id\":2,\"barangay_id\":79},\"contact_info\":{\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-02-01 12:59:44','2026-02-01 12:59:44'),(125,'APP-2026-00040',NULL,1,'Draft',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"personal_info\":{\"first_name\":\"Candido\",\"middle_name\":null,\"last_name\":\"Alfaro\",\"extension\":null,\"birthdate\":\"1947-05-02\",\"gender_id\":2,\"barangay_id\":8},\"contact_info\":{\"house_number\":\"321\",\"street\":\"Heather\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}','2026-02-02 09:09:59','2026-02-02 09:09:59');
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archives`
--

DROP TABLE IF EXISTS `archives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archives` (
  `id` int NOT NULL AUTO_INCREMENT,
  `archive_type` enum('senior_citizen','admin_user') COLLATE utf8mb4_general_ci NOT NULL,
  `reference_id` int NOT NULL COMMENT 'Original ID from source table',
  `archive_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `archive_reason` enum('deceased','deactivated','transferred','other') COLLATE utf8mb4_general_ci NOT NULL,
  `archive_notes` text COLLATE utf8mb4_general_ci,
  `original_created_at` timestamp NULL DEFAULT NULL,
  `original_updated_at` timestamp NULL DEFAULT NULL,
  `deceased_date` date DEFAULT NULL COMMENT 'For deceased seniors',
  `archived_by` int NOT NULL,
  `archived_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_archive_type` (`archive_type`),
  KEY `idx_reference_id` (`reference_id`),
  KEY `idx_archived_by` (`archived_by`),
  KEY `idx_archive_type_reason` (`archive_type`,`archive_reason`),
  KEY `idx_deceased_date` (`deceased_date`),
  KEY `idx_archived_at` (`archived_at`),
  KEY `idx_archive_reason` (`archive_reason`),
  CONSTRAINT `archives_ibfk_1` FOREIGN KEY (`archived_by`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `archives_chk_1` CHECK (json_valid(`archive_data`))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archives`
--

LOCK TABLES `archives` WRITE;
/*!40000 ALTER TABLE `archives` DISABLE KEYS */;
INSERT INTO `archives` VALUES (1,'senior_citizen',999,'{\"id\":999,\"osca_id\":\"ZC-2024-000999\",\"first_name\":\"Rosa\",\"middle_name\":\"Santos\",\"last_name\":\"Martinez\",\"birthdate\":\"1940-03-15\",\"gender_id\":2,\"barangay_id\":79,\"registration_date\":\"2024-06-10\",\"deceased_info\":\"Natural causes\"}','deceased','Passed away peacefully. Family reported death on 2024-12-20.','2024-06-10 00:00:00','2024-12-20 07:00:00','2024-12-18',1,'2024-12-20 08:00:00'),(2,'admin_user',998,'{\"id\":998,\"employee_id\":\"OSCA-BRGY-099\",\"username\":\"old.admin\",\"first_name\":\"Former\",\"last_name\":\"Admin\",\"position\":\"Barangay OSCA Coordinator\",\"branch_id\":2,\"barangay_id\":79,\"role_id\":3,\"deactivation_reason\":\"Resigned\"}','deactivated','Resigned from position. Account deactivated as per protocol.','2023-01-15 00:00:00','2024-11-30 09:00:00',NULL,1,'2024-11-30 09:30:00');
/*!40000 ALTER TABLE `archives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `archives_expanded`
--

DROP TABLE IF EXISTS `archives_expanded`;
/*!50001 DROP VIEW IF EXISTS `archives_expanded`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `archives_expanded` AS SELECT 
 1 AS `id`,
 1 AS `archive_type`,
 1 AS `reference_id`,
 1 AS `archive_data`,
 1 AS `archive_reason`,
 1 AS `archive_notes`,
 1 AS `original_created_at`,
 1 AS `original_updated_at`,
 1 AS `deceased_date`,
 1 AS `archived_by`,
 1 AS `archived_by_name`,
 1 AS `archived_at`,
 1 AS `osca_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `username`,
 1 AS `employee_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `barangays`
--

DROP TABLE IF EXISTS `barangays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barangays` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `district` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_general_ci DEFAULT 'Zamboanga City',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barangays`
--

LOCK TABLES `barangays` WRITE;
/*!40000 ALTER TABLE `barangays` DISABLE KEYS */;
INSERT INTO `barangays` VALUES (1,'ZC-001','Arena Blanco','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(2,'ZC-002','Ayalo','District 1','Zamboanga City','2025-12-15 01:31:54','2026-02-01 17:37:37'),(3,'ZC-003','Baliwasan','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(4,'ZC-004','Baluno','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(5,'ZC-005','Boalan','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(6,'ZC-006','Bolong','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(7,'ZC-007','Buenavista','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(8,'ZC-008','Bunguiao','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(9,'ZC-009','Busay','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(10,'ZC-010','Cabaluay','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(11,'ZC-011','Cabatangan','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(12,'ZC-012','Cacao','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(13,'ZC-013','Calabasa','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(14,'ZC-014','Calarian_Southcom','District 1','Zamboanga City','2025-12-15 01:31:54','2026-02-01 06:08:28'),(15,'ZC-015','Campo Islam','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(16,'ZC-016','Canelar_Camins','District 1','Zamboanga City','2025-12-15 01:31:54','2026-02-01 06:08:28'),(17,'ZC-017','Capisan','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(18,'ZC-018','Cawit','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(19,'ZC-019','Culianan','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(20,'ZC-020','Curuan','District 1','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(21,'ZC-021','Dita','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(22,'ZC-022','Divisoria','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(23,'ZC-023','Dulian (Upper Bunguiao)','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(24,'ZC-024','Dulian (Lower Pasonanca)','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(25,'ZC-025','Guisao','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(26,'ZC-026','Guiwan','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(27,'ZC-027','La Paz','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(28,'ZC-028','Labuan','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(29,'ZC-029','Lamisahan','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(30,'ZC-030','Landang Gua','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(31,'ZC-031','Landang Laum','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(32,'ZC-032','Lanzones','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(33,'ZC-033','Lapakan','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(34,'ZC-034','Latuan (Curuan)','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(35,'ZC-035','Licomo','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(36,'ZC-036','Limaong','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(37,'ZC-037','Limpapa','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(38,'ZC-038','Lubigan','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(39,'ZC-039','Lumayang','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(40,'ZC-040','Lumbangan','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(41,'ZC-041','Lunzuran','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(42,'ZC-042','Maasin','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(43,'ZC-043','Malagutay','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(44,'ZC-044','Mampang','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(45,'ZC-045','Manalipa','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(46,'ZC-046','Mangusu','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(47,'ZC-047','Manicahan','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(48,'ZC-048','Mariki','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(49,'ZC-049','Mercedes','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(50,'ZC-050','Muti','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(51,'ZC-051','Pamucutan','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(52,'ZC-052','Pangapuyan','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(53,'ZC-053','Panubigan','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(54,'ZC-054','Pasilmanta (Sacol Island)','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(55,'ZC-055','Pasonanca','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(56,'ZC-056','Patalon','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(57,'ZC-057','Putik','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(58,'ZC-058','Quiniput','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(59,'ZC-059','Recodo','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(60,'ZC-060','Rio Hondo','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(61,'ZC-061','Salaan','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(62,'ZC-062','San Jose Cawa-cawa','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(63,'ZC-063','San Jose Gusu_Suterville','District 2','Zamboanga City','2025-12-15 01:31:54','2026-02-01 06:08:29'),(64,'ZC-064','San Roque','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(65,'ZC-065','Sangali','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(66,'ZC-066','Santa Barbara','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(67,'ZC-067','Santa Catalina','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(68,'ZC-068','Santa Maria','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(69,'ZC-069','Santo Ni?o','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(70,'ZC-070','Sibulao (Caruan)','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(71,'ZC-071','Sinubung','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(72,'ZC-072','Sinunuc','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(73,'ZC-073','Tagasilay','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(74,'ZC-074','Taguiti','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(75,'ZC-075','Talabaan_Gapuh','District 2','Zamboanga City','2025-12-15 01:31:54','2026-02-01 06:08:29'),(76,'ZC-076','Talisayan','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(77,'ZC-077','Talon-talon','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(78,'ZC-078','Taluksangay','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(79,'ZC-079','Tetuan','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(80,'ZC-080','Tictapul','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(81,'ZC-081','Tigbalabag','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(82,'ZC-082','Tigtabon','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(83,'ZC-083','Tolosa','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(84,'ZC-084','Tugbungan','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(85,'ZC-085','Tulungatung','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(86,'ZC-086','Tumaga','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(87,'ZC-087','Tumalutab','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(88,'ZC-088','Tumitus','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(89,'ZC-089','Victoria','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(90,'ZC-090','Vitali','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(91,'ZC-091','Zambowood','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(92,'ZC-092','Zone I (Poblacion)','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(93,'ZC-093','Zone II (Poblacion)','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(94,'ZC-094','Zone III (Poblacion)','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(95,'ZC-095','Zone IV (Poblacion)','District 2','Zamboanga City','2025-12-15 01:31:54','2025-12-15 01:31:54'),(96,'ZC-096','Kasanyangan','District 2','Zamboanga City','2026-02-01 06:08:28','2026-02-01 06:08:28'),(97,'ZC-097','Camino Nuevo','District 2','Zamboanga City','2026-02-01 06:08:28','2026-02-01 06:08:28'),(98,'ZC-098','Pasobolong','District 2','Zamboanga City','2026-02-01 06:08:28','2026-02-01 06:08:28'),(99,'test brgy','Test Barangay','District 1','Zamboanga City','2026-02-01 17:22:19','2026-02-01 17:22:19');
/*!40000 ALTER TABLE `barangays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benefit_claims`
--

DROP TABLE IF EXISTS `benefit_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benefit_claims` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `senior_id` bigint unsigned NOT NULL,
  `benefit_type_id` bigint unsigned NOT NULL,
  `claim_year` year NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `status` enum('pending','approved','released','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `released_at` timestamp NULL DEFAULT NULL,
  `processed_by` bigint unsigned DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefit_claims`
--

LOCK TABLES `benefit_claims` WRITE;
/*!40000 ALTER TABLE `benefit_claims` DISABLE KEYS */;
INSERT INTO `benefit_claims` VALUES (3,45,4,2026,10000.00,'released','2026-01-31 00:32:22',1,NULL,'2026-01-31 00:30:15','2026-01-31 00:32:22'),(4,44,3,2026,10000.00,'approved',NULL,1,NULL,'2026-01-31 00:31:31','2026-01-31 00:32:27'),(5,46,3,2026,10000.00,'pending',NULL,NULL,NULL,'2026-01-31 00:32:37','2026-01-31 00:32:37'),(6,47,3,2026,10000.00,'approved',NULL,1,NULL,'2026-02-01 07:12:41','2026-02-01 07:13:41');
/*!40000 ALTER TABLE `benefit_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benefit_history`
--

DROP TABLE IF EXISTS `benefit_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benefit_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `senior_id` int NOT NULL,
  `benefit_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `claimed_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `next_eligible_date` date DEFAULT NULL COMMENT 'When can claim again',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `benefit_id` (`benefit_id`),
  KEY `transaction_id` (`transaction_id`),
  KEY `idx_senior_benefit_history` (`senior_id`,`benefit_id`),
  KEY `idx_next_eligible` (`next_eligible_date`),
  CONSTRAINT `benefit_history_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`) ON DELETE CASCADE,
  CONSTRAINT `benefit_history_ibfk_2` FOREIGN KEY (`benefit_id`) REFERENCES `benefits` (`id`),
  CONSTRAINT `benefit_history_ibfk_3` FOREIGN KEY (`transaction_id`) REFERENCES `benefit_transactions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefit_history`
--

LOCK TABLES `benefit_history` WRITE;
/*!40000 ALTER TABLE `benefit_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `benefit_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benefit_transactions`
--

DROP TABLE IF EXISTS `benefit_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benefit_transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_number` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `senior_id` int NOT NULL,
  `benefit_id` int NOT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `transaction_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `location` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Where benefit was claimed',
  `processed_by` int NOT NULL COMMENT 'Staff who processed',
  `verification_document` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Receipt/proof path',
  `notes` text COLLATE utf8mb4_general_ci,
  `status` enum('pending','approved','completed','rejected','cancelled') COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transaction_number` (`transaction_number`),
  KEY `benefit_id` (`benefit_id`),
  KEY `processed_by` (`processed_by`),
  KEY `idx_senior_benefit` (`senior_id`,`benefit_id`),
  KEY `idx_transaction_date` (`transaction_date`),
  KEY `idx_status` (`status`),
  KEY `idx_transaction_senior_date` (`senior_id`,`transaction_date`),
  CONSTRAINT `benefit_transactions_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`),
  CONSTRAINT `benefit_transactions_ibfk_2` FOREIGN KEY (`benefit_id`) REFERENCES `benefits` (`id`),
  CONSTRAINT `benefit_transactions_ibfk_3` FOREIGN KEY (`processed_by`) REFERENCES `admin_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefit_transactions`
--

LOCK TABLES `benefit_transactions` WRITE;
/*!40000 ALTER TABLE `benefit_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `benefit_transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `after_benefit_transaction_insert` AFTER INSERT ON `benefit_transactions` FOR EACH ROW BEGIN
    DECLARE next_date DATE;
    DECLARE benefit_freq VARCHAR(20);
    
    
    SELECT frequency INTO benefit_freq 
    FROM benefits 
    WHERE id = NEW.benefit_id;
    
    
    SET next_date = CASE benefit_freq
        WHEN 'daily' THEN DATE_ADD(NEW.transaction_date, INTERVAL 1 DAY)
        WHEN 'monthly' THEN DATE_ADD(NEW.transaction_date, INTERVAL 1 MONTH)
        WHEN 'quarterly' THEN DATE_ADD(NEW.transaction_date, INTERVAL 3 MONTH)
        WHEN 'annual' THEN DATE_ADD(NEW.transaction_date, INTERVAL 1 YEAR)
        WHEN 'one-time' THEN NULL
        ELSE NEW.transaction_date
    END;
    
    
    INSERT INTO benefit_history (senior_id, benefit_id, transaction_id, claimed_date, next_eligible_date)
    VALUES (NEW.senior_id, NEW.benefit_id, NEW.id, NEW.transaction_date, next_date);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `benefit_types`
--

DROP TABLE IF EXISTS `benefit_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benefit_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `min_age` int NOT NULL,
  `max_age` int DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `is_one_time` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefit_types`
--

LOCK TABLES `benefit_types` WRITE;
/*!40000 ALTER TABLE `benefit_types` DISABLE KEYS */;
INSERT INTO `benefit_types` VALUES (1,'Sexagenarian','Senior citizens aged 60-69 years old',60,69,0.00,1,1,'2026-01-30 01:15:43','2026-01-30 01:15:43'),(2,'Septuagenarian','Senior citizens aged 70-79 years old',70,79,0.00,1,1,'2026-01-30 01:15:43','2026-01-30 01:15:43'),(3,'Octogenarian','Senior citizens aged 80-89 years old. Entitled to ₱10,000 cash benefit.',80,89,10000.00,1,1,'2026-01-30 01:15:43','2026-01-30 01:15:43'),(4,'Nonagenarian','Senior citizens aged 90-99 years old. Entitled to ₱10,000 cash benefit.',90,99,10000.00,1,1,'2026-01-30 01:15:43','2026-01-30 01:15:43'),(5,'Centenarian','Senior citizens aged 100 years and above. Entitled to ₱100,000 cash benefit under RA 11982 (Expanded Centenarian Act).',100,NULL,100000.00,1,1,'2026-01-30 01:15:43','2026-01-30 01:15:43'),(7,'zTest Benefit','Free money po',100,110,50.00,1,1,'2026-02-01 17:39:17','2026-02-01 17:39:37');
/*!40000 ALTER TABLE `benefit_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benefits`
--

DROP TABLE IF EXISTS `benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benefits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `type` enum('discount','pension','medical','event','assistance','privilege') COLLATE utf8mb4_general_ci NOT NULL,
  `amount` decimal(10,2) DEFAULT '0.00' COMMENT 'Amount if applicable (pension, cash assistance)',
  `age_requirement` int DEFAULT '60' COMMENT 'Minimum age to qualify',
  `max_age` int DEFAULT NULL COMMENT 'Maximum age (null = no limit)',
  `frequency` enum('one-time','daily','monthly','quarterly','annual','per-use') COLLATE utf8mb4_general_ci DEFAULT 'per-use',
  `is_barangay_specific` tinyint(1) DEFAULT '0',
  `barangay_id` int DEFAULT NULL COMMENT 'Specific barangay if exclusive',
  `requires_application` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `barangay_id` (`barangay_id`),
  KEY `idx_benefit_active` (`is_active`,`type`),
  CONSTRAINT `benefits_ibfk_1` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefits`
--

LOCK TABLES `benefits` WRITE;
/*!40000 ALTER TABLE `benefits` DISABLE KEYS */;
INSERT INTO `benefits` VALUES (1,'SC-DISCOUNT-20','20% Discount on Basic Necessities','Transportation, hotels, restaurants, recreation','discount',0.00,60,NULL,'per-use',0,NULL,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10'),(2,'SC-MEDICINE-20','20% Discount on Medicines','All prescription and OTC medicines','discount',0.00,60,NULL,'per-use',0,NULL,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10'),(3,'SC-TRANSPORT-20','20% Discount on Public Transport','Bus, jeepney, LRT, domestic flights','discount',0.00,60,NULL,'per-use',0,NULL,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10'),(4,'SC-VAT-EXEMPT','VAT Exemption','VAT exemption on applicable purchases','privilege',0.00,60,NULL,'per-use',0,NULL,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10'),(5,'SC-PRIORITY','Priority Lane Access','Priority in banks, government offices, etc.','privilege',0.00,60,NULL,'per-use',0,NULL,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10'),(6,'SC-FREE-MEDICAL','Free Medical Services','Government hospitals and health centers','medical',0.00,60,NULL,'per-use',0,NULL,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10'),(7,'PENSION-OCTOGENARIAN-500','Octogenarian Monthly Pension','Monthly pension for seniors 80-89 years old','pension',500.00,80,89,'monthly',0,NULL,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10'),(8,'PENSION-NONAGENARIAN-1000','Nonagenarian Monthly Pension','Monthly pension for seniors 90-99 years old','pension',1000.00,90,99,'monthly',0,NULL,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10'),(9,'PENSION-CENTENARIAN-ONETIME-10000','Centenarian Cash Gift','One-time cash gift upon reaching 100 years old','pension',10000.00,100,NULL,'one-time',0,NULL,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10'),(10,'PENSION-CENTENARIAN-MONTHLY-1500','Centenarian Monthly Pension','Monthly pension for centenarians (100+)','pension',1500.00,100,NULL,'monthly',0,NULL,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10'),(11,'MED-CHECKUP-FREE','Free Annual Health Checkup','Complete physical examination','medical',0.00,60,NULL,'annual',0,NULL,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10'),(12,'MED-DENTAL-FREE','Free Dental Services','Basic dental care in government facilities','medical',0.00,60,NULL,'per-use',0,NULL,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10'),(13,'MED-VACCINATION','Free Vaccinations','Flu shots and other senior vaccinations','medical',0.00,60,NULL,'annual',0,NULL,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10'),(14,'ASSIST-BURIAL-5000','Burial Assistance','Financial assistance for burial expenses','assistance',5000.00,60,NULL,'one-time',0,NULL,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10'),(15,'ASSIST-HOSPITALIZATION','Hospitalization Assistance','Support for hospital expenses','assistance',0.00,60,NULL,'per-use',0,NULL,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10'),(16,'TETUAN-DENTAL-FREE','Free Dental Checkup - Tetuan Only','Exclusive free dental services for Tetuan residents','medical',0.00,60,NULL,'quarterly',1,79,0,1,'2025-12-15 04:10:10','2025-12-15 04:10:10');
/*!40000 ALTER TABLE `benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_barangays`
--

DROP TABLE IF EXISTS `branch_barangays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch_barangays` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `barangay_id` int NOT NULL,
  `assigned_date` date NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_branch_barangay` (`branch_id`,`barangay_id`),
  KEY `barangay_id` (`barangay_id`),
  CONSTRAINT `branch_barangays_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `branch_barangays_ibfk_2` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_barangays`
--

LOCK TABLES `branch_barangays` WRITE;
/*!40000 ALTER TABLE `branch_barangays` DISABLE KEYS */;
INSERT INTO `branch_barangays` VALUES (103,2,4,'2026-02-01',1),(104,2,27,'2026-02-01',1),(105,2,28,'2026-02-01',1),(106,2,18,'2026-02-01',1),(107,2,37,'2026-02-01',1),(108,2,42,'2026-02-01',1),(109,2,51,'2026-02-01',1),(110,2,56,'2026-02-01',1),(111,2,59,'2026-02-01',1),(112,2,71,'2026-02-01',1),(113,2,76,'2026-02-01',1),(114,2,72,'2026-02-01',1),(115,2,85,'2026-02-01',1),(116,3,3,'2026-02-01',1),(117,3,15,'2026-02-01',1),(118,3,96,'2026-02-01',1),(119,3,48,'2026-02-01',1),(120,3,60,'2026-02-01',1),(121,3,62,'2026-02-01',1),(122,3,63,'2026-02-01',1),(123,3,66,'2026-02-01',1),(124,3,67,'2026-02-01',1),(125,3,69,'2026-02-01',1),(126,3,92,'2026-02-01',1),(127,3,93,'2026-02-01',1),(128,3,94,'2026-02-01',1),(129,3,95,'2026-02-01',1),(130,4,11,'2026-02-01',1),(131,4,14,'2026-02-01',1),(132,4,97,'2026-02-01',1),(133,4,16,'2026-02-01',1),(134,4,17,'2026-02-01',1),(135,4,24,'2026-02-01',1),(136,4,55,'2026-02-01',1),(137,4,43,'2026-02-01',1),(138,4,68,'2026-02-01',1),(139,4,64,'2026-02-01',1),(140,4,86,'2026-02-01',1),(142,5,5,'2026-02-01',1),(143,5,22,'2026-02-01',1),(144,5,26,'2026-02-01',1),(145,5,39,'2026-02-01',1),(146,5,40,'2026-02-01',1),(147,5,41,'2026-02-01',1),(148,5,44,'2026-02-01',1),(149,5,57,'2026-02-01',1),(150,5,77,'2026-02-01',1),(151,5,79,'2026-02-01',1),(152,5,82,'2026-02-01',1),(153,5,52,'2026-02-01',1),(154,6,6,'2026-02-01',1),(155,6,8,'2026-02-01',1),(156,6,19,'2026-02-01',1),(157,6,23,'2026-02-01',1),(158,6,29,'2026-02-01',1),(159,6,31,'2026-02-01',1),(160,6,30,'2026-02-01',1),(161,6,45,'2026-02-01',1),(162,6,47,'2026-02-01',1),(163,6,65,'2026-02-01',1),(164,6,89,'2026-02-01',1),(166,6,87,'2026-02-01',1),(167,6,25,'2026-02-01',1),(168,6,54,'2026-02-01',1),(169,6,10,'2026-02-01',1),(170,6,12,'2026-02-01',1),(171,6,49,'2026-02-01',1),(172,6,32,'2026-02-01',1),(173,6,33,'2026-02-01',1),(174,6,98,'2026-02-01',1),(175,6,61,'2026-02-01',1),(176,6,75,'2026-02-01',1),(177,6,83,'2026-02-01',1),(178,6,91,'2026-02-01',1),(179,7,7,'2026-02-01',1),(180,7,13,'2026-02-01',1),(181,7,20,'2026-02-01',1),(182,7,21,'2026-02-01',1),(183,7,34,'2026-02-01',1),(184,7,38,'2026-02-01',1),(185,7,50,'2026-02-01',1),(186,7,58,'2026-02-01',1),(187,7,53,'2026-02-01',1),(188,8,35,'2026-02-01',1),(189,8,36,'2026-02-01',1),(190,8,46,'2026-02-01',1),(191,8,70,'2026-02-01',1),(192,8,73,'2026-02-01',1),(193,8,74,'2026-02-01',1),(194,8,80,'2026-02-01',1),(195,8,81,'2026-02-01',1),(196,8,88,'2026-02-01',1),(197,8,90,'2026-02-01',1),(198,5,84,'2026-02-01',1),(200,6,78,'2026-02-01',1),(202,2,2,'2026-02-01',1),(204,5,1,'2026-02-01',1),(205,10,99,'2026-02-01',1);
/*!40000 ALTER TABLE `branch_barangays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` text COLLATE utf8mb4_general_ci,
  `contact_number` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `branch_head` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (1,'OSCA-MAIN','OSCA Main Office','City Hall, Zamboanga City','062-991-1234','osca.main@zamboanga.gov.ph','Main Administrator',1,'2025-12-15 01:32:12','2025-12-15 01:32:12'),(2,'OSCA-F1','Field Office 1','Ayala Gym, Zamboanga City','983-0391','osca.field1@zamboanga.gov.ph','Branch Head 1',1,'2025-12-15 01:32:12','2026-02-01 06:08:30'),(3,'OSCA-F2','Field Office 2','Sta. Barbara beside OSCA Office, Zamboanga City','991-4514','osca.field2@zamboanga.gov.ph','Branch Head 2',1,'2025-12-15 01:32:12','2026-02-01 06:08:30'),(4,'OSCA-F3','Field Office 3','Sta. Maria Barangay New Hall, Zamboanga City','985-1130','osca.field3@zamboanga.gov.ph','Branch Head 3',1,'2025-12-15 01:32:12','2026-02-01 06:08:31'),(5,'OSCA-F4','Field Office 4','IBT Divisoria, Zamboanga City','990-1455','osca.field4@zamboanga.gov.ph','Branch Head 4',1,'2025-12-15 01:32:12','2026-02-01 06:08:31'),(6,'OSCA-F5','Field Office 5','Culianan Compound, Zamboanga City','955-1268','osca.field5@zamboanga.gov.ph','Branch Head 5',1,'2025-12-15 01:32:12','2026-02-01 06:08:32'),(7,'OSCA-F6','Field Office 6','Curuan, Zamboanga City','926-6759','osca.field6@zamboanga.gov.ph','Branch Head 6',1,'2025-12-15 01:32:12','2026-02-01 06:08:32'),(8,'OSCA-F7','Field Office 7','Vitali (Technical Vocational School), Zamboanga City','926-6852','osca.field7@zamboanga.gov.ph','Branch Head 7',1,'2025-12-15 01:32:12','2026-02-01 06:08:33'),(10,'TFO','Test Field Office','secret hehe','09123456789','tfo@osca.gov.ph',NULL,1,'2026-02-01 17:20:56','2026-02-01 17:20:56');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_categories`
--

DROP TABLE IF EXISTS `complaint_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaint_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_categories`
--

LOCK TABLES `complaint_categories` WRITE;
/*!40000 ALTER TABLE `complaint_categories` DISABLE KEYS */;
INSERT INTO `complaint_categories` VALUES (1,'Discount Denial','Establishment refused senior discount'),(2,'Priority Lane Violation','Denied priority lane access'),(3,'Abuse/Neglect','Physical or emotional abuse'),(4,'Discrimination','Age-based discrimination'),(5,'Service Denial','Denied services for seniors'),(6,'Pension Issues','Problems with pension distribution'),(7,'Other','Other complaints');
/*!40000 ALTER TABLE `complaint_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_documents`
--

DROP TABLE IF EXISTS `complaint_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaint_documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `complaint_id` int NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `original_filename` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `uploaded_by` int NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `complaint_id` (`complaint_id`),
  KEY `uploaded_by` (`uploaded_by`),
  CONSTRAINT `complaint_documents_ibfk_1` FOREIGN KEY (`complaint_id`) REFERENCES `complaints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `complaint_documents_ibfk_2` FOREIGN KEY (`uploaded_by`) REFERENCES `admin_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_documents`
--

LOCK TABLES `complaint_documents` WRITE;
/*!40000 ALTER TABLE `complaint_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_statuses`
--

DROP TABLE IF EXISTS `complaint_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaint_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `color_code` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_statuses`
--

LOCK TABLES `complaint_statuses` WRITE;
/*!40000 ALTER TABLE `complaint_statuses` DISABLE KEYS */;
INSERT INTO `complaint_statuses` VALUES (1,'Submitted','Complaint filed','#FFA500'),(2,'Under Investigation','Being investigated','#2196F3'),(3,'In Progress','Action being taken','#FF9800'),(4,'Resolved','Complaint resolved','#4CAF50'),(5,'Closed','Case closed','#9E9E9E'),(6,'Rejected','Complaint rejected','#F44336');
/*!40000 ALTER TABLE `complaint_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaints` (
  `id` int NOT NULL AUTO_INCREMENT,
  `complaint_number` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `complainant_id` int NOT NULL,
  `violator_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `violator_contact` text COLLATE utf8mb4_general_ci,
  `category_id` int NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `incident_date` date DEFAULT NULL,
  `incident_location` text COLLATE utf8mb4_general_ci,
  `status_id` int NOT NULL,
  `amount_billable` decimal(10,2) DEFAULT NULL,
  `filed_by` int NOT NULL,
  `filed_date` date NOT NULL,
  `assigned_to` int DEFAULT NULL,
  `resolved_date` date DEFAULT NULL,
  `resolution_notes` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `complaint_number` (`complaint_number`),
  KEY `category_id` (`category_id`),
  KEY `filed_by` (`filed_by`),
  KEY `assigned_to` (`assigned_to`),
  KEY `idx_complaint_number` (`complaint_number`),
  KEY `idx_complainant` (`complainant_id`),
  KEY `idx_status` (`status_id`),
  KEY `idx_complaint_status_date` (`status_id`,`filed_date`),
  CONSTRAINT `complaints_ibfk_1` FOREIGN KEY (`complainant_id`) REFERENCES `senior_citizens` (`id`),
  CONSTRAINT `complaints_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `complaint_categories` (`id`),
  CONSTRAINT `complaints_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `complaint_statuses` (`id`),
  CONSTRAINT `complaints_ibfk_4` FOREIGN KEY (`filed_by`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `complaints_ibfk_5` FOREIGN KEY (`assigned_to`) REFERENCES `admin_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mobile_number` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telephone_number` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `house_number` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `barangay_id` int DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_general_ci DEFAULT 'Zamboanga City',
  `postal_code` varchar(10) COLLATE utf8mb4_general_ci DEFAULT '7000',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `barangay_id` (`barangay_id`),
  KEY `idx_contact_lookup` (`id`),
  CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'09171111111','062-991-1111','senior1@email.com','123','Rizal Street',79,'Zamboanga City','7000','2025-12-15 01:34:59','2025-12-15 01:34:59'),(2,'09172222222','062-991-2222','senior2@email.com','456','Bonifacio Avenue',68,'Zamboanga City','7000','2025-12-15 01:34:59','2025-12-15 01:34:59'),(3,'09173333333',NULL,NULL,'789','Luna Street',26,'Zamboanga City','7000','2025-12-15 01:34:59','2025-12-15 01:34:59'),(4,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:33','2025-12-17 10:36:33'),(5,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:35','2025-12-17 10:36:35'),(6,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:35','2025-12-17 10:36:35'),(7,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:36','2025-12-17 10:36:36'),(8,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:36','2025-12-17 10:36:36'),(9,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:36','2025-12-17 10:36:36'),(10,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:36','2025-12-17 10:36:36'),(11,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:36','2025-12-17 10:36:36'),(12,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:36','2025-12-17 10:36:36'),(13,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:36','2025-12-17 10:36:36'),(14,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:38','2025-12-17 10:36:38'),(15,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:38','2025-12-17 10:36:38'),(16,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:39','2025-12-17 10:36:39'),(17,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:39','2025-12-17 10:36:39'),(18,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:39','2025-12-17 10:36:39'),(19,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:39','2025-12-17 10:36:39'),(20,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:54','2025-12-17 10:36:54'),(21,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:54','2025-12-17 10:36:54'),(22,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:54','2025-12-17 10:36:54'),(23,'09670922527','','','','',82,'Zamboanga City','7000','2025-12-17 10:36:55','2025-12-17 10:36:55'),(24,NULL,NULL,NULL,'asd','sad',90,'Zamboanga City','7000','2025-12-18 10:51:54','2025-12-18 10:51:54'),(25,NULL,NULL,NULL,'asd','sad',90,'Zamboanga City','7000','2025-12-18 10:52:20','2025-12-18 10:52:20'),(26,NULL,NULL,NULL,'124','pauline',16,'Zamboanga City','7000','2025-12-18 11:08:17','2025-12-18 19:35:34'),(27,NULL,NULL,NULL,'dsa','dsa',13,'Zamboanga City','7000','2025-12-18 11:16:53','2025-12-18 16:52:33'),(29,NULL,NULL,NULL,'das','fa',1,'Zamboanga City','7000','2025-12-18 14:25:55','2025-12-18 16:30:22'),(36,NULL,NULL,NULL,'dsa','32',6,'Zamboanga City','7000','2025-12-18 15:13:48','2025-12-18 15:13:48'),(37,NULL,NULL,NULL,'dsa','ds',17,'Zamboanga City','7000','2025-12-18 15:15:00','2025-12-18 15:15:00'),(38,NULL,NULL,NULL,'sda','dsa',19,'Zamboanga City','7000','2025-12-18 15:16:23','2025-12-18 15:16:23'),(39,NULL,NULL,NULL,'dsq','dsa',15,'Zamboanga City','7000','2025-12-18 15:17:23','2025-12-18 15:17:23'),(40,NULL,NULL,NULL,'dsa','214',18,'Zamboanga City','7000','2025-12-18 15:47:27','2025-12-18 15:47:27'),(41,NULL,NULL,NULL,'dsa','214',18,'Zamboanga City','7000','2025-12-18 15:48:17','2025-12-18 15:48:17'),(42,NULL,NULL,NULL,'dsq','dsa',15,'Zamboanga City','7000','2025-12-18 15:50:53','2025-12-18 15:50:53'),(43,NULL,NULL,NULL,'dsa','das',19,'Zamboanga City','7000','2025-12-18 15:59:48','2025-12-18 15:59:48'),(44,NULL,NULL,NULL,'dsa','das',19,'Zamboanga City','7000','2025-12-18 15:59:58','2025-12-18 15:59:58'),(45,NULL,NULL,NULL,'dsa','d',17,'Zamboanga City','7000','2025-12-18 16:10:57','2025-12-18 16:10:57'),(46,NULL,NULL,NULL,'dsa','d',17,'Zamboanga City','7000','2025-12-18 16:50:45','2025-12-18 16:50:45'),(47,NULL,NULL,NULL,'da','32',15,'Zamboanga City','7000','2025-12-18 18:02:16','2025-12-18 18:02:16'),(48,NULL,NULL,NULL,'dsa','32',12,'Zamboanga City','7000','2025-12-18 19:10:27','2025-12-18 19:10:27'),(49,NULL,NULL,NULL,'dwq','321',21,'Zamboanga City','7000','2025-12-18 19:23:07','2025-12-18 19:23:07'),(50,NULL,NULL,NULL,'321','2321',18,'Zamboanga City','7000','2025-12-18 19:45:55','2025-12-18 19:45:55'),(51,NULL,NULL,NULL,'sda','dsa',15,'Zamboanga City','7000','2025-12-18 19:55:36','2025-12-18 19:55:36'),(52,NULL,NULL,NULL,'321','321',66,'Zamboanga City','7000','2025-12-18 19:58:26','2025-12-18 19:58:26'),(53,NULL,NULL,NULL,'4as','42',16,'Zamboanga City','7000','2025-12-18 20:06:46','2025-12-18 20:06:46'),(54,NULL,NULL,NULL,'as','da',15,'Zamboanga City','7000','2025-12-18 20:18:29','2025-12-18 20:18:29'),(55,NULL,NULL,NULL,'as','da',15,'Zamboanga City','7000','2025-12-18 20:19:25','2025-12-18 20:19:25'),(56,NULL,NULL,NULL,'321','321',17,'Zamboanga City','7000','2025-12-18 20:32:23','2025-12-18 20:32:23'),(57,NULL,NULL,NULL,'2421','42',18,'Zamboanga City','7000','2025-12-18 20:33:44','2025-12-18 20:33:44'),(58,NULL,NULL,NULL,'das','dsa',14,'Zamboanga City','7000','2025-12-18 20:43:55','2025-12-18 20:43:55'),(59,NULL,NULL,NULL,'dsa','dsa',15,'Zamboanga City','7000','2025-12-18 20:52:46','2025-12-18 20:52:46'),(60,NULL,NULL,NULL,'sad','das',17,'Zamboanga City','7000','2025-12-18 20:56:53','2025-12-18 20:56:53'),(61,NULL,NULL,NULL,'sad','das',17,'Zamboanga City','7000','2025-12-18 20:57:09','2025-12-18 20:57:09'),(62,NULL,NULL,NULL,'dsa','dsa',10,'Zamboanga City','7000','2025-12-18 20:58:28','2025-12-18 20:58:28'),(63,NULL,NULL,NULL,'dsa','dsa',15,'Zamboanga City','7000','2025-12-18 20:59:38','2025-12-18 20:59:38'),(64,NULL,NULL,NULL,'dsa','dsa',17,'Zamboanga City','7000','2025-12-18 21:22:04','2025-12-18 21:22:04'),(65,NULL,NULL,NULL,'23','32',16,'Zamboanga City','7000','2025-12-18 22:19:53','2025-12-18 22:19:53'),(66,NULL,NULL,NULL,'123','123',15,'Zamboanga City','7000','2025-12-19 01:54:57','2025-12-19 01:54:57'),(67,NULL,NULL,NULL,'123','123',15,'Zamboanga City','7000','2025-12-19 01:55:33','2025-12-19 01:55:33'),(80,NULL,NULL,NULL,'1742',NULL,79,'Zamboanga City','7000','2026-01-29 15:00:50','2026-01-29 15:00:50'),(81,NULL,NULL,NULL,'41241','412',84,'Zamboanga City','7000','2026-01-29 15:02:48','2026-01-29 15:02:48'),(82,NULL,NULL,NULL,'dsa','dwa',5,'Zamboanga City','7000','2026-01-29 15:51:38','2026-01-29 15:51:38'),(83,NULL,NULL,NULL,'das','sad',5,'Zamboanga City','7000','2026-01-29 15:54:59','2026-01-29 15:54:59'),(84,'09661572185',NULL,NULL,'dsa','dwa',79,'Zamboanga City','7000','2026-01-29 22:11:08','2026-01-29 22:11:08'),(85,NULL,NULL,NULL,'123','Secret',1,'Zamboanga City','7000','2026-01-29 22:11:12','2026-01-29 22:11:12'),(86,NULL,NULL,NULL,'asd','das',2,'Zamboanga City','7000','2026-01-29 22:24:05','2026-01-29 22:24:05'),(87,NULL,NULL,NULL,'412','frew',1,'Zamboanga City','7000','2026-01-29 23:08:09','2026-01-29 23:08:09'),(88,NULL,NULL,NULL,'dsa','da',1,'Zamboanga City','7000','2026-01-29 23:36:52','2026-01-29 23:36:52'),(89,NULL,NULL,NULL,'194',NULL,1,'Zamboanga City','7000','2026-01-30 21:47:32','2026-01-30 21:47:32'),(90,NULL,NULL,NULL,'Secret','Hehe',2,'Zamboanga City','7000','2026-01-30 22:45:28','2026-01-30 22:45:28'),(91,NULL,NULL,NULL,NULL,NULL,1,'Zamboanga City','7000','2026-01-30 23:09:36','2026-01-30 23:09:36'),(92,'09661572185',NULL,NULL,NULL,'Haha hehe',1,'Zamboanga City','7000','2026-01-30 23:12:49','2026-01-30 23:12:49'),(93,NULL,NULL,NULL,NULL,'Pauline',10,'Zamboanga City','7000','2026-01-31 05:39:03','2026-01-31 05:39:03'),(94,NULL,NULL,NULL,'142','Pokemon',14,'Zamboanga City','7000','2026-01-31 07:30:23','2026-01-31 07:30:23'),(95,NULL,NULL,NULL,'123','Pauline',3,'Zamboanga City','7000','2026-01-31 07:49:08','2026-01-31 07:49:08'),(96,NULL,NULL,NULL,'123','Hihi',26,'Zamboanga City','7000','2026-01-31 08:30:24','2026-01-31 08:30:24'),(97,NULL,NULL,NULL,'23','Sheila',26,'Zamboanga City','7000','2026-02-01 07:16:03','2026-02-01 07:16:03'),(98,NULL,NULL,NULL,'66','Tondo',6,'Zamboanga City','7000','2026-02-01 07:18:21','2026-02-01 07:18:21');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_types`
--

DROP TABLE IF EXISTS `document_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `is_required` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_types`
--

LOCK TABLES `document_types` WRITE;
/*!40000 ALTER TABLE `document_types` DISABLE KEYS */;
INSERT INTO `document_types` VALUES (1,'Birth Certificate','Proof of age and identity',1),(2,'Barangay Certificate','Certificate of residency',1),(3,'Senior Photo','Recent photo for ID',1),(4,'Affidavit of Loss','For lost ID replacement',0),(5,'Old/Damaged ID','For renewal or replacement',0),(6,'COMELEC ID','Voter identification',0),(7,'Medical Certificate','For PWD or special cases',0);
/*!40000 ALTER TABLE `document_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educational_attainment`
--

DROP TABLE IF EXISTS `educational_attainment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educational_attainment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `level` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_attainment`
--

LOCK TABLES `educational_attainment` WRITE;
/*!40000 ALTER TABLE `educational_attainment` DISABLE KEYS */;
INSERT INTO `educational_attainment` VALUES (1,'No Formal Education','No formal schooling'),(2,'Elementary Level','Some elementary education'),(3,'Elementary Graduate','Completed elementary'),(4,'High School Level','Some high school education'),(5,'High School Graduate','Completed high school'),(6,'Vocational/Technical','Vocational or technical training'),(7,'College Level','Some college education'),(8,'College Graduate','Completed college degree'),(9,'Post Graduate','Masters or Doctorate degree');
/*!40000 ALTER TABLE `educational_attainment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_participants`
--

DROP TABLE IF EXISTS `event_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_participants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `announcement_id` int NOT NULL,
  `senior_id` int NOT NULL,
  `registered_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attended` tinyint(1) DEFAULT '0',
  `attendance_date` timestamp NULL DEFAULT NULL,
  `claimed_benefit` tinyint(1) DEFAULT '0',
  `claim_date` timestamp NULL DEFAULT NULL,
  `claimed_by_admin` int DEFAULT NULL,
  `notes` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_announcement_senior` (`announcement_id`,`senior_id`),
  KEY `senior_id` (`senior_id`),
  KEY `claimed_by_admin` (`claimed_by_admin`),
  CONSTRAINT `event_participants_ibfk_1` FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `event_participants_ibfk_2` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`),
  CONSTRAINT `event_participants_ibfk_3` FOREIGN KEY (`claimed_by_admin`) REFERENCES `admin_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_participants`
--

LOCK TABLES `event_participants` WRITE;
/*!40000 ALTER TABLE `event_participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_members`
--

DROP TABLE IF EXISTS `family_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family_members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `senior_id` int NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `middle_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `extension` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `relationship` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `age` int DEFAULT NULL,
  `monthly_salary` decimal(10,2) DEFAULT NULL,
  `contact_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `contact_id` (`contact_id`),
  KEY `idx_family_senior` (`senior_id`,`contact_id`),
  CONSTRAINT `family_members_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`) ON DELETE CASCADE,
  CONSTRAINT `family_members_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_members`
--

LOCK TABLES `family_members` WRITE;
/*!40000 ALTER TABLE `family_members` DISABLE KEYS */;
INSERT INTO `family_members` VALUES (1,24,'asanul','pogi','yess','jr','Mother',0,10000.00,NULL,'2025-12-18 10:51:54'),(2,25,'asanul','pogi','yess','jr','Mother',0,10000.00,NULL,'2025-12-18 10:52:20'),(7,27,'Dog',NULL,'sda',NULL,'sda',23,32.00,NULL,'2025-12-18 19:04:08'),(8,26,'fam',NULL,'yes','yes','MOTHER',20,NULL,NULL,'2025-12-18 19:36:45');
/*!40000 ALTER TABLE `family_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genders`
--

DROP TABLE IF EXISTS `genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` VALUES (2,'Female'),(1,'Male'),(3,'Other');
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_printing_queue`
--

DROP TABLE IF EXISTS `id_printing_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id_printing_queue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `senior_id` int NOT NULL,
  `application_id` int DEFAULT NULL,
  `queue_number` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `priority` enum('normal','urgent','express') COLLATE utf8mb4_general_ci DEFAULT 'normal',
  `status` enum('pending','in_progress','printed','claimed','cancelled') COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `id_type` enum('new','renewal','replacement') COLLATE utf8mb4_general_ci NOT NULL,
  `requested_by` int NOT NULL,
  `requested_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `assigned_to` int DEFAULT NULL COMMENT 'Printer operator',
  `assigned_date` timestamp NULL DEFAULT NULL,
  `printed_by` int DEFAULT NULL,
  `printed_date` timestamp NULL DEFAULT NULL,
  `claimed_by` int DEFAULT NULL COMMENT 'Admin who released the ID',
  `claimed_date` timestamp NULL DEFAULT NULL,
  `notes` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `queue_number` (`queue_number`),
  KEY `idx_senior_id` (`senior_id`),
  KEY `idx_application_id` (`application_id`),
  KEY `idx_status` (`status`),
  KEY `idx_priority` (`priority`),
  KEY `idx_requested_date` (`requested_date`),
  KEY `idx_status_priority` (`status`,`priority`),
  KEY `idx_requested_date_status` (`requested_date`,`status`),
  KEY `requested_by` (`requested_by`),
  KEY `assigned_to` (`assigned_to`),
  KEY `printed_by` (`printed_by`),
  KEY `claimed_by` (`claimed_by`),
  CONSTRAINT `id_printing_queue_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`),
  CONSTRAINT `id_printing_queue_ibfk_2` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`),
  CONSTRAINT `id_printing_queue_ibfk_3` FOREIGN KEY (`requested_by`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `id_printing_queue_ibfk_4` FOREIGN KEY (`assigned_to`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `id_printing_queue_ibfk_5` FOREIGN KEY (`printed_by`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `id_printing_queue_ibfk_6` FOREIGN KEY (`claimed_by`) REFERENCES `admin_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_printing_queue`
--

LOCK TABLES `id_printing_queue` WRITE;
/*!40000 ALTER TABLE `id_printing_queue` DISABLE KEYS */;
INSERT INTO `id_printing_queue` VALUES (5,40,NULL,'QN-20260130-0002','normal','printed','new',1,'2026-01-29 21:00:14',NULL,NULL,1,'2026-01-30 23:51:10',NULL,NULL,NULL,'2026-01-29 21:00:14','2026-01-30 23:51:10'),(6,39,NULL,'QN-20260130-0003','normal','claimed','renewal',1,'2026-01-30 23:52:53',NULL,NULL,1,'2026-01-30 23:53:15',1,'2026-01-30 23:53:22',NULL,'2026-01-30 23:52:53','2026-01-30 23:53:22'),(7,49,NULL,'QN-20260130-0004','normal','printed','new',1,'2026-01-30 23:54:04',NULL,NULL,1,'2026-01-30 23:54:24',NULL,NULL,NULL,'2026-01-30 23:54:04','2026-01-30 23:54:24'),(8,48,NULL,'QN-20260130-0005','normal','pending','new',1,'2026-01-30 23:54:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-01-30 23:54:15','2026-01-30 23:54:15');
/*!40000 ALTER TABLE `id_printing_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_statuses`
--

DROP TABLE IF EXISTS `id_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_statuses`
--

LOCK TABLES `id_statuses` WRITE;
/*!40000 ALTER TABLE `id_statuses` DISABLE KEYS */;
INSERT INTO `id_statuses` VALUES (1,'Active','ID is active and valid'),(2,'Expired','ID has expired'),(3,'Lost','ID reported as lost'),(4,'Damaged','ID reported as damaged'),(5,'Suspended','ID temporarily suspended'),(6,'Replaced','ID has been replaced');
/*!40000 ALTER TABLE `id_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'2019_12_14_000001_create_personal_access_tokens_table',2),(3,'0001_01_01_000001_create_cache_table',3),(4,'0001_01_01_000002_create_jobs_table',3),(5,'2026_01_29_112303_create_personal_access_tokens_table',4),(6,'2026_01_30_053646_create_pre_registrations_table',4),(7,'2026_01_30_140000_create_senior_accounts_table',5),(8,'2026_01_30_160000_create_benefit_types_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobility_levels`
--

DROP TABLE IF EXISTS `mobility_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobility_levels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `level` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobility_levels`
--

LOCK TABLES `mobility_levels` WRITE;
/*!40000 ALTER TABLE `mobility_levels` DISABLE KEYS */;
INSERT INTO `mobility_levels` VALUES (1,'Independent','Able to move without assistance'),(2,'Assisted','Requires assistance for mobility'),(3,'Wheelchair Bound','Uses wheelchair'),(4,'Bedridden','Confined to bed');
/*!40000 ALTER TABLE `mobility_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  KEY `personal_access_tokens_expires_at_index` (`expires_at`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',1,'auth-token','9989a22653e787452da26f9694aaad7153a955a38116e1760bea4670d30f696f','[\"*\"]',NULL,NULL,'2026-01-30 17:17:35','2026-01-30 17:17:35'),(2,'App\\Models\\User',1,'auth-token','418455445a45d1480b1548cd0879b8204f3c343f8f8bc3bf23f15ff21ce10f53','[\"*\"]',NULL,NULL,'2026-01-30 20:29:12','2026-01-30 20:29:12'),(3,'App\\Models\\User',1,'auth-token','c2298d2bf8aded0376d3ca31d44db752f0ab23559e191f2fd1e344030b64e2b6','[\"*\"]',NULL,NULL,'2026-01-30 21:11:06','2026-01-30 21:11:06'),(4,'App\\Models\\User',1,'auth-token','45cbdef8a15bac5026f9b09e347bc0a5e70cfadb1414c318b8616149ff84d7fa','[\"*\"]',NULL,NULL,'2026-01-30 21:15:17','2026-01-30 21:15:17'),(5,'App\\Models\\User',1,'auth-token','370c47312e7cfeb0e52a8ed3dacfb43a3830ea2f771d47cca6580fd3787bc5c0','[\"*\"]',NULL,NULL,'2026-01-30 21:15:55','2026-01-30 21:15:55'),(6,'App\\Models\\User',1,'auth-token','17f5a8a730fad18f9c4b8c9d53da03ea55113a40279a8be175b213be87d49261','[\"*\"]',NULL,NULL,'2026-01-30 21:32:47','2026-01-30 21:32:47'),(8,'App\\Models\\User',1,'auth-token','c2506f473ce677fbad112a55c4646c3b14608fbc049101015a59cf4d4405f924','[\"*\"]','2026-02-01 18:50:23',NULL,'2026-01-30 21:42:46','2026-02-01 18:50:23'),(22,'App\\Models\\User',1,'auth-token','0c47e3f4ea1363badf42dcd0fe0ea793f2d7b709197eb5e4b51f5de6a3b6f7b4','[\"*\"]','2026-01-31 07:44:40',NULL,'2026-01-31 04:55:02','2026-01-31 07:44:40'),(25,'App\\Models\\User',1,'auth-token','9d1a8ce34d988f6ca0c566974c1257ebd9ccb95814645b94eead81f237417e6d','[\"*\"]','2026-02-01 16:42:47',NULL,'2026-01-31 08:26:10','2026-02-01 16:42:47'),(40,'App\\Models\\User',4,'auth-token','2ebd5cfe24505e84d0f41af3c34ee39465a7a38ee51345a8a4bfe2adf03f659c','[\"*\"]','2026-02-01 12:45:04',NULL,'2026-02-01 12:41:08','2026-02-01 12:45:04'),(49,'App\\Models\\User',12,'auth-token','74492f0d5c6337b93b208c52002c905d7c8c8ca4898b7300fbcb9b03e1f56a03','[\"*\"]','2026-02-01 13:20:06',NULL,'2026-02-01 13:15:15','2026-02-01 13:20:06'),(56,'App\\Models\\User',10,'auth-token','9a09ae31a910c344b15967178dda53af8326d4b6fb1cc0606af5b8e0e55f4090','[\"*\"]','2026-02-01 13:27:14',NULL,'2026-02-01 13:27:12','2026-02-01 13:27:14'),(67,'App\\Models\\User',12,'auth-token','7f6333b634e403ace9026767053f18df9f2ac32c8e7057ca4e5f0c2fad2a036c','[\"*\"]','2026-02-01 16:00:34',NULL,'2026-02-01 16:00:29','2026-02-01 16:00:34'),(73,'App\\Models\\User',1,'auth-token','217096646f17df049b7bbebfc47a48ca5baac2583c729d4160db64737e9a32d7','[\"*\"]','2026-02-02 10:59:37',NULL,'2026-02-01 18:08:29','2026-02-02 10:59:37'),(74,'App\\Models\\User',1,'auth-token','439b4c6c6ebb76c6588cf2b213479dd0c9faff51e474181e9fffa4fdaae0f777','[\"*\"]','2026-02-02 07:59:56',NULL,'2026-02-01 18:48:30','2026-02-02 07:59:56'),(76,'App\\Models\\User',1,'auth-token','7a0d6749c80a444174b07fa8ef94e2cc988b610cce5508a18b110653c3347f87','[\"*\"]','2026-02-02 00:07:02',NULL,'2026-02-02 00:05:16','2026-02-02 00:07:02');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pre_registrations`
--

DROP TABLE IF EXISTS `pre_registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pre_registrations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicant_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `barangay_id` bigint unsigned NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `fo_reviewed_by` bigint unsigned DEFAULT NULL,
  `fo_reviewed_at` timestamp NULL DEFAULT NULL,
  `main_reviewed_by` bigint unsigned DEFAULT NULL,
  `main_reviewed_at` timestamp NULL DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `rejection_reason` text COLLATE utf8mb4_unicode_ci,
  `application_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pre_registrations_reference_number_unique` (`reference_number`),
  KEY `pre_registrations_status_barangay_id_index` (`status`,`barangay_id`),
  KEY `pre_registrations_created_at_index` (`created_at`),
  CONSTRAINT `pre_registrations_chk_1` CHECK (json_valid(`applicant_data`))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pre_registrations`
--

LOCK TABLES `pre_registrations` WRITE;
/*!40000 ALTER TABLE `pre_registrations` DISABLE KEYS */;
INSERT INTO `pre_registrations` VALUES (1,'PRE-20260130-4832','{\"first_name\":\"Asanul\",\"middle_name\":null,\"last_name\":\"Asanul\",\"suffix\":null,\"birthdate\":\"1954-06-23\",\"sex\":\"male\",\"civil_status\":\"single\",\"contact_number\":\"09661572185\",\"email\":null,\"address\":\"41\",\"emergency_contact_name\":null,\"emergency_contact_number\":null}',4,'approved',8,'2026-01-29 22:59:52',1,'2026-01-29 23:01:23',NULL,NULL,NULL,'2026-01-29 22:27:44','2026-01-29 23:01:23'),(2,'PRE-20260130-3001','{\"first_name\":\"Online\",\"middle_name\":null,\"last_name\":\"Apply\",\"suffix\":null,\"birthdate\":\"1963-01-30\",\"sex\":\"male\",\"civil_status\":\"single\",\"contact_number\":\"09661572185\",\"email\":null,\"address\":\"da\",\"emergency_contact_name\":null,\"emergency_contact_number\":null}',1,'pending',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-01-29 23:04:06','2026-01-29 23:04:06'),(3,'PRE-20260130-2014','{\"first_name\":\"das\",\"middle_name\":null,\"last_name\":\"das\",\"suffix\":null,\"birthdate\":\"1945-05-02\",\"sex\":\"female\",\"civil_status\":\"married\",\"contact_number\":\"09661572185\",\"email\":null,\"address\":\"412\",\"emergency_contact_name\":null,\"emergency_contact_number\":null}',1,'pending',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-01-30 21:23:09','2026-01-30 21:23:09'),(4,'PRE-20260130-7625','{\"first_name\":\"as\",\"middle_name\":null,\"last_name\":\"dsa\",\"suffix\":null,\"birthdate\":\"1945-05-02\",\"sex\":\"female\",\"civil_status\":\"married\",\"contact_number\":\"4124124\",\"email\":null,\"address\":\"315\",\"emergency_contact_name\":null,\"emergency_contact_number\":null}',1,'pending',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-01-30 21:24:12','2026-01-30 21:24:12'),(5,'PRE-20260130-9266','{\"first_name\":\"dep\",\"middle_name\":null,\"last_name\":\"yess\",\"suffix\":null,\"birthdate\":\"1942-05-02\",\"sex\":\"female\",\"civil_status\":\"married\",\"contact_number\":\"09661572185\",\"email\":null,\"address\":\"214\",\"emergency_contact_name\":null,\"emergency_contact_number\":null}',1,'converted',8,'2026-01-30 21:50:09',1,'2026-01-31 06:29:25',NULL,NULL,107,'2026-01-30 21:44:10','2026-01-31 06:29:30'),(6,'PRE-20260130-1595','{\"first_name\":\"Mobile\",\"middle_name\":null,\"last_name\":\"Apply\",\"suffix\":null,\"birthdate\":\"1940-05-02\",\"sex\":\"female\",\"civil_status\":\"single\",\"contact_number\":\"09661572185\",\"email\":null,\"address\":\"1\",\"emergency_contact_name\":null,\"emergency_contact_number\":null}',29,'pending',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-01-30 21:59:59','2026-01-30 21:59:59'),(7,'PRE-20260130-0959','{\"first_name\":\"Conv\",\"middle_name\":null,\"last_name\":\"Appli\",\"suffix\":null,\"birthdate\":\"1942-05-02\",\"sex\":\"male\",\"civil_status\":\"single\",\"contact_number\":\"09661572185\",\"email\":null,\"address\":\"Haha hehe\",\"emergency_contact_name\":null,\"emergency_contact_number\":null}',1,'converted',NULL,NULL,8,'2026-01-30 23:11:57',NULL,NULL,52,'2026-01-30 22:24:15','2026-01-30 23:12:34'),(8,'PRE-20260130-6012','{\"first_name\":\"Onl\",\"middle_name\":null,\"last_name\":\"Appli\",\"extension\":null,\"birthdate\":\"1945-05-03\",\"gender_id\":1,\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null,\"family_members\":[],\"target_sectors\":[\"WEPC\"],\"sub_categories\":[]}',1,'converted',NULL,NULL,1,'2026-01-30 23:08:36',NULL,NULL,51,'2026-01-30 22:50:44','2026-01-30 23:09:07'),(9,'PRE-20260131-2121','{\"first_name\":\"Albus\",\"middle_name\":null,\"last_name\":\"dumbledor\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":1,\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null,\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}',1,'main_review',NULL,NULL,1,'2026-01-31 03:58:29',NULL,NULL,NULL,'2026-01-31 02:16:21','2026-01-31 03:58:29'),(10,'PRE-20260131-4513','{\"first_name\":\"John\",\"middle_name\":null,\"last_name\":\"Dave\",\"extension\":null,\"birthdate\":\"1955-02-15\",\"gender_id\":1,\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null,\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}',14,'converted',NULL,NULL,1,'2026-01-31 05:31:12',NULL,NULL,101,'2026-01-31 02:20:06','2026-01-31 05:32:02'),(11,'PRE-20260131-0063','{\"first_name\":\"Nami\",\"middle_name\":null,\"last_name\":\"Swan\",\"extension\":null,\"birthdate\":\"1927-08-02\",\"gender_id\":2,\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null,\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}',43,'converted',NULL,NULL,1,'2026-01-31 05:57:43',NULL,NULL,105,'2026-01-31 05:56:57','2026-01-31 05:58:13'),(12,'PRE-20260131-6230','{\"first_name\":\"Franky\",\"middle_name\":null,\"last_name\":\"Superr\",\"extension\":null,\"birthdate\":\"1924-05-23\",\"gender_id\":1,\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null,\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}',1,'converted',NULL,NULL,1,'2026-01-31 05:59:17',NULL,NULL,106,'2026-01-31 05:59:03','2026-01-31 05:59:22'),(13,'PRE-20260131-3028','{\"first_name\":\"Chopper\",\"middle_name\":null,\"last_name\":\"Cutie\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":1,\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null,\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}',1,'main_review',NULL,NULL,1,'2026-01-31 06:04:47',NULL,NULL,NULL,'2026-01-31 06:01:08','2026-01-31 06:04:47'),(14,'PRE-20260131-0214','{\"first_name\":\"Berlin\",\"middle_name\":null,\"last_name\":\"china\",\"extension\":null,\"birthdate\":\"1935-05-05\",\"gender_id\":2,\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null,\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}',2,'pending',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-01-31 06:28:43','2026-01-31 06:28:43'),(15,'PRE-20260131-7091','{\"first_name\":\"Masters\",\"middle_name\":null,\"last_name\":\"Shanghai\",\"extension\":null,\"birthdate\":\"1932-05-02\",\"gender_id\":2,\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null,\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}',7,'converted',NULL,NULL,1,'2026-01-31 07:33:01',NULL,NULL,109,'2026-01-31 07:31:28','2026-01-31 07:33:06'),(16,'PRE-20260131-0330','{\"first_name\":\"Sore\",\"middle_name\":null,\"last_name\":\"Etac\",\"extension\":null,\"birthdate\":\"1957-05-02\",\"gender_id\":1,\"house_number\":null,\"street\":null,\"mobile_number\":null,\"telephone_number\":null,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null,\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}',63,'main_review',NULL,NULL,1,'2026-02-02 00:05:31',NULL,NULL,NULL,'2026-01-31 08:25:21','2026-02-02 00:05:31');
/*!40000 ALTER TABLE `pre_registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_statuses`
--

DROP TABLE IF EXISTS `registration_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `color_code` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_statuses`
--

LOCK TABLES `registration_statuses` WRITE;
/*!40000 ALTER TABLE `registration_statuses` DISABLE KEYS */;
INSERT INTO `registration_statuses` VALUES (1,'Pending','Application pending review','#FFA500'),(2,'Approved','Application approved','#4CAF50'),(3,'Rejected','Application rejected','#F44336'),(4,'For Verification','Needs verification','#2196F3'),(5,'For Printing','Ready for ID printing','#9C27B0'),(6,'Completed','Process completed','#4CAF50');
/*!40000 ALTER TABLE `registration_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `senior_accounts`
--

DROP TABLE IF EXISTS `senior_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `senior_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `senior_id` bigint unsigned NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_code` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `last_login` timestamp NULL DEFAULT NULL,
  `failed_attempts` int NOT NULL DEFAULT '0',
  `locked_until` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `senior_accounts_senior_id_unique` (`senior_id`),
  KEY `senior_accounts_phone_number_index` (`phone_number`),
  KEY `senior_accounts_senior_id_index` (`senior_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senior_accounts`
--

LOCK TABLES `senior_accounts` WRITE;
/*!40000 ALTER TABLE `senior_accounts` DISABLE KEYS */;
INSERT INTO `senior_accounts` VALUES (1,42,'09564510535','$2y$12$J2CJoS8Kq68gmYsCmE8w7uEYLGSYBbK89EiD7yKRKO83cLSh.0aq.',NULL,NULL,1,'2026-02-01 12:55:19',0,NULL,'2026-01-29 22:14:30','2026-02-01 12:55:19'),(4,49,'09661572185',NULL,'878039','2026-02-01 06:34:58',0,NULL,1,NULL,'2026-01-30 23:29:02','2026-02-01 06:24:58');
/*!40000 ALTER TABLE `senior_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `senior_citizens`
--

DROP TABLE IF EXISTS `senior_citizens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `senior_citizens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `osca_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `middle_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `extension` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthdate` date NOT NULL,
  `gender_id` int NOT NULL,
  `contact_id` int DEFAULT NULL,
  `educational_attainment_id` int DEFAULT NULL,
  `monthly_salary` decimal(10,2) DEFAULT '0.00',
  `occupation` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_skills` text COLLATE utf8mb4_general_ci,
  `socioeconomic_status_id` int DEFAULT NULL,
  `mobility_level_id` int DEFAULT NULL,
  `barangay_id` int NOT NULL,
  `branch_id` int DEFAULT NULL,
  `registration_date` date NOT NULL,
  `registration_status_id` int NOT NULL,
  `registered_by` int DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `thumbmark_verified` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `is_deceased` tinyint(1) DEFAULT '0',
  `deceased_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qr_code_path` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `osca_id` (`osca_id`),
  KEY `gender_id` (`gender_id`),
  KEY `contact_id` (`contact_id`),
  KEY `educational_attainment_id` (`educational_attainment_id`),
  KEY `socioeconomic_status_id` (`socioeconomic_status_id`),
  KEY `mobility_level_id` (`mobility_level_id`),
  KEY `registered_by` (`registered_by`),
  KEY `idx_osca_id` (`osca_id`),
  KEY `idx_barangay` (`barangay_id`),
  KEY `idx_branch` (`branch_id`),
  KEY `idx_status` (`registration_status_id`),
  KEY `idx_name` (`last_name`,`first_name`),
  KEY `idx_senior_barangay_status` (`barangay_id`,`registration_status_id`),
  KEY `idx_senior_branch_status` (`branch_id`,`registration_status_id`),
  KEY `idx_senior_lookup` (`id`,`barangay_id`,`registration_status_id`),
  CONSTRAINT `senior_citizens_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`),
  CONSTRAINT `senior_citizens_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`),
  CONSTRAINT `senior_citizens_ibfk_3` FOREIGN KEY (`educational_attainment_id`) REFERENCES `educational_attainment` (`id`),
  CONSTRAINT `senior_citizens_ibfk_4` FOREIGN KEY (`socioeconomic_status_id`) REFERENCES `socioeconomic_statuses` (`id`),
  CONSTRAINT `senior_citizens_ibfk_5` FOREIGN KEY (`mobility_level_id`) REFERENCES `mobility_levels` (`id`),
  CONSTRAINT `senior_citizens_ibfk_6` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`),
  CONSTRAINT `senior_citizens_ibfk_7` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  CONSTRAINT `senior_citizens_ibfk_8` FOREIGN KEY (`registration_status_id`) REFERENCES `registration_statuses` (`id`),
  CONSTRAINT `senior_citizens_ibfk_9` FOREIGN KEY (`registered_by`) REFERENCES `admin_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senior_citizens`
--

LOCK TABLES `senior_citizens` WRITE;
/*!40000 ALTER TABLE `senior_citizens` DISABLE KEYS */;
INSERT INTO `senior_citizens` VALUES (39,'ZC-2026-001003','Seven',NULL,'terty five',NULL,'1945-05-02',2,82,NULL,0.00,NULL,NULL,NULL,NULL,5,2,'2026-01-29',2,1,NULL,0,1,0,NULL,'2026-01-29 15:51:38','2026-01-29 15:51:38',NULL),(40,'ZC-2026-001004','Seven',NULL,'Fifty two',NULL,'1945-05-02',1,83,NULL,0.00,NULL,NULL,NULL,NULL,5,2,'2026-01-29',2,1,NULL,0,1,0,NULL,'2026-01-29 15:54:59','2026-01-29 15:54:59',NULL),(42,'ZC-2026-001006','Asanul',NULL,'Asanul',NULL,'1945-05-02',1,85,NULL,0.00,NULL,NULL,NULL,NULL,1,2,'2026-01-30',2,1,NULL,0,1,0,NULL,'2026-01-29 22:11:12','2026-01-29 22:11:12',NULL),(44,'ZC-2026-001008','FO',NULL,'Regis',NULL,'1932-05-02',1,87,NULL,0.00,NULL,NULL,NULL,NULL,1,2,'2026-01-30',2,8,NULL,0,1,0,NULL,'2026-01-29 23:08:09','2026-01-29 23:08:09',NULL),(45,'ZC-2026-001009','FO New',NULL,'Regis',NULL,'1923-05-02',2,88,NULL,0.00,NULL,NULL,NULL,NULL,1,2,'2026-01-30',2,1,NULL,0,1,0,NULL,'2026-01-29 23:36:52','2026-01-29 23:36:52',NULL),(46,'ZC-2026-001010','Deployed',NULL,'Regis',NULL,'1942-05-02',2,89,NULL,0.00,NULL,NULL,NULL,NULL,1,2,'2026-01-30',2,1,NULL,0,1,0,NULL,'2026-01-30 21:47:32','2026-01-30 21:47:32',NULL),(47,'ZC-2026-001011','Loniel',NULL,'Gapol',NULL,'1945-05-02',1,90,NULL,0.00,NULL,NULL,NULL,NULL,2,2,'2026-01-30',2,1,NULL,0,1,0,NULL,'2026-01-30 22:45:28','2026-01-30 22:45:28',NULL),(48,'ZC-2026-001012','Onl',NULL,'Appli',NULL,'1945-05-03',1,91,NULL,0.00,NULL,NULL,NULL,NULL,1,2,'2026-01-30',2,1,NULL,0,1,0,NULL,'2026-01-30 23:09:36','2026-01-30 23:09:36',NULL),(49,'ZC-2026-001013','Conv',NULL,'Appli',NULL,'1942-05-02',1,92,NULL,0.00,NULL,NULL,NULL,NULL,1,2,'2026-01-30',2,1,NULL,0,1,0,NULL,'2026-01-30 23:12:49','2026-01-30 23:12:49',NULL),(50,'ZC-2026-001014','Rafat',NULL,'asanul',NULL,'1945-05-02',1,93,NULL,0.00,NULL,NULL,NULL,NULL,10,2,'2026-01-31',2,1,NULL,0,1,0,NULL,'2026-01-31 05:39:03','2026-01-31 05:39:03',NULL),(51,'ZC-2026-001015','Ash',NULL,'Ketchup',NULL,'1945-05-02',1,94,NULL,0.00,NULL,NULL,NULL,NULL,14,2,'2026-01-31',2,1,NULL,0,1,0,NULL,'2026-01-31 07:30:23','2026-01-31 07:30:23',NULL),(52,'ZC-2026-001016','Fuego',NULL,'Toma',NULL,'1945-05-02',1,95,NULL,0.00,NULL,NULL,NULL,NULL,3,2,'2026-01-31',2,1,NULL,0,1,0,NULL,'2026-01-31 07:49:08','2026-01-31 07:49:08',NULL),(53,'ZC-2026-001017','Vaniel',NULL,'Cornelio',NULL,'1959-03-29',1,96,NULL,0.00,NULL,NULL,NULL,NULL,26,3,'2026-01-31',2,1,NULL,0,1,0,NULL,'2026-01-31 08:30:24','2026-01-31 08:30:24',NULL),(54,'ZC-2026-001018','John',NULL,'Dave',NULL,'1934-05-20',1,97,NULL,0.00,NULL,NULL,NULL,NULL,26,5,'2026-02-01',2,1,NULL,0,1,0,NULL,'2026-02-01 07:16:03','2026-02-01 07:16:03',NULL),(55,'ZC-2026-001019','Fo One',NULL,'Person',NULL,'1960-04-17',2,98,NULL,0.00,NULL,NULL,NULL,NULL,6,6,'2026-02-01',2,1,NULL,0,1,0,NULL,'2026-02-01 07:18:21','2026-02-01 07:18:21',NULL);
/*!40000 ALTER TABLE `senior_citizens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `senior_eligible_benefits`
--

DROP TABLE IF EXISTS `senior_eligible_benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `senior_eligible_benefits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `senior_id` int NOT NULL,
  `benefit_id` int NOT NULL,
  `eligible_from` date NOT NULL,
  `eligible_until` date DEFAULT NULL COMMENT 'Null = no expiry',
  `assigned_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_senior_benefit` (`senior_id`,`benefit_id`),
  KEY `benefit_id` (`benefit_id`),
  KEY `idx_eligibility_dates` (`eligible_from`,`eligible_until`),
  CONSTRAINT `senior_eligible_benefits_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`) ON DELETE CASCADE,
  CONSTRAINT `senior_eligible_benefits_ibfk_2` FOREIGN KEY (`benefit_id`) REFERENCES `benefits` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senior_eligible_benefits`
--

LOCK TABLES `senior_eligible_benefits` WRITE;
/*!40000 ALTER TABLE `senior_eligible_benefits` DISABLE KEYS */;
INSERT INTO `senior_eligible_benefits` VALUES (1,1,1,'2025-12-17',NULL,'2025-12-17 05:46:29'),(2,1,2,'2025-12-17',NULL,'2025-12-17 05:46:29'),(3,1,3,'2025-12-17',NULL,'2025-12-17 05:46:29'),(4,1,4,'2025-12-17',NULL,'2025-12-17 05:46:29'),(5,1,5,'2025-12-17',NULL,'2025-12-17 05:46:29'),(6,1,6,'2025-12-17',NULL,'2025-12-17 05:46:29'),(7,1,11,'2025-12-17',NULL,'2025-12-17 05:46:29'),(8,1,12,'2025-12-17',NULL,'2025-12-17 05:46:29'),(9,1,13,'2025-12-17',NULL,'2025-12-17 05:46:29'),(10,1,14,'2025-12-17',NULL,'2025-12-17 05:46:29'),(11,1,15,'2025-12-17',NULL,'2025-12-17 05:46:29'),(12,1,16,'2025-12-17',NULL,'2025-12-17 05:46:29'),(16,2,1,'2025-12-17',NULL,'2025-12-17 05:46:29'),(17,2,2,'2025-12-17',NULL,'2025-12-17 05:46:29'),(18,2,3,'2025-12-17',NULL,'2025-12-17 05:46:29'),(19,2,4,'2025-12-17',NULL,'2025-12-17 05:46:29'),(20,2,5,'2025-12-17',NULL,'2025-12-17 05:46:29'),(21,2,6,'2025-12-17',NULL,'2025-12-17 05:46:29'),(22,2,11,'2025-12-17',NULL,'2025-12-17 05:46:29'),(23,2,12,'2025-12-17',NULL,'2025-12-17 05:46:29'),(24,2,13,'2025-12-17',NULL,'2025-12-17 05:46:29'),(25,2,14,'2025-12-17',NULL,'2025-12-17 05:46:29'),(26,2,15,'2025-12-17',NULL,'2025-12-17 05:46:29'),(31,3,1,'2025-12-17',NULL,'2025-12-17 05:46:29'),(32,3,2,'2025-12-17',NULL,'2025-12-17 05:46:29'),(33,3,3,'2025-12-17',NULL,'2025-12-17 05:46:29'),(34,3,4,'2025-12-17',NULL,'2025-12-17 05:46:29'),(35,3,5,'2025-12-17',NULL,'2025-12-17 05:46:29'),(36,3,6,'2025-12-17',NULL,'2025-12-17 05:46:29'),(37,3,11,'2025-12-17',NULL,'2025-12-17 05:46:29'),(38,3,12,'2025-12-17',NULL,'2025-12-17 05:46:29'),(39,3,13,'2025-12-17',NULL,'2025-12-17 05:46:29'),(40,3,14,'2025-12-17',NULL,'2025-12-17 05:46:29'),(41,3,15,'2025-12-17',NULL,'2025-12-17 05:46:29'),(42,24,10,'2025-12-18','2026-12-18','2025-12-18 10:51:54'),(43,24,9,'2025-12-18','2026-12-18','2025-12-18 10:51:54'),(44,24,1,'2025-12-18','2026-12-18','2025-12-18 10:51:54'),(45,24,2,'2025-12-18','2026-12-18','2025-12-18 10:51:54'),(46,24,5,'2025-12-18','2026-12-18','2025-12-18 10:51:54'),(47,24,3,'2025-12-18','2026-12-18','2025-12-18 10:51:54'),(48,24,4,'2025-12-18','2026-12-18','2025-12-18 10:51:54'),(49,25,10,'2025-12-18','2026-12-18','2025-12-18 10:52:20'),(50,25,9,'2025-12-18','2026-12-18','2025-12-18 10:52:20'),(51,25,1,'2025-12-18','2026-12-18','2025-12-18 10:52:20'),(52,25,2,'2025-12-18','2026-12-18','2025-12-18 10:52:20'),(53,25,5,'2025-12-18','2026-12-18','2025-12-18 10:52:20'),(54,25,3,'2025-12-18','2026-12-18','2025-12-18 10:52:20'),(55,25,4,'2025-12-18','2026-12-18','2025-12-18 10:52:20'),(56,26,1,'2025-12-18','2026-12-18','2025-12-18 11:08:17'),(57,26,2,'2025-12-18','2026-12-18','2025-12-18 11:08:17'),(58,26,3,'2025-12-18','2026-12-18','2025-12-18 11:08:17'),(59,26,4,'2025-12-18','2026-12-18','2025-12-18 11:08:17'),(60,26,5,'2025-12-18','2026-12-18','2025-12-18 11:08:17'),(61,26,9,'2025-12-18','2026-12-18','2025-12-18 11:08:17'),(62,26,10,'2025-12-18','2026-12-18','2025-12-18 11:08:17'),(63,27,1,'2025-12-18','2026-12-18','2025-12-18 11:16:53'),(64,27,2,'2025-12-18','2026-12-18','2025-12-18 11:16:53'),(65,27,3,'2025-12-18','2026-12-18','2025-12-18 11:16:53'),(66,27,4,'2025-12-18','2026-12-18','2025-12-18 11:16:53'),(67,27,5,'2025-12-18','2026-12-18','2025-12-18 11:16:53'),(68,27,9,'2025-12-18','2026-12-18','2025-12-18 11:16:53'),(69,27,10,'2025-12-18','2026-12-18','2025-12-18 11:16:53'),(70,28,1,'2025-12-18','2026-12-18','2025-12-18 14:25:55'),(71,28,2,'2025-12-18','2026-12-18','2025-12-18 14:25:55'),(72,28,3,'2025-12-18','2026-12-18','2025-12-18 14:25:55'),(73,28,4,'2025-12-18','2026-12-18','2025-12-18 14:25:55'),(74,28,5,'2025-12-18','2026-12-18','2025-12-18 14:25:55'),(75,28,9,'2025-12-18','2026-12-18','2025-12-18 14:25:55'),(76,28,10,'2025-12-18','2026-12-18','2025-12-18 14:25:55'),(77,29,1,'2025-12-18','2026-12-18','2025-12-18 15:48:17'),(78,29,2,'2025-12-18','2026-12-18','2025-12-18 15:48:17'),(79,29,3,'2025-12-18','2026-12-18','2025-12-18 15:48:17'),(80,29,4,'2025-12-18','2026-12-18','2025-12-18 15:48:17'),(81,29,5,'2025-12-18','2026-12-18','2025-12-18 15:48:17'),(82,29,9,'2025-12-18','2026-12-18','2025-12-18 15:48:17'),(83,29,10,'2025-12-18','2026-12-18','2025-12-18 15:48:17'),(84,30,1,'2025-12-18','2026-12-18','2025-12-18 15:50:53'),(85,30,2,'2025-12-18','2026-12-18','2025-12-18 15:50:53'),(86,30,3,'2025-12-18','2026-12-18','2025-12-18 15:50:53'),(87,30,4,'2025-12-18','2026-12-18','2025-12-18 15:50:53'),(88,30,5,'2025-12-18','2026-12-18','2025-12-18 15:50:53'),(89,30,9,'2025-12-18','2026-12-18','2025-12-18 15:50:53'),(90,30,10,'2025-12-18','2026-12-18','2025-12-18 15:50:53'),(91,31,1,'2025-12-18','2026-12-18','2025-12-18 15:59:58'),(92,31,2,'2025-12-18','2026-12-18','2025-12-18 15:59:58'),(93,31,3,'2025-12-18','2026-12-18','2025-12-18 15:59:58'),(94,31,4,'2025-12-18','2026-12-18','2025-12-18 15:59:58'),(95,31,5,'2025-12-18','2026-12-18','2025-12-18 15:59:58'),(96,31,9,'2025-12-18','2026-12-18','2025-12-18 15:59:58'),(97,31,10,'2025-12-18','2026-12-18','2025-12-18 15:59:58'),(98,32,1,'2025-12-19','2026-12-19','2025-12-18 16:50:45'),(99,32,2,'2025-12-19','2026-12-19','2025-12-18 16:50:45'),(100,32,3,'2025-12-19','2026-12-19','2025-12-18 16:50:45'),(101,32,4,'2025-12-19','2026-12-19','2025-12-18 16:50:45'),(102,32,5,'2025-12-19','2026-12-19','2025-12-18 16:50:45'),(103,32,9,'2025-12-19','2026-12-19','2025-12-18 16:50:45'),(104,32,10,'2025-12-19','2026-12-19','2025-12-18 16:50:45'),(105,33,1,'2025-12-19','2026-12-19','2025-12-18 20:19:25'),(106,33,2,'2025-12-19','2026-12-19','2025-12-18 20:19:25'),(107,33,3,'2025-12-19','2026-12-19','2025-12-18 20:19:25'),(108,33,4,'2025-12-19','2026-12-19','2025-12-18 20:19:25'),(109,33,5,'2025-12-19','2026-12-19','2025-12-18 20:19:25'),(110,33,9,'2025-12-19','2026-12-19','2025-12-18 20:19:25'),(111,33,10,'2025-12-19','2026-12-19','2025-12-18 20:19:25'),(112,34,1,'2025-12-19','2026-12-19','2025-12-18 20:57:09'),(113,34,2,'2025-12-19','2026-12-19','2025-12-18 20:57:09'),(114,34,3,'2025-12-19','2026-12-19','2025-12-18 20:57:09'),(115,34,4,'2025-12-19','2026-12-19','2025-12-18 20:57:09'),(116,34,5,'2025-12-19','2026-12-19','2025-12-18 20:57:09'),(117,34,9,'2025-12-19','2026-12-19','2025-12-18 20:57:09'),(118,34,10,'2025-12-19','2026-12-19','2025-12-18 20:57:09'),(119,35,1,'2025-12-19','2026-12-19','2025-12-18 21:22:04'),(120,35,2,'2025-12-19','2026-12-19','2025-12-18 21:22:04'),(121,35,3,'2025-12-19','2026-12-19','2025-12-18 21:22:04'),(122,35,4,'2025-12-19','2026-12-19','2025-12-18 21:22:04'),(123,35,5,'2025-12-19','2026-12-19','2025-12-18 21:22:04'),(124,35,9,'2025-12-19','2026-12-19','2025-12-18 21:22:04'),(125,35,10,'2025-12-19','2026-12-19','2025-12-18 21:22:04'),(126,36,1,'2025-12-19','2026-12-19','2025-12-19 01:55:33'),(127,36,2,'2025-12-19','2026-12-19','2025-12-19 01:55:33'),(128,36,3,'2025-12-19','2026-12-19','2025-12-19 01:55:33'),(129,36,4,'2025-12-19','2026-12-19','2025-12-19 01:55:33'),(130,36,5,'2025-12-19','2026-12-19','2025-12-19 01:55:33'),(131,36,7,'2025-12-19','2026-12-19','2025-12-19 01:55:33');
/*!40000 ALTER TABLE `senior_eligible_benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `senior_ids`
--

DROP TABLE IF EXISTS `senior_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `senior_ids` (
  `id` int NOT NULL AUTO_INCREMENT,
  `senior_id` int NOT NULL,
  `application_id` int DEFAULT NULL,
  `id_number` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `qr_code` text COLLATE utf8mb4_general_ci,
  `issue_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `status_id` int NOT NULL,
  `printed_by` int DEFAULT NULL,
  `print_date` timestamp NULL DEFAULT NULL,
  `released_by` int DEFAULT NULL,
  `release_date` timestamp NULL DEFAULT NULL,
  `notes` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_number` (`id_number`),
  KEY `application_id` (`application_id`),
  KEY `status_id` (`status_id`),
  KEY `printed_by` (`printed_by`),
  KEY `released_by` (`released_by`),
  KEY `idx_id_number` (`id_number`),
  KEY `idx_senior` (`senior_id`),
  KEY `idx_senior_id_lookup` (`senior_id`,`issue_date`,`status_id`),
  CONSTRAINT `senior_ids_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`),
  CONSTRAINT `senior_ids_ibfk_2` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`),
  CONSTRAINT `senior_ids_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `id_statuses` (`id`),
  CONSTRAINT `senior_ids_ibfk_4` FOREIGN KEY (`printed_by`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `senior_ids_ibfk_5` FOREIGN KEY (`released_by`) REFERENCES `admin_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senior_ids`
--

LOCK TABLES `senior_ids` WRITE;
/*!40000 ALTER TABLE `senior_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `senior_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `senior_target_sectors`
--

DROP TABLE IF EXISTS `senior_target_sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `senior_target_sectors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `senior_id` int NOT NULL,
  `sector_id` int NOT NULL,
  `other_specification` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `enrollment_date` date NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_senior_sector` (`senior_id`,`sector_id`),
  KEY `sector_id` (`sector_id`),
  KEY `idx_sector_senior_active` (`senior_id`,`is_active`,`sector_id`),
  CONSTRAINT `senior_target_sectors_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`) ON DELETE CASCADE,
  CONSTRAINT `senior_target_sectors_ibfk_2` FOREIGN KEY (`sector_id`) REFERENCES `target_sectors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senior_target_sectors`
--

LOCK TABLES `senior_target_sectors` WRITE;
/*!40000 ALTER TABLE `senior_target_sectors` DISABLE KEYS */;
/*!40000 ALTER TABLE `senior_target_sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('8xePwftB5T0NmUIX5ocoKGTmOCwkksj6DLioL3dG',NULL,'100.64.0.9','vercel-screenshot/1.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiazN3VDFaTTNOUDJwakd5djljcnFwcWx1WEtTUEUwT3c2SkV1Ujc4VCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9zY2lzLnVwLnJhaWx3YXkuYXBwIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1769818827),('AwZpC7Rl4LtbSuBUL5K0Fv1XR9t8FQHtYnuam0fu',NULL,'100.64.0.13','vercel-screenshot/1.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1I4SGE5cER1cVZpYktQNEdwNXBMNUhJN2pFNEtveVo5WVl6VnM3VCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9zY2lzLnVwLnJhaWx3YXkuYXBwIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1769922557),('F8XzcZahovVhuUxbHlrDhVjqa1cOIB5GMQrPn7Un',NULL,'100.64.0.10','vercel-screenshot/1.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGtyQ2l6aTczVGhiSDlmNVpZWmpiekF0a05qQUhjbHhKbkN1YndZaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9zY2lzLnVwLnJhaWx3YXkuYXBwIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1770022865),('hUTGmvVgADPPlzZWF2mkqKmPJnWezjzyZzxEp2xQ',NULL,'100.64.0.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiazQ0NWx2YXRyVTlUZkhzOElWd090WER3TGhTZ0NVVk5mWE1QQ3VNMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9zY2lzLnVwLnJhaWx3YXkuYXBwIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1769807858),('l1PE9wsUIbJ8uGv4btymP1ho3puvWllGy75vMTBO',NULL,'100.64.0.11','vercel-screenshot/1.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoicm9JckpSY2lFcnZPV29aTm5QQjRMVlUwbmpmaDdhWUx0NGhablNjTSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9zY2lzLnVwLnJhaWx3YXkuYXBwIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1770022865),('qI73S5XRPCyMJxQzBwZknpdNZ0hsOXo7j4kFsvqS',NULL,'100.64.0.9','vercel-screenshot/1.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGVJMWFxY2NIV2l2c204U3RJWEFVRjVJV1MxTWFkZWpoMXBRS1dBdiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9zY2lzLnVwLnJhaWx3YXkuYXBwIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1769818827),('vC8vU8wjM93K0ISHpkpqHRJrP46iRN6TugPRgOIf',NULL,'100.64.0.11','vercel-screenshot/1.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoialJZeTZjNUh1bk5MT2dqc0ptOHJDMUIyeUxoa1VWWjluVjZ3OTAwOSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9zY2lzLnVwLnJhaWx3YXkuYXBwIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1769922557);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socioeconomic_statuses`
--

DROP TABLE IF EXISTS `socioeconomic_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socioeconomic_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `income_range` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socioeconomic_statuses`
--

LOCK TABLES `socioeconomic_statuses` WRITE;
/*!40000 ALTER TABLE `socioeconomic_statuses` DISABLE KEYS */;
INSERT INTO `socioeconomic_statuses` VALUES (1,'Low Income','Low income household','Below ?10,000/month'),(2,'Middle Income','Middle income household','?10,000 - ?50,000/month'),(3,'High Income','High income household','Above ?50,000/month'),(4,'No Income','No regular income','N/A');
/*!40000 ALTER TABLE `socioeconomic_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target_sectors`
--

DROP TABLE IF EXISTS `target_sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_sectors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `benefits` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_sectors`
--

LOCK TABLES `target_sectors` WRITE;
/*!40000 ALTER TABLE `target_sectors` DISABLE KEYS */;
INSERT INTO `target_sectors` VALUES (1,'PNGNA','PNGNA','Member of national senior citizens organization',NULL),(2,'WEPC','WEPC','Female senior citizens in empowerment programs',NULL),(3,'PWD','PWD','Senior with recognized disability',NULL),(4,'YNSP','YNSP','Special care program',NULL),(5,'PASP','PASP','Hope and support program members',NULL),(6,'KIA/WIA','KIA/WIA','Killed in Action/Wounded in Action',NULL),(7,'SOLO-PARENT','Solo Parents','Senior citizen raising children alone',NULL),(8,'IP','Indigenous Person','Member of indigenous community',NULL),(9,'RPUD','Recovering Person','Recovering from substance use',NULL),(10,'4PS','4P\'s DSWD Beneficiary','Pantawid Pamilyang Pilipino Program beneficiary',NULL),(11,'STREET','Street Dwellers','Homeless or street dwelling',NULL),(12,'PSYCHO','Psychosocial Disability','Mental or learning disability',NULL),(13,'STATELESS','Stateless Person','Stateless or asylum seeker',NULL);
/*!40000 ALTER TABLE `target_sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_permissions`
--

DROP TABLE IF EXISTS `user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `can_view` tinyint(1) DEFAULT '0',
  `can_create` tinyint(1) DEFAULT '0',
  `can_edit` tinyint(1) DEFAULT '0',
  `can_delete` tinyint(1) DEFAULT '0',
  `can_export` tinyint(1) DEFAULT '0',
  `can_print` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_role_module` (`role_id`,`module`),
  CONSTRAINT `user_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_permissions`
--

LOCK TABLES `user_permissions` WRITE;
/*!40000 ALTER TABLE `user_permissions` DISABLE KEYS */;
INSERT INTO `user_permissions` VALUES (1,1,'dashboard',1,1,1,1,1,1),(2,1,'registration',1,1,1,1,1,1),(3,1,'senior_citizens',1,1,1,1,1,1),(4,1,'applications',1,1,1,1,1,1),(5,1,'complaints',1,1,1,1,1,1),(6,1,'id_printing',1,1,1,1,1,1),(7,1,'announcements',1,1,1,1,1,0),(8,1,'accounts',1,1,1,1,1,0),(9,1,'archives',1,1,1,1,1,1),(10,1,'reports',1,1,1,1,1,1),(11,1,'heatmap',1,1,1,1,1,1),(12,2,'dashboard',1,0,0,0,1,0),(13,2,'registration',1,1,1,0,1,1),(14,2,'senior_citizens',1,1,1,0,1,1),(15,2,'applications',1,1,1,0,1,1),(16,2,'complaints',1,1,1,0,1,1),(17,2,'id_printing',1,0,0,0,0,1),(18,2,'announcements',1,1,1,0,1,0),(19,2,'accounts',1,0,0,0,0,0),(20,2,'archives',1,0,0,0,1,0),(21,2,'reports',1,1,0,0,1,1),(22,2,'heatmap',1,0,0,0,0,0),(23,3,'dashboard',1,0,0,0,1,0),(24,3,'registration',1,1,1,0,1,0),(25,3,'senior_citizens',1,1,1,0,1,0),(26,3,'applications',1,1,0,0,1,0),(27,3,'complaints',1,1,0,0,1,0),(28,3,'id_printing',0,0,0,0,0,0),(29,3,'announcements',1,0,0,0,0,0),(30,3,'accounts',0,0,0,0,0,0),(31,3,'archives',1,0,0,0,1,0),(32,3,'reports',1,0,0,0,1,0),(33,3,'heatmap',0,0,0,0,0,0);
/*!40000 ALTER TABLE `user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `level` int NOT NULL COMMENT '1=Main Admin, 2=Branch Admin, 3=Barangay Admin',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'Main Admin','Full system access - can manage all branches and barangays',1),(2,'Branch Admin','Access to assigned branch and its barangays',2),(3,'Barangay Admin','Access to specific barangay only',3);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'railway'
--

--
-- Final view structure for view `archives_expanded`
--

/*!50001 DROP VIEW IF EXISTS `archives_expanded`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `archives_expanded` AS select `a`.`id` AS `id`,`a`.`archive_type` AS `archive_type`,`a`.`reference_id` AS `reference_id`,`a`.`archive_data` AS `archive_data`,`a`.`archive_reason` AS `archive_reason`,`a`.`archive_notes` AS `archive_notes`,`a`.`original_created_at` AS `original_created_at`,`a`.`original_updated_at` AS `original_updated_at`,`a`.`deceased_date` AS `deceased_date`,`a`.`archived_by` AS `archived_by`,concat(`au`.`first_name`,' ',`au`.`last_name`) AS `archived_by_name`,`a`.`archived_at` AS `archived_at`,json_unquote(json_extract(`a`.`archive_data`,'$.osca_id')) AS `osca_id`,json_unquote(json_extract(`a`.`archive_data`,'$.first_name')) AS `first_name`,json_unquote(json_extract(`a`.`archive_data`,'$.last_name')) AS `last_name`,json_unquote(json_extract(`a`.`archive_data`,'$.username')) AS `username`,json_unquote(json_extract(`a`.`archive_data`,'$.employee_id')) AS `employee_id` from (`archives` `a` left join `admin_users` `au` on((`a`.`archived_by` = `au`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-02 20:11:09
