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
SELECT * FROM hospital_db.Treatments;