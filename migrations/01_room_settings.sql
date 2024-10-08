CREATE TABLE `room_settings` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `room_id` bigint(20) unsigned NOT NULL,
    `walk_diagonal` tinyint(1) NOT NULL DEFAULT 1,
    `access_type` tinyint(4) NOT NULL DEFAULT 0,
    `password` varchar(60) NOT NULL DEFAULT '',
    `who_can_mute` tinyint(4) NOT NULL DEFAULT 0,
    `who_can_kick` tinyint(4) NOT NULL DEFAULT 0,
    `who_can_ban` tinyint(4) NOT NULL DEFAULT 0,
    `allow_pets` tinyint(1) NOT NULL DEFAULT 1,
    `can_pets_eat` tinyint(1) NOT NULL DEFAULT 1,
    `hide_walls` tinyint(1) NOT NULL DEFAULT 0,
    `wall_thickness` tinyint(4) NOT NULL DEFAULT 0,
    `floor_thickness` tinyint(4) NOT NULL DEFAULT 0,
    `can_users_overlap` tinyint(1) NOT NULL DEFAULT 0,
    `trade_option` int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    UNIQUE KEY `room_settings_room_id_unique` (`room_id`),
    CONSTRAINT `room_settings_room_id_foreign` FOREIGN KEY (
        `room_id`
    ) REFERENCES `rooms` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
