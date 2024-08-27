CREATE TABLE `server_periodic_currency_rewards` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `type` varchar(255) NOT NULL,
    `amount` int(11) NOT NULL,
    `interval_seconds` int(11) NOT NULL,
    `skip_idle` tinyint(1) NOT NULL,
    `skip_hotel_view` tinyint(1) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
