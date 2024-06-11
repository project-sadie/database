CREATE TABLE `room_furniture_item_teleport_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL,
  `child_id` bigint(20) unsigned NOT NULL,
  KEY `room_furniture_item_teleport_links_parent_id_foreign` (`parent_id`),
  CONSTRAINT `room_furniture_item_teleport_links_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `room_furniture_items` (`id`),
  KEY `room_furniture_item_teleport_links_child_id_foreign` (`child_id`),
  CONSTRAINT `room_furniture_item_teleport_links_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `room_furniture_items` (`id`),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;