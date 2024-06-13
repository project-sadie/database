CREATE TABLE `room_paint_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `floor_paint` varchar(255) NOT NULL DEFAULT '0.0',
  `wall_paint` varchar(255) NOT NULL DEFAULT '0.0',
  `landscape_paint` varchar(255) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_paint_settings_room_id_unique` (`room_id`),
  CONSTRAINT `room_paint_settings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
