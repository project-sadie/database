CREATE TABLE `roles_permissions` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `role_id` bigint(20) unsigned NOT NULL,
    `permission_id` bigint(20) unsigned NOT NULL,
    PRIMARY KEY (`id`),
    KEY `roles_permissions_permission_id_foreign` (`permission_id`),
    KEY `roles_permissions_role_id_permission_id_index` (
        `role_id`, `permission_id`
    ),
    CONSTRAINT `roles_permissions_permission_id_foreign` FOREIGN KEY (
        `permission_id`
    ) REFERENCES `permissions` (`id`),
    CONSTRAINT `roles_permissions_role_id_foreign` FOREIGN KEY (
        `role_id`
    ) REFERENCES `roles` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
