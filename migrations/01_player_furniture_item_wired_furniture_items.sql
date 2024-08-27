CREATE TABLE `player_furniture_item_wired_furniture_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  `wired_data_id` bigint(20) unsigned NOT NULL,
  `furniture_item_id` bigint(20) unsigned NOT NULL,
  KEY `pfiwfi_wired_data_id_foreign` (`wired_data_id`),
  CONSTRAINT `pfiwfi_wired_data_id_foreign` FOREIGN KEY (`wired_data_id`) REFERENCES `player_furniture_item_wired_data` (`id`),
  KEY `pfiwfi_furniture_item_id_foreign` (`furniture_item_id`),
  CONSTRAINT `pfiwfi_furniture_item_id_foreign` FOREIGN KEY (`furniture_item_id`) REFERENCES `player_furniture_items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;