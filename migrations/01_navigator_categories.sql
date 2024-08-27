CREATE TABLE `navigator_categories` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `code_name` varchar(255) NOT NULL,
    `tab_id` bigint(20) unsigned NOT NULL,
    `order_id` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `navigator_categories_tab_id_foreign` (`tab_id`),
    CONSTRAINT `navigator_categories_tab_id_foreign` FOREIGN KEY (
        `tab_id`
    ) REFERENCES `navigator_tabs` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
