CREATE TABLE `player_furniture_item_wired_parameters` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `value` int(11) unsigned NOT NULL,
    `player_furniture_item_wired_data_id` bigint(20) unsigned NOT NULL,
    PRIMARY KEY (`id`),
    KEY `pfiwp_pfiwd_id_foreign` (`player_furniture_item_wired_data_id`),
    CONSTRAINT `pfiwp_pfiwd_id_foreign` FOREIGN KEY (
        `player_furniture_item_wired_data_id`
    ) REFERENCES `player_furniture_item_wired_data` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
