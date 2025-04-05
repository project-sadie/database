CREATE TABLE `player_ignores` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `player_id` bigint(20) unsigned NOT NULL,
    `target_player_id` bigint(20) unsigned NOT NULL,
    PRIMARY KEY (`id`),
    KEY `player_ignores_origin_player_id_foreign` (`origin_player_id`),
    KEY `player_ignores_target_player_id_foreign` (`target_player_id`),
    CONSTRAINT `player_ignores_origin_player_id_foreign` FOREIGN KEY (
        `origin_player_id`
    ) REFERENCES `players` (`id`),
    CONSTRAINT `player_ignores_target_player_id_foreign` FOREIGN KEY (
        `target_player_id`
    ) REFERENCES `players` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
