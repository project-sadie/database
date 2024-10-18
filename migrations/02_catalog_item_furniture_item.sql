CREATE TABLE `catalog_item_furniture_item` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `catalog_items_id` bigint(20) unsigned NOT NULL,
    `furniture_items_id` bigint(20) unsigned NOT NULL,
    PRIMARY KEY (`id`),
    KEY `catalog_item_furniture_item_c_items_id_foreign` (
        `catalog_items_id`
    ),
    KEY `catalog_item_f_item_furniture_items_id_foreign` (
        `furniture_items_id`
    ),
    CONSTRAINT `catalog_item_furniture_item_c_items_id_foreign` FOREIGN KEY (
        `catalog_items_id`
    ) REFERENCES `catalog_items` (`id`),
    CONSTRAINT `catalog_item_f_item_furniture_items_id_foreign` FOREIGN KEY (
        `furniture_items_id`
    ) REFERENCES `furniture_items` (`id`)
) ENGINE
= InnoDB AUTO_INCREMENT
= 11029 DEFAULT CHARSET
= utf8mb4 COLLATE
= utf8mb4_unicode_ci;
