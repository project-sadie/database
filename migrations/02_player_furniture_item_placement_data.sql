CREATE TABLE `player_furniture_item_placement_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_furniture_item_id` bigint(20) unsigned NOT NULL,
  `room_id` bigint(20) unsigned NOT NULL,
  `position_x` int(11) NOT NULL DEFAULT 0,
  `position_y` int(11) NOT NULL DEFAULT 0,
  `position_z` double NOT NULL DEFAULT 0,
  `wall_position` varchar(255) DEFAULT NULL,
  `direction` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `player_furniture_item_placement_data_player_furniture_item_id_unique` (`player_furniture_item_id`),
  KEY `player_furniture_item_placement_data_player_furniture_item_id_foreign` (`player_furniture_item_id`),
  CONSTRAINT `player_furniture_item_placement_data_player_furniture_item_id_foreign` FOREIGN KEY (`player_furniture_item_id`) REFERENCES `player_furniture_items` (`id`)
  KEY `player_furniture_item_placement_data_room_id_foreign` (`player_furniture_item_id`),
  CONSTRAINT `player_furniture_item_placement_data_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;