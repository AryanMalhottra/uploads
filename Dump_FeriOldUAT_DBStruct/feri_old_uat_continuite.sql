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
-- Table structure for table `continuite`
--

DROP TABLE IF EXISTS `continuite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `continuite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feri_id` int DEFAULT NULL,
  `mode_transport_id` int DEFAULT NULL,
  `lieu_depart` varchar(255) NOT NULL,
  `date_arrive` timestamp NULL DEFAULT NULL,
  `lieu_arrive` varchar(255) NOT NULL,
  `destination_final` varchar(255) NOT NULL,
  `poids` decimal(15,3) DEFAULT NULL,
  `volume` decimal(15,3) DEFAULT NULL,
  `transitaire` varchar(255) NOT NULL,
  `devise_id` int DEFAULT NULL,
  `representant` varchar(255) DEFAULT NULL,
  `num_declaration` varchar(255) DEFAULT NULL,
  `transporteur` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_declaration` timestamp NULL DEFAULT NULL,
  `montant_fret` decimal(15,3) DEFAULT NULL,
  `agent_maritime_id` int DEFAULT NULL,
  `immatriculation` varchar(65) DEFAULT NULL,
  `numero` varchar(9) DEFAULT NULL,
  `manifeste` varchar(255) DEFAULT NULL,
  `attache` varchar(255) DEFAULT NULL,
  `agent_portuaire_id` int DEFAULT NULL,
  `definite` smallint NOT NULL DEFAULT '0',
  `user_cree` varchar(5) DEFAULT NULL,
  `user_print` varchar(50) DEFAULT NULL,
  `prorata_fret` decimal(15,3) DEFAULT NULL,
  `prorata_fob` decimal(15,3) DEFAULT NULL,
  `prorata_ass` decimal(15,3) DEFAULT NULL,
  `estactif` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E353C15B710F2F4C` (`feri_id`),
  KEY `IDX_E353C15B1305CBCC` (`mode_transport_id`),
  KEY `IDX_E353C15BF4445056` (`devise_id`),
  KEY `IDX_E353C15B8C5B0C5B` (`agent_maritime_id`),
  KEY `IDX_E353C15B456C4359` (`agent_portuaire_id`),
  CONSTRAINT `FK_E353C15B1305CBCC` FOREIGN KEY (`mode_transport_id`) REFERENCES `mode_transport` (`id`),
  CONSTRAINT `FK_E353C15B456C4359` FOREIGN KEY (`agent_portuaire_id`) REFERENCES `agent_portuaire` (`id`),
  CONSTRAINT `FK_E353C15B710F2F4C` FOREIGN KEY (`feri_id`) REFERENCES `feri` (`id`),
  CONSTRAINT `FK_E353C15B8C5B0C5B` FOREIGN KEY (`agent_maritime_id`) REFERENCES `agmaritime` (`id`),
  CONSTRAINT `FK_E353C15BF4445056` FOREIGN KEY (`devise_id`) REFERENCES `devise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157637 DEFAULT CHARSET=latin1;
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
