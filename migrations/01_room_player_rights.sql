CREATE TABLE `room_player_rights` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `room_id` bigint(20) unsigned NOT NULL,
    `player_id` bigint(20) unsigned NOT NULL,
    `created_at` TIMESTAMP NOT NULL,
    PRIMARY KEY (`id`),
    KEY `room_player_rights_player_id_foreign` (`player_id`),
    KEY `room_player_rights_room_id_foreign` (`room_id`),
    CONSTRAINT `room_player_rights_player_id_foreign` FOREIGN KEY (
        `player_id`
    ) REFERENCES `players` (`id`),
    CONSTRAINT `room_player_rights_room_id_foreign` FOREIGN KEY (
        `room_id`
    ) REFERENCES `rooms` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
