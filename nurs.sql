CREATE TABLE `Nurses` (
  `nurse_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  PRIMARY KEY (`nurse_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `nurses_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `Departments` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
SELECT * FROM hospital_db.Nurses;