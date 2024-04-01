USE `employee_directory_mvc_security`;

DROP TABLE IF EXISTS `roles`;
DROP TABLE IF EXISTS `members`;

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `user_id` varchar(50) NOT NULL,
  `pw` char(68) NOT NULL,
  `active` tinyint NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `members`
--
-- NOTE: The passwords are encrypted using BCrypt
--
-- Default passwords here are: test
--

INSERT INTO `members`
VALUES
('john','{bcrypt}$2y$10$JeWWKPOZSVgSQRDIFjFuJOMsN9vVWVb3nYVmrnKBv3YQFE3M5sVH2',1),
('mary','{bcrypt}$2y$10$JeWWKPOZSVgSQRDIFjFuJOMsN9vVWVb3nYVmrnKBv3YQFE3M5sVH2',1),
('susan','{bcrypt}$2y$10$JeWWKPOZSVgSQRDIFjFuJOMsN9vVWVb3nYVmrnKBv3YQFE3M5sVH2',1);


--
-- Table structure for table `authorities`
--

CREATE TABLE `roles` (
  `user_id` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  UNIQUE KEY `authorities5_idx_1` (`user_id`,`role`),
  CONSTRAINT `authorities5_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `members` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `roles`
--

INSERT INTO `roles`
VALUES
('john','ROLE_EMPLOYEE'),
('mary','ROLE_EMPLOYEE'),
('mary','ROLE_MANAGER'),
('susan','ROLE_EMPLOYEE'),
('susan','ROLE_MANAGER'),
('susan','ROLE_ADMIN');
