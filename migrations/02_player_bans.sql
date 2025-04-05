CREATE TABLE `player_bans` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `creator_id` bigint(20) unsigned NOT NULL,
    `player_id` bigint(20) unsigned NOT NULL,
    `reason` varchar(255) NOT NULL,
    `created_at` TIMESTAMP NOT NULL,
    `expires_at` TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `player_bans_creator_id_foreign` (`creator_id`),
    KEY `player_bans_player_id_foreign` (`player_id`),
    CONSTRAINT `player_bans_creator_id_foreign` FOREIGN KEY (
        `creator_id`
    ) REFERENCES `players` (`id`),
    CONSTRAINT `player_bans_player_id_foreign` FOREIGN KEY (
        `player_id`
    ) REFERENCES `players` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
