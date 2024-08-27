CREATE TABLE `player_tags` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `player_id` bigint(20) unsigned NOT NULL,
    `name` varchar(255) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `player_tags_player_id_foreign` (`player_id`),
    CONSTRAINT `player_tags_player_id_foreign` FOREIGN KEY (
        `player_id`
    ) REFERENCES `players` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
