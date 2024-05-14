CREATE TABLE `furniture_item_hand_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `furniture_items_id` bigint(20) unsigned NOT NULL,
  `hand_items_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `furniture_item_hand_item_hand_item_id_foreign` (`hand_item_id`),
  KEY `furniture_item_hand_item_furniture_item_id_hand_item_id_index` (`furniture_item_id`,`hand_item_id`),
  CONSTRAINT `furniture_item_hand_item_furniture_item_id_foreign` FOREIGN KEY (`furniture_item_id`) REFERENCES `furniture_items` (`id`),
  CONSTRAINT `furniture_item_hand_item_hand_item_id_foreign` FOREIGN KEY (`hand_item_id`) REFERENCES `hand_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;