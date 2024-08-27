CREATE TABLE `server_room_constants` (
    `max_chat_message_length` int(11) NOT NULL DEFAULT 500,
    `seconds_till_user_idle` int(11) NOT NULL DEFAULT 300,
    `max_name_length` int(11) NOT NULL DEFAULT 60,
    `max_description_length` int(11) NOT NULL DEFAULT 250,
    `max_tag_length` int(11) NOT NULL DEFAULT 30,
    `created_at` TIMESTAMP NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
