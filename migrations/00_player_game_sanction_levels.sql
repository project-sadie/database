CREATE TABLE `player_game_sanction_levels` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `type` varchar(255) NOT NULL,
    `created_at` TIMESTAMP NULL DEFAULT NULL,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
