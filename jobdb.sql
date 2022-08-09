-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: jobdb
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administator`
--

DROP TABLE IF EXISTS `administator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administator` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Full_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `User_admin_idx` (`User_ID`),
  CONSTRAINT `user_admin_id` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administator`
--

LOCK TABLES `administator` WRITE;
/*!40000 ALTER TABLE `administator` DISABLE KEYS */;
/*!40000 ALTER TABLE `administator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `ID` int NOT NULL,
  `Full_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `City` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  KEY `candidate_user_idx` (`User_ID`),
  CONSTRAINT `candidate_user_id` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1,'Anh Minh','',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_category`
--

DROP TABLE IF EXISTS `candidate_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_category` (
  `ID` int NOT NULL,
  `Candidate_ID` int DEFAULT NULL,
  `Cate_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Candidate_ID_idx` (`Candidate_ID`),
  KEY `Cate_ID_idx` (`Cate_ID`),
  CONSTRAINT `can_cate_candidate_id` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `can_cate_category_id` FOREIGN KEY (`Cate_ID`) REFERENCES `job_category` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_category`
--

LOCK TABLES `candidate_category` WRITE;
/*!40000 ALTER TABLE `candidate_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_company`
--

DROP TABLE IF EXISTS `candidate_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_company` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Candidate_ID` int DEFAULT NULL,
  `Company_ID` int DEFAULT NULL,
  `Job_ID` int DEFAULT NULL,
  `StartDay` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  `Assessment` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `IsLiked` int DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Work_Candidate_ID_idx` (`Candidate_ID`),
  KEY `Work_Company_ID_idx` (`Company_ID`),
  KEY `Work_Job_ID_idx` (`Job_ID`),
  CONSTRAINT `can_com_candidate_id` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`),
  CONSTRAINT `can_com_company_id` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`ID`),
  CONSTRAINT `can_com_job_id` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_company`
--

LOCK TABLES `candidate_company` WRITE;
/*!40000 ALTER TABLE `candidate_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_job`
--

DROP TABLE IF EXISTS `candidate_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_job` (
  `ID` int NOT NULL,
  `Candidate_ID` int DEFAULT NULL,
  `Job_ID` int DEFAULT NULL,
  `AppliedDate` date DEFAULT NULL,
  `CV_ID` int DEFAULT NULL,
  `IsApplied` int DEFAULT '0',
  `IsLiked` int DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `can_job_candidate_id_idx` (`Candidate_ID`),
  KEY `can_job_job_id_idx` (`Job_ID`),
  KEY `can_job_cv_id_idx` (`CV_ID`),
  CONSTRAINT `can_job_candidate_id` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`),
  CONSTRAINT `can_job_cv_id` FOREIGN KEY (`CV_ID`) REFERENCES `curriculum_vitae` (`ID`),
  CONSTRAINT `can_job_job_id` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_job`
--

LOCK TABLES `candidate_job` WRITE;
/*!40000 ALTER TABLE `candidate_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_major`
--

DROP TABLE IF EXISTS `candidate_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_major` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Candidate_ID` int DEFAULT NULL,
  `Major_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `can_major_candidate_id_idx` (`Candidate_ID`),
  KEY `can_major_major_id_idx` (`Major_ID`),
  CONSTRAINT `can_major_candidate_id` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`),
  CONSTRAINT `can_major_major_id` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_major`
--

LOCK TABLES `candidate_major` WRITE;
/*!40000 ALTER TABLE `candidate_major` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Major_ID` int DEFAULT NULL,
  `Name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cate_major_id_idx` (`Major_ID`),
  CONSTRAINT `cate_major_id` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `ID` int NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `City` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `com_user_id_idx` (`User_ID`),
  CONSTRAINT `com_user_id` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_major`
--

DROP TABLE IF EXISTS `company_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_major` (
  `ID` int NOT NULL,
  `Company_ID` int DEFAULT NULL,
  `Major_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `com_major_company_id_idx` (`Company_ID`),
  KEY `com_major_major_id_idx` (`Major_ID`),
  CONSTRAINT `com_major_company_id` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`ID`),
  CONSTRAINT `com_major_major_id` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_major`
--

LOCK TABLES `company_major` WRITE;
/*!40000 ALTER TABLE `company_major` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum_vitae`
--

DROP TABLE IF EXISTS `curriculum_vitae`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curriculum_vitae` (
  `ID` int NOT NULL,
  `CareerGoals` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DegreeDetail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExperienceDetail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Skill` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ForeignLanguage` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Candidate_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cv_candidate_id_idx` (`Candidate_ID`),
  CONSTRAINT `cv_candidate_id` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum_vitae`
--

LOCK TABLES `curriculum_vitae` WRITE;
/*!40000 ALTER TABLE `curriculum_vitae` DISABLE KEYS */;
/*!40000 ALTER TABLE `curriculum_vitae` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Company_ID` int DEFAULT NULL,
  `Description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Salary` decimal(20,0) DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `DegreeRequired` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AgeTo` int DEFAULT NULL,
  `AgeFrom` int DEFAULT NULL,
  `IsChecked` int DEFAULT NULL,
  `IsContinute` int DEFAULT NULL,
  `SexRequired` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProbationaryPeriod` double DEFAULT NULL,
  `Benefit` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `job_company_id_idx` (`Company_ID`),
  CONSTRAINT `job_company_id` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_category`
--

DROP TABLE IF EXISTS `job_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_category` (
  `ID` int NOT NULL,
  `Job_ID` int DEFAULT NULL,
  `Cate_ID` int DEFAULT NULL,
  `Point` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `job_cate_job_id_idx` (`Job_ID`),
  KEY `job_cate_cate_id_idx` (`Cate_ID`),
  CONSTRAINT `job_cate_cate_id` FOREIGN KEY (`Cate_ID`) REFERENCES `category` (`ID`),
  CONSTRAINT `job_cate_job_id` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_category`
--

LOCK TABLES `job_category` WRITE;
/*!40000 ALTER TABLE `job_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_major`
--

DROP TABLE IF EXISTS `job_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_major` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Job_ID` int DEFAULT NULL,
  `Major_ID` int DEFAULT NULL,
  `Point` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `job_major_job_id_idx` (`Job_ID`),
  KEY `job_major_major_id_idx` (`Major_ID`),
  CONSTRAINT `job_major_job_id` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`ID`),
  CONSTRAINT `job_major_major_id` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_major`
--

LOCK TABLES `job_major` WRITE;
/*!40000 ALTER TABLE `job_major` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major_category`
--

DROP TABLE IF EXISTS `major_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major_category` (
  `ID` int NOT NULL,
  `Major_ID` int DEFAULT NULL,
  `Cate_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `major_cate_major_id_idx` (`Major_ID`),
  KEY `major_cate_cate_id_idx` (`Cate_ID`),
  CONSTRAINT `major_cate_cate_id` FOREIGN KEY (`Cate_ID`) REFERENCES `category` (`ID`),
  CONSTRAINT `major_cate_major_id` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major_category`
--

LOCK TABLES `major_category` WRITE;
/*!40000 ALTER TABLE `major_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `major_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Password` char(200) COLLATE utf8_unicode_ci NOT NULL,
  `RegisterDate` date DEFAULT NULL,
  `UserRole` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'anhminh123','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO',NULL,'ROLE_USER');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-09 22:31:37
