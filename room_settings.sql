-- MariaDB dump 10.19-11.3.2-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: sadie
-- ------------------------------------------------------
-- Server version	11.3.2-MariaDB

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
-- Table structure for table `room_settings`
--

DROP TABLE IF EXISTS `room_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `walk_diagonal` tinyint(1) NOT NULL DEFAULT 1,
  `access_type` tinyint(4) NOT NULL DEFAULT 0,
  `password` varchar(60) NOT NULL DEFAULT '',
  `who_can_mute` tinyint(4) NOT NULL DEFAULT 0,
  `who_can_kick` tinyint(4) NOT NULL DEFAULT 0,
  `who_can_ban` tinyint(4) NOT NULL DEFAULT 0,
  `allow_pets` tinyint(1) NOT NULL DEFAULT 1,
  `can_pets_eat` tinyint(1) NOT NULL DEFAULT 1,
  `hide_walls` tinyint(1) NOT NULL DEFAULT 0,
  `wall_thickness` tinyint(4) NOT NULL DEFAULT 0,
  `floor_thickness` tinyint(4) NOT NULL DEFAULT 0,
  `can_users_overlap` tinyint(1) NOT NULL DEFAULT 0,
  `chat_type` int(11) NOT NULL DEFAULT 0,
  `chat_weight` int(11) NOT NULL DEFAULT 1,
  `chat_speed` int(11) NOT NULL DEFAULT 1,
  `chat_distance` int(11) NOT NULL DEFAULT 50,
  `chat_protection` int(11) NOT NULL DEFAULT 1,
  `trade_option` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_settings_room_id_unique` (`room_id`),
  CONSTRAINT `room_settings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_settings`
--

LOCK TABLES `room_settings` WRITE;
/*!40000 ALTER TABLE `room_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-15 18:21:05
