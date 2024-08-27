CREATE TABLE `catalog_club_offers` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `duration_days` int(11) NOT NULL,
    `cost_credits` int(11) NOT NULL,
    `cost_points` int(11) NOT NULL,
    `cost_points_type` int(11) NOT NULL,
    `is_vip` tinyint(1) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
