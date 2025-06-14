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
-- Table structure for table `detail_conditionnement`
--

DROP TABLE IF EXISTS `detail_conditionnement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_conditionnement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_condition_id` int DEFAULT NULL,
  `mode_conteneur_id` int DEFAULT NULL,
  `feri_id` int NOT NULL,
  `numero` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `numero_scelle` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `poids` decimal(15,3) DEFAULT NULL,
  `poid_net` decimal(15,3) DEFAULT NULL,
  `volume` decimal(15,3) DEFAULT NULL,
  `unite_payante` decimal(15,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_320C7F8CF3429B3` (`type_condition_id`),
  KEY `IDX_320C7F8C7DE7AA84` (`mode_conteneur_id`),
  KEY `IDX_320C7F8C710F2F4C` (`feri_id`),
  CONSTRAINT `FK_320C7F8C710F2F4C` FOREIGN KEY (`feri_id`) REFERENCES `feri` (`id`),
  CONSTRAINT `FK_320C7F8C7DE7AA84` FOREIGN KEY (`mode_conteneur_id`) REFERENCES `modele_conteneur` (`id`),
  CONSTRAINT `FK_320C7F8CF3429B3` FOREIGN KEY (`type_condition_id`) REFERENCES `type_conditionnement` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1295473 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-14 18:54:11
