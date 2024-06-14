CREATE TABLE `player_furniture_item_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL,
  `child_id` bigint(20) unsigned NOT NULL,
  KEY `player_furniture_item_links_parent_id_foreign` (`parent_id`),
  CONSTRAINT `player_furniture_item_links_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `player_furniture_items` (`id`),
  KEY `player_furniture_item_links_child_id_foreign` (`child_id`),
  CONSTRAINT `player_furniture_item_links_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `player_furniture_items` (`id`),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;