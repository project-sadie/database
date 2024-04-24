CREATE TABLE `player_badges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) unsigned NOT NULL,
  `badge_id` bigint(20) unsigned NOT NULL,
  `slot` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `player_badges_player_id_foreign` (`player_id`),
  KEY `player_badges_badge_id_foreign` (`badge_id`),
  CONSTRAINT `player_badges_badge_id_foreign` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`),
  CONSTRAINT `player_badges_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
