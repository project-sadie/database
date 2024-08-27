CREATE TABLE `player_bots` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `player_id` bigint(20) unsigned NOT NULL,
    `room_id` bigint(20) unsigned NULL,
    `username` varchar(255) NOT NULL,
    `figure_code` varchar(255) NOT NULL,
    `motto` varchar(255) NOT NULL,
    `gender` char(255) NOT NULL,
    `chat_bubble_id` int(11) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP NOT NULL,
    PRIMARY KEY (`id`),
    KEY `player_bots_room_id_foreign` (`room_id`),
    KEY `player_bots_player_id_room_id_index` (`player_id`, `room_id`),
    CONSTRAINT `player_bots_player_id_foreign` FOREIGN KEY (
        `player_id`
    ) REFERENCES `players` (`id`),
    CONSTRAINT `player_bots_room_id_foreign` FOREIGN KEY (
        `room_id`
    ) REFERENCES `rooms` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
