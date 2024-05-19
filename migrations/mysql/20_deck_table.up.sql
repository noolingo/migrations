CREATE TABLE IF NOT EXISTS `decks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `deck_id` varchar(255) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX(`deck_id`),
  INDEX(`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
