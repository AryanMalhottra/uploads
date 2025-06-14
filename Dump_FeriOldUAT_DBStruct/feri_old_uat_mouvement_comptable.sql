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
-- Table structure for table `mouvement_comptable`
--

DROP TABLE IF EXISTS `mouvement_comptable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mouvement_comptable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `devise_id` int DEFAULT NULL,
  `mandataire_id` int DEFAULT NULL,
  `banque_id` int DEFAULT NULL,
  `montant` decimal(15,2) DEFAULT NULL,
  `solde_avant` decimal(15,2) DEFAULT NULL,
  `type_mouvement` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `reference` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `libelle_mouvement` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `taux` decimal(10,2) DEFAULT NULL,
  `datemvt` date NOT NULL,
  `soldeantcred` double(10,2) NOT NULL DEFAULT '0.00',
  `soldeantdeb` double(10,2) NOT NULL DEFAULT '0.00',
  `soldeclocred` double(10,2) NOT NULL DEFAULT '0.00',
  `soldeclodeb` double(10,2) NOT NULL DEFAULT '0.00',
  `soldeavantreport` double(10,2) DEFAULT '0.00',
  `piece` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_A85E2E6AF4445056` (`devise_id`),
  KEY `IDX_A85E2E6ACE062FF9` (`mandataire_id`),
  KEY `IDX_A85E2E6A37E080D9` (`banque_id`),
  KEY `IDX_A85E2E6A58207E03` (`mandataire_id`),
  CONSTRAINT `FK_A85E2E6A37E080D9` FOREIGN KEY (`banque_id`) REFERENCES `banques` (`id`),
  CONSTRAINT `FK_A85E2E6A58207E03` FOREIGN KEY (`mandataire_id`) REFERENCES `agent_portuaire` (`id`),
  CONSTRAINT `FK_A85E2E6AF4445056` FOREIGN KEY (`devise_id`) REFERENCES `devise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=231152 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
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
