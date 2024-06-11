CREATE TABLE `catalog_pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `layout` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `catalog_page_id` bigint(20) NULL,
  `order_id` int(11) NOT NULL,
  `icon_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `images_json` JSON NOT NULL,
  `texts_json` JSON NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_pages_catalog_page_id_foreign` (`catalog_page_id`),
  CONSTRAINT `catalog_pages_catalog_page_id_foreign` FOREIGN KEY (`catalog_page_id`) REFERENCES `catalog_pages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

