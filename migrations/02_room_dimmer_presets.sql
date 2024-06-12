
CREATE TABLE `room_dimmer_presets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `background_only` tinyint(1) NOT NULL,
  `color` varchar(30) NOT NULL,
  `intensity` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;