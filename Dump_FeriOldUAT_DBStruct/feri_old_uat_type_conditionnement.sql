-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: feri_old_uat
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `type_conditionnement`
--

DROP TABLE IF EXISTS `type_conditionnement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_conditionnement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mode_id` int DEFAULT NULL,
  `devise_id` int DEFAULT NULL,
  `libelle` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `montant` decimal(15,3) DEFAULT NULL,
  `unite_fact` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `mvt_id` int DEFAULT NULL,
  `montant1` decimal(15,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C87F7E4E77E5854A` (`mode_id`),
  KEY `IDX_C87F7E4EF4445056` (`devise_id`),
  KEY `IDX_C87F7E4E54909D02` (`mvt_id`),
  KEY `IDX_C87F7E4EE6783A1` (`mvt_id`),
  CONSTRAINT `FK_C87F7E4E54909D02` FOREIGN KEY (`mvt_id`) REFERENCES `devise` (`id`),
  CONSTRAINT `FK_C87F7E4E77E5854A` FOREIGN KEY (`mode_id`) REFERENCES `mode_conditionnement` (`id`),
  CONSTRAINT `FK_C87F7E4EE6783A1` FOREIGN KEY (`mvt_id`) REFERENCES `mouvement` (`id`),
  CONSTRAINT `FK_C87F7E4EF4445056` FOREIGN KEY (`devise_id`) REFERENCES `devise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-14 18:54:15
