CREATE TABLE `player_room_visits` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `player_id` bigint(20) unsigned NOT NULL,
    `room_id` bigint(20) unsigned NOT NULL,
    `created_at` TIMESTAMP NOT NULL,
    PRIMARY KEY (`id`),
    KEY `player_room_visits_player_id_foreign` (`player_id`),
    KEY `player_room_visits_room_id_foreign` (`room_id`),
    CONSTRAINT `player_room_visits_player_id_foreign` FOREIGN KEY (
        `player_id`
    ) REFERENCES `players` (`id`),
    CONSTRAINT `player_room_visits_room_id_foreign` FOREIGN KEY (
        `room_id`
    ) REFERENCES `rooms` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
