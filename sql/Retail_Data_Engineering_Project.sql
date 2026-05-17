-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: retail_etl
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Laura','Ahmedabad','Gujarat'),(2,'Christine','Patna','Bihar'),(3,'Mark','Mumbai','Maharashtra'),(4,'Nancy','Lucknow','Uttar Pradesh'),(5,'Sara','Ahmedabad','Gujarat'),(6,'Gavin','Patna','Bihar'),(7,'Johnny','Mumbai','Maharashtra'),(8,'Chelsea','Patna','Bihar'),(9,'Donald','Patna','Bihar'),(10,'Michael','Kolkata','West Bengal'),(11,'Kevin','Bangalore','Karnataka'),(12,'Nicholas','Delhi','Delhi'),(13,'Kimberly','Chennai','Tamil Nadu'),(14,'Jasmine','Kolkata','West Bengal'),(15,'Crystal','Patna','Bihar'),(16,'Benjamin','Ahmedabad','Gujarat'),(17,'Darin','Mumbai','Maharashtra'),(18,'Christopher','Kolkata','West Bengal'),(19,'Samuel','Bangalore','Karnataka'),(20,'Jeremy','Bangalore','Karnataka'),(21,'Kelly','Kolkata','West Bengal'),(22,'Michelle','Kolkata','West Bengal'),(23,'Debra','Patna','Bihar'),(24,'William','Lucknow','Uttar Pradesh'),(25,'Lori','Lucknow','Uttar Pradesh'),(26,'Cathy','Ahmedabad','Gujarat'),(27,'Elizabeth','Chennai','Tamil Nadu'),(28,'Michael','Lucknow','Uttar Pradesh'),(29,'Angela','Patna','Bihar'),(30,'Meghan','Mumbai','Maharashtra'),(31,'Anthony','Bangalore','Karnataka'),(32,'Jeffrey','Mumbai','Maharashtra'),(33,'Brian','Lucknow','Uttar Pradesh'),(34,'Brenda','Ahmedabad','Gujarat'),(35,'Caroline','Kolkata','West Bengal'),(36,'Lori','Delhi','Delhi'),(37,'Shawn','Ahmedabad','Gujarat'),(38,'Ross','Lucknow','Uttar Pradesh'),(39,'Steven','Mumbai','Maharashtra'),(40,'Craig','Kolkata','West Bengal'),(41,'Tamara','Mumbai','Maharashtra'),(42,'Diane','Lucknow','Uttar Pradesh'),(43,'William','Lucknow','Uttar Pradesh'),(44,'Hailey','Lucknow','Uttar Pradesh'),(45,'Danielle','Bangalore','Karnataka'),(46,'Anne','Delhi','Delhi'),(47,'Shelley','Mumbai','Maharashtra'),(48,'Denise','Lucknow','Uttar Pradesh'),(49,'John','Ahmedabad','Gujarat'),(50,'Tami','Lucknow','Uttar Pradesh'),(51,'Denise','Mumbai','Maharashtra'),(52,'Sonya','Mumbai','Maharashtra'),(53,'Catherine','Patna','Bihar'),(54,'Timothy','Bangalore','Karnataka'),(55,'Juan','Kolkata','West Bengal'),(56,'Corey','Mumbai','Maharashtra'),(57,'Jon','Bangalore','Karnataka'),(58,'Hailey','Bangalore','Karnataka'),(59,'Julie','Kolkata','West Bengal'),(60,'Jason','Patna','Bihar'),(61,'Laurie','Patna','Bihar'),(62,'Clarence','Bangalore','Karnataka'),(63,'Joe','Chennai','Tamil Nadu'),(64,'Brian','Mumbai','Maharashtra'),(65,'Brittany','Kolkata','West Bengal'),(66,'Alicia','Kolkata','West Bengal'),(67,'Katelyn','Delhi','Delhi'),(68,'Taylor','Bangalore','Karnataka'),(69,'Timothy','Lucknow','Uttar Pradesh'),(70,'John','Kolkata','West Bengal'),(71,'Elizabeth','Lucknow','Uttar Pradesh'),(72,'Victoria','Ahmedabad','Gujarat'),(73,'Alicia','Ahmedabad','Gujarat'),(74,'Patricia','Kolkata','West Bengal'),(75,'Debra','Kolkata','West Bengal'),(76,'Jeffrey','Delhi','Delhi'),(77,'Daniel','Chennai','Tamil Nadu'),(78,'Jessica','Patna','Bihar'),(79,'Steven','Ahmedabad','Gujarat'),(80,'Jessica','Delhi','Delhi'),(81,'Lauren','Chennai','Tamil Nadu'),(82,'Jenna','Mumbai','Maharashtra'),(83,'Derrick','Delhi','Delhi'),(84,'Mary','Patna','Bihar'),(85,'Scott','Mumbai','Maharashtra'),(86,'John','Patna','Bihar'),(87,'Tammy','Chennai','Tamil Nadu'),(88,'Katherine','Patna','Bihar'),(89,'Daniel','Kolkata','West Bengal'),(90,'Adam','Patna','Bihar'),(91,'Jessica','Lucknow','Uttar Pradesh'),(92,'Erica','Kolkata','West Bengal'),(93,'Kimberly','Delhi','Delhi'),(94,'Brett','Lucknow','Uttar Pradesh'),(95,'Mitchell','Chennai','Tamil Nadu'),(96,'Katherine','Delhi','Delhi'),(97,'Lauren','Kolkata','West Bengal'),(98,'Tiffany','Chennai','Tamil Nadu'),(99,'Christopher','Chennai','Tamil Nadu'),(100,'Robert','Lucknow','Uttar Pradesh');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_sales`
--

