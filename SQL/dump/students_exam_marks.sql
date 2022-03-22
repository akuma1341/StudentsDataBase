CREATE DATABASE  IF NOT EXISTS `students` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `students`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: students
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
-- Table structure for table `exam_marks`
--

DROP TABLE IF EXISTS `exam_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_marks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_student` int DEFAULT NULL,
  `id_subject` int DEFAULT NULL,
  `mark` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `id_student_idx` (`id_student`),
  KEY `id_subject_idx` (`id_subject`),
  CONSTRAINT `id_student` FOREIGN KEY (`id_student`) REFERENCES `students` (`id_student`),
  CONSTRAINT `id_subject` FOREIGN KEY (`id_subject`) REFERENCES `subjects` (`id_subject`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_marks`
--

LOCK TABLES `exam_marks` WRITE;
/*!40000 ALTER TABLE `exam_marks` DISABLE KEYS */;
INSERT INTO `exam_marks` VALUES (1,1,1,5),(2,1,2,6),(3,2,2,7),(4,2,4,8),(5,3,1,9),(6,3,5,1),(7,4,2,2),(8,4,3,2),(9,5,4,3),(10,5,5,4),(11,6,1,4),(12,6,3,5),(13,7,2,7),(14,7,4,7),(15,8,3,8),(16,8,5,8),(17,9,1,9),(18,9,5,9),(19,10,1,10),(20,10,5,1),(21,11,2,1),(22,11,3,3),(23,12,3,3),(24,12,5,5),(25,13,3,6),(26,13,4,6),(27,14,4,7),(28,14,5,8),(29,15,1,8),(30,15,4,9),(31,16,3,9),(32,16,5,3),(33,17,3,4),(34,17,4,5),(35,18,1,6),(36,18,4,7),(37,19,4,8),(38,19,5,8),(39,20,2,10),(40,20,4,6),(41,1,3,7),(42,1,4,8),(43,2,1,8),(44,2,3,8),(45,2,5,8),(46,3,2,4),(47,3,3,5),(48,3,4,7),(49,3,6,9),(50,4,1,5),(51,4,6,7),(52,5,1,4),(53,5,3,3),(54,5,6,5),(55,6,5,8),(56,6,6,7),(57,7,6,8),(58,8,1,9),(59,8,2,6),(60,9,2,8),(61,9,3,7),(62,9,6,9),(63,10,2,5),(64,10,3,3),(65,10,6,7),(66,11,4,4),(67,11,5,7),(68,11,6,6),(69,12,1,6),(70,12,2,8),(71,13,4,6),(72,13,5,8),(73,14,1,8),(74,14,2,9),(75,14,3,9),(76,14,6,8),(77,15,2,9),(78,15,3,9),(79,15,5,9),(80,15,6,9),(81,16,2,5),(82,17,1,7),(83,17,6,7),(84,18,5,7),(85,18,3,8),(86,18,6,4),(87,19,6,8);
/*!40000 ALTER TABLE `exam_marks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-22 13:56:17
