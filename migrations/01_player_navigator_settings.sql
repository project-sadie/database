CREATE TABLE `player_navigator_settings` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `player_id` bigint(20) unsigned NOT NULL,
    `window_x` int(11) NOT NULL DEFAULT 50,
    `window_y` int(11) NOT NULL DEFAULT 50,
    `window_width` int(11) NOT NULL DEFAULT 435,
    `window_height` int(11) NOT NULL DEFAULT 535,
    `open_searches` tinyint(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    KEY `player_navigator_settings_player_id_foreign` (`player_id`),
    CONSTRAINT `player_navigator_settings_player_id_foreign` FOREIGN KEY (
        `player_id`
    ) REFERENCES `players` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
