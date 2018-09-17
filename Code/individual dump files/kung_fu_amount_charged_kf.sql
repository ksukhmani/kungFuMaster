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
-- Table structure for table `amount_charged_kf`
--

DROP TABLE IF EXISTS `amount_charged_kf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amount_charged_kf` (
  `fee_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NOT NULL,
  `fee_type_id` int(11) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `total` varchar(45) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`fee_id`),
  KEY `fee_type_id_idx` (`fee_type_id`),
  KEY `fee_charded_to_stu_id_table_idx` (`stu_id`),
  CONSTRAINT `fee_charded_to_stu_id_table` FOREIGN KEY (`stu_id`) REFERENCES `student_id_table` (`stu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fee_type_id` FOREIGN KEY (`fee_type_id`) REFERENCES `fee_type` (`fee_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amount_charged_kf`
--

LOCK TABLES `amount_charged_kf` WRITE;
/*!40000 ALTER TABLE `amount_charged_kf` DISABLE KEYS */;
INSERT INTO `amount_charged_kf` VALUES (1,1,1,'1','50','2018-01-11'),(2,2,2,'4','40','2018-03-30'),(3,1,3,'1','20','2018-03-31'),(4,1,4,'1','25','2018-04-04'),(5,1,5,'2','4','2018-04-07'),(6,1,6,'3','6','2018-04-10'),(7,2,7,'1','60','2018-04-13'),(8,3,8,'1','89','2018-05-01'),(9,4,9,'1','40','2018-05-19'),(10,1,10,'1','120','2018-05-26');
/*!40000 ALTER TABLE `amount_charged_kf` ENABLE KEYS */;
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
