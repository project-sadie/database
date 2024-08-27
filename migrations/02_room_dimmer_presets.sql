CREATE TABLE `room_dimmer_presets` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `room_id` bigint(20) unsigned NOT NULL,
    `preset_id` int(11) NOT NULL,
    `background_only` tinyint(1) NOT NULL,
    `color` varchar(30) NOT NULL,
    `intensity` int(11) unsigned NOT NULL,
    KEY `room_dimmer_presets_room_id_foreign` (`room_id`),
    CONSTRAINT `room_dimmer_presets_room_id_foreign` FOREIGN KEY (
        `room_id`
    ) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
