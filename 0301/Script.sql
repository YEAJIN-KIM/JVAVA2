--<ScriptOptions statementTerminator=";"/>

ALTER TABLE `classb`.`student` DROP PRIMARY KEY;

ALTER TABLE `classb`.`product` DROP PRIMARY KEY;

DROP TABLE `classb`.`student`;

DROP TABLE `classb`.`product`;

CREATE TABLE `classb`.`student` (
	`name` VARCHAR(45) NOT NULL,
	`depart` VARCHAR(45) NOT NULL,
	`age` INTEGER UNSIGNED NOT NULL,
	PRIMARY KEY (`name`)
);

CREATE TABLE `classb`.`product` (
	`productname` VARCHAR(45) NOT NULL,
	`price` INTEGER UNSIGNED NOT NULL,
	PRIMARY KEY (`productname`)
);

