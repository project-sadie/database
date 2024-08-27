CREATE TABLE `player_friendships` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `origin_player_id` bigint(20) unsigned NOT NULL,
    `target_player_id` bigint(20) unsigned NOT NULL,
    `status` enum('1', '2', '3') NOT NULL DEFAULT '1',
    `created_at` TIMESTAMP NOT NULL,
    PRIMARY KEY (`id`),
    KEY `player_friendships_origin_player_id_foreign` (`origin_player_id`),
    KEY `player_friendships_target_player_id_foreign` (`target_player_id`),
    CONSTRAINT `player_friendships_origin_player_id_foreign` FOREIGN KEY (
        `origin_player_id`
    ) REFERENCES `players` (`id`),
    CONSTRAINT `player_friendships_target_player_id_foreign` FOREIGN KEY (
        `target_player_id`
    ) REFERENCES `players` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
