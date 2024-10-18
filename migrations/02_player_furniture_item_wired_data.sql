CREATE TABLE `player_furniture_item_wired_data` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `player_furniture_item_placement_data_id` bigint(20) unsigned NOT NULL,
    `message` varchar(255) NULL,
    `delay` int(11) unsigned NOT NULL,
    PRIMARY KEY (`id`),
    KEY `pfiwd_p_furniture_item_placement_data_id_foreign`
    (`player_furniture_item_placement_data_id`),
    CONSTRAINT `pfiwd_p_furniture_item_placement_data_id_foreign` FOREIGN KEY (
        `player_furniture_item_placement_data_id`
    ) REFERENCES `player_furniture_item_placement_data` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
