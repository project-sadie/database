CREATE TABLE `player_game_sanctions` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `player_id` bigint(20) unsigned NOT NULL,
    `reason` varchar(255) NOT NULL,
    `sanction_level` bigint(20) unsigned NOT NULL,
    `created_at` TIMESTAMP NULL DEFAULT NULL,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `player_game_sanctions_player_id_foreign` (`player_id`),
    KEY `player_game_sanctions_sanction_level_foreign` (`sanction_level`),
    CONSTRAINT `player_game_sanctions_player_id_foreign` FOREIGN KEY (
        `player_id`
    ) REFERENCES `players` (`id`),
    CONSTRAINT `player_game_sanctions_sanction_level_foreign` FOREIGN KEY (
        `sanction_level`
    ) REFERENCES `player_game_sanction_levels` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
