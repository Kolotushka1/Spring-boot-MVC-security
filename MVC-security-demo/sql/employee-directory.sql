CREATE DATABASE  IF NOT EXISTS `employee_directory_mvc_security`;
USE `employee_directory_mvc_security`;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

--
-- Data for table `employee`
--

INSERT INTO `employee` VALUES 
	(1,'Leslie','Andrews','leslie@cool2code.com'),
	(2,'Emma','Baumgarten','emma@cool2code.com'),
	(3,'Avani','Gupta','avani@cool2code.com'),
	(4,'Yuri','Petrov','yuri@cool2code.com'),
	(5,'Juan','Vega','juan@cool2code.com');

