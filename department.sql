CREATE TABLE `Departments` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
SELECT * FROM hospital_db.Departments;