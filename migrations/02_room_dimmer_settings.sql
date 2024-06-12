CREATE TABLE `room_dimmer_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `room_furniture_item_id` bigint(20) unsigned NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `preset_id` bigint(20) unsigned NOT NULL,
  KEY `room_dimmer_settings_room_id_foreign` (`room_id`),
  CONSTRAINT `room_dimmer_settings_room_id_foreign` FOREIGN KEY (`room_furniture_item_id`) REFERENCES `rooms` (`id`),
  KEY `room_dimmer_settings_room_furniture_item_id_foreign` (`room_furniture_item_id`),
  CONSTRAINT `room_dimmer_settings_room_furniture_item_id_foreign` FOREIGN KEY (`room_furniture_item_id`) REFERENCES `room_furniture_items` (`id`),
  KEY `room_dimmer_settings_preset_id_foreign` (`preset_id`),
  CONSTRAINT `room_dimmer_settings_preset_id_foreign` FOREIGN KEY (`preset_id`) REFERENCES `room_dimmer_presets` (`id`),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;