CREATE TABLE `catalog_pages` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `caption` varchar(255) NOT NULL,
    `layout` varchar(255) NOT NULL,
    `role_id` int(11) DEFAULT NULL,
    `catalog_page_id` bigint(20) unsigned NULL,
    `order_id` int(11) NOT NULL,
    `icon_id` int(11) NOT NULL,
    `enabled` tinyint(1) NOT NULL,
    `visible` tinyint(1) NOT NULL,
    `images_json` json NOT NULL,
    `texts_json` json NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
