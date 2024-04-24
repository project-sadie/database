CREATE TABLE `server_player_constants` (
  `max_motto_length` int(11) NOT NULL DEFAULT 30,
  `min_sso_length` int(11) NOT NULL DEFAULT 8,
  `max_friendships` int(11) NOT NULL DEFAULT 5000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
