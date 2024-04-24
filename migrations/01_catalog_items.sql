CREATE TABLE `catalog_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cost_credits` int(11) NOT NULL,
  `cost_points` int(11) NOT NULL,
  `cost_points_type` int(11) NOT NULL,
  `requires_club_membership` tinyint(1) NOT NULL,
  `meta_data` text NOT NULL,
  `catalog_page_id` bigint(20) unsigned NOT NULL,
  `amount` int(11) NOT NULL,
  `stack_limit` int(11) NOT NULL,
  `sell_limit` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_items_catalog_page_id_foreign` (`catalog_page_id`),
  CONSTRAINT `catalog_items_catalog_page_id_foreign` FOREIGN KEY (`catalog_page_id`) REFERENCES `catalog_pages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
