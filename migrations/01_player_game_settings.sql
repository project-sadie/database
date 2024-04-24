CREATE TABLE `player_game_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) unsigned NOT NULL,
  `system_volume` int(11) NOT NULL,
  `furniture_volume` int(11) NOT NULL,
  `trax_volume` int(11) NOT NULL,
  `prefer_old_chat` tinyint(1) NOT NULL,
  `block_room_invites` tinyint(1) NOT NULL,
  `block_camera_follow` tinyint(1) NOT NULL,
  `ui_flags` int(11) NOT NULL,
  `show_notifications` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `player_game_settings_player_id_foreign` (`player_id`),
  CONSTRAINT `player_game_settings_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
