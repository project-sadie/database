CREATE TABLE `banned_ip_addresses` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `owner_id` bigint(20) unsigned NOT NULL,
    `reason` varchar(255) NOT NULL,
    `ip_address` varchar(255) NOT NULL,
    `created_at` TIMESTAMP NOT NULL,
    `expires_at` TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `banned_ip_addresses_owner_id_foreign` (`owner_id`),
    CONSTRAINT `banned_ip_addresses_owner_id_foreign` FOREIGN KEY (
        `owner_id`
    ) REFERENCES `players` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
