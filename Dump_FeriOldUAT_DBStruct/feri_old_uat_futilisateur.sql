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
-- Table structure for table `futilisateur`
--

DROP TABLE IF EXISTS `futilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `futilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `utilisateur` varchar(10) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `passwd` varchar(24) DEFAULT NULL,
  `sousgroupe` int NOT NULL,
  `codeagportuaire` int NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `indicemvt` varchar(2) NOT NULL DEFAULT 'I',
  `numtel` varchar(50) NOT NULL,
  `adressemail` varchar(50) NOT NULL,
  `fonction` varchar(50) NOT NULL,
  `identite` int NOT NULL,
  `actif` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_AGSGROUP` (`sousgroupe`),
  KEY `FK_AGPORT` (`codeagportuaire`),
  CONSTRAINT `FK_AGPORT` FOREIGN KEY (`codeagportuaire`) REFERENCES `agent_portuaire` (`id`),
  CONSTRAINT `FK_AGSGROUP` FOREIGN KEY (`sousgroupe`) REFERENCES `sousgroupe` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=1530 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
DROP TRIGGER IF EXISTS futilisateur_after_insert;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `futilisateur_after_insert` AFTER INSERT ON `futilisateur` FOR EACH ROW BEGIN
         INSERT INTO app_activity_logs (table_name, row_id, action, new_value, user) 
         VALUES ('futilisateur', NEW.id, 'INSERT', 
			JSON_OBJECT('id', NEW.id, 'utilisateur', NEW.utilisateur, 'nom', NEW.nom, 'passwd', NEW.passwd, 'sousgroupe', NEW.sousgroupe,
			'codeagportuaire', NEW.codeagportuaire, 'role', NEW.role, 'indicemvt', NEW.indicemvt, 'numtel', NEW.numtel, 'adressemail', NEW.adressemail,
			'fonction', NEW.fonction, 'identite', NEW.identite, 'actif', NEW.actif), USER());
     END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
DROP TRIGGER IF EXISTS futilisateur_after_update;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `futilisateur_after_update` AFTER UPDATE ON `futilisateur` FOR EACH ROW BEGIN
         INSERT INTO app_activity_logs (table_name, row_id, action, old_value, new_value, user) 
         VALUES ('futilisateur', NEW.id, 'UPDATE', 
			JSON_OBJECT('id', OLD.id, 'utilisateur', OLD.utilisateur, 'nom', OLD.nom, 'passwd', OLD.passwd, 'sousgroupe', OLD.sousgroupe,
			'codeagportuaire', OLD.codeagportuaire, 'role', OLD.role, 'indicemvt', OLD.indicemvt, 'numtel', OLD.numtel, 'adressemail', OLD.adressemail,
			'fonction', OLD.fonction, 'identite', OLD.identite, 'actif', OLD.actif),
			JSON_OBJECT('id', NEW.id, 'utilisateur', NEW.utilisateur, 'nom', NEW.nom, 'passwd', NEW.passwd, 'sousgroupe', NEW.sousgroupe,
			'codeagportuaire', NEW.codeagportuaire, 'role', NEW.role, 'indicemvt', NEW.indicemvt, 'numtel', NEW.numtel, 'adressemail', NEW.adressemail,
			'fonction', NEW.fonction, 'identite', NEW.identite, 'actif', NEW.actif), USER());
     END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
DROP TRIGGER IF EXISTS futilisateur_after_delete;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `futilisateur_after_delete` AFTER DELETE ON `futilisateur` FOR EACH ROW BEGIN
         INSERT INTO app_activity_logs (table_name, row_id, action, old_value, user) 
         VALUES ('futilisateur', OLD.id, 'DELETE', 
			JSON_OBJECT('id', OLD.id, 'utilisateur', OLD.utilisateur, 'nom', OLD.nom, 'passwd', OLD.passwd, 'sousgroupe', OLD.sousgroupe,
			'codeagportuaire', OLD.codeagportuaire, 'role', OLD.role, 'indicemvt', OLD.indicemvt, 'numtel', OLD.numtel, 'adressemail', OLD.adressemail,
			'fonction', OLD.fonction, 'identite', OLD.identite, 'actif', OLD.actif),
			USER());
     END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-14 18:54:17
