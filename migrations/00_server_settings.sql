CREATE TABLE `server_settings` (
    `player_welcome_message` text DEFAULT NULL,
    `fair_currency_rewards` tinyint(1) NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
