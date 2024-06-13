CREATE TABLE `room_dimmer_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `preset_id` bigint(20) unsigned NOT NULL,
  KEY `room_dimmer_settings_room_id_foreign` (`room_id`),
  CONSTRAINT `room_dimmer_settings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
