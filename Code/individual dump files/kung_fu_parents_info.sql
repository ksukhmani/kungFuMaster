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
-- Table structure for table `parents_info`
--

DROP TABLE IF EXISTS `parents_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parents_info` (
  `stu_id` int(11) NOT NULL,
  `preferred_contact` varchar(45) NOT NULL,
  `f_name` varchar(45) NOT NULL,
  `f_email` varchar(45) NOT NULL,
  `f_mobile` varchar(45) NOT NULL,
  `m_name` varchar(45) NOT NULL,
  `m_email` varchar(45) NOT NULL,
  `m_mobile` varchar(45) NOT NULL,
  PRIMARY KEY (`stu_id`),
  CONSTRAINT `parent_to_stu_id_table` FOREIGN KEY (`stu_id`) REFERENCES `student_info` (`stu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents_info`
--

LOCK TABLES `parents_info` WRITE;
/*!40000 ALTER TABLE `parents_info` DISABLE KEYS */;
INSERT INTO `parents_info` VALUES (1,'father','Amrit Singh','amrit_singh5419@gmail.com','519-453-9087','Imalda Fury','imalda4390@gmail.com','519-345-8765'),(2,'mother','Manish Arora','manish_ar510@gmail.com','226-876-4536','Johanna Williams ','johanna_williams@yahoo.com','519-234-7832'),(3,'mother','Frank Preha','frnk43008@yahoo.com','226-897-2561','Rabilla Monty','rabilla_my724@hotmail.com','519-900-2643'),(4,'mother','Monty Gruhe','monty_ru245@gmail.com','519-467-9003','Montrin Hills',' monthill64_23@gmail.com','226-342-9054'),(5,'father','Jake Andrew','jakeand2r@yahoo.com','519-297-9643','Samantha Helen','samanthheln5632@yahoo.com','519-290-6533'),(6,'father','Adam Izik','adamizik64@yahoo.com','519-278-2360','Lissa Ken','lisken74645@gmail.com','519-283-3784'),(7,'mother','Mathew Kimb','mathimb626@gmail.com','226-387-9898','Linda Frida','linda_frida56236@yahoo.com','519-267-9792'),(8,'mother','Ernest Brown','ern_brwon786@yahoo.com','519-380-8803','Sara Smith','sara_smith110@hotmail.com','226-347-9233'),(9,'mother','George Fiedler','georgefield115@gmail.com','226-767-2003','Sally Brown','sally_brown899@gmail.com','226-478-9228'),(10,'father','Hank Westwood','hankwest45665@gmail.com','519-387-9083','Jennifer Jones','jennifer_jones44@gmail.com','226-389-9287');
/*!40000 ALTER TABLE `parents_info` ENABLE KEYS */;
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
