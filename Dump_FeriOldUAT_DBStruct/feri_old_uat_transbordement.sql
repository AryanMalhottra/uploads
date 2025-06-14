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
-- Table structure for table `transbordement`
--

DROP TABLE IF EXISTS `transbordement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transbordement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voyage_id` int NOT NULL,
  `date_depart` datetime NOT NULL,
  `date_arrive` datetime NOT NULL,
  `moyen_de_transport` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lieu_depart_id` int DEFAULT NULL,
  `lieu_arrive_id` int DEFAULT NULL,
  `lib_lieu_depart` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lib_lieu_arrive` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `numero_voyage` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `compteur` smallint DEFAULT NULL,
  `mode_transport_id` int DEFAULT NULL,
  `devise_fret_id` int DEFAULT NULL,
  `montant_fret` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BDA395CB68C9E5AF` (`voyage_id`),
  KEY `FK_BDA395CBC16565FC` (`lieu_depart_id`),
  KEY `FK_BDA395CB9B651DFF` (`lieu_arrive_id`),
  KEY `IDX_BDA395CB1305CBCC` (`mode_transport_id`),
  KEY `IDX_BDA395CBB27781CA` (`devise_fret_id`),
  CONSTRAINT `FK_BDA395CB1305CBCC` FOREIGN KEY (`mode_transport_id`) REFERENCES `mode_transport` (`id`),
  CONSTRAINT `FK_BDA395CB68C9E5AF` FOREIGN KEY (`voyage_id`) REFERENCES `feri` (`id`),
  CONSTRAINT `FK_BDA395CB9B651DFF` FOREIGN KEY (`lieu_arrive_id`) REFERENCES `port` (`id`),
  CONSTRAINT `FK_BDA395CBB27781CA` FOREIGN KEY (`devise_fret_id`) REFERENCES `devise` (`id`),
  CONSTRAINT `FK_BDA395CBC16565FC` FOREIGN KEY (`lieu_depart_id`) REFERENCES `port` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78249 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-14 18:54:09
