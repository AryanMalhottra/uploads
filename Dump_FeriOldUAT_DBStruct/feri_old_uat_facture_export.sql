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
-- Table structure for table `facture_export`
--

DROP TABLE IF EXISTS `facture_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facture_export` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fere_id` int DEFAULT NULL,
  `proformat_export_id` int DEFAULT NULL,
  `date_facture` datetime DEFAULT NULL,
  `num_fac` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `frais_admin` double NOT NULL DEFAULT '0',
  `penalite` double NOT NULL DEFAULT '0',
  `ref_preuve` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date_paiement` datetime DEFAULT NULL,
  `mode_paie_id` int DEFAULT NULL,
  `banque_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_171B04333BD990F4` (`fere_id`),
  KEY `IDX_171B0433D2723B63` (`proformat_export_id`),
  KEY `IDX_171B043362E04A07` (`mode_paie_id`),
  KEY `IDX_171B043337E080D9` (`banque_id`),
  KEY `IDX_FACDATE2` (`date_facture`),
  CONSTRAINT `FK_171B043337E080D9` FOREIGN KEY (`banque_id`) REFERENCES `banques` (`id`),
  CONSTRAINT `FK_171B04333BD990F4` FOREIGN KEY (`fere_id`) REFERENCES `fere` (`id`),
  CONSTRAINT `FK_171B043362E04A07` FOREIGN KEY (`mode_paie_id`) REFERENCES `mode_paiement` (`id`),
  CONSTRAINT `FK_171B0433D2723B63` FOREIGN KEY (`proformat_export_id`) REFERENCES `facture_proformat_export` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=321752 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-14 18:54:10
