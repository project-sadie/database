CREATE TABLE `furniture_item_hand_item` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `furniture_items_id` bigint(20) unsigned NOT NULL,
    `hand_items_id` bigint(20) unsigned NOT NULL,
    PRIMARY KEY (`id`),
    KEY `furniture_item_hand_item_hand_items_id_foreign` (`hand_items_id`),
    KEY `furniture_item_hand_item_furniture_items_id_hand_items_id_index` (
        `furniture_items_id`, `hand_items_id`
    ),
    CONSTRAINT `furniture_item_hand_item_furniture_items_id_foreign` 
    FOREIGN KEY (
        `furniture_items_id`
    ) REFERENCES `furniture_items` (`id`),
    CONSTRAINT `furniture_item_hand_item_hand_items_id_foreign` 
    FOREIGN KEY (
        `hand_items_id`
    ) REFERENCES `hand_items` (`id`)
) ENGINE
= InnoDB AUTO_INCREMENT
= 310 DEFAULT CHARSET
= utf8mb4 COLLATE
= utf8mb4_unicode_ci;
