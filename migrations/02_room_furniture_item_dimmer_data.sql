CREATE TABLE `room_furniture_item_dimmer_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_furniture_item_id` bigint(20) unsigned NOT NULL,
  `preset_id` int(11) unsigned NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `background_only` tinyint(1) NOT NULL,
  `color` varchar(30) NOT NULL,
  `intensity` int(11) unsigned NOT NULL,
  KEY `room_furniture_item_dimmer_data_room_furniture_item_id_foreign` (`room_furniture_item_id`),
  CONSTRAINT `room_furniture_item_dimmer_data_room_furniture_item_id_foreign` FOREIGN KEY (`room_furniture_item_id`) REFERENCES `room_furniture_items` (`id`),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;