CREATE TABLE `player_role` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `player_id` bigint(20) unsigned NOT NULL,
    `role_id` bigint(20) unsigned NOT NULL,
    `created_at` TIMESTAMP NOT NULL,
    PRIMARY KEY (`id`),
    KEY `player_role_role_id_foreign` (`role_id`),
    KEY `player_role_player_id_role_id_index` (`player_id`, `role_id`),
    CONSTRAINT `player_role_player_id_foreign` FOREIGN KEY (
        `player_id`
    ) REFERENCES `players` (`id`),
    CONSTRAINT `player_role_role_id_foreign` FOREIGN KEY (
        `role_id`
    ) REFERENCES `roles` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
