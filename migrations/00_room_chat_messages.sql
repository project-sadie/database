CREATE TABLE `room_chat_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `player_id` bigint(20) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  `chat_bubble_id` int(11) NOT NULL,
  `emotion_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `room_chat_messages_room_id_foreign` (`room_id`),
  KEY `room_chat_messages_player_id_foreign` (`player_id`),
  CONSTRAINT `room_chat_messages_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`),
  CONSTRAINT `room_chat_messages_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
