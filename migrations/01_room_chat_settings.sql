CREATE TABLE `room_chat_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `chat_type` int(11) NOT NULL DEFAULT 0,
  `chat_weight` int(11) NOT NULL DEFAULT 1,
  `chat_speed` int(11) NOT NULL DEFAULT 1,
  `chat_distance` int(11) NOT NULL DEFAULT 50,
  `chat_protection` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_chat_settings_room_id_unique` (`room_id`),
  CONSTRAINT `room_chat_settings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;