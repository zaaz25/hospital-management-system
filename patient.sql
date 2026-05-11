CREATE TABLE `Patients` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `Treatments` (
  `treatment_id` int NOT NULL AUTO_INCREMENT,
  `appointment_id` int DEFAULT NULL,
  `diagnosis` text,
  `treatment_description` text,
  `medicine_prescribed` varchar(200) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`treatment_id`),
  KEY `appointment_id` (`appointment_id`),
  CONSTRAINT `treatments_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `Appointments` (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
SELECT * FROM hospital_db.Patients;