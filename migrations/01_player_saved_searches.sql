CREATE TABLE `player_saved_searches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `search` varchar(255) NOT NULL,
  `filter` varchar(255) NOT NULL,
  `player_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `player_saved_searches_player_id_foreign` (`player_id`),
  CONSTRAINT `player_saved_searches_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
