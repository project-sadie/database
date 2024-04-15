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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'2019_12_14_000001_create_personal_access_tokens_table',1),
(2,'2022_01_03_122614_create_roles_table',1),
(3,'2022_01_28_123233_create_room_layouts_table',1),
(4,'2022_01_28_225355_create_players_table',1),
(5,'2022_01_28_225521_create_player_data_table',1),
(6,'2022_02_06_141128_create_player_respects_table',1),
(7,'2022_02_06_170916_create_player_game_sanction_levels_table',1),
(8,'2022_02_06_180201_create_player_game_sanctions_table',1),
(9,'2022_02_06_191533_create_room_categories_table',1),
(10,'2022_02_07_001718_create_player_navigator_settings_table',1),
(11,'2022_02_07_135841_create_player_friendships_table',1),
(12,'2022_02_09_164239_create_player_saved_searches_table',1),
(13,'2022_02_09_171814_create_player_game_settings_table',1),
(14,'2022_03_13_111811_create_rooms_table',1),
(15,'2022_03_13_174651_create_room_settings_table',1),
(16,'2022_03_26_114044_create_room_tags_table',1),
(17,'2022_03_26_182738_create_player_tags_table',1),
(18,'2022_03_29_211658_create_player_website_data_table',1),
(19,'2022_04_02_133121_create_website_registration_codes_table',1),
(20,'2022_04_02_155736_create_navigator_tabs_table',1),
(21,'2022_04_02_155922_create_navigator_categories_table',1),
(22,'2022_04_03_121720_create_player_avatar_data_table',1),
(23,'2022_04_03_124610_create_permissions_table',1),
(24,'2022_04_05_103055_create_badges_table',1),
(25,'2022_04_05_103159_create_player_badges_table',1),
(26,'2022_04_13_161240_create_subscriptions_table',1),
(27,'2022_04_13_161529_create_player_subscriptions_table',1),
(28,'2022_04_14_021941_create_room_chat_messages_table',1),
(29,'2022_04_14_232907_create_player_messages_table',1),
(30,'2022_04_15_150241_create_player_room_visits_table',1),
(31,'2022_04_16_005833_create_room_player_rights_table',1),
(32,'2022_04_21_229946_create_catalog_pages_table',1),
(33,'2022_04_22_225524_create_catalog_items_table',1),
(34,'2022_04_25_174506_create_furniture_items_table',1),
(35,'2022_04_28_130915_create_player_furniture_items_table',1),
(36,'2022_05_01_121042_create_room_furniture_items_table',1),
(37,'2024_03_17_162040_create_player_room_likes_table',1),
(38,'2024_03_22_163219_create_player_wardrobe_items_table',1),
(39,'2024_03_26_083239_create_player_relationship_types_table',1),
(40,'2024_03_26_084055_create_player_relationships_table',1),
(41,'2024_03_31_084448_create_catalog_club_offers_table',1),
(42,'2024_04_02_144537_create_room_paint_settings_table',1),
(43,'2024_04_02_155200_create_catalog_front_page_items_table',1),
(44,'2024_04_05_130240_create_catalog_item_furniture_item_table',1),
(45,'2024_04_08_122723_create_player_role_table',1),
(46,'2024_04_08_123258_create_roles_permissions_table',1),
(47,'2024_04_12_163527_create_server_player_constants_table',1),
(48,'2024_04_12_163534_create_server_room_constants_table',1),
(49,'2024_04_12_183809_create_server_settings_table',1),
(50,'2024_04_13_171517_create_player_sso_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
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
