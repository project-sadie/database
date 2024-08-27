CREATE TABLE `players` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `username` varchar(30) NOT NULL,
    `email` varchar(30) NOT NULL,
    `password` varchar(255) NOT NULL,
    `created_at` TIMESTAMP NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `players_username_unique` (`username`),
    UNIQUE KEY `players_email_unique` (`email`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
