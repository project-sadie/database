CREATE TABLE `player_avatar_data` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `player_id` bigint(20) unsigned NOT NULL,
    `figure_code` varchar(255) NOT NULL,
    `motto` varchar(255) NOT NULL,
    `gender` char(255) NOT NULL,
    `chat_bubble_id` int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    KEY `player_avatar_data_player_id_foreign` (`player_id`),
    CONSTRAINT `player_avatar_data_player_id_foreign` FOREIGN KEY (
        `player_id`
    ) REFERENCES `players` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
