CREATE TABLE `banned_ip_addresses` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `creator_id` bigint(20) unsigned NULL,
    `reason` varchar(255) NOT NULL,
    `ip_address` varchar(255) NOT NULL,
    `created_at` TIMESTAMP NOT NULL,
    `expires_at` TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `banned_ip_addresses_creator_id_foreign` (`creator_id`),
    CONSTRAINT `banned_ip_addresses_creator_id_foreign` FOREIGN KEY (
        `creator_id`
    ) REFERENCES `players` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
