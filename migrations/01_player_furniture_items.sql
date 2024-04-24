CREATE TABLE `player_furniture_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) unsigned NOT NULL,
  `furniture_item_id` bigint(20) unsigned NOT NULL,
  `limited_data` varchar(255) NOT NULL DEFAULT '',
  `meta_data` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `player_furniture_items_player_id_foreign` (`player_id`),
  KEY `player_furniture_items_furniture_item_id_foreign` (`furniture_item_id`),
  CONSTRAINT `player_furniture_items_furniture_item_id_foreign` FOREIGN KEY (`furniture_item_id`) REFERENCES `furniture_items` (`id`),
  CONSTRAINT `player_furniture_items_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
