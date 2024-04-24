CREATE TABLE `rooms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `layout_id` bigint(20) unsigned NOT NULL,
  `owner_id` bigint(20) unsigned NOT NULL,
  `max_users_allowed` int(11) NOT NULL DEFAULT 50,
  `description` text DEFAULT NULL,
  `is_muted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rooms_layout_id_foreign` (`layout_id`),
  KEY `rooms_owner_id_foreign` (`owner_id`),
  CONSTRAINT `rooms_layout_id_foreign` FOREIGN KEY (`layout_id`) REFERENCES `room_layouts` (`id`),
  CONSTRAINT `rooms_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `players` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
