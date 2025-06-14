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
-- Table structure for table `souscripteur`
--

DROP TABLE IF EXISTS `souscripteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `souscripteur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `nif` varchar(20) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pays_id` int DEFAULT NULL,
  `type_souscripteur_id` int DEFAULT NULL,
  `rccm` varchar(25) DEFAULT NULL,
  `id_national` varchar(25) DEFAULT NULL,
  `siege_exploitation` varchar(50) DEFAULT NULL,
  `responsable` varchar(100) DEFAULT NULL,
  `libelle_principale` varchar(300) NOT NULL DEFAULT 'RAS',
  `libelle_autre` varchar(300) DEFAULT NULL,
  `secteur_primaire_id` int DEFAULT '0',
  `secteur_secondaire_id` int DEFAULT '0',
  `formejuridique` varchar(50) NOT NULL,
  `etat` varchar(50) NOT NULL,
  `sigle` varchar(50) NOT NULL,
  `emplacement_id` int NOT NULL,
  `servicegestionnaire` varchar(50) NOT NULL DEFAULT 'RAS',
  `is_tva` smallint NOT NULL DEFAULT '1',
  `validite` varchar(50) NOT NULL,
  `idparent` int NOT NULL,
  `typechargeur` varchar(50) NOT NULL,
  `agence` varchar(50) DEFAULT NULL,
  `idactivite_principale` int NOT NULL DEFAULT '0',
  `ca` smallint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_87DB3DFDA6E44244` (`pays_id`),
  KEY `IDX_87DB3DFD5780F2A2` (`type_souscripteur_id`),
  CONSTRAINT `FK_87DB3DFD5780F2A2` FOREIGN KEY (`type_souscripteur_id`) REFERENCES `type_souscripteur` (`id`),
  CONSTRAINT `FK_87DB3DFDA6E44244` FOREIGN KEY (`pays_id`) REFERENCES `pays` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35761 DEFAULT CHARSET=latin1;
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
