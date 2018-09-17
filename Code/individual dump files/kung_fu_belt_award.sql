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
-- Table structure for table `belt_award`
--

DROP TABLE IF EXISTS `belt_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `belt_award` (
  `stu_id` int(11) NOT NULL,
  `belt_id` int(11) NOT NULL,
  `award_date` date NOT NULL,
  PRIMARY KEY (`stu_id`,`belt_id`),
  KEY `belt_id_idx` (`belt_id`),
  CONSTRAINT `belt_award_to_stu_id_table` FOREIGN KEY (`stu_id`) REFERENCES `student_id_table` (`stu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `belt_id` FOREIGN KEY (`belt_id`) REFERENCES `belt_id` (`belt_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `belt_award`
--

LOCK TABLES `belt_award` WRITE;
/*!40000 ALTER TABLE `belt_award` DISABLE KEYS */;
INSERT INTO `belt_award` VALUES (1,1,'2018-01-11'),(1,3,'2018-02-14'),(1,4,'2018-03-20'),(1,5,'2018-04-11'),(1,7,'2018-04-30'),(1,8,'2018-05-19'),(1,10,'2018-06-13'),(2,1,'2018-03-05'),(2,8,'2018-05-27'),(3,1,'2018-04-04'),(3,9,'2018-06-17'),(4,5,'2018-05-02'),(5,2,'2018-05-07'),(6,6,'2018-05-13');
/*!40000 ALTER TABLE `belt_award` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-21 23:23:57
