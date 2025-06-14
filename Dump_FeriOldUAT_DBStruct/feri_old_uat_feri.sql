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
-- Table structure for table `feri`
--

DROP TABLE IF EXISTS `feri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feri` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mvt_id` int DEFAULT NULL,
  `produit_id` int DEFAULT NULL,
  `agent_id` int DEFAULT NULL,
  `mode_transport_id` int DEFAULT NULL,
  `pays_origine_id` int DEFAULT NULL,
  `pays_destination_id` int DEFAULT NULL,
  `mode_paie_id` int DEFAULT NULL,
  `devise_fob_id` int DEFAULT NULL,
  `devise_fret_id` int DEFAULT NULL,
  `incoterm_id` int DEFAULT NULL,
  `numero` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `num_val` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `annee` date DEFAULT NULL,
  `date_crea` date DEFAULT NULL,
  `date_val` date DEFAULT NULL,
  `date_maj` date DEFAULT NULL,
  `num_guice` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `numero_titre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date_etablie` date DEFAULT NULL,
  `nbre20` int DEFAULT NULL,
  `nbre40` int DEFAULT NULL,
  `nbre10` int DEFAULT NULL,
  `nbre_roro` int DEFAULT NULL,
  `volume` decimal(15,3) DEFAULT NULL,
  `poids_net` decimal(15,3) DEFAULT '0.000',
  `poids_brut` decimal(15,3) DEFAULT '0.000',
  `nom_imp` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nif_imp` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `telephone_imp` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `adresse_imp` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email_imp` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fax_imp` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nom_exp` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nif_exp` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `telephone_exp` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fax_exp` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `adresse_exp` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email_exp` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fret_base` decimal(15,2) DEFAULT NULL,
  `montant_fret` decimal(15,2) DEFAULT NULL,
  `montant_assurance` decimal(15,2) DEFAULT NULL,
  `montant_fob` decimal(15,2) DEFAULT NULL,
  `frais_additionnel` decimal(15,2) DEFAULT NULL,
  `up_total` decimal(15,3) DEFAULT NULL,
  `teu_total` decimal(15,2) DEFAULT NULL,
  `montant_baf` decimal(15,2) DEFAULT NULL,
  `montant_caf` decimal(15,2) DEFAULT NULL,
  `montant_surch_ot_hc` decimal(15,2) DEFAULT NULL,
  `montant_congo_surch` decimal(15,2) DEFAULT NULL,
  `montant_autre_surch` decimal(15,2) DEFAULT NULL,
  `fret_redresser` decimal(15,2) DEFAULT NULL,
  `transporteur_id` int DEFAULT NULL,
  `lieu_depart_id` int DEFAULT NULL,
  `lieu_arrive_id` int DEFAULT NULL,
  `date_depart` date DEFAULT NULL,
  `date_arrive` date DEFAULT NULL,
  `representant` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `numero_voyage` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `destination_final` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `moyen_de_transport` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status_id` int DEFAULT '0',
  `user_val` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_cree` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_print` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `valeur_taux` double DEFAULT '1.15',
  `type_status_id` int DEFAULT NULL,
  `scan_titre` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `colissage` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `scan_valeur` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date_redresser` datetime DEFAULT '1970-01-01 00:00:00',
  `user_redresser` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `OldNumero` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_maj` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `numero_titre_svce` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `devise_ass_id` int DEFAULT NULL,
  `devise_aut_id` int DEFAULT NULL,
  `est_annule` tinyint(1) DEFAULT '0',
  `carte_abo` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `est_corrige` tinyint(1) NOT NULL DEFAULT '0',
  `disable` tinyint(1) NOT NULL DEFAULT '0',
  `est_controler_dfm` tinyint(1) NOT NULL DEFAULT '0',
  `est_controler_dtfm` tinyint(1) NOT NULL DEFAULT '0',
  `hash_id_qr` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `estactif` int DEFAULT NULL,
  `estverif` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_HASH_ID_QR` (`hash_id_qr`),
  KEY `IDX_5872BC80E6783A1` (`mvt_id`),
  KEY `IDX_5872BC80F347EFB` (`produit_id`),
  KEY `IDX_5872BC803414710B` (`agent_id`),
  KEY `IDX_5872BC801305CBCC` (`mode_transport_id`),
  KEY `IDX_5872BC80A6A34A66` (`pays_origine_id`),
  KEY `IDX_5872BC80D3356485` (`pays_destination_id`),
  KEY `IDX_5872BC8062E04A07` (`mode_paie_id`),
  KEY `IDX_5872BC803F2BDB8` (`devise_fob_id`),
  KEY `IDX_5872BC80B27781CA` (`devise_fret_id`),
  KEY `IDX_5872BC807055C866` (`incoterm_id`),
  KEY `IDX_5872BC8097C86FA4` (`transporteur_id`),
  KEY `IDX_5872BC80C16565FC` (`lieu_depart_id`),
  KEY `IDX_5872BC809B651DFF` (`lieu_arrive_id`),
  KEY `IDX_5872BC80DF3141AD` (`type_status_id`),
  KEY `IDX_5872BC805342C779` (`devise_ass_id`),
  KEY `IDX_5872BC8041D50A60` (`devise_aut_id`),
  CONSTRAINT `FK_5872BC801305CBCC` FOREIGN KEY (`mode_transport_id`) REFERENCES `mode_transport` (`id`),
  CONSTRAINT `FK_5872BC803414710B` FOREIGN KEY (`agent_id`) REFERENCES `agent_portuaire` (`id`),
  CONSTRAINT `FK_5872BC803F2BDB8` FOREIGN KEY (`devise_fob_id`) REFERENCES `devise` (`id`),
  CONSTRAINT `FK_5872BC8041D50A60` FOREIGN KEY (`devise_aut_id`) REFERENCES `devise` (`id`),
  CONSTRAINT `FK_5872BC805342C779` FOREIGN KEY (`devise_ass_id`) REFERENCES `devise` (`id`),
  CONSTRAINT `FK_5872BC8062E04A07` FOREIGN KEY (`mode_paie_id`) REFERENCES `mode_paiement` (`id`),
  CONSTRAINT `FK_5872BC807055C866` FOREIGN KEY (`incoterm_id`) REFERENCES `incoterm` (`id`),
  CONSTRAINT `FK_5872BC8097C86FA4` FOREIGN KEY (`transporteur_id`) REFERENCES `transporteur` (`id`),
  CONSTRAINT `FK_5872BC809B651DFF` FOREIGN KEY (`lieu_arrive_id`) REFERENCES `port` (`id`),
  CONSTRAINT `FK_5872BC80A6A34A66` FOREIGN KEY (`pays_origine_id`) REFERENCES `pays` (`id`),
  CONSTRAINT `FK_5872BC80B27781CA` FOREIGN KEY (`devise_fret_id`) REFERENCES `devise` (`id`),
  CONSTRAINT `FK_5872BC80C16565FC` FOREIGN KEY (`lieu_depart_id`) REFERENCES `port` (`id`),
  CONSTRAINT `FK_5872BC80D3356485` FOREIGN KEY (`pays_destination_id`) REFERENCES `pays` (`id`),
  CONSTRAINT `FK_5872BC80DF3141AD` FOREIGN KEY (`type_status_id`) REFERENCES `type_status` (`id`),
  CONSTRAINT `FK_5872BC80E6783A1` FOREIGN KEY (`mvt_id`) REFERENCES `mouvement` (`id`),
  CONSTRAINT `FK_5872BC80F347EFB` FOREIGN KEY (`produit_id`) REFERENCES `mandataire` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=910070 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-14 18:54:12
