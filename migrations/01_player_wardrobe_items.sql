CREATE TABLE `player_wardrobe_items` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `player_id` bigint(20) unsigned NOT NULL,
    `slot_id` int(11) NOT NULL,
    `figure_code` varchar(255) NOT NULL,
    `gender` char(255) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `player_wardrobe_items_player_id_foreign` (`player_id`),
    CONSTRAINT `player_wardrobe_items_player_id_foreign` FOREIGN KEY (
        `player_id`
    ) REFERENCES `players` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
