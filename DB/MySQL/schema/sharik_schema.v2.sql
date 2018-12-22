	-- MySQL Script generated by MySQL Workbench
	-- Thu Dec 20 12:09:24 2018
	-- Model: New Model    Version: 1.0
	-- MySQL Workbench Forward Engineering

	-- -----------------------------------------------------
	-- Schema sharik_db
	-- -----------------------------------------------------
	CREATE SCHEMA IF NOT EXISTS `sharik_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
	USE `sharik_db` ;

	-- -----------------------------------------------------
	-- Table `sharik_db`.`users`
	-- -----------------------------------------------------
	CREATE TABLE IF NOT EXISTS `sharik_db`.`users` (
	  `id` INT(11) NOT NULL AUTO_INCREMENT,
	  `username` VARCHAR(45) NOT NULL,
	  `name` VARCHAR(45) NOT NULL,
	  `email` VARCHAR(100) NOT NULL,
	  `mobile_phone` INT(11) NULL DEFAULT NULL,
	  `password` VARCHAR(200) NOT NULL,
	  PRIMARY KEY (`id`),
	  UNIQUE INDEX `usernam_UNIQUE` (`username` ASC) ,
	  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
	  UNIQUE INDEX `email_UNIQUE` (`email` ASC) )
	DEFAULT CHARACTER SET = utf8
	COLLATE = utf8_bin;


	-- -----------------------------------------------------
	-- Table `sharik_db`.`service`
	-- -----------------------------------------------------
	CREATE TABLE IF NOT EXISTS `sharik_db`.`service` (
	  `id` INT(11) NOT NULL AUTO_INCREMENT,
	  `user_id` INT(11) NOT NULL,
	  `name` VARCHAR(45) NOT NULL,
	  `description` TEXT NULL DEFAULT NULL,
	  `time_start` DATETIME NULL DEFAULT NULL,
	  `time_end` DATETIME NULL DEFAULT NULL,
	  `place_pick` VARCHAR(100) NULL DEFAULT NULL,
	  `place_drop` VARCHAR(100) NULL DEFAULT NULL,
	  `users_id` INT(11) NOT NULL,
	  PRIMARY KEY (`id`, `users_id`),
	  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
	  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC) ,
	  INDEX `fk_service_users_idx` (`users_id` ASC) ,
	  CONSTRAINT `fk_service_users`
		FOREIGN KEY (`users_id`)
		REFERENCES `sharik_db`.`users` (`id`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION)
	DEFAULT CHARACTER SET = utf8
	COLLATE = utf8_bin;
