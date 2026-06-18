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
-- Table structure for table `diet_plan`
--

DROP TABLE IF EXISTS `diet_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diet_plan` (
  `diet_id` int NOT NULL AUTO_INCREMENT,
  `meal_name` varchar(100) NOT NULL,
  `calories` int NOT NULL,
  `protein` decimal(5,2) NOT NULL,
  `carbs` decimal(5,2) NOT NULL,
  `fats` decimal(5,2) NOT NULL,
  `trainer_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`diet_id`),
  KEY `idx_diet_trainer` (`trainer_id`),
  CONSTRAINT `diet_plan_ibfk_1` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`trainer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diet_plan`
--

LOCK TABLES `diet_plan` WRITE;
/*!40000 ALTER TABLE `diet_plan` DISABLE KEYS */;
INSERT INTO `diet_plan` VALUES (1,'Protein Breakfast Bowl',450,30.50,45.20,15.80,1,'2026-03-09 11:38:54'),(2,'Grilled Chicken Salad',380,42.10,25.30,18.50,1,'2026-03-09 11:38:54'),(3,'Vegetarian Buddha Bowl',420,18.50,52.30,16.80,2,'2026-03-09 11:38:54'),(4,'Salmon and Quinoa',480,38.20,35.60,22.10,3,'2026-03-09 11:38:54'),(6,'jyh',451,61.00,34.00,45.00,5,'2026-03-10 06:04:52');
/*!40000 ALTER TABLE `diet_plan` ENABLE KEYS */;
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
