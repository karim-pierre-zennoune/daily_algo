CREATE DATABASE  IF NOT EXISTS `shop_wakeup` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shop_wakeup`;
-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: shop_wakeup
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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Alice','Martin','Lyon'),(2,'Bruno','Durand','Paris'),(3,'Chloé','Bernard','Marseille'),(4,'David','Rossi','Bordeaux'),(5,'Emma','Leroy','Lille'),(6,'Félix','Moreau','Nice'),(7,'Gaëlle','Fabre','Lyon'),(8,'Hugo','Renard','Paris'),(9,'Inès','Bouchard','Toulouse'),(10,'Jules','Colin','Nantes'),(11,'Karim','Benali','Grenoble'),(12,'Lila','Perrot','Strasbourg');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Clavier',50.00),(2,'Souris',30.00),(3,'Écran 24\"',200.00),(4,'Câble HDMI',15.00),(5,'Casque audio',120.00),(6,'Microphone',90.00),(7,'Webcam HD',85.00),(8,'Tapis de souris',10.00),(9,'Imprimante',150.00),(10,'Cartouches',25.00),(11,'Tablette',250.00),(12,'Stylet',40.00),(13,'Coque de protection',20.00),(14,'Clavier Bluetooth',45.00),(15,'Laptop',650.00),(16,'Sacoche',45.00),(17,'Souris gamer',65.00),(18,'Écran 27\"',300.00),(19,'SSD 1 To',120.00),(20,'Clavier mécanique',90.00),(21,'Écran 32\"',320.00),(22,'Support écran',35.00),(23,'Casque gaming',80.00),(24,'Micro USB',35.00),(25,'Clé USB 64 Go',15.00),(26,'Router Wi-Fi',90.00),(27,'Câble Ethernet',10.00),(28,'Lampe de bureau',45.00),(29,'Tablette graphique',200.00),(30,'Ring light',60.00),(31,'Trépied',35.00),(32,'Webcam',70.00),(33,'Bureau assis-debout',250.00),(34,'Disque dur',80.00),(35,'Carte mère',150.00);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,101,1,2),(2,101,2,3),(3,102,3,1),(4,102,4,2),(5,103,5,1),(6,103,6,1),(7,104,7,2),(8,104,8,3),(9,126,9,1),(10,126,10,4),(11,105,11,1),(12,105,12,1),(13,127,13,1),(14,127,14,1),(15,106,15,1),(16,107,16,1),(17,128,17,2),(18,128,18,1),(19,108,9,1),(20,108,10,2),(21,109,19,1),(22,109,20,1),(23,110,21,1),(24,110,22,1),(25,125,23,2),(26,125,24,1),(27,111,15,1),(28,111,2,2),(29,112,25,3),(30,112,16,1),(31,113,26,1),(32,113,27,3),(33,129,3,1),(34,129,28,1),(35,114,1,1),(36,114,2,1),(37,115,29,1),(38,115,12,1),(39,130,30,1),(40,130,31,1),(41,116,15,1),(42,117,32,1),(43,118,33,1),(44,119,34,1),(45,119,2,2),(46,120,35,1),(47,121,5,1),(48,121,6,1),(49,122,1,1),(50,122,2,1),(51,123,18,1),(52,123,22,1),(53,124,11,1),(54,124,12,1);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (101,1,'2024-01-15'),(102,1,'2024-03-10'),(103,2,'2024-02-20'),(104,2,'2024-02-28'),(105,3,'2024-04-05'),(106,4,'2024-01-18'),(107,4,'2024-06-12'),(108,5,'2024-05-22'),(109,6,'2024-07-03'),(110,6,'2024-07-18'),(111,7,'2024-08-02'),(112,7,'2024-08-14'),(113,8,'2024-04-09'),(114,9,'2024-04-18'),(115,9,'2024-09-01'),(116,10,'2024-10-05'),(117,10,'2024-10-15'),(118,10,'2024-11-02'),(119,11,'2024-01-22'),(120,11,'2024-03-12'),(121,12,'2024-02-14'),(122,12,'2024-03-01'),(123,12,'2024-05-25'),(124,12,'2024-06-10'),(125,6,'2024-12-01'),(126,2,'2024-12-10'),(127,3,'2024-12-15'),(128,4,'2024-12-20'),(129,8,'2024-12-22'),(130,9,'2024-12-28');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-03  9:02:09