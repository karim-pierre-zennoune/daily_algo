CREATE DATABASE  IF NOT EXISTS `library_wakeup` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `library_wakeup`;
-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: library_wakeup
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publication_year` int NOT NULL,
  `price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Le Petit Prince','Antoine de Saint-Exupéry',1943,8.90),(2,'1984','George Orwell',1949,7.50),(3,'L’Étranger','Albert Camus',1942,6.90),(4,'Fondation','Isaac Asimov',1951,9.80),(5,'Dune','Frank Herbert',1965,11.50),(6,'Le Seigneur des Anneaux','J.R.R. Tolkien',1954,14.90),(7,'Neuromancien','William Gibson',1984,10.20),(8,'Le Nom du Vent','Patrick Rothfuss',2007,12.90),(9,'La Horde du Contrevent','Alain Damasio',2004,10.90),(10,'Harry Potter à l’école des sorciers','J.K. Rowling',1997,12.50),(11,'La Vérité sur l’Affaire Harry Quebert','Joël Dicker',2012,9.90),(12,'Ready Player One','Ernest Cline',2011,8.50),(13,'Sapiens','Yuval Noah Harari',2011,15.40),(14,'Le Mage du Kremlin','Giuliano da Empoli',2022,19.00),(15,'Tomorrow, and Tomorrow, and Tomorrow','Gabrielle Zevin',2022,18.50),(16,'Les Furtifs','Alain Damasio',2019,17.90),(17,'Le Consentement','Vanessa Springora',2020,7.90),(18,'Projet Dernière Chance','Andy Weir',2021,12.30),(19,'Yellowface','R.F. Kuang',2023,16.80),(20,'Le Chant des Étoiles','Léa Bonnefoy',2024,21.00);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-02  9:19:26