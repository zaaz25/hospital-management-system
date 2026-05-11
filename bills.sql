CREATE TABLE `Bills` (
  `bill_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int DEFAULT NULL,
  `treatment_id` int DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `patient_id` (`patient_id`),
  KEY `treatment_id` (`treatment_id`),
  CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `Patients` (`patient_id`),
  CONSTRAINT `bills_ibfk_2` FOREIGN KEY (`treatment_id`) REFERENCES `Treatments` (`treatment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
SELECT * FROM hospital_db.Bills;CREATE TABLE `Departments` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
