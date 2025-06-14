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
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pays_id` int DEFAULT NULL,
  `code_imo_id` int DEFAULT NULL,
  `chapitre_id` int NOT NULL,
  `type_conditionnement_id` int DEFAULT NULL,
  `code_harmo_id` int DEFAULT NULL,
  `feri_id` int DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `nbrcolis` int DEFAULT NULL,
  `longueur` int DEFAULT NULL,
  `ref_occ_bivac` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_29A5EC27A6E44244` (`pays_id`),
  KEY `IDX_29A5EC277A58EF18` (`code_imo_id`),
  KEY `IDX_29A5EC276D435DE7` (`type_conditionnement_id`),
  KEY `IDX_29A5EC276F61BF5C` (`code_harmo_id`),
  KEY `IDX_29A5EC27710F2F4C` (`feri_id`),
  KEY `FK_29A5EC271FBEEF7B` (`chapitre_id`),
  CONSTRAINT `FK_29A5EC271FBEEF7B` FOREIGN KEY (`chapitre_id`) REFERENCES `chapproduit` (`id`),
  CONSTRAINT `FK_29A5EC276D435DE7` FOREIGN KEY (`type_conditionnement_id`) REFERENCES `unite` (`id`),
  CONSTRAINT `FK_29A5EC276F61BF5C` FOREIGN KEY (`code_harmo_id`) REFERENCES `code_harmonise` (`id`),
  CONSTRAINT `FK_29A5EC27710F2F4C` FOREIGN KEY (`feri_id`) REFERENCES `feri` (`id`),
  CONSTRAINT `FK_29A5EC277A58EF18` FOREIGN KEY (`code_imo_id`) REFERENCES `code_imo` (`id`),
  CONSTRAINT `FK_29A5EC27A6E44244` FOREIGN KEY (`pays_id`) REFERENCES `pays` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1150642 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
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
