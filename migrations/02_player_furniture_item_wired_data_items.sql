CREATE TABLE `player_furniture_item_wired_data_items` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `player_furniture_item_placement_data_id` bigint(20) unsigned NOT NULL,
    `player_furniture_item_wired_data_id` bigint(20) unsigned NOT NULL,
    PRIMARY KEY (`id`),
    KEY `pfiwdi_p_furniture_item_placement_data_id_foreign` (
        `player_furniture_item_placement_data_id`
    ),
    KEY `pfiwdi_duo_index` (
        `player_furniture_item_wired_data_id`,
        `player_furniture_item_placement_data_id`
    ),
    CONSTRAINT `pfiwdi_p_furniture_item_placement_data_id_foreign`
    FOREIGN KEY (
        `player_furniture_item_placement_data_id`
    ) REFERENCES `player_furniture_item_placement_data` (`id`),
    CONSTRAINT `pfiwdi_player_furniture_item_wired_data_id_foreign`
    FOREIGN KEY (
        `player_furniture_item_wired_data_id`
    ) REFERENCES `player_furniture_item_wired_data` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
