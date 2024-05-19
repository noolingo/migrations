CREATE TABLE IF NOT EXISTS `deck_descr` (
  `id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `deck_name` varchar(255) NOT NULL,
  `deck_descr` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX(`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
