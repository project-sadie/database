CREATE TABLE `player_navigator_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) unsigned NOT NULL,
  `window_x` int(11) NOT NULL,
  `window_y` int(11) NOT NULL,
  `window_width` int(11) NOT NULL,
  `window_height` int(11) NOT NULL,
  `open_searches` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `player_navigator_settings_player_id_foreign` (`player_id`),
  CONSTRAINT `player_navigator_settings_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
