CREATE TABLE oauth_clients (
    id bigint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `secret` varchar(255) NOT NULL,
    `domain` varchar(255) NOT NULL
) ENGINE = InnoDB;