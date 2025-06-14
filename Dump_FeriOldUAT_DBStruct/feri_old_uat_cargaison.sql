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
-- Table structure for table `cargaison`
--

DROP TABLE IF EXISTS `cargaison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargaison` (
  `id` int NOT NULL,
  `date_etabl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `devise_fob_id` int DEFAULT NULL,
  `fret_base` decimal(15,2) DEFAULT NULL,
  `montant_fret` decimal(15,2) DEFAULT NULL,
  `frais_additionnel` decimal(14,2) DEFAULT NULL,
  `montant_assurance` decimal(15,2) NOT NULL,
  `montant_fob` decimal(15,2) NOT NULL,
  `montant_baf` decimal(15,2) NOT NULL,
  `montant_caf` decimal(15,2) NOT NULL,
  `montant_surch_ot_hc` decimal(15,2) NOT NULL,
  `montant_congo_surch` decimal(15,2) NOT NULL,
  `montant_autre_surch` decimal(15,2) NOT NULL,
  `devise_fret_id` int DEFAULT NULL,
  `incoterm_id` int DEFAULT NULL,
  `mode_paie_id` int DEFAULT NULL,
  `feri_id` int DEFAULT NULL,
  `pays_origine_id` int DEFAULT NULL,
  `pays_destination_id` int DEFAULT NULL,
  `poids_total` decimal(15,2) DEFAULT NULL,
  `volume_total` decimal(15,2) DEFAULT NULL,
  `up_total` decimal(15,2) DEFAULT NULL,
  `teu_total` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
