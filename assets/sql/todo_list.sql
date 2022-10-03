CREATE TABLE IF NOT EXISTS todo_list(
  `uuid` VARCHAR(36) NOT NULL,
  `content` TEXT NOT NULL,
  `state` TINYINT NOT NULL,
  PRIMARY KEY (`uuid`));