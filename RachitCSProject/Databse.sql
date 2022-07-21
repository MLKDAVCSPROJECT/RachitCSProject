-- Host: Rachit    Database: hospital_management
-- ------------------------------------------------------

--
-- Table structure for table `Appointment`
--

DROP TABLE IF EXISTS `Appointment`;
CREATE TABLE `Appointment` (
  `Appointment_no` varchar(255) NOT NULL,
  `Patient_id` varchar(255) NOT NULL,
  `Doctor_id` varchar(255) NOT NULL,
  `Problem` varchar(600) NOT NULL,
  `Time` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  PRIMARY KEY (`Appointment_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Appointment`
--

LOCK TABLES `Appointment` WRITE;
INSERT INTO `Appointment` VALUES ('1123','YH2415','DR1347','Back Pain','10:30am','14/7/21'),('1346','UJ8913','DR8081','Back Pain','2:30pm','12/7/21'),('1884','HP1355','DR6183','Hypertension','12:00pm','9/7/21'),('2356','AH2456','DR6183','Hypertension','10:00am','19/7/21'),('4512','UA1345','DR5183','swollen arm','1:30pm','21/7/21'),('5713','OW5631','DR5183','swollen arm','11:30am','4/7/21'),('6193','UI8103','DR2456','Kidney Stones','12:30pm','1/7/21'),('7134','UO2495','DR1385','Hypertension','1:00pm','13/7/21'),('7294','HO2456','DR2133','Stomach Ache','12:30pm','2/7/21'),('8081','WE1352','DR1355','Physical Checkup','10:30am','14/7/21'),('9294','OP1345','DR6834','Back Pain','2:30pm','21/7/21'),('9913','NM1234','DR1389','back pain','1:00pm','19/7/21');
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `doctor_id` varchar(225) NOT NULL,
  `department` varchar(225) DEFAULT NULL,
  `status` varchar(225) DEFAULT NULL,
  `floor` int DEFAULT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
INSERT INTO `doctor` VALUES ('DR1356','Physical','Busy',1),('DR1901','Bone','Available',4),('DR1913','Kidney','Busy',3),('DR3910','Physician','Leave',1),('DR4921','Bone','Busy',4),('DR6811','Heart','Leave',2),('DR7821','Surgeon','Leave',2),('DR7913','Physician','Busy',2),('DR8822','Skin','Available',1),('DR8913','Diabetic','Available',3);
UNLOCK TABLES;

--
-- Table structure for table `Medication`
--

DROP TABLE IF EXISTS `Medication`;
CREATE TABLE `Medication` (
  `Medicine_id` varchar(225) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Brand` varchar(255) NOT NULL,
  `Description` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`Medicine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Medication`
--

LOCK TABLES `Medication` WRITE;
INSERT INTO `Medication` VALUES ('A789','Nice','Cipla','Pain killer'),('B761','Metoprolol','Lopresso','chest pain'),('C481','Losartan','Proventil','high blood pressure'),('K235','Lisinopril','Prinivil','high blood pressure treatment'),('L138','Levothyroxine','Synthroid','hypothyroidism treatment'),('L689','Albuterol','Accuneb','Asthma'),('P134','Atorvastatin','Lipitor','lower low-density lipoprotein'),('Q681','Omeprazole','Prilosec','heartburn'),('Q714','Amlodipine','Norvasc','high blood pressure'),('S812','Metformin','Riomet','type 2 diabetes'),('W582','Simvastatin','Toprol','heart attack');
UNLOCK TABLES;

--
-- Table structure for table `Patients`
--

DROP TABLE IF EXISTS `Patients`;
CREATE TABLE `Patients` (
  `Patient_id` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Age` int NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone_no` int NOT NULL,
  PRIMARY KEY (`Patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Patients`
--

LOCK TABLES `Patients` WRITE;
INSERT INTO `Patients` VALUES ('BD3409','David','Male',40,'B-24',134458039),('BG8008','Chad','Male',27,'X-420',420698008),('CK1345','Jenifer','Female',38,'W-241',782057492),('HJ1245','Austin','Male',25,'J-134',849190238),('HK2144','Danny','Male',32,'I-135',458829207),('HQ2344','Felix','Male',30,'K-122',321486208),('LP1354','Hanna','Female',26,'R-314',738247092),('NJ2452','Daisy','Female',28,'E-245',682592860),('OP4258','Tony','Male',24,'U-792',369203869),('WK1352','Jack','Male',24,'P-384',321794028),('YI5871','Jeff','Male',69,'M-100',724989018);
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
  `Room_number` int NOT NULL,
  `Status` varchar(225) NOT NULL,
  `floor` varchar(225) NOT NULL,
  `Patient_id` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`Room_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
INSERT INTO `rooms` VALUES (1001,'Vacant','1st Floor',NULL),(1002,'Occupied','1st Floor',NULL),(1003,'Cleaning','1st Floor',NULL),(1004,'Vacant','1st Floor',NULL),(1005,'Occupied','1st Floor',NULL),(1006,'Vacant','1st Floor',NULL),(1007,'Occupied','1st Floor',NULL),(2001,'Vacant','2nd Floor',NULL),(2002,'Vacant','2nd Floor',NULL),(2003,'Cleaning','2nd Floor',NULL),(2004,'Occupied','2nd Floor',NULL),(2005,'Vacant','2nd Floor',NULL),(2006,'Cleaning','2nd Floor',NULL),(2007,'Cleaning','2nd Floor',NULL);
UNLOCK TABLES;
