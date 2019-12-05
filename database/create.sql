-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema store
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema store
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `store` DEFAULT CHARACTER SET utf8 ;
USE `store` ;

-- -----------------------------------------------------
-- Table `store`.`types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `store`.`types` (
  `type_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`type_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `store`.`goods`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `store`.`goods` (
  `product_id` INT NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `type_id` INT NOT NULL,
  `size` VARCHAR(45) NOT NULL,
  `elongated_handle` TINYINT NOT NULL,
  PRIMARY KEY (`product_id`),
  INDEX `Type_idx` (`type_id` ASC) VISIBLE,
  CONSTRAINT `Type`
    FOREIGN KEY (`type_id`)
    REFERENCES `store`.`types` (`type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `store`.`materials`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `store`.`materials` (
  `material_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`material_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `store`.`knives`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `store`.`knives` (
  `knife_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`knife_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `store`.`goods_knives`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `store`.`goods_knives` (
  `product_id` INT NOT NULL,
  `knive_id` INT NOT NULL,
  INDEX `Goods2_idx` (`product_id` ASC) VISIBLE,
  INDEX `Knife_idx` (`knive_id` ASC) VISIBLE,
  CONSTRAINT `Goods2`
    FOREIGN KEY (`product_id`)
    REFERENCES `store`.`goods` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Knife`
    FOREIGN KEY (`knive_id`)
    REFERENCES `store`.`knives` (`knife_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `store`.`goods_materials`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `store`.`goods_materials` (
  `product_id` INT NOT NULL,
  `material_id` INT NOT NULL,
  INDEX `Goods_idx` (`product_id` ASC) VISIBLE,
  INDEX `Material_idx` (`material_id` ASC) VISIBLE,
  CONSTRAINT `Goods`
    FOREIGN KEY (`product_id`)
    REFERENCES `store`.`goods` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Material`
    FOREIGN KEY (`material_id`)
    REFERENCES `store`.`materials` (`material_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `store`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `store`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(45) NOT NULL,
  `password` VARCHAR(160) NOT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `store`.`colors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `store`.`colors` (
  `color_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`color_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `store`.`goods_colors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `store`.`goods_colors` (
  `product_id` INT NOT NULL,
  `color_id` INT NOT NULL,
  INDEX `Goods2_idx` (`product_id` ASC) VISIBLE,
  INDEX `Color_idx` (`color_id` ASC) VISIBLE,
  CONSTRAINT `Goods3`
    FOREIGN KEY (`product_id`)
    REFERENCES `store`.`goods` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Color`
    FOREIGN KEY (`color_id`)
    REFERENCES `store`.`colors` (`color_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
