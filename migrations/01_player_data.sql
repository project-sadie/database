CREATE TABLE `player_data` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `player_id` bigint(20) unsigned NOT NULL,
    `home_room_id` bigint(20) unsigned NULL,
    `credit_balance` bigint(20) NOT NULL,
    `pixel_balance` bigint(20) NOT NULL,
    `seasonal_balance` bigint(20) NOT NULL,
    `gotw_points` bigint(20) NOT NULL,
    `respect_points` bigint(20) NOT NULL DEFAULT 0,
    `respect_points_pet` bigint(20) NOT NULL DEFAULT 0,
    `achievement_score` bigint(20) NOT NULL DEFAULT 0,
    `allow_friend_requests` tinyint(1) NOT NULL DEFAULT 1,
    `is_online` tinyint(1) NOT NULL DEFAULT 0,
    `last_online` TIMESTAMP NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `player_data_player_id_foreign` (`player_id`),
    CONSTRAINT `player_data_player_id_foreign` FOREIGN KEY (
        `player_id`
    ) REFERENCES `players` (`id`),
    KEY `player_data_home_room_id_foreign` (`home_room_id`),
    CONSTRAINT `player_data_home_room_id_foreign` FOREIGN KEY (
        `home_room_id`
    ) REFERENCES `rooms` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
