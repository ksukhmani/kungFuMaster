-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: kung_fu
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `student_info`
--

DROP TABLE IF EXISTS `student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_info` (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_joindate` varchar(45) NOT NULL,
  `stu_mobile` varchar(45) NOT NULL,
  `stu_email` varchar(45) NOT NULL,
  `stu_street` varchar(45) NOT NULL,
  `stu_city` varchar(45) NOT NULL,
  `stu_pincode` varchar(45) NOT NULL,
  PRIMARY KEY (`stu_id`),
  CONSTRAINT `stu_id` FOREIGN KEY (`stu_id`) REFERENCES `student_id_table` (`stu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_info`
--

LOCK TABLES `student_info` WRITE;
/*!40000 ALTER TABLE `student_info` DISABLE KEYS */;
INSERT INTO `student_info` VALUES (1,'2018-01-10','519-746-2900','komal_preet1001@gmail.com','722 Partington Avenue','Windsor','N9B 3T3'),(2,'2018-03-05','226-876-3454','mohitarora0305@gmail.com','524 Curry Avenue','Windsor','N6T 4W2'),(3,'2018-04-04','519-635-2679','amysm0411@hotmail.com','483 Rankin Avenue','Windsor','N4U 9Y9'),(4,'2018-05-02','519-534-2332','johnbrwn0501@yahoo.com','342 Prince Avenue','Chatham','N1O 2P0'),(5,'2018-03-01','519-514-2356','jackmill245@yahoo.com','528 Rankin Avenue','Windsor','N5H 2Y0'),(6,'2018-02-19','519-134-2444','billhe_67@gmail.com','251 Randolph Avenue','Windsor','N7O 8P8'),(7,'2018-03-13','519-734-2343','Mcfad_dent@hotmail.com','361 Partington Avenue','Windsor','N6W 6Q9'),(8,'2018-01-23','519-904-1635','steven_shimm34990@gmail.com','889 Curry Avenue','Windsor','N9R 2Y2'),(9,'2018-03-18','226-876-3412','rubyjason904@yahoo.com','625 Walker Road','Windsor','N2P 9R0'),(10,'2018-05-25','226-906-3214','erik_bawn1100@gmail.com','453 Dominion Road','Windsor','N8A 2W1');
/*!40000 ALTER TABLE `student_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-21 23:23:56