DROP TABLE IF EXISTS `fact_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_sales` (
  `order_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_sales` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_sales`
--

LOCK TABLES `fact_sales` WRITE;
/*!40000 ALTER TABLE `fact_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1001,22,101,4,220000.00),(1002,4,103,1,3000.00),(1003,61,108,5,12500.00),(1004,57,102,3,75000.00),(1005,72,109,4,7200.00),(1006,19,107,1,4000.00),(1007,21,102,3,75000.00),(1008,54,105,2,60000.00),(1009,99,110,2,1800.00),(1010,27,101,1,55000.00),(1011,41,107,2,8000.00),(1012,82,107,4,16000.00),(1013,55,108,1,2500.00),(1014,94,110,4,3600.00),(1015,12,104,2,10000.00),(1016,42,109,2,3600.00),(1017,7,109,3,5400.00),(1018,71,106,4,4800.00),(1019,8,102,1,25000.00),(1020,28,103,3,9000.00),(1021,85,105,4,120000.00),(1022,71,104,2,10000.00),(1023,73,110,3,2700.00),(1024,91,108,1,2500.00),(1025,21,105,4,120000.00),(1026,6,108,4,10000.00),(1027,62,107,2,8000.00),(1028,68,106,5,6000.00),(1029,31,104,1,5000.00),(1030,73,104,2,10000.00),(1031,39,110,1,900.00),(1032,93,101,1,55000.00),(1033,18,101,3,165000.00),(1034,12,110,3,2700.00),(1035,32,105,4,120000.00),(1036,71,101,2,110000.00),(1037,9,106,2,2400.00),(1038,46,105,3,90000.00),(1039,41,102,4,100000.00),(1040,57,109,2,3600.00),(1041,77,107,4,16000.00),(1042,12,102,4,100000.00),(1043,99,101,2,110000.00),(1044,6,103,5,15000.00),(1045,31,109,3,5400.00),(1046,82,106,4,4800.00),(1047,91,104,5,25000.00),(1048,4,103,1,3000.00),(1049,66,110,5,4500.00),(1050,63,110,3,2700.00),(1051,57,107,3,12000.00),(1052,52,104,5,25000.00),(1053,94,104,5,25000.00),(1054,24,102,4,100000.00),(1055,44,109,4,7200.00),(1056,46,109,1,1800.00),(1057,55,110,3,2700.00),(1058,81,102,5,125000.00),(1059,44,102,2,50000.00),(1060,90,102,4,100000.00),(1061,4,107,3,12000.00),(1062,43,108,2,5000.00),(1063,21,108,2,5000.00),(1064,46,102,2,50000.00),(1065,98,109,4,7200.00),(1066,17,105,4,120000.00),(1067,26,109,4,7200.00),(1068,14,101,4,220000.00),(1069,30,102,1,25000.00),(1070,1,103,5,15000.00),(1071,12,109,3,5400.00),(1072,53,101,4,220000.00),(1073,48,103,5,15000.00),(1074,90,105,5,150000.00),(1075,16,103,1,3000.00),(1076,39,101,2,110000.00),(1077,82,109,1,1800.00),(1078,16,108,3,7500.00),(1079,51,102,5,125000.00),(1080,40,109,4,7200.00),(1081,48,110,5,4500.00),(1082,56,109,5,9000.00),(1083,7,102,1,25000.00),(1084,68,101,4,220000.00),(1085,35,107,1,4000.00),(1086,84,102,3,75000.00),(1087,64,110,1,900.00),(1088,98,106,4,4800.00),(1089,16,107,5,20000.00),(1090,26,103,3,9000.00),(1091,83,109,2,3600.00),(1092,5,101,3,165000.00),(1093,94,110,3,2700.00),(1094,63,103,2,6000.00),(1095,70,101,2,110000.00),(1096,78,104,4,20000.00),(1097,31,106,5,6000.00),(1098,22,101,3,165000.00),(1099,30,107,1,4000.00),(1100,12,107,1,4000.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (101,'Laptop','Electronics',55000.00),(102,'Phone','Electronics',25000.00),(103,'Shoes','Fashion',3000.00),(104,'Watch','Fashion',5000.00),(105,'Tablet','Electronics',30000.00),(106,'T-Shirt','Fashion',1200.00),(107,'Headphones','Electronics',4000.00),(108,'Bag','Fashion',2500.00),(109,'Keyboard','Electronics',1800.00),(110,'Mouse','Electronics',900.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-17 20:26:19
