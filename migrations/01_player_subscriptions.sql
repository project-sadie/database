CREATE TABLE `player_subscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) unsigned NOT NULL,
  `subscription_id` bigint(20) unsigned NOT NULL,
  `expires_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `player_subscriptions_player_id_foreign` (`player_id`),
  KEY `player_subscriptions_subscription_id_foreign` (`subscription_id`),
  CONSTRAINT `player_subscriptions_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`),
  CONSTRAINT `player_subscriptions_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
