CREATE TABLE `player_relationships` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `origin_player_id` bigint(20) unsigned NOT NULL,
    `target_player_id` bigint(20) unsigned NOT NULL,
    `type_id` bigint(20) unsigned NOT NULL,
    PRIMARY KEY (`id`),
    KEY `player_relationships_origin_player_id_foreign` (`origin_player_id`),
    KEY `player_relationships_target_player_id_foreign` (`target_player_id`),
    KEY `player_relationships_type_id_foreign` (`type_id`),
    CONSTRAINT `player_relationships_origin_player_id_foreign` FOREIGN KEY (
        `origin_player_id`
    ) REFERENCES `players` (`id`),
    CONSTRAINT `player_relationships_target_player_id_foreign` FOREIGN KEY (
        `target_player_id`
    ) REFERENCES `players` (`id`),
    CONSTRAINT `player_relationships_type_id_foreign` FOREIGN KEY (
        `type_id`
    ) REFERENCES `player_relationship_types` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
