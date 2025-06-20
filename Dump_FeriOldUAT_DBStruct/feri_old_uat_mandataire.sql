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
-- Table structure for table `mandataire`
--

DROP TABLE IF EXISTS `mandataire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mandataire` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(2) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `refcontrat` varchar(100) DEFAULT NULL,
  `logo` longblob,
  `zone` int DEFAULT '0',
  `texte_bas_page` text,
  `numero_facture` int NOT NULL DEFAULT '1',
  `ref_banque` varchar(255) DEFAULT NULL,
  `typemvt` varchar(2) DEFAULT NULL,
  `sigle` varchar(50) DEFAULT NULL,
  `nature` varchar(10) DEFAULT NULL,
  `numero_cion` int NOT NULL DEFAULT '1',
  `actif` smallint NOT NULL DEFAULT '0',
  `categorie` varchar(15) DEFAULT 'partenaires',
  `sous_type` varchar(10) DEFAULT 'externes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
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
