CREATE TABLE `player_website_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) unsigned NOT NULL,
  `initial_ip` varchar(45) NOT NULL,
  `last_ip` varchar(45) NOT NULL,
  `last_login` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `player_website_data_player_id_foreign` (`player_id`),
  CONSTRAINT `player_website_data_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
