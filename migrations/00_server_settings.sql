CREATE TABLE `server_settings` (
  `player_welcome_message` text DEFAULT NULL,
  `make_currency_rewards_fair` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
