CREATE TABLE `player_furniture_item_placement_data` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `player_furniture_item_id` bigint(20) unsigned NOT NULL,
    `room_id` bigint(20) unsigned NOT NULL,
    `position_x` int(11) NOT NULL DEFAULT 0,
    `position_y` int(11) NOT NULL DEFAULT 0,
    `position_z` double NOT NULL DEFAULT 0,
    `wall_position` varchar(255) DEFAULT NULL,
    `direction` int(11) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `pfipd_item_id_unique` (`player_furniture_item_id`),
    KEY `pfipd_item_id_foreign` (`player_furniture_item_id`),
    CONSTRAINT `pfipd_item_id_foreign` FOREIGN KEY (
        `player_furniture_item_id`
    ) REFERENCES `player_furniture_items` (`id`),
    KEY `pfipd_room_id_foreign` (`room_id`),
    CONSTRAINT `pfipd_room_id_foreign` FOREIGN KEY (
        `room_id`
    ) REFERENCES `rooms` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
