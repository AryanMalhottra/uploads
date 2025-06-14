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
-- Table structure for table `commission_intervention`
--

DROP TABLE IF EXISTS `commission_intervention`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commission_intervention` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feri_id` int DEFAULT NULL,
  `continuite_id` int DEFAULT NULL,
  `devise_id` int NOT NULL,
  `montant_fret` double NOT NULL,
  `tva` double NOT NULL,
  `montant_facture` double NOT NULL DEFAULT '0',
  `date_cion` datetime NOT NULL,
  `numero` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `montant_paye` double NOT NULL DEFAULT '0',
  `taux_change` double NOT NULL,
  `is_draft` smallint NOT NULL,
  `taux_fret` double NOT NULL,
  `devise_paie_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5F7E856D710F2F4C` (`feri_id`),
  KEY `IDX_5F7E856D262BE2C3` (`continuite_id`),
  KEY `IDX_5F7E856DF4445056` (`devise_id`),
  KEY `IDX_5F7E856D1E6E85F0` (`devise_paie_id`),
  CONSTRAINT `FK_5F7E856D1E6E85F0` FOREIGN KEY (`devise_paie_id`) REFERENCES `devise` (`id`),
  CONSTRAINT `FK_5F7E856D262BE2C3` FOREIGN KEY (`continuite_id`) REFERENCES `continuite` (`id`),
  CONSTRAINT `FK_5F7E856D710F2F4C` FOREIGN KEY (`feri_id`) REFERENCES `feri` (`id`),
  CONSTRAINT `FK_5F7E856DF4445056` FOREIGN KEY (`devise_id`) REFERENCES `devise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39024 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-14 18:54:17
