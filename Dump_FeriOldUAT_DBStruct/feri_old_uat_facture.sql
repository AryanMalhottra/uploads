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
-- Table structure for table `facture`
--

DROP TABLE IF EXISTS `facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facture` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feri_id` int DEFAULT NULL,
  `date_facture` datetime DEFAULT NULL,
  `num_fac` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `montant` double DEFAULT '0',
  `proformat_id` int DEFAULT NULL,
  `ref_preuve` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `code_banque` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date_paiement` datetime DEFAULT NULL,
  `frais_admin` double DEFAULT '0',
  `penalite` double DEFAULT '0',
  `complement` double DEFAULT '0',
  `compteur_note` int NOT NULL DEFAULT '0',
  `devise_paye_id` int DEFAULT NULL,
  `taux_change` double DEFAULT NULL,
  `montant_paye` double DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicite_facture_note` (`feri_id`,`proformat_id`,`complement`),
  KEY `IDX_FE866410710F2F4C` (`feri_id`),
  KEY `IDX_FE866410E91D11FF` (`proformat_id`),
  KEY `IDX_FACDATE1` (`date_facture`),
  KEY `IDX_FE8664107E8E1272` (`devise_paye_id`),
  CONSTRAINT `FK_FE866410710F2F4C` FOREIGN KEY (`feri_id`) REFERENCES `feri` (`id`),
  CONSTRAINT `FK_FE8664107E8E1272` FOREIGN KEY (`devise_paye_id`) REFERENCES `devise` (`id`),
  CONSTRAINT `FK_FE866410E91D11FF` FOREIGN KEY (`proformat_id`) REFERENCES `facture_proformat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=805601 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-14 18:54:16
