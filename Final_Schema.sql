-- MySQL Workbench Forward Engineering


SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


-- -----------------------------------------------------

-- Schema mydb

-- -----------------------------------------------------


-- -----------------------------------------------------

-- Schema mydb

-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;

USE `mydb` ;


-- -----------------------------------------------------

-- Table `mydb`.`Category`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `mydb`.`Category` (

  `Category_ID` VARCHAR(5) NOT NULL,

  `Category_Type` CHAR(50) NOT NULL,

  PRIMARY KEY (`Category_ID`),

  UNIQUE INDEX `Category_ID_UNIQUE` (`Category_ID` ASC) VISIBLE)

ENGINE = InnoDB;



-- -----------------------------------------------------

-- Table `mydb`.`Event`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `mydb`.`Event` (

  `Event_ID` VARCHAR(5) NOT NULL,

  `Event_Name` VARCHAR(100) NOT NULL,

  `Event_Organiser_Name` CHAR(70) NOT NULL,

  `Category_Category_ID` VARCHAR(5) NOT NULL,

  PRIMARY KEY (`Event_ID`, `Category_Category_ID`),

  UNIQUE INDEX `Event_ID_UNIQUE` (`Event_ID` ASC) VISIBLE,

  INDEX `fk_Event_Category_idx` (`Category_Category_ID` ASC) VISIBLE,

  CONSTRAINT `fk_Event_Category`

    FOREIGN KEY (`Category_Category_ID`)

    REFERENCES `mydb`.`Category` (`Category_ID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;



-- -----------------------------------------------------

-- Table `mydb`.`Post`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `mydb`.`Post` (

  `Post_ID` VARCHAR(5) NOT NULL,

  `Post_Article` VARCHAR(600) NOT NULL,

  `Post_Views` INT NOT NULL,

  `Event_Event_ID` VARCHAR(5) NOT NULL,

  `Event_Category_Category_ID` VARCHAR(5) NOT NULL,

  PRIMARY KEY (`Post_ID`, `Event_Event_ID`, `Event_Category_Category_ID`),

  UNIQUE INDEX `Post_ID_UNIQUE` (`Post_ID` ASC) VISIBLE,

  INDEX `fk_Post_Event1_idx` (`Event_Event_ID` ASC, `Event_Category_Category_ID` ASC) VISIBLE,

  CONSTRAINT `fk_Post_Event1`

    FOREIGN KEY (`Event_Event_ID` , `Event_Category_Category_ID`)

    REFERENCES `mydb`.`Event` (`Event_ID` , `Category_Category_ID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;



-- -----------------------------------------------------

-- Table `mydb`.`Comment`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `mydb`.`Comment` (

  `Comment_ID` VARCHAR(5) NOT NULL,

  `Comment_Data` VARCHAR(500) NOT NULL,

  `Post_Post_ID` VARCHAR(5) NOT NULL,

  `Post_Event_Event_ID` VARCHAR(5) NOT NULL,

  `Post_Event_Category_Category_ID` VARCHAR(5) NOT NULL,

  PRIMARY KEY (`Comment_ID`, `Post_Post_ID`, `Post_Event_Event_ID`, `Post_Event_Category_Category_ID`),

  UNIQUE INDEX `Comment_ID_UNIQUE` (`Comment_ID` ASC) VISIBLE,

  INDEX `fk_Comment_Post1_idx` (`Post_Post_ID` ASC, `Post_Event_Event_ID` ASC, `Post_Event_Category_Category_ID` ASC) VISIBLE,

  CONSTRAINT `fk_Comment_Post1`

    FOREIGN KEY (`Post_Post_ID` , `Post_Event_Event_ID` , `Post_Event_Category_Category_ID`)

    REFERENCES `mydb`.`Post` (`Post_ID` , `Event_Event_ID` , `Event_Category_Category_ID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;



-- -----------------------------------------------------

-- Table `mydb`.`Tag`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `mydb`.`Tag` (

  `Tag_ID` VARCHAR(5) NOT NULL,

  `Tag_Word` VARCHAR(50) NOT NULL,

  PRIMARY KEY (`Tag_ID`),

  UNIQUE INDEX `Tag_ID_UNIQUE` (`Tag_ID` ASC) VISIBLE,

  UNIQUE INDEX `Tag_Word_UNIQUE` (`Tag_Word` ASC) VISIBLE)

ENGINE = InnoDB;



-- -----------------------------------------------------

-- Table `mydb`.`Post_has_Tag`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `mydb`.`Post_has_Tag` (
-- MySQL Workbench Forward Engineering


SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


-- -----------------------------------------------------

-- Schema mydb

-- -----------------------------------------------------


-- -----------------------------------------------------

-- Schema mydb

-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;

USE `mydb` ;


-- -----------------------------------------------------

-- Table `mydb`.`Category`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `mydb`.`Category` (

  `Category_ID` VARCHAR(5) NOT NULL,

  `Category_Type` CHAR(50) NOT NULL,

  PRIMARY KEY (`Category_ID`),

  UNIQUE INDEX `Category_ID_UNIQUE` (`Category_ID` ASC) VISIBLE)

ENGINE = InnoDB;



-- -----------------------------------------------------

-- Table `mydb`.`Event`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `mydb`.`Event` (

  `Event_ID` VARCHAR(5) NOT NULL,

  `Event_Name` VARCHAR(100) NOT NULL,

  `Event_Organiser_Name` CHAR(70) NOT NULL,

  `Category_Category_ID` VARCHAR(5) NOT NULL,

  PRIMARY KEY (`Event_ID`, `Category_Category_ID`),

  UNIQUE INDEX `Event_ID_UNIQUE` (`Event_ID` ASC) VISIBLE,

  INDEX `fk_Event_Category_idx` (`Category_Category_ID` ASC) VISIBLE,

  CONSTRAINT `fk_Event_Category`

    FOREIGN KEY (`Category_Category_ID`)

    REFERENCES `mydb`.`Category` (`Category_ID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;



-- -----------------------------------------------------

-- Table `mydb`.`Post`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `mydb`.`Post` (

  `Post_ID` VARCHAR(5) NOT NULL,

  `Post_Article` VARCHAR(600) NOT NULL,

  `Post_Views` INT NOT NULL,

  `Event_Event_ID` VARCHAR(5) NOT NULL,

  `Event_Category_Category_ID` VARCHAR(5) NOT NULL,

  PRIMARY KEY (`Post_ID`, `Event_Event_ID`, `Event_Category_Category_ID`),

  UNIQUE INDEX `Post_ID_UNIQUE` (`Post_ID` ASC) VISIBLE,

  INDEX `fk_Post_Event1_idx` (`Event_Event_ID` ASC, `Event_Category_Category_ID` ASC) VISIBLE,

  CONSTRAINT `fk_Post_Event1`

    FOREIGN KEY (`Event_Event_ID` , `Event_Category_Category_ID`)

    REFERENCES `mydb`.`Event` (`Event_ID` , `Category_Category_ID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;



-- -----------------------------------------------------

-- Table `mydb`.`Comment`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `mydb`.`Comment` (

  `Comment_ID` VARCHAR(5) NOT NULL,

  `Comment_Data` VARCHAR(500) NOT NULL,

  `Post_Post_ID` VARCHAR(5) NOT NULL,

  `Post_Event_Event_ID` VARCHAR(5) NOT NULL,

  `Post_Event_Category_Category_ID` VARCHAR(5) NOT NULL,

  PRIMARY KEY (`Comment_ID`, `Post_Post_ID`, `Post_Event_Event_ID`, `Post_Event_Category_Category_ID`),

  UNIQUE INDEX `Comment_ID_UNIQUE` (`Comment_ID` ASC) VISIBLE,

  INDEX `fk_Comment_Post1_idx` (`Post_Post_ID` ASC, `Post_Event_Event_ID` ASC, `Post_Event_Category_Category_ID` ASC) VISIBLE,

  CONSTRAINT `fk_Comment_Post1`

    FOREIGN KEY (`Post_Post_ID` , `Post_Event_Event_ID` , `Post_Event_Category_Category_ID`)

    REFERENCES `mydb`.`Post` (`Post_ID` , `Event_Event_ID` , `Event_Category_Category_ID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;



-- -----------------------------------------------------

-- Table `mydb`.`Tag`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `mydb`.`Tag` (

  `Tag_ID` VARCHAR(5) NOT NULL,

  `Tag_Word` VARCHAR(50) NOT NULL,

  PRIMARY KEY (`Tag_ID`),

  UNIQUE INDEX `Tag_ID_UNIQUE` (`Tag_ID` ASC) VISIBLE,

  UNIQUE INDEX `Tag_Word_UNIQUE` (`Tag_Word` ASC) VISIBLE)

ENGINE = InnoDB;



-- -----------------------------------------------------

-- Table `mydb`.`Post_has_Tag`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `mydb`.`Post_has_Tag` (

  `Post_Post_ID` VARCHAR(5) NOT NULL,

  `Post_Event_Event_ID` VARCHAR(5) NOT NULL,

  `Post_Event_Category_Category_ID` VARCHAR(5) NOT NULL,

  `Tag_Tag_ID` VARCHAR(5) NOT NULL,

  PRIMARY KEY (`Post_Post_ID`, `Post_Event_Event_ID`, `Post_Event_Category_Category_ID`, `Tag_Tag_ID`),

  INDEX `fk_Post_has_Tag_Tag1_idx` (`Tag_Tag_ID` ASC) VISIBLE,

  INDEX `fk_Post_has_Tag_Post1_idx` (`Post_Post_ID` ASC, `Post_Event_Event_ID` ASC, `Post_Event_Category_Category_ID` ASC) VISIBLE,

  CONSTRAINT `fk_Post_has_Tag_Post1`

    FOREIGN KEY (`Post_Post_ID` , `Post_Event_Event_ID` , `Post_Event_Category_Category_ID`)

    REFERENCES `mydb`.`Post` (`Post_ID` , `Event_Event_ID` , `Event_Category_Category_ID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

  CONSTRAINT `fk_Post_has_Tag_Tag1`

    FOREIGN KEY (`Tag_Tag_ID`)

    REFERENCES `mydb`.`Tag` (`Tag_ID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
  `Post_Post_ID` VARCHAR(5) NOT NULL,

  `Post_Event_Event_ID` VARCHAR(5) NOT NULL,

  `Post_Event_Category_Category_ID` VARCHAR(5) NOT NULL,

  `Tag_Tag_ID` VARCHAR(5) NOT NULL,

  PRIMARY KEY (`Post_Post_ID`, `Post_Event_Event_ID`, `Post_Event_Category_Category_ID`, `Tag_Tag_ID`),

  INDEX `fk_Post_has_Tag_Tag1_idx` (`Tag_Tag_ID` ASC) VISIBLE,

  INDEX `fk_Post_has_Tag_Post1_idx` (`Post_Post_ID` ASC, `Post_Event_Event_ID` ASC, `Post_Event_Category_Category_ID` ASC) VISIBLE,

  CONSTRAINT `fk_Post_has_Tag_Post1`

    FOREIGN KEY (`Post_Post_ID` , `Post_Event_Event_ID` , `Post_Event_Category_Category_ID`)

    REFERENCES `mydb`.`Post` (`Post_ID` , `Event_Event_ID` , `Event_Category_Category_ID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

  CONSTRAINT `fk_Post_has_Tag_Tag1`

    FOREIGN KEY (`Tag_Tag_ID`)

    REFERENCES `mydb`.`Tag` (`Tag_ID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
