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
-- Table structure for table `produit_export`
--

DROP TABLE IF EXISTS `produit_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit_export` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code_imo_id` int DEFAULT NULL,
  `type_conditionnement_id` int DEFAULT NULL,
  `fere_id` int NOT NULL,
  `chapitre_id` int DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nbrcolis` int DEFAULT NULL,
  `longueur` int DEFAULT NULL,
  `ref_occ_bivac` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `poids` decimal(15,3) DEFAULT NULL,
  `volume` decimal(15,3) DEFAULT NULL,
  `unite_payante` decimal(15,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B5DEDDAE7A58EF18` (`code_imo_id`),
  KEY `IDX_B5DEDDAE6D435DE7` (`type_conditionnement_id`),
  KEY `IDX_B5DEDDAE1FBEEF7B` (`chapitre_id`),
  KEY `IDX_B5DEDDAE3BD990F4` (`fere_id`),
  CONSTRAINT `FK_B5DEDDAE1FBEEF7B` FOREIGN KEY (`chapitre_id`) REFERENCES `chapitre_export` (`id`),
  CONSTRAINT `FK_B5DEDDAE3BD990F4` FOREIGN KEY (`fere_id`) REFERENCES `fere` (`id`),
  CONSTRAINT `FK_B5DEDDAE6D435DE7` FOREIGN KEY (`type_conditionnement_id`) REFERENCES `unite` (`id`),
  CONSTRAINT `FK_B5DEDDAE7A58EF18` FOREIGN KEY (`code_imo_id`) REFERENCES `code_imo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=334251 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-14 18:54:13
