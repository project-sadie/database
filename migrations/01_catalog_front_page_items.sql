CREATE TABLE `catalog_front_page_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `catalog_page_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_front_page_items_catalog_page_id_foreign` (`catalog_page_id`),
  CONSTRAINT `catalog_front_page_items_catalog_page_id_foreign` FOREIGN KEY (`catalog_page_id`) REFERENCES `catalog_pages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
