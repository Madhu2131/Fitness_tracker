-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: fitness_db
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `workout`
--

DROP TABLE IF EXISTS `workout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workout` (
  `workout_id` int NOT NULL AUTO_INCREMENT,
  `exercise_name` varchar(100) NOT NULL,
  `sets` int NOT NULL,
  `reps` int NOT NULL,
  `duration` int NOT NULL COMMENT 'Duration in minutes',
  `trainer_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`workout_id`),
  KEY `idx_workout_trainer` (`trainer_id`),
  CONSTRAINT `workout_ibfk_1` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`trainer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout`
--

LOCK TABLES `workout` WRITE;
/*!40000 ALTER TABLE `workout` DISABLE KEYS */;
INSERT INTO `workout` VALUES (1,'Push-ups',3,15,10,1,'2026-03-09 11:38:54'),(2,'Squats',4,12,15,1,'2026-03-09 11:38:54'),(3,'Deadlifts',3,8,20,1,'2026-03-09 11:38:54'),(4,'Yoga Flow',1,1,60,2,'2026-03-09 11:38:54'),(5,'HIIT Cardio',5,20,30,3,'2026-03-09 11:38:54'),(8,'hdjh',2,2,2,4,'2026-03-09 12:02:56'),(9,'lmn',2,2,2,4,'2026-03-09 12:09:05'),(10,'lmn',2,2,2,5,'2026-03-09 12:11:08');
/*!40000 ALTER TABLE `workout` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-25 15:19:52
