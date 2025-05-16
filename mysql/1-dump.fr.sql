-- MariaDB dump 10.19  Distrib 10.6.17-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: lutece
-- ------------------------------------------------------
-- Server version	10.6.17-MariaDB-1:10.6.17+maria~ubu2004

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE database lutece;
USE lutece;

--
-- Table structure for table `appointment_appointment`
--

DROP TABLE IF EXISTS `appointment_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_appointment` (
  `id_appointment` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(45) DEFAULT NULL,
  `nb_places` int(11) NOT NULL DEFAULT 0,
  `is_cancelled` tinyint(1) NOT NULL DEFAULT 0,
  `id_action_cancelled` int(11) DEFAULT NULL,
  `id_action_reported` int(11) DEFAULT NULL,
  `notification` int(11) NOT NULL DEFAULT 0,
  `id_admin_user` int(11) DEFAULT 0,
  `date_appointment_create` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_access_code_create` varchar(100) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `is_surbooked` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_appointment`),
  UNIQUE KEY `reference_idx` (`reference`),
  KEY `fk_appointment_appointment_appointment_user_idx` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_appointment`
--

LOCK TABLES `appointment_appointment` WRITE;
/*!40000 ALTER TABLE `appointment_appointment` DISABLE KEYS */;
INSERT INTO `appointment_appointment` VALUES (1,'1f42f1b5e',1,0,2,4,0,0,'2024-02-09 13:44:46',NULL,1,0),(2,'27209b899',1,0,2,4,0,0,'2024-02-09 14:42:42',NULL,2,0),(3,'307de7871',1,0,2,4,0,0,'2024-02-09 14:49:21','admin',3,0),(4,'45078fbd0',1,0,2,4,0,0,'2024-02-28 15:34:30',NULL,4,0),(5,'5facef2e3',1,0,2,4,0,0,'2024-02-28 15:46:02',NULL,5,0),(6,'66e496225',1,0,2,4,0,0,'2024-02-28 15:53:07',NULL,6,0),(7,'72603ed23',1,0,2,4,0,0,'2024-02-28 15:55:29',NULL,7,0),(8,'832bee60d',1,0,2,4,0,0,'2024-02-29 09:55:53',NULL,8,0),(9,'956cce199',1,0,2,4,0,0,'2024-02-29 15:50:33','admin',9,0),(10,'10270795a1',1,0,2,4,0,0,'2024-02-29 15:55:51','admin',10,0),(11,'11d4fbdbdc',1,0,2,4,0,0,'2024-02-29 15:59:10','admin',11,0),(12,'124d3d3dd3',1,0,2,4,0,0,'2024-02-29 16:11:30','admin',12,0),(13,'131830eb6c',1,0,2,4,0,0,'2024-03-01 13:19:47',NULL,13,0),(14,'147009507d',1,0,2,4,0,0,'2024-03-01 13:35:06','admin',14,0),(15,'15fe52817e',1,0,2,4,0,0,'2024-03-01 15:11:41',NULL,15,0),(16,'16339f91d6',1,0,2,4,0,0,'2024-03-01 15:12:49',NULL,16,0),(17,'177bd64a8d',1,0,2,4,0,0,'2024-03-05 09:54:07',NULL,17,0),(18,'18239f10cf',1,0,2,4,0,0,'2024-05-23 16:27:44','admin',18,0),(19,'19068fd1dc',1,0,2,4,0,0,'2024-05-23 16:29:15','admin',19,0),(20,'20ce9e1a66',1,0,2,4,0,0,'2024-05-23 16:30:23','admin',20,0),(21,'21b4d294a1',1,0,2,4,0,0,'2024-05-23 16:31:01','admin',21,0),(22,'22b557a23c',1,0,2,4,0,0,'2024-05-23 16:32:15','admin',22,0),(23,'233e93c5fd',1,0,2,4,0,0,'2024-05-23 16:33:35','admin',23,0),(24,'24a0b49222',1,0,2,4,0,0,'2025-01-23 09:42:38',NULL,24,0),(25,'25e34ba33c',1,0,2,4,0,0,'2025-01-23 09:43:53',NULL,25,0),(26,'26b5fe664c',1,0,2,4,0,0,'2025-01-23 09:44:30',NULL,26,0),(27,'27f0d6faa1',1,0,2,4,0,0,'2025-01-23 09:45:00',NULL,27,0),(28,'28dda79ddb',1,0,2,4,0,0,'2025-01-23 09:45:37',NULL,28,0),(29,'29921921b8',1,0,2,4,0,0,'2025-01-23 09:46:12',NULL,29,0),(30,'30e9c07e5b',1,0,2,4,0,0,'2025-01-23 09:48:30',NULL,30,0),(31,'313aca4d81',1,0,2,4,0,0,'2025-01-23 09:49:17',NULL,31,0),(32,'32bed77f25',1,0,2,4,0,0,'2025-01-23 09:49:48',NULL,32,0),(33,'33840245ea',1,0,2,4,0,0,'2025-01-23 09:50:20',NULL,33,0),(34,'34c049bb6f',1,0,2,4,0,0,'2025-01-23 09:52:03',NULL,34,0),(35,'35fa09bdd0',1,0,2,4,0,0,'2025-01-23 09:52:45',NULL,35,0),(36,'368f2c82ef',1,0,2,4,0,0,'2025-01-23 09:53:20',NULL,36,0),(37,'37623f7e22',1,0,2,4,0,0,'2025-01-23 09:53:49',NULL,37,0),(38,'38b77c42af',1,0,2,4,0,0,'2025-01-23 09:54:37',NULL,38,0),(39,'39006d8674',1,0,2,4,0,0,'2025-01-23 09:55:12',NULL,39,0),(40,'4014a69453',1,0,2,4,0,0,'2025-01-23 09:55:42',NULL,40,0),(41,'4127aad033',1,0,2,4,0,0,'2025-01-23 09:56:15',NULL,41,0),(42,'42b94c7aca',1,0,2,4,0,0,'2025-01-23 09:57:12',NULL,42,0),(43,'43443ad8ca',1,0,2,4,0,0,'2025-01-23 09:58:29',NULL,43,0),(44,'446896393b',1,0,2,4,0,0,'2025-01-23 09:59:06',NULL,44,0),(45,'45e2bfef25',1,0,2,4,0,0,'2025-01-23 10:00:05',NULL,45,0),(46,'46e3cdc1b7',1,0,2,4,0,0,'2025-01-23 10:02:40',NULL,46,0);
/*!40000 ALTER TABLE `appointment_appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_appointment_response`
--

DROP TABLE IF EXISTS `appointment_appointment_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_appointment_response` (
  `id_appointment_response` int(11) NOT NULL AUTO_INCREMENT,
  `id_response` int(11) NOT NULL,
  `id_appointment` int(11) NOT NULL,
  PRIMARY KEY (`id_appointment_response`),
  UNIQUE KEY `appointment_appointment_response_unique` (`id_appointment`,`id_response`),
  KEY `fk_appointment_appointment_response_appointment_appointment_idx` (`id_appointment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_appointment_response`
--

LOCK TABLES `appointment_appointment_response` WRITE;
/*!40000 ALTER TABLE `appointment_appointment_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_appointment_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_appointment_slot`
--

DROP TABLE IF EXISTS `appointment_appointment_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_appointment_slot` (
  `id_appointment` int(11) NOT NULL,
  `id_slot` int(11) NOT NULL,
  `nb_places` int(11) NOT NULL,
  PRIMARY KEY (`id_appointment`,`id_slot`),
  KEY `fk_appointment_appointment_slot_slot` (`id_slot`),
  KEY `idx_appointment_slot` (`id_appointment`,`id_slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_appointment_slot`
--

LOCK TABLES `appointment_appointment_slot` WRITE;
/*!40000 ALTER TABLE `appointment_appointment_slot` DISABLE KEYS */;
INSERT INTO `appointment_appointment_slot` VALUES (1,4,1),(2,6,1),(3,7,1),(4,12,1),(5,13,1),(6,14,1),(7,15,1),(8,18,1),(9,20,1),(10,21,1),(11,13,1),(12,17,1),(13,22,1),(14,25,1),(15,26,1),(16,27,1),(17,29,1),(18,37,1),(19,38,1),(20,39,1),(21,40,1),(22,41,1),(23,42,1),(24,90,1),(25,91,1),(26,92,1),(27,93,1),(28,94,1),(29,95,1),(30,96,1),(31,97,1),(32,98,1),(33,99,1),(34,100,1),(35,101,1),(36,102,1),(37,103,1),(38,104,1),(39,105,1),(40,106,1),(41,107,1),(42,108,1),(43,109,1),(44,110,1),(45,111,1),(46,112,1);
/*!40000 ALTER TABLE `appointment_appointment_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_calendar_template`
--

DROP TABLE IF EXISTS `appointment_calendar_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_calendar_template` (
  `id_calendar_template` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `template_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id_calendar_template`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_calendar_template`
--

LOCK TABLES `appointment_calendar_template` WRITE;
/*!40000 ALTER TABLE `appointment_calendar_template` DISABLE KEYS */;
INSERT INTO `appointment_calendar_template` VALUES (1,'Calendrier','Calendrier des créneaux disponibles et indisponibles','skin/plugins/appointment/calendar/appointment_form_calendar.html'),(2,'Calendrier jours ouverts','Calendrier des créneaux disponibles et indisponibles (jours ouverts)','skin/plugins/appointment/calendar/appointment_form_calendar_opendays.html'),(3,'Liste des creneaux disponibles','Liste des créneaux disponibles','skin/plugins/appointment/calendar/appointment_form_list_open_slots.html'),(4,'Liste des creneaux disponibles jours ouverts','Liste des créneaux disponibles (jours ouverts)','skin/plugins/appointment/calendar/appointment_form_list_open_slots_opendays.html'),(5,'Liste des creneaux disponible regroupés','Liste des creneaux disponible regroupés','skin/plugins/appointment/calendar/appointment_form_list_open_slots_grouped.html');
/*!40000 ALTER TABLE `appointment_calendar_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_category`
--

DROP TABLE IF EXISTS `appointment_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_category` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `nb_max_appointments_per_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_category`),
  UNIQUE KEY `appointment_category_unique_label` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_category`
--

LOCK TABLES `appointment_category` WRITE;
/*!40000 ALTER TABLE `appointment_category` DISABLE KEYS */;
INSERT INTO `appointment_category` VALUES (1,'Avocats',1);
/*!40000 ALTER TABLE `appointment_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_closing_day`
--

DROP TABLE IF EXISTS `appointment_closing_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_closing_day` (
  `id_closing_day` int(11) NOT NULL AUTO_INCREMENT,
  `date_of_closing_day` date NOT NULL,
  `id_form` int(11) NOT NULL,
  PRIMARY KEY (`id_closing_day`),
  UNIQUE KEY `appointment_closing_day_unique` (`id_form`,`date_of_closing_day`),
  KEY `fk_appointment_closing_day_appointment_form_idx` (`id_form`),
  KEY `date_of_closing_day` (`date_of_closing_day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_closing_day`
--

LOCK TABLES `appointment_closing_day` WRITE;
/*!40000 ALTER TABLE `appointment_closing_day` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_closing_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_comment`
--

DROP TABLE IF EXISTS `appointment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_comment` (
  `id_comment` int(11) NOT NULL AUTO_INCREMENT,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `starting_validity_date` date NOT NULL,
  `starting_validity_time` time DEFAULT NULL,
  `ending_validity_date` date NOT NULL,
  `ending_validity_time` time DEFAULT NULL,
  `comment` mediumtext NOT NULL,
  `comment_creation_date` date NOT NULL,
  `comment_user_creator` varchar(255) NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `fk_appointment_comment` (`id_form`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_comment`
--

LOCK TABLES `appointment_comment` WRITE;
/*!40000 ALTER TABLE `appointment_comment` DISABLE KEYS */;
INSERT INTO `appointment_comment` VALUES (1,1,'2024-08-15','00:00:00','2024-08-15','00:00:00','<p>Jour f&eacute;ri&eacute;</p>','2024-05-22','admin'),(2,1,'2024-07-16','00:00:00','2024-07-16','00:00:00','<p>Ferm&eacute; le matin pour cause de travaux</p>','2024-05-23','admin'),(3,1,'2025-06-04','00:00:00','2025-06-04','00:00:00','<p>Fermeture exceptionnelle</p>','2025-01-23','admin'),(4,1,'2025-05-01','00:00:00','2025-05-01','00:00:00','<p>Fermeture exceptionnelle</p>','2025-01-23','admin'),(5,1,'2025-05-08','00:00:00','2025-05-08','00:00:00','<p>Fermeture exceptionnelle</p>','2025-01-23','admin'),(6,1,'2025-06-09','00:00:00','2025-06-09','00:00:00','<p>Fermeture exceptionnelle</p>','2025-01-23','admin');
/*!40000 ALTER TABLE `appointment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_comment_notification_cf`
--

DROP TABLE IF EXISTS `appointment_comment_notification_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_comment_notification_cf` (
  `notify_type` varchar(45) NOT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_comment_notification_cf`
--

LOCK TABLES `appointment_comment_notification_cf` WRITE;
/*!40000 ALTER TABLE `appointment_comment_notification_cf` DISABLE KEYS */;
INSERT INTO `appointment_comment_notification_cf` VALUES ('CREATE','noreplay','Notification comment appointment',' '),('DELETE','noreplay','Notification comment appointment',' '),('UPDATE','noreplay','Notification comment appointment',' ');
/*!40000 ALTER TABLE `appointment_comment_notification_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_display`
--

DROP TABLE IF EXISTS `appointment_display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_display` (
  `id_display` int(11) NOT NULL AUTO_INCREMENT,
  `display_title_fo` tinyint(1) NOT NULL DEFAULT 0,
  `icon_form_content` mediumblob DEFAULT NULL,
  `icon_form_mime_type` varchar(255) DEFAULT NULL,
  `nb_weeks_to_display` int(11) NOT NULL DEFAULT 0,
  `is_displayed_on_portlet` tinyint(1) NOT NULL DEFAULT 1,
  `id_calendar_template` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  PRIMARY KEY (`id_display`),
  UNIQUE KEY `appointment_display_unique` (`id_form`),
  KEY `fk_appointment_display_appointment_calendar_template_idx` (`id_calendar_template`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_display`
--

LOCK TABLES `appointment_display` WRITE;
/*!40000 ALTER TABLE `appointment_display` DISABLE KEYS */;
INSERT INTO `appointment_display` VALUES (1,0,'','NULL',6,1,4,1);
/*!40000 ALTER TABLE `appointment_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_form`
--

DROP TABLE IF EXISTS `appointment_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_form` (
  `id_form` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `starting_validity_date` date DEFAULT NULL,
  `ending_validity_date` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `id_workflow` int(11) DEFAULT NULL,
  `workgroup` varchar(255) DEFAULT NULL,
  `is_multislot_appointment` tinyint(1) NOT NULL DEFAULT 0,
  `role_fo` varchar(255) DEFAULT NULL,
  `capacity_per_slot` int(11) NOT NULL DEFAULT 0,
  `nb_consecutive_slots` int(11) NOT NULL DEFAULT 1,
  `is_anonymizable` tinyint(1) NOT NULL DEFAULT 0,
  `anonymization_pattern` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_form`),
  KEY `starting_validity_date_idx` (`starting_validity_date`),
  KEY `ending_validity_date_idx` (`ending_validity_date`),
  KEY `fk_appointment_form_appointment_category_idx` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_form`
--

LOCK TABLES `appointment_form` WRITE;
/*!40000 ALTER TABLE `appointment_form` DISABLE KEYS */;
INSERT INTO `appointment_form` VALUES (1,'Permanences juridiques','Permanence de conseil d\'un avocat en droit du logement, travail, etc. dans le cadre de l\'heure de consultation gratuite','',1,'2024-01-01',NULL,1,1,'all',0,'none',3,1,1,'%f');
/*!40000 ALTER TABLE `appointment_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_form_message`
--

DROP TABLE IF EXISTS `appointment_form_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_form_message` (
  `id_form_message` int(11) NOT NULL AUTO_INCREMENT,
  `calendar_title` varchar(255) NOT NULL,
  `field_firstname_title` varchar(255) NOT NULL,
  `field_firstname_help` varchar(255) NOT NULL,
  `field_lastname_title` varchar(255) NOT NULL,
  `field_lastname_help` varchar(255) NOT NULL,
  `field_email_title` varchar(255) NOT NULL,
  `field_email_help` varchar(255) NOT NULL,
  `field_confirmationEmail_title` varchar(255) NOT NULL,
  `field_confirmationEmail_help` varchar(255) NOT NULL,
  `text_appointment_created` mediumtext NOT NULL,
  `url_redirect_after_creation` varchar(255) NOT NULL,
  `text_appointment_canceled` mediumtext NOT NULL,
  `label_button_redirection` varchar(255) NOT NULL,
  `no_available_slot` varchar(255) NOT NULL,
  `calendar_description` mediumtext NOT NULL,
  `calendar_reserve_label` varchar(255) NOT NULL,
  `calendar_full_label` varchar(255) NOT NULL,
  `id_form` int(11) NOT NULL,
  PRIMARY KEY (`id_form_message`),
  KEY `fk_appointment_form_message_appointment_form_idx` (`id_form`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_form_message`
--

LOCK TABLES `appointment_form_message` WRITE;
/*!40000 ALTER TABLE `appointment_form_message` DISABLE KEYS */;
INSERT INTO `appointment_form_message` VALUES (1,'Choisir une date','Prénom','','Nom','','Email','','Confirmation Email','','Votre demande de rendez-vous a bien été créée avec la reference %%REF%%','jsp/site/Portal.jsp','Votre demande de rendez-vous a bien été annulée','Terminer','Aucun créneau disponible n\'a été trouvé. Veuillez réitérer votre recherche ultérieurement.','','Réserver','Complet',1);
/*!40000 ALTER TABLE `appointment_form_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_form_portlet`
--

DROP TABLE IF EXISTS `appointment_form_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_form_portlet` (
  `id_portlet` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  PRIMARY KEY (`id_portlet`,`id_form`),
  KEY `fk_appointment_form_portlet_appointment_form_idx` (`id_form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_form_portlet`
--

LOCK TABLES `appointment_form_portlet` WRITE;
/*!40000 ALTER TABLE `appointment_form_portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_form_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_form_rule`
--

DROP TABLE IF EXISTS `appointment_form_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_form_rule` (
  `id_form_rule` int(11) NOT NULL AUTO_INCREMENT,
  `is_captcha_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `is_mandatory_email_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `is_active_authentication` tinyint(1) NOT NULL DEFAULT 0,
  `nb_days_before_new_appointment` int(11) NOT NULL DEFAULT 0,
  `min_time_before_appointment` int(11) NOT NULL DEFAULT 0,
  `nb_max_appointments_per_user` int(11) NOT NULL DEFAULT 0,
  `nb_days_for_max_appointments_per_user` int(11) NOT NULL DEFAULT 0,
  `bo_overbooking` tinyint(1) NOT NULL DEFAULT 0,
  `id_form` int(11) NOT NULL,
  PRIMARY KEY (`id_form_rule`),
  UNIQUE KEY `appointment_form_rule_unique` (`id_form`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_form_rule`
--

LOCK TABLES `appointment_form_rule` WRITE;
/*!40000 ALTER TABLE `appointment_form_rule` DISABLE KEYS */;
INSERT INTO `appointment_form_rule` VALUES (1,0,0,0,0,0,0,0,0,1);
/*!40000 ALTER TABLE `appointment_form_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_localization`
--

DROP TABLE IF EXISTS `appointment_localization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_localization` (
  `id_localization` int(11) NOT NULL AUTO_INCREMENT,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `id_form` int(11) NOT NULL,
  PRIMARY KEY (`id_localization`),
  KEY `fk_appointment_localization_appointment_form_idx` (`id_form`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_localization`
--

LOCK TABLES `appointment_localization` WRITE;
/*!40000 ALTER TABLE `appointment_localization` DISABLE KEYS */;
INSERT INTO `appointment_localization` VALUES (1,2.36535,48.8551,'Place des Vosges 75004 Paris',1);
/*!40000 ALTER TABLE `appointment_localization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_reservation_rule`
--

DROP TABLE IF EXISTS `appointment_reservation_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_reservation_rule` (
  `id_reservation_rule` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 1,
  `max_capacity_per_slot` int(11) NOT NULL DEFAULT 0,
  `max_people_per_appointment` int(11) NOT NULL DEFAULT 0,
  `duration_appointments` int(11) NOT NULL DEFAULT 15,
  `id_form` int(11) NOT NULL,
  PRIMARY KEY (`id_reservation_rule`),
  KEY `fk_appointment_reservation_rule_appointment_form_idx` (`id_form`),
  KEY `fk_appointment_working_day_appointment_reservation_rule_idx` (`id_reservation_rule`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_reservation_rule`
--

LOCK TABLES `appointment_reservation_rule` WRITE;
/*!40000 ALTER TABLE `appointment_reservation_rule` DISABLE KEYS */;
INSERT INTO `appointment_reservation_rule` VALUES (1,'Période scolaire','Période de forte affluence avec une capacité de réception adaptée','#491af4',1,3,1,60,1),(2,'Vacances scolaires','Période de plus faible affluence avec capacité de réception adaptée','#36d941',1,1,1,60,1);
/*!40000 ALTER TABLE `appointment_reservation_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_slot`
--

DROP TABLE IF EXISTS `appointment_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_slot` (
  `id_slot` int(11) NOT NULL AUTO_INCREMENT,
  `starting_date_time` timestamp NULL DEFAULT NULL,
  `ending_date_time` timestamp NULL DEFAULT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT 1,
  `is_specific` tinyint(1) NOT NULL DEFAULT 0,
  `max_capacity` int(11) NOT NULL DEFAULT 0,
  `nb_remaining_places` int(11) NOT NULL DEFAULT 0,
  `nb_potential_remaining_places` int(11) NOT NULL DEFAULT 0,
  `nb_places_taken` int(11) NOT NULL DEFAULT 0,
  `id_form` int(11) NOT NULL,
  PRIMARY KEY (`id_slot`),
  UNIQUE KEY `appointment_slot_unique_starting` (`id_form`,`starting_date_time`),
  UNIQUE KEY `appointment_slot_unique_ending` (`id_form`,`ending_date_time`),
  KEY `fk_appointment_slot_appointment_form_idx` (`id_form`),
  KEY `starting_date_time_idx` (`starting_date_time`),
  KEY `ending_date_time_idx` (`ending_date_time`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_slot`
--

LOCK TABLES `appointment_slot` WRITE;
/*!40000 ALTER TABLE `appointment_slot` DISABLE KEYS */;
INSERT INTO `appointment_slot` VALUES (1,'2024-02-08 09:00:00','2024-02-08 10:00:00',1,0,3,3,3,0,1),(2,'2024-02-09 09:00:00','2024-02-09 10:00:00',1,0,3,3,3,0,1),(3,'2024-02-08 12:00:00','2024-02-08 13:00:00',1,0,3,3,3,0,1),(4,'2024-02-12 10:00:00','2024-02-12 11:00:00',1,0,3,2,2,1,1),(5,'2024-02-13 09:00:00','2024-02-13 10:00:00',1,0,3,3,3,0,1),(6,'2024-02-15 09:00:00','2024-02-15 10:00:00',1,0,3,2,2,1,1),(7,'2024-02-13 10:00:00','2024-02-13 11:00:00',1,0,3,2,2,1,1),(8,'2024-02-15 16:00:00','2024-02-15 17:00:00',1,0,3,3,3,0,1),(9,'2024-02-16 12:00:00','2024-02-16 13:00:00',1,0,3,3,3,0,1),(10,'2024-02-09 16:00:00','2024-02-09 17:00:00',1,0,3,3,3,0,1),(11,'2024-02-09 17:00:00','2024-02-09 18:00:00',1,0,3,3,3,0,1),(12,'2024-02-29 10:00:00','2024-02-29 11:00:00',1,0,3,2,2,1,1),(13,'2024-03-01 09:00:00','2024-03-01 10:00:00',1,0,3,1,1,2,1),(14,'2024-03-01 12:00:00','2024-03-01 13:00:00',1,0,3,2,2,1,1),(15,'2024-02-29 17:00:00','2024-02-29 18:00:00',1,0,3,2,2,1,1),(16,'2024-02-29 09:00:00','2024-02-29 10:00:00',1,0,3,3,3,0,1),(17,'2024-03-04 09:00:00','2024-03-04 10:00:00',1,0,3,2,2,1,1),(18,'2024-02-29 15:00:00','2024-02-29 16:00:00',1,0,3,2,2,1,1),(19,'2024-03-01 13:00:00','2024-03-01 14:00:00',1,0,3,3,3,0,1),(20,'2024-03-01 11:00:00','2024-03-01 12:00:00',1,0,3,2,2,1,1),(21,'2024-03-01 10:00:00','2024-03-01 11:00:00',1,0,3,2,2,1,1),(22,'2024-03-18 09:00:00','2024-03-18 10:00:00',1,0,3,2,2,1,1),(23,'2024-03-01 15:00:00','2024-03-01 16:00:00',1,0,3,3,3,0,1),(24,'2024-03-05 09:00:00','2024-03-05 10:00:00',1,0,3,3,3,0,1),(25,'2024-03-07 09:00:00','2024-03-07 10:00:00',1,0,3,2,2,1,1),(26,'2024-03-01 16:00:00','2024-03-01 17:00:00',1,0,3,2,2,1,1),(27,'2024-03-01 17:00:00','2024-03-01 18:00:00',1,0,3,2,2,1,1),(28,'2024-03-08 09:00:00','2024-03-08 10:00:00',1,0,3,3,3,0,1),(29,'2024-03-08 10:00:00','2024-03-08 11:00:00',1,0,3,2,2,1,1),(30,'2024-05-24 09:00:00','2024-05-24 10:00:00',1,0,3,3,3,0,1),(31,'2024-08-15 10:00:00','2024-08-15 11:00:00',0,1,1,1,1,0,1),(32,'2024-08-15 11:00:00','2024-08-15 12:00:00',0,1,1,1,1,0,1),(33,'2024-08-15 12:00:00','2024-08-15 13:00:00',0,1,1,1,1,0,1),(34,'2024-08-15 13:00:00','2024-08-15 14:00:00',0,1,1,1,1,0,1),(35,'2024-08-15 14:00:00','2024-08-15 15:00:00',0,1,1,1,1,0,1),(36,'2024-08-15 15:00:00','2024-08-15 16:00:00',0,1,1,1,1,0,1),(37,'2024-05-31 09:00:00','2024-05-31 10:00:00',1,0,3,2,2,1,1),(38,'2024-06-13 09:00:00','2024-06-13 10:00:00',1,0,3,2,2,1,1),(39,'2024-07-18 11:00:00','2024-07-18 12:00:00',1,0,1,0,0,1,1),(40,'2024-08-29 10:00:00','2024-08-29 11:00:00',1,0,1,0,0,1,1),(41,'2024-10-24 11:00:00','2024-10-24 12:00:00',1,0,3,2,2,1,1),(42,'2024-11-14 16:00:00','2024-11-14 17:00:00',1,0,3,2,2,1,1),(43,'2024-07-16 10:00:00','2024-07-16 11:00:00',0,1,1,1,1,0,1),(44,'2024-07-16 11:00:00','2024-07-16 12:00:00',0,1,1,1,1,0,1),(45,'2024-07-16 12:00:00','2024-07-16 13:00:00',0,1,1,1,1,0,1),(46,'2024-07-16 13:00:00','2024-07-16 14:00:00',0,1,1,1,1,0,1),(47,'2024-05-24 11:00:00','2024-05-24 12:00:00',1,0,3,3,0,0,1),(48,'2025-04-22 08:00:00','2025-04-22 09:00:00',0,1,1,1,1,0,1),(49,'2025-04-22 09:00:00','2025-04-22 10:00:00',0,1,1,1,1,0,1),(50,'2025-04-22 10:00:00','2025-04-22 11:00:00',0,1,1,1,1,0,1),(51,'2025-04-22 11:00:00','2025-04-22 12:00:00',0,1,1,1,1,0,1),(52,'2025-04-22 12:00:00','2025-04-22 13:00:00',0,1,1,1,1,0,1),(53,'2025-04-22 13:00:00','2025-04-22 14:00:00',0,1,1,1,1,0,1),(54,'2025-05-01 07:00:00','2025-05-01 08:00:00',0,1,3,3,3,0,1),(55,'2025-05-01 08:00:00','2025-05-01 09:00:00',0,1,3,3,3,0,1),(56,'2025-05-01 09:00:00','2025-05-01 10:00:00',0,1,3,3,3,0,1),(57,'2025-05-01 10:00:00','2025-05-01 11:00:00',0,1,3,3,3,0,1),(58,'2025-05-01 11:00:00','2025-05-01 12:00:00',0,1,3,3,3,0,1),(59,'2025-05-01 12:00:00','2025-05-01 13:00:00',0,1,3,3,3,0,1),(60,'2025-05-01 13:00:00','2025-05-01 14:00:00',0,1,3,3,3,0,1),(61,'2025-05-01 14:00:00','2025-05-01 15:00:00',0,1,3,3,3,0,1),(62,'2025-05-01 15:00:00','2025-05-01 16:00:00',0,1,3,3,3,0,1),(63,'2025-05-08 07:00:00','2025-05-08 08:00:00',0,1,3,3,3,0,1),(64,'2025-05-08 08:00:00','2025-05-08 09:00:00',0,1,3,3,3,0,1),(65,'2025-05-08 09:00:00','2025-05-08 10:00:00',0,1,3,3,3,0,1),(66,'2025-05-08 10:00:00','2025-05-08 11:00:00',0,1,3,3,3,0,1),(67,'2025-05-08 11:00:00','2025-05-08 12:00:00',0,1,3,3,3,0,1),(68,'2025-05-08 12:00:00','2025-05-08 13:00:00',0,1,3,3,3,0,1),(69,'2025-05-08 13:00:00','2025-05-08 14:00:00',0,1,3,3,3,0,1),(70,'2025-05-08 14:00:00','2025-05-08 15:00:00',0,1,3,3,3,0,1),(71,'2025-05-08 15:00:00','2025-05-08 16:00:00',0,1,3,3,3,0,1),(72,'2025-05-29 07:00:00','2025-05-29 08:00:00',0,1,3,3,3,0,1),(73,'2025-05-29 08:00:00','2025-05-29 09:00:00',0,1,3,3,3,0,1),(74,'2025-05-29 09:00:00','2025-05-29 10:00:00',0,1,3,3,3,0,1),(75,'2025-05-29 10:00:00','2025-05-29 11:00:00',0,1,3,3,3,0,1),(76,'2025-05-29 11:00:00','2025-05-29 12:00:00',0,1,3,3,3,0,1),(77,'2025-05-29 12:00:00','2025-05-29 13:00:00',0,1,3,3,3,0,1),(78,'2025-05-29 13:00:00','2025-05-29 14:00:00',0,1,3,3,3,0,1),(79,'2025-05-29 14:00:00','2025-05-29 15:00:00',0,1,3,3,3,0,1),(80,'2025-05-29 15:00:00','2025-05-29 16:00:00',0,1,3,3,3,0,1),(81,'2025-06-09 07:00:00','2025-06-09 08:00:00',0,1,3,3,3,0,1),(82,'2025-06-09 08:00:00','2025-06-09 09:00:00',0,1,3,3,3,0,1),(83,'2025-06-09 09:00:00','2025-06-09 10:00:00',0,1,3,3,3,0,1),(84,'2025-06-09 10:00:00','2025-06-09 11:00:00',0,1,3,3,3,0,1),(85,'2025-06-09 11:00:00','2025-06-09 12:00:00',0,1,3,3,3,0,1),(86,'2025-06-09 12:00:00','2025-06-09 13:00:00',0,1,3,3,3,0,1),(87,'2025-06-09 13:00:00','2025-06-09 14:00:00',0,1,3,3,3,0,1),(88,'2025-06-09 14:00:00','2025-06-09 15:00:00',0,1,3,3,3,0,1),(89,'2025-06-09 15:00:00','2025-06-09 16:00:00',0,1,3,3,3,0,1),(90,'2025-01-24 08:00:00','2025-01-24 09:00:00',1,0,3,2,2,1,1),(91,'2025-02-06 11:00:00','2025-02-06 12:00:00',1,0,3,2,2,1,1),(92,'2025-02-11 09:00:00','2025-02-11 10:00:00',1,0,3,2,2,1,1),(93,'2025-02-13 16:00:00','2025-02-13 17:00:00',1,0,3,2,2,1,1),(94,'2025-02-07 16:00:00','2025-02-07 17:00:00',1,0,3,2,2,1,1),(95,'2025-02-04 12:00:00','2025-02-04 13:00:00',1,0,3,2,2,1,1),(96,'2025-03-04 08:00:00','2025-03-04 09:00:00',1,0,3,2,2,1,1),(97,'2025-03-18 12:00:00','2025-03-18 13:00:00',1,0,3,2,2,1,1),(98,'2025-04-03 12:00:00','2025-04-03 13:00:00',1,0,3,2,2,1,1),(99,'2025-04-17 09:00:00','2025-04-17 10:00:00',1,0,1,0,0,1,1),(100,'2025-03-11 12:00:00','2025-03-11 13:00:00',1,0,3,2,2,1,1),(101,'2025-01-23 13:00:00','2025-01-23 14:00:00',1,0,3,2,2,1,1),(102,'2025-04-01 09:00:00','2025-04-01 10:00:00',1,0,3,2,2,1,1),(103,'2025-04-10 09:00:00','2025-04-10 10:00:00',1,0,3,2,2,1,1),(104,'2025-04-24 09:00:00','2025-04-24 10:00:00',1,0,1,0,0,1,1),(105,'2025-04-29 14:00:00','2025-04-29 15:00:00',1,0,3,2,2,1,1),(106,'2025-04-01 13:00:00','2025-04-01 14:00:00',1,0,3,2,2,1,1),(107,'2025-02-13 10:00:00','2025-02-13 11:00:00',1,0,3,2,2,1,1),(108,'2025-05-06 10:00:00','2025-05-06 11:00:00',1,0,3,2,2,1,1),(109,'2025-03-14 11:00:00','2025-03-14 12:00:00',1,0,3,2,2,1,1),(110,'2025-05-30 07:00:00','2025-05-30 08:00:00',1,0,3,2,2,1,1),(111,'2025-06-05 07:00:00','2025-06-05 08:00:00',1,0,3,2,2,1,1),(112,'2025-04-15 11:00:00','2025-04-15 12:00:00',1,0,1,0,0,1,1);
/*!40000 ALTER TABLE `appointment_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_time_slot`
--

DROP TABLE IF EXISTS `appointment_time_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_time_slot` (
  `id_time_slot` int(11) NOT NULL AUTO_INCREMENT,
  `starting_time` time NOT NULL,
  `ending_time` time NOT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT 1,
  `max_capacity` int(11) NOT NULL DEFAULT 0,
  `id_working_day` int(11) NOT NULL,
  PRIMARY KEY (`id_time_slot`),
  UNIQUE KEY `appointment_time_slot_unique_starting` (`id_working_day`,`starting_time`),
  UNIQUE KEY `appointment_time_slot_unique_ending` (`id_working_day`,`ending_time`),
  KEY `fk_appointment_time_slot_appointment_working_day_idx` (`id_working_day`),
  KEY `starting_time_idx` (`starting_time`),
  KEY `ending_time_idx` (`ending_time`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_time_slot`
--

LOCK TABLES `appointment_time_slot` WRITE;
/*!40000 ALTER TABLE `appointment_time_slot` DISABLE KEYS */;
INSERT INTO `appointment_time_slot` VALUES (1,'09:00:00','10:00:00',1,3,1),(2,'10:00:00','11:00:00',1,3,1),(3,'11:00:00','12:00:00',1,3,1),(4,'12:00:00','13:00:00',1,3,1),(5,'13:00:00','14:00:00',1,3,1),(6,'14:00:00','15:00:00',1,3,1),(7,'15:00:00','16:00:00',1,3,1),(8,'16:00:00','17:00:00',1,3,1),(9,'17:00:00','18:00:00',1,3,1),(10,'09:00:00','10:00:00',1,3,2),(11,'10:00:00','11:00:00',1,3,2),(12,'11:00:00','12:00:00',1,3,2),(13,'12:00:00','13:00:00',1,3,2),(14,'13:00:00','14:00:00',1,3,2),(15,'14:00:00','15:00:00',1,3,2),(16,'15:00:00','16:00:00',1,3,2),(17,'16:00:00','17:00:00',1,3,2),(18,'17:00:00','18:00:00',1,3,2),(19,'09:00:00','10:00:00',1,3,3),(20,'10:00:00','11:00:00',1,3,3),(21,'11:00:00','12:00:00',1,3,3),(22,'12:00:00','13:00:00',1,3,3),(23,'13:00:00','14:00:00',1,3,3),(24,'14:00:00','15:00:00',1,3,3),(25,'15:00:00','16:00:00',1,3,3),(26,'16:00:00','17:00:00',1,3,3),(27,'17:00:00','18:00:00',1,3,3),(28,'09:00:00','10:00:00',1,3,4),(29,'10:00:00','11:00:00',1,3,4),(30,'11:00:00','12:00:00',1,3,4),(31,'12:00:00','13:00:00',1,3,4),(32,'13:00:00','14:00:00',1,3,4),(33,'14:00:00','15:00:00',1,3,4),(34,'15:00:00','16:00:00',1,3,4),(35,'16:00:00','17:00:00',1,3,4),(36,'17:00:00','18:00:00',1,3,4),(37,'10:00:00','11:00:00',1,1,5),(38,'11:00:00','12:00:00',1,1,5),(39,'12:00:00','13:00:00',1,1,5),(40,'13:00:00','14:00:00',1,1,5),(41,'14:00:00','15:00:00',1,1,5),(42,'15:00:00','16:00:00',1,1,5),(43,'10:00:00','11:00:00',1,1,6),(44,'11:00:00','12:00:00',1,1,6),(45,'12:00:00','13:00:00',1,1,6),(46,'13:00:00','14:00:00',1,1,6),(47,'14:00:00','15:00:00',1,1,6),(48,'15:00:00','16:00:00',1,1,6);
/*!40000 ALTER TABLE `appointment_time_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_user`
--

DROP TABLE IF EXISTS `appointment_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `email_idx` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_user`
--

LOCK TABLES `appointment_user` WRITE;
/*!40000 ALTER TABLE `appointment_user` DISABLE KEYS */;
INSERT INTO `appointment_user` VALUES (1,'foo.bar@citelibre.org','Foo','Bar','foo.bar@citelibre.org',NULL),(2,'jane.doe@citelibre.org','Jane','Doe','jane.doe@citelibre.org',NULL),(3,'conrad.adams@citelibre.org','Conrad','Adams','conrad.adams@citelibre.org',NULL),(4,'conrad.adams@citelibre.org','Conrad','Adams','conrad.adams@citelibre.org',NULL),(5,'bruce.dickinson@citelibre.org','Bruce','Dickinson','bruce.dickinson@citelibre.org',NULL),(6,'agent.smith@citelibre.org','Agent','Smith','agent.smith@citelibre.org',NULL),(7,'al.capone@citelibre.org','Al','Capone','al.capone@citelibre.org',NULL),(8,'henriette.michu@citelibre.org','Henriette','Michu','henriette.michu@citelibre.org',NULL),(9,'pete.blake@citelibre.org','Pete','Blake','pete.blake@citelibre.org',NULL),(10,'joe.jackson@citelibre.org','Joe','Jackson','joe.jackson@citelibre.org',NULL),(11,'billy.zekid@citelibre.org','Billy','Zekid','billy.zekid@citelibre.org',NULL),(12,'sarah.connor@citelibre.org','Sarah','Connor','sarah.connor@citelibre.org',NULL),(13,'carl.knox@citelibre.org','Carl','knox','carl.knox@citelibre.org',NULL),(14,'anna.nasse@citelibre.org','Anna','Nasse','anna.nasse@citelibre.org',NULL),(15,'jill.morisson@citelibre.org','Jill','Morisson','jill.morisson@citelibre.org',NULL),(16,'joan.jett@citelibre.org','Joan','Jett','joan.jett@citelibre.org',NULL),(17,'marge.simpson@citelibre.org','Marge','Simpson','marge.simpson@citelibre.org',NULL),(18,NULL,'Peter','Parker','peter.parker@citelibre.org',NULL),(19,NULL,'Wade','Wilson','wade.wilson@citelibre.org',NULL),(20,NULL,'Harley','Quinn','harley.quinn@citelibre.org',NULL),(21,NULL,'Bruce','Banner','bruce.banner@citelibre.org',NULL),(22,NULL,'Wayne','Campbell','wayne.campbell@citelibre.org',NULL),(23,NULL,'Maximus','Decimus Meridius','maximus.decimus.meridius@citelibre.org',NULL),(24,NULL,'Andy','Dufresne','andy.dufresne@citelibre.org',NULL),(25,NULL,'Michael','Corleone','michael.corleone@citelibre.org',NULL),(26,NULL,'Frodon','Sacquet','frodon.sacquet@citelibre.org',NULL),(27,NULL,'Wallace','Mia','mia.wallace@citelibre.org',NULL),(28,NULL,'Obi-wan','Kenobi','obi-wan.kenobi@citelibre.org',NULL),(29,NULL,'Leia','Organa','leia.organa@citelibre.org',NULL),(30,NULL,'Luke','Skywalker','luke.skywalker@citelibre.org',NULL),(31,NULL,'Clarice','Tarling','clarice.tarling@citelibre.org',NULL),(32,NULL,'Marty','McFly','marty.mcfly@citelibre.org',NULL),(33,NULL,'Mathilda','Lando','mathilda.lando@citelibre.org',NULL),(34,NULL,'Mary Jane','Watson','mary-jane.watson@citelibre.org',NULL),(35,NULL,'Keyser','Söze','keyser.soze@citelibre.org',NULL),(36,NULL,'Ellen','Ripley','ellen.ripley@citelibre.org',NULL),(37,NULL,'Indiana','Jones','indiana.jones@citelibre.org',NULL),(38,NULL,'Wendy','Torrance','wendy.torrance@citelibre.org',NULL),(39,NULL,'Bryan','Mills','bryan.mills@citelibre.org',NULL),(40,NULL,'Tony','Montana','tony.montana@citelibre.org',NULL),(41,NULL,'Amélie','Poulain','amelie.poulain@citelibre.org',NULL),(42,NULL,'John','McClane','john.mcclane@citelibre.org',NULL),(43,NULL,'Truman','Burbank','truman.burbank@citelibre.org',NULL),(44,NULL,'Maverick','Mitchell','maverick.mitchell@citelibre.org',NULL),(45,NULL,'Beatrix','Kiddo','beatrix.kiddo@citelibre.org',NULL),(46,NULL,'Hermione','Granger','hermione.granger@citelibre.org',NULL);
/*!40000 ALTER TABLE `appointment_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_week_definition`
--

DROP TABLE IF EXISTS `appointment_week_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_week_definition` (
  `id_week_definition` int(11) NOT NULL AUTO_INCREMENT,
  `id_reservation_rule` int(11) NOT NULL,
  `date_of_apply` date NOT NULL,
  `ending_date_of_apply` date NOT NULL,
  PRIMARY KEY (`id_week_definition`),
  UNIQUE KEY `appointment_week_definition_unique_date` (`id_reservation_rule`,`date_of_apply`),
  KEY `date_of_apply_idx` (`date_of_apply`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_week_definition`
--

LOCK TABLES `appointment_week_definition` WRITE;
/*!40000 ALTER TABLE `appointment_week_definition` DISABLE KEYS */;
INSERT INTO `appointment_week_definition` VALUES (2,1,'2024-09-01','2025-02-16'),(3,1,'2024-01-01','2024-06-30'),(4,2,'2024-07-01','2024-08-31'),(6,2,'2025-02-17','2025-03-02'),(7,2,'2025-04-14','2025-04-27'),(8,2,'2025-07-07','2025-08-31'),(9,1,'2025-03-03','2025-04-13'),(10,1,'2025-04-28','2025-07-06'),(11,2,'2025-10-20','2025-11-02'),(12,1,'2025-09-01','2025-10-19'),(13,1,'2025-11-03','2025-12-21'),(14,2,'2025-12-22','2025-12-31');
/*!40000 ALTER TABLE `appointment_week_definition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_working_day`
--

DROP TABLE IF EXISTS `appointment_working_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_working_day` (
  `id_working_day` int(11) NOT NULL AUTO_INCREMENT,
  `day_of_week` int(11) NOT NULL,
  `id_reservation_rule` int(11) NOT NULL,
  PRIMARY KEY (`id_working_day`),
  UNIQUE KEY `appointment_working_day_unique` (`id_reservation_rule`,`day_of_week`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_working_day`
--

LOCK TABLES `appointment_working_day` WRITE;
/*!40000 ALTER TABLE `appointment_working_day` DISABLE KEYS */;
INSERT INTO `appointment_working_day` VALUES (1,1,1),(2,2,1),(3,4,1),(4,5,1),(5,2,2),(6,4,2);
/*!40000 ALTER TABLE `appointment_working_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointmentgru_`
--

DROP TABLE IF EXISTS `appointmentgru_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointmentgru_` (
  `id_appointmentgru` int(11) NOT NULL,
  `guid` varchar(50) NOT NULL DEFAULT '',
  `cuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_appointmentgru`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointmentgru_`
--

LOCK TABLES `appointmentgru_` WRITE;
/*!40000 ALTER TABLE `appointmentgru_` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointmentgru_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_dashboard`
--

DROP TABLE IF EXISTS `core_admin_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_dashboard` (
  `dashboard_name` varchar(100) NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`dashboard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_dashboard`
--

LOCK TABLES `core_admin_dashboard` WRITE;
/*!40000 ALTER TABLE `core_admin_dashboard` DISABLE KEYS */;
INSERT INTO `core_admin_dashboard` VALUES ('autoIncludesAdminDashboardComponent',1,4),('editorAdminDashboardComponent',1,3),('featuresAdminDashboardComponent',1,5),('myluteceAuthenticationFilterAdminDashboardComponent',1,3),('searchAdminDashboardComponent',1,2),('usersAdminDashboardComponent',1,1),('workflowAdminDashboardComponent',1,1),('xslExportAdminDashboardComponent',1,6);
/*!40000 ALTER TABLE `core_admin_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_mailinglist`
--

DROP TABLE IF EXISTS `core_admin_mailinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_mailinglist` (
  `id_mailinglist` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `workgroup` varchar(50) NOT NULL,
  PRIMARY KEY (`id_mailinglist`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_mailinglist`
--

LOCK TABLES `core_admin_mailinglist` WRITE;
/*!40000 ALTER TABLE `core_admin_mailinglist` DISABLE KEYS */;
INSERT INTO `core_admin_mailinglist` VALUES (1,'admin','admin','all');
/*!40000 ALTER TABLE `core_admin_mailinglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_mailinglist_filter`
--

DROP TABLE IF EXISTS `core_admin_mailinglist_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_mailinglist_filter` (
  `id_mailinglist` int(11) NOT NULL DEFAULT 0,
  `workgroup` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id_mailinglist`,`workgroup`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_mailinglist_filter`
--

LOCK TABLES `core_admin_mailinglist_filter` WRITE;
/*!40000 ALTER TABLE `core_admin_mailinglist_filter` DISABLE KEYS */;
INSERT INTO `core_admin_mailinglist_filter` VALUES (1,'all','super_admin');
/*!40000 ALTER TABLE `core_admin_mailinglist_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_right`
--

DROP TABLE IF EXISTS `core_admin_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_right` (
  `id_right` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `level_right` smallint(6) DEFAULT NULL,
  `admin_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_updatable` int(11) NOT NULL DEFAULT 0,
  `plugin_name` varchar(50) DEFAULT NULL,
  `id_feature_group` varchar(50) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `documentation_url` varchar(255) DEFAULT NULL,
  `id_order` int(11) DEFAULT NULL,
  `is_external_feature` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_right`),
  KEY `index_right` (`level_right`,`admin_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_right`
--

LOCK TABLES `core_admin_right` WRITE;
/*!40000 ALTER TABLE `core_admin_right` DISABLE KEYS */;
INSERT INTO `core_admin_right` VALUES ('APPOINTMENT_CALENDAR_TEMPLATE','appointment.adminFeature.manageCalendarTemplates.name',0,'jsp/admin/plugins/appointment/ManageCalendarTemplates.jsp','appointment.adminFeature.manageCalendarTemplates.name',0,'appointment','STYLE',NULL,NULL,5,0),('APPOINTMENT_CATEGORY_MANAGEMENT','appointment.adminFeature.manageCategories.name',2,'jsp/admin/plugins/appointment/ManageAppointmentCategory.jsp','appointment.adminFeature.manageCategories.name',0,'appointment','APPLICATIONS',NULL,NULL,3,0),('APPOINTMENT_COMMENT_MANAGEMENT','appointment.adminFeature.manageComment.name',2,'jsp/admin/plugins/appointment/Comments.jsp','appointment.adminFeature.manageComment.name',0,'appointment','APPLICATIONS',NULL,NULL,4,0),('APPOINTMENT_FORM_MANAGEMENT','appointment.adminFeature.ManageAppointmentForm.name',2,'jsp/admin/plugins/appointment/ManageAppointmentForms.jsp','appointment.adminFeature.ManageAppointmentForm.description',0,'appointment','APPLICATIONS',NULL,NULL,2,0),('CORE_ADMINDASHBOARD_MANAGEMENT','portal.admindashboard.adminFeature.right_management.name',0,NULL,'portal.admindashboard.adminFeature.right_management.description',0,'','SYSTEM','ti ti-dashboard',NULL,1,0),('CORE_ADMIN_SITE','portal.site.adminFeature.admin_site.name',2,'jsp/admin/site/AdminSite.jsp','portal.site.adminFeature.admin_site.description',1,NULL,'SITE','ti ti-home-edit','jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-site',1,0),('CORE_CACHE_MANAGEMENT','portal.system.adminFeature.cache_management.name',0,'jsp/admin/system/ManageCaches.jsp','portal.system.adminFeature.cache_management.description',1,'','SYSTEM','ti ti-clock-edit',NULL,0,0),('CORE_DAEMONS_MANAGEMENT','portal.system.adminFeature.daemons_management.name',0,'jsp/admin/system/ManageDaemons.jsp','portal.system.adminFeature.daemons_management.description',0,'','SYSTEM','ti ti-timeline-event',NULL,0,0),('CORE_DASHBOARD_MANAGEMENT','portal.dashboard.adminFeature.dashboard_management.name',0,NULL,'portal.dashboard.adminFeature.dashboard_management.description',0,'','SYSTEM','ti ti-layout-dashboard',NULL,2,0),('CORE_EDITORS_MANAGEMENT','portal.admindashboard.editorManagement.right.name',2,NULL,'portal.admindashboard.editorManagement.right.description',1,'','SYSTEM','ti ti-tools',NULL,3,0),('CORE_FEATURES_MANAGEMENT','portal.admin.adminFeature.features_management.name',0,NULL,'portal.admin.adminFeature.features_management.description',0,'','SYSTEM','ti ti-apps',NULL,0,0),('CORE_LEVEL_RIGHT_MANAGEMENT','portal.users.adminFeature.level_right_management.name',2,NULL,'portal.users.adminFeature.level_right_management.description',0,'','MANAGERS','ti ti-list-detail',NULL,2,0),('CORE_LINK_SERVICE_MANAGEMENT','portal.insert.adminFeature.linkService_management.name',2,NULL,'portal.insert.adminFeature.linkService_management.description',0,NULL,NULL,'ti ti-link',NULL,1,0),('CORE_LOGS_VISUALISATION','portal.system.adminFeature.logs_visualisation.name',0,'jsp/admin/system/ManageFilesSystem.jsp','portal.system.adminFeature.logs_visualisation.description',1,'','SYSTEM','ti ti-list-search',NULL,0,0),('CORE_MAILINGLISTS_MANAGEMENT','portal.mailinglist.adminFeature.mailinglists_management.name',2,'jsp/admin/mailinglist/ManageMailingLists.jsp','portal.mailinglist.adminFeature.mailinglists_management.description',0,'','MANAGERS','ti ti-mail-cog',NULL,3,0),('CORE_PAGE_TEMPLATE_MANAGEMENT','portal.style.adminFeature.page_template_management.name',0,'jsp/admin/style/ManagePageTemplates.jsp','portal.style.adminFeature.page_template_management.description',0,'','STYLE','ti ti-layout-board',NULL,1,0),('CORE_PLUGINS_MANAGEMENT','portal.system.adminFeature.plugins_management.name',0,'jsp/admin/system/ManagePlugins.jsp','portal.system.adminFeature.plugins_management.description',1,'','SYSTEM','ti ti-apps-filled',NULL,0,0),('CORE_PROPERTIES_MANAGEMENT','portal.site.adminFeature.properties_management.name',2,'jsp/admin/ManageProperties.jsp','portal.site.adminFeature.properties_management.description',0,NULL,'SITE','ti ti-checklist','jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-properties',2,0),('CORE_RBAC_MANAGEMENT','portal.rbac.adminFeature.rbac_management.name',0,'jsp/admin/rbac/ManageRoles.jsp','portal.rbac.adminFeature.rbac_management.description',0,'','MANAGERS','ti ti-user-check',NULL,0,0),('CORE_RIGHT_MANAGEMENT','portal.users.adminFeature.right_management.name',0,'jsp/admin/features/ManageRights.jsp','portal.users.adminFeature.right_management.description',0,'','MANAGERS','ti ti-gavel',NULL,4,0),('CORE_ROLES_MANAGEMENT','portal.role.adminFeature.roles_management.name',2,'jsp/admin/role/ManagePageRole.jsp','portal.role.adminFeature.roles_management.description',0,'',NULL,'ti ti-list-check',NULL,9,0),('CORE_SEARCH_INDEXATION','portal.search.adminFeature.indexer.name',0,'jsp/admin/search/ManageSearchIndexation.jsp','portal.search.adminFeature.indexer.description',0,'','SYSTEM','ti ti-settings-search',NULL,0,0),('CORE_SEARCH_MANAGEMENT','portal.search.adminFeature.search_management.name',0,NULL,'portal.search.adminFeature.search_management.description',0,'','SYSTEM','ti ti-database-search',NULL,0,0),('CORE_STYLESHEET_MANAGEMENT','portal.style.adminFeature.stylesheet_management.name',0,'jsp/admin/style/ManageStyleSheets.jsp','portal.style.adminFeature.stylesheet_management.description',1,'','STYLE','ti ti-file-code',NULL,2,0),('CORE_STYLES_MANAGEMENT','portal.style.adminFeature.styles_management.name',0,'jsp/admin/style/ManageStyles.jsp','portal.style.adminFeature.styles_management.description',1,'','STYLE','ti ti-brush',NULL,3,0),('CORE_TEMPLATES_AUTO_INCLUDES_MANAGEMENT','portal.templates.adminFeature.ManageAutoIncludes.name',1,NULL,'portal.templates.adminFeature.ManageAutoIncludes.description',1,'','STYLE','ti ti-code-circle-2',NULL,4,0),('CORE_USERS_MANAGEMENT','portal.users.adminFeature.users_management.name',2,'jsp/admin/user/ManageUsers.jsp','portal.users.adminFeature.users_management.description',1,'','MANAGERS','ti ti-users',NULL,0,0),('CORE_WORKGROUPS_MANAGEMENT','portal.workgroup.adminFeature.workgroups_management.name',2,'jsp/admin/workgroup/ManageWorkgroups.jsp','portal.workgroup.adminFeature.workgroups_management.description',0,'','MANAGERS','ti ti-users-group',NULL,1,0),('CORE_XSL_EXPORT_MANAGEMENT','portal.xsl.adminFeature.xsl_export_management.name',2,NULL,'portal.xsl.adminFeature.xsl_export_management.description',1,'','SYSTEM','ti ti-file-export',NULL,4,0),('ELASTICDATA_MANAGEMENT','elasticdata.adminFeature.ManageElasticData.name',0,'jsp/admin/plugins/elasticdata/ManageElasticData.jsp','elasticdata.adminFeature.ManageElasticData.description',0,'elasticdata',NULL,NULL,NULL,11,0),('ENTRY_TYPE_MANAGEMENT','genericattributes.adminFeature.manageEntryType.name',1,'jsp/admin/plugins/genericattributes/ManageEntryType.jsp','genericattributes.adminFeature.manageEntryType.description',0,'genericattributes','MANAGERS',NULL,NULL,8,0),('HTMLPAGE_MANAGEMENT','htmlpage.adminFeature.htmlpage_management.name',2,'jsp/admin/plugins/htmlpage/ManageHtmlPage.jsp','htmlpage.adminFeature.htmlpage_management.description',0,'htmlpage','SITE',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-htmlpage',3,0),('IDENTITYSTORE_ADMIN_MANAGEMENT','identitystore.adminFeature.AdminIdentities.name',1,'jsp/admin/plugins/identitystore/ManageClientApplications.jsp','identitystore.adminFeature.AdminIdentities.description',0,'identitystore',NULL,NULL,NULL,4,0),('IDENTITYSTORE_MANAGEMENT','identitystore.adminFeature.ManageIdentities.name',1,'jsp/admin/plugins/identitystore/ManageIdentities.jsp','identitystore.adminFeature.ManageIdentities.description',0,'identitystore',NULL,NULL,NULL,4,0),('KIBANA_MANAGEMENT','kibana.adminFeature.KibanaDashboard.name',0,'jsp/admin/plugins/kibana/KibanaDashboard.jsp','kibana.adminFeature.KibanaDashboard.description',0,'kibana','APPLICATIONS',NULL,NULL,6,0),('KIBANA_RBAC_MANAGEMENT','kibana.adminFeature.ManageKibana.name',1,'jsp/admin/plugins/kibana/ManageDashboards.jsp','kibana.adminFeature.ManageKibana.description',0,'kibana',NULL,NULL,NULL,10,0),('MATOMO_MANAGEMENT','matomo.adminFeature.ManageMatomo.name',2,'jsp/admin/plugins/matomo/Matomo.jsp','matomo.adminFeature.ManageMatomo.description',0,'matomo','SITE',NULL,NULL,4,0),('MULTIVIEW_APPOINTMENT','module.appointment.management.adminFeature.MultiviewAppointment.name',2,'jsp/admin/plugins/appointment/modules/management/MultiviewAppointment.jsp','module.appointment.management.adminFeature.MultiviewAppointment.description',0,'appointment-management','APPLICATIONS',NULL,NULL,1,0),('MYDASHBOARD_PANEL_MANAGEMENT','mydashboard.adminFeature.ManageMydashboardPanel.name',0,'jsp/admin/plugins/mydashboard/ManageMyDashboardPanel.jsp','mydashboard.adminFeature.ManageMydashboardPanel.description',0,'mydashboard','STYLE',NULL,NULL,6,0),('MYLUTECE_MANAGEMENT','mylutece.adminFeature.mylutece_management.name',2,'jsp/admin/plugins/mylutece/ManageMylutece.jsp','mylutece.adminFeature.mylutece_management.description',0,'mylutece',NULL,NULL,NULL,5,0),('MYLUTECE_MANAGE_AUTHENTICATION_FILTER','mylutece.adminFeature.mylutece_management_authentication_filter.name',3,'jsp/admin/plugins/mylutece/security/ManageAuthenticationFilter.jsp','mylutece.adminFeature.mylutece_management_authentication_filter.description',0,'mylutece',NULL,NULL,NULL,7,0),('MYLUTECE_MANAGE_EXTERNAL_APPLICATION','mylutece.adminFeature.mylutece_management_external_application.name',3,'jsp/admin/plugins/mylutece/ManageExternalApplicationUser.jsp','mylutece.adminFeature.mylutece_management_external_application.description',0,'mylutece',NULL,NULL,NULL,6,0),('PROFILES_MANAGEMENT','profiles.adminFeature.profiles_management.name',0,'jsp/admin/plugins/profiles/ManageProfiles.jsp','profiles.adminFeature.profiles_management.description',0,'profiles','MANAGERS',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-profiles',7,0),('PROFILES_VIEWS_MANAGEMENT','profiles.adminFeature.views_management.name',0,'jsp/admin/plugins/profiles/ManageViews.jsp','profiles.adminFeature.views_management.description',0,'profiles','STYLE',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-profiles',7,0),('REFERENCELIST_MANAGEMENT','referencelist.adminFeature.ReferenceListManage.name',0,'jsp/admin/plugins/referencelist/ManageReferences.jsp','referencelist.adminFeature.ReferenceListManage.description',0,'referencelist',NULL,NULL,NULL,8,0),('REGULAR_EXPRESSION_MANAGEMENT','regularexpression.adminFeature.regularexpression_management.name',0,'jsp/admin/plugins/regularexpression/ManageRegularExpression.jsp','regularexpression.adminFeature.regularexpression_management.description',0,'regularexpression','SYSTEM',NULL,NULL,15,0),('SITELABELS_MANAGEMENT','sitelabels.adminFeature.ManageSiteLabels.name',0,'jsp/admin/plugins/sitelabels/ManageLabels.jsp','sitelabels.adminFeature.ManageSiteLabels.description',0,'sitelabels','SITE',NULL,NULL,5,0),('SOLR_CONFIGURATION_MANAGEMENT','search.solr.adminFeature.configuration.title',1,'jsp/admin/search/solr/ManageSearchConfiguration.jsp','search.solr.adminFeature.configuration.description',0,'solr','SYSTEM',NULL,'',13,0),('SOLR_FIELDS_MANAGEMENT','search.solr.adminFeature.fields.title',1,'jsp/admin/search/solr/ManageSolrFields.jsp','search.solr.adminFeature.fields.description',0,'solr','SYSTEM',NULL,'',14,0),('SOLR_INDEX_MANAGEMENT','search.solr.adminFeature.title',1,'jsp/admin/search/solr/ManageSearchIndexation.jsp','search.solr.adminFeature.description',0,'solr','SYSTEM',NULL,'',12,0),('SYSTEMINFO_MANAGEMENT','systeminfo.adminFeature.systeminfo_management.name',0,'jsp/admin/plugins/systeminfo/ManageSystemInfo.jsp','systeminfo.adminFeature.systeminfo_management.description',0,'systeminfo','SYSTEM',NULL,NULL,16,0),('VIEW_TEMP_FILES','filegenerator.adminFeature.temporary_files.name',2,'jsp/admin/plugins/filegenerator/ManageMyFiles.jsp','filegenerator.adminFeature.temporary_files.description',0,'','APPLICATIONS',NULL,NULL,7,0),('WORKFLOW_MANAGEMENT','workflow.adminFeature.workflow_management.name',3,'jsp/admin/plugins/workflow/ManageWorkflow.jsp','workflow.adminFeature.workflow_management.description',0,'workflow','APPLICATIONS',NULL,NULL,5,0);
/*!40000 ALTER TABLE `core_admin_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_role`
--

DROP TABLE IF EXISTS `core_admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_role` (
  `role_key` varchar(50) NOT NULL DEFAULT '',
  `role_description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`role_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_role`
--

LOCK TABLES `core_admin_role` WRITE;
/*!40000 ALTER TABLE `core_admin_role` DISABLE KEYS */;
INSERT INTO `core_admin_role` VALUES ('all_site_manager','Site Manager'),('assign_groups','Assigner des groupes aux utilisateurs'),('assign_roles','Assigner des roles aux utilisateurs'),('CREATE_REFERENCE_IMPORT','Import csv file'),('kibana_dashboards_manager','Gestion des tableaux de bords Kibana'),('mylutece_manager','Gérer les paramètres avancés Mylutece'),('profiles_manager','Profiles management'),('profiles_views_manager','Profiles Views management'),('rendezvous_manager','all rendezvous-related rights'),('super_admin','Super Administrateur'),('workflow_manager','Workflow management');
/*!40000 ALTER TABLE `core_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_role_resource`
--

DROP TABLE IF EXISTS `core_admin_role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_role_resource` (
  `rbac_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_key` varchar(50) NOT NULL DEFAULT '',
  `resource_type` varchar(50) NOT NULL DEFAULT '',
  `resource_id` varchar(50) NOT NULL DEFAULT '',
  `permission` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`rbac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1031 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_role_resource`
--

LOCK TABLES `core_admin_role_resource` WRITE;
/*!40000 ALTER TABLE `core_admin_role_resource` DISABLE KEYS */;
INSERT INTO `core_admin_role_resource` VALUES (1,'all_site_manager','PAGE','*','VIEW'),(2,'all_site_manager','PAGE','*','MANAGE'),(3,'super_admin','INSERT_SERVICE','*','*'),(4,'all_site_manager','PORTLET_TYPE','*','*'),(5,'all_site_manager','ADMIN_USER','*','*'),(6,'all_site_manager','SEARCH_SERVICE','*','*'),(7,'all_site_manager','XSL_EXPORT','*','*'),(150,'profiles_manager','PROFILES','*','*'),(151,'profiles_views_manager','PROFILES_VIEWS','*','*'),(165,'CREATE_REFERENCE_IMPORT','REFERENCE_IMPORT','*','*'),(205,'assign_roles','ROLE_TYPE','*','ASSIGN_ROLE'),(207,'mylutece_manager','MYLUTECE','*','*'),(912,'workflow_manager','WORKFLOW_ACTION_TYPE','*','*'),(923,'workflow_manager','WORKFLOW_STATE_TYPE','*','*'),(1026,'super_admin','APPOINTMENT_FORM','*','*'),(1029,'super_admin','APPOINTMENT_FORM_CREATE','*','*'),(1030,'kibana_dashboards_manager','kibana_dashboard','*','*');
/*!40000 ALTER TABLE `core_admin_role_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user`
--

DROP TABLE IF EXISTS `core_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `access_code` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(256) NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT 0,
  `password` mediumtext DEFAULT NULL,
  `locale` varchar(10) NOT NULL DEFAULT 'fr',
  `level_user` smallint(6) NOT NULL DEFAULT 0,
  `reset_password` smallint(6) NOT NULL DEFAULT 0,
  `accessibility_mode` smallint(6) NOT NULL DEFAULT 0,
  `password_max_valid_date` timestamp NULL DEFAULT NULL,
  `account_max_valid_date` bigint(20) DEFAULT NULL,
  `nb_alerts_sent` int(11) NOT NULL DEFAULT 0,
  `last_login` timestamp NULL DEFAULT '1980-01-01 00:00:00',
  `workgroup_key` varchar(50) DEFAULT 'all',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user`
--

LOCK TABLES `core_admin_user` WRITE;
/*!40000 ALTER TABLE `core_admin_user` DISABLE KEYS */;
INSERT INTO `core_admin_user` VALUES (1,'admin','Admin','admin','admin@citelibre.org',0,'PLAINTEXT:adminadmin','fr',0,0,0,'1980-01-01 00:00:00',NULL,0,'1980-01-01 00:00:00','all');
/*!40000 ALTER TABLE `core_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user_anonymize_field`
--

DROP TABLE IF EXISTS `core_admin_user_anonymize_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user_anonymize_field` (
  `field_name` varchar(100) NOT NULL,
  `anonymize` smallint(6) NOT NULL,
  PRIMARY KEY (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_anonymize_field`
--

LOCK TABLES `core_admin_user_anonymize_field` WRITE;
/*!40000 ALTER TABLE `core_admin_user_anonymize_field` DISABLE KEYS */;
INSERT INTO `core_admin_user_anonymize_field` VALUES ('access_code',1),('email',1),('first_name',1),('last_name',1);
/*!40000 ALTER TABLE `core_admin_user_anonymize_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user_field`
--

DROP TABLE IF EXISTS `core_admin_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user_field` (
  `id_user_field` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_attribute` int(11) DEFAULT NULL,
  `id_field` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `user_field_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_user_field`),
  KEY `core_admin_user_field_idx_file` (`id_file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_field`
--

LOCK TABLES `core_admin_user_field` WRITE;
/*!40000 ALTER TABLE `core_admin_user_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user_preferences`
--

DROP TABLE IF EXISTS `core_admin_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user_preferences` (
  `id_user` varchar(100) NOT NULL,
  `pref_key` varchar(100) NOT NULL,
  `pref_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_user`,`pref_key`),
  KEY `index_admin_user_preferences` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_preferences`
--

LOCK TABLES `core_admin_user_preferences` WRITE;
/*!40000 ALTER TABLE `core_admin_user_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_workgroup`
--

DROP TABLE IF EXISTS `core_admin_workgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_workgroup` (
  `workgroup_key` varchar(50) NOT NULL,
  `workgroup_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`workgroup_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_workgroup`
--

LOCK TABLES `core_admin_workgroup` WRITE;
/*!40000 ALTER TABLE `core_admin_workgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_workgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_workgroup_user`
--

DROP TABLE IF EXISTS `core_admin_workgroup_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_workgroup_user` (
  `workgroup_key` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`workgroup_key`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_workgroup_user`
--

LOCK TABLES `core_admin_workgroup_user` WRITE;
/*!40000 ALTER TABLE `core_admin_workgroup_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_workgroup_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_attribute`
--

DROP TABLE IF EXISTS `core_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_attribute` (
  `id_attribute` int(11) NOT NULL AUTO_INCREMENT,
  `type_class_name` varchar(255) DEFAULT NULL,
  `title` mediumtext DEFAULT NULL,
  `help_message` mediumtext DEFAULT NULL,
  `is_mandatory` smallint(6) DEFAULT 0,
  `is_shown_in_search` smallint(6) DEFAULT 0,
  `is_shown_in_result_list` smallint(6) DEFAULT 0,
  `is_field_in_line` smallint(6) DEFAULT 0,
  `attribute_position` int(11) DEFAULT 0,
  `plugin_name` varchar(255) DEFAULT NULL,
  `anonymize` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_attribute`
--

LOCK TABLES `core_attribute` WRITE;
/*!40000 ALTER TABLE `core_attribute` DISABLE KEYS */;
INSERT INTO `core_attribute` VALUES (1,'fr.paris.lutece.portal.business.user.attribute.AttributeComboBox','Profil','',0,0,0,0,0,'profiles',NULL);
/*!40000 ALTER TABLE `core_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_attribute_field`
--

DROP TABLE IF EXISTS `core_attribute_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_attribute_field` (
  `id_field` int(11) NOT NULL AUTO_INCREMENT,
  `id_attribute` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `DEFAULT_value` mediumtext DEFAULT NULL,
  `is_DEFAULT_value` smallint(6) DEFAULT 0,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `max_size_enter` int(11) DEFAULT NULL,
  `is_multiple` smallint(6) DEFAULT 0,
  `field_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_attribute_field`
--

LOCK TABLES `core_attribute_field` WRITE;
/*!40000 ALTER TABLE `core_attribute_field` DISABLE KEYS */;
INSERT INTO `core_attribute_field` VALUES (1,1,NULL,NULL,0,0,0,0,1,1);
/*!40000 ALTER TABLE `core_attribute_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_connections_log`
--

DROP TABLE IF EXISTS `core_connections_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_connections_log` (
  `access_code` varchar(100) DEFAULT NULL,
  `ip_address` varchar(63) DEFAULT NULL,
  `date_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `login_status` int(11) DEFAULT NULL,
  KEY `index_connections_log` (`ip_address`,`date_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_connections_log`
--

LOCK TABLES `core_connections_log` WRITE;
/*!40000 ALTER TABLE `core_connections_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_connections_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_dashboard`
--

DROP TABLE IF EXISTS `core_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_dashboard` (
  `dashboard_name` varchar(100) NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`dashboard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_dashboard`
--

LOCK TABLES `core_dashboard` WRITE;
/*!40000 ALTER TABLE `core_dashboard` DISABLE KEYS */;
INSERT INTO `core_dashboard` VALUES ('APPOINTMENT_FORM',3,2),('CORE_PAGES',2,1),('CORE_SYSTEM',1,2),('CORE_USER',4,1),('CORE_USERS',1,1),('WORKFLOW',3,1);
/*!40000 ALTER TABLE `core_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_datastore`
--

DROP TABLE IF EXISTS `core_datastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_datastore` (
  `entity_key` varchar(255) NOT NULL,
  `entity_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`entity_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_datastore`
--

LOCK TABLES `core_datastore` WRITE;
/*!40000 ALTER TABLE `core_datastore` DISABLE KEYS */;
INSERT INTO `core_datastore` VALUES ('appointment.site_property.nbplaces','5'),('core.advanced_parameters.access_failures_captcha','1'),('core.advanced_parameters.access_failures_interval','10'),('core.advanced_parameters.access_failures_max','3'),('core.advanced_parameters.account_life_time','12'),('core.advanced_parameters.account_reactivated_mail_sender','noreply@citelibre.org'),('core.advanced_parameters.account_reactivated_mail_subject','Votre compte a bien été réactivé'),('core.advanced_parameters.default_user_language','fr'),('core.advanced_parameters.default_user_level','0'),('core.advanced_parameters.default_user_notification','1'),('core.advanced_parameters.default_user_status','0'),('core.advanced_parameters.email_pattern','^[\\w_.\\-!\\#\\$\\%\\&\'\\*\\+\\/\\=\\?\\^\\\\}\\{\\|\\~]+@[\\w_.\\-]+\\.[\\w]+$'),('core.advanced_parameters.email_pattern_verify_by',''),('core.advanced_parameters.expired_alert_mail_sender','noreply@citelibre.org'),('core.advanced_parameters.expired_alert_mail_subject','Votre compte a expiré'),('core.advanced_parameters.first_alert_mail_sender','noreply@citelibre.org'),('core.advanced_parameters.first_alert_mail_subject','Votre compte va bientôt expirer'),('core.advanced_parameters.force_change_password_reinit','false'),('core.advanced_parameters.lock_reset_token_to_session','false'),('core.advanced_parameters.maximum_number_password_change',''),('core.advanced_parameters.nb_alert_account','2'),('core.advanced_parameters.notify_user_password_expired',''),('core.advanced_parameters.other_alert_mail_sender','noreply@citelibre.org'),('core.advanced_parameters.other_alert_mail_subject','Votre compte va bientôt expirer'),('core.advanced_parameters.password_duration','120'),('core.advanced_parameters.password_expired_mail_sender','noreply@citelibre.org'),('core.advanced_parameters.password_expired_mail_subject','Votre mot de passe a expiré'),('core.advanced_parameters.password_format_numero','false'),('core.advanced_parameters.password_format_special_characters','false'),('core.advanced_parameters.password_format_upper_lower_case','false'),('core.advanced_parameters.password_history_size',''),('core.advanced_parameters.password_minimum_length','8'),('core.advanced_parameters.reset_token_validity','60'),('core.advanced_parameters.time_before_alert_account','30'),('core.advanced_parameters.time_between_alerts_account','10'),('core.advanced_parameters.tsw_size_password_change',''),('core.advanced_parameters.use_advanced_security_parameters',''),('core.backOffice.defaultEditor','tinymce'),('core.cache.status.appointment.appointmentFormCacheService.enabled','1'),('core.cache.status.asynchronousupload.asynchronousUploadCacheService.enabled','0'),('core.cache.status.BaseUserPreferencesCacheService.enabled','1'),('core.cache.status.BaseUserPreferencesCacheService.maxElementsInMemory','1000'),('core.cache.status.DatastoreCacheService.enabled','0'),('core.cache.status.EntryTypeServiceManagerCache.enabled','1'),('core.cache.status.LinksIncludeCacheService.enabled','1'),('core.cache.status.LuteceUserCacheService.enabled','1'),('core.cache.status.LuteceUserCacheService.maxElementsInMemory','1000'),('core.cache.status.MailAttachmentCacheService.diskPersistent','true'),('core.cache.status.MailAttachmentCacheService.enabled','1'),('core.cache.status.MailAttachmentCacheService.maxElementsInMemory','10'),('core.cache.status.MailAttachmentCacheService.overflowToDisk','true'),('core.cache.status.MailAttachmentCacheService.timeToLiveSeconds','7200'),('core.cache.status.MyPortalWidgetContentService.enabled','1'),('core.cache.status.MyPortalWidgetService.enabled','1'),('core.cache.status.PageCacheService.enabled','1'),('core.cache.status.PageCachingFilter(CAUTION:NEVERUSEWITHUSERDYNAMICDATA).enabled','0'),('core.cache.status.PageCachingFilter.enabled','0'),('core.cache.status.pathCacheService.enabled','1'),('core.cache.status.PortalMenuService.enabled','1'),('core.cache.status.PortletCacheService.enabled','0'),('core.cache.status.SiteMapService.enabled','1'),('core.cache.status.StaticFilesCachingFilter.enabled','1'),('core.cache.status.StaticFilesCachingFilter.timeToLiveSeconds','604800'),('core.cache.status.workflow.alertGruConfigCacheService.enabled','0'),('core.cache.status.workflow.notifyGruConfigCacheService.enabled','0'),('core.daemon.accountLifeTimeDaemon.interval','3600'),('core.daemon.accountLifeTimeDaemon.onStartUp','true'),('core.daemon.AlertGruDaemon.interval','86400'),('core.daemon.AlertGruDaemon.onStartUp','true'),('core.daemon.anonymizationDaemon.interval','86400'),('core.daemon.anonymizationDaemon.onStartUp','false'),('core.daemon.AppointmentReminderDaemon.interval','600'),('core.daemon.AppointmentReminderDaemon.onStartUp','true'),('core.daemon.archiveDaemon.interval','86400'),('core.daemon.archiveDaemon.onStartUp','true'),('core.daemon.automaticActionDaemon.interval','30'),('core.daemon.automaticActionDaemon.onStartUp','true'),('core.daemon.changeStateDaemon.interval','10'),('core.daemon.changeStateDaemon.onStartUp','false'),('core.daemon.chooseStateActionDaemon.interval','10'),('core.daemon.chooseStateActionDaemon.onStartUp','false'),('core.daemon.crmClientSender.interval','60'),('core.daemon.crmClientSender.onStartUp','true'),('core.daemon.fullIndexingDaemon.interval','86400'),('core.daemon.fullIndexingDaemon.onStartUp','true'),('core.daemon.incrementalIndexingDaemon.interval','600'),('core.daemon.incrementalIndexingDaemon.onStartUp','true'),('core.daemon.indexer.interval','300'),('core.daemon.indexer.onStartUp','true'),('core.daemon.mailSender.interval','3600'),('core.daemon.mailSender.onStartUp','true'),('core.daemon.notifyHistoryCleanerDaemon.interval','10'),('core.daemon.notifyHistoryCleanerDaemon.onStartUp','false'),('core.daemon.slotDaemon.interval','86400'),('core.daemon.slotDaemon.onStartUp','true'),('core.daemon.solrindexer.interval','300'),('core.daemon.solrindexer.onStartUp','true'),('core.daemon.temporaryfilesDaemon.interval','86400'),('core.daemon.temporaryfilesDaemon.onStartUp','false'),('core.daemon.threadLauncherDaemon.interval','86400'),('core.daemon.threadLauncherDaemon.onStartUp','true'),('core.frontOffice.defaultEditor','sceeditor'),('core.plugins.status.address-autocomplete.installed','true'),('core.plugins.status.address.installed','true'),('core.plugins.status.appointment-desk.installed','true'),('core.plugins.status.appointment-desk.pool','portal'),('core.plugins.status.appointment-filling.installed','true'),('core.plugins.status.appointment-filling.pool','portal'),('core.plugins.status.appointment-leaflet.installed','true'),('core.plugins.status.appointment-management.installed','true'),('core.plugins.status.appointment-management.pool','portal'),('core.plugins.status.appointment-mydashboard.installed','true'),('core.plugins.status.appointment-mydashboard.pool','portal'),('core.plugins.status.appointment-solr.installed','true'),('core.plugins.status.appointment-solrsearchapp.installed','true'),('core.plugins.status.appointment.installed','true'),('core.plugins.status.appointment.pool','portal'),('core.plugins.status.appointmentgru.installed','true'),('core.plugins.status.appointmentgru.pool','portal'),('core.plugins.status.asynchronous-upload.installed','true'),('core.plugins.status.asynchronous-upload.pool','portal'),('core.plugins.status.captcha.installed','true'),('core.plugins.status.crmclient.installed','true'),('core.plugins.status.crmclient.pool','portal'),('core.plugins.status.elasticdata-appointment.installed','true'),('core.plugins.status.elasticdata-appointment.pool','portal'),('core.plugins.status.elasticdata.installed','true'),('core.plugins.status.elasticdata.pool','portal'),('core.plugins.status.filegenerator.installed','true'),('core.plugins.status.filegenerator.pool','portal'),('core.plugins.status.genericalert.installed','true'),('core.plugins.status.genericalert.pool','portal'),('core.plugins.status.genericattributes-address.installed','true'),('core.plugins.status.genericattributes-googlemaps.installed','true'),('core.plugins.status.genericattributes.installed','true'),('core.plugins.status.genericattributes.pool','portal'),('core.plugins.status.grusupply.installed','true'),('core.plugins.status.grusupply.pool','portal'),('core.plugins.status.html.installed','true'),('core.plugins.status.htmlpage.installed','true'),('core.plugins.status.htmlpage.pool','portal'),('core.plugins.status.identitystore.installed','true'),('core.plugins.status.jcaptcha.installed','true'),('core.plugins.status.kibana.installed','true'),('core.plugins.status.kibana.pool','portal'),('core.plugins.status.leaflet.installed','true'),('core.plugins.status.lucene.installed','true'),('core.plugins.status.matomo.installed','true'),('core.plugins.status.mermaidjs.installed','true'),('core.plugins.status.mermaidjs.pool','portal'),('core.plugins.status.modulenotifygrumappingmanager.installed','false'),('core.plugins.status.modulenotifygrumappingmanager.pool','portal'),('core.plugins.status.mydashboard.installed','true'),('core.plugins.status.mydashboard.pool','portal'),('core.plugins.status.mylutece.installed','true'),('core.plugins.status.mylutece.pool','portal'),('core.plugins.status.notifygru-appointment.installed','true'),('core.plugins.status.notifygru-appointment.pool','portal'),('core.plugins.status.profiles.installed','true'),('core.plugins.status.profiles.pool','portal'),('core.plugins.status.referencelist.installed','true'),('core.plugins.status.referencelist.pool','portal'),('core.plugins.status.regularexpression.installed','true'),('core.plugins.status.regularexpression.pool','portal'),('core.plugins.status.rest.installed','true'),('core.plugins.status.sitelabels.installed','true'),('core.plugins.status.solr.installed','true'),('core.plugins.status.solr.pool','portal'),('core.plugins.status.swaggerui.installed','true'),('core.plugins.status.swaggerui.pool','portal'),('core.plugins.status.systeminfo.installed','true'),('core.plugins.status.themecitelibre.installed','true'),('core.plugins.status.workflow-alertgru.installed','true'),('core.plugins.status.workflow-alertgru.pool','portal'),('core.plugins.status.workflow-appointment.installed','true'),('core.plugins.status.workflow-appointment.pool','portal'),('core.plugins.status.workflow-notifygru.installed','true'),('core.plugins.status.workflow-notifygru.pool','portal'),('core.plugins.status.workflow-rest.installed','true'),('core.plugins.status.workflow.installed','true'),('core.plugins.status.workflow.pool','portal'),('core.startup.time','May 21, 2024, 7:49:15 AM'),('core.templates.currentCommonsInclude','Bootstrap5Tabler'),('core_banned_domain_names','yopmail.com'),('leaflet.icon.icons.default.installed','true'),('leaflet.icon.icons.green.installed','true'),('leaflet.icon.icons.red.installed','true'),('leaflet.icon.icons.yellow.installed','true'),('matomo.site_property.server.http.url','http://localhost/'),('matomo.site_property.server.https.url','http://localhost/'),('matomo.site_property.site.id','1'),('matomo.site_property.widget.auth.token','cfa9a798abd584817e2eb94d7bc14bb0'),('mylutece.security.public_url.mylutece.url.createAccount.page','jsp/site/Portal.jsp?page=mylutece&action=createAccount'),('mylutece.security.public_url.mylutece.url.doActionsAll','jsp/site/plugins/mylutece/Do*'),('mylutece.security.public_url.mylutece.url.doLogin','jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp'),('mylutece.security.public_url.mylutece.url.doLogout','jsp/site/plugins/mylutece/DoMyLuteceLogout.jsp'),('mylutece.security.public_url.mylutece.url.login.page','jsp/site/Portal.jsp?page=mylutece&action=login'),('mylutece.security.public_url.mylutece.url.lostLogin.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=lostLogin'),('mylutece.security.public_url.mylutece.url.lostPassword.page','jsp/site/Portal.jsp?page=mylutece&action=lostPassword'),('mylutece.security.public_url.mylutece.url.modifyAccount.page','jsp/site/Portal.jsp?page=mylutece&action=modifyAccount'),('portal.site.site_property.admin_home_url','jsp/admin/AdminMenu.jsp'),('portal.site.site_property.avatar_default','themes/admin/shared/images/unknown.svg'),('portal.site.site_property.back_images','themes/admin/tabler/images/bg_login1.svg, themes/admin/tabler/images/bg_login2.svg'),('portal.site.site_property.bo.showXs.checkbox','1'),('portal.site.site_property.bo.showXsWarning.checkbox','0'),('portal.site.site_property.email','<webmaster email>'),('portal.site.site_property.home_url','jsp/site/Portal.jsp'),('portal.site.site_property.layout.darkmode.checkbox','0'),('portal.site.site_property.layout.menu.checkbox','0'),('portal.site.site_property.layout.readmode.checkbox','0'),('portal.site.site_property.layout.user.darkmode.show.checkbox','1'),('portal.site.site_property.layout.user.menumode.show.checkbox','1'),('portal.site.site_property.layout.user.readmode.show.checkbox','0'),('portal.site.site_property.locale.default','fr'),('portal.site.site_property.login.image',''),('portal.site.site_property.logo_url','themes/admin/shared/images/logo-header-icon.svg'),('portal.site.site_property.meta.author','<author>'),('portal.site.site_property.meta.copyright','<copyright>'),('portal.site.site_property.meta.description','<description>'),('portal.site.site_property.meta.keywords','<keywords>'),('portal.site.site_property.name','CiteLibre Rendez-Vous'),('portal.site.site_property.noreply_email','noreply@citelibre.org'),('portal.site.site_property.popup_credits.textblock','&lt;credits text&gt;'),('portal.site.site_property.popup_legal_info.copyright.textblock','&lt;copyright text&gt;'),('portal.site.site_property.popup_legal_info.privacy.textblock','&lt;privacy text&gt;'),('portal.site.site_property.portlet.title.maxlength','75'),('themecitelibre.site_property.bannerMessage.CloseButton.checkbox','1'),('themecitelibre.site_property.bannerMessage.htmlblock',''),('themecitelibre.site_property.bannerMessage.Position','bottom-right'),('themecitelibre.site_property.bannerMessage.Title',''),('themecitelibre.site_property.bannerMessage.Type','info'),('themecitelibre.site_property.footer.about','CiteLibre est faite par et pour les villes, sur les principes de l\'open source. <br> <a class=\"btn btn-link ps-0\" href=\"http://lutece.paris.fr\" title=\"[Nouvelle fenêtre] LUTECE\" target=\"_blank><img src=\"images/poweredby.png\" alt=\"Powered by LUTECE\"></a> '),('themecitelibre.site_property.footer.about.title','A propos'),('themecitelibre.site_property.footer.cookieLabel','Gestion des cookies'),('themecitelibre.site_property.footer.cookieLink','#cookiecitelibrepack'),('themecitelibre.site_property.footer.links.title','Liens importants'),('themecitelibre.site_property.robotIndex.checkbox','1');
/*!40000 ALTER TABLE `core_datastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_feature_group`
--

DROP TABLE IF EXISTS `core_feature_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_feature_group` (
  `id_feature_group` varchar(50) NOT NULL DEFAULT '',
  `feature_group_description` varchar(255) DEFAULT NULL,
  `feature_group_label` varchar(100) DEFAULT NULL,
  `feature_group_order` int(11) DEFAULT NULL,
  `feature_group_icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_feature_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_feature_group`
--

LOCK TABLES `core_feature_group` WRITE;
/*!40000 ALTER TABLE `core_feature_group` DISABLE KEYS */;
INSERT INTO `core_feature_group` VALUES ('APPLICATIONS','portal.features.group.applications.description','portal.features.group.applications.label',3,'ti ti-apps'),('CONTENT','portal.features.group.content.description','portal.features.group.content.label',1,'ti ti-files'),('MANAGERS','portal.features.group.managers.description','portal.features.group.managers.label',5,'ti ti-user-shield'),('SITE','portal.features.group.site.description','portal.features.group.site.label',2,'ti ti-world'),('STYLE','portal.features.group.charter.description','portal.features.group.charter.label',6,'ti ti-brush'),('SYSTEM','portal.features.group.system.description','portal.features.group.system.label',7,'ti ti-shield-lock '),('USERS','portal.features.group.users.description','portal.features.group.users.label',4,'ti ti-users');
/*!40000 ALTER TABLE `core_feature_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_file`
--

DROP TABLE IF EXISTS `core_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext DEFAULT NULL,
  `id_physical_file` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_file`
--

LOCK TABLES `core_file` WRITE;
/*!40000 ALTER TABLE `core_file` DISABLE KEYS */;
INSERT INTO `core_file` VALUES (125,'export_users_csv.xml',125,2523,'application/xml','2005-10-10 10:10:10','INIT_CORE'),(126,'export_users_xml.xml',126,259,'application/xml','2005-10-10 10:10:10','INIT_CORE');
/*!40000 ALTER TABLE `core_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_id_generator`
--

DROP TABLE IF EXISTS `core_id_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_id_generator` (
  `class_name` varchar(250) NOT NULL DEFAULT '',
  `current_value` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_id_generator`
--

LOCK TABLES `core_id_generator` WRITE;
/*!40000 ALTER TABLE `core_id_generator` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_id_generator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_indexer_action`
--

DROP TABLE IF EXISTS `core_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_indexer_action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `id_document` varchar(255) NOT NULL,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `indexer_name` varchar(255) NOT NULL,
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_indexer_action`
--

LOCK TABLES `core_indexer_action` WRITE;
/*!40000 ALTER TABLE `core_indexer_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_level_right`
--

DROP TABLE IF EXISTS `core_level_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_level_right` (
  `id_level` smallint(6) NOT NULL DEFAULT 0,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_level_right`
--

LOCK TABLES `core_level_right` WRITE;
/*!40000 ALTER TABLE `core_level_right` DISABLE KEYS */;
INSERT INTO `core_level_right` VALUES (0,'Level 0 - Technical administrator'),(1,'Level 1 - Fonctionnal administrator'),(2,'Level 2 - Site Manager - Webmaster'),(3,'Level 3 - Contributor');
/*!40000 ALTER TABLE `core_level_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mail_item`
--

DROP TABLE IF EXISTS `core_mail_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mail_item` (
  `id_mail_queue` int(11) NOT NULL DEFAULT 0,
  `mail_item` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_mail_queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mail_item`
--

LOCK TABLES `core_mail_item` WRITE;
/*!40000 ALTER TABLE `core_mail_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mail_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mail_queue`
--

DROP TABLE IF EXISTS `core_mail_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mail_queue` (
  `id_mail_queue` int(11) NOT NULL AUTO_INCREMENT,
  `is_locked` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_mail_queue`),
  KEY `is_locked_core_mail_queue` (`is_locked`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mail_queue`
--

LOCK TABLES `core_mail_queue` WRITE;
/*!40000 ALTER TABLE `core_mail_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mail_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mode`
--

DROP TABLE IF EXISTS `core_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mode` (
  `id_mode` int(11) NOT NULL DEFAULT 0,
  `description_mode` varchar(255) DEFAULT NULL,
  `path` varchar(50) NOT NULL DEFAULT '',
  `output_xsl_method` varchar(50) DEFAULT NULL,
  `output_xsl_version` varchar(50) DEFAULT NULL,
  `output_xsl_media_type` varchar(50) DEFAULT NULL,
  `output_xsl_encoding` varchar(50) DEFAULT NULL,
  `output_xsl_indent` varchar(50) DEFAULT NULL,
  `output_xsl_omit_xml_dec` varchar(50) DEFAULT NULL,
  `output_xsl_standalone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mode`
--

LOCK TABLES `core_mode` WRITE;
/*!40000 ALTER TABLE `core_mode` DISABLE KEYS */;
INSERT INTO `core_mode` VALUES (0,'Normal','normal/','xml','1.0','text/xml','UTF-8','yes','yes',NULL),(1,'Administration','admin/','xml','1.0','text/xml','UTF-8','yes','yes',NULL),(2,'Wap','wml/','xml','1.0','text/xml','UTF-8','yes','yes',NULL);
/*!40000 ALTER TABLE `core_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_page`
--

DROP TABLE IF EXISTS `core_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_page` (
  `id_page` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `date_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` smallint(6) DEFAULT NULL,
  `page_order` int(11) DEFAULT 0,
  `id_template` int(11) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `code_theme` varchar(80) DEFAULT NULL,
  `node_status` smallint(6) NOT NULL DEFAULT 1,
  `image_content` mediumblob DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT 'NULL',
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `id_authorization_node` int(11) DEFAULT NULL,
  `display_date_update` smallint(6) NOT NULL DEFAULT 0,
  `is_manual_date_update` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_page`),
  KEY `index_page` (`id_template`,`id_parent`),
  KEY `index_childpage` (`id_parent`,`page_order`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_page`
--

LOCK TABLES `core_page` WRITE;
/*!40000 ALTER TABLE `core_page` DISABLE KEYS */;
INSERT INTO `core_page` VALUES (1,0,'Home','Home Page','2024-03-14 13:42:18',1,1,1,'2024-03-14 13:42:18','none','default',0,'','application/octet-stream',NULL,NULL,1,0,0),(3,1,'Liens Utiles','Page contenant les liens et accès vers les différents services de l\'application','2024-05-21 09:25:52',0,1,2,'2024-05-21 09:10:52','none','default',1,NULL,'application/octet-stream',NULL,NULL,1,0,0);
/*!40000 ALTER TABLE `core_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_page_template`
--

DROP TABLE IF EXISTS `core_page_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_page_template` (
  `id_template` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_template`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_page_template`
--

LOCK TABLES `core_page_template` WRITE;
/*!40000 ALTER TABLE `core_page_template` DISABLE KEYS */;
INSERT INTO `core_page_template` VALUES (1,'Home page','skin/site/page_home_demo.html','layout-home.svg'),(2,'One column','skin/site/page_template1.html','layout-one.svg'),(3,'Two columns','skin/site/page_template2.html','layout-two.svg'),(4,'1 + 2 columns','skin/site/page_template4.html','layout-three.svg'),(5,'Two equal columns','skin/site/page_template5.html','layout-four.svg');
/*!40000 ALTER TABLE `core_page_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_physical_file`
--

DROP TABLE IF EXISTS `core_physical_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_physical_file` (
  `id_physical_file` int(11) NOT NULL AUTO_INCREMENT,
  `file_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_physical_file`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_physical_file`
--

LOCK TABLES `core_physical_file` WRITE;
/*!40000 ALTER TABLE `core_physical_file` DISABLE KEYS */;
INSERT INTO `core_physical_file` VALUES (125,'<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"text\"/>\r\n	\r\n	<xsl:template match=\"users\">\r\n		<xsl:apply-templates select=\"user\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"user\">\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:value-of select=\"access_code\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"last_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"first_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"email\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"status\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"locale\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"level\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"must_change_password\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"accessibility_mode\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"password_max_valid_date\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"account_max_valid_date\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"date_last_login\" />\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:apply-templates select=\"roles\" />\r\n		<xsl:apply-templates select=\"rights\" />\r\n		<xsl:apply-templates select=\"workgroups\" />\r\n		<xsl:apply-templates select=\"attributes\" />\r\n		<xsl:text>&#10;</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"roles\">\r\n		<xsl:apply-templates select=\"role\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"role\">\r\n		<xsl:text>;\"role:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"rights\">\r\n		<xsl:apply-templates select=\"right\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"right\">\r\n		<xsl:text>;\"right:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"workgroups\">\r\n		<xsl:apply-templates select=\"workgroup\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"workgroup\">\r\n		<xsl:text>;\"workgroup:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attributes\">\r\n		<xsl:apply-templates select=\"attribute\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attribute\">\r\n		<xsl:text>;\"</xsl:text>\r\n		<xsl:value-of select=\"attribute-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-field-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-value\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>'),(126,'<?xml version=\"1.0\" ?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:template match=\"/ | @* | node()\">\r\n		<xsl:copy>\r\n			<xsl:apply-templates select=\"@* | node()\" />\r\n		</xsl:copy>\r\n	</xsl:template>\r\n</xsl:stylesheet>');
/*!40000 ALTER TABLE `core_physical_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portal_component`
--

DROP TABLE IF EXISTS `core_portal_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portal_component` (
  `id_portal_component` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_portal_component`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portal_component`
--

LOCK TABLES `core_portal_component` WRITE;
/*!40000 ALTER TABLE `core_portal_component` DISABLE KEYS */;
INSERT INTO `core_portal_component` VALUES (0,'Portlet'),(1,'Article'),(2,'Article List Portlet'),(3,'Menu Init'),(4,'Main Menu'),(5,'Breadcrum'),(6,'Site Map'),(7,'Tree View'),(8,'Site Map (Admin mode)');
/*!40000 ALTER TABLE `core_portal_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portlet`
--

DROP TABLE IF EXISTS `core_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portlet` (
  `id_portlet` int(11) NOT NULL AUTO_INCREMENT,
  `id_portlet_type` varchar(50) DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `date_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` smallint(6) NOT NULL DEFAULT 0,
  `portlet_order` int(11) DEFAULT NULL,
  `column_no` int(11) DEFAULT NULL,
  `id_style` int(11) DEFAULT NULL,
  `accept_alias` smallint(6) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `display_portlet_title` int(11) NOT NULL DEFAULT 0,
  `role` varchar(50) DEFAULT NULL,
  `device_display_flags` int(11) NOT NULL DEFAULT 15,
  PRIMARY KEY (`id_portlet`),
  KEY `index_portlet` (`id_page`,`id_portlet_type`,`id_style`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet`
--

LOCK TABLES `core_portlet` WRITE;
/*!40000 ALTER TABLE `core_portlet` DISABLE KEYS */;
INSERT INTO `core_portlet` VALUES (2,'HTML_PORTLET',1,'Infos','2019-05-31 15:51:57',0,1,3,100,0,'2015-05-15 15:26:01',1,'none',273),(4,'HTML_PORTLET',1,'Lutece','2019-06-03 10:23:25',0,1,4,100,0,'2019-05-31 11:55:16',1,'none',4369),(5,'HTML_PORTLET',1,'Autres informations','2019-05-31 16:51:33',0,1,5,100,0,'2019-05-31 15:01:47',1,'none',4369),(6,'APPOINTMENT_FORM_LIST_PORTLET',1,'Agendas disponibles','2024-05-23 15:25:03',0,4,1,0,0,'2024-05-21 08:29:17',0,'none',4369),(8,'HTML_PORTLET',3,'Introduction','2024-05-21 16:35:23',0,1,1,100,0,'2024-05-21 09:25:22',1,'none',4369),(9,'HTML_UNTRANSFORMED_PORTLET',3,'Tableau des liens et identifiants','2024-05-21 16:39:03',0,1,1,0,0,'2024-05-21 09:26:56',1,'none',4369),(11,'HTML_PORTLET',1,'Lien carto','2024-05-23 15:18:57',0,3,1,100,0,'2024-05-21 16:40:51',1,'none',4369),(13,'HTML_UNTRANSFORMED_PORTLET',1,'lien carto','2024-05-23 14:17:54',0,5,1,0,0,'2024-05-21 16:48:30',1,'none',4369),(16,'HTML_UNTRANSFORMED_PORTLET',1,'Intro','2024-05-23 16:35:58',0,1,1,0,0,'2024-05-23 14:21:30',0,'none',4369),(18,'HTML_UNTRANSFORMED_PORTLET',1,'Administration','2024-05-23 15:28:52',0,2,1,0,0,'2024-05-23 15:23:41',0,'none',4369);
/*!40000 ALTER TABLE `core_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portlet_alias`
--

DROP TABLE IF EXISTS `core_portlet_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portlet_alias` (
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  `id_alias` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_portlet`,`id_alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet_alias`
--

LOCK TABLES `core_portlet_alias` WRITE;
/*!40000 ALTER TABLE `core_portlet_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_portlet_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portlet_type`
--

DROP TABLE IF EXISTS `core_portlet_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portlet_type` (
  `id_portlet_type` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `url_creation` varchar(255) DEFAULT NULL,
  `url_update` varchar(255) DEFAULT NULL,
  `home_class` varchar(255) DEFAULT NULL,
  `plugin_name` varchar(50) DEFAULT NULL,
  `url_docreate` varchar(255) DEFAULT NULL,
  `create_script` varchar(255) DEFAULT NULL,
  `create_specific` varchar(255) DEFAULT NULL,
  `create_specific_form` varchar(255) DEFAULT NULL,
  `url_domodify` varchar(255) DEFAULT NULL,
  `modify_script` varchar(255) DEFAULT NULL,
  `modify_specific` varchar(255) DEFAULT NULL,
  `modify_specific_form` varchar(255) DEFAULT NULL,
  `icon_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_portlet_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet_type`
--

LOCK TABLES `core_portlet_type` WRITE;
/*!40000 ALTER TABLE `core_portlet_type` DISABLE KEYS */;
INSERT INTO `core_portlet_type` VALUES ('ALIAS_PORTLET','portal.site.portletAlias.name','plugins/alias/CreatePortletAlias.jsp','plugins/alias/ModifyPortletAlias.jsp','fr.paris.lutece.portal.business.portlet.AliasPortletHome','alias','plugins/alias/DoCreatePortletAlias.jsp','/admin/portlet/script_create_portlet.html','/admin/portlet/alias/create_portlet_alias.html','','plugins/alias/DoModifyPortletAlias.jsp','/admin/portlet/script_modify_portlet.html','/admin/portlet/alias/modify_portlet_alias.html','','circles-relation'),('APPOINTMENT_FORM_LIST_PORTLET','appointment.portlet.appointmentFormListPortlet.name','plugins/appointment/CreatePortletAppointmentFormList.jsp','plugins/appointment/ModifyPortletAppointmentFormList.jsp','fr.paris.lutece.plugins.appointment.business.portlet.AppointmentFormListPortletHome','appointment','plugins/appointment/DoCreatePortletAppointmentFormList.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/appointment/portlet/create_portletappointmentformlist.html','','plugins/appointment/DoModifyPortletAppointmentFormList.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/appointment/portlet/modify_portletappointmentformlist.html','',''),('APPOINTMENT_FORM_PORTLET','appointment.appointmentForm.name','plugins/appointment/CreatePortletAppointmentForm.jsp','plugins/appointment/ModifyPortletAppointmentForm.jsp','fr.paris.lutece.plugins.appointment.business.portlet.AppointmentFormPortletHome','appointment','plugins/appointment/DoCreatePortletAppointmentForm.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/appointment/portlet/create_portletappointmentform.html','','plugins/appointment/DoModifyPortletAppointmentForm.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/appointment/portlet/modify_portletappointmentform.html','',''),('APPOINTMENT_PORTLET','appointment.myAppointments.name','plugins/appointment/CreatePortletAppointment.jsp','plugins/appointment/ModifyPortletAppointment.jsp','fr.paris.lutece.plugins.appointment.business.portlet.AppointmentPortletHome','appointment','plugins/appointment/DoCreatePortletAppointment.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/appointment/portlet/create_portletappointment.html','','plugins/appointment/DoModifyPortletAppointment.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/appointment/portlet/modify_portletappointment.html','',''),('HTML_PORTLET','html.portlet.name','plugins/html/CreatePortletHtml.jsp','plugins/html/ModifyPortletHtml.jsp','fr.paris.lutece.plugins.html.business.portlet.HtmlPortletHome','html','plugins/html/DoCreatePortletHtml.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/html/portlet_html.html','','plugins/html/DoModifyPortletHtml.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/html/portlet_html.html','',NULL),('HTML_UNTRANSFORMED_PORTLET','html.portlet.untransformed.name','plugins/html/CreatePortletHtml.jsp','plugins/html/ModifyPortletHtml.jsp','fr.paris.lutece.plugins.html.business.portlet.UntransformedHtmlPortletHome','html','plugins/html/DoCreatePortletHtml.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/html/portlet_html.html','','plugins/html/DoModifyPortletHtml.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/html/portlet_html.html','',NULL),('MYDASHBOARD_PORTLET','mydashboard.portlet.myDashboardPortlet.name','plugins/mydashboard/GetCreateMyDashboardPortlet.jsp','plugins/mydashboard/GetModifyMyDashboardPortlet.jsp','fr.paris.lutece.plugins.mydashboard.business.portlet.MyDashboardPortletHome','mydashboard','plugins/mydashboard/DoCreateMyDashboardPortlet.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/mydashboard/portlet/create_portlet_mydashboard.html','','plugins/mydashboard/DoModifyMyDashboardPortlet.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/mydashboard/portlet/modify_portlet_mydashboard.html','',NULL),('MYLUTECE_PORTLET','mylutece.portlet.name','plugins/mylutece/CreatePortletMyLutece.jsp','plugins/mylutece/ModifyPortletMyLutece.jsp','fr.paris.lutece.plugins.mylutece.business.portlet.MyLutecePortletHome','mylutece','plugins/mylutece/DoCreatePortletMyLutece.jsp','/admin/portlet/script_create_portlet.html','','','plugins/mylutece/DoModifyPortletMyLutece.jsp','/admin/portlet/script_modify_portlet.html','','',NULL);
/*!40000 ALTER TABLE `core_portlet_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_role`
--

DROP TABLE IF EXISTS `core_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_role` (
  `role` varchar(50) NOT NULL DEFAULT '',
  `role_description` varchar(255) DEFAULT NULL,
  `workgroup_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_role`
--

LOCK TABLES `core_role` WRITE;
/*!40000 ALTER TABLE `core_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_search_parameter`
--

DROP TABLE IF EXISTS `core_search_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_search_parameter` (
  `parameter_key` varchar(100) NOT NULL,
  `parameter_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`parameter_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_search_parameter`
--

LOCK TABLES `core_search_parameter` WRITE;
/*!40000 ALTER TABLE `core_search_parameter` DISABLE KEYS */;
INSERT INTO `core_search_parameter` VALUES ('date_filter','0'),('default_operator','OR'),('help_message','Message d aide pour la recherche'),('taglist',NULL),('tag_filter','0'),('type_filter','none');
/*!40000 ALTER TABLE `core_search_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_style`
--

DROP TABLE IF EXISTS `core_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_style` (
  `id_style` int(11) NOT NULL DEFAULT 0,
  `description_style` varchar(100) NOT NULL DEFAULT '',
  `id_portlet_type` varchar(50) DEFAULT NULL,
  `id_portal_component` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_style`),
  KEY `index_style` (`id_portlet_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_style`
--

LOCK TABLES `core_style` WRITE;
/*!40000 ALTER TABLE `core_style` DISABLE KEYS */;
INSERT INTO `core_style` VALUES (3,'Menu Init','',3),(4,'Main Menu','',4),(5,'Breadcrumb','',5),(6,'Site Map','',6),(7,'Tree View Menu','',7),(8,'Site Map (Admin mode)',NULL,8),(100,'Défaut','HTML_PORTLET',0),(101,'Fond coloré','HTML_PORTLET',0),(200,'Défaut','MYLUTECE_PORTLET',0);
/*!40000 ALTER TABLE `core_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_style_mode_stylesheet`
--

DROP TABLE IF EXISTS `core_style_mode_stylesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_style_mode_stylesheet` (
  `id_style` int(11) NOT NULL DEFAULT 0,
  `id_mode` int(11) NOT NULL DEFAULT 0,
  `id_stylesheet` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_style`,`id_mode`,`id_stylesheet`),
  KEY `index_style_mode_stylesheet` (`id_stylesheet`,`id_mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_style_mode_stylesheet`
--

LOCK TABLES `core_style_mode_stylesheet` WRITE;
/*!40000 ALTER TABLE `core_style_mode_stylesheet` DISABLE KEYS */;
INSERT INTO `core_style_mode_stylesheet` VALUES (3,0,211),(4,0,213),(5,0,215),(6,0,217),(7,0,253),(8,1,279),(100,0,10),(101,0,285),(200,0,310);
/*!40000 ALTER TABLE `core_style_mode_stylesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_stylesheet`
--

DROP TABLE IF EXISTS `core_stylesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_stylesheet` (
  `id_stylesheet` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `source` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_stylesheet`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_stylesheet`
--

LOCK TABLES `core_stylesheet` WRITE;
/*!40000 ALTER TABLE `core_stylesheet` DISABLE KEYS */;
INSERT INTO `core_stylesheet` VALUES (10,'Rubrique HTML - Défaut','portlet_html.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n<xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n<xsl:template match=\"portlet\">\r\n<xsl:variable name=\"device_class\">\r\n<xsl:choose>\r\n	<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n	<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n	<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n	<xsl:otherwise></xsl:otherwise>\r\n</xsl:choose>\r\n</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n	<xsl:choose>\r\n	<xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n	<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n	<xsl:apply-templates select=\"html-portlet\" />\r\n	</xsl:when>\r\n	<xsl:otherwise>\r\n	<xsl:apply-templates select=\"html-portlet\" />\r\n	</xsl:otherwise>\r\n</xsl:choose>\r\n</div>\r\n</xsl:template>\r\n	\r\n<xsl:template match=\"html-portlet\">\r\n	<xsl:apply-templates select=\"html-portlet-content\" />\r\n</xsl:template>\r\n	\r\n<xsl:template match=\"html-portlet-content\">\r\n	<xsl:value-of disable-output-escaping=\"yes\" select=\".\" />\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n\r\n\r\n\r\n'),(211,'Menu Init','menu_init.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"menu-list\">\r\n<br /><br />\r\n	<div id=\"menu-init\">\r\n		<div id=\"menu-init-content\">\r\n            <ul id=\"menu-verti\">\r\n                <xsl:apply-templates select=\"menu\" />\r\n            </ul>\r\n        </div>\r\n     </div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"menu\">\r\n    <xsl:variable name=\"index\">\r\n    	<xsl:number level=\"single\" value=\"position()\" />\r\n    </xsl:variable>\r\n\r\n    <xsl:if test=\"$index &gt; 7\">\r\n        <li class=\"first-verti\">\r\n        	<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n          		<xsl:value-of select=\"page-name\" />\r\n	        </a>\r\n    	    <xsl:apply-templates select=\"sublevel-menu-list\" />\r\n        </li>\r\n   </xsl:if>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu-list\" >\r\n	<ul>\r\n    	<li class=\"last-verti\">\r\n		 	<xsl:apply-templates select=\"sublevel-menu\" />\r\n 	    </li>\r\n    </ul>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu\">\r\n   <xsl:variable name=\"index_sous_menu\">\r\n         <xsl:number level=\"single\" value=\"position()\" />\r\n   </xsl:variable>\r\n\r\n   <a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n		<span><xsl:value-of select=\"page-name\" /></span>\r\n   </a>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(213,'Main Menu','menu_main.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n    <xsl:param name=\"site-path\" select=\"site-path\" />\r\n    <xsl:template match=\"menu-list\">\r\n        <xsl:apply-templates select=\"menu\" />\r\n    </xsl:template>\r\n    <xsl:template match=\"menu\">\r\n        <li class=\"nav-item\">\r\n            <a href=\"{$site-path}?page_id={page-id}\" class=\"nav-link\" target=\"_top\">\r\n                <xsl:value-of select=\"page-name\" />\r\n            </a>\r\n        </li>\r\n    </xsl:template>\r\n</xsl:stylesheet>'),(215,'Breadcrumb','page_path.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n\r\n<xsl:template match=\"page\">\r\n		<xsl:if test=\"position()!=last()-1\">\r\n			<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\"><xsl:value-of select=\"page-name\" /></a> >\r\n		</xsl:if>\r\n		<xsl:if test=\"position()=last()-1\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page_link\">\r\n		<xsl:if test=\"position()!=last()-1\">\r\n			<a href=\"{$site-path}?{page-url}\" target=\"_top\"><xsl:value-of select=\"page-name\" /></a> >\r\n		</xsl:if>\r\n		<xsl:if test=\"position()=last()-1\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n</xsl:stylesheet>'),(217,'Site Map','site_map.xsl','<?xml version=\"1.0\"?> <xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"> 	<xsl:param name=\"site-path\" select=\"site-path\" /> 	<xsl:variable name=\"current-page-id\" select=\"current-page-id\" /> 	<xsl:template match=\"page[page-level=0]\"> 		<div id=\"lutece-map-tree\" class=\"lutece-tree\"> 			<ul> 				<li id=\"node-{page-id}\" class=\"lutece-tree-node\" data-tree-icon=\"home\"> 					<xsl:value-of select=\"page-name\" /> 					<xsl:if test=\"not(string(page-role)=\'none\')\"> 						<strong> 							<xsl:text disable-output-escaping=\"yes\">- #i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text> 							<xsl:value-of select=\"page-role\" /> 						</strong> 					</xsl:if> 					<a href=\"{$site-path}?page_id={page-id}\" title=\"{page-description}\"><span class=\"ti ti-home-link ms-2\"></span></a> 					<ul> 						<xsl:apply-templates select=\"child-pages-list\" /> 					</ul> 				</li> 			</ul> 		</div> 	</xsl:template> 	<xsl:template match=\"page[page-level>0]\"> 		<xsl:variable name=\"index\" select=\"page-id\" /> 		<xsl:variable name=\"description\" select=\"page-description\" /> 		<xsl:choose> 			<xsl:when test=\"count(child-pages-list/*)>0\"> 			<li id=\"node-{$index}\" class=\"lutece-tree-node\" data-tree-icon=\"folder\"> 				<span class=\"node-name\"> 					<xsl:value-of select=\"page-name\" /> 					<xsl:if test=\"not(string(page-role)=\'none\')\"> 						<strong> 							<xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text> 							<xsl:value-of select=\"page-role\" /> 						</strong> 					</xsl:if> 					<a href=\"{$site-path}?page_id={page-id}\" title=\"{page-name } - {$description}\"><span class=\"ti ti-link mx-2\"></span></a> 				</span> 				<ul> 					<xsl:apply-templates select=\"child-pages-list\" /> 				</ul> 			</li> 			</xsl:when> 			<xsl:otherwise> 				<li id=\"node-{$index}\" class=\"lutece-tree-item\" data-tree-icon=\"file-symlink\"> 					<a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\"> 						<span class=\"leaf-name\"><xsl:value-of select=\"page-name\" /></span> 						<xsl:if test=\"not(string(page-role)=\'none\')\"> 							<strong> 								<xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text> 								<xsl:value-of select=\"page-role\" /> 							</strong> 						</xsl:if> 					</a> 				</li>    			</xsl:otherwise> 		</xsl:choose> 	</xsl:template> 	<xsl:template match=\"child-pages-list\"> 		<xsl:apply-templates select=\"page\" /> 	</xsl:template> </xsl:stylesheet>'),(253,'Tree View Menu','menu_tree.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"menu-list\">\r\n	<xsl:variable name=\"menu-list\" select=\"menu\" />\r\n\r\n	<script type=\"text/javascript\">\r\n		$(document).ready(function(){\r\n			$(\"#tree\").treeview({\r\n				animated: \"fast\",\r\n				collapsed: false,\r\n				unique: true,\r\n				persist: \"cookie\"\r\n			});\r\n		\r\n		});\r\n	</script>    \r\n	\r\n	<xsl:if test=\"not(string(menu)=\'\')\">\r\n	    <xsl:text disable-output-escaping=\"yes\">		    \r\n            <div class=\"tree4\">		\r\n			<h2>&#160;</h2>\r\n			<ul id=\"tree\" class=\"tree4\">\r\n                <xsl:apply-templates select=\"menu\" />        \r\n			</ul>	\r\n			</div>\r\n		 	 <br />\r\n		</xsl:text> \r\n	</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"menu\">\r\n    <xsl:variable name=\"index\">\r\n    	<xsl:number level=\"single\" value=\"position()\" />\r\n    </xsl:variable>\r\n		<li>\r\n          <a href=\"{$site-path}?page_id={page-id}\" target=\"_top\" >\r\n               <xsl:value-of select=\"page-name\" />\r\n           </a>	   \r\n		   <br />\r\n		   <xsl:value-of select=\"page-description\" />\r\n			<xsl:apply-templates select=\"sublevel-menu-list\" /> \r\n			\r\n		</li> 	\r\n		\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu-list\" > \r\n	\r\n	<xsl:apply-templates select=\"sublevel-menu\" /> 	    	\r\n\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"sublevel-menu\">\r\n   <xsl:variable name=\"index_sous_menu\">\r\n         <xsl:number level=\"single\" value=\"position()\" />\r\n   </xsl:variable>\r\n		 <ul >\r\n			<li>\r\n				<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n					<xsl:value-of select=\"page-name\" />\r\n				</a>\r\n			</li>			\r\n		</ul>\r\n		\r\n   \r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(279,'Site Map (Admin mode)','admin_site_map_admin.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n    <xsl:param name=\"site-path\" select=\"site-path\" />\r\n    <xsl:variable name=\"current-page-id\" select=\"current-page-id\" />\r\n    <xsl:template match=\"page[page-level=0]\">\r\n        <div id=\"lutece-map-tree\" class=\"lutece-tree\">\r\n            <ul>\r\n                <li class=\"lutece-tree-node\" data-tree-icon=\"home\">\r\n                    <xsl:value-of select=\"page-name\" />\r\n                    <xsl:if test=\"not(string(page-role)=\'none\')\">\r\n                        <strong>\r\n                            <xsl:text disable-output-escaping=\"yes\">- #i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n                            <xsl:value-of select=\"page-role\" />\r\n                        </strong>\r\n                    </xsl:if>\r\n                    <a href=\"{$site-path}?page_id={page-id}\" title=\"{page-description}\"><span class=\"ti ti-link\"></span></a>\r\n                    <ul>\r\n                        <xsl:apply-templates select=\"child-pages-list\" />\r\n                    </ul>\r\n                </li>\r\n            </ul>\r\n        </div>\r\n    </xsl:template>\r\n    <xsl:template match=\"page[page-level>0]\">\r\n        <xsl:variable name=\"index\" select=\"page-id\" />\r\n        <xsl:variable name=\"description\" select=\"page-description\" />\r\n        <xsl:choose>\r\n            <xsl:when test=\"count(child-pages-list/*)>0\">\r\n            <li id=\"node-{$index}\" class=\"lutece-tree-node\" data-tree-icon=\"folder\">\r\n                <xsl:value-of select=\"page-name\" />\r\n                <xsl:if test=\"not(string(page-role)=\'none\')\">\r\n                    <strong>\r\n                        <xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n                        <xsl:value-of select=\"page-role\" />\r\n                    </strong>\r\n                </xsl:if>\r\n                <a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\"><span class=\"ti ti-link\"></span></a>\r\n                <ul>\r\n                    <xsl:apply-templates select=\"child-pages-list\" />\r\n                </ul>\r\n                </li>   \r\n            </xsl:when>\r\n            <xsl:otherwise>\r\n            <li id=\"node-{$index}\" class=\"lutece-tree-item\" data-tree-icon=\"file\">\r\n                <xsl:value-of select=\"page-name\" />\r\n                <xsl:if test=\"not(string(page-role)=\'none\')\">\r\n                    <strong>\r\n                        <xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n                        <xsl:value-of select=\"page-role\" />\r\n                    </strong>\r\n                </xsl:if>\r\n                <a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\"><span class=\"ti ti-link\"></span></a>\r\n                <xsl:apply-templates select=\"child-pages-list\" />\r\n            </li>    \r\n            </xsl:otherwise>\r\n        </xsl:choose>\r\n    </xsl:template>\r\n    <xsl:template match=\"child-pages-list\">\r\n        <xsl:apply-templates select=\"page\" />\r\n    </xsl:template>\r\n</xsl:stylesheet>'),(285,'Rubrique HTML - Fond coloré','portlet_html_background.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n	\r\n	<div class=\"portlet {$device_class}\">\r\n		<div class=\"well\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h2>\r\n					<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n				</h2>\r\n				<div class=\"portlet-background-content -lutece-border-radius-bottom\">\r\n					<xsl:apply-templates select=\"html-portlet\" />\r\n				</div>\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<div class=\"portlet-background-content -lutece-border-radius\">\r\n					<xsl:apply-templates select=\"html-portlet\" />\r\n				</div>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n		</div>\r\n    </div>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"html-portlet\">\r\n	<xsl:apply-templates select=\"html-portlet-content\" />\r\n</xsl:template>\r\n\r\n<xsl:template match=\"html-portlet-content\">\r\n	<xsl:value-of disable-output-escaping=\"yes\" select=\".\" />\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>'),(310,'Rubrique MyLutece - Défaut','portlet_mylutece.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n		<div class=\"well\">\r\n			<xsl:choose>\r\n	        <xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n				<xsl:apply-templates select=\"mylutece-portlet\" />\r\n	        </xsl:when>\r\n	        <xsl:otherwise>\r\n				<xsl:apply-templates select=\"mylutece-portlet\" />\r\n	        </xsl:otherwise>\r\n			</xsl:choose>\r\n			<div class=\"clearfix\">&#160;</div>\r\n		</div>\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"mylutece-portlet\">\r\n	<xsl:apply-templates select=\"user-not-signed\" />\r\n	<xsl:apply-templates select=\"lutece-user\" />\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"user-not-signed\">\r\n	<form class=\"form\" action=\"jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp\" method=\"post\">\r\n		<xsl:apply-templates select=\"lutece-user-authentication-service[@delegated=\'true\']\" />\r\n		<xsl:apply-templates select=\"lutece-user-authentication-service[@loginpassword-required=\'true\']\" />\r\n		<xsl:if test=\"count(lutece-user-authentication-service[@loginpassword-required=\'true\']) &gt;= 1\">\r\n			<label for=\"username\">Code d\'acc&#232;s :</label>\r\n			<input name=\"username\" class=\"input-normal\" id=\"username\" autocomplete=\"off\" tabindex=\"1\" type=\"text\"/><br />\r\n			<label for=\"password\">Mot de passe :</label>\r\n			<input name=\"password\" class=\"input-normal\" id=\"password\" autocomplete=\"off\" tabindex=\"2\" type=\"password\" />\r\n			<button class=\"btn btn-small\" tabindex=\"3\" type=\"submit\"><i class=\"icon-user\">&#160;</i>&#160;Connexion</button>\r\n		</xsl:if>\r\n	</form>\r\n	<xsl:apply-templates select=\"lutece-user-new-account-url\" />\r\n	<xsl:apply-templates select=\"lutece-user-lost-password-url\" />\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-authentication-service[@loginpassword-required=\'true\']\">\r\n	<label class=\"radio\" for=\"auth_provider\" >\r\n		<input type=\"radio\" name=\"auth_provider\" value=\"{name}\" checked=\"checked\" />\r\n		<xsl:value-of select=\"display-name\" />\r\n	</label>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-authentication-service[@delegated=\'true\']\">\r\n	<a href=\"{url}?auth_provider={name}\">\r\n		<img src=\"{icon-url}\" alt=\"{display-name}\" title=\"{display-name}\"/>\r\n	</a>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user\">\r\n    <p>\r\n	<strong>Bienvenue&#160;\r\n		<xsl:value-of disable-output-escaping=\"yes\" select=\"lutece-user-name-given\" />&#160;\r\n		<xsl:value-of disable-output-escaping=\"yes\" select=\"lutece-user-name-family\" />\r\n	</strong>\r\n	</p>\r\n    <xsl:apply-templates select=\"lutece-user-logout-url\" />\r\n    <xsl:apply-templates select=\"lutece-user-view-account-url\" />\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-logout-url\">\r\n   <form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n   	<button type=\"submit\" class=\"btn\"><i class=\"icon-off\">&#160;</i>&#160;D&#233;connexion</button>&#160;\r\n   </form>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-new-account-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n		<button type=\"submit\" class=\"btn\"><i class=\"icon-plus\">&#160;</i>&#160;Cr&#233;er un compte</button>&#160;\r\n    </form>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-lost-password-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n	   	<button type=\"submit\" class=\"btn\"><i class=\"icon-lock\">&#160;</i>&#160;Mot de passe perdu</button>&#160;\r\n   </form>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-view-account-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n	   	<button type=\"submit\" class=\"btn\"><i class=\"icon-edit\">&#160;</i>&#160;Voir mon compte</button>&#160;\r\n	</form>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n');
/*!40000 ALTER TABLE `core_stylesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_template`
--

DROP TABLE IF EXISTS `core_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_template` (
  `template_name` varchar(100) NOT NULL,
  `template_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_template`
--

LOCK TABLES `core_template` WRITE;
/*!40000 ALTER TABLE `core_template` DISABLE KEYS */;
INSERT INTO `core_template` VALUES ('core_account_reactivated_mail','Bonjour ${first_name} ! Votre compte utilisateur a bien été réactivé. Il est désormais valable jusqu\'au ${date_valid}.'),('core_expiration_mail','Bonjour ${first_name} ! Votre compte a expiré. Vous ne pourrez plus vous connecter avec, et les données vous concernant ont été anonymisées'),('core_first_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.'),('core_other_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.'),('core_password_expired','Bonjour ! Votre mot de passe a expiré. Lors de votre prochaine connexion, vous pourrez le changer.');
/*!40000 ALTER TABLE `core_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_text_editor`
--

DROP TABLE IF EXISTS `core_text_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_text_editor` (
  `editor_name` varchar(255) NOT NULL,
  `editor_description` varchar(255) NOT NULL,
  `backOffice` smallint(6) NOT NULL,
  PRIMARY KEY (`editor_name`,`backOffice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_text_editor`
--

LOCK TABLES `core_text_editor` WRITE;
/*!40000 ALTER TABLE `core_text_editor` DISABLE KEYS */;
INSERT INTO `core_text_editor` VALUES ('','portal.admindashboard.editors.labelFrontNoEditor',0),('','portal.admindashboard.editors.labelBackNoEditor',1),('sceeditor','portal.admindashboard.editors.labelFrontSceEditor',0),('tinymce','portal.admindashboard.editors.labelBackTinyMCE',1),('tinymce5','portal.admindashboard.editors.labelBackTinyMCE5',1);
/*!40000 ALTER TABLE `core_text_editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_password_history`
--

DROP TABLE IF EXISTS `core_user_password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_password_history` (
  `id_user` int(11) NOT NULL,
  `password` mediumtext NOT NULL,
  `date_password_change` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_user`,`date_password_change`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_password_history`
--

LOCK TABLES `core_user_password_history` WRITE;
/*!40000 ALTER TABLE `core_user_password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_user_password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_preferences`
--

DROP TABLE IF EXISTS `core_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_preferences` (
  `id_user` varchar(100) NOT NULL,
  `pref_key` varchar(100) NOT NULL,
  `pref_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_user`,`pref_key`),
  KEY `index_user_preferences` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_preferences`
--

LOCK TABLES `core_user_preferences` WRITE;
/*!40000 ALTER TABLE `core_user_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_right`
--

DROP TABLE IF EXISTS `core_user_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_right` (
  `id_right` varchar(255) NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_right`,`id_user`),
  KEY `index_user_right` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_right`
--

LOCK TABLES `core_user_right` WRITE;
/*!40000 ALTER TABLE `core_user_right` DISABLE KEYS */;
INSERT INTO `core_user_right` VALUES ('APPOINTMENT_CALENDAR_TEMPLATE',1),('APPOINTMENT_CATEGORY_MANAGEMENT',1),('APPOINTMENT_COMMENT_MANAGEMENT',1),('APPOINTMENT_FORM_MANAGEMENT',1),('CORE_ADMINDASHBOARD_MANAGEMENT',1),('CORE_ADMIN_SITE',1),('CORE_CACHE_MANAGEMENT',1),('CORE_DAEMONS_MANAGEMENT',1),('CORE_DASHBOARD_MANAGEMENT',1),('CORE_EDITORS_MANAGEMENT',1),('CORE_FEATURES_MANAGEMENT',1),('CORE_LEVEL_RIGHT_MANAGEMENT',1),('CORE_LINK_SERVICE_MANAGEMENT',1),('CORE_LOGS_VISUALISATION',1),('CORE_MAILINGLISTS_MANAGEMENT',1),('CORE_MODES_MANAGEMENT',1),('CORE_PAGE_TEMPLATE_MANAGEMENT',1),('CORE_PLUGINS_MANAGEMENT',1),('CORE_PROPERTIES_MANAGEMENT',1),('CORE_RBAC_MANAGEMENT',1),('CORE_RIGHT_MANAGEMENT',1),('CORE_ROLES_MANAGEMENT',1),('CORE_SEARCH_INDEXATION',1),('CORE_SEARCH_MANAGEMENT',1),('CORE_STYLESHEET_MANAGEMENT',1),('CORE_STYLES_MANAGEMENT',1),('CORE_TEMPLATES_AUTO_INCLUDES_MANAGEMENT',1),('CORE_USERS_MANAGEMENT',1),('CORE_WORKGROUPS_MANAGEMENT',1),('CORE_XSL_EXPORT_MANAGEMENT',1),('ELASTICDATA_MANAGEMENT',1),('ENTRY_TYPE_MANAGEMENT',1),('HTMLPAGE_MANAGEMENT',1),('IDENTITYSTORE_ADMIN_MANAGEMENT',1),('IDENTITYSTORE_MANAGEMENT',1),('KIBANA_MANAGEMENT',1),('KIBANA_RBAC_MANAGEMENT',1),('MATOMO_MANAGEMENT',1),('MULTIVIEW_APPOINTMENT',1),('MYDASHBOARD_PANEL_MANAGEMENT',1),('MYLUTECE_MANAGEMENT',1),('MYLUTECE_MANAGE_AUTHENTICATION_FILTER',1),('MYLUTECE_MANAGE_EXTERNAL_APPLICATION',1),('PROFILES_MANAGEMENT',1),('PROFILES_VIEWS_MANAGEMENT',1),('REFERENCELIST_MANAGEMENT',1),('REGULAR_EXPRESSION_MANAGEMENT',1),('SITELABELS_MANAGEMENT',1),('SOLR_CONFIGURATION_MANAGEMENT',1),('SOLR_FIELDS_MANAGEMENT',1),('SOLR_INDEX_MANAGEMENT',1),('SYSTEMINFO_MANAGEMENT',1),('VIEW_TEMP_FILES',1),('WORKFLOW_MANAGEMENT',1);
/*!40000 ALTER TABLE `core_user_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_role`
--

DROP TABLE IF EXISTS `core_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_role` (
  `role_key` varchar(50) NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`role_key`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_role`
--

LOCK TABLES `core_user_role` WRITE;
/*!40000 ALTER TABLE `core_user_role` DISABLE KEYS */;
INSERT INTO `core_user_role` VALUES ('all_site_manager',1),('assign_groups',1),('assign_roles',1),('CREATE_REFERENCE_IMPORT',1),('kibana_dashboards_manager',1),('mylutece_manager',1),('profiles_manager',1),('profiles_views_manager',1),('super_admin',1),('workflow_manager',1);
/*!40000 ALTER TABLE `core_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_xsl_export`
--

DROP TABLE IF EXISTS `core_xsl_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_xsl_export` (
  `id_xsl_export` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `plugin` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_xsl_export`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_xsl_export`
--

LOCK TABLES `core_xsl_export` WRITE;
/*!40000 ALTER TABLE `core_xsl_export` DISABLE KEYS */;
INSERT INTO `core_xsl_export` VALUES (125,'Core - Export users to a CSV file','Export back office users to a CSV file','csv',125,'core'),(126,'Core - Export users to a XML file','Export back office users to a XML file','xml',126,'core');
/*!40000 ALTER TABLE `core_xsl_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_client_crm_item`
--

DROP TABLE IF EXISTS `crm_client_crm_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_client_crm_item` (
  `id_crm_queue` int(11) NOT NULL DEFAULT 0,
  `crm_item` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_crm_queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_client_crm_item`
--

LOCK TABLES `crm_client_crm_item` WRITE;
/*!40000 ALTER TABLE `crm_client_crm_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_client_crm_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_client_crm_queue`
--

DROP TABLE IF EXISTS `crm_client_crm_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_client_crm_queue` (
  `id_crm_queue` int(11) NOT NULL DEFAULT 0,
  `is_locked` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_crm_queue`),
  KEY `is_locked_crm_client_crm_queue` (`is_locked`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_client_crm_queue`
--

LOCK TABLES `crm_client_crm_queue` WRITE;
/*!40000 ALTER TABLE `crm_client_crm_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_client_crm_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elastic_mapping`
--

DROP TABLE IF EXISTS `elastic_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elastic_mapping` (
  `id_mapping` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mapping`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elastic_mapping`
--

LOCK TABLES `elastic_mapping` WRITE;
/*!40000 ALTER TABLE `elastic_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `elastic_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elasticdata_indexer_action`
--

DROP TABLE IF EXISTS `elasticdata_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elasticdata_indexer_action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` varchar(255) NOT NULL,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_datasource` varchar(255) NOT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elasticdata_indexer_action`
--

LOCK TABLES `elasticdata_indexer_action` WRITE;
/*!40000 ALTER TABLE `elasticdata_indexer_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `elasticdata_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filegen_temporary_file`
--

DROP TABLE IF EXISTS `filegen_temporary_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filegen_temporary_file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL DEFAULT 0,
  `title` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `id_physical_file` varchar(255) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filegen_temporary_file`
--

LOCK TABLES `filegen_temporary_file` WRITE;
/*!40000 ALTER TABLE `filegen_temporary_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `filegen_temporary_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_entry`
--

DROP TABLE IF EXISTS `genatt_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_entry` (
  `id_entry` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `resource_type` varchar(255) NOT NULL,
  `id_type` int(11) NOT NULL DEFAULT 0,
  `id_parent` int(11) DEFAULT NULL,
  `title` mediumtext DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `help_message` mediumtext DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `mandatory` smallint(6) DEFAULT NULL,
  `fields_in_line` smallint(6) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `id_field_depend` int(11) DEFAULT NULL,
  `field_unique` smallint(6) DEFAULT NULL,
  `css_class` varchar(255) DEFAULT NULL,
  `pos_conditional` int(11) DEFAULT 0,
  `error_message` mediumtext DEFAULT NULL,
  `is_only_display_back` smallint(6) DEFAULT 0,
  `is_indexed` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_entry`),
  KEY `index_genatt_entry_resource` (`id_resource`),
  KEY `index_genatt_entry_parent` (`id_parent`),
  KEY `index_genatt_code` (`code`),
  KEY `fk_genatt_entry_type` (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_entry`
--

LOCK TABLES `genatt_entry` WRITE;
/*!40000 ALTER TABLE `genatt_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `genatt_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_entry_type`
--

DROP TABLE IF EXISTS `genatt_entry_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_entry_type` (
  `id_type` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `is_group` smallint(6) DEFAULT NULL,
  `is_comment` int(11) DEFAULT NULL,
  `is_mylutece_user` smallint(6) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `icon_name` varchar(255) DEFAULT NULL,
  `plugin` varchar(255) NOT NULL,
  `display_order` int(11) DEFAULT 0,
  `inactive` int(11) DEFAULT 0,
  PRIMARY KEY (`id_type`),
  KEY `index_genatt_entry_type_plugin` (`plugin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_entry_type`
--

LOCK TABLES `genatt_entry_type` WRITE;
/*!40000 ALTER TABLE `genatt_entry_type` DISABLE KEYS */;
INSERT INTO `genatt_entry_type` VALUES (123,'Bouton radio',0,0,0,'appointment.entryTypeRadioButton','dot-circle','appointment',1,0),(124,'Case à cocher',0,0,0,'appointment.entryTypeCheckBox','check-square','appointment',2,0),(125,'Commentaire',0,1,0,'appointment.entryTypeComment','comment','appointment',3,0),(126,'Date',0,0,0,'appointment.entryTypeDate','calendar','appointment',4,0),(127,'Liste déroulante',0,0,0,'appointment.entryTypeSelect','list-alt','appointment',5,0),(128,'Zone de texte court',0,0,0,'appointment.entryTypeText','file-alt','appointment',6,0),(129,'Zone de texte long',0,0,0,'appointment.entryTypeTextArea','sticky-note','appointment',7,0),(130,'Numérotation',0,0,0,'appointment.entryTypeNumbering','hashtag','appointment',8,0),(131,'Regroupement',1,0,0,'appointment.entryTypeGroup','indent','appointment',9,0),(132,'Liste déroulante SQL',0,0,0,'appointment.entryTypeSelectSQL','list-alt','appointment',10,0),(133,'Géolocalisation',0,0,0,'appointment.entryTypeGeolocation','map-marked-alt','appointment',11,0),(134,'Session',0,0,0,'appointment.entryTypeSession','user','appointment',12,0),(135,'Utilisateur MyLutece',0,0,1,'appointment.entryTypeMyLuteceUser','user','appointment',13,0),(136,'Image',0,0,0,'appointment.entryTypeImage','image','appointment',14,0),(137,'Fichier',0,0,0,'appointment.entryTypeFile','file','appointment',15,0),(138,'Numéro de téléphone',0,0,0,'appointment.entryTypePhone','phone-square','appointment',16,1);
/*!40000 ALTER TABLE `genatt_entry_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_field`
--

DROP TABLE IF EXISTS `genatt_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_field` (
  `id_field` int(11) NOT NULL AUTO_INCREMENT,
  `id_entry` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `value` mediumtext DEFAULT NULL,
  `default_value` smallint(6) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `value_type_date` date DEFAULT NULL,
  `no_display_title` smallint(6) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_field`),
  KEY `index_genatt_field_entry` (`id_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_field`
--

LOCK TABLES `genatt_field` WRITE;
/*!40000 ALTER TABLE `genatt_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `genatt_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_referenceitem_field`
--

DROP TABLE IF EXISTS `genatt_referenceitem_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_referenceitem_field` (
  `id_field` int(11) NOT NULL DEFAULT 0,
  `id_item` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_referenceitem_field`
--

LOCK TABLES `genatt_referenceitem_field` WRITE;
/*!40000 ALTER TABLE `genatt_referenceitem_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `genatt_referenceitem_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_response`
--

DROP TABLE IF EXISTS `genatt_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_response` (
  `id_response` int(11) NOT NULL AUTO_INCREMENT,
  `response_value` mediumtext DEFAULT NULL,
  `id_entry` int(11) DEFAULT NULL,
  `iteration_number` int(11) DEFAULT -1,
  `id_field` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT 1,
  PRIMARY KEY (`id_response`),
  KEY `index_genatt_response_entry` (`id_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_response`
--

LOCK TABLES `genatt_response` WRITE;
/*!40000 ALTER TABLE `genatt_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `genatt_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_verify_by`
--

DROP TABLE IF EXISTS `genatt_verify_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_verify_by` (
  `id_field` int(11) NOT NULL DEFAULT 0,
  `id_expression` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_field`,`id_expression`),
  KEY `index_genatt_verify_by_field` (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_verify_by`
--

LOCK TABLES `genatt_verify_by` WRITE;
/*!40000 ALTER TABLE `genatt_verify_by` DISABLE KEYS */;
/*!40000 ALTER TABLE `genatt_verify_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `html_portlet`
--

DROP TABLE IF EXISTS `html_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `html_portlet` (
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  `html` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_portlet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `html_portlet`
--

LOCK TABLES `html_portlet` WRITE;
/*!40000 ALTER TABLE `html_portlet` DISABLE KEYS */;
INSERT INTO `html_portlet` VALUES (2,'<p>Affichage de la page <a href=\"jsp/site/Portal.jsp?page=appointmentsearch&amp;category=Avocats\">Cartographie</a> pour les services de rendez-vous déterritorialisés</p>\n<p class=\"logo\">&nbsp;</p>'),(4,'<h2>Get into the Back Office of this demo site</h2> \n<p class=\"mb20\">Sign in as administrator with <em>admin/adminadmin</em>.</p> \n<p><a class=\"btn btn-primary\" title=\"Access to admin [Open  in new window]\" href=\"jsp/admin/AdminLogin.jsp\" target=\"\"><span class=\"fa fa-door-open\">&nbsp;</span> Enter Back Office</a></p> \n<p>&nbsp;</p>'),(5,'<h3>Resources</h3> \n<hr> \n<div class=\"row\"> \n <div class=\"col-xs-12 col-sm-6\"> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"GitHub site [Open  in new window]\" href=\"https://github.com/lutece-platform\" target=\"_blank\"><img class=\"media-object\" src=\"images/local/skin/github-logo.png\" alt=\"Github logo\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Access to our code repository</h4> \n   </div> \n  </div> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"Docker Hub site [Open  in new window]\" href=\"https://hub.docker.com/u/lutece\" target=\"_blank\"><img class=\"media-object\" src=\"images/local/skin/docker-logo.png\" alt=\"Docker images\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Grab some Docker images to run demos</h4> \n   </div> \n  </div> \n </div> \n <div class=\"col-xs-12 col-sm-6\"> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"Lutece Wiki site [Open  in new window]\" href=\"https://fr.lutece.paris.fr/fr/jsp/site/Portal.jsp?page=wiki&amp;action=changeLanguage&amp;page_name=home&amp;language=en\" target=\"_blank\"> <img class=\"media-object\" src=\"images/local/skin/wiki-logo.png\" alt=\"WIKI\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Read our technical documentation</h4> \n   </div> \n  </div> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\" Twitter Site [Open  in new window]\" href=\"https://twitter.com/LuteceNews\" target=\"_blank\"> <img class=\"media-object\" src=\"images/local/skin/twitter-logo.png\" alt=\"Twitter logo\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Follow us on Twitter</h4> \n   </div> \n  </div> \n </div> \n</div>'),(8,'<p><strong>RendezVous</strong> est un service numérique qui comprend un ensemble de fonctionnalités rendues possibles grâce à l\'ajout de serveurs tiers permettant notamment les statistiques de visites (<strong>Matomo</strong>) et métier (<strong>ElasticSearch</strong> et <strong>Kibana</strong>), l\'authentification en back office (<strong>keycloak</strong>) ou encore l\'affichage des disponibilités sur une carte (grâce aux indexations sur <strong>SolR</strong>). Seuls les emails sont émulés par un outil (<strong>Mailpit</strong>) permettant d\'intercepter tous les envois effectués depuis l\'application pour vous donner une bonne idée des possibilités. Ces envois seront à pérenniser en utilisant votre propre serveur de messagerie d\'entreprise.</p>\n<p>Voici l\'ensemble des liens vers ces applicatifs, avec les identifiants des comptes utilisateurs vous permettant de vous connecter aux interfaces d\'administration :</p>'),(9,'<style>\r\ntable {\r\n  font-family: arial, sans-serif;\r\n  border-collapse: collapse;\r\n  width: 100%;\r\n}\r\n\r\ntd, th {\r\n  border: 1px solid #dddddd;\r\n  text-align: left;\r\n  padding: 4px;\r\n}\r\n\r\n/*tr:nth-child(even) {\r\n  background-color: #ff3300;\r\n}*/\r\n</style>\r\n<table>\r\n  <tr style=\"background-color: #ff3300;\">\r\n    <th>Service</th>\r\n    <th>Identifiants</th>\r\n    <th>Commentaires</th>\r\n  </tr>\r\n  <tr>\r\n    <td><b>Back Office RendezVous</b><br/><a href=\"http://localhost:8080/rendezvous/jsp/admin/AdminLogin.jsp\" target=\"_blank\">(lien)</a></td>\r\n    <td>Identifiant : admin<br/>Mot de passe : adminadmin<br/><i>Lors de la première connexion, il vous sera demandé de le modifier</i></td>\r\n    <td>Le \"back office\" est l\'interface d\'administration de votre application de prise de rendez-vous. Il vous permet de gérer les comptes et leurs autorisations associées, l\'éditorial, le paramétrage de votre application, et de gérer les rendez-vous pris par les usagers au quotidien : créer vos agendas, définissez vos disponibilités et les notifications à envoyer, et laissez l\'application faire le reste.</td>\r\n  </tr>\r\n<tr>\r\n    <td><b>Mailpit</b><br/><a href=\"http://localhost:1080/\" target=\"_blank\">(lien)</a></td>\r\n    <td>Pas d\'identifiant nécessaire</td>\r\n    <td>Mailpit est un petit outil permettant d\'intercepter les notifications envoyées sur un port particulier pour en afficher le contenu avec une légère mise en forme. Il suffit de cliquer sur une ligne de notification pour déplier le contenu. Cela vous permet de tester les envois effectués par l\'application.</td>\r\n  </tr>\r\n  <tr>\r\n    <td><b>Matomo</b><br/><a href=\"http://localhost/\" target=\"_blank\">(lien)</a></td>\r\n    <td>Pas d\'identifiant nécessaire</td>\r\n    <td>Matomo est un logiciel libre et open source de mesure de statistiques d\'audience. Lorsqu\'un usager navigue sur l\'application, les pages qu\'il consulte, le temps passé, ainsi que les éléments techniques de son origine géographe, et son navigateur internet sont consultables depuis cette interface, mais également dans le back office de l\'application (menu \"Site\" -> \"Statistiques Web Matomo\").</td>\r\n  </tr>\r\n<tr>\r\n    <td>SolR<br/><a href=\"http://localhost:8983/solr/#/\" target=\"_blank\">(lien)</a></td>\r\n    <td>Pas d\'identifiant nécessaire</td>\r\n    <td>SolR est une base de données optimisée pour la recherche, conçue sous licence libre. Elle est utilisée pour indexer les créneaux disponibles de façon optimisée et pour restituer ces disponibilités sur une carte géographique.</td>\r\n  </tr>\r\n  <tr>\r\n    <td><b>ElasticSearch / Kibana</b><br/><a href=\"http://localhost:5601/s/dev/app/home#/\" target=\"_blank\">(lien)</a></td>\r\n    <td>Pas d\'identifiant nécessaire</td>\r\n    <td>ElasticSearch est également une base de données permettant l\'indexation optimisée de données. Cette pile est utilisée pour stocker les statistiques métier liées à l\'utilisation du service (ex. combien de temps à l\'avance les rendez-vous sont-ils pris en moyenne, quels sont les créneaux les plus prisés, une répartition des rendez-vous sur votre territoire, les chiffres liés aux reports, annulations, surbooking, etc.)</td>\r\n  </tr>\r\n  <tr>\r\n    <td rowspan=\"2\"><b>Keycloak</b><br/><a href=\"http://localhost:8081/admin/\" target=\"_blank\">(lien)</a></td>\r\n    <td>(<i>Compte admin</i>)<br/>Identifiant : admin<br/>Mot de passe : admin1234</td>\r\n    <td rowspan=\"2\">Keycloak est un outil open source permettant de l\'authentification unique et la gestion d\'identité, développé par la communauté WildFly et hébergé par RedHat.</td>\r\n  </tr>\r\n  <tr>\r\n        <td>(<i>Compte utilisateur de démo</i>)<br/>Identifiant : test@paris.fr<br/>Mot de passe : test1234=TEST1234</td>\r\n  </tr>\r\n</table>'),(11,'<h2>Choisissez le meilleur parcours usager pour accéder à vos agendas</h2>\n<p>Utilisez le module listant tous vos agendas automatiquement :&nbsp;</p>'),(13,'...ou bien utilisez la carte géographique comme point d\'entrée de vos services déterritorialisés...\r\n<p class=\"text-center\">\r\n<a class=\"btn-solid-reg\" href=\"jsp/site/Portal.jsp?page=appointmentsearch&category=Avocats\" target=\"_blank\" title=\"Cartographie\">\r\n<span class=\"icon\"><i class=\"ti ti-map-2\"></i></span>\r\n<span class=\"text\">Cartographie</span>\r\n</a>\r\n</p>'),(16,'<section id=\"lutece\" class=\"lutece\">\r\n    <div class=\"container\">\r\n        <div class=\"row align-items-center\">\r\n            <div class=\"col-lg-6\">\r\n                <div class=\"lutece-content\">\r\n                    <h1 class=\"my-3\">CiteLibre Rendez-Vous, votre outil clé en main</h1>\r\n                    <p class=\"font-weight-bold\" >\r\n                        CiteLibre est la suite logicielle de services numériques clé en main réutilisant les composants du framework open source <a href=\"https://lutece.paris.fr/fr/\" title=\"Site Lutece\" target=\"_blank\">Lutece</a>. Elle permet aux municipalités de tester, réutiliser et de paramétrer les services disponibles pour répondre à leurs besoins. CiteLibre est gratuit, open source, entièrement personnalisable et sécurisé.<br/>\r\nFélicitations, vous avez déployé votre service numérique de prise de rendez-vous. Prochaine étape, créer votre propre agenda. Toute la documentation est disponible <a href=\"https://lutece.paris.fr/support/wiki/howto-operational-plugin-appointment.html\" title=\"Site Lutece\" target=\"_blank\">ici</a>. <br/>\r\nAu fil de l\'utilisation de l\'application, vous pourrez exploiter des outils d\'aide à la décision (statistiques métier réalisées avec la couche ElasticSearch / Kibana). Mettez en place les règles de gestion propre à vos usages et appropriez-vous les détails des notifications envoyées à vos usagers.\r\n                    </p>\r\n                    </div>\r\n            </div>\r\n            <div class=\"col-lg-6\">\r\n                <img src=\"images/site/city-home.svg\" alt=\"\">\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>'),(18,'<div class=\"lutece-content mt-5\">\r\n                    <h2 class=\"my-3\">Connectez-vous à l\'administration de l\'application</h2>\r\n                    <p class=\"font-weight-bold\">Connectez-vous à l\'interface d\'administration en utilisant le login <strong>\"admin\"</strong> et le mot de passe <strong>\"adminadmin\"</strong> (vous serez invités à réinitialiser le mot de passe). Vous pourrez alors personnaliser l\'agenda de démo.<br/>Vous trouverez également tous les <a href=\"jsp/site/Portal.jsp?page_id=3\" title=\"Liens utiles\">liens utiles</a> avec les informations de connexion pour utiliser tous les services mis à disposition dans l\'application.</p>\r\n                    <p class=\"text-center\">\r\n			<a class=\"btn-solid-reg\" href=\"jsp/admin/AdminLogin.jsp\" target=\"_blank\" title=\"Go to admin login page [Open in new window]\">\r\n				<span class=\"icon\"><i class=\"ti ti-user-cog\"></i></span>\r\n				<span class=\"text\">Administration</span>\r\n			</a>\r\n		</p>\r\n</div>');
/*!40000 ALTER TABLE `html_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `htmlpage`
--

DROP TABLE IF EXISTS `htmlpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `htmlpage` (
  `id_htmlpage` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL DEFAULT '',
  `html_content` mediumtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `workgroup_key` varchar(50) NOT NULL DEFAULT 'all',
  `role` varchar(50) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id_htmlpage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `htmlpage`
--

LOCK TABLES `htmlpage` WRITE;
/*!40000 ALTER TABLE `htmlpage` DISABLE KEYS */;
INSERT INTO `htmlpage` VALUES (1,'Texte de page de pré-recherche','<p>Test</p>',0,'all','none'),(2,'Texte d\'aide sur la page calendrier','<p>test 2</p>',0,'all','none');
/*!40000 ALTER TABLE `htmlpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identitystore_attribute`
--

DROP TABLE IF EXISTS `identitystore_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identitystore_attribute` (
  `id_attribute` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `key_name` varchar(100) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `key_type` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_attribute`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `key_name` (`key_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitystore_attribute`
--

LOCK TABLES `identitystore_attribute` WRITE;
/*!40000 ALTER TABLE `identitystore_attribute` DISABLE KEYS */;
INSERT INTO `identitystore_attribute` VALUES (1,'Genre','gender','0:Non défini /  1:Homme / 2:Femme',0),(2,'Email','email','',0),(3,'Date de naissance','birthdate','au format DD/MM/YYYY',0),(4,'Lieu de naissance','birthplace','',0),(5,'Téléphone portable','mobile_phone','Réservé pour l\'envoi de SMS',0),(6,'Téléphone fixe','fixed_phone','',0),(7,'Téléphone fixe ou mobile','phone','',0),(8,'Nom usuel','preferred_username','',0),(9,'Adresse postale','address','',0),(10,'Prénom','first_name','Prénom usuel',0),(11,'Nom de famille de naissance','family_name','',0),(12,'Numéro de rue','address_number','Champ d\'adresse : numéro de rue ',0),(13,'Suffixe','address_suffix','Champ d\'adresse : suffixe de numéro (bis,ter...)',0),(14,'Rue','address_street','Champ d\'adresse :  rue, avenue...',0),(15,'Immeuble','address_building','Champ d\'adresse : immeuble, résidence...',0),(16,'Etage','address_stair','Champ d\'adresse : Etage, Numéro d appartement',0),(17,'Code postal','address_postal_code','Champ d\'adresse : code postal',0),(18,'Ville','address_city','Champ d\'adresse : ville',0),(19,'Pays de naissance','birthcountry','',0),(30,'(FC) Prénoms','fc_given_name','Format Pivot FranceConnect - Liste des prénoms',0),(31,'(FC) Nom de naissance','fc_family_name','Format Pivot FranceConnect',0),(32,'(FC) Date de naissance','fc_birthdate','Format Pivot FranceConnect - format YYYY-MM-DD',0),(33,'(FC) Genre','fc_gender','Format Pivot FranceConnect - male / female',0),(34,'(FC) Lieu de naissance','fc_birthplace','Format Pivot FranceConnect - Code INSEE du lieu de naissance (ou une chaine vide si la personne est née à l\'étranger)',0),(35,'(FC) Pays de naissance','fc_birthcountry','Format Pivot FranceConnect - Code INSEE du pays de naissance',0);
/*!40000 ALTER TABLE `identitystore_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identitystore_attribute_certificate`
--

DROP TABLE IF EXISTS `identitystore_attribute_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identitystore_attribute_certificate` (
  `id_attribute_certificate` int(11) NOT NULL AUTO_INCREMENT,
  `certifier_code` varchar(255) NOT NULL DEFAULT '',
  `certificate_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `certificate_level` int(11) NOT NULL DEFAULT 0,
  `expiration_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_attribute_certificate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitystore_attribute_certificate`
--

LOCK TABLES `identitystore_attribute_certificate` WRITE;
/*!40000 ALTER TABLE `identitystore_attribute_certificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `identitystore_attribute_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identitystore_attribute_right`
--

DROP TABLE IF EXISTS `identitystore_attribute_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identitystore_attribute_right` (
  `id_client_app` int(11) NOT NULL,
  `id_attribute` int(11) NOT NULL,
  `readable` int(11) NOT NULL DEFAULT 0,
  `writable` int(11) NOT NULL DEFAULT 0,
  `certifiable` int(11) NOT NULL DEFAULT 0,
  `searchable` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_client_app`,`id_attribute`),
  KEY `fk_attribute_right_id_attribute` (`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitystore_attribute_right`
--

LOCK TABLES `identitystore_attribute_right` WRITE;
/*!40000 ALTER TABLE `identitystore_attribute_right` DISABLE KEYS */;
INSERT INTO `identitystore_attribute_right` VALUES (1,1,1,1,0,0),(1,2,1,1,0,0),(1,3,1,1,0,0),(1,4,1,1,0,0),(1,5,1,1,0,0),(1,6,1,1,0,0),(1,7,1,1,0,0),(1,8,1,1,0,0),(1,9,1,1,0,0),(1,10,1,1,0,0),(1,11,1,1,0,0),(1,12,1,1,0,0),(1,13,1,1,0,0),(1,14,1,1,0,0),(1,15,1,1,0,0),(1,16,1,1,0,0),(1,17,1,1,0,0),(1,18,1,1,0,0);
/*!40000 ALTER TABLE `identitystore_attribute_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identitystore_client_application`
--

DROP TABLE IF EXISTS `identitystore_client_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identitystore_client_application` (
  `id_client_app` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `is_application_authorized_to_delete_value` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_client_app`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitystore_client_application`
--

LOCK TABLES `identitystore_client_application` WRITE;
/*!40000 ALTER TABLE `identitystore_client_application` DISABLE KEYS */;
INSERT INTO `identitystore_client_application` VALUES (1,'My Application','MyApplication',0);
/*!40000 ALTER TABLE `identitystore_client_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identitystore_client_application_certifiers`
--

DROP TABLE IF EXISTS `identitystore_client_application_certifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identitystore_client_application_certifiers` (
  `id_client_app` int(11) NOT NULL,
  `certifier_code` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_client_app`,`certifier_code`),
  KEY `id_client_app` (`id_client_app`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitystore_client_application_certifiers`
--

LOCK TABLES `identitystore_client_application_certifiers` WRITE;
/*!40000 ALTER TABLE `identitystore_client_application_certifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `identitystore_client_application_certifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identitystore_history_identity_attribute`
--

DROP TABLE IF EXISTS `identitystore_history_identity_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identitystore_history_identity_attribute` (
  `id_history` int(11) NOT NULL AUTO_INCREMENT,
  `change_type` int(11) NOT NULL,
  `id_identity` int(11) NOT NULL,
  `identity_connection_id` varchar(100) DEFAULT NULL,
  `attribute_key` varchar(50) NOT NULL,
  `attribute_new_value` varchar(255) NOT NULL DEFAULT '',
  `attribute_old_value` varchar(255) NOT NULL DEFAULT '',
  `author_id` varchar(255) DEFAULT '',
  `author_type` int(11) NOT NULL,
  `author_application` varchar(255) DEFAULT '',
  `certifier_name` varchar(255) DEFAULT '',
  `modification_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_history`),
  KEY `fk_history_identity_attribute_id_identity` (`id_identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitystore_history_identity_attribute`
--

LOCK TABLES `identitystore_history_identity_attribute` WRITE;
/*!40000 ALTER TABLE `identitystore_history_identity_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `identitystore_history_identity_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identitystore_identity`
--

DROP TABLE IF EXISTS `identitystore_identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identitystore_identity` (
  `id_identity` int(11) NOT NULL AUTO_INCREMENT,
  `connection_id` varchar(100) DEFAULT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_deleted` smallint(6) DEFAULT 0,
  `date_delete` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_identity`),
  UNIQUE KEY `connection_id` (`connection_id`),
  UNIQUE KEY `customer_id` (`customer_id`),
  KEY `connection_id_2` (`connection_id`),
  KEY `customer_id_2` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitystore_identity`
--

LOCK TABLES `identitystore_identity` WRITE;
/*!40000 ALTER TABLE `identitystore_identity` DISABLE KEYS */;
INSERT INTO `identitystore_identity` VALUES (1,'azerty','3F2504E0-4F89-11D3-9A0C-0305E82C3301','2024-01-19 16:20:36',0,'2024-01-19 16:20:36');
/*!40000 ALTER TABLE `identitystore_identity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identitystore_identity_attribute`
--

DROP TABLE IF EXISTS `identitystore_identity_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identitystore_identity_attribute` (
  `id_identity` int(11) NOT NULL DEFAULT 0,
  `id_attribute` int(11) NOT NULL DEFAULT 0,
  `attribute_value` mediumtext DEFAULT NULL,
  `id_certification` int(11) NOT NULL DEFAULT 0,
  `id_file` int(11) DEFAULT 0,
  `lastupdate_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `lastupdate_application` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_identity`,`id_attribute`),
  KEY `fk_identity_attribute_id_attribute` (`id_attribute`),
  KEY `ix_attribute_value` (`attribute_value`(50)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitystore_identity_attribute`
--

LOCK TABLES `identitystore_identity_attribute` WRITE;
/*!40000 ALTER TABLE `identitystore_identity_attribute` DISABLE KEYS */;
INSERT INTO `identitystore_identity_attribute` VALUES (1,1,'M',0,0,'2024-03-04 09:57:35',NULL),(1,2,'john.doe@gmail.com',0,0,'2024-03-04 09:57:35',NULL),(1,3,'11/10/1970',0,0,'2024-03-04 09:57:35',NULL),(1,4,'Paris',0,0,'2024-03-04 09:57:35',NULL),(1,5,'0623457896',0,0,'2024-03-04 09:57:35',NULL),(1,6,'0123457896',0,0,'2024-03-04 09:57:35',NULL),(1,7,'0123457896',0,0,'2024-03-04 09:57:35',NULL),(1,8,'Joe',0,0,'2024-03-04 09:57:35',NULL),(1,9,'Rue de Rennes',0,0,'2024-03-04 09:57:35',NULL),(1,10,'John',0,0,'2024-03-04 09:57:35',NULL),(1,11,'Doe',0,0,'2024-03-04 09:57:35',NULL),(1,12,'8',0,0,'2024-03-04 09:57:35',NULL),(1,13,'Bis',0,0,'2024-03-04 09:57:35',NULL),(1,14,'Rue de Rennes',0,0,'2024-03-04 09:57:35',NULL),(1,15,'Escalier B',0,0,'2024-03-04 09:57:35',NULL),(1,16,'Etage 4',0,0,'2024-03-04 09:57:35',NULL),(1,17,'75018',0,0,'2024-03-04 09:57:35',NULL),(1,18,'Paris',0,0,'2024-03-04 09:57:35',NULL);
/*!40000 ALTER TABLE `identitystore_identity_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kibana_dashboard`
--

DROP TABLE IF EXISTS `kibana_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kibana_dashboard` (
  `id_dashboard` int(11) NOT NULL,
  `idkibanadashboard` varchar(255) NOT NULL DEFAULT '',
  `title` mediumtext NOT NULL,
  `dataSourceName` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_dashboard`),
  UNIQUE KEY `idkibanadashboard` (`idkibanadashboard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kibana_dashboard`
--

LOCK TABLES `kibana_dashboard` WRITE;
/*!40000 ALTER TABLE `kibana_dashboard` DISABLE KEYS */;
INSERT INTO `kibana_dashboard` VALUES (1,'e8a3986c-1690-47c8-b886-0d38bcb3afe2','Rendez-vous',NULL);
/*!40000 ALTER TABLE `kibana_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydashboard_configuration`
--

DROP TABLE IF EXISTS `mydashboard_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydashboard_configuration` (
  `my_dashboard_component_id` varchar(50) NOT NULL,
  `id_config` varchar(255) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  `hide_dashboard` smallint(6) NOT NULL,
  PRIMARY KEY (`my_dashboard_component_id`,`id_config`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydashboard_configuration`
--

LOCK TABLES `mydashboard_configuration` WRITE;
/*!40000 ALTER TABLE `mydashboard_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydashboard_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydashboard_dashboard_association`
--

DROP TABLE IF EXISTS `mydashboard_dashboard_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydashboard_dashboard_association` (
  `id_dashboard_association` int(11) NOT NULL,
  `id_dashboard` varchar(50) NOT NULL DEFAULT '0',
  `id_panel` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_dashboard_association`),
  KEY `fk_id_panel` (`id_panel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydashboard_dashboard_association`
--

LOCK TABLES `mydashboard_dashboard_association` WRITE;
/*!40000 ALTER TABLE `mydashboard_dashboard_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydashboard_dashboard_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydashboard_panel`
--

DROP TABLE IF EXISTS `mydashboard_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydashboard_panel` (
  `id_panel` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `is_default` smallint(6) NOT NULL,
  PRIMARY KEY (`id_panel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydashboard_panel`
--

LOCK TABLES `mydashboard_panel` WRITE;
/*!40000 ALTER TABLE `mydashboard_panel` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydashboard_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydashboard_portlet_panel`
--

DROP TABLE IF EXISTS `mydashboard_portlet_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydashboard_portlet_panel` (
  `id_portlet` int(11) NOT NULL,
  `id_panel` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_portlet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydashboard_portlet_panel`
--

LOCK TABLES `mydashboard_portlet_panel` WRITE;
/*!40000 ALTER TABLE `mydashboard_portlet_panel` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydashboard_portlet_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_attribute`
--

DROP TABLE IF EXISTS `mylutece_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_attribute` (
  `id_attribute` int(11) NOT NULL DEFAULT 0,
  `type_class_name` varchar(255) DEFAULT NULL,
  `title` mediumtext DEFAULT NULL,
  `help_message` mediumtext DEFAULT NULL,
  `is_mandatory` smallint(6) DEFAULT 0,
  `is_shown_in_search` smallint(6) DEFAULT 0,
  `attribute_position` int(11) DEFAULT 0,
  `plugin_name` varchar(255) DEFAULT NULL,
  `anonymize` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_attribute`
--

LOCK TABLES `mylutece_attribute` WRITE;
/*!40000 ALTER TABLE `mylutece_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_attribute_field`
--

DROP TABLE IF EXISTS `mylutece_attribute_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_attribute_field` (
  `id_field` int(11) NOT NULL DEFAULT 0,
  `id_attribute` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `DEFAULT_value` mediumtext DEFAULT NULL,
  `is_DEFAULT_value` smallint(6) DEFAULT 0,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `max_size_enter` int(11) DEFAULT NULL,
  `is_multiple` smallint(6) DEFAULT 0,
  `field_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_attribute_field`
--

LOCK TABLES `mylutece_attribute_field` WRITE;
/*!40000 ALTER TABLE `mylutece_attribute_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_attribute_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_connections_log`
--

DROP TABLE IF EXISTS `mylutece_connections_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_connections_log` (
  `ip_address` varchar(63) DEFAULT NULL,
  `date_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `login_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_connections_log`
--

LOCK TABLES `mylutece_connections_log` WRITE;
/*!40000 ALTER TABLE `mylutece_connections_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_connections_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_user_anonymize_field`
--

DROP TABLE IF EXISTS `mylutece_user_anonymize_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_user_anonymize_field` (
  `field_name` varchar(100) NOT NULL,
  `anonymize` smallint(6) NOT NULL,
  PRIMARY KEY (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_user_anonymize_field`
--

LOCK TABLES `mylutece_user_anonymize_field` WRITE;
/*!40000 ALTER TABLE `mylutece_user_anonymize_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_user_anonymize_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_user_field`
--

DROP TABLE IF EXISTS `mylutece_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_user_field` (
  `id_user_field` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) DEFAULT NULL,
  `id_attribute` int(11) DEFAULT NULL,
  `id_field` int(11) DEFAULT NULL,
  `user_field_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_user_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_user_field`
--

LOCK TABLES `mylutece_user_field` WRITE;
/*!40000 ALTER TABLE `mylutece_user_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifygru_alert_update_resource_state_queue`
--

DROP TABLE IF EXISTS `notifygru_alert_update_resource_state_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifygru_alert_update_resource_state_queue` (
  `id_resource_queue` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) NOT NULL,
  `id_resource_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `resource_type` varchar(255) NOT NULL DEFAULT '',
  `id_external_parent` int(11) NOT NULL DEFAULT 0,
  `id_workflow` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `alert_reference_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_state` int(11) NOT NULL,
  PRIMARY KEY (`id_resource_queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifygru_alert_update_resource_state_queue`
--

LOCK TABLES `notifygru_alert_update_resource_state_queue` WRITE;
/*!40000 ALTER TABLE `notifygru_alert_update_resource_state_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifygru_alert_update_resource_state_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_action`
--

DROP TABLE IF EXISTS `profile_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(100) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `action_permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_action`
--

LOCK TABLES `profile_action` WRITE;
/*!40000 ALTER TABLE `profile_action` DISABLE KEYS */;
INSERT INTO `profile_action` VALUES (1,'profiles.action.modify_profile.name','profiles.action.modify_profile.description','jsp/admin/plugins/profiles/ModifyProfile.jsp','edit','MODIFY_PROFILE'),(2,'profiles.action.delete_profile.name','profiles.action.delete_profile.description','jsp/admin/plugins/profiles/RemoveProfile.jsp','trash','DELETE_DELETE'),(3,'profiles.action.manage_users_assignment.name','profiles.action.manage_users_assignment.description','jsp/admin/plugins/profiles/AssignUsersProfile.jsp','user','MANAGE_USERS_ASSIGNMENT'),(4,'profiles.action.manage_rights_assignment.name','profiles.action.manage_rights_assignment.description','jsp/admin/plugins/profiles/AssignRightsProfile.jsp','lock','MANAGE_RIGHTS_ASSIGNMENT'),(5,'profiles.action.manage_roles_assignment.name','profiles.action.manage_roles_assignment.description','jsp/admin/plugins/profiles/AssignRolesProfile.jsp','th-list','MANAGE_ROLES_ASSIGNMENT'),(6,'profiles.action.manage_workgroups_assignment.name','profiles.action.manage_workgroups_assignment.description','jsp/admin/plugins/profiles/AssignWorkgroupsProfile.jsp','group','MANAGE_WORKGROUPS_ASSIGNMENT'),(7,'profiles.action.manage_view_assignment.name','profiles.action.manage_view_assignment.description','jsp/admin/plugins/profiles/AssignViewProfile.jsp','eye','MANAGE_VIEW_ASSIGNMENT');
/*!40000 ALTER TABLE `profile_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_profile`
--

DROP TABLE IF EXISTS `profile_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_profile` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `profile_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_profile`
--

LOCK TABLES `profile_profile` WRITE;
/*!40000 ALTER TABLE `profile_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_right`
--

DROP TABLE IF EXISTS `profile_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_right` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `id_right` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`profile_key`,`id_right`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_right`
--

LOCK TABLES `profile_right` WRITE;
/*!40000 ALTER TABLE `profile_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_role`
--

DROP TABLE IF EXISTS `profile_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_role` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `role_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`profile_key`,`role_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_role`
--

LOCK TABLES `profile_role` WRITE;
/*!40000 ALTER TABLE `profile_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_user`
--

DROP TABLE IF EXISTS `profile_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_user` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`profile_key`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_user`
--

LOCK TABLES `profile_user` WRITE;
/*!40000 ALTER TABLE `profile_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_view`
--

DROP TABLE IF EXISTS `profile_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_view` (
  `view_key` varchar(50) NOT NULL DEFAULT '',
  `view_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`view_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_view`
--

LOCK TABLES `profile_view` WRITE;
/*!40000 ALTER TABLE `profile_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_view_action`
--

DROP TABLE IF EXISTS `profile_view_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_view_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(100) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `action_permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_view_action`
--

LOCK TABLES `profile_view_action` WRITE;
/*!40000 ALTER TABLE `profile_view_action` DISABLE KEYS */;
INSERT INTO `profile_view_action` VALUES (1,'profiles.action.modify_view.name','profiles.action.modify_view.description','jsp/admin/plugins/profiles/ModifyView.jsp','edit','MODIFY_VIEW'),(2,'profiles.action.delete_view.name','profiles.action.delete_view.description','jsp/admin/plugins/profiles/RemoveView.jsp','trash','DELETE_VIEW'),(3,'profiles.action.manage_views_assignment.name','profiles.action.manage_views_assignment.description','jsp/admin/plugins/profiles/AssignProfilesView.jsp','user-tag','MANAGE_PROFILES_ASSIGNMENT'),(4,'profiles.action.manage_dashboards.name','profiles.action.manage_dashboards.description','jsp/admin/plugins/profiles/ManageDashboards.jsp','wrench','MANAGE_DASHBOARDS');
/*!40000 ALTER TABLE `profile_view_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_view_dashboard`
--

DROP TABLE IF EXISTS `profile_view_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_view_dashboard` (
  `view_key` varchar(50) NOT NULL DEFAULT '',
  `dashboard_name` varchar(100) NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`view_key`,`dashboard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_view_dashboard`
--

LOCK TABLES `profile_view_dashboard` WRITE;
/*!40000 ALTER TABLE `profile_view_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_view_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_view_profile`
--

DROP TABLE IF EXISTS `profile_view_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_view_profile` (
  `view_key` varchar(50) NOT NULL DEFAULT '',
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`view_key`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_view_profile`
--

LOCK TABLES `profile_view_profile` WRITE;
/*!40000 ALTER TABLE `profile_view_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_view_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_workgroup`
--

DROP TABLE IF EXISTS `profile_workgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_workgroup` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `workgroup_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`profile_key`,`workgroup_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_workgroup`
--

LOCK TABLES `profile_workgroup` WRITE;
/*!40000 ALTER TABLE `profile_workgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_workgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencelist_item`
--

DROP TABLE IF EXISTS `referencelist_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencelist_item` (
  `id_reference_item` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `code` mediumtext NOT NULL,
  `idreference` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_reference_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencelist_item`
--

LOCK TABLES `referencelist_item` WRITE;
/*!40000 ALTER TABLE `referencelist_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `referencelist_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencelist_reference`
--

DROP TABLE IF EXISTS `referencelist_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencelist_reference` (
  `id_reference` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`id_reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencelist_reference`
--

LOCK TABLES `referencelist_reference` WRITE;
/*!40000 ALTER TABLE `referencelist_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `referencelist_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencelist_translation`
--

DROP TABLE IF EXISTS `referencelist_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencelist_translation` (
  `id_translation` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(10) NOT NULL,
  `name` mediumtext NOT NULL,
  `id_reference_item` int(11) NOT NULL,
  PRIMARY KEY (`id_translation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencelist_translation`
--

LOCK TABLES `referencelist_translation` WRITE;
/*!40000 ALTER TABLE `referencelist_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `referencelist_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regularexpression_regular_expression`
--

DROP TABLE IF EXISTS `regularexpression_regular_expression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regularexpression_regular_expression` (
  `id_expression` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `regular_expression_value` mediumtext DEFAULT NULL,
  `valid_exemple` mediumtext DEFAULT NULL,
  `information_message` mediumtext DEFAULT NULL,
  `error_message` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_expression`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regularexpression_regular_expression`
--

LOCK TABLES `regularexpression_regular_expression` WRITE;
/*!40000 ALTER TABLE `regularexpression_regular_expression` DISABLE KEYS */;
INSERT INTO `regularexpression_regular_expression` VALUES (1,'Fichier JPG','image/jpeg','image/jpeg','Expression régulière pour les fichiers de type jpeg.','Le format du fichier n\'est pas valide. Veuillez choisir une image de type jpeg.'),(2,'Email','(^([a-zA-Z0-9]+(([\\.\\-\\_]?[a-zA-Z0-9]+)+)?)\\@(([a-zA-Z0-9]+[\\.\\-\\_])+[a-zA-Z]{2,4})$)|(^$)','admin@lutece.fr','Expression régulière pour les emails.','Le format de l\'email est incorrect.');
/*!40000 ALTER TABLE `regularexpression_regular_expression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solr_facet_intersection`
--

DROP TABLE IF EXISTS `solr_facet_intersection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solr_facet_intersection` (
  `id_field1` int(11) DEFAULT NULL,
  `id_field2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_facet_intersection`
--

LOCK TABLES `solr_facet_intersection` WRITE;
/*!40000 ALTER TABLE `solr_facet_intersection` DISABLE KEYS */;
/*!40000 ALTER TABLE `solr_facet_intersection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solr_fields`
--

DROP TABLE IF EXISTS `solr_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solr_fields` (
  `id_field` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_facet` tinyint(1) DEFAULT 0,
  `enable_facet` tinyint(1) DEFAULT 0,
  `is_sort` tinyint(1) DEFAULT 0,
  `enable_sort` tinyint(1) DEFAULT 0,
  `default_sort` tinyint(1) DEFAULT 0,
  `weight` float DEFAULT 0,
  `facet_mincount` int(11) DEFAULT 1,
  `operator_type` varchar(30) DEFAULT 'OR',
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_fields`
--

LOCK TABLES `solr_fields` WRITE;
/*!40000 ALTER TABLE `solr_fields` DISABLE KEYS */;
INSERT INTO `solr_fields` VALUES (1,'site','Site','Site',1,1,0,0,0,0,1,'OR'),(2,'type','Type','Type',1,1,0,0,0,0,1,'OR'),(3,'date','Date','Date',1,1,1,1,0,0,1,'OR'),(4,'score','Score','Score',0,0,1,1,1,0,1,'OR'),(5,'categorie','Categorie','Category',1,1,0,0,0,0,1,'OR'),(6,'title','title','Title',0,0,0,0,0,10,1,'AND'),(7,'content','content','Content',0,0,0,0,0,0.1,1,'AND'),(8,'summary','summary','Summary',0,0,0,0,0,1,1,'AND');
/*!40000 ALTER TABLE `solr_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solr_indexer_action`
--

DROP TABLE IF EXISTS `solr_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solr_indexer_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `id_document` varchar(255) NOT NULL,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `type_ressource` varchar(255) NOT NULL,
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_indexer_action`
--

LOCK TABLES `solr_indexer_action` WRITE;
/*!40000 ALTER TABLE `solr_indexer_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `solr_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_action`
--

DROP TABLE IF EXISTS `workflow_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `id_state_after` int(11) DEFAULT NULL,
  `id_alternative_state_after` int(11) NOT NULL DEFAULT -1,
  `id_icon` int(11) DEFAULT NULL,
  `is_automatic` smallint(6) DEFAULT 0,
  `is_mass_action` smallint(6) DEFAULT 0,
  `display_order` int(11) DEFAULT 0,
  `is_automatic_reflexive_action` smallint(6) DEFAULT 0,
  `uid_action` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_action`),
  KEY `action_id_workflow_fk` (`id_workflow`),
  KEY `action_id_state_after_fk` (`id_state_after`),
  KEY `action_id_icon_fk` (`id_icon`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action`
--

LOCK TABLES `workflow_action` WRITE;
/*!40000 ALTER TABLE `workflow_action` DISABLE KEYS */;
INSERT INTO `workflow_action` VALUES (1,'Validation automatique','Action déclenchée automatiquement pour valider tacitement un rendez-vous pris par l\'usager',1,2,-1,1,1,0,1,0,'173d4670-d64e-11ee-a4dc-0242ac120002'),(2,'Annulation par l\'usager','Annulation du rendez-vous à l\'initiative de l\'usager',1,3,-1,3,0,0,2,0,'173d4957-d64e-11ee-a4dc-0242ac120002'),(3,'Annulation par l\'administration','Annulation du rendez-vous à l\'initiative de l\'administration',1,3,-1,6,0,0,3,0,'173d4a42-d64e-11ee-a4dc-0242ac120002'),(4,'Report usager','Report du rendez-vous à l\'initiative de l\'usager',1,2,-1,2,0,0,4,0,'173d4b08-d64e-11ee-a4dc-0242ac120002'),(5,'Report administration','Report du rendez-vous à l\'initiative de l\'administration',1,2,-1,5,0,0,5,0,'173d4bc7-d64e-11ee-a4dc-0242ac120002'),(6,'Action d\'arriver sur l\'&#233;tat Honoré','',1,4,-1,8,0,0,0,1,'65a75fb2-0fbc-48dc-b921-124335131427'),(7,'Action d\'arriver sur l\'&#233;tat Non honoré','',1,5,-1,8,0,0,0,1,'fde24f70-324e-44d2-a147-9707c29be80c'),(8,'Action d\'arriver sur l\'&#233;tat Rendez-Vous Anonymisé','',1,6,-1,8,0,0,0,1,'ccd14851-ff67-49ec-8e57-e108f07c8270');
/*!40000 ALTER TABLE `workflow_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_action_action`
--

DROP TABLE IF EXISTS `workflow_action_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_action_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `id_linked_action` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_action`,`id_linked_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action_action`
--

LOCK TABLES `workflow_action_action` WRITE;
/*!40000 ALTER TABLE `workflow_action_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_action_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_action_state_before`
--

DROP TABLE IF EXISTS `workflow_action_state_before`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_action_state_before` (
  `id_action` int(11) NOT NULL,
  `id_state_before` int(11) NOT NULL,
  PRIMARY KEY (`id_action`,`id_state_before`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action_state_before`
--

LOCK TABLES `workflow_action_state_before` WRITE;
/*!40000 ALTER TABLE `workflow_action_state_before` DISABLE KEYS */;
INSERT INTO `workflow_action_state_before` VALUES (1,1),(2,1),(2,2),(3,1),(3,2),(4,1),(4,2),(5,1),(5,2),(6,4),(7,5),(8,6);
/*!40000 ALTER TABLE `workflow_action_state_before` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_appointment_reminder`
--

DROP TABLE IF EXISTS `workflow_appointment_reminder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_appointment_reminder` (
  `id_task` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `time_to_alert` int(11) NOT NULL,
  `email_notify` smallint(6) NOT NULL,
  `sms_notify` smallint(6) NOT NULL,
  `email_alert_message` mediumtext DEFAULT NULL,
  `sms_alert_message` mediumtext DEFAULT NULL,
  `alert_subject` varchar(255) NOT NULL,
  `email_cc` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `id_state_after` int(11) NOT NULL,
  PRIMARY KEY (`id_task`,`id_form`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_appointment_reminder`
--

LOCK TABLES `workflow_appointment_reminder` WRITE;
/*!40000 ALTER TABLE `workflow_appointment_reminder` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_appointment_reminder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_assignment_history`
--

DROP TABLE IF EXISTS `workflow_assignment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_assignment_history` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL,
  `workgroup_key` varchar(255) NOT NULL,
  PRIMARY KEY (`id_history`,`id_task`,`workgroup_key`),
  KEY `assignment_id_history_fk` (`id_history`),
  KEY `assignment_id_task_fk` (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_assignment_history`
--

LOCK TABLES `workflow_assignment_history` WRITE;
/*!40000 ALTER TABLE `workflow_assignment_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_assignment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_icon`
--

DROP TABLE IF EXISTS `workflow_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_icon` (
  `id_icon` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mime_type` varchar(50) DEFAULT NULL,
  `file_value` mediumblob DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_icon`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_icon`
--

LOCK TABLES `workflow_icon` WRITE;
/*!40000 ALTER TABLE `workflow_icon` DISABLE KEYS */;
INSERT INTO workflow_icon VALUES (1, 'ValidationUsager', 'image/png', 0x89504E470D0A1A0A0000000D49484452000000D3000000CC0806000000E9879697000023637A5458745261772070726F66696C6520747970652065786966000078DAD59C59761C39906CFFB18A5E02E6613918CFE91DBCE5F7354492222552A51A7E9E542552C9CC08C00773338787CCFE7FFF7BCCFFF0ABA5644D4CA5E696B3E5576CB1F9CE37D53EBF9EAFCEC6FBE7FDB5C2EB67EEF3EB66CED70F3C2FE94DAF37E6FD7A7FE7F5F4E30325BE5E1F9F5F37E575215F5F177AFDE0ED824177F67CF37A5F7D5D28F8E775F7FABB69AFCFF5F8613BAFFF6BBBF7D4879E1FFDF4F75830C64A5C2F78E37770C1F267D51B82FE8FA1DFAF9D9F78DEE442E1FB14327FC690BFB69D79FFF627E39DF2B5ED6C7FBD237C3685B1F9F586FC938D5EAFBBF4B5EDAE853EAEC8BD7DEB3FFF2054FF66B55F6C77CEAAE7EC67773D662C95CD6B53F67589FB1D6F1C9832DC8F657E17FE4F7C5FEEEFC6EFCA16271E5B7873F07B1AD79CC7DAC745B75C77C7EDFB75BAC912A3DFBEF0D5FBE9C37DAD86E29B9F412E88FAED8E2FA1856542C53F13AF055EF6EF6B71F7BEEDDE6FBACA9D97E39DDE71317CF9EB6FF3D58BFFE4F7FB85CE51E83A778D59AEAD589757E8B10C794E7FF22E5CE0CECBA6E9DAF7FE36EF6EFDF14B8E0D78305D335736D8ED782E3192FB115BE1FA39F0BE64A3B18F935D59AF0B6022EE9D588C0B78C0661792CBCE16EF8B73D8B1E29FCECA49013FF0804BC92F670EBE0921E39CEA756F3E53DC7DAF4FFE791968C1114A91826B5AE8382BC644FC945889A19E428A26A594534935B5D473C831A79C73C9C2A85E428925955C4AA9A5955E438D35D55C4BADB5D5DE7C0B40586AB915D36A6BAD776EDAB974E7D39D77F43EFC08238E34F228A38E36FA247C669C69E659669D6DF6E55758A4FFCAAB9855575B7DBB4D28EDB8D3CEBBECBADBEE87583BE1C4934E3EE5D4D34E7FF7DACBAB9FBDE67EF2DCEFBDE65E5E93C7E27D5FF9E1355E2EE5ED124E7092E4333CE6A3C3E3451E1038C967B6BA18BD3C279FD9E6498AE4F19A4B72CE72F2181E8CDBF974DCBBEF7E78EEB77E3329FE2DBFF9EF3C67E4BAFFC27346AE7B79EE57BF7DE1B5D56F4509D741CA42D9D48603B0F1865DBBAF5D35E9F97A723DD8E2D816CE2867CFB27D5F79CC5A96C7109904C352F99C91F25AB3C761B2ADAB036476DB1AC6C8CD465E9A67F9937639CAF338CE8ECDEE9A0E6B737AAD938BA974552797E63A759841D6757FEA2C71F0AB8C33DC88A134BF46ABD98D9DAB0D91BABA636F296F95D8BA4BDE04D1AC6192D3ACD299A8388D09385F336372BEAC9A762C3BAD95FAECC7CED9467518B147AEDC04B984564F2C6973A572D76D7CB2C42C819B5D1A5D2F01D92BB13795E3C47FBFF99A562D339C534B31BD9709EEC70C29993957BFB0EA0AECA90FE2843DD8ACC2D47B80B34CFE424A047C1BEBAC1D3F8F75EE8A72C6846C09DFAC15F4521EDCAC8C9E09D094EAAEEC628DCD7B721AB1E445B4EE36BCAF38CED7B3A96BA1191F1B2EE1CFD9422AD7FFD6731745FAEEC4B44F6D113DD1959287274966089345C68CA54883785862B4269C9A08520A5A0CD396E2B62D7C1F27D423CFE5FDDEA914A2F714220BD7905A336FBF8ECFC78E96CF58755E3C2272EF96F60A495F83270697B6AED79CE213133D6BFDFEABF1F814B0C6B7DB7385516A8F58ACA5E9637133F7D4DAAAEDD22CD9A0D449123BA27A0A2476EE23B38465C6A9B9736302B4831D71365EE773545FB292BB6CA2253812926A6B0BEF5044172ED308E37A6328FA530CD1BFD7D05F8F9B3D9C8D110888BBD9EECAFD89C755F71D755F87EAFBE9A8A93829F0260C310D6E6F113CD99535E9466BA9901DBB714F5D1E7647802F12F7B0A8D216DE4E6381087B6BD345B621518CC51904E887785580EE3074BF4AD65F070CDBD7E29E7561874210E63013E87033A43752D58C34C9D3B0EC981308EB4B542693E87B81E26BB2A8E012B4EB34073214D2EFDAA526D91A2A05286C2A83696BDC1FEC1B2400C737C6FC2B5B9A2F8CD9CE72B2192F8158DB5F0462C9F73D2D8C7CDF3B4903D2F56D6120E4B336FCF02CEEFBA57D5C18EFFFBC30731E1F3F8BD2DE7F5E947D5FD6B3A86749BAF15DD29BB5CC0F73FD622DBD2A8F5D1636050D64FD7D250131F6B3C9CD2F1749FB9AD4FA038A92362477B965249FE732998290CA6A7CEAAC138B2715C6068FF61920B60363078920845EF5AD9CF8F11480D5331580F241DD78227B51790FA5BDD4679B063889D8724C6EB4AAFE775D311F36F145552232CB72936C2E94DA51B8AD9DE0E628F1442143D35D4F948DDE37FAA5077FEF37AE144E07098DFD185BBF7AB0B8D3A7D0B653FC213565D895F6F48572DE13F76B41A80966476C43AD0F7E4707A1A752D52DC0C86C48C9676D7ABEBAA3C539602736509BDF60521D87943B9102391BAC1386005B28D10D41A8A42DEC2AEE93FD18308FE246094BF78D9089AF4B93F9CBDAF5875F7F5C880D9FBA026C3257600407E54CB99B1B232EEA3F0C292FDC93B5F30629CCCDBBD478993A1EBD190518ED39AE92DA834600EEC17EC072EE3034585F73870F24AAD1A01611805C6540B15C85B2A918B9DDE0D9C014A533E4C7ED091CBAC5F2FA8DA217BA1CFC81F28C5F5890BE9A9F5FF8A75FBFBCD069AF257E5A20AFBF2F90E4C0A08AB94474F1C3611E5202C8D73D268B7EAF798110FF5106C93932E98027699511E15B2B553182D2D7EE5038221B56E486D881D2C7798A70C8C961CA083FA63006D20E2B5FCAB31DB9E7C816AA1CF58EB55A28CC65239043DD7D2961B657E61188335F484312ED71A1A306D7D848ED1714BFBAD8C5ECBF7BB105641CD80F994E8E928CD37593D8A6E00B8AB2C28402B8C6E6A08A2D23D8266466ECE563EF168A8DF49B8AB5D554B95BA0CEC17CC78CB599E10E3CAFEA6AA10DF4C762C515CADBDC8632D5B92113C438484F5C9684E32848CB8FAC4DA6CC0E233E088655432E8B38A4901AC1C2AD00F9020A8D89C4DF54682B38DA281A0F930F62681B9192C00B6E8488C2E9064A2D88B262D59D6B4476ED29F22CF000F039DD9F4F0F9381C248AD60DEE5F7E598E9A06A076F0621215F1DABB0002A05DA87D8BB41D4DE2DAFE6D3CBF66F967FD99D9FBCBBD17C1114BF38F14F2E65BE8CAF7F7029F34DA8FEED4B99B3FF9B4B996F63FE6F5ECAFC267DFED6A5CCDD216FE4B32EF7D55BA6C8DA34F6A82B8564915EBB81C3C4B5CB11806D80861D3B4550D60E47D64049896C5415C9D3FB7BF542B44C15C846F9EC5B9DA9BBF4DDA08BE97214C904E9CAD8C95CE92AB11623FA43EE88117DE0A35CE89D9A4E77402B8A638BE1913D7B3A78AFA829EB9FE2A615AFE57AABBD286C7FD0B222B75989AA255CE3E3F595B1E43BDA2A81B92B91D723A2DAB18F69C89D555C60272E0200122C567F8DB711C9861AF84BE2A7C7D4CA25F2CDEE0309E8D095EC101A3652FB2D1AA877C45E9828CED12981125D1E151DB7FA9A9BED6FF8B245203907582468478630C1B7068C2A436D06C0D607B0B5B59C80E28E60021C64C45D469BC3DD0515F8C1AF55FA9ACF55C1524242103DC951401C347DE461811CBE5DCD272A8887FDCDBA75278A04083A829A1E0BF5E06FAF55A5059EB78F5179CEA737058BCA33840854E17B352C29CFA23D75DA2BAFAB0F2832904EA887BC0251735D1DDD9F1B750D593D2208561CFC06C94080A538241C3038E21E117CA2422CFE5CAA778773E0596ADB3133A9188408AFDAC49923B0634F3B3BF824DAD7E3DED9AE7ADD1604254F287627930CB8F1E17A0110EDE68DECEDF046F6AA18897F628BE07EE498D418919088827509FD03C02297E5162BF3CE2F55003EA882307F927EBA93EED3ED4DA587363F6A457F311FC44A5107F58754115FFDC872EB65B9E9161AF93E4B998F48398435357308B194AF522411116E75BA1D21568E3259C8D84EF011AACEC7737B04700835821E53F0220871B7863684F38123FC26F37F222B1FB9CABADF67AD1BB1DDBAE00BDA179F7E8A49EEEA5DFBFF198CA4E184C6AC83423F73EAEED563E2DB855EC69EE66933D5AB82FDD36722947D110B5B50F84D3A3D7ADBF537BDDDEF6AD265A6E515EEE65766091EB38EEEFC8441A84DE710388B5AEE2D96B96DC0B6F341829077CA453FC768660DB14170E771ED52B730400B965BF21E04F4061EDE8877E31D5EA8A5B8F3B9CF028714CBB6AD3C14D6C2A2D71323BA322975F6D8E2B0EA24282C480536545F61816F519C5D3DB6BF478D2FE0AEA6DCE305CC7C630B2961821C1DE1FFF1ABE8780B0E99F706F35B28BFE2581BEB3A243C26FFE0D5F177710D07FFADD430BFD31A807AF8EB382BA26CCBB86B81977B6E9C5CF75CE7C835FC0CCED7426F11610DECE540591E9D340AABA549CC3BD7275E6B49AD2B57751086EEF76161B1F0121185681624445968CC01158090EE952321D6BA7426C15C7D74061DBBD5F0857BDA3E1C41F4349D043DB551CE6C41DF0F9D3CA1334E2F999A6025FB107E01E14E6471F9498A58D7D669D45652BF3B34F857CD5580BD9799C251B358CD43C21854859AC75C3DB867F6EC2C74204453836AB36B98B9AE8AAA197019109C6AD4D9E4A9AA871EB63475D0B966AE4D1D86BA4A8643A24F256193771470187E4D146EBE0D590C6B516DC5D3012A08F9EC1FE4FB3B82099FA8FDE309C18F4DEFA848020F93489CBA77F940D3D4BDA36879B42D89BFA9C094D657F76E0C8784C81B885FF0AF7EB907DEC3220A81A96DDC6A13C3D3F0D0CE6F2CC13594355284B7DA881EB3C1A7C489439202FD55E1D67ADA5003C851BD59569DEB268671633B6FF57514C7EAD05E0E99C88BA7F688644268467D7A49E57658DE9675CF26CF795BD6B328FB9656E6EFD70BCA45412CCDE41FE38932C56256D28984A79082653904226AE3B8E1A072F2A1432D126A0030740E8AA59B86A7F98445576423285EAF5E6DEDB57F6A63BD43D26F1A0AEF7A5D79AA4D5D4D7BF7F58D62FFF0976C81F270E3C5ED87460042F5813D93A7182A65EFE7F2F52A5EEA72BDCA97EEA03AE98166E09DBA74E05433C10B3BD4CF7756E9FA9A64669CBD0E5B8B2FEA3216D4ECEC5C2159C164801EF50617DDC8869521F9B03C1248E278650397F04D8DE85C72A0B261D6754FD67CACA4DCEC98C5C199A287FBEC2486E5FCA240B891D48ED7B7BC351BCD27BC9AF2905372E769CADF83FAF994EC1B431640DA8A23E23F2B74F180644F4869A9B307F56BDAAE15A7E40E453DCC052F5788EFF4EA83820FA89AAA262960987DA456E40DA89087224E0DCC76279491D1EF7B046A78BB9535B43D035E05EF0E294A98CCD15A0823EAB08B2BAC84868FDBD57BF26573A5AEE9F4E000593D940A066E6821494A1C101CB8D1B79AB0702F716AFE02802AF236C9D4569E1065C0149C5BA601D19DBD104BDB65F5D7F7E653C02238579003C8F7E1E0940E4C233BA265933ACDDABBED427CA2694644AE57E81459BA305A9869027A9340AF42E40916C4CE2A33CC02CADDB30E0D75D25120AF2265F734E8241D2C995E7462B75480D382B14C4A69645FB12D528765014F642E10B44997A0C686A80A3BC582AC87F854D075D3266B1C8DDAB5153ADBD7BA37049054A4A2837368A2A463A0398A4EC4882AACEACE2D0021F7E0D5A3A9D14C287C0C143987D2C57D33CFE7782B53E5605A709C80C35DABCD2F4100E88A2CDE05FD0C8D866437103B0C5D08123C5BC169ECA801BCA764B569103B8DDDD648C652BBD2D02683EEF29C78B34FB826B657FBA99A01F722030318847FA832C4098CB188566FE27D8145C5933B44C0427C2E20A0B4B932595687CED0EAC4A7036323183053565C0E0BEE71598B6E021F37DA5B54CE538E446FD8FB4007B203E062ACCBA6559612F5C4A02FD86796FE9B8834C7DEA8DEA8A44E0E272ADF6A0E13C02347A4CAC03EF007BA96A2EF038AC969BB40A1F1000F381BA7F6947907972128492FCD5CE5B8A66CCE3AD5EBBE2C21ACE774F1439D2CE247B046B206AA18D0B9099C8B24AF46582A280877C3B459E9BC485A0F4A457B9B0F2E2277572FEE39770BA6081B151BABA9940EA0ABD583AA5ED1755CC785FA38781EEE835F1DF888033AB0D7165C92BB015B94EA8BD9365123F3799A2864C31E1066829CD5928A5C6E04EC1EA2EF7712809CF71D3E5B077BF56C35F41D0DA1F76AF801A45EA35F8406189A2975C911E588B086C16DA0F8802308EE29B44BD42EA1341F27765735D8528D9E85A88EFA436C01B262C5F6B096763CB35D8B6287C72F53C898AAE5E78017B2D0A9DBD19A2723530631C171F00314F3041144B1FB5077AFFC8822955A8FD4A1804AF7006284944C588987F7DC96AC917528F3A4FBF667EE8E6D4E6D17DA34FB943B080DC1EBFEA0F45B0005734F296199D649EBD429DBD2F5661007B54F4735F34DDDFBCAEB8BFBFF8104A4AC9DDA55E8BA37CFC8800E60D83AAC0FE99B53ED624B9A16007006208C468B3B2589A4A069206CDD750C2A594C5EC083CD02A3502AA033FC06969AA2B0D5B74CC50C68A886BB911EAAFA6CC7DE02151AC18CBEEF58E11E92F7DB1A5310C2033B1F05C96D1B3A4F27C50A298E3AB964A24FF2C8DEA2773BBDF0AC202A4D29CEEA21046B8476A9692E04058929E0AA7CB852D4296C6E6508B01A2EEEF6482CFC4E7D7D491B353AA6E46F2E4A3AF3A5FEFD8940DC26E152570C470FA104CBCC0DB2458C06546ED2000AF514236FCB5530466F296864A537ECABFE0B06EBBFA3336233C4E9369378C854AD02FE621B508A72780655CA11C41D73537F03D6E910042A8500029951A9488091589E203B0F03B926F407FE4495C4589DC2196DD7558C6EBFEECE1361D31E7F775E633ECAEB79F33F8BC9A357E0A0A048AE6239981EB404A6A87B5DCB9CD3469C7CBB7014CF46D21273EAACEBBC120008E5B6A57A5A190406D888536AFC297E9F9CB87CC2F3AEAA5BA51082385181C2C0D810C703FB1007A572B1B87F30DAA056A7691B58B37E1394004EB1A9A66A8F87890598CD82918096E8110A2EE836759C3624B2AAE819A875A11AC02220B10D2C6874BFDA388DFDE584F69CE45A063AB2065848DF2D06EF2996C9E9B404780737AA3481FAA4164DDB282F10B04685BF472E6AC3816A0225E288F4211FBC0562355B18A0658435C8893CE3D2CFA16FE406062DD69EED06295DA088BA46925347B0374ECF584BB584A41E27F1A683B40648C068754574D7C4524C8DD43E3F29D8091E4200E894458DB0D798CCC2D43A46E1D338951C82A16DFE52279F21EF2A0684320C9328367833D505C68FBD9044535B389E3CC2206053AA0A1635D97A53540EE8D8D268EE12632E9AD569C13414725B131C76D4180D2016C8A04FEA8B226A29F9A01CE8E3A8187965440DC83C340BC7554F848E2051E17546B363A0D8E0736750070B3A00971198959A8D9D7AAE9AF03D3A22A4AEAA208125581D9D8F2E1AC112565D5E831320ED7D18C392AB9DA8E804195A9A820BD22AE1FA073487B28C985813D1BB561CCE2A2931F68E82FA43EDD9A87E59FAE8C2E3119CBE57DE8CE976BC3A18E42282607858041470250C0C4AC93361CE0D3A2C7E61F2DD04A0B5102647308FB04B6E58B5E595A82E40A54537FDAEC8F83EB6A83CA4DB0D63AF2AB06A77235C032A715A251E58F7E73D9BD7018B0BB73D051D1A1764F9C24EA5D1ECEB0A6F9F7F7D5ACA569F5FA496BB7DF59C61FE38D549085378207F4EF3C05DB353E3F228F82F3416F150D4A31BDF9ED69B6F7E002D9112A628040D678148D2481EAD0A97267688A7A5865139596A917234756A5FC499484F08C4DE4B9247C00A03B8C718DFB7EED479418762E16A0297EF53136B8D0D12D490086A406BC092F45F44A8A066413464D195A7687D8DA92FE7759A59C9415F4237E8AA092BD2D821F145653A9E328FB43EF1763D28C7D4C919C54980B5AE064AD23449ED27016DC01210D48A89F04B9807D875D4447CE6892884ABE00FA41102838C62E788086942076EC0E328E157C60F210134B59BCFF368BC1111EEA7F25DF00C3049DD7642A5DD5305A55DA6AE44E01FA1D8B83A0C0E7D6834EA8A4C0337816E42A34B4DF7064042F3A3AB1059475E6B62F1CE784A6CC103215CD09C0DE292B6E4252962E1B8102954D4ABCF5EBCBB1A8A2480D00A26176B1A0B53528134EB0566168D27C1E45CF500BCDBDD24DCECC007F51A1748B3DFE77BE0C3B73FD3A8CC43F51889BE2755AA3C7D12F80931AC03CB81218C580DA2801203C9446CEB24236A36874A881E029ED32C85F8582123B811BE72B9879B5083D302C1D244ED462E04C29744D8483D8791C8BD8DD22175FA1D94F9B6C7A261D74B4AD4C5C9065672E25884166AB0939A9012A21F1979FBF991EA123DECE939D4D2445BB8BD7C7972AE1FBCCA7C45AC34B040490C2A7610F8833E25FB2BA8296A47AA4F280F4AB0DE895CC76755D7D862C6B2B0F1E60EF4034AB73E9E94FCD157E2E83536304995EDE0334193C790064CC16608230259C789133543E269D6B50A701B55B0104AC8F9DB8D212029593A4D826E419B63791D262594FFA89820A199EF61120A1E1DB80612081E1D348CE4117562CAB96C43E5F09ADCB062B9941CC80CC00221580156A14E00B503309EDE274A09625D0545DCD8527975A2631D01898DD44EB1529D87AA193036C90A76830E5C3EB4A6167020BE97BA291AD9AB2DA9A13828D1A8AD52D54D1CCD481F10B6541B543D9696A775ACA5F0D9BCE0D376A85F01230C86A083C96FA294E2240482070E245769A6912212732D52221BC4998B6EF6ECE6867DB038AA801E8270756990A3DD593B4B09ECD1654AF4B27232F4781F78264C284D2BCDD4611688EA01854384C2E1C6E9D04BD1C80AC50F6A67ACCCCA52929BD0E0B3C6023533E807AB412A8F54EF31DC7CBE6A776B34B9ABEB3A5037204FA2AEBA62356D4574BA459058B50B70959FC7E408B0168B8AE95DB213E5012EA28F2AC461A478F92844142AA18946D5239D55F3E7D4E0BF4ECF978E660DCB8E0A10525AB30971C150F71D7D6FF0F91CEE900FC255C882092C594321EF6A082468F05E44EAB07D1BCDA12EC058C43AB5A0D645134D8FDB21BFC11E348DE732128B48E316346B03E1C8300875E650F2C4DAACE6205934718687C896027C781D7EAB1F4A8956A3FCC244D7D80564EEECDBFC561E11ED5036046A5F3E498B04600E9D37160BD426F3152F01BADE30B8C671CF766AB44FCA09AFDCDEE48693676C81EF016F40CB808C4851D40E019CD00665B527AF538793FE38B3FBF658E856F0524D3B1AD5AE1B02BCA15BC034294DEE4E4D57EB1108801DB974F936E9E1946F56C97C1291B9C40B27147419CA17023E83582B5046636A8A45803BDB717B0BC3BE8D86ACB9D273B0105D98EEE1001071756EAB817B3D23C0ED99B63CB0BF79411461A86E1DFF438520AA9BF54E3854839A41230F114A35D681273408F0F79A575DAA0F59112D52FD8707589FCEAFCC6B24F98BC57E58ABCEEEADA6DE9FE1E1DE9EB3479491BED1D0B335A1EBB8E591BCFFE672E6B9DEBFBF9CF9B8BC7F7339F3EB6E75B92A08BB5D7DB513B74F75032FC8320D0FF80074453570AF1495482BC1A47B93CA0BE18E3393FE0F4548CB3E63DDE19E20594DD4E9EF9D6AAB19DCE9CA33E63DA3EAA009403A093497D8017255430E0873DFBA24821EEC0851DD388A0B15B5A9CFD21C343759078170138982BEF6C3ECA259F2FB84864E5112684ED1381A8008D9F24685FC6253D957AE422987D535A5171424539FB79E3F634514B7FF666B2C259D52B8447FA6AF759A362269A5DA04EF5E484BC821190192644C2022C43E822613838E079F0194BF584D1AAAACF037B54FB28E2963B100A1275136E594D0A002BAAA473CD54E62E71242AC016AD210FFD85DA30ED07B0810D6BDFC1925002A22AEEE59405261AC0BEC2E1475C3A632B431C01D328AB2C3DD4FD1432F705A2A7F444D66F60BBBBA436ECD35152DCCCD0B2E048926BB8002A428640A89628F47B454F5315C803C8AB3C0DA2BC5262F8D64395464F5407B84C4A3AFC0ECE49028E840D556881662FB8ABA441915A8597409480E0FA4D003CB1037878C568B34ACAA6EBD472ADD7E238EC8F0CC1A9B3520A99E4D125BC5B180171B1CC847604B0FDD21F8B1D5D6E6BCCE35601693A24C89D0892E0C60EBB0866B1AFE0810FC04F05BAFF31F35E283D8607CFF0E92968A9319030A4642ADA3740314DF42D7F11321663CF9DEDB2DA255E11376529DAF6ACBCC2C3FA8259DC44B914254D5810FD5A73CEA64EB06E0A853C9C6C9D2136A4A429B864EE387430E71E7ACBE14013678AD75CAB4A30617B6A3F9023832D51AC59B3634DB1B38A74FF29FBA06F3B63E30FED679A546CD3443C72A43400BDAE7EC0FCAA073B0AC8A04113F67B0E360161FEB2ABD8D52E960A084FF84A9EB984C83B1A35CDABA45255C274916955287550854279A12AB23DAD1FD84F426C48822644C6E604987E841852C9478EE23C13DD117707FCDF64F94A218D4E253F51435A43502560C55D34F2AF050AF024C98AAD8E4DA46E1E9E4C0A9179B3580A3A8812CEB3011FB5292B2F891959BD0160669430A137EB9ABD10453B777C453938A9889DBE8E829590D3203207205DC58024A8F3AE622E188E46D061C80C9370D11B3B8FE0C08BC0F016800ED01FCD72040D54154BE3368F7C9BDF78900F3F548C0F350C9F77300EFE3CEAFC1B8BDCC774301AA37BF5B97064DDF96A5B314F3795241FD98BBB067593F2D4A80E59FC1B84F8BD2333FE6B703141F97F5EBCCC4C745A9EDF3BBF1893FB7957933D6BFB5957933D6BFB5957933D6BFB595915E22B7D498A478A05534C593F424BB1F23AB25750F70CE16D98F0B6231815A54572F3E9DDD5CD131DAEA66502358FAB947F04006017F8FE095783A82F720925A1B15A05B11AA6B75223EC8C094E1BC4387C9AEA58CF073E07D91C6D0F396C0116A5D13A54E4F3949B200CF29C1299A9AC3F7182ACCD9C2991DD4A7D0E949849C4CEC694A5B440D8535F1031FA969BDE42E8D9F26E4E89E9007D65A11AF638984278A9AC7433A64A2D6A22093871DC48ADFF4DC2DE0BABC8E1841F7D203BA1B60453EB276CABAB06791D9654329A0765575484F8C22AB8DB394BA5D8317CEB3A832D3E96AF452A2BD9E2E82524C1CC61DCED2B9754186528AA57206723DCA68D906236ADD5DD3F3856E0CB6B6316900BAB7DE5E75860C15CB6ACAE9CC1C8457E36F231773E45E457C20543824DBDBE09726CA9B867334B6EC8B0C418DCD48A43B873D9BCEE358F5E82AD42A4328B179A76F2DC4C0393D0905EFF77AB8D50DF45F76289745E079B945CA117109AD850280BEE3728B865A7377643537F5B4D750A56D6CB4E9E158A88EBF7DE7FB338BA71170083D289DC7EC402CD28CBF13992BE8C189255EB5172EF76E9892748C0B522F707AE3F65654459D9E1779262851DC933542CC08B0A188D61A34C192F284FE61B51D925AF51B3933C42A0A9942429C45A13A62D19782DDF38EACC308F4F354E522C4C7F3088C1CDC5BE1BDE63EFF42E8A64695BE4FBF24764C317B9E7E11575425272BA035EBFB1692F9E35ED333FB769F0FDD3048D5F4E310FF9AB30CE198E12970D43D0A27AC12360D9D924E8021444DD9594FE5822C2AFA2D21A903A13E72D06C637946CDD99A5B3A3A44921270EA8E5540AD699AF1AD51A447C1289BA40880713499CAD6E77D161B2D0B39BAFABDC734A13540618CDEDD056CDCAEE30FB4B34E3877D3BA9C0EBCF48439705510BDCEB58B28F0209734D6AE993854B6D3E1AFA8C482180CA80ED9A3D32E3272FA468AF65420456E8F90EF5091DD735CFBC35F202D18AA3752C4921907FA0909D03F6BA10123E8067781954EB046B4100CEB4862E839F44DAC43CFA4C335A1048868D8694F46A70C7DEA91F97B344B3862EC9825F1F498793A6A6767E255A88EB027A8C0179D99D925F88363913D131BF14A4565C160D411CEC8A251E0F908144DF447A821F8319B98F7D40C6ED188FA1DAA81E83ECFB146C0DE34980C70AB0C859F15B837EF18299375E00C18CA6651535947E53981C5EC755E39778A461ED65072DD4A0B638DEA6E697409B6A77F08016AA4716684D36E572FD4B407AA6FF495F5184381DA6C1DA2A92BB43C980BF3F7FAA770A80C3D66A42EECCC8B7381D14D4D0EF25DF308B730E21D04D409F1B0CD5305B25E5A17A65ED122092E992DE841867A4D2DFE3D519CE0B6D8399B49FD5C1874EF7EF48C2BA494B55E521AAD5F7557E0CD5BA72CA15473414D827A2C9F940E08C1B0C1A5680E2C1A768C7E71FA871AA24CD0A956AA61B78BAD3688CE275ABDFF508FD7BF0A70FFC11480C8839EEAF4A6BC4D982420EEEF19C549919CEA6546A9BBA4F7530A3672F9E85FB619D58B6B7A15470F4FA6505269CE737866FE8B87293F5D682168C1BFA2D3D634B029281835A1E6D79D208B0B3D066AA3D92E03F09092A8B9E78301F765238330A1AE6495D98DB7319D66302262473DDE33824671F3DE484BAB2E9CA60789A5200A3E22572918C48417F62DFDD32203895A2885518FD87F1C49D50D765A15EAA3C3BCCF8DF15C5F531A6F87739A40546F1C35A6E9CA5DEE84ABDAECF7998DA1D1C8A2AB2E9D6B7E1E0DDE9AD152A8222AFDA03668D316F422E566D6035ECB054DF30D3DBA54D37D9A009DB240C969F7566B6716DDD6DC73C25A9F915B24334186E857C3B5812BA70CEF8F06BE22A08D5DAD8E60B24B85628810D114AFC66B337AEDF3D123B0B09AF93F02B76304D6360C5E00000006624B4744002F003B00C2E786AA47000000097048597300000B1200000B1201D2DD7EFC0000000774494D4507E8020C1038302BB5F0B000001BE64944415478DAED9D7B7C54D5BDE8BF6BCF4C92C9244C02310181105E216281880AD41711949757413D625F47A17EEEE969ED39B5D77B6E6B4FCFA7788EE7F6686FAFDAC7B9BDED4745FBB1B50FBC687D1054440DA050DE6823889000098909E46112E6B5D7FD637630C510E7B167323BF97D3F9FF97C78ECD9B367EDF59DF55BBFB5F65A4A6B4D865106545A2F802AA00DD863FD7DB3F5E73604B9271984CA10990A807B8055C08418DFF306B0D67A09724F4426608D75D3FC09BEBFCEBAE19BA5FECB3D19CE32AD05EEB4E95CABA595927B325C657A04F896CDE7BC565A28B927C34DA62AE0F5149CB7CEEA2C0B724FD28E31489FBB2245E79D60550A217E56C93D71A64C9529FE8515E2A74CEE89336512049149100491491044264110990441641204416412049149104426411044264110990441641204914910049149104426411099044164120441641284C125D6055556F0C98A9E05367CEE2C9BCED31F75C051B9B5C3E29EECB15EEBC980D5640792A97745CF641623148474F11CD1C533F7649A4C2B882E1E2812094EE351AB01C8089956014FC83D111CCC5E3ED95C206D1822923044FB7FEBD3FDA17D65AA14918421C47CAB0F352861DE1ECB6841184A4C244DD9DDDE96698588240C51D2D63AF5B64CEB81E552EEC210A5903424237A5BA62A296F61089396FA6D104D3CC878923094A94C974C0552D682605F98270882C82408229320884C8220884C8220320982C8240822932008229320884C8220320982C824452008229320884C822032098220320982C82408229320884C8220884C823078B89378EF93C83E48427AF8C15097692DB059EEB3203249982708229320884C823084710F872F1936754EC4644AB65BCDD69A294A71F1B9C768CD7B4A712810D6BB5C061FB80D7546AA87203201A6261B98097CCD65A8ABDC06D30094EAFF78A5B80520DBADD070D0D4D400BF00F6198A80541561388679D9C0CD8662BBF5BA4B1115295614941B8AAFF69E03B8D53AAF200C0B999486791A7600CF5AAD921DCC04FEA8618786CF475D1384212A93863C53F36305DB14CC4889A93043C15653F3B0867CA93AC290932910D69F53F04743F1EDB41498E25B0AD605C27A86541F612825206665BB55355092E6CFBD3EDBAD5E059600BB1D586E950CFEBE5C471962D3D19C2CD32C603044EAA518D8002C26BA53BD937804983FC8D7703F69DCBC59C2BCF3100C45CAF5E08A7456280DD5C150641A82F4991C78CDBE2C8FEB5135F822F526268AB33CAE9F0079529D4426471131F54FACBE4A26B12862EA9F4A7512991C433862DEE832D49D99786D2E43DD118E98CBA54A894C194F6B4720CBED32EE035C995A966E9771DFE9CEA0CC941099321BBFCF7327302FC32F734E7EAE7B95542B9129A371BB8C5564FE541E655DA7203265265AB30098EB90329DA3358BA46A894C99CAED19DC57EAAF4C6F93AA25326566ECA4B8C14985EAB4EB1586894C5A733530DA61E55AA2355552BD44A64CFB95BFD04121DED972B5AE5B1099328A850E2DDB0552BD4426411086689FE9722716AC53AF5B18FA7D26C7217D2691491084211BE639B460B5D42D9129E3C2A5E8A3E1CE0BF3E065A95E2253A6E1D4D5548352BD44A64CA3C1A165DB20D54B64CA34B63AB46CDF96EA25326556AC14360F009D0E2BD7AE60D8DC2BD54B64CA28B2DC4683035BA7AD596EE384542F912913F97F0E2BD7F552B544A68CC4D4FA79A0DD2165DA616AFD9C542D9129332F52A946C029EBD2FDDC504A423C9129A3F93F0E689D3A809F4BB51299329D06E0613277A68E26BA20BEB44A229323F8573277C7897D44777610442647A04DADFF0EE8CEB0EBEAB6AECB942A253239E78295FA33D1A5BFC219724911E08B8652DBA53A0D6F1CB9D9594777E8456FB6EB971E97F175067795571D8A98BFEA09445E1891EB715211DE4366EC1C28320D3623723D3A1836FF216C6ADC861A34A1C2A6FEBF5A73F7885C8FD3C2BB3D0812E6F592E536CC3381C83F98A6FEEA20F4A17A4C53DF752610F96696DB907E92E06C9900F2BC6ED330D45AADB94D6B8EA525AED31CD39A9586A11ECFF3BA23528504478779E7A2142F99A69EA7E13F0DA51601DE147CCC1953EB8D68BE611832C32101AAAC7E5AA5F5F781767C6FEB138AEE1199D2DDC41AAA0158118EE8252E433DA01497DAD81AED8A98FA5FDC2EF552C66F6A93199459F25459D2CC4AE01C8EDB85D13DD4EEA2DBA536749D09BFEACD725D6E18EA7F005703A31238552B50639AFAA19E6064BB2FC71D164706A4125805AC002648983744B02AFE36E0666054C4D40B0DA5E6034B54B465190764F5794B1038AEA31395AA4DADDF7019EA35A0C53014BE1CB7A872FE16E89EE12C909364F202634DAD5DC00D86521E53B3C350EC20F6A76F5B5D86FA3DF0FB3EFF3615C8E9DB1F020E59A2E15271C772F9A6E6724371B9A9750878C9502A4C743E61F710AC37559644B2217686CB540C5C0B7CC10A1DCA8C3E95DB88FEB11E581308997FCCF618893CD27EC88E0B0D84CCFC6C8F712BB0C650D15F66EB5A7F6C1D526775A09F013601CD4340A235C07C51A7DFCEB5AED28951A5B5C6AE57286C969BA6FE99D6BA35D60B30B5DE626A3DD7CEEB88F5659AE61C53EB9A38CAEB9469EA9F87C266C5605C6F92AF32ADF566ED5C8E6AAD2B63FCAECA7A19F19653268C33659B9A7F77BBD436A5B81B1819EB1B155CA160A3A97950C388345D6FBEA9F90FA5D42B0AAE8CE37D854AF10DB74B6D3535FF13C876C06F6D81D5121D71786B3401D84DF4119982FEAB121E2B5135D58A88660293805CEB5E7DA62B4A6B5D05BC9EC0055E0B6C4EAE5564AA463F6B28F5B9E45B58EA80FFAA14AFA4AE156721F09852C977B64DADDF55A85B94E2600687746B876062A1CECA3A6EB62233A5942A026600D701E5C005C0C7565F7A0FB003F80BD0A4B50E28A574A6C93415781528B5B1A04C53EB0DA6A9EF71BB8C43769D341C31A718867AD8506A29F6EE6278CCBA819926D41AE00743BC87F3A895441909DC04AC04E6013E2B9760127DE03300BC0BBC68F57BDF233AA8AC3345A65488D497A0D6BCA5143F32B5AE3194EA4AA0E5F0194A5DA135DF518AAB521896659250054457564A4948D7DCDE4C5BF7698E9D3A0EC0AE869DFD1E37ADA8025F968FF123C791E3F1525A94AA6AC23EA26B8B7C01980BE49D2F28213AEEB8C56AAD5FA39F6C72DA650A844D5F96CBD8AE14D3D354411A8157421173ABC765D458BF32E7637A28625EE5711957008B8031E94902511B8C989765BB8DAE4114A9D212C9B6B0AEBEA59E434D87D8D5B093EF1FF94E52E77A60E2834C2BAAA062F434CAC74CB3F58717E8B27E483E6B4C246409F813E079AB851A3C99343CA9E08E41AA3061FAACD160EAB3A9F65EC63248C3051A9E56F09541EC1FAD07FC76085473B8865F1F7C8A4D3DD529B9D805DEC5FC6DF91D5C567AA9DD62C542B71555FDD0EA4B45064526ADB95129D6599913E19C5F3DAD59A954DA17B05C053C91CC0902A100B50DB5FC6CFB4F79EAF46369BDF83B0AEFE2AB957731BB6C36D99EB425489B809F115D89EA74DA650A84CDBC2CB7F16705D3C49BF3B64E078361F3B26CB7D1E9049102A10035076BF85FBB7E94B256289ED6EABFCFFE27AE2ABF2A1D5205801780FB800F7A9311691B67721BEA5E1169601494BB0DF54F4E10E960E3FB7C73FDDD2CDB72DDA08B04B0A9A79A655BAE63C533CBD95B97F23D133C44E7771668FD49522F2D32854D3DD230D4374597CFC630D437C2A61E95E28FA9243A8019371DDD1DFCE8958798F1A78AB48774B14A35A7BA921FBDF2101DDD1DA9FA18D3EA3B799452465A6552709B82225125A6B21AA5A2631EA914697322C986BD757BB97DDDCAA43373E9E0FB47BEC3EDEB56B2EDD0B6549CBE8B6896B8B56F0222E53205233AC765A8BB4593D87119EA9BC1884EC5D3C20544C749E216E937EFFC8639D5951911D2C5D34A55BD7E05BF7DE7B704C3B6ED8A1A22BAB2D2AB446753A42FCCF3186A06D1A91A42EC4CF7186A660ACEFB08713EF51A0805F8DE9FEE63F5DE2F3BB6307F73E869DE7CFF0D4C9DF4DA371A384574F07613D1E946E99349296E1537122AB7BF4941C2E1CE7845BA7FC31A7EDCF81F8E2DC749AE72968DBF8129C553899849AF7F7306789F6826EFF8A7FABBA9FC22DD21D3ABA34FBB0AF1FF04AEE80E9976857A65F1261C9ADB9B59F1CC72478B045055B080B913E652E22FC1E34A6A78D3243ABEF42AF04EDFBE525A64F27A8C512A3A0B57883F1131C5EB312EB0E97471F59302A100FFBCF17B8EEA1FF5C7A559F358386121A5A34AED187BD2446790BF449F81DA74867937881649B1CCA6F06E7E3C22DDBF614D46A6BDE361942AE686D13770C9F84BF0E7FA3154D255DD45741EDF7B9C675BA3D4CAA4B95A7C48AAFC929DBD5D106F78B776DB5AC787763E95CFADA35672E3F49B1837725CB2E15D5F9632C0D303299329626AA51413C588A492109322A64E66A5BE7BE209EF5E7BF735FEB1F6EF1D5F6E0B7D8BF8D28C2F523EA6DCEEA945F903FD38A54C2643A912E0F3A244525C6E2895E8632005964C3151DF52CFB22DD739BEC026B9CAB96DEA4A668C9F498E2727151F7127D1844EFA64520A0FC8FAA74917A34A78867DCCAD522014E0DF5EFFD721516055050BB862D215E466E7A6F263D6A4BBCFB44C5C18B4728CAB55AA3E50EDF884037C92BD2BF617DB917088BB754AD9276A67ACBEE3801C4442E5B82AD656A9B9BD99DB76387F2D499FCA6751F162668E9D6967C2E1B3CA384D326919ACB5A91C1399411273ABF4E4F6B54343A4BCA52C9CBC900B0B2F44A9B4F42EEE496302424418A472AC22C6751CEA5BEA1D3103FCB3445A927F03AB3FF7552A4B2BF165FB923A5F3812F3FE0CFE735B2743AAEB906355AC07FE6EF7338EFFB2577AAFE12B177D852BA65C41BE373FA956C9D4262D9D2DF1BC6545CA65EA0999234C4D85D46B5BC2BCA93D21B320D11B3C505FC9E9AD52EF24D6B993E691979397F4F942E110FB8FEFE7586BCC9B502EA7CF0AB12991C9EB31BC8662B4A8903C4A51E2F518DE38448A29F1F06AEDAB8E2F9BDE49AC05BE82A4FB49A636696A6FE2C5432FF0D2BB2F25D43A499837B4A88AF5C05F1F7CCAD15FB4EF24569791FC22BB3D811EB67DB895175B5FE01F6BFF9E40281077998B4CC350A6838DEF3B7A4678DF34F8086FF2FB3584CD301F7EF421EB0E3F4BBDF92100B50DB5D2320D630A88F129DA3FD7EF74F417BD3AB78A6BCAAE61B47F7452634A5A6BDABBDB79FDBDD7F9DE1BF7F15CE71FCEFEDFDB756FC77A1A3FD6A6D7229384788EA2DC359D1B4B6F62FA85D3F1E5F892EA2B85CD3027DB4EF266DD9B6CE979F3AFFE2FCE09BF22D310A33296839ADB9B1D1BE28D52C5AC2EBB8BA5172FA5784471D27DA5AE335DEC3FB18F8DCDD574E94FAFFB59DF522F32894CE7E770F361C77EC1E5236F6165E54AC6148EC13092ABBA113342C3E90636D6BDC29ED08E7E8F39D47468F0650A993AA2F590DC1839ED68E809993A9661F9B258CE77E4D4114796C3A559F3B87DBA25920D93583B7A3AD87A642BAFB7BD76DE63CEB7E54D5A65F218AA4529B68B0AC9A360A7C7501FC570684CC98703CDFB1D590EB78CBD8559E32B6D498307C3416A1B6A79B1FE85B3D9BBFED87472533C4988D46D9FA2A156C5D12916CE5B8E7FB1739AA3131F495FE65BCE928AA58CC84D2E0D1E8E84693CDDC8FAFDEBF9F1E18768348F0F787C9C7DCBCAD43D1C0835A2822DE5F8560C87C5F4A315C7406446251D564EB99D89C513936A95B4D67405BAA83D59CBC613D59F295202498882546EECB591E89ACC3E512261BA01DB526F4DED4D29AFF800592A8B0EDDDE6F862CEEF06ED4DF70D5E4ABF06625B78460C48CD0D4DE7F1ADC2E5229D347A66683212BBA268CA9D968289A33BDE528718D66A66F166373C7E2CFF6D31DEEA1F54C0B3BDA779C3753160B333CB3B9A5E2564A0A4A924E3AF4047BD87BFCFC69701B2873A7B632E8479552372B49C127D257324DAD1F3694CA689116F99732B7642E978DBF8C5179A3F065F9E80E76D3D8DEC88CC6996C3B399D773AB7F16124FEFDAF6F1B7B1BB3C6CFB2E5C9D9B6EE36DE3CF666DC721F6A3A14EB06D5A995A933686E2DC871FD0AF89AE811378F7706CD2D8539AE8CBCB852631255FE6BF9D2C55FA6624C0545F945B85C2E94B5864E89BF8431FE314C1C39918B1A2AA869AE6167CF0E5A756C0D6DA5E772964C5B8ADFE74F7A4678C48CF0FEC9F7D970EAA59496494A652ACC714534FC8B862B94EC84114FABF42EF0CF8539AE48A68AB478E412564CBB993993E6E0CDF27E6A1035373B97D2A2520AF30A195B3096C98593B9A8713A35A7DE626770E0796F3E95CFF5175CCFE492C9B88DE4AB686B672BEB6AD70D9806CF78990054B4EFF475A5A89664444C7469CDD733B5AFE453F95CE3AF62C9A425CC9E301B5FCEF96FA9CB7051905B802FCB47517E11A5234B296F28E7A293D3D9DA5173DED0EF4AEF355C53363FE9E5BAB4D6B476B6F2AB6DBFE4F1D65F24748EF123C7C51C49BAD371030CC516A24F253E27420D2C12B0C25031A5C3078549EEA95C567C1933C6CEA42037B607803D6E0FC5238A19E11D41F18812CA4696715143055B9AB7F04EF7B6BF0AFDC618E3B8FEC245548CAE483AE9100C07D95DBF9B674EFC36E173E47862CE22EE71A7F13EBC168CE885592EF59FC06CF1E653EC0E46F4DD592EB52D551F106BE51FA8559A943399090513B860C40571CD8F534AE1CDF2523AAA94429F15FA8D9CCC450D17F156EB5BBC1BDA4797EE64C188EB9837611E45F9C9EDDA6A6A93C6B6469E7DFF590E46DE4BCB0D4CA74C64B9D43B81B05E9AE552DF558ABF9356EA6C58F7AB6044FF30DBAD120DEDF6C47250B2330872F0529A3B9EF292F284C77D0CC3C09FEB27373B97A2FC22C6158E676A6339DB1AB7F161F761AE9B703D654565492F6DDC13E8E1AD0FDEE2B953CF26759E127F4966CA04605598FF063C4C74EDB1AF0D53A9BA815F020F2B457DB63BA98C555BAC07DE517857C2ABB766A92CA6169653943F2AE90C9BC7E5A128BF88BC9C3C4A4694505658466B570BB3C65546B78049625678D80C73B8F930BF3FFCBB98B387FDB1C0BB389E85FF37BB07B1321D03EE3535FFA661B1A198AB608A864B155C38D4CCD1D0A060A786C3A6E66D05D5868A5D8218A82386F5F22E2BB93C6199C6BB2730D23B1243D993AEEF0DFDC68D1C47A1AF904038802FDB47963B2BA9A4437B573B2FD7BEC4C6EE1793BABE05A317646E98779EE4441BF03BEB85A9B5CFA554D65093C9D43AE852AA4B01AED48CC31E8D45A629A3A624DEA1D74114E072D93BF6651806F9DE7CF274DE59C912251409B1EFD83EFE70E20F495FD7B4A29857AB7B2323643A1797525D56566B48E14AFD4C86CDC4B043E0D492A9097F4084081D814E4291504ABE802DCB75B535F16CEDB3EC0FED4AFA7A2A464F8BE7874CA6F90C21624A42C43835A65F5A22CD1C6D3F4A5B579B1D3B97DB4A301CE4F0C9C33CBEE3719E6E7DD296734E282A8BABEC45A6612613C04F2A121BC06C348FB3F3F49F79AFE13D3ACF74A2B5CE9010DAA4B3A7937D27F651DDB4C19689ACF78EF96E5CC98764C3BC47C0D60EB4903C6780CFCC29CF9B300F6A13FB8077CFECE7E5C32F939BE5E59209B319E11D91AE5D27CE4B2014A0BEB59E4D75AF7DE654A558B9B1E2A6580F6DEFFD214B46A65952779D49C585892F03DF681EE7972D3FE3C39D87B9B9E516E64F994F6951A9DD7BC7C6DE8F33239CFAF8143BEA77B06980F51CE2E5E2B117C7D52A4998374CC9F664271CEAF5F26AF7CB3CF0FEFD3C54F320D507AA39D97632EDFD28AD35DD816E3E68FE80578E6F4CE8318FFE7860E283F10C709F95C92D556B78B274FAD28443BDBEADD453A71F63F79EDD2C6BB881A5E54B983EF6E2B4857EE14898A6F6266A8EBEC5962EFBA6332E2A5F1CCFE1EBFBCA24FD9E614869516952B321FAB23FB48BFD2776B1E3D4766E2A5DCEB553AFA5EC82B254ED76FE49D2E14C27071A0EB0B1696352331DFA7247E15DCC9A10730F662F565A1C405919192DD56BF8B1B76E2F73AA2B6D3D67EFD3B7CB27DFC4DC89F3282E28B6E599A473E909F670B0F1208FEF7A8C5F7CF453DBCEBBF9DAAD7C7EEAE7633D7C35B0B6F72FAE356BD6005C02B239D9706374C168EA3F3CCEDE33BBEDABE47471E0CC5EF6351FA0FD543B39CA8BDFEB27DB936D5BE8679A26A73E3EC51B1FBCC1AF8F3FC569DD6A5BABF48DABEF8EE72DAB896650FFAA655A053C21D56BF851DF52CFD46727A4ECFC57E72C60F9F8152C98BA8049C593925E6508E04CE80CFB8FEDE7E1EDFF9B751DF66D25BA7DF19E7842BC273967CBD3DE96698F65598154AFE1853FD74FCEA95C36B5A56627C1FAF011769EDE494373232AA8F0E7441FBF487456786FABF4F25F5EE6E9934FD163D3CCB307263EC82DB3E35A486B3570B2EF3FA83EA3D855C0EB52BD861F1DDD1DDCBE6E65CA77C728774D67E90537B06CEA32668D9F85DFE78FFB69DA9E600FEF1C7E9B1FEEF8219BCFBC62DBB51DBBBD89627F71AC87BF413F0B7FF6B64C58598942609E54AFE145B6279BC9B993597BF4B1947E4EABFE88773EDECA91A63A7A3A7BC873E7919F938FC71DDB525EA1488886D30DAC3BF0477E73FA49DBAEEBA52B5F65C6F8B8D6FB594D9F2C5E7F32016C002612E3F624C2D061FCA8F114778DE1E5961752FE59C72247D9D6B69586A6460828FC3923C8CDF60DB8FC71301CA4A9AD899AC3353C79F4093E32ED599DF681890FF295797F1BCF5BDE00D6F4F71FE7CA04D141A876608954B1E1C58C0B67106C0AB3EDE3D42F131F22486DF05DF6B5ECA7A5A5956C9D8DDFEB3F3B36A594426B8DA94D3E3EF331874E1E6243ED065EA8FF13DB02F60CD02EF02EE6E1FFF2086E575CA9FB6B39CFD8AC1A60E66F9965E09D52CD860FCDEDCDDCF9FC1D69DF5D704ED6952C1FBB9C05531732C63F0697E1C2D4262D9D2DD49EFC0B5B4F6CE3F553AF51173962CBACF005DEC53C79D353F1F493001E25BAD402F1CAD457AA1556874BB27DCE642E31CC261F6CA17C2A9FF9B90B985334079F278F9E7037C73F3EC1BB9D07A80DBE67DB2C0780FD37D6523E665A3C6F69B75C684B4626C1F9541167A676B08482E82C8A5146119DBA83A00EDA2A11C43D9ED4CBCDF4998727320D6F1E01BEE514A1524582227D6A80566412F610E773684345A804FB48109DCC5A450C13C2E579A6E1C50A2BF68F99627F31EBBFF01CF78EF9AE63BFF4BD63BE9BA848ED568B14D39315D23249FF29669EDFFD3CB7ED58EEA82FFBC4ACA7B975F6AD893E09FC57B3C2A56512CE65B35549E2E6A64B6EE2D02D75DC51789723C2BAFD37D6F2A5B95F4A54A46FC72392B44CC39B35C00F1279632014A0FA4075C6B65249B64631271C4426A12F6B496250BEA3BB8317F6BFC0EABD5FCE882FF3C0C407B973CEAA44FA46498B243209490B9509523D31EB69AE9A7C55520B6C262B92C824F4720FD15D499222100AB0EBE82E1EDFF3982D6B4B0CC41D8577F185E95FE4F2899727BD558E1D22894C425F5661E3D3D6CDEDCD1C6E3E4CCDD1B7F8FE91EFD816C6CDBEF052668C9B916C28772E7165ED442621162A8966FBFC769FB8BEA59E13A74FD01DEC6657C34E00369DDCF4A9C1E005DEC567B772995654C105791730B670AC1D215C7FB4131D7BDB6CC7C94426E15C0A88CE419B3FC4BFE75E4BA4A3769D50C699847369233AB0FB6DE29C2DE120EEB75AE1A3769E545A266120CAACBEC45069A5F65A7DC33DA938B9B44CC2401CB55AA9D544B7F9742AEDD677A84C9548D23209F1F6A5EEB15E7E0749F40869DAFE48641212956A1531ECA13B1C241299043B5865BD32A54FB5D71268ED607CB8C824D84119D134F32AD2BF09DE5E4B9EF5D89C9D1399844C10ABAACFCBEE50B08EE8206BEFEB68A67C71914948471FABD27A15F0C9B2C20503B462757D24D96CF57BF658AF8CDD4FECFF030FB0ECEE6D5A02640000000049454E44AE426082,16,16);
INSERT INTO workflow_icon VALUES (2,'AnnulationUsager', 'image/png',	0x89504E470D0A1A0A0000000D49484452000000D3000000CC0806000000E98796970000252D7A5458745261772070726F66696C6520747970652065786966000078DAD59C59761C3D7285DFB10A2F01F3B01C8CE778075EBEBF8B2C5214458DED174BDD3FA962311343C41D029165F6FFFCF731FFC59FD6823731959A5BCE963FB1C5E63BDF54FBFC79BE3A1BEF7FEF9F155E3F73DFBF6EE67CFDC0F392DEF47A63DEAFF7775E4FDF7EA1C4D7EBE3FBD74D795DC8D7D7855E3F78BB60D09D3DDFBCDE575F170AFE79DDBDFE6DDAEBF77AFC309DD7FF6BBBF7D42F3D3FFAF4EF58588C95B81E6BE47770C1F2DFAA3704FD3F867EBF767EE279930B85EFD3FDAF0BEEEBB533EFDF7E5ABC53BE5E3BDB5FEF08DF2F85B1F9F586FC698D5EAFBBF4F5DADD15FA3822F7F6ADFFFE0723FB643FFEF9B076E7AC7ACE7E66D76366A5B2794DCABE2E71BFE38D83A50CF7D7327F0BFF4F7C5FEEDFC6DFCA14273BB6D8CDC1DF695C739ED53E2EBAE5BA3B6EDFAFD34D8618FDF685AFDE4F1FEE6B3514DFFC0CDA82A8BFEEF8125A582654F667B26B8197FDFB58DCBD6FBBF79BAE72E7E578A7775C8CBDFCF1AFF9EAC57FF9FB7EA17314BACEDDC52C77AD189757E8310CED9CFECBBBD810775E6B9AEEFADEBFE67D5BBFFDD1C6067630DD65AE4CB0DBF15C6224F72DB6C2DDE7C0FB928DC63EA9E1CA7A5D8025E2DE89C110C5D1D9EC4272D9D9E27D718E75ACEC4F67E4A4801FEC804BC92F670E7B13426673AAD7BDF99DE2EE7B7DF2CFCB400B1B914226492A3BD4D9AC1813F1536225867A0A299A94524E25D5D452CF21C79C72CE250BA37A092596547229A596567A0D35D654732DB5D6567BF32D0061A9E5564CABADB5DEB969E7D29DDFEEBCA3F7E1471871A491471975B4D127E133E34C33CF32EB6CB32FBFC222FD575EC5ACBADAEADB6D4269C79D76DE65D7DD763FC4DA09279E74F229A79E76FAFBAEBD76F5FB5D739F76EED7BBE65EBBA61D8BF77DE5DBAEF172296F97708293A43D63C77C74EC78D10E089CB467B6BA18BD764E7B669B27299267D75CD2E62CA71D6307E3763E1DF7BE77DF76EE97FB6652FCAB7DF33FDB39A3ADFBBFD839A3AD7BEDDC8FFBF6C5AEAD7E1925DC0D52166A4D6D38001B6FD8B5FBDAC549CFD793EB612D8E6DE18C72F62CDBF795C7AC657916229360AC543E67A4BCD6EC71986CEBEA0099DDB6863172B39197E659FEA45D8EF23C8EB363B3BBA6C3D89C5EEBE4622A5DECE4D25CA70E33C8BAEE4F9D250EFE9471861B3194E6D76835BBB173B521C2AB3BF696F216C5D65DF22688660D939C6694CE44C5694CC0F99A9925E7CBAA69C7B2D35AA9CF7EEC9C6D54C722F6C8959B2097D0EA89216DAE54EEB80D5C41CC12B8D9A5D1F51290BD1273131D27FEF78BAF69D532C339B514D37B99E07ECC88929973F58B555D8139F5419C30074B98B22A3DA05926FF2025027B1BEBAC9D7D1EEBDC11E5CC123225F666ADA097F2E06665F44C80A6547765166B6CDE93D388252FA275B7E17D65E37C3D1B5E0BCDF8D8D812FE3B5B48E5EEBFF5DC4591BE3B31ED535B444F74A5E4E1499219C2649031B352A4413C0C315A134E4D04298416C3B4A5B86D0BDFC789F4C87379BF772A85E83D85C8626B48AD99B75FC7E76347CB67AC3A2F1E11B9774A7B85A4AFC113834B53D76B4EF1C9123D63FDF957E3D953C09ABDDD9E2B8C527B64C55A9A3E1637734FADADDAAECCD21A943A496247544F81C4CE7D6486B0CC3835776E4C8076B023CEC6EBFC1EEC4B5672974DB4044742C2B6B6F00E4574E1328D30AE3786A23FC510FD7B0DFDF3B8D9C3D92C02017127DB5DB93FF16CD57D47DD7743F5FD74702A9B1478130B310DDBDE2278B22B63D28DD612911DBBD99EBA3CEA8E005F24EE6150A52D763B8D0522ECAD4917AD0D89622C9B41807E885705E80E43F7AB64FDDD8061FB5ADCB32ED6A1108439CC043ADC0CE98D5435234DF2342C3BE604C2FA9294C924FA5EA0F89A0C2AB814AA3FCD810C85F4BBEB5293D61A2905286C98C1B435EE0FF60D1280E3278BF9BBB5345F2C663BCB69CD7809C4DAFE221043BEEF6961E4FBDE491A90AE6F0303219FB1B10FCFE07E3EB48F03E3FDDF0FCC9C678F9F4169EE9F0765DF87F50CEA19926E7C87F4B65AE6DB72FDB05A7A553B7655D8143490F5F79504C4D8EF97DCFC7091B4EF925A7F4051D286E42E9746F2792E9321845456E3B7CE3AB17852616CF0689F01623B3076900842E855DFE8C48F870056CF3000F4016F3C91BD60DE03B597FA4CD3002791B51C931BADAAFFBBAE980F9BF8829588CCB2DC249B0B543B0AB7B513DC1C259E286468BAEB895AA3F7897EB983BFDE37AE144E07098DFD185B3FEE6071A74FA16D87FC113565D895F6F4053AEF89FBE142414D303BB236707DF03B3A043D4C55B700233321259FB5E9F9EA8E06E7809DD8406DFE8249751C52EE4408723654270A01B550A21B8250595BD455DC27FB31501EC58D1296EE1B11135F5393F92D77FDE1D76F1762C2A7AE809ACC151861837286EEE6661117FC8F42CA8BEDC99A794314E6E65D6ABC0C8F476F4601467B8EABA4F6A011807B583F603977141AAAAFB9C32F24D868C04504205719482C57916C2223B71B3A1B98823A437EB63D8143972CEFBE417AA16B833F489EF1830AD257F3F9857FFDFAE5854E7B0DF1BB01F2FAFB00490E16543197882E7E38CC234A00F9BAC764D0EF9C1708F16F3448CE9149073C49AB8C88DE5AA94A1194BE7647C211D9A82237A40E943ECE43C22127C75246F431C418483B56F94A9EEDC83D47B6C072F01D63B54898AB461087BAFB52C26CAFCC231067BE908625DAE342470DAE3191DA2F287E75B18BD97F7BB105641CD40F994E8E928CD3759398A6E00B89B2C24402B8C6E4908A0DE3EF276266ECE563EF16898DF59B8AB5D5C4DC2DC07328DF31636D66B883CEABBA5A6803FFB1187145F236B7914C756EC404310ED2139725B17110D2F2236B922933C3C81E04C3A81197451A52488D61E156807C0185C6C4E26F18DA0A8E368EC6A3E48314DAC6A424F0821B61A2D87483A4164459A9EACE3522B3F6903C033C007C4EF7E7D3A3649030722B2CEFF2FB6ACC7470B58337839088AFCEAA30009802EF43ECDD206AEF2BAFE2D36BEDDF56FEB5EEFCE47D1BCD1741F1C326FEC9A5CC97F1F50F97323F09D5BFBE9439FBFFE652E6A731FF979732BF489FBFBA94B933E48DFCAECB7DF59621599BC61E75A5902CD66B377098B8763902B00DD0B063A708CADAE1C81A2429918DAB22797A7F672F4CCB144136E8B36F55A6EED077432EA6AB516413E42B632773E5ABA45A8CE40FB92345F4418F72A177693ADD01AD20C716C3637BF674E85E4953C63FA54D2BBB96EB657B49D8FEA065C56E3312B1255AE3E3F595B1E43BDE2A81B92B91D723E2DA591FD3B03BABB8C04C5C04006458ACFE196F21920935F097C44FCF522B97C837BB0F22A02357B2C368D808F75B3C50EF98BD30719CA34381325D1E171DB7EA9A9BE96FF4B2C5203907582464474630A1B7068A2A236D06C0D607B0B5359C80E38E60021A64C45D469BC3DD0195EEBF60E9BB7CAE0A96121682E8490E0271C8F491870572F876359F60108FFA9B75EB4E9004083A828A1E0BF7E06FAD55D482CEDBC7889EF3E94DC1227A4610812A7CAF8225F42CD953A7BDF6BAFA802303E9847AD82B1035D7D5F1FDB9C16BD8EA1141B0E2D0375806022CC521E3C08263EE31C1272AC4E267AADE1DCDC1CEC26DC7CC243208115DB589334760C79E7676E849BCAF677B67BBEE755B10943C81EC4E2619D8C647EB0540B49B37B1B7C39BD8AB5224FE892D82FBB16372634442220AD615F40F004B5C964B56E65D5F8A003EB882303F593FDD49F7E9F6A6D2239B1FB7A27F980F66A5A882FACDAA48AF7E54B9F5AADC7489467B9FE5CC47840E514DCD1C422CE5EB1449448C5B9D6E47849583260B19DB093E42D5F9786E8D000DA142D0B314BC0842DCA9E10DD17CE0087FC9FC4F62E5A35659F7FBAC7163B65B177C21FBE2534F31C95DBF6BFF9FC1481A4E68CC3820FA995377AF1A13DF2EFC32EB699E3253BD2ED83F752642D917A9B08584DFA4D3E3B75D7FF3DBFD8E265D655A5EE16E7E5496E031E3E8CE4F1484CA740E83B3E0726F59995B066C3B1F2C0879A75CF4738C66D6901A04779EAD5DAA160664C1724BBB8700BD81C76EC43BF18E2ED450DCF9BECE828694CAB6AD3C12D6A2A2D71323BA322975F6D8D2B0AA24282C480526545F61C1DEE238BB6A6C7F278D2FE0AEA6DCE30596F9C61656C2046D7444FFC7AFA2E32D38B4BC3798DF42F915C79A58D721E131F99BAE8EBF8A6B34F82FAD86F995D700D4C3EFE3AC48B22DE3EE0ABCB6E7C6C9DD9EBB39DA1A7E86E66BA1B788B106F672809647278DC26A6912F3CEF5C9AEB5A4D295636ED5E3FB7D58AC5878998842340B12A25668CC81144090EE952321D6BA7C26C15C7D74061FBB55F0457BDA3E1C41F4149D043DB54167B6E0EF874E9EF019A7970C2758D93E8C5FC0B813595C7E9222D6B5751ADC4AEA778707FFAAB80AB0F73253382A16AB78481883AA48F398AB07F7CC9E9D810E8C686A486D668D32D7557135032D0382C3469D499E2A3EF4A8A5A983CE35736DAA30D455321A127F2A0B9BBC83C051F83541DC7C1BB214D6826DA5D3012A04F9EC1FECFB3B82099FE0FEF184E0C7A2775424818749224ED5BB7C9069AADE415A1E6F4BE26F18186A7D55EFC6705888BC81F885FEEA577BB07BAC8842606A1A976D62780A1E9AF98D25B486B2468EF0B28DE431137C284E1A9214E82F865BEB29430D20477CB3AC2AD74D0AE3C676DEAAEB288E55A1BD1A3291170FF748642268467D6A49E55658DE8675CF26CF791BD63328FB9656E6EFF902BA2898A599FCB378924CB198957422E12152B02C8740446D366E38A49CF6D0E116093500183987C4D24DC3537C6245576422385EAF5A6DEDB57F57C67A87A45F1414DEFDBAF25493BA9EF6CEEB278EFDC33FB205CAC38D17B71F190108D507F64C9E52A8D0DE67FA7A9197AA5C2FFAD21DC4931E6806DEE1A583A69A095DD8917EBE334AD7D72433E3EC75D85A7C5195B1E06667E70AC90A2603F2A837B4E8C636AC8CC847E5914032C72B1BB4846F2A44E79203CCC6B2AE7BB2E66325E56667591C9A297AB4CF4E5258CE2F08C28DA472BCBEE5ADD9A83FE15594479C923B4F515E478C753E947D63C802485B7144FC67852E3B20DB13525AAAEC21FD9AA66BA529B943510D73A1CB15E23BBDEAA0E003AEA6AA480A18661FE18ABC0115F250C2A981D9EE843232FE7D8F0087B7CBACA1ED19D855F0EE90A284C91CAD8530A20EBBB8C24A78F8B85DBD275F3657784DA70707C8EAA1543070230B4952E280E0601B7DAB8915EE254EF55F005045BB4D32B5952742193005E796694074672EC4D27659F5F5BDF92D60119C2BD801ECFB70684A07A6911DD132499D66EDDD76213EF1342362D72B728A2C5D2C5A9869027A9340AF42E40916C4CE2833CA02C9DDB30E0D75D25110AF1265F734E8241D2C995E7462B744C069A15826541A99576C8BD46158C013990B046DD225A8B021A9C24C5941C6437C2AE8BA6993318E06776D85CEF6B5EE8D0024156174700E4F94740C3447D1891851C5AABA730920E41EBC6A34359A89848F019273385DB66FE6F91C6F65580EA585C6096CB86BB5F92508005DB1C5BBE09F91D188EC066287A10B2182672B6C1A336A00EF2959651ACC4E63B63592B170571A9A64D05D9E136FE689D664ED557EAA66A0BDC8C00006B13FB00C7182622C92D59B785F6051F1E40E11B0309F0B08286DAE4C96D5A133B43AD9D3C162631858A6ACB81C16DCE3B216DF043E6EBCB7A49C878E246F98FBC0073203E062ACABA6454B093E31F80BE699E5FF2626CD3137D81B97D4C9E104F3ADE6580274E488B00CEA83FDC0D742FA3EE0989CA60B141A0FF080B3716A4E997770198292F452CF558E6B6ACD19A76ADD572584F59C2E7EE0C9227D846A246B908A019F9BC0B948F2AA85A58282683796362B9D1749EB41A9686FF1C145ECEEEAC53DE76EC11461A362633551E900BA5A3DB8EA155D67EBB8501F879D47FBB0AF0E7C64033AB0D7165A92BB015B50F5C56C9BE0C87C9E220AD9B00782992067B4A422971B81750FD1F7DB0940CEFB8E9EAD83B97AA61AFA8E86D07B15FC0052AFD62F42030CCD505D72443926ACB1E036403EE008867B0AED12DC2594E6D789DD550D6BA942CFC25447FD476A01B162A5F6582DCD7866BB1664C78E5FA59059AA969F035EC44287B7A335372361B80D15C5D6FD5267824A3E7E79326725CC0AC9C3EC549E8066C8224F82C24BD191C335136CA49B11BB83AF6E4A460F64D2E14D1B212A9889B0106CE0909FFC6293DACD3A1B9801B1CD1CD1460D85DA603C43B6A6D2127A75134B7054B34E1C6DA38EE21DAE155335E773B8FC5341DF30C765C901B12A75933BC12DC806C0AEC357B835A9F8DB2634E527E166B7EABC8E1BB7A4C4A8AA081472C41BEE151BB0ED94C94787D43AD722FF840A1350C47A825E23A546EC04086F34143A70CF12811724CDE8027F30EE1F985E443FCF655D2B03E4939197974F872476562F03F364B54F11D423B2D520B053EC6D4D502482B49D8D0076D79BA97B7C83F9D138ECAB0A739EEA43A803354A8C83DF081526CB4C211CD55FF076AEDB9CBC8ADEC580C6B9880FBBDA7490B7E4A7FFC8EB151A142061768BEB35E1C99E363DD11CFAD0252F00307FD242211C1C52568E448A488024BD0F3EB47BB23F918568488D9295F5A4238B518945C029DB066637F2076BE2D92788C2F5E44967F61645A5FA502EA3958298718CDB20BAD11130892388269B0DA1ED4E4497DD6EAD93506068DC4EC70B0571ECC8B9712159870D8E25927130A4C68CB73F14CC6A6A9B60EF09570B33B892A29A0CB05658777808E805BBD4ADB016AA00A9CDA0800762E89ED3D64D4E20E80803A0A962CE9E1AA144A663F7CED4FC3C148C78F321EAC07DEAC422A88522082EBD51E12B67DE45DEAAFC34440CACE4E18710D5609F5064AA0880785032AF7464912A94C22824337F4F1BE6B64B10F19119A990A1A622AFC2102BED16C0B241BB487EE1378B4E48202D9F028B95964E3E633A9D37A1B3A7B4C9C0638095BA2BE6D54FC226A97365B35ADD0635375561A9CFAC35414E228AFF30995C7E90ECD160740F782457B681B1A0EA365267F45BAE0B2173EF83F341CFAD00D1F48C869143506A4857126BD9876080DE0B9B27050492D82CC1D9A3A7EA1688107561628210C358A2E37453DC9DEFCA3BB88B711291BE99E86004B50BF24B0AF66433840F62DF66AA107381D6747E9EED96E58649C6BA0D362ACACEA396B381D23349A7DF4595965C3CA0B5D97719F7A693535C1B768CF5EE41F94E62135AA4E342654ACA67788634603B967108C0D197BA5B991EB4861DF67C01743C4A3E4C9D6F256496FC828B25680A986879A548C6779570E171F36025F7654F2C1A898D1961A05884E03E9D00AFCCBDC8C1CC201C9A027F0D0512A140889D5A1795C090C70B49C8744856CC43386102F560DB204BC70689B24C296B1C1DCC42CE8A38D5D8C7AFA8FA8D0282C293C18660F0D0961BB208C1660F9D91DDA3A2C5D07DAA2CA3A97C91C5C7A7A1F3675A4A9F5B1457870F4E5AF218F0F42912692C2F8C5811978821D41C1A127C5F4F932B444E0042D49FCAD8EF556CF39B32761AA44A59BBFCB42CF9F275E6CDD82D35D6B6B7FAEB547314A4319E5298681271F6ABC2A6D1E1EFB0B756198009E948995FEC31AE1903E02A198AB7907A175DA21A74088C72B0A97E28FC995F775EBD911CDFAA65033532A60363D541486CE2A4E4896E9165F6A68E927BC65951B04C676F31D966EDA5B803944A408102A9F8A79CF195023092002CD0C45F6AAB89158424920683279DE651A244C624215869815502966C0EB049BDF5A1D2D5B1EF0C389366385307E6EA9E89ECAEA6909747A997820969EA6322C1C8D3498021916C8513D1BB5A33821F71390C972E2BA96FB0A01288E98E42626468211D1954C410E0AFF3651903D2740C15CF1C308F53CF5095E000E997C709C8AE48CE0D54C84618AB776DA93021350D8C7B9D610DA6EBE702486FCAC280DC9654204BA5240EA68638E69A80C8042B5D4E49249F4EC4B6B21321DA8A20421B54D1F3041E992910D7704803AF18EE71FB32D1135F9115E0977A555B58EA248B3850252EA8CC4901A93F832483A312D9669928D4C1E890F1185E08CDB4DBFC83F4444783700BED8F76804165F61068AA3F14A04BD2031440240B3A42E90D746844141A6963D84DEFA35FB554430605708FA8B68D55F1A4C2D5BF08A9DCF134499111245E6354B54A456E1D805B61CCD2F91AA63F371DF2AB318210432F86DB47AE02DAF4241962E1561C1C2B872C43AD42AE0B9FC318004214D731C04357ABABCEF702EE08A7E82B91A295C14E54B5AD1566B1F013C078B21806B7982FFA2E626CCA66E17A00D84E5F53860F9D3F1D2EC5A2354F524260C07B9589CE88E99D86C5D8669D30807DA04C1B632C1610C9B8FA3119D591DB56F3521456A9BBB67131949B4A7BC02EC3002A48B05B4E6E564F1800B48D5F823870A11D4BD04D540C0174F299ECD5ED366AEA2444A5AA0B147A4FEA895A4ADB02FA42E86B58E408FE1EF49762433B6FA33259C90437DEEF25829BDC0D098EF227746EAD6D810F83745199D3AA9B45A7D8C856950296BABEF02250607CE23E59164E7B2156C68BA1015227AC20EDE9C771ECC354FB2E7CCECC05EE0D5A25ADB889C58AE2CD7327FED62D7F490829685554C4CDFA1FAAF66F35FB57C55E40AC9ABD59FEC83EBC0E4609C99365334171E80BE962D57F128A0E53013B7BC428559A34C4DF0A76D13700B76E63CF0C0B79ED603DE4695EEAEFE4CDA3E3007CD1698D0E436C77A6F06A96DBF15CC9753D46225F3AFFA6D94B4D9E468D700ED9AFE36EBB981FFF2B07AAF45EE1826323585C5BD5D9569FF66C46E655345063B2A4FF3DDE93CDFABE7AFB97C55B35C455F2D100290C4547A4EA9CAFEAE52E922223BFA44B877D310BD2EB6ECB56AAD57762FC8E6ADC56050B7C7F304FF9601CA859ED3751878C880571470446765466600A11246756B5FAE34BD8F706C65A4FD2046DDF9970BFBA818672330E529BCCCACF963E8DF0C036846F4998AA9A92CA862B7A5683E4B0EAC4190B9638DD54120C14405BF6247DB4D5BE01A8606A3B549052C20AB2726C0978136E45370313246544C121744254DA1BED139E5E67F8507D638141C9A99645358AABAD1FB32E671E6F7F1DAC0C9AA230515FB0ECEB2C6C24BCC8D461D00612B05E000F2A16BD803540A5E3B7838700A2C4D0840FF06955A71928E3AAEE9485D26A4007E9873B1A04C852F9F128208B165A5B89A025F7C96B9D3FC19A85AD5A382E59F4ECD543012C1FFF14661CF2F8F652B10819402631D80841302C4206E7ADF2D67DF3BE271900673AABA014CFBE67177A00231E2C1EB9865D602590BF04DC46B5B24D9D654205007153CA101C63475C7E1A3EA42BD46639A1B4434A332F969CC5EECEC3F889F70DDD3E4D8C68C75EEB900C9F092FCE074CF056FEA7F500F3AD20B0914B700711C04E3AD48EC7E49C28198156AE57EF6C29A5B012EC01EC5641F855F7CE199429CCC6C8893B38ABA6DBE5A376802C8C86F9B1672BF50E3538BC959A82ACEA08183A7C687FCE256D355E38FF74D482624F7B42D237D266E1E959D8083F58194E92A6D199C12D0C695209DE69B06B3157F3E526D7B3BDEAF6D541C87ACE077F29B49E255C771E849DBDE9B0B7A8D40D90E1195027980AFC89B10DC4B111D6C9CFF31BA420A4749E01FF66BC1202563D7B4FE380634DC2D3725FF40D16562D420AB0F0C717346F57FC4F2F683E0FF15F2F687E36E75F5C902892C9C8AA60E3DD40167C95B131AABDE1764075F904416CD46DDDDCF889A753D4CA6BA98B5D8920BA1ACF01BD1E097812C738CCE613DD04808E72D4F3F83C12D0D4D0A3331395E7C0D0219796791976C393035E254A04371D4018AC35D4EBAB934EC36177ABE66874EB92C402E6A105C0A756B1B928568F7AE084362C3131633701A00C13278E182103410167241BDCA37A499B7AB6D39E3EFF6C72A6C6DF4C8EC130A9AD2EFF14DE50A8B53ED47CFA0221F4BF3942D80785425E73DB8B4259F5DBF0DBB1E8A8E45591337F5A92237D1B284ED6EAB12F559DD4B2949817C40A6D1AA94E9C0ED4AB1E00AF337ED66FF40941E918EEC0F280515C6A2D9A51FB06788DE86355777E50CBF18E3A855051276684B6AC20F20720AD8498ED2B79C21788763A53869A222E5DED05093DC79B64E2A094268B389C596A5D9B5BAE0796AA6DA8B05D85574E8F16E4DB84A72D068554E139A239292C70B06F2260CBAFB464D0CF6A839847956F821B6507AB569123610DC6EB5062F93D55555E0BBA477B173D1193942B2BC82DD8118DD46A8C6AA38E4D075FA74B85B0327A96108416FBE9A1E2A47D3CCEABEF64469F75DAAA43208774C4112DB3D4DEAEBEECD9003838484FCEB06F847DC614CB43E9792CB01AD72C27B1B28AE8DC44D03EDEFD94D92F4325AA98FCC663C91A51B7F600E91101594F446089B9E2D34306912464855F27A160581048C630AAD41041C02B51729F82932B1BC757296CF20463BA879E4383D366676E6C243A5B0786DDBAE55CAD2E657399874BA7855DD3E3016941B2452D8293D0B82EBA778B86683A8096FCE933236560C9D5C5B9B85EBBB2C97A3412DFA4CE09541E2B74A18C40802F51FEECF1D6032404AADB6A7302CD88604CDFEA3873F4A50A7043EEC865357560520A83C04F63C831687A440F9E46D9D6A8536A8066555C5CDF31A07798B00E0409CFA37077D620E7B8BE0E0D505764C9D283203362F690A21061ACA7A8814DFD8200CE81FBA28A500D6D837219B854A6AE0614326BB30C7A9E8B9C80B6978AA96C07DFC2CE434762523749478FD35DD7A3E71F347A555747D3636CC5CCA7B9036DB234A11DA6609B77139750047AC34F6222A969843D650D56C5DDF95BF51DE818CC24095AD55AF5A9DF439D10FEE93564603875352EA6B7B6C5EFDB48D4E0741B49A6C154FFF252DF3AE49F27B27ED6DD626E7B8BBA297FDED1A2DEE4B741FDB4B7C53CCD2DCFE3513FEF68F930ACDBE2F963778B796B6FF93828B1EC03FFAF817D1AD6576B65DE16EB3F5D2BF35D2BD07FB056E6FB46A07F5F2BF3B915E8CFD6AA349C15F8CCDC7168112832904550516800A83A64997A6879F73CF0E0301F50CD6F6055B15DBB391D9C48A267D5890018B56D60EAB35BE6F66D643971F0E7A661E76238CE09CEEB39E60052625FA22C2C9A21E0F7B060808A1FD092EEA183C766D4033371C22A9504DF60A2C392E9862A0B8077688BEA33EED503CA59628DAC744EED433660D049BBD6A1A36A0117917F516FA89ED63D3B2596480DE48098FAD9741A0366FB5ED8329F02BF17A035200C9019AA613A225B8D24EE161900EB5C566B274E9D2758F58A88A51CB9AF888A6A36C47E1DE481CF32CD092F16545AC6F801F436E8E93EEC8B9A36FB9AEA199EEB5693B30461CB606E5BB2D3B886DEDCBE0FC183B2EA612008960AE3BC856BA14BB0A868392D2D02E771C3702D64B902E208070F96018EFE3EE7A2C724996CBE274438125F0CF8C7101608AA4666781DC206A874DC9CEBCE754611A736102FCCBE6DDF8E6AF2D292590FAD571DBE47A0364159329E1070055EF52C3EA204F5B4CBFD6C0FE9C4AA9E223DE5AA875B33CC8875D389A2FCE1605FDB6D8951AB0A8E923D72B8AC9CD466050FE7A6878B778F2C15C39C44D9807DF3B5CD9D24D2CEB238689406699A0527A885154A83EC67BD276120B7CA82AC3861335D80ED5B09EE6ABB2642051865BFD43C08DB673D4E4D66A8E014501157F3F1AFAA064C3D8CCB86104A4B47BD511F8B00173BF581E31C865A645B69E576501C493F08530F41B2C5BDE810CB4968A8A9C643F1B0A11A3A87D29E1911357A40518DA0B94435FC230421A0BEAA791E4D9FB2DD8D107A7F341D3D97CEFBA3E9F5F554F66DCCBB0F77A9DB8F446B04D7C1041C83BB218BF2F350F742F38D30829F51C5918C8D61FBD505A536676423EA5026C0FFF8949FF9B7A7FA4E8CA7AAC9D87A321CD3D550232C71616C58D38ED466CF75C8EDF4293A4D4F70A361F4212FA922C806AFAA81D496DDCFF2E4D8C0D65FE16654D744FB40EF8809E4AF2A65BD289FA75ABA740637EF491C3741C1A104C97875982222749479D996B43785F527AAF4FC3DB1082C79678786A0CFAE5091E068E1DD29D7EB4B45ECA20E5C52E022E0AC7A762E557DBC83BF779B42E145C07637A69EBC5C6E76611D61E77414213B45ACAFEEF6E0EE6A9CB37BEA291675E11B8C897A1149171D60DE53CEE9F43121414D7445B3EAF89949ACB8AA8FDD685DD858542416BC07144A42711A964D4FE7F4AAB3B78608F33AFB5A19ED6B6F0B04B9AAD1A8451967941152FAFC01CF02EAD826836D004AC7D3AADD6A491B1D5553F39C538212FC20C5C9E83CE66476A8314C308A8C69C1B3A82EA49A9A79D8593DAF1BCC2EF791611D2D7A35E8B416D4A731FA2E7A2016B683429C1A0FF46808BFAC035C76BA3066AE46EE5A9D92134789D56236982A649BCD0D3055FEAB7AA81AE8508B6CB23A6A754E1F03A2E621B59E74B108EBD2D1A32A8CDB797484566563F4B122F07557BDFFD6CE59ABB154F0D407518069D081D7DE6341AA1E07E375EE883E1CC3B07F6A1993DE4C536D5B3A2E87E7A08AFB8C0D6E1C55306E07A773EA1FACC219C471694FBBA7FACCB637E96542D56EA067891E13EAEFE72F28E54B60D2401CC25EBBD141B7AD7ADE813F3195FE8AED68BD595527696A17D7011130C105D50E4D68EBE040684D26942AD380BBDC71806EFAB092A8A79958A836F42C4434F76341BCFAF95CABF7D3AAD4ACD1EEA706E162983D639BA96A2BD8C7A0CFEFD0735CB1C270281499ED75DB86AA1DAA26264C5B63ADD674409F9AD0EFA3A08C745B1075FDAECC6EFEE921ECDCF5C835DC99F47910BDFBDD4DEA5EF536E227E3AC33AE5D9F05D59E94260D42BF9F77A206CB748F12096375DA04F6B614F503305D3D783230C3A20AE85AC7C7C557966A2612C3A6D5B0922D62A8B84A6045DAFB87C8E85329869E38C29C71B13E4CD691BABA855C3B7A82DFABB8BAD64855654D448F5040FA297E3A4DBE9D8CAF36793CBD21CA917224F0ABF36D3C4DF24FE79B4564A5FB044A756AF6773AF1285B9F8585257C4E00D49985D33658CFC58010979DE0403E444F88A92527E92022DB5230AE3607298A3B145868C6DBC451888B0264A17A2698CDE2ACA6BABAF2CB47AD2BD6B406FC39CE0F1765EFB1DC264FF6F7B33B2CADF95F9F522F09D2C3C87800000006624B4744002F003B00C2E786AA47000000097048597300000B1200000B1201D2DD7EFC0000000774494D4507E8020C10390D6AC68DE00000182F4944415478DAED9D7B9414D59D80BF5BDD3DC300F300796844401430F86010011595F18124A2114D74D768640CD9C4473CE866A3497663269A4DD49CAC90A7896B44CF312F35422246141495872F643031015FCCA0A20E8ECE4098A167BAEBEE1FB75A667198A9EAAEEAAEEAFE7DE7F4390E56DFBE7DEB7EFDBBF7D67D28AD3521632C50EBBC00EA8036A0D1F97BB5F3DF6D08724F42840A894C35C035403D30C6E57B9E0496382F41EE89C804343837AD3ACBF7373B377CB5D47FB927A52CD31260BE4F695D26514AEE49A9CAB40858E8739AA74A84927B526A32D5014F04906EB3D35916E49EE41DAB409F3B2FA074C7389542F04EBDDC9368CA541BF02FACE09DB1724FA2299320884C8220884C8220320982C8240822932008229320884C822032098220320982C82408229320884C8220884C8220320982C82408229320082293201416B71BAACC63EF8E9E353E7CEE649FD2E98D66A0496E6D49DC9346E7B59410EC26DB974C991D3D73D98C5010F2C532CCE6998D6193691E66F3409148881A8B9D00100A99EA81BBE49E081166137B0F17C81B9688241469FF6F69BE3FB4A74CB522925044CC72FA500569E6353A460B42317128791ADDCD44A679229250A4E42D3A6522D352E05C2977A14819421E06233291A94ECA5B2862F252BF2DCCC0833C4F128A99DA7CC95423652D08FE35F30441109904416412049149100491491044264110990441641204416412049149104426411099A40804416412049149104426411044264110990441641204914910049149100A473C87F7DE8D9C8324E487EF14BB4C4B80D5729F0591499A798220320982C82408454CBC14BE64CAD603D2368797C7D5B15A73B8521CB9EF355AF377A5783599D22FC62C5E8B5B6A8F540F4164026C4D39700CF09598A54E8A5B4C0450AAF7EB95E27C80F2B842C32BB6660D703BF092A5484A55114AB199570E9C67299E735E0B144624B728986029BE984903F8AC93AE2094844C4AC3F11A9E07FEE844253F3806B85FC3F31A4E30AE094291CAA461B0ADF99182F50A8E0EC454385AC13A5B739B864AA93A42D1C9944CE9A314DC6F29AECD4B8129162A782099D2474BF5118A69006272795CAD0046E6F9736797C7D54AE053C0C608965B2D853F97AB89229B8E1665992603851029C308E011600EE6A4FA28B1089855E03C7C973C1EDE2CCDBCFDD0D59D9EA00B2BD247426958D1D59D9E88207DA608E679505922B658155EA4CCC0C488B244ECC7C060A94E2253A448DBFAC74E5F254C9C99B6F54FA43A894C912195B6CF89596A7E18F316B3D4A5A9B47DAE54299129F4B4EE4C96C563D637815858CB321EB3BEF9E1AE2E99292132859BEA4189F9C0F121CFE6F4CA81F17AA9562253A889C7AC7AC23F954739F91444A670A235A701332252A6D3B5E64CA95A225358F99710F7957A2BD30BA46A894CE16C3B29E646A950A3965FA14464D29A9381032356AE23B5A64EAA97C814B65FF94F44A889F751B93AF91644A650717A44CBF634A95E2293200845DA679A16C5828D6ABE85E2EF33450EE933894C8220146D332FA205ABA56E894CA16B2E99A5E1D16BE6C15FA47A894C6123AABBA97649F51299C2C6F68896ED76A95E2253D85817D1B27D46AA97C814AEB652CAFE1BB02B62E5BABB2B656F92EA2532858AB2B8B53D82D1695D59DC7A5BAA97C814461E8C58B92E95AA253285125BEB3F01ED1129D39DB6D6CBA46A894CE1CCA452EF0051D997EE679652D2C4139942CD2F22109D76023F936A2532859DEDC06D8477A68EC66C882F5149648A043712DE13275EC29CEC20884C9140DB5A7F19E80859BE3A9C7CD952A544A6E86458A917305B7FA54292A5347091A5D473529D4A9B481E76B6B3A37B794579EC578998750585DDE55577A7ED3B3A93E987AA0626A25484D7108E930345A642533530A1BB52F6D5295B13B754C1844AD9FA975A7355D5C044D49A778D08D2CCCB5016B7EC3DC9F4D5B6ADBF58803E54A76DEB057B92E9AF96C52DE92709D19609607045DCB62CB5446B2ED09A37F3D2AED3BCA935175A96FAF5E08A785AAA9010E966DEBE28C5C3B6AD8FD7F0734BA933818A003E668FADF5A368AEB42C99E19005754E3FADD6F9BBAF13DFDB7A34451B45A67C87584B6D07E6A5D2FA53314B7D4F29A6FA188D5E4CDBFADBF1987A38F487DA8483B18E3C758E3493B3482372A730C68BED2EC663EA91DD7B522B2BCA62D32C4B5D079C0C1C904552ADC01ADBD6B77676A59F1B34209E1247FAA416A807E60163A499572438157F3D701E7040DAD6A75B4ACD023EA54C64190594F5784B17F09636139556D85A3F19B3D42AE07DCB520C1A101755F61F81AE296581A224530570B0AD750C986B2995B035CF5B8AE771BFFAB63566A93F007FE8F16FE381013DFB43C0AB8E68C494E7B65CA5AD996629A6D95A77030F5B4AA530F3093B8AB0DED43912C981D821976904702AF0AF4ED361ACD5A3725BE63FB7010DC96EFBFEF28495CD92F657FDC868B2DBAE2C4F589F051A2C657E999DBCFEC8B9A4D9E940FF0E781C682902891A8059A24EAF9D6B5DA7B3A34E6B8D5FAFEE943DC1B6F54FB5D6AD6E33606BBDD6D67A869FF970FBB26D7BBAADF51A0FE5F5816DEB9F75A7EC230A91DF1C5F63B5D6AB757469D25AD7065D4E6178CE546E6BFE3B1E53EB95E22A60A8DB372A3851C1A3B6E6160D5579CA6FA5ADB95929F59882991EDE374429AE8CC7D43A5BF37DA03C02BFB5354E24DA1AF1683406D888592213D8342AA5B5AE039EC8E2BDA702AB738B8A8CD7E83F5A4A1D957B84A519F837A5782CB828CEE9C09D4AE5DED9B6B57E59A1CE578A5742DCA45B5284030BCDCEA8E36ABF132E64641AAF142BFD10094029C628C523B6D6CB53697BBC9F194DA5EDC36DADFFAC142BFC10C9E95B1DA9142B810921AC700DCE0F6C318ED08D71BEDBA262894CE38195C0E8800AAC4B6B9E568A1FDA5AAFB194DA9D45E418642975A2D65CAF142705D82C7B1338034211A16A303B2B05D3A46B6981B60FE1ADB7CCDF2F6EE8FDBA8947C0A041306A140CA880D1415513366186F59B22295332650F2A8B59CF29C5A43C55907780C7BAD3F6BA44CC5A03BCDCC7B593BAD3F64989987522702670507E0681D8DC95B68F2B8F5BBB0B2852AD23927FD168DB3678ED5523CDE2EB734B6BE12D46B2891361C2443FBF77BBD3A46D8C9C4C1AEE567069812A4C8A1E7B34D8FAA3A1F60C0753A0C7051AEE55704901FB474B816A5F045ABB067E7B0F6C5C114C6EA7CC818B2E85A953FD14EB32A78F180D99B4E61CA5780088D44ABA3CD1AD35172A95F70D2CEB81BB724A219984CD9BE1173F81E577E637F7731740FD0298722C94971754A8BCC9944CD983CBE2D60B0A268A37FB8D4EAF74A5ECE3CAE3D6AE4888944C9A28B4E887C145212FD1EA9AAFC3CC9372952A6BA1F2369A17B7D4D744A47E7ED96042DC525F8F8448AF6C818557C1FC330A2F12983CCC3F032E381736E57466C25D4ED9843332A56C3D3466A92D0A868932FD46A7D6B4AD27C62DD51AF060C3EAACFA483B77C2AF6ECF7D40216816DE025FBE1CAAB27E967F1E1EF78CCF4B6452708188E4BAAC0E5070612845DAB4092EB930FC2281C9E32517C233EBB34D61097B17328643A6AEB41E10B3D455A2897B6296FA6A575A07B15AB8C6A924DE45FAED6FE0ECDA7034E9BC34FD2E38D1E43DE9F934D76A2732D58446A684A58E068E16453C312961A963024877115E57BD2693F05FDF84EB2E8E6E695E7731DCD4908D5063BC34F5029749293E2B6E64556E9F0B60C061BE67916E6A80BB6F8E7E81DE7DB3199C68F1BC0A6616667A556165EAE8B62BB4E9C809DE0722E67574DB7E35F5C6E2752E5A4B8BA97CC52052CF66DF972ECD46A8EFB8E93F052A5345C23A40857322671406220EAF4858C37D4ACE5B3F2999841BBE15ADFE51F0422D2974336FAE68911367F9D4BC9BE549A49B1ABCCF644854464BA81BBEE5B50F3519B3547FBF043B0F4D73B26C8D9553F9CD42717B0E29D4786EDEDDB3C47DD36EE00818351EAA6BA07A0828052DEFC287ADB0EDC5E0CA25510915D530B00AD229D8DD061D1E23CDF23B61D870F8DE0FBCBCABC189506D7995296D6B15B3D4A162444E8310E39C72CCF680B76B3C35EF1E5F05375EEE4EA261A3A06E361C530B071F0C95556059D0F21E6CDD0A2B96C333011CED3BFA583871961161C810E8EA82ED6F43D356D8F024747742B7CBD95877DF0C334E80733EE3F6D3AB9D1FA7FA5EEF57503320B4E640A5D80E129B72894D5A33CA29C76CA252936B99B66D83992E565F0C1D075367C2CC53609653A9070E342229652A776B2B6C78017E730FAC7BD0BFD238E264B8E48B306D3A0C1D0A0306402A051F7E08EF6C37F3045F7816366F849D6FB94F77D566AFB3CF0FA5973550814526A54888483E14A3CA7A86BDFBA8944CC2F76F7427D209A7C29CB3E0C499307CB811A8E7D66815153072244C9FB1F7DFFC10EA8893E12B57C3A9A7992942F1B8F95CAD4D843AE410183306468F81E7C7C0DAC7E1DDBFBB4BFB3F16C27DCBBC4C906DE82D3A0539007196B850B072ACE9AFB3FCFF787445FF030E0347C0F4538C48334F821123F646A38FF56912306C9811EAF397C289E7E52ED2E557C3ECD970C00126FDCCE72A05B1988952878C863366C3B9E7C1E9738DFC6E0724EE59E22547F3318F1BF2139934944B582A5839D6BB8E4A2D2D70A58BBD24AB86C1CC938D489988D4E720410FA17289501991CE986D063AFAC2B28CE4B118B4B743F31BF0EC0E777DA81B2F87399FF6B244BE9E7D1EE6061699B49687B53E9563363348DC472537BFC80347C0ECB3E1A4538C206E77BCCD35427911A947FF82A14361EA7170DC0CA8F4F0A8EE0FBFCBA98C0393C992B054A872ACC3ED3E0EDBB6B99B013E7A22D44E816107985F7F2F642B543622F58C50071D04B3EA60DAC9EE9F812DBEDECB5AA8EA7DFB4D9654D7A2A3DEF75FE2E1079AFEC8A0C1D9E5C8AB50B988D453A89107C261E3BD45A7FB3C45A77981CBD4D96D57D99A23A45EFBD2CC1BDFD96DD7647B83FBEC2BB9894A894A335A5653E33D2A6523941F226564AAAE86B163A1C2C38FC0DD379B88ED8E73E9B1442310992A125685A5385054C81DA5185991B02A3C88E46EE061D5CAFC7F99FE84F24BA40CB198D9772FE6719C6DC55FB28A4ED2CC2B2EEA5C5FF9DB7BDC5DD7BDCB3C146D6B03DB0E4E28BF450293DFEE2EEFEFBBF1722FF3F63E2A7339C5AB14657A658BB719E13BDE359B491E3A6EEFF325BF840218321466CFF15724ADCD7E15CDCDD096C5493E9B37C36457EB28E7894CC5470D6E57D16ED8E02DE56D5BCCF4A0F113CCD4A1C183FD136AC6F1307E3C8C3A2497CD4F3E2E525B1B6CD902AFBD029DEDDED378EE19B7325563D63A354A334F9A78FDD3D1028F2D85871F82575F817FFED3BF26DFF0E166DB63BF457AF96FF0D46A78F119F7135FF76DEAB9A756FA4CC585BB9D745A5AB25BF4B7F32D78E01E58F6A0BF42C562E6E5B748AB56C2F207DCCFCFEB35226F139944A63E78E3F5EC3F2128A18210E9A1FB7313094C3FB1D03275DB3AAD75511E8C9CFF3A029DDDB64EB9B874ACAB04B76ECD2D4361142A089160FF47DEE453A684A5DE578AE74485DC51B02161A91D2E2E7537F8F0F25F73CF5498840A4A2480A71E777B6575A0CD3C0D9B45055FCAF11FBE26E8D76E4361102A4891C06BDFB236309914AC11157C29C7A75D5C56E72A31EF9B308657A8A045F23E085113E400C4A3C06ED121273A00FFF6DB7AEF3DFF735808A1F225924782946987AD79447CC81E5BF328D012FA8CE653A8908A048CB582AD0C7AB1065BB4C8AAAF64DB5ADF16990CF72694D6FE8BD4DE9E5F91DC0F8F072BD3AE2E7B1D7087A89115BFDED565AF8D548E33423DBCDCEC16D4DDED6FFAE9B4894A1B5E085344CA4B338F21036269E0DB1AFE2A6E788A4A2F03FFE9945FB418E84C0BDA93F43F3259165456C2B8C3605CF80EA10C7CA2AB327DA72B946205304854E997DD5A7385A522D057DA970327C1D99F33DB718D1E0D6565FECB545505C74DDBDB27F3735FBEDE1835CAED956D7999356E29D66256252E13A1FA160998672957C3E1E114E9F433E0C8A3CCCA5C15C046207EED7AE49601AE0F2269CCE7128C555D697D7A594CFD1C3856BCF9181BBBD2FAAAB2985A1FD827D4D4445BA442091596665E4FCA62EAD9644A7FBA2CA6BEA1145F9628F551B3EE8EAEB4FE41795C65DBB46B7475955FCB1C0A2952BE851A39321C0310BD511E572D4AF1EFC02781FFA1741FEC766036819FA414D7E62012ECE754865E99BB20FA22F526941F3BC7EECB94395EB64C5E5DC895B66F025FB33537699863296628385CC354059F283673346C57B041C3EBB6E619052B2CE54182FE69C6CD7E7953A7793F7B298C22E523429D725A789B79FB199C68037EEFBCB0B51E1453AAACD864B2B5EE8A29B55B01B160EA5C932B990E3BBC78440A5AA889AE77AB7B321432ED4B4CA9DDC5D8F48B055FD956E3E684C0C3C7179748410A35D1F5B3ACA650CA24648DBB4108F71BD34747A4A0841A33D653D9CBB2F5529309E0862C4EF61C3E01CE3A3F1891BABA60CF1EFFF7E5BBE80B30FD9CECD299FF0D4F830FB946A645E06B075AC89D3DC0807EAF9A7EBCC70A5A09877DD254D04947FA2B527B3B6C7CD1A439EE307FB7119B7A1C7CD00AAD3BE0F567BCA571B6EBA339DB333F64B9C83459EA6E4439228B6DE0C78E334755FA2A521BAC7C0CEEBA038E9D660E291B3FC13FA1860F834F4E82899360DBCBDEB6FC9A74A4A7A824CDBC52A5BCDC5B532F5101C347984AEEB748B7FF04363D16CC7AA872E734C143C698EFE09685B77879C02D32953C733EEDFEDA78993943D6B2FC1769B3330D318805864A99085551E1ED7DB3E778B97A694F99A4DF538A8C1EED7E3644673BB4BE0F1DBB83112983DF4269BD771948DCE5A3CBB90BDC6E8B0CB0891EA7AE5B9E468184E2E28AABDD5FBBFD6D78AF25B7057F7D89148450B66D4EF078EB4DF7FB8DD77B9A6EB5A8E71F99B8BD4C6A56093279B2BBE8D4BD0BFEF1126CFE07ECDE1D9C487E0BD5D5657E04B6BFE56EF061EE0238FE84AC9A783D655A2A35AB44F9D60DEEAE6BD90A2B1F81C68DD0D1119C487E09A535BCFF3EAC5F078D2E57FF7B89D470F7BE5DA4584343034E53EF327A1C29289408D5D5600F8467FB3949D0EE82540C2A6BCC339CEA6A332811844819923BE18DAD60959BD1C4CA4A33A0D0DF88A2D6B063073CFD143CF87B78C7C53E9E0B6F81F33D1D6C7F19F06E6F326584AA97DA55821C7534ACDF08EFF6B3A9FFAEF720958081838C485555FBAFDC5AC3CEF6EC45CA56A88C486BD7C0CA15F0F20B268DFEF8F9BD30C8F5F2BA27818F6D8DDB53A626600870BCD4AE12A3BC1C0E3D0CEE73B134E3DDD7E1FDDDB07397392BB6B2CA54ECCCB0B9D666E7D80F3E80C71F875FFE347B91BC08A5B5D9BDA8A5C588F4E85F60FD13D0D6ECA2C1B6D2FCA0788B4A4D7DC904F00870286E8F27118A87518740E541F0E443FD5FBBA309DEFB00B636414727747642B2CBF46B5A5BCDB1354F3F054BEE802D3EED92DD53A821434D648CC52095DA2B6F73333CF230AC580E1BD7C3076FB86BDE5DFC052F39791268E8ED7F28DDFB764CD700B7490D2B319249B8A9C1DBE6FEC32798797B2346C2E04A3338D1FA3EBCB105DE7EC9FF3C568D82333E63A6088D1A65A4EAEC34C3DFAFBD0A6B5741DB3BEE46EFA6CC81FB967999D08A136C9ABCC804E6BC9F0660BED4B212A2A505BE74A9F7D305139566CA4E77A7F93B9BA32FBD7C56CD4130B81A1265B0A713FED906BB76B8FFDC2973E07FEF31075EBB67B11368F02A534FA9E6614E5A90D1BE68320337B3C973152A4AACDA6C26EEBAA7DD71A12D179984E853073C91970815051E6AF4326528C379F4F33C5626BA9606AB9D268A7B468C30CDA029734424F380B6DF890D12994A8B46BCAE432B9608955D1F09CC64D63A5C4C0897C8545ACC73DAFEDE22D47DCBCC32EEA832FF1BD98AD48E99C8E06A65854426E93FB9E7CF7F822BCF8DD6B7BDF55E334DC8DBF07786CB80256E2F96C8549AFDA7CBB27AE7399F81B5CDFEEE0A1B64B36ED566B8E8F3D98A74AD1791243295360DC077B27A6732098FAE086F94CA2D1A65061CEABDBE49642A6D9690CB43F99D3B61F94370DDC5E1F8360B6F814BEBB3E91BE52C92C824E42E5418A4BAF55E9879526E1B6CE62892C82464F0672E663269F6C05B72A73F8703F4C5DC0570E145E614417F8ECAC949249149E8493D70976FA9B5B498D9E36B9E86C5D7FBD78C3B76AA592E915B536E5F3C8DDA894C821B6A31A37DD5BEA7BC6D9BD98FA1A3035EDC60FEEDA9C73FFE3078CA9CBD47B94C3C02860F874F1CEC4713AE37DA31CFDE56FB9198C824EC4B0D66EACCAC22FF9E9B1C919AFC4A509E3309FBD28679B07B2D5E674B4487EF3A51B8C9CF442532097D31D6E94B144B94DAE4F40D03D92B522293D0174D4E94BA0C73CC67546977BE432D016EBA2A9149F0D297BAC679554748A245E4E9F8239149C856AA7ADC9CA15B0212894C821FD43BAFB0F4A93639022D29C4878B4C821F8CC50C33D793FF43F03639F22CC5E7D1399149088358753D5E7E37059B310F5933AFA6B07C719149C8471FABD679D5388265FE7D721FC2642459EDF47B1A9D5768CF13FB3F6A930B3B91DA327E0000000049454E44AE426082,16,16);
INSERT INTO workflow_icon VALUES (3,'ReportUsager','image/png',	0x89504E470D0A1A0A0000000D49484452000000D3000000CC0806000000E9879697000022B97A5458745261772070726F66696C6520747970652065786966000078DAD59C59761DB9926CFF318A1A02FA663868D7AA19BCE1D736C42145529452BA797F9E9829928787118037E6660E0F99FDFFFEF798FFE14F0BCD9A984ACD2D67CB9FD862F39D2FAA7DFE3C9F9D8DF7EFFB6785D7CFDCE7D7CD9CAF1F785ED29B5E6FCCFBF5FECEEBE9C72F94F87A7D7C7EDD94D7857C7D5DE8F583B70B06DDD9F3C5EB7DF575A1E09FD7DDEB7BD35EBFD7E387EDBCFEAFEDDE53BFF4FCE8CBF7B1608C95B85EF0C6EFE082E5EFAA3704FD1F43BF9F3B3FF1BCC985C2D7E9FE1D42FADE76E6FDCB2FC63BE57BDBD9FE7A47F86C0A63F3EB0DF98B8D5EAFBBF4BDEDAE853EAEC8BD7DE93FFFA015FFF62B3FD9EE9C55CFD9CFEE7ACC582A9BD7A6ECEB12F72BDE383065B8BF96F928FC9FF8BADC8FC647658B138F2DBC39F898C635E7B1F671D12DD7DD71FB7E9E6EB2C4E8B72F7CF67EFA705FABA1F8E667900BA23EDCF125B4B04CA8F867E2B5C0CBFE7D2DEEDEB7DDFB4D57B9F372BCD33B2E862F7FFE30DFBDF89F7CBC5FE81C85AE73D798E5DA8A7579851ECB90E7F437EFC221EEBC6C9AAE7DEF877977EB8F3F726CC083E99AB9B2C16EC7738991DC8FD80AD7CF81F7251B8D7D52C395F5BA0026E2DE89C5B880076C7621B9EC6CF1BE38871D2BFEE9AC9C14F0030FB894FC72E6E09B1032CEA95EF7E6778ABBEFF5C93F2F032D3822854C92543CD471568C89F829B112433D85144D4A29A7926A6AA9E790634E39E7928551BD84124B2AB994524B2BBD861A6BAAB9965A6BABBD79202DB6D4722BA6D5D65AEFDCB473E9CE6F77DED1FBF0238C38D2C8A38C3ADAE893F09971A699679975B6D9975F6191FE2BAF62565D6DF5ED36A1B4E34E3BEFB2EB6EBB1F62ED84134F3AF994534F3BFDDD6B2FAF7EF69AFBE2B9DF7BCDBDBC268FC5FBBEF2C36BBC5CCADB259CE024C96778CC4787C78B3C207092CF6C75317A794E3EB3CD0BA43C5E7349CE594E1EC383713B9F8E7BF7DD0FCFFDD66F26C5BFF29BFF95E78C5CF7DFF09C91EB5E9EFBD96FDF786DF55B51C27590B25036B5E1006CBC61D7EE6B574D7A3E9F5C0FB638B68533CAD9B36CDF571EB396E5314426C1B0543E67A4BCD6EC71986CEBEA0099DDB6863172B39197E659FEA45D8EF23C8EB363B3BBA6C3DA9C5EEBE4622A5DD5C9A5B94E1D669075DD9F3A4B1CFC29E30C376228CDAFD16A7663E76A43A4AEEED85BCA5B25B6EE923741346B98E434AB74262A4E6302CED7CC989C4FABA61DCB4E6BA53EFBB173B6511D46EC912B37412EA1D5134BDA5CA9DC751B9F2C314BE0669746D74B40F64AEC4DE538F1DF6F3EA755CB0CE7D4524CEF6582FB31434A66CED52FACBA027BEA8338610F9630C52A3DC05926DF901201DFC63A6BC7CF639DBBA29C31215BC2376B05BD9407372BA3670234A5BA2BBB5863F39E9C462C7911ADBB0DEF2B8EF3F56CEA5A68C6C7864BF87BB690CAF5BFF5DC4591BE3B31ED535B444F74A5E4E1499219C26491316329D2201E9618AD09A72682948216C3B4A5B86D0B5FC709F5C87379BF772A85E83D85C8C235A4D6CCDBAFE3F3B1A3E533569D178F88DCBBA5BD42D2E7E089C1A5ADEB35A7F8C444CF5A7FFDD9787C0A58E3DBEDB9C228B5472CD6D2F4B1B8997B6A6DD57669966C50EA24891D513D05123BF79159C232E3D4DCB93101DAC18E381BAFF37B545FB292BB6CA2253812926A6B0BEF5044172ED308E37A6328FA530CD1BFD7D0B7C7CD1ECEC60804C4DD6C77E5FEC4E3AAFB8EBAAF43F5F574D4549C147813869806B7B7089EECCA9A74A3B554C88EDDB8A72E0FBB23C017897B5854690B6FA7B14084BDB5E922DB9028C6E20C02F443BC2A407718BA5F25EBAF0386ED6B71CFBAB043210873980974B819D21BA96A469AE4695876CC0984F5252A9349F4BD40F13559547029547F9A03190AE977ED52936C0D9502143695C1B435EE0FF60D1280E317C6FC275B9A6F8CD9CE72B2192F8158DB5F0462C9F73D2D8C7CDF3B4903D2F56D6120E4B336FCF02CEED74BFBB830DEFF7961E63C3E7E16A5BD7F5D947D5FD6B3A86749BAF15DD29BB5CC0F73FD642DBD2A8F5D1636050D64FD7D250131F6B3C9CD4F1749FB9AD4FA038A92362477B965249FE732998290CA6AFCD65927164F2A8C0D1EED33406C07C60E124108BDEA5B39F1E32900AB672A00E583BAF144F6A2F21E4A7BA9CF360D7012B1E598DC6855FDEFBA623E6CE28BAA446496E526D95C28B5A3705B3BC1CD51E2894286A6BB9E281BBD6FF45B0FFEDE6F5C299C0E121AFB31B67EF66071A74FA16DA7F8436ACAB02BEDE90BE5BC27EED7825013CC8ED8865A1FFC8E0E424FA5AA5B8091D99092CFDAF47C76478B73C04E6CA0361F60521D87943B9102391BAC1386005B28D10D41A8A42DEC2AEE93FD18308FE246094BF78D9089EF4B93F9C7DAF5879F7F5C880D9FBA026C3257600407E54CB99B1B232EEA3F0C292FDC93B5F30629CCCDBBD478993A1EBD190518ED39AE92DA834600EEC17EC072EE3034585F73875F4854A3412D2200B9CA8062B90A65533172BBC1B381294A67C88FDB1338748BE5F51B452F7439F803E5193FB1207D365F5FF84F3F7F7BA1D35E4BFCB4405E7F5F20C98141157389E8E287C33CA40490AF7B4C16FD5EF30221FEA30C927364D2014FD22A23C2B756AA6204A5AFDDA1704436ACC80DB103A58FF314E19093C394117E4C610CA41D56BE94673B72CF912D5439EA1D6BB55098CB462087BAFB52C26CAFCC231067BE908624DAE342470DAEB191DA2F287E77B18BD97F7BB105641CD80F994E8E928CD37593D8A6E00B8AB2C28402B8C6E6A08A2D23D8266466ECE563EF168A8DF49B8AB5D554B95BA0CEC17CC78CB599E10E3CAFEA6AA10DF4C762C515CADBDC8632D5B92113C438484F5C9684E32848CB8FAC4DA6CC0E233E088655432E8B38A4901AC1C2AD00F9020A8D89C4DF54682B38DA281A0F930F62681B9192C00B6E8488C2E9064A2D88B262D59D6B4476ED29F22CF000F039DD9F4F0F9381C248AD60DEE5F7E598E9A06A076F0621215F1DABB0002A05DA87D8BB41D4DE2DAFE6D3CBF66F967FD99D9FBCBBD17C13143F39F14F2E65BE8DAFFFE052E617A1FAD7973267FF772E657E19F37F7929F39BF4F9AB4B99BB43DEC8EFBADC576F99226BD3D8A3AE1492457AED060E13D72E4700B6011A76EC1441593B1C59032525B25155244FEFEFD50BD13255201BE5B36F75A6EED277832EA6CB512413A42B632773A5ABC45A8CE80FB92346F4818F72A1776A3ADD01AD288E2D8647F6ECE9E0BDA2A6AC7F8A9B56BC96EBADF6A2B0FD41CB8ADC6625AA96708D8FD757C692EF68AB04E6AE445E8F886AC73EA621775671819DB8080048B0587D1B6F23920D35F097C44F8FA9954BE49BDD0712D0A12BD921346CA4F65B3450EF88BD30519CA3530225BA3C2A3A6EF53537DBDFF0658B40720EB048D08E0C61826F0D185586DA0C80AD0F606B6B3901C51DC10438C888BB8C3687BB0B2AF0839FABF4359FAB82A58484207A92A3803868FAC8C302397CB99A4F54100FFB9B75EB4E1409107404353D16EAE1699CAAB4C0F3F6312ACFF9F4A66051798610812A7CAD8625E559B4A74E7BE575F5014506D209F59057206AAEABA3FB73A3AE21AB4704C18A83DF201908B0148784030647DC23824F5488C5AFA57A7738079EA5B61D33938A4188F0AA4D9C39023BF6B4B3834FA27D3DEE9DEDAAD76D4150F284627732C9801B1FAE1700D16EDEC8DE0E6F64AF8A91F827B608EE478E498D110989285897D03F002C72596EB132EFFC5205E0832A08F38BF4D39D749F6E6F2A3DB4F9512BFAC67C102B451DD41F52457CF523CBAD97E5A65B68E4FB2C653E22E510D6D4CC21C452BE4A914444B8D5E976845839CA6421633BC147A83A1FCFED11C021D4087A4CC18B20C4DD1ADA10CE078EF041E67F212B1FB9CABA5F67AD1BB1DDBAE00BDA179F7E8A49EEEA5DFBFF198CA4E184C6AC83423F73EAEED563E2CB855EC69EE66933D5AB82FDD36722947D110B5B50F84D3A3D7ADBF537BDDDEF6AD265A6E515EEE66766091EB38EEEFC8441A84DE710388B5AEE2D96B96DC0B6F341829077CA453FC768660DB14170E771ED52B730400B965BF21E04F4061EDE8877E31D5EA8A5B8F3B9CF028714CBB6AD3C14D6C2A2D71323BA322975F6D8E2B0EA24282C480536545F61816F519C5D3DB6BFA3C617705753EEF10266BEB1859430418E8EF0FFF85D74BC0587CC7B83F92D945F71AC8D751D121E937FF0EAF8BBB88683FF566A98DF690D403DFC739C1551B665DCB5C0CB3D374EAE7BAE73E41A7E06E76BA1B788B006F672A02C8F4E1A85D5D224E69DEB13AFB5A4D695636FD5A3FB7D58582CBC4444219A050951161A73400520A47BE54888B52E9D4930571F9D41C76E357CE19EB60F47103D4D27414F6D94335BD0F743274FE88CD34BA62658C93E845F40B813595C7E9222D6B5751AB595D4EF0E0DFE5D731560EF65A670D42C56F390300655A1E631570FEE993D3B0B1D08D1D4A0DAEC1A66AEABA26A065C0604A71A753679AAEAA1872D4D1D74AE996B5387A1AE92E190E85349D8E41D051C865F13859B2F4316C35A545BF174800A423EFB07F9FE8E60C2276AFF7842F063D33B2A92C0C32412A7EE5D3ED03475EF285A1E6D4BE26F2A30A5F5D5BD1BC32121F206E217FCAB5FEE81F7B08842606A1BB7DAC4F0343CB4F31B4B700D658D14E1AD36A2C76CF02971E290A4407F55B8B59E36D40072546F9655E7BA8961DCD8CE5B7D1DC5B13AB4974326F2E2A93D2299109A519F5E52B91D96B765DDB3C973DE96F52CCABEA595F9FB7A41B92888A599FC633C51A658CC4A3A91F01452B02C8740446D1C371C544E3E74A845420D0086CE41B174D3F0349FB0E88A6C04C5EBD5ABADBDF64F6DAC7748FA4D43E15DAF2B4FB5A9AB69EFBE7EA1D83F7C932D501E6EBCB8FDD00840A83EB067F21443A5EC7D2D5FAFE2A52ED7AB7CE90EAA931E6806DEA94B074E3513BCB043FD7C6795AEAF4966C6D9EBB0B5F8A22E6341CDCECE1592154C06E8516F70D18D6C5819920FCB2381248E57367009DFD488CE25072A1B665DF764CDC74ACACD8E591C9C297AB8CF4E6258CE2F0A841B49ED787DC95BB3D17CC2AB290F3925779EA6BC8E18EB7C4AF68D210B206DC511F19F15BA7840B227A4B4D4D983FA356DD78A537287A21EE682972BC4777AF541C107544D55931430CC3E522BF20654C84311A70666BB13CAC8E8F73D0235BCDDCA1ADA9E01AF82778714254CE6682D841175D8C5155642C3C7EDEA3DF9B2B952D7747A7080AC1E4A050337B49024250E080EDCE85B4D58B89738357F014015799B646A2B4F8832600ACE2DD380E8CE5E88A5EDB2FAEB7BF35BC02238579003C8F7E1E0940E4C233BA265933ACDDABBED427CA2694644AE57E81459BA305A9869027A9340AF42E40916C4CE2A33CC02CADDB30E0D75D25120AF2265F734E8241D2C995E7462B75480D382B14C4A69645FB12D528765014F642E10B44997A0C686A80A3BC582AC87F854D075D3266B1C8DDAB5153ADBD7BA37049054A4A2837368A2A463A0398A4EC4882AACEACE2D0021F7E0D5A3A9D14C287C0C143987D2C57D33CFE7782B53E5605A709C80C35DABCD2F4100E88A2CDE05FD0C8D866437103B0C5D08123C5BC169ECA801BCA764B569103B8DDDD648C652BBD2D02683EEF29C78B34FB826B657FBA99A01F722030318847FA832C4098CB188566FE27D8145C5933B44C0427C2E20A0B4B932595687CED0EAC4A7036323183053565C0E0BEE71598B6E021F37DA5B54CE538E446FD8FB4007B203E062ACCBA6559612F5C4A02FD86796FE9B8834C7DEA8DEA8A44E0E272ADF6A0E13C02347A4CAC03EF007BA96A2EF038AC969BB40A1F1000F381BA7F6947907972128492FCD5CE5B8A66CCE3AD5EBBE2C21ACE774F1439D2CE247B046B206AA18D0B9099C8B24AF46582A280877C3B459E9BC485A0F4A457B9B0F2E2277572FEE39770BA6081B151BABA9940EA0ABD583AA5ED1755CC785FA38781EEE835F1DF888033AB0D7165C92BB015B94EA8BD9365123F3799A2864C31E1066829CD5928A5C6E04EC1EA2EF7712809CF71D3E5B077BF56C35F41D0DA1F76AF801A45EA35F8406189A2975C911E588B086C16DA0F8802308EE29B44BD42EA134BF4EECAE6AB0A51A3D0B511DF597D80264C58AED612DED7866BB16C50E8F5FA6903155CBCF012F64A1C3C3C1237B3392328A84AA7D447503835B13F3671000258DEF12948A3AB91238E4D19A90C3DBD9C8542AEE40A5258EA09F4407B4B002ECB8A10E9D73C35F701B1051A09F0D2423E91A16BE971B82779860855FC2A7D043AD1B4F1DAE70A99CBC42C4D69E04CBCF61F22F097C53FB41820723D45DD562758BE20240D7E12BB534A9D9DB2665C94FC2CB6EF5755D03159312A1AA0350C809CC346303A59D1297BB18BF748E45BE0905262088D404AD464ADA49A0C08D86D980F7E8B80E94F18CAE23AF1A3E1576F367955D857D9E5B65AD040F5209FE2C594E4DD8784550BBFD460417413BA45A03013BC5DED6043522C8DA3B890D32BD89B8EF758281575E1698F3D4DC411DB04F621ABC8698B059764A8151BF052DE7BAC5296A7217C0371795BFAEA91C5284B755FFB18E57CA9E0008715B5CAF090DF68CE5A9ACC1075DF2DF9D1E99EF58BE706F884939122752F293F83D78D0EE49FE8406FAA44562584FF6618B6A76EA8051B60D8C6EE40B52C4E3270A83EBC993BE381706A57E502EA395027971AC1B8E0D6DA070388268DA64C897B53B3CAAEC767B9B84024BE37E3A4E289061543FD54110ACC3058789241426F228DE7150208A943359BE275C2D95C095143554809442AA5377805AB04AD3096BC102A0D62C0A382088D4C6A91B9A0A7F230CAC493A04994F4F50A4D2E1BD33B53F4FC985ACF91075C03E754211343211048F5E7DAE9C7913A546DD261D67E07B42961F5298067E8281A90300C2518279855C5EEA480A93A0C87C1C7EA0E98802A88BA20020E68E93C60A4D6C9A49A532661D2F934E6017A41464CFC038D28B7A023BEC020BB0A0378009D284571A9C1DE63F2AB65F3AF36C9886EC86BAC1A5113DA832D4DA52D9BF232A3E8A6AF44C25C5BD443F6222F675A0C2A40816EA102A480E5C44ABC547E07A0512A18CCFA9C984EF6E622C7367D05C973C43134D23373963A593CCBC5AC8F9437C1065284CE82696DF9E44E3BA9DB8434537985F941886926C2B72F10C391DB871A35A7B233C9DA85ADDD7298910AD804E4A15D14D31E5EF9379E7EED34B9D81C28EDD1594BB8EEB200A095D09662FD1A71ADD0281412F35F2596D3CE037CABF0F5238778A1D3291B0A368DFE36D1439A0CB85656891154D8D515FC02A0DBC918D8AAE94798F6B1A9539D1DB15FCCDEB4E01CE8B3D0B4A2B3BC7169055A134E86002C8074311D493D8DB4B0342C77CBC8889D048382394D672DEF0A6C222366A6C419907E211F2ACEBD8697A24AF82AE8318A6D069E6EDB08A0DD4AE5D348647446C48B94EB8D215CB48144D0C9089EABAC9D40D60733096B4023103A99CAE56D42C2513C212CF9C108800C05AF84250C366A3A49C8E9D37899103BE1F43EDE26DD4656E906A762A0E039E14A07E82949003545154EFEE3566461AE9E8846CBCED1616A3CA196FBBC524E200F61734417CDB2D296AF6E569B7B081E0A2B6F88F5D49F36A4B5E50C7BB4FCF6A3EB351541180ED40A98036FB7B61687643BBDC566500354423A57D51C78866F8BFAB09EE9C2F7957F58434E80CB813C0A97EECFB99DF0E5EBDD53CBED4C4066484D006723540080A22A42489D463C1FD4D0325F788B3622636B3B70A1BEE0F22DC8A332295B04AC59FCF7440B3F7B78082B0D4FE828126F2D23A48CD91F7FC92BE134DF310518ADC44DA62690D4026148DCD81E2526F7BA8740DECBB6DF0FD2E03C796996AC143F8AF694CA12570A8A35DEE18536DD8F054247F53B73E0C44B31BD06652B9E29F85F0DB9900292ADB02A49E61A24BCDFD89469BCA06B53060EF5C87484DDC1876423C29F3DC8A5AF06849C7AB3746E0C66EAAE193B2C6FAC037CDFA01EBD812C93D09FBA83E94783EAB2DC883D0850125C0D3175544AD5637161CEF29B16A1E8D718F042821F10601B0473E3527EE67C120F0E020EBCBD0E9873A0918FBA052B706C2C0EEB3D5D121E0702E18B12746020DD4747EAD3AB9A9FBA94FA4DE5D5DBDA57BC85EA0C784254CC26A1657C70D1D3FA0FC346A8A0EC554A1805843E3A014074DB71016B7E9965100777A6DB6BAC06CDFB91FE00C886D09E05CC089F74142DF60DF6752A128A55D4D9F7BCC141E46591D6201DCBD1DAD848FA01E3AD04A77BAA823B1608AC48146F17D2D68BB6E9F81CC8104BDA758DA7387173B1403EFECE41ABA4A8D7156BB860B9DD883091569632E5FA4A8C7EDFF65B77E9C9D86AFFCCDFCD4E8ED1A2F22A44E92C8585D8D6C00818510E8941E68EC3D5D44BBF7A6539D1CC1C66C3437FB99858AC85D16AA0E9658E80B6280C60E13383A4F43E005351BA01BD4DD10B235A368EE33AACF6ED524834B208A32D9C666ABBA313BEE2F1360DF7D365F5E8093DDF9074F2DB515CA34D451519FD2B39D881022341115A4CEB07A88A203B630EB6926EE39BE6BF87B5ED2A55311E98885D6BA8311C8C021A806D1310F5AB09CDBBD51E34A236CC056DBCEA02F05F214BAB111CF3609E5BBD8DB0C4B4D340748C19EE0E4EA06E88DA46C149F50310C5365D48190A752F39EEE1E16150E244DD15171E2410141B903128CEAB9247388F79D9DA80D04E300416CD9F37D380641AD93A0A8799E20E74F71E0D5EE8966091ABF7E1ACE4445ABF547DA43687496EF546AAA43651721FD1DF6263529936F43775C82B4883A03820FA8C5A1E9B5CAEA083B283501AC54987762C55593517F5803618B7083ACC0355AC3DE0D78D8CEB93B72070C6F758581FF0E81771AC5113052C94BB6CFD1A184F378C64D161475093866D7C8B88E1BCA6CC18B07C5BAC0BD9E92682969D9A1075443493E972B0963783FD940C516A7B12D462C0C27A3EAEA6FB645C2CD0DA1CFA2ED3E7B97BDA6FEEB88BC1DF422E76F1581729398E41DE900BD73B07B14D153432B94109DED41A5A44438434DF4259C08BB14EA15848D8ACF1D9659638C8C99D1BA43149A780B173144350412775CC0A9AB618F3AA8FE19541D7B41448ABC075D48D10084CBAB260E0AB57FE5132CF96749F9533283C048B203C8B1460304142F2E0B43C6CA838C508DDCAAAE41188DEA0B8462B3E2A61637664C9D448A6D490DB97EE742A2A15C50C96066169D9D16FC13C6EEC87CCD915849D1884947EBF728AB4227C31D578D44D9D357598FFB59D973C48D57F598027B1A03836E3DD440D281D0EBC4D6E0D69720E4468A03AAEAF1561767D3332168138364D100D395764149862C6609457DD1C2ED96C8FA82AD3B8F3A7503DD1250FB77D63F526ED2A3C3ADF9F562B5561D67588D775DCE010BD040283B7F668E6794528C4A92609EEBFDFBCB99E77AFFFE72E6E3F2FECDE5CCE7DD1237A2A2596DCE3561BC43A3AD31EA08FC4EC97491C97C8596BAA313F127A5E0AC267D9FC31E72FA39BEA588E80BCD8D6BEA8FEC734F34E3F667F05B73717C8162E4DDEAAAAFE34C23A5877471E675240BFAA8357835409D4593267080E0F1D55504B5CDB35B8DCF06F59AA036908CED9057C7D41A44D428CB7A1A0064DAB1E6A9AE8E02BEC71AA149F5A1F03D90C890B9FB580EE9AD099E83B6FAAF6C4D6407227CC73D92266725AFF404CBD07422E472F4E5A5EBFC287A1441C7CF79CDADC332418DF523DC95BC2DC47CB712F5D2FFB285130DCC0BDCD5500E3A8BF80169E12F898A0A3E590D6C5FDE4BA15A19AA97B31A0CAC4AAAB1C7325CD789F78C06CE43B153711ECADB4451D623525192465A0DA1CD7E780B78D2E1DD3A869AEA8182ABE8B2A7E2516A8D15C51C0043979B7AAA7A54280FEC3393F42A0A02FA3AA91F947F786403C031A76A210C6C514D6119B00023F6CC050EFA228C60A9FC8260CAF890048814A4A1068D4E1E8F46AB9F63E8A0B20A3B09BB41862045D55034B7BF831C4DD39F827555022CB4A9AD08B4745850854F0D7544B03446110E3A3D764511D4708BC618A9A27754E8F3CBCFABC83820FD9E21AB8DB09C8E94D49DE8386D57A79005E06F5FD9D82C01AE230B756203A6950E833CB09DA5FD261D1B6AE20F46EF29E79462B44CD000DBAEBE0B1822086A2442883D48164297CF14454981852127D21C9D98BA9B52F919B5E58BDF1AD78E56CD276286ABC9B939988C28DC5A1FE6A120CF708FBBD075F819967F67E9294B63369CB141181DD8A0B528AB18009EC3677439D92F25850CC87A920A42CE8746CCBDAB8A661C4B080F3DAA8805908523DDE10835121079F0BB28411CC632D2219E92C02A2751E6026BD51359A321D7EFC8889E6F5AA9E980EB9ED6B062940C240E92A423014836CCD868B44647FA10281D13B2A6CA3AA2D6707B1EF6DE8435C3F7BAE460694FF7A46B04D1462ABD1E43C5D85623CA8418B26904473A6AF2503A444F3FAA414DC106A19AA68321CCFD39F97F3FDDD7649930C56860EB1EF1579625E1F97E82FF7707F8E6A713FCB7B1826FEFFBF1B6C29E1F5305AF1EDB6BB0E0CB5881F0EFF3A274DEEE9F89B6CF8B8AE69FA71DFE6CD8C1FCF3B4C39FD9CAFC72DAE12F6D653E8E60FC1B5B993F9F0CF9BDADCC1F4C86E8F12F285AA909A4DF1A241E034D18D49604B9D54D6DD6641818F433AE52863A67AD2729BFB8A318B64692C1C644ED5D5862ABFB6211C93374441CCA5BB2D6698CD424F5CF9A1EC85566F5DB2F22BD3A820EDA9FA266B9104254EE1ED4FD91A8B84F6D21D5BDFAE4D01F3F5B374D0FCECED501C19C9A0838A4FCECC40DF4D85C127EAB450BCBC590147E5730567E8E2C104C6F6D2FF3A30F068CE9091EF8A59E3DDC4963454009F06957A35CCD00490529E0BE4E5D240AA7654D302A3DAF081E6DCD0B010451B542E77860391AC651F1D1E60B7757CD52448D3050B3BB55EF093F20EC52EB3A91A867C06AC31D776B0E955511BF4890319F79B926B1069B10E58E388455206E821EB54208407F6075F0BCBAC0738B14F568B3A3A78E9FD91938FEC6234102A4C018F4C4A80E13070C9D8A7C5A4E1A5D04DBD5BB178FE033360A3ABBD673865EF797CAF01A702E0A97387833D22395EC3B32796A06B565AF1E8AE682132A4347EE1B7319CC0A3FD8FFFAF11CF31AF0A11C578D0D5A166629420D0FC3731A75BC41783CDAA3E814CBE99FC5687A2493EAA37FB52155479909CE048D84D9826897524CD48212D45B5A6A1C8F56F7CE736F27F6E07BD198878E04CA5BEF0056AAD6831AE308B5A39931B4EA866B5E0C58289A9091384B0FD4924D7E50E9ECD012F430BA241C8A488AB55C25A67F708210D64C5D4205A9ADE3C6D3C78F9A65F3CFD3987A8EA41CB54A9DD283125B4A778AAC44307095623B78745B62AAF07BB00A4DC4D83D359EAEF15AF8A4668C7AD3AC5D9A2791164E8FFFABA192EF59015212A269885728856D454FDD93997C73B9AC9E56F17A1C9E545D4EA3B341F0E129F1A4A40674A2549BC67B12E9D50D7C10D28FF529D91A92AE6A9F3C732447CFA0690CE1B8069D0159085B4AB9A6F38966C28CB20C708A9E0C5351128E503B3A2ED66C60401FC1593C107546E73FCC2B85FA8CEF590AFF52E755072C68633F2C19819A3689CD62B3B675A284E64772C2CCB2CECE7DD865EB8CFF362673AB3A865207670611ADE6D40B86F3103C2199AD3EA8A2115AEC492E00296535F8164C3402E44ACADE74D64FBA75AF67EB74A4C4B5734A10D785DBE15146ADC944D44AA2AB41B93C64052E053D915B2301815C03247B053EF88B7C10057C66B46E13534765CE4819E8CC500F003CCAC0DF87A6A50CD8453C6992C3F3F644DC52DB4A0F677A5899279FD341ADFB45BE9A3E04E75963085603476A6913BE13365A8160821D6181C809805B1C305BFD0B03518F2040CE31F65445817DB222315AD7EAFD276674E4DAD4BF69001F961BE471CA6026F85441F60CDA911F705F87153A49A277EF15B7E940BDFE499651BDB8946F81BAD9A7FE39017BFCF96334317F053B0B0D8D122A307BE82C165D71444D56F965EEE8535CBB933FC4D32253D5F2A444DE5343ECC78F920E8CEB7D1A81DCAF1DC5284DCF86D5624A0EDB993382A64833B2D80589B7A2C1B711D42FAD3A2921D0B049784DAC2E35E24701C66B3D51EDF5D730A5B9D394BA03850CCD4B99D441080557DD528832D1FCE53153CDCE95A703ABB94015526A3A75EDF5B8C1D0545FD155F12F95F5D354EB8604280850477EC471FBAA965A6FD3964A189A860E1A441B7AEA8622AE41784A0905724EBBB77AA088D8B99EC3B55A9F61D1D43741B68F4D4BACA34D72DD403874A01CADEA1D456A244D92175215A67D3535853787F5F9699A434D4059FF1F527E00E5BE4046ED00000006624B4744002F003B00C2E786AA47000000097048597300000B1200000B1201D2DD7EFC0000000774494D4507E8020C1039242874158C000014CF4944415478DAED9D7F7415D59DC03F77DE7B0901F24304447E94D012F017906A0D96954328ADD8755DA2AEAC9C724C94EDAA582BB87BEAD11ED768BB50DD6D015DB55D17811E7BEA82D5B8562B4AD77844547035C0FA032335181ABA447E842C81BC1F73F78F37D16C4CC2CC7B6FE6CDBCF7FD9C33E7F0E3CDBC99EFDCCFFBDE7BE7CEBD4A6B8DCF28072AAD0DA01A380A34597F6FB4FE7C1441EE898F503E91A90C5806D401136DEEF30AB0DEDA04B9272213506FDDB4D214F7DF67DDF04629FF724FF259A6F5406D868E759D6429B927F92AD36AE0D60C1F73AE6428B927F9265335F0B20BC7DD67359605B9279E6364E97B6B5C3AEE44AB5008CEA9937B124C992A5DFE85159C532EF72498320982C8240882C82408229320884C822032098220320982C8240822932008229320884C8220320982C8240882C82408229320884C82203209822032094276B13BA14A0D9FCFE8599681EF9D91A1E3F4C73EA0456E6D5EDC93266B6BC007B3C90E2653CF8C9EE94C4628085EF10CC9C9339BFC26530DC9C90345222168ACB112802F64AA03D6C93D1102CC4E3E5F5CC0330C1149C8D1F65F83D75FDA5BA64A1149C821E6586DA8AC54F39A2CA3052197988447BDBB3D99A94644127214CFB2534F666A001648DC851CE5343CE88CE8C94CD5126F2187F1A47C1B243B1EE4799290CB547A255399C45A103257CD130441641204914910442641104426411099044164120491491004914910442641109904416492100882C82408229320884C8220884C8220320982C8240822932008229320648F701AFB6E40D64112BCE1EE5C97693DD028F7591099A49A2708229320884C8290C384F3E122E3A61E9230995C1856E76BCD64A538B7EF67B4E63DA568EE8EEBB743061F850D75528A87203201A6A610980EDC1032D4C56183A9004AF5FF79A5B812A030ACD0F0A1A9D90AFC1CD86528BAA5A808F958CD2B04AE3014DBAD6D892229925D144C3114D7F71C03B8CA3AAE20E4854C4AC3451A76004F595929134C079ED4B043C3D793AE09428ECAA461B8A9F9A982D7154C73C55498A6609BA959A5A1588A8E90733275C7F5790A9E3414CB3D0998E25605BFE98EEB69527C845CEA80985118569B81333CFEDE6F1586D516E052E09D00C6AD92ECAFCBD5428E0D470BB24C33806C88D4C368E005603EC995EA83C46A604E96CFE11E3C5CBC59AA7903108D25A6E8EC8AF499501A36476389A908D2660AE0390F2B8884D6A8EC8BD4D33131BA20127A00182EC549640A1409533F60B555FCC42509533F28C549640A0CF1847979C850B57E3CB790A1AE8D27CC0552A44426DF73E85877413864DC0184FC1ACB70C8B8E3486754464A884CFEA67458A416B8C8E7A759553C345C27C54A64F235E1905187FF87F228EB3C0591C99F68CD37809901896995D65C22454B64F22B7FEDE3B6527F31BD5A8A96C8E4CFBA93E2B220053568E72BE4894C5A331B1813B0B89EA135D552BC4426BFFDCA8F0D5015EFB3B85AE72D884CBE625E4063FB0D295E2293200839DA66BA3088810DEA790BB9DF660A1CD26612990441C8D96A5E4003ABA56C894CBEAB2E255F0D0F5E350F7E27C54B64F21B419D4D352AC54B64F21B6D018D6D9B142F91C96F6C0B686CDF90E22532F9ABAE1437FF1BE80C585C8F47E3E64E295E2293AF28081B6D01CC4EDB0AC2C61FA578894C7EE4E980C5B5418A96C8E44B4CADFF03E808484C8F995A3F23454B64F2E7492A750008CABC740F194A49154F64F2358F04203B1D031E92622532F99D366015FE1DA9A3494E882F5949640A04F7E2DF152776915CD9411099028136B5FE5BA0CB67E7D5659D9729454A640ACE092BF516C9A9BFE23E39A504B0C8506ABB14A7FC26908B9D1DEB8A3D575418FAD748C8B889ECCEF2AA6309F3D113DD89DF960C8D042984CBF0C7CA812253B629191AD1D1B8794BDCD4840D9535A1E2A6FE85D6DC5C323412B4EA5D138254F37A28081BE6C9EEC42DA6A9AFCF421BEA8469EA2527BB13DF2B081BD24E12822D13C0F0A2B069186ABDD65CAD35AD9ED4EB34AD5AB3D030D463C38BC209294242A0AB797D518AE74D535FA4E16143A94B802217BEE6A4A9F58B68961A868C7048816AAB9D5669FD7DB015DF8FF6AA8A36894C5EA75843B50135F184BE3464A81F2BC50519CC466F274C7D5738A49EF7FDA236FEA0DC92A7DA9266460AC708DC2A8CE15CBB8BE1907AE1F8C9F896A282D08586A17E00CC064E4FE1508780ADA6A9EF3F114D6C1F36241C174706A512A8036A808952CDCB11AC82FF3A7005707AC2D4F30CA5E60097AA6466190F14F4DA250AECD7C9814A9B4DAD5F0919EAF7C0A786A11836242CAA0C9C8196E5B3404192A90818676A1D022E33948A989A1D866207F6DFBE3D1432D4466063AF7FAB0086F46E0F01CD96688494E3BA5CB1A9B9D0505C686A1D039E37948A931C4FD89583E5A6DA924816C4F6B94CA381B9C03556D5A1DCE855B88DE41F3F01EABB63E6938511239557DA9B3371A2DD31B3B830625C05D41B2AF9CB6C9DEB4FAD8FECB31AD04F00FF091CCC0189EA8139A24EBF8D6B5DAD53A35A6B4DA6B658DC9C629AFA5FB4D687EC9E80A9F56BA6D63333791E7637D334AB4CADB73A88D761D3D40FC5E2E659D938DF34B772AD75A30E2E2D5AEB4AB7E3E487E74C85A6E61FC321F5BA52DC0C8CB0BBA382590A5E3435F76928F1E87C8B4DCD4F94522F29F83307FB9DA6144BC321B5CDD4AC000A03F05B5B6665A28F039E8D2602EF907C45C6B561544A6B5D0DBC9CC2BE7381C6F4B222151AFD94A1D479E96758F601DF558A97DCCBE2CC03D62A957E63DBD4FA5D85BA52293EF471956E7D0E762CECB37A1D1B337DE06C66A60AA5D8920991009462A252BC606AFD5C3C615664F244E30973B2A9F5B34AB1391322596DAB7395620B30C58705AEDEFA81CDC51EBA89D6B5ADCE95CC54016C01BEE452C0A25AF3AA52FC93A9F55643A9E329648E618652B3B4E676A5B8D8C56A592BF04DF045862A2339B3922B55BAF6F62E8E1EED66FF1F93B7A36957FFB3104C993C9CA143438C1F378C2143C24C9850ECD6F5EE24D9ADDF124899BAE3E6B08290B15D29CEF1A8801C005E8A25CC6D9190B115787790CF9E134B98174742C62CE012E04C6F3A81F8209A30BF5618368E6751A44A4BA48C65A3D6D64E3EDADB41D3AE0E366C3C9CD6B16A178E60CAE4E14CA928A1A2E2B44C5E778755A56D0A9C4C1A3628B8364B05264EAF391A4CFD59577B0FE3C8D2E3020DBF52B0388BEDA306A0341302BDFEC641363DD34E734BCC9DF6417984AB178CE2AB95233229D675561B31183269CDE54AF11B20506FD279444C6B162AE5F9049675C0BA740ED01D4DB067CF111E5DD7C2ABDB4F787AF2B3AB8A587CCD782A2B47515810CAAA509EC9D41D378717848DB7144C156F06CC4E1F46E3E6D70AC346671044EA8E26D8B6ED000FFFDB7ED7B290936CB5F46FC6336BD699E94A95B2509EC99430F5DD2143D58B32A78CD38F4286FA07BF8BD4DC7C84071ED9EB7926B223D55DB74F66FAB4919E0BE5894C71538F08196A8F8291A2CB29B3D3A184A9A7860D75C8E5CE86C654DA48C78E4559BBBE39ED0E05B7A95D3882257515949414A47A882B703867BC27CF99145C2D22D98ED5E90A16FA51A45DBB3F65C9D2B77D2F12C0868D8759B2F46DDEDCFEA7540FB19ECF5F64F4874CD1841E1232D4CDA2897D4286FA5E34A1DD785BB8CC2A248E45DAB8692FD7DEF47ED6DB468EAAA22D316EB8AD998D9BF6D21D753CC340A99599CA7C2353C450D38069A28823CE89186ABA0BC75D8DC3B75EBBA309EA7FD4C48A35C15D5574C59A3656DEB73B15A1263AA9EAB92E93525C256EA414B7BF72A1C3A1D6A9482BEFDB4DC3E6CEC0C7B36173278BAFDF417BBBE3D7CBE6901C5E955D99BA6266914E36E404E71D11355D31335355BD721C8E456B6FEF62F1F53B7242A4DED5BEA5CB77A522D4DD76DA4FAECA5414314E57FE1CC819848E88C945116354860EE7A89DD41D4D70EFCAF702D53EF240A8F5A7FA80DB43672E132DD2E2CF819F67A07A37C789482BEFDBEDEAF3A39AF9C5949646A89C5E4A5757820F3FFA5FB66DEFF44CDEE69618F7AE7C8F7FFEC9579D3CE09D41F255FD0133BCABCF99B4E671A5F88E389162554FF384522C4AE31065244744DBCE4A6BD7EDE1C1B5997FBBBE6784C205E78F1EF0D94F6B6B274F3EFD89675DEF35F38BA9BFCB51EF778755653EEA69352F616AA514934489B43A21BE9C30753A33F52D7322D2CB8DFB5D11A9667E316B1F3E9FB9D5E3077D883A614231CBBF7F2EBF7CE46CCF3A259E7B7E9F935D4AB39299B4668C52B4814CDB985672D28CB7E2E86A566A6DEDE4F245999F3CB5A23CC2E38F5DE878BCDC9BDBFFC40DB7357B12E44DEBCE733AFA7C12FDBC03E55A66528A8888948130AA9447D8DBCE4ADDD104F7AFDAE3CA05DC75FBE494069ECEAC1A43CDFC624F827CE73D7B9C3E83AAF7B49A67359E85ECC4B1CC92C9165BB6EC77ADC3A17C62EAF3DCCC99EDCD08B4E696188FFFEA2327BBD45A6D276F64D2C1987DC7FFF5BCD4E25867372BB5B777F1C3159FB876FE690C34F59407D71EA4B5B5D3698C3D9249CBC3DA0CC531951124B6B3D2E3BFFE58826CF1E4D39FA41563D76432A4B594AD385663731E87D6D6CE408C00F78A0D1B0FB36BF7A7763F5EDA373B1912C29CA3CEA55FE2BCE0A986FD4E3E5EE3BA4C27626689A9394B6E4D46AA791527626659AA3778B0B69264A52FD2B0B9D349DB6901BD5ED17045A6A288516428C6C8AD491FA538A32862143910C956C7C3CB8D0724B803F0E216478FF56AA49A979B54DBFDE0A667DA255A03F0E0DA834E9E3B558B4C792C5373F3919C1C119E49F6EC392299298F29C3E65BB4EF34495BE954EC78CBF67C36A558EF3A894C52C51306A8EA394064CA316CBD4BD0DEDE25553C9B38E8D51399F251A63F7C7C4C2265938FF676645FA698A9135AE7E4C2C89EA3E144CCD4711B1F2DB773BC7DFB8E4B506D32D092379ECA1431D4A74AB15D6E47FA28F8AF88A1EC34726C753EBCF741A704D526DBB6DB8E55A9ABD53C0D1FC8EDC8481CDFCFE4F17269B621B771D8B6AC746D4215055B811BE596A41DC7576D7CACDACEB152988431AB5C70FE689EFD757A4B46B51D38CEB6370EA53C74AAB5B5D3EECA85656ECE4EF422701C18264AA44C17B03953073BF83FC16AC6969414A4FD3ED48409C5CCAC1AC3BCB99F72ED4DEFBB7ABE6EF6E6B59B9A17C487D431352F02072512E9337DDA48B7276A2937DC2D0C7A8D06536E654A6D25D3D47A954422B342D52E1CE1681F07DDE3EECAD41935B7018FCA6D4C89C73AA3E66B1286CCF217DF1E1BC86A1EA70D092580BB34EC96DBE8282BBD0BFCD08A9F904132BC52BB7732012868D79A9BACCE08E1D41CD79A9B94B4955CC349556FFC38DBFD67473D194E64285E23F956A208750A91801A43D9EA0E173C60C810DB1DDE4D5E8ECDFB7D34A1E7016FCB2DEA9777A209FD2D608B5B5F505A2AB3AFB99A34BCFCB282907AB33BAEBFAD35AB244BFDBF6ADDEAEEB8BEB420A45E4FF118B6E6350ECA1C767E62F41943FD29134061581D548ADB80B3819FE5B1545D2427813F4729961786553A6DA4A3763F38BBAA28EF05B13BE6AEA23CE2646AE7C66CBE82D10AFC9DA9199FD05CA36115F0AC86B65CBC81D6753DAB617542738DA919072C073235DF96ADE51C2AA7157B7ADDCDCD477C751F9CBCCF35ABCA59ACC2D9BE38437114F8776BC3D47A5848A99CAB8F985A47434A1D5740C89D093A5BB031F9E49727793BBAEBB7BF6B63B98BDDD14E71322BD394C9C3ED7EF4155FC8D4979052C773B1EA1752AE4F71DB888D1502277FA5D4D3EBDEB0F130E3CEDCCBC2ABBF92F57BD0DADAE968D5F82915B6171D68C94A9B49700D5B9D103647406794156BDAA8FF5113478E9CCC6AF5EEB63BDE75B4CF97ECAFE0D1E4CBCC24B82B13C02D4B46BBB242E060346CEEA461F30E165F55C6A28593282E2E201C56C4E31A80582C415757DC95EFDEB5FBB0E3953E6AE6173BEA7C80F4560EDC89835E24C1136602434E5DB8DC7F1D21E8FCE26715CCACB235297107D614C9E964A61912F2603275EA6912845370F659B6871C35F6FC41DA4C79486141885B968C96400C40EDC2114E1E708B4CF9CE25DF1C2B4118807973CF70D41CEC2D93B47BF29009138A6534443FCCAE2A62FA34DB6BE9EEA4D7AAEB060E7A8184DCE2BBD7954B10FAB0F89AF14E3EBEBAF75F7AAA79CF4818F38FE9D3464A76EA93956CF6E07DA18AD75BA60609657EF283E5532508A965EA0D7D9B483D32ADC7E6404921F7DA4E4E2719C9456A178E70D256FA4215AFB74CE060616121B758525741457924BFDB4A8B2639F9F82BFDF535F496A9115823452BFF282929E0EFBF5F9EB7D7BFEAC79318356AA8935DEAFBFBC7BECF999659754121CF985935262F1FE4D62E1CC1DC6A473D78AFD0EB41ED6032F554F7964BF1CAC3AACE77265333BF386FAEB7A23CC2D21BCF72BADB80CD216390C6D524C952F9456141889B6F9C9217EDA78AF2080FAF9AEE6464385633A865A0FF545AEB531DA09CE48AD2D558A36385E0D5E2B0319ABC87F6F62E962EDF95D3CB756E5A779ED309293B2C178EA62393107CAA71F89A4D2E0BF5CB47CE76DA0D0E7005A7781E2B035DF383461CF6D48E1A359487574DCFB92A5F8A226DC0C6C006C94CF945130EDF43CB950CD5D34672D8050EC9C1ACD5D818102E32E517E596508E6655E98E265879DFEEC02EE15933BF989B6F9C928A481D9648B606838B4CD27EB2CD73CFEF733C9742B6B9F3D6B12C5850EEB4D7AE87EB480EB543641206A20E5897CA8EADAD9DDCBF6A0FAF6E3FE1FB6ADD8ABBA7A6B384CC72FA197F273209FD510FDC9DCA8EDDD1045BB6ECF76D964A331BF57438D439DD4964CA6FD603B5A9EE7CEC58941736B73A9AD8D14D6A178E60F1A249A9B48DD216496412D216CA0F52DD79EB58BE7ED1E84C4CB099B2482293D0C332920B27A44577344153533B8F3FB1DFF536D5ECAA22AEFCCB315C70FEE84C2D95939648229390914E89FE686FEFE20F1F1F63DB1B87D8B0F170C6AA7195D34B39EFDC11E956E5FAE2A8D74E6412EC504972B444C667F76F6DEDA4EDC071BABAE234EDEA0092EB24F57D185C511EF96C29972993873372642163CF1CE6D61CE91D24C79D3666E2602293D09732924367E6E4F875EEB4446AC9D401656C9ED097A3241FEC2EB77EB973917BAC2CDC92C9834A661206A3DC6A4BE44A96DA69B50D5D992B52329330182D5696BA8E60CF5ED5615D43252E4EBA2A994970D2965A666DA5019268B5B5B93E0DB8C824A42A551D36D6D0CD078944262113D4599B5FDA543B2D81D667E3CB452621139493EC66AEC3FB45F0765AF23490E1DE399149F08358D5BDB64C5705F7917CC8DAB3B5F8E5C24526C18B3656A5B5955982F5FCFB8C4184E991A4D16AF734599B6FD713FB3F65ED3D712807E60C0000000049454E44AE426082,16,16);
INSERT INTO workflow_icon VALUES (4,'ValidationAdmin','image/png',	0x89504E470D0A1A0A0000000D49484452000000D3000000CC0806000000E98796970000137D7A5458745261772070726F66696C6520747970652065786966000078DAAD9B6976233BAE84FF7315BD04CEC3723880E7F40EDEF2FB03539E64C925573DFB5649C564720002810033AF91FFFBEF36FFE127E7E24D4CA5E696B3E527B6D87CE74BB5D7CFF5E96C3C7F9F9F156ED7DCD77633E7ED82A7493BDD3A66B9F5EFB4A78F1B4ABCB58FAFEDA6DC06F2F536D0EDC2DB804167F67CB9F5ABB78182BFDADDEDDFA6DDEEEBF1D3766E7F6A3B73EA4DD7A5BB7FC782315662BCE08D97E082E5EFAA1D82FE89A19FCFCE154F2717EA6969FC1DCE200F6C67DEBFDE196F97C7B6B3FDD6237C3585B1F9D621DFD9E8D6EED263DB1D0B7D5E917BFBEABF5ED8DDBD81E09BEDF65E756FB976D763C652D9DC36656F439C6F741C98329CDB32BF853F89EFE5FC367E2B5B9C786CE1CDC1EF34AE398FB5B78B6EB9EEB693F339DD6489D18B2F7C7A3F7D386D3514DFFC0CEA82A8BF6EFB821B96C1233E4CBC1668F6EF6B7167DE76E69B6C72D9E5E8E91D83E1CBEFBFE651E3DFFCBE0FB4B742D7B963CC726CC5BABCA28665A8E7F46F7AE110B76F364DC7BEE7D7BCBBF5E3471D1BF0603A66AE6CB0DB710D3192FBC056387E0EF44B361A7B85862BEB36002662EEC4625CC00336BB905C76B6785F9CC38E15FF74564E08F881075C4A7E39B3F14D0819E754AF73734F71A7AF4FFE6A865A70440A39145C43A0E0AC1813F829B182A19E428A26A594534935B5D473C831A70C4F65E5A85E428925955C4AA9A5955E438D35D55C4BADB5D5DE7C0B50586AB915D36A6BAD7726ED0CDDB9BBD3A3F7E1471871A491471975B4D127F09971A699679975B6D9975F6111FE2BAF62565D6D75710294244A922C45AA34E91BACEDB0E34E3BEFB2EB6EBBBF7BEDE6D5AF5E73779EFBD96BEEE635F5583CFDCA87D7682EE56D08A77492D46778CC4787C78B7A40C9497D66AB8BD1ABE7D467B679822279BCE6923A6739F5181E8CE27CDAEEDD771F9EFBD16F26C55FF9CD3FF39C51D7FD7F78CEA8EB6E9EFBEEB7075E5BFD6494701CA451A836B561436C7490DA7DED9A93BE7D8E0505D6D5ABF0ADCED28BB4929B4FC027B6B686EB85F53623B6484852E941FC436C7DEDD46229049BB49DF3DC6D4E574218B6A4E97C60F13D96B04ADF85C9B697EEC73249979F8BE8083DB53942772B6449CDE608C3459969C1D13945BBE7AC7D87BC70D61CB27C9625AB243B623379F512414B6C387C59B182ED706B82905DF2CFF77CF769DE1B760CCB0EB16D572699B54CD9C3C5949D6B3135E7FACEE0704CB03415CB3548079C2B8F1CB640FE6BCC5C361B4C3D6CB84FE06CFD04942C4AC05BCAB26BDDD32DCC5293175CB7D28ED2E0A940F6A86E981EB26B1A3B13F3D902DE822CD049E4B03BDDE06B9F8649594A21536C424A2368D790E7486DE41A47EEAEB3E61E5B88DBBB89985925F7DDC9A025917BDAB458657423718B6BB8BE9100AC80B882F3F7ECC0588D3726F00CA1D4D8E798D189CD630F76D87D1C1BFFBA3C6AED622C134E4DF0394709041329A5D1BB28B8569A0BFA20C534085B7C54DB0D0BB6D4865D5598DDB5A9EFCC4BCE05D47A6B2E6B5B8239F5957B28BB2FE90EA74A5E44FF727909D0CAC12203C11CA8D6FC9C4B15F01B2D8938F921B5EDD5F0AB44EEF44E07EEB26C21BEFC8EA81191A5C6478A25BB32AC3130E78E6DD4150A23E448E0A7B62264706011ACA60191D0FAAE056E58C10DB2087725B77C13521937108A23CFAC24EA269A2D4D09231797144145AD1D860E876192C0807BD8BE18C360D18C199439FE180DA822FC5A13ABD82EA71D563BD13EA13472BF1721D73788926D0D981A3EF08575138C1EBBCC9236BB73D5E7D156EA53B0002A796E8466CB0193498F06AE3C718A8D4A1DCB25595B976E273C31CB4649917CB5052212845ACD792C8DAE9A41025B83FA40B591D9B69D0367B4062FE38431D53789B497B2027147D87886212E2C44146B4DB1E182504916C482A6B35A0DD60F69040D19987E3B7BC69CA536469B6EE02841FF1124207DBB008AD822A396954284FD63E20FC486A33C6310B9165E8B10FA9EDC19C42525BEE32162088BB12D042AECBF85D058EEAB01CC170B58528452533E21F0D01A84215B90C14DF067AA0C42F8767436BBB94DFD3E3198BD9BFACEF2F7B37287B99F96A0BC9BF888D38FA93FCDFC79D3E6F9AEBF6FFA41C0BD879B61BCF17C00E2A86076BCDFC7D4C8C27D0DD62E28454D2E8388292938DF8C1B9AE62DA21B56E06E92D11B83FE105927B0F62880CED22DEC610863C870819B020681E02A1E44828C315B07974790A41846A3CCD952949B49145708D072DB8AF9EA09BDF4C4FC2414CF5ACB20B3127CA12347FA82C91B399B1222E6E53119A14A004E6A15874C71D3E68C568773E07436E1A3665736B23C89B5C90C4474697E8940CBAB79F8C8B3A2C4FCA5A981DCC45029F5431EE0A969B037012C2C2FB20618BA3497D16884D144B3C102C2E086E49236C05862078C874422C315D25C4194A1B750DB30C3EC28B3EC35E9511D073809BFACA439852C064F55E3415EC2A9258DE8FB08322D19DBABC0F314757631A26A40324B21A92584D5E16577E3E7B74F73DFF0B79F1F0325294AA088A4DCA8BCB76A159F4862A45AD5380D00D115014463F01D4B2D042BF95305883748B1729CBE119B7B112EB32B8B50ACBE191CC0E0554DC6292F0C24E36229F2B9783F06B23052D430884F18C85E996A9E58C6F867B859DF87FBC3A779B5E3D3CFDB8ECCE72D41A77FBD51F375A77FDC28E02731CC487A03A9D037098A24BA551E2379D11C2481B2F5F088886C43FC24A18530917C2B48F1C9A9C80F0EECADDCDA211E7843D34F55EF6DB32B9A08D548AE4695CF4AA9AF29A9B34228122EA9CECFE947CF681C02B4E59C6A8DAB330431751860FA4516F167F1AAA11900F691A03CCBA50757D25194472565948088DFB282EA976D503264724DE883A0832D641C32995C9CB93EBD025B617E180D06A6BC4744DC46FCD701CDDB88FF3AA0B95FE2DF0E689EEDF9B7039A3F19F1D501CDAB5EF9D380E6B76E7E36A0F95BDCDC0F68FE15882F229B8204CE250D7B8F5A9306F50BDA84A28444D4B3F7241E46467C1BF859064A776A0E2D53353969CBCB112D90F8D0C1632737EAF14947D58E49472442AB940748809546F319F7138E179F3DE2B8CF6D9AC8577FC272E633CDB1867B9E7B63B9C3715A117D701CB595B2C2CA47289AC2E25B8AE3E2B97B9A736D87981E1255DCD44AD482761C9A339D7D5312AD48B5417AA6FA6A9B2A9FCF7A959AB5BD9408CCF5A5A75150175948DDA8194A3D1F504210A327BFC3A513CDD8D89756FCB2D69A102E7A9A0A69CC4479E8C9B419250FA3FAD1E64C7A06243229DF6646D22D5876B9A1FAC6A54499D761FBD6EC0A15AB5E4B6AB65E2BBA4AC48644D7F34AAA1710B4133C8E894929A5A2F5DE908108BCB0714386B5071B3287195B8F4F2C82D89F0B546542A6D9D2C331226E11800A8631BE1E477D6F65BE20A6C54D9E782F5E7F72FBA9A69FE900A355DF1E60DD5F6EAC9B8A1F04662D90302EA5CEDE4E0670A0383D8937637A574E22BA791FD79B37DF8727696DB648BAE45E60C6E7A582BC8FF705A67954798E4ECD9909E44674A6D22322B58E829C0E7A6C81BC8BBADCD8D5AD94C389FF4C6ABD42038130A7A217ADB66A01E92DCE866A1EC3EA5005B118C8DA95285D5D8FDE4AACDE253A573D27EECDF4210CB590E49DAC5A37E51DD00A548D7A2AD1D27608EAE2D19571F1955A72D81126E05BA9E2ECBE2D135342780A5CE99D7A5C644840C6E35A8FA2A5EC4DD9A1F467C8B87841693E2D7048FD4C312C11BD108827CF6E461653F458B0F83222FE844FDAB166691539FE495F6AE57B084F283DC7415C87F8F47359E7C734597E4235221CB7967398A7FBDC2C8B62B9E8A1C3A59D9CEC2336CCA0A28346DAFD85AB5DCFDDB14399B6BDAF8EF09DDE5E35535FA8958DE82F478CEA394B52479FA5DAAA851DFBAEAC32AD03D31DD338629FD83DC4F585B65AEEDE7CC7332542905C07A149605F7487D3B89409834E61A215BD57D2E20ACE83605A37D007D3E365EE5654BB377270FE47B1AF0F1A592265138351689AAC4E856929D396F7AEE5E6A888952FA3034083DC80A1461C14679D7D8D6A27992B74AD0A87B85DB4DA19189BBA114649219480091BA18F0BB55EA5A220E104B8A842DC28CFB23C4EAC1470C18AD2E9C43C70AA9EE641232143E389FA93AAAAA2630BC1D4108B4E77AB8D92310A7523A9714E3D2EC75614AC8B902C4C89BF7B9668A6F41935007C0399A1D54D515D711895718790F18B85A182A4DE00028BD04383D6DA64177A263E0AD77C370AA148C364ED973531E27748BF01FA82F305E64F585659738333B63F805641FC08D240F40BA8F544E260F78668D31E35FF04E8CF70666D6F58360AE6CF505688B5132CF760BECBC20A6745F30DCBE61ECCD6DEE0FC0CCC6F50BE43B27906653DE8AC10E35A51EFDD81AB2CAEA04E2AD00BBD78F4CAC2C55E6553332461384F1F7D0428A9C4ADC71B6E281F2E0523899ABCA1EC902639885AD64667638144A5C38C74824C4136FF728C78FDABA97DAAFA07832EE988B512EC4C9D1ABE1188B5B28834FB222F4452047144A96FEB84D8EAAA1A5781B822DBD6112321072B5788BA77E2A6A88998801853E588CE992347C5C760A03C82460B299BF4455AA92BFBAAD5787629669B02328AB02454F44908C22120406AB40991837A240EF51981D4C5C849CF8A9D210B55546CEAD139A7F6F70920C1CD9DF4AE7B64CF847E6B921BE08E0842C2729780E644CEA028829E0867A39D245216FAA249AF540440C8434A71ADB69D590B618D4328FD9C9ED76C9C771DF3EBA30AF776F26F3E1E01FCA86AF9A28F335018279CBCD7C72E5B73971E6FE125B356237CD064DD49954433C27AE1C80D30C285E7A135301CA64B4E8F5AF5601C5E21BEFDC7BA7E4E00CA400FA3CE9CB0D373B31CD3A56134257DA8989EBEE8E04B04B32055949F03C7BC474E2FCFF2065393F223FE2548F9BC844B8C37D96B1D9359A3479EB965680DA91E335C5FE75E7A76095181CB3E332C89F288B6773DEF725A6F287C351EFDD01A86FF1CD22FB25C2489A68DAC4F1057CF5DB11A107FB38BAD0239E8F3B03C3CFC2AB1ACB93525483CDF510E480EE3BB3E118B479358ACE1B56ADA5685AA6AE50603C5488A01A6A502E9A296EC81709D4A480AEC4D2827141B5774FA82A419531F8C6189C8EDC292D9E11604F2708ED929A3A405B50BC1434891A7403931456C983A03FA4589A479B524FCE408F44084A0B94AF6450F76115B5E1310D2D2E983D5465980382336C860030B5AE3905C5798A040CF2123D544D48319B297B0AAAA44820AC71C8D6A301795FE02CB7A6AA41E482D538F27CF89D65658ECE735CB7B6CDC2243C1F11E1B7A7C4CD232CFB2D620B782C2F34491AA93567118F9BD4AFC7AEAA5CF451E346362B47E7AE144ECA35434BFAF151F978AE6F7B5E2E352D13CA91531453AA10B0CC8B77D4218A2EF24F51A260A835CC41DB414123EC184AA0559832A507D3A8BB0EC8A150852E717904542C54DCA69D4915D1896F4A7CF90411E85E1826E58D6268D51F73B7DFC9C35823147EF427AD027D2E3509674A82B4018405FF43918F23D8FCD9FB2F47077056089B0AF4683D05B56EA1137C48A283220296CA9E70AB48EC99EB98DE0E6FAAE5A2591244BC89A6437D921030A23EC239C0AA26A78B06D64DD68A4E1C87E7D8DA10989A3912C50691BDD99C12EE2CDB99C922DF83EB38A623CE5435F4A329426F04D0B3490EF111B2C6AA134D060FD7247B2393F3FCF7EA1CE78A5CC30AFD419AF9419E6953AE39532C3BC5267BC52669857EA8C57CA0C73677C3D6AD017BB7EF1A4FF4AF7E65FF2FDE7746FFE25DF7F4EF7E6D57C9FCB0C1E1DA4D28AB876DD2DC1C92D56078061C88A266A59414DB522E7013239E3B80F99F4A1ECC7B934F5E40682E9B868214B535DB3C103D91B5B6B22B40AC10A6A68D25735407149D7E3C3A4C82294F3F62BE8336D46755438E864A7F0A019E3B86C04B22B15A892EB4B11521041499EC15AA4C6E9313E5D948F93DBABA14D8EB5F8E7D2E7A44DADD2614183F9E23E87F79894FA11C425F8BFE9EA269B42B92E4AAFFDA729CCF3399E4C410E9F7A781AD412E1CCA54F0F0DB5217471A26BEBA33AA0ED35F3C47783597B33D98F0633C762414B4D321AB4FED23EAE6D7CD984BEA1F9C23ECE2B159F77F2B691DB36F448E37E27BF70FDE78D98D777F2B343CC0B1ED1621D42D7978B2861AED0BECD02F259044B541BE959F8506F59DD23C1D8B3BE5F16D0611A95C506956677B60AD71CE1DD56E6CD58FF6A2BF37BAF3FB695F90D7A7F02AFF90D7A7F02AF79BC8F82F240BA8CD2FAD2F7C428223130C29C1CE2201ECDCA082E87F81AE418A634B73991DBB0AD3D07106BDB5DB5242D130930110521EB79A44B41DF1E12FF88900D8C4C8ACFFA7A5CA6D88E7150E9FB8DFED4977AA65F3ED64971A0C50835832DA993F116552BD5EA9B2C83864D8858239C87F292B8699DB7C3B59C08FA00BB5DE48B12C23BD417EBBC2F17839E6FE582181F2E23B35B3033796A567CC4FA8666756A0C44A32D0166A78E265D8048687AAD55A378AA9941FDCD30640BE7A39E50640C6F8A16DF2AF29183F3BCF5EB10BB8AE78D81E4389B86A36FF56D9BF3DA4655C5E5EC796FC2B7632FC37DEF9D4F86FFD6E774781B2BBE8D75DFD37CE9FA70AECF537D19EB4B5FF3BDF3DFADCB3CE8FA57EB32CF3AFF765DE669D75FAECBFCDCF9F575993F747D795DE619C07EBB2EF30C60BF5D977906B0DFAECBFC0CFCD7D7653E0CB6CF2BB547D987BEA878545FDB2A4DFF1F87A6A7DDD66FAFA70988B37E5EE892E5A8057776CD9949E9634B8B6B9799E0E0291D3EF4A9273D7DCB62A78EE050B66E42AECA2FB4E8539C5E3275D9392398A4A3A05F468079FDE4A7F8549BF4D8BAB5F93772DBB8DFBE89FB8B8130DE6AE67F57D94822063F7B4300000006624B4744002F003B00C2E786AA47000000097048597300000B1200000B1201D2DD7EFC0000000774494D4507E8020C1109221F93EC7D00000E524944415478DAEDDDFF4F5BE7BD07F0F7B1B1C136601B1C3B0430C60E34801258D78694AE29096D13923664E99AE9EE4E5AA7FD03DB4FF797FB437F9E3469DDAEAEA6EDDEAE9D366DEBD42C959AA6A124CD428002490324A18416C277B087898D03C65F9FFD10E8689BA6E06352DBE7FD92A20AB59CD0CF73DE9CE77CFC9CE700444444444444444444444444444444444444000029DDFF0784100E0075AB7F00A011800F40DFEAD71701F44992E4E370734CE8CB83651242BC228418131B775108F132ABC731A17F0FDA2B42089F48DC9810A29195E498287DD05E17C9C3DF881C13C50EDA2F45F2F1B721C7447183D628B6C618ABCB314916559AFC9CC7B7E8B865FC4D98B0973926E919A6BA2D3C36C3941807C7243DC344C43011314C44C43011314C440C1311314C440C1311C344C4301111C344C43011314C440C1311314C440C1311C344440C1351726DC98EAE4288E3F8F78E9EA6241CB23649C7B99F7100633C151431267DAB7F4E6FC56EB25212036402F0D3D53F469E6B94E2DE06F08A24497D2915A6D52BD1EB0C11A5A1572549FA694A84697517CEDF734C288DF50368943BF553314844A805705AEE4154328254C7205106795A08F1CA3732CD1342F4AD269A2893944B9234F6D0AE4CAB0D0706893251C2572729C1309D06D0C2BA53863227D28C48F49EA991F5A60C96D0F9BDE930AD361EF8791265B2BA8712266CDD1212A2B4C685AE440C1311C344C4301111C344C43011314C440C1311314C440C1311C344440C1311C344C43011314C44C43011314C440C1311C344440C13D1372FEB61FD45FDE3FD98BF3BCF8AD3966BAA69CAEC30B50E9FC37FDFFE2F8E346DB9508DE0348F88F74C44C43011314C440C1311C344440C1311C344C43011314C44C43011314C440C1311314C440C1311C344C4301111C344F4D064B104CA6590F2000039D0C12B3C2C08C3449B0D904D5584CA9C4760D795215F9B07210416420B18B83B80607C19EED81CC3C530D1D705E980E1193C616DC0E3258FC39A67456E762E42D110A2F128261726F1B1E763F47BFBD17FB70FA3D14FB024022C1CC3445FF4A46E3F5E747D0FF58E7A14171443A3D64025A920200001B8AC2ED414D7A06ABA0AAE29273AE63BD015BCCC40314CB49E535D8923A547D1E06C40B1B9189A2CCD67FF4E820448804AA5C20EF30E980D669415DA51F88905C1DB4174842EB2800C13AD69341D447D593D6C46DBE782743F3AAD0E3B6D15C8D71991AB3520FB936C5C089E6311BF065BE30AF06DED3E349535C15E6847B6267B6327864A054B9E058F97EDC513960614A94A584886894D87E7AC87B0A7780FF275F950491B1FF22C75164A0A4AB0AF741F6A7276B3980C93B23DA56FC47EC77E6C376E8746ADD9F4F7676BB2516A2E45B9BEFCB3CFA58861521CBBCA8943C5875069AB843E470F4992367F82482A18F54614E65858508649B90E989AB0D75E8F82DC0264A912EB35090844A21168551AE44B4616F541D362962033EF936CAA223CEF7A1E2EAB0B39DA9C848F158946B0B8B2084FD083D9F8148BCB30292B486BAB1C9EAA780A46BD71534D87F5E2F138FCCB7EDC98B9810E5F078BCB3029CBFA550E268329A1FBA4352B91158CCD8FA16DA20DD7231FB1B80C93727C7195839C2045635178035E744F74E3BCBF95C56503425936B3CAE1814D0721B0145AC2D0DC105AA7CFF15E896152964456397C65D32116C19C6F0E97C62FA1237889C5659894A350B2E2E8F6A3F856E9B764351CD6371DFAA7FBD1EA39C715E30C937218A43CBC5878122F541F4349414942AB1CD60B454398F08EA36DBC0D7D915E169861528E26C373F8C1EEFF406551A5ECE95D2C1E8337E045CF440F3EF09D67711926E570AA2BF152C549EC2EDD831C4D8EECE3AD445630EC1E46EB542B26E2A32CF026B1359EC61A4D07D1E06C803E5B2F6F6A170961786E18FF77E577F8CD3F7FCDC2F2CAA42C6BDD3BABD19A9486035739304C8A6D3AAC3DA324B7E1C0550E0C93B28394DB8C265713769877C85BE510E72A07DE3329384887F38EE247352FA3CE5E0743B641DEBD5238845BEE5B5CE5C03029CF93BAFDF861D50FD1B0B301793A794FBDC6451C0B7717D03EDECE550E5FE6E0342F83AD2D62AD77EE436E4EAEECE345A2110CCD0DE13DF759AE72F8B2D719A60CB6B68855EE63156B5725B7DF8D339FBCC3550E6C4028CBFA45AC6A955AF6F182A120BA463B71C6FB0E8BCB3029ABE9B07EAB2EB9A2F12846FF398AB7464E7195031B10CA2277ABAE3542082C0617D133DA835FF5BD8AD6E5332C2EAF4CCA51A9AEC60BF663A8DE510D438E41F6674A7C46895726452A94ACF8B1E32768AE698635DF0A954ADEEFBDA595255C9F1EE0334A0C93F2B4149CC0C9BA93283217C95A7B07DC7BB462E6CE0C5AC7DF67F78ED33C65F9B6761FBE5F9D9C2001C06270119DB73BF98C12C3A43C278A4FA0B6B42E296DF070348CA199219C997887DD3B4EF394E588A105877735235F2FAF0D1E8D45317B6716A7AF9FC62F467ECEB577BC3229AFE97072E7F7516E2D977555E2565DBC32A5DD890F005A498B45E14F4A87EC44E1F7F01DD777A0D3EA64371CDC7EB6C119A6140F904DBD1D7B0CB528D617C3986DC4723408EFCA3C7AFDBDB23A65BB358FE2C4AE176133D964371D82E120FAA7D8066798523848CF199B516FABC763A58FA130B71006AD01CBE165CCFA67B17B760FBAE6AAD11DE8C2686C78D3C77FA9F825D496D6CA7E7216007CCB3E5C9ABCC43638C3947AEC2A271A8D07F0839AFFC4AEA25DB0E459A056ABEFBDA51C80CD684391B108E505E5A89AD985CB9ECBB81AEC8557783674FC3ACDE338FC48338C06A3EC15E1B1780CB7E66EE1BD857739700C53EA05E950C1611C7FE4BBD8EBDC0B9D56F7A5D508FA6C3DEC163BCCB966149B8AE132BB50355B8DCB0BEDB81AFEF081C73748797876DBB370D95C09BF906C3D6FC08BB786DE621B9C614A2D06290FFB8D8D38EC3C8C47CB1E8521E7AB1F1357ABD430E94D30680DB0E459602FB0A372A6125573D5E85CBCFC9553BF2775FBB1DFF1B4ECEDBA8410F006BCF85DD76FF19AF7371C3C8629B538B32AF098F531EC2EDE0393DEB4A1EFD1646960CDB7225F970F6BBE0D8E0207AA6676A1C3D381EEE5AECF4DFD8A54257876C773D8B57D97ECA643381AC6B5896BF8CBF49F39700C53EA5D959C392E9499CAB02D7FDBA6169A4A92049D56077BA11D66C3EAD4AFC085AA992AB47BDB713332802511C0C1FC67B0AF6C1F2C79F25EBE1C1771CCFA6671EAD6290CC70639780C536AC9810E767D292A6D95097FEEA352DD7B53B93E5B0F4B9E0525E65254CC56A26BB60BA3CB2378A6EC59382C0ED95B1B074341B47FDA8EB7174E71E018A6D4A395B4A83057C2925728BBC3A6516B60C9B320372717B67C1B1C6607BC4BF3A82DA9BBF70A18198F5744E3518C7846F0E6C85F37DC3D2486E9A12ACD2A4381AE002A499D94E3AD4DFD4A0A4A603698118A8660C836409BA595D574F02FF97176E85D3E39CB30A5AEB0084302A056AB937A5C954A853C5D1E7245EE67214B542416C1C0E400FE36FD370E18C394BA6288613114402416D992E32765BB2E9F1BA7864E718FF014C155E35F613EE6C1987F0CBE251F62F1586A5D35A3618CCC8DE0B5DED7F027EF1B1C2C8629B5CDC6A770F5CE150CCE0C22B012801022257EAEB88823100C60607A00E7DCEF71212BC3941E6EAE5CC7D991B3E81BBF86C5E0624A042A140961C23B810BE3E7BF76A912F19E29A5AE4EBF9DFF1F8C5E1DC177E74FE0E99D4FC36EB1CB7E776CC2F771F11816EE2EA077A21717B89F03C3948EDA96CFE2E6ADEBE89E3B8417761EC3DEF2BDD896BF2D297B346C941002CBA1657CEAF914EF4FB526F49807314C297395FAC39DFFC7B5BE6B38327314CD9587515D5C837C5DBEECCEDC46446351B8FD6E5C1E6B47C7523B0784614A7FD7231FE1FAF447E85DE8C1317B0B0E541C80639B23296F3B7F60D36125801B3337D0EA6EE54A078629B35C089E43FFF03574BBBBD1E23A86FAF27DB09AAC497926E97E4D8749EF243E18BF800F43BC2A314C19C82B3CF8B3EF0D5CEDEBC50B33C7D05C7904BB4B76C3A837266DEAB7F636F42B9357D0BA708E45679832DB706C10BF981D44CF9D1EB4CC1CC7C18A83705A9DB277190280702C8CC985499C9F6A63D38161528EF6950B18FCF4067A3C3D38E63C86279C4F60BB693BB2D48995391E8FC3BFE447E758272E062EB0C00C93F2A67E6FFAFF88BE818FD03C7B14472A8EA0B6B416468371D34FD386A2217C3C3B8877A7CEB0E9C030297BEA373C37882B77EEDD4F35553461A76DE786F77A88C42298F3CDA16DA40D1757DE67411926EA085D44DFE855747B3E448BF3389E7435A0C8BCE381FBE385A361B87D6E748E76E28C87EF9D6598E8334B2280BF07DE44FF8D3E1C9E3D82E72B9E479DBD0E668319922441922408211017712C859670DB731BFF18F907CECFB661303AC002324CF445A3B161FCAF6718577CBD689969C1C18A2614198BA056A9111771CC07E63134F7313AA7BBF0C1C2798CC76EB3680C133D484FB80337C706D0E1E9C05ECB5E1834B90846973175771A37033730141E64C38161A2CD4CFDDE5D7A1BDDCB5D28545910108B088B3043C43051A2BCC2036F8C01CA047C38908861226298881826226298881826228689886122228689886122629888886122629888182622868988182622868988612252A64DEF2E2F846804F0C166BFCFE3F76025B2C28A7F036C461B00C0ED777FEEEBFB59FB6FD299DD62977B880392245DDCEC373DB43D20AC462BCFEA3438C9927022729A47440C1351DA86C9C7B251864BE81C4FE8F5764208C17A53A692127CED63A2D3BCB75972CA50099FDB8986E9346B4E192AE1733BE1B7180B21C60094B1F69441C62549723CEC2B1300BCCCDA538691754E271CA6D54F885F65FD2943BC9AC8AA87A44CF3D64DF75E07F0238E05A5B1372449923DD392FDA1EDEA0FF1338E07A5A99F2523484909D36AA07E09A01CC01B1C1B4A97AB1180F2D5733729A464FF8442080780E3001A0198386629A176F59FFD5FF8FA7EFA33B80E3E0017019C9624698CA70511111111111111111111111111111111116D917F01FD58DAE34D5C576F0000000049454E44AE426082,16,16);
INSERT INTO workflow_icon VALUES (5,'ReportAdmin','image/png',	0x89504E470D0A1A0A0000000D49484452000000D3000000CC0806000000E987969700001D2C7A5458745261772070726F66696C6520747970652065786966000078DAAD9C69761CB992ACFF6315BD04CCC372309EF376F096DF9F2192E220B2A45BB7C523252B231201F8606EE64096D9FFFFFF1DF33FFCA929441353A9B9E56CF9135B6CBEF34BB5CF9FE7D5D978FFBD7F56785D739FDF3773BE2E78DED24DAF1BF37EDDDF793FBD7FA0C4D7FBE3F3FBA6BC06F2F535D0EBC2DB80414FF6FCF2BAAFBE060AFE79DFBDFEDBB4D7E77AFCB09CD7DFDAEE33F5A1E7D297FF8E0563ACC478C11BBF830B967FAB6E08FA1B43BFAF9D2B9E9B5CA8CFEFFC9B42F8DE76E6D7AF5F8C77CAF7B6B3FD7547F86C0A63F3EB86FCC546AFF75DFADE76D7421F67E4DE7EF59F2F84F33284FDDD76E7AC7ACE7E56D763C652D9BC16655F43DCDFB87160CAC71A999FC2DFC4EFE5FE347E2A4B9C786CE1CDC1CF34AE398FB58F8B6EB9EE8EDBF775BAC914A3DFBEF0EAFDF4E1BE5743F1CDCF201744FDB8E34B6861193CE2C3C46B81B7FDAFB9B8FBDC769F375DE5C9CB71A7770C26FFFDF663BE7BF3DFFCFC1AE81C85AE73D798E5DA8A7979599C69C873FA97BB70883B2F9BA66BDFFB637EB9F5FD8F1C1BF060BA66AE2CB0DBF10C31927B8FAD70FD1CB82FD968EC931AAEACD7009888672726E3021EB0D985E4B2B3C5FBE21C76ACF8A7337352C00F3CE052F2CB99836F42C838A77A3D9BCF1477EFF5C93F6F032D3822851C0AAE69A1E3AC1813F1536225867A0A299A94524E25D5D452CF21C79C72CE250BA37A092596547229A596567A0D35D654732DB5D6567BF32D0061A9E5564CABADB5DE796867E8CEA73B77F43EFC08238E34F228A38E36FA247C669C69E659669D6DF6E55758A4FFCAAB9855575B7DBB4D28EDB8D3CEBBECBADBEE87583BE1C4934E3EE5D4D34EFFE5B597573F7BCD7DF1DC3F7BCDBDBC268FC57B5F79F71A6F97F23684139C24F90C8FF9E8F0789107044EF299AD2E462FCFC967B679922279BCE6929CB39C3C8607E3763E1DF7CB77EF9EFB47BF9914FF23BFF99F3C67E4BAFF0BCF19B9EEE5B9DFFDF68DD756BF15255C07290B6553601060E3865DBBAF5D35E9B7D7B180C0BA7ADDFC5667E965B7929B4F844F6C6D0DD70BF36D66DBB243DA953BC87F80ADAF935A2C8564DBEDE43C4F9BD39510862D693A1F987C8F25ACD24FE161C7EFEEC73249D3CF656B849EDA1CA1BB15F24ECDE608C2C53DD302A3738AF6CC59FB0979E1AC39F6F279AFBD4AB2233693572F9168890D872FBBEDC676B83501C82EF99FD7FCE5D5FC7AE3C4B0ECD8B69DCA43662D739FE162CACEB5989A73FD64E2704C62692A966BD89DE05C79E47036E0BFC6CCE5B0C0D4C301FB3698AD578292496DE22DE57D6A3DD32DCC5293DFB86EA5137703A702D5A3BA617AC8AE297726E6B385780B7B119D640EABD302FFEED5F050A652A814879452069D1AF21CA98D5CE3C8DD75E6DC630BF178372133ABE47EBA3DBD246A4F9B16AB8C6E763CDB355CDF280076137105E79FD90963196F4CC2338452639F6346B76D1E67B0C2EEE338F8D7E5516BDFC6F2C0A9029F73DC8164A2A434EE2E0AAE95E6023E28310DC0DE3ECA76C3125BB261170BB3A736F9CEFC9573096A7D3497752CC99CFACA3D94D3D7EE0EA7EEBCC8FEE5F2DA84560E161A48CC11D5AACFB9D44DFC464B214E7EECDACE6AF875473EE99D06EE7BD9427EF91361237B2F191F2A96ECCAA0C6C09C27B65157288C9023899FDA8A80C10D8B605506F60EAD9F5AC08615DCA08AF0A9E4966F9B52C60748C591671688BA094F4B7387918B4B8AA0226B87A1E1304CDA20E019B62FC6305834630621C71FB30156845F6B6216C7E574C26A37DB279046EDF77B53EB1B40C9B206480D1EF8C2BC49468F5D664987D5B9EAF3682BF5B9B1002C791E8866CB0193ED1E0D5879F3141B953A964B7B1D4DDD4E7062960393A2F8EA1D806843D46ACE6329BB6A2612581AD047549B3DDBB173E08CD6C0659C30A67C93287B292B104F048D6718DB85058962AE29365C102AC5825C5039ABD560FD904650CA80F4C7D93BE62CB531DA7403476DF81F4942A41F17882296C8A865A14040FF98F80BB0E128CF1864AE05D722807E269F0CDB2501DFF5103984C55856C7509307901ACB7D3680F964014B891034E59B02DF5A833464097BF021F0335506217D3B3C9BD5BC1EFDEBC1C4EC97477FB1FCD7A7F209F3F5B124E597075F72FAFEE80F4FFEB868F3F3AA7F5FF43709F72BDD0CE38D9F07208F0A66C7FB7D4C6516EE6BA0768129AAB80C32A6A4E07C336EA8CC5B4837A8C0A729466F08FA0F997513EB8C42D0596E0B6718D218305CC44D210609C1553C1149648CD93A717909498A613464CED945D84CA1785280775E4B319F3DA14B3F989F82E2996B195456922F74E8485F2079A3662321625E1E9391AA24E044AB38688A9B3667B83A9803A6B3081F555D59C8F214D6B66720A34BF36B6F6079350F1E796694787E6932909B182AA57EC183786A4AF6B60916A6179903085D9ACB7034D268C2D94081CDE086E2920E81B1B61D201E14890A572873055206DF826D830CB3C3CCB257D1431D073009BFACA49A421503A7AAF1445EC2A9258DE8FB087B5A2AB617C1F3883ABB18511C90CA52286A09627571D9BDF0F9EDD57C7DE3DFBEBE0F9476118042927243791F71159F2862945A719C4600712B04883783EF586A4158A99F2220DE40C5CA75FA816C9E45BACC2E1441ACBE199C80C1AB2AC6292F0CB4C78352D4F3EDFD18D0C288A861109F30907D2AD5BCB98CF1EF70B3FE1AEE0FAFE66F6FFCF1F5B522F37149C0E9BF5EA8F9BCD23F2E34C74E618056F80C3D4D42778AEB514092CBB3B4875F403EC669E8B8519D9841993951D032C9E043CFD0165F279F0632803C328D09B91217A867989D7F96E36E364315BDBBD0719AADE93E8008CD67E70CE9269C63F11DF88CF02FAA4A2BABCF7AB201716B125F02CCA96F4D1F9C94B799EB8F57209DB976D638D114A4E18C69232128D414B4093D7F40A3DBAC8908D276883F5E11EF2398815E18E75E06BA0A35696E4FAD6CF42C0427B9CAA53075DF7F2F9CFF740D1020FD4C395466879C00B6F6D7E9BDA62060FA32BD2F57589AD49F94C22AC1F3105B214A3C7112369192811A83975AD0F8FD49EEBBE59A3F59E2BE0F2DA21C2D988BF0BDA97990C16518986A4D0B89928D0FA70841823F8EB87BC9C3B94DD0751EACCC46DE6CF436B2066C445E9CE33D3CB087805E788B2206FA1A45E1C3C5AFD73ACFB72D9EAA99465F56B82E423526A42889347687918D06E9847C22D50EA5097652293B616E04A9C0161D07E72DA5F787677F3686F99B88991E998B9D288503CDDB0A35C98599557EED1A15528D14851816540EE5AF5DC4CFC78DBA7BDFA362C48402C188E9B674C709DE2140FB9A273FB1F40A7D60E415FDBFB2E2E3C54FD79EBC20C5D1DE5664C4B90F910C3FFA1CB00AD7FAE225DF5D79C2F89B2836FF7D963D4966FE9465D4CFED10DF7186EDE70A30D125F652E11BAD4E50F0201CA92254C21D0E32E734D1A149A4C092C0425CA3A170F97AA1A41FB5A07CD02CB01537091B782D959562AC96863848720F4212D26833EE072663FBEEDD0255260C08CBB772A8D4F0F618241D821F30671184B14417510B5F668C2A8ED791A4D7F869B58BE0112DA2CADF908BEF406DDE915A2DEE1F11FCF0B83BCCAC5189B347A75C001D69F70993D340BF5F1AAC254051600FF591D2F35D24A17E900F501F4B4957F76AA3DB6B46F7ABB11B6B76AA31307F776592277E0FFE83E741446B89111D88AE8BCB4108204B58DFED18D3531C10C769C23237258790E00E2E61BA1DE78E6152B02C18CF24C9F7311656DAD09A36082008164F0D78A2B184D40DA449FA73F104A66CA9621D9D7DF1C83D95639F1EE612AF247A6A51AEEA43DB6150B0E3802B6B5593BD7A3A49C6192E55EA1FF945AA43197B9D99903CF07CD23E816A3349DC0FF8686B08AC352293EC62BC95DA3F83AB8727360FF77397AC12ACE454EF5A602E3B311502C6810485FA990A84C9F93D9427F81ABDEBA781370217256632BDD708FA2353A9AC12B010F6E300D9A0669EE3E3A4FEA068D7836110693E75C089B7E24C06CECAB0107977E51CBC5F9F0765B13D0C61B38219276341D324C7D1867D5B24160BED15FC66B99331C0A3524966AB0F0367EA3E9E8AEBE392ECC76E8B044F7923E1B7F3B9B6811AD97887E8B729A2C7C8DC89FB571A5310235F91448705571720DE16DEC3EC3DC938A55FE1CD10DB9EA131A8890E1701E87218552AA5216A4017864E84468ECEE94D041992688DDDA22CCEE21CEB0E22CCE8973E190BFE0451D2725BF7BD226F0D194B2CAC39096F7EBF2173B3E1E47815E25B9BE59F01661A2AC1D77B9E3B9EEBF3B97991F93C44CD33CAE70B7754EB2EC280CAD57C809E4F172EF84CD45BFC0E7D7E071FF3EFD0E777F031FF0E7D7EBF627E469F814148B95AEAED1DC646510DD09CBCDB415DDE1A38BCA82DE184FB7B91A045F3E596C8E21BB36980EC11254CC9E44907061322710B9799D2AEED6CD4222931A9178CD26BA51C4588CCCCDD31954C6DD6AE25F582B80423C2357DA5C645B48C1BF1B2937840A4B0EC0970E08865DA890604F14EF839332683F641A2FA121A41C861E3646DCCAD66849ADA362E6AD62DA73610710ED54DB20A2D8C3AE70D655AD0515B08A1664F53734A3A36CF99561D08FB54DB04A307F0437A905F641E0C6C3BE4E86286863C023AC315297B888CD4429E3832C9461269AF8061593B1ECBDE157F3BB14D490002273D7A0CDB3C843D6B5B011FC106C286F4D78A296A1209C41811810AA674E79D7C8763D28465A0B853E800BA2DE58A42333D208AA79C45CE33D501F26A23CACE3601EE20527BC00C66A46D2B2432588AB44124A3217874F30C863846059C9952B6E8FD9BFC16223083DA7964871E52FCCC0DC9BD1CC98885A11035AC49020DCA00805298EF36BD91C6200030ECBDB678409D60372038F06D577F05E859032887E954350E726696B80E9425AC59D9A09099E0E0C5A020196289C40378C1D81A240F0412D1F19E8F4FEACF51EF0EF54C6C63F345E06F82D36D02F6A9FD563B22105B6847D8244991B5A969F802FC508F51DB297A081AED4268700B5CA7E226250E888E783014A544894B56048A55BB4CD47B80BFA89266949932C73DCDA0443DC31465A86F4FB2119FFB28730F01891A4B9882E8F975DDDA0F778C074CB88541F80F49D8445A450864586E63DE4B4677581B6028809597D678DEFEF42E45191E414D7807DEDF15B0F92C816FD7FD5B19CDE0D2D1001795A53B8AB23081A76EAC598E37DAB5FAFDED9E47A1CEF1B41FD5EDAB37F776CD7C91BE94BE0D8FB64FF2F956655A66079D7668D8D6EDC203C97B16AAD6778DEAC4FA8A5E3BC92F65693AE20AD45F82791F4B349F8CACB177B3F7503C89CBD25C9B2B15473183501340DAE7EA6390FDB0008AA87ADD10BA598BD5D648C9EA23915524BC1ABD43DC63903E7C78377858087BA915A9C695B6DE7600B37996F3542AE417194B3C669FD76518D953BAD10A48D2200A459506AA96834279127F91041DF1789D09AD2980FD5AC7E60565C24AC12EED0E95A8D3042015528DB2A98C6AB763FFECC16E596F2E4AAB53606EA3B6ECE9DAA1C1EAD4561E9CC087C25014DA81F2EBB962CEE0815BB5208007A80BC1457527F586A50056F45A0AC042C432153D672140C35B47C203C43D7B8C24D172B92B719C7B7B8AA77B8A80A35EC018CEC8CDC089497E4B0440D7F28B3FF484608138C07400F82A5F524498B0CF6A065108B41FA32633A59E2409E49A30575CCA69EF1A7E4A9A6EC54C7675B316C03697C7D8380157772A02199EA243134F9885E4280E35D440CA2EF3C1B18B3A5549746045B824F8255408AC413987F86C92084E55F69E957AA0AC45BC65B141918824920B470A36149FE00251E898245A87D6D91ACC8E82AEDE269CDBA100A828FE6E7E085AB43DE7ADF923787CC497CF377CC01660E45B7879A10874E60AD15FF8F2DBFBEF08637E83983780B9E8A2EDB87F44975FD862DEC0459DBE17A8BD90E40D5F7EBFF2016364908B23E67C85985F97CE3FE30B92A0A3BF06C44584D8C07BBA585F220C598DC296E4ACE492F7488D6E6587CDD81044478924943D1E84A728A552E925C07FE234D452B72CD00405A24A58851F2082F44A14F1D2B61A14B77F019F10690E255B99BD0AC5880334BA6B7919521E92BFFA9C70050F9700E798581F9655C5C7FB9958BE404B3076207B687FE2125D94808E338001E60181EF3000654EC850FFD5E1C047CF9E4D82F22FF02397749B29BDC04F0118A016CB0266828249A9259822AC02C92579B4E19C5467425B64B5397BD51B420F18F3C219B53D3C1A2F1B58167A582262615C8853CE65BE763C605E33B5A76F53CAB3B1F1EC2651B8E324E9F80FF2D851A20DB807202F75CB75BE87EAA2D937F0544DAF910864240016250ECA9ED917182022C2A1F1C47366C52580A899E00AF8819C1A54F6741CEC25573FF126F498E07709A0F71DBD6E8B23B36FF3656A8B84CC43BC1156A20C66AADB7F44D5807344094810278BDC49A5449C1D35BC8BFA5971970D7A95089A0D0BBA10EFA26690F0E90C2CB86038F216A12A8DDC25DD5DB068928C507320255CBF51C252D1119792B7D526FB847E3795AC1A232068E4AA83C377A27ADCB323990295A23641E78B36804B0142FC8F9ACD4894FD5F6836F3A6CDFE5BCD66FE7DC7E8B36633FFBE63F4F98AF9878E11B17ADB883AD313B4498FFF8B7238386811E082F32279A7CCD8685A5BA122AEE0A60DB030FF4AB064164AA4DD819C408DD01BB3CE9DD5F4512A2D4708BB0276F1B159107EA99C0C8F0EDA964FAE2D9039D641B56B49FB114FE16E1E6471EA578092CC6425E937E442D4710CF252E76A4101F50C8882B3AF919DC75689B2DBF22EEA1A2C7424FC7C346DEE911B7E95D84657B147A07400639BB85FE5DE06C8180B85BA43B6518FB75F7D9E8EB63A6AE810ACA6D845589165036BBC9D9890CC02E7513E0B1AE6D408CA54FF8C1414F7407C24AF6E3F29132D2CC97A2A0A744F651196B3D5148ADDEFB99CC121BD4D840519CA7B980322404C56D5A23DC89FB38E1F2C3ABE7C08CF798A530D4E61A76B696BA726FBA5B2831C16ECF2E0CC9D71A8AC87F8F4D28B8E496813634645B4F67080ADA9D32D448522DC0CE49D9A86EEB229F208E2A9C0F328FDB010905B1B19041D354EDB4404396A5E27A30E250130D5E91B37961149021D35756806D413EC1333AE95409C3270DDD5519628B153C7B920B5005D80DF653F27518964F6117A7C2853D0EE0DC7A91727D7687106320E0DA7724DA052B2B6185CA48606E0938F324F564E311AEB88719904265AED08778A317FE1AA2D506860E344349EA644F054D47C85BCE91821632AA98202417B61D511DDCB9400662AEAF28236126250BB42CC060A7E656ECB179D19682546502241D98A3F4F715C892C74B7D6DA6CE4C0C4A72ECE9D7D8F55802C0DC5BD5EF7BCDFF2DCF05CCEF9DE0B0D547C77B3C45A29B4DF6D637EBFB989EDAC12E6F306A7F9F356EE1F37382BEA9581C2DCB7EEC3CC99437EDEFEFCAE765440A0F41CECD8D1BB6783212DB896CE2D123510F61F2FB21CD69DB4A5FF54932CC046F5285823700335D79E7E4EE872434D6F3E132AA4729AD46EA156C3FD94410439CC5BC72A811037104F64FC21B4373325841AF16A5F190FB051841C64248B75607EE47B9FF7C87A4EBAB124D26A43DEAC8EE0ED80BE1FD210985E67094B994AA969B4052C8570BB5CF871E51849EC183C6A11382C503F4791B1BD5538A18E3F29A59A471D6DD50F68DFE83A320CBAF699C1FEE08095703B283CAD4044C2D31C818C40684565204CB351734AF140734159B9D99FFA6380744FE8926B3A07A8A38503EE87715883CED7CC1CC42F9DF688207376DB112C767062615EE43B12FA5BAD319D2A0A2F460829F8704681604BE44DAF64F7D60E2271869654535EC73FD2682EEB84465D7B19A0BDE86829DEEB0AD8E3A69A4EB0017D4940D567D81D5CF14507654F8568898F21A67490D6632CC817C96CC87554E3016BD7AD62E2DB201EEE75C3CBD3AB2FF42FD38455269CA1B30225AA1133C9AC61216DD8D899544501B34E35620218D4D57892821869859C88AFD91829E3B422F2552F07720D6CD83A781A5B86291A3E6EABAF3A7248F67289E0547A6D3283E24E8479BC2C191C403568B618A8A008CFE927A33001F26D28A6304BAF269E0E6F4678814E98435400D86199B5D63A75027DC30D11B7F027B52330D67CA5CEDE08BF3FF7CEFF8E86993FF7CEFF8E86993FF7CEFF8E86993FF7CEFF8E86993FF7CEFFB071A73603CADFE0B10E2A60FAB6D4E26BE24A283CEA962453BAA7B1327523E355E91322236A3324E0DDA20DB59C90A685DA5F44C8891374C2843454E01D6453B124266128A0610E8046421C9DA42ED025053AAA2815D5813248BE61C06251AC2D348C5841309D37A8E8661D06CBF5A21E721EE2048C7A7030672021A907081543F5894BA463823ADEF017E820CF004C81D3D07D48D9A32C403B19870A02298313E435E3C84967EADA56C99C140895F561D49D96E4CB2B224B4EA67E66DB8A8EC350156FFB87C810B99B21919561C132B9F56900C12DBCCD3A8669283EBE8242E8370AEB514B0B64C464F0618C6D55B051D664ADCE8D422C8149077F9AD0378499429EBA71746A6C7575A5D6F29E7C0EDA7C50522ED5DEBBAF17D244E3F435A85989EA5A42D049673B229852AC4EA6C126F4252F8C0781605AF7A4E86DA2DD2F62B955537E88166A31289F5719BDC1B3B226CB284F9E1564A4C910AE67B391A91027F8296F70211E8A84B6FFD0C23A7FE06AE69E501947FBFA4D873162F6D086A8E88FA675794B3B89845D179B23FC63D621E4ADB38A12ED15A19FD4EEF1320791289082F44E78954D5B8DFBA35E2DA58780C8487D4C01D80C385BCBA511181E235139EBC9EA5EFADE5548B21DC86326B876CB439058129A9618B9F4443913DECF709DA2A3E36A0311E1FB69F86A2307AA129526EF37906FDC62EE19F1F73B8224EE014176AF2B6B13AB48213C04632A60CF066BF10A1EFCF8AE79BD8D142AAAEFFED709F73F2010789C16701DE0FE191A6D1A81E380B97DD92C19445CC50A22373542018EBDEFB964AA3E38B070780744F01394F64E6CB9E8215C260DB8832F3A077C86BE4BA45D664BA9D2B78F48BBF974A3D5CA206328A2253D52591B1C9214EA3B81B8A6EAD88480CF6DA5C4C2CF53689F20CF0DC2E2CBAD5097FA6E75B8665951F4903A266B6AB78962828DBEBD30B4ABE7758648F28127F0A01BC34E3D369EC713B0DE9519557B681375A4AFC73DB90C1F550F698B9488F3FD784527A13F2CA032B8797FE8015D58A336B6744014B9282AA60649D149B6572B0A84531F317EBD627E5D029DE3B92B78E61FF4A437FB7DB396F7A5DCE99AE7D4C397B5BC56F27EE59BB57C598AF9BC967B74A143D81C6A3EEB4802210FC622257ACA8404E3D725DA0D3F18DA57750B0E68E331F873C01ED2F9E497675D2ACCB754826E10C6A3EF105195222087722D23DC3D7D4A7D0DC500BEEA7B8DA76E0E070F80C9D653870E72F0EC80C8DDD421741378B575B81A2DFA5B6898B739B4D47AF4DA9F44ED42896D195EC48B4C41DF2EED6C8CAE83259BC0ECCBAA0780086341515A611B9D5CC27BF5E99D3DCEC3189059844DE05E9DB184A4C1A5960E9428D2FD9B499FEF6CDC30307F8E90BF0A90603E3C888C727FC8A89F13CAFC9C51647C460093FE3ACD051861B034DE604007C02E10BC60C0F4F0D3A5173E7C0803F729263F2FC57C5E8B1A15CFAC7518FE99379086FB01411542A2746A8BDB037E1325006679E4848F060F6D7DA703A1F961911DD8AB18C55E5A4D112BAD8D4B0632519E3DD74763B1E911BD485EF35109F7D0E7EE4EDB5ABB6A5FB8A61D9A4E2268072F52F3BD8EAC2189DAC4A36A2F939956DFE34AE6027DD03708E2284D5F94F1FAC62CB1E496A3205894249A67F63B3D12800C16FF9D2ABF5DC205A9800A40420C7DED0FCADF101F590735552F605A656E8AEAD0893950F744C28FD85C44235A1FDE07C1492BA25A82DAD4A6797DC103BD4764EDACAFC21CA776D6F35568E5F8538AB42FF9FED52FB58A08501DDD9C480C02C4DCAF6BBC9A4C4CE3D7CDE5ED8ED7D72AEE2DCF0DA2EDAFD1D26B347D77FD9F6FFF38DEB70F7C1BCF7C9CDE7F333BF3717AFFCDECCCF9BADC7F393BF393F1FED3D9999F8CF79FCECEFC8D6BFF6676E66F5CFB37B333FF69E0FD74B7F94F03EFA7D999FF262D3EDE6DFE7D5AE88B64F3B2B6DA5636C381068846FD1F169ADB005FD317D01B9A6C550046DDE85BBDAABED63110AA54C8662945F98CADEFC388650F0F8C2CAFF3D2A1587D634CF30D551B8317881C85DFC11328E53B08230145A757A9A0D9327F42F3288E647C5CD686FCD75F77FDF3D760FFAB57227BB11CF3BFDD7F68364356CCF800000006624B4744002F003B00C2E786AA47000000097048597300000B1200000B1201D2DD7EFC0000000774494D4507E8020C110C36783ECC45000011354944415478DAED9D7D545565BEC7BF9B030745DEE32002470FCA4154407C83C672C29B8DD7BA9396C9CAC9D11CEDA6364958779C48EFF5E688636F84153577C6CA595477615D717573C6F22E59E9F205AD08F2159083201A4791173D0A8AFBFE0196293ACFDE9C733867EFEF672D960BD7B337FB3CCFFE9CE7FDF90184104208218410420821841042082184104208218410020090BCFD03C8B26C0190DAFD030019009A019475FF5E02A04C92A4661637CB84DC5C58A1B22CAF9265D9268B5322CBF2E3CC3D9609F9B1D056C9B2DC2CABC726CB7206739265A2F7427B5F761EFC466499E8B6D05E979D0FBF0D5926BA2BB40CD935D898BB2C1367E1E325CF39C345F71DC26F42D53CCE32F14E99525D786FCAA40E0BCBC43B652284321142990821948910CA4408652284502642281321948910CA4408A14C84502642281321948910429908A14C84502642086522C4B9B8E44457599667E0C7133D439D70CBD14EBA4F4FD402B0F155D045999475FF14BBE23459C98902850278A6FB2784EF1AF170B600582549529947C9D45D13BD4F898817922F49D2331E2153F7299CEFB14C8817F32D808CDE36FD7C281221180DA0B8B737F1E98548A9148968887B64595ED527CD3C5996CBBA8D26444BC4499264735BCDD43DE040918816515D3B492A652A06309DF94E344A989AC108B57DA60CE637D130AADE6FC532750F3C703E89689954B7C804D72D2121C4ABE1425742281321948910CA4408A14C84502642281321948910429908A14C84502642086522843211429908A14C8410CA4408652284321142990821948990BEC7D75D7FA8BCE20CCE9EBDC41C272E677246ACB665FABF1DDF636351134B9AB89CB25D7D23139B79845026422813219489104299087139BECC02CF62CC487F449A7C9198300003027C11171788901023FC7C7D603048902409B22CA3B35346DBF9CBA8B1B5A1FDD2551CAD3C8F497745A0E19403C72A2FA0785B1B339332E987A80803EE4E1F803BD3C29194148EA8810314DF232539A2C7FF5F9923E3F4E90BB0D5B6A2FCBB167CF0F1599C77C8CC74CAA41D460CF3C3CC074D98726F2C4243FD5DF6770C0609313181888909C45D13A3F1AF0B64541F6F465959130A8BBEC789539D2C0CCAE49D35D0DC474DB87FDA608486F8F7C933180C1212AC6148B086E191994371F0D059947CD9880D1F9E65015126CF677CB23F16CC33E367770EF2A8E7F2F191909C1481E4A408CC9A79013B779DC69ABC06161865F23C26A4F823EBA9A1481A15E1F9B5E6C00198357318A6FC530CDE7CFB283ED9DACA02A44C7D4FB4C980DC5556A48E3679DDB38785F543D66F47A0EDFC77F8FCCB0B2C4C35353EB3A0F718FD24643F39105B374FF44A91AE111C6CC44BB963F1A7D7AC881D6860C15226F79236BA1F3EDF3C01F37E9DA099CF949E16850FDF1B8FB98F84B18029937B58B66820FEEBAD092E1DE2EECB5A6AD93349F8D36B561634FB4CAE233040C29FD78FC488C47097DCDF6E77A0B9B91DF527BBFA2E65E52D3DA64B880F44408001B13103D0AF9F2FCCE62097D4525F6C0EC6CA170F62EF37DCDC49999C4852821105AF8F4170B0D169F7ACAB6B4355750BCACA5B146EA0BC39EDBCCC7024C40722C11A0CABD539CD34932900F9AF8EC5DA75155CA644999CC3CFD3FBE3E5B563E06F343845A03D7B1BB1698B1D95B6CB4E7BC62E19BB24B35AFC306BBA096352C37B2D96BFD180552B533132B11AB9F99C93A24CBDE0D1E921F8FDBFA5F4EA1EED1D9D387AF41CFEFC9E0D3B4B2FBAFC992B6D97BB5FFC064C4AEB8F398FC62235D5D4AB2F83CC59C3008042512675FCEAA150FCEED9E45E49B47BF72914FCA5DEA9B5901276965EC4CED24A582D362C59188B891307A9968A42512655CC9ED13B912A2BCF61FDDBD56EA989446BABEC1535B05AEAB17279FC2D579D5328E57068FC364C48F1C7334B47AABAB6B5B50379EB0F62D6FCEF3C46A41BA59ABBF830F2D61F446B6B876AA19E5E10C9178532DD9E94E146BCF9FA38554DA1F28A3358B0E46BAF38DA6C635113162CF91AFB4A4FABBA7ECE63F1983135882F0C65EA99904009AFFE31599548459BAA3177F1E13EEB1BA9ADA59E5C5689A24DD568EF50B6CFC9DF68C0B2AC91B05AFC2813D5B99997575B613205281E6458B5BACCABFB10B9F90D58BBAE42B150C1C146BCB6761465A23A3F65E1AFEE40DA84818A45D2CA8466F1B636CCF9CD7ED8ED0E45D799CD41C8FB431C65225DC40FF6C5130B872BBAC66E7760CE6FF66B6A6540A5ED329664972B166A7246ACAEFB4F94E93AF2D62529EA27B57774E2C5B587BCAA7FE46AA19E5A944099F4CE138FDDA168A1E8B5A69D270E7B3B53A817D71E52D487329902B026673065D22B61C13E58B84059F3AEF0832A5D2CFADC597A116BD75528BA66CA94585D8EEE512600CFFD365651F36E47493DDED8D0A89BFC29DED686CFB6D60AA7F7371AB072793C65D21B91E13E9832453C9E4F5D5D1BB257D4E82E9F5EC83D81CACA73C2E95392233029ADBFAEF248F76BF39E7DDA2C5C2BB57774E2A5BCA36E7BB61953831012E287D49410381C9D3856751EBB4BDBFA6CC023E73F8FA2F0DD09C2F9F5C47C0B76961EA64C7AE08E501F64DC13239C7EFBF67A970F38582D7E58B23016E3C646DEB401F10100D9DDB5E3C79B4FB87DB952A5ED320A3FA8C282F962FDCB6BB593960769D8CCEB66D1FC28E16F59BBDD8117724FB8BC26DA5030169333626FBB93D76C0E42F6D251F8EBDB23DC9E676F6C68445D9DF8C0CBC30F46B1CFA407A6DE67164E5BF8916BFB49568B1F9E5F9EAC683B7C4A72449F1C78F2F166F12F958913075126ADF3E07D41C22F6E5D5D9BCB9B542B97C7AB5A589B9E16E5F655071B8B9A505E714628ADBFD1809CAC68CAA4651E79587C044FC937B15A2C4382555F7BCF24F71FC3FC3FC5F5C269C7A48653262D337CB8D8012376BBC32D1D7D679E76E40E8AB7B509F79DACD6305D4CE2EA52A65FCF0C136E52ED283905D2339F6F17DF6E326BBA89326991BBEF126F166DDA62A735B7E08D0D8DC2EBF6121343289316191A27D63FA9AC3CA7C915E1CEE4E851B15511A2CD6ACAE445449B0CC2BB68BF296BA22DFF80FD07C4220FFA1B0D9ADFEBA43B99FE798A7873834D3CB1A69E2823132993A6481E252693DDEE60134F10D151BD21430678CB47B25026016263C40AF4780DC3518A5255DD22D6C41EE43532BD4F9904108DA5545BCB5094A2DC2AE4CD8D440E0CD0743EE84E26D1C1874347183A4594DDA56279E58CE82194C90B611C227194F42DB53CA2A72B991E9E2636BFA4F41046223E081112E24799B480D12809A56BFCDE413B0865BA1DBEBE124BBC8F8919D48F3269E2C34A94C955880E8F9B4CFE9ACD035D9D0121F96853A6716323F1E947BD5B48DA70EA0276EF3DEB15617028137119C1C1C65EEF87329B83909E16857B279FC1DCC58799A96CE6DD1EF9AACC12FF07A42447A83AA845746589C3D14999B4C0559932890A352F53D956F37EFDC41A39C7AACE53262D70E58A984C2121FEBA17EA5FA6458350A65BB2F780D87A3B6F3B8FC11558ADCA36F3697DDD1D65BA01DBC92BC269F5764E764F8836F5AC163FE175775A1E2DD4DDDABCD6D60EA174A9C98C202ECAC434E6952E656A6969174A37346E00DF0E4112E20385D229395699327901A233F5F1C3426889A84C56B105C4E79ADB299396385E233608A12424A75611DDA73458F034DABABA0B94494BEC3B20BE1DFDE905916E7B2E2581C4DC81E8191833A606090F3EECFFEA1C65D21233A70F4467E755A1B413C6DFE1B6E7FADFBF3578543E899E643B6DAA58C898F68E4ECD6FB8D49D4CE79A3B6030887D6C771E9CB8B1A809459BAA3D228FEAEADA909B2F26F78844B1E1F313B5DA3FA04677326DDF213ECFE16F34B8B5A9979BDF8055ABCB70EEDCA53E6DDE2D7BFEA050DA7999E1C213DCC72AB52F93EE568D1FA868C7C993E7111323369CFB8B29D16E8DAC5EBCAD0DC5DBF663CECC50CCCE8C43509011BEBED20F4BA12E5FEE84C371C5257FBBBCA2495174C47B270F144EFBF7ED76CAA4452A0E3609CB643607F5495CD6C24F9A51F8C9371E9B8793D2FA2325592C0082DDEED0455C5B5D9E4EB4759BB29AE689F916909F32E751F160717A09CBA34B99BEDC7711C76B5A84D35F8B1A4E7EAC95D2D3C4033FEBE5CC76DD9E9BB77B8FB2DAE977D9C369918A9ABABCE28C6ECE6CD7AD4CAF149C466BABF8F216B33948F186392D322F335CB8AF04288B7D4B99BC983D7BBF57947EC1E3565DC466BD6D5F69769C70DABABA365D9D8CAB6B995E7DB30E972E890F3307071BF1DC52FD0E46E4FD214EF8AC76C03D51EA299387D0D874153B77291B694A4F8B72EB44AE2735EF2667888FE0D5D5B5E9EED830DD1FDCFFFBD536E10D833F34751E8BD77C48C9EBB15AFCB06451A2A26B5ECA3BAABB7749F732757602DBBEA853748DBFD180A71625E8A2FF64B5F8A1202F455138987DA5A77531494B997A604D5E03F6EC3D25BC9A1CE88AF3549097A279A172FF63B8A27E527B47275E596FD3E57B4499BA59FC5C15D6BFA5EC2453AD0BF5D7B747283EA5A8F0832ADDC602A64CD7B1B1A809FB4A4F53A86E9194CC27015D13B4EE5C144C993C9C279755C26E77E85628ABC50F5F6C1EA75824BBDD81D5EBAA74FDEE50A61EF8F7D50715470F34990250F8EE04AF1EE59B3135080579298AFA48D7FA496FBD734CB7CD3BCA741BF67C7D0905EF1C517C9DBFD180552B53B12667B0D77DE69CAC683CBF3C59B14800B0658B8D318029D3EDFB4F6AB7913F70FF107CFA51AA57AC34B75AFCB0E9BD2464CE1AA62A1AFA675B6B85B7B853261D939BDF801D25EA166A9ACD4178E58F633CBA96CAC98A46E1BB13148FD85D3FE0A064672E65D239D92B6A505E7146D5B5FE46031EB87F08BEDC9A8E9C2CCF892A312F331C5F6C1EA7BA36BA261283A25126C5CC5D7C58B55040D702D9CC59C3FA5CAA9CAC687CFA512AB2978E52D537A248B78761381508B52667301EB87F48AFA59A3EDD82B2323B0AFFBBDEE5CB6E26A5F5C7C30F4661DCD848A784CAA14894C929BC907B02172E5C41E6AC61BDBA8FBFD180F4B428A4A745C16E77E0784DAB538333CFCB0C476A4A08924685F7AA06BA91A24DD51C6CA04CCE1D943874A40DCF2F4F56DDDFB81E932900265300D2D3A290BDB46BEB42C3A90B7038AEA0ACBCEB9C8ADDA56D37CDE1582D7E3F847249880F4444843FA2070D70C919E9ED1D9D2878E70823B15326E753BCAD0DE5074B91FF7292D35F5EB339E8877B5EDB3F94DD879FD56E77E0C5B58774B90A9C03106EE278FD15FC7276193EDB5AAB78B584B7B0A3A41EF73DF4154562CDE4BE7ED4DF3EB763F9B3C3351386C66E77E0AD778E7155036B26F7B3EBC045FC7276198A36552BDEB5EB49B47774A2685335EE7BE82B8AC49AA9EF07273EFCB811598BCD98387190530628DC25D1EEDDA750F0977ADD2F56A54C1E84EDE41564AFA8C1D0D83A3CBDC8ECB4F91D4A4499743D4091BDA206400D72B2A2F1B33B233DA64F65B73BB0A3E414E78C28937736FF90DF80BBC7F7C7B45F989036C1E4D4C95451814AF7DBF1F7ED768ECE51266D0C54EC3A7002C009DC3DBE3F7E7E5718121343601912ECF4A6606B6B076CB5AD3872A4053BF79CA3409449EB625D04D0D5D4BAB6A221213E10010106C40F0B0100F4EB67B8652DD6DADA819696AEF3D2ABAA5BE07074E258D5F91E574C10CAA41B2A6D9751696B02C0253BDE0AE79908A14C84502642281321E4D6484A2F90653903C00EA5D7D9ED0E5CBAD4C91CEF032223BB46031B1B1D3FF9BD27AEA5F1669C30393E5992A412A517B96D34CFDD939444DD4BA69595EF6CE611429908216A646A66B6118DA3EA1D97D45C24CBB2CCFC265A459224555EA86DE66D6196138DA2FADD562B5331F39C6814D5EFB6A4F64259966D008630EF8986A89524C9E2EE9A09001E67DE138DD1AB775AB54CDD33C4F9CC7FA211F2D5AC7A704A33EFBAE6DEFB00E6B12C8817B35192A45EB7B47A3D69DBFD10D92C0FE2A5643B4324A7C8D42DD4EB00E2006C64D9106FA98D00C475BFBB4E4172F613CAB26C0130034006805096994730BAFBDF6F6FF8BD27BED5703E34032801502C49928DAF05218410420821841042082184104208218410420821C445FC3F6765806127D81E180000000049454E44AE426082,16,16);
INSERT INTO workflow_icon VALUES (6,'AnnulationAdmin','image/png',	0x89504E470D0A1A0A0000000D49484452000000D3000000CC0806000000E9879697000015897A5458745261772070726F66696C6520747970652065786966000078DAAD9BD9751CB19244FF61C598803D0173B09EF33C18F3E726AA48369B6C4AD41B5152B76AC1924B44240099F5BFFFD9E67FF825AE5A1393945C73B6FC8A3556DFF852ECF5EBFA74369EBFCFAF19EE7BEEF37533C67DC373491FBA1FCCEB7EBE713D7DBC20F1BEDE3F5F377237E4CBDDD07DE3ADC1A03D7BBEDCCF95BBA1E0AFEBEEFEB7A9F77B2D3E4CE7FE53EAE9535FBA6E3DFD3B0AC69889F682377E05172C7F177D20E89F18DAF96CDCF13CE44239572A7FA710BEB79D79FFFA64BC2DDFDBCEB6FB89F0D914C6E6FB81FC64A3FBBA4BDFDBEE58E87144EEEDABFF7CE3F8E5F1D783EDF69E65EF75CDAEC58CA5B2B92765EF26CE371EA491785923F323FC497C97F353F9294C71E0B189373B3FC3B8EA3CD6DE2EBAE99ADB6E9DCFE106438C7E79E1D3FBE1C3B95682F8EA47501744FD71DB0B6E98068FF830F05AE0B27F1F8B3BFDD6D3DF70859EA7E349EF680C5F7EFD31DF5DFC979FF786F6D6D075EE18538EAD1897D7D06318EA39FD9BA77088DBB74DD3B1EFF9311F5E7AFFA58E0D78301D331726D86CBF9AE8C97DC456387E0E3C976C34F64A0D27F36E0013D17762302EE0019B5D482E3B2BDE8B73D8B1E09FC6C84901DFF1804BC94F6736BE0921E39CE2B56FDE11779EF5C95F9781161C91420E826B48149C1563227E241662A8A590A24929E524A9A49A5A0E39E6947396AC18D52448942459448A546925945852C9454A29B5B4EA6B00C252CD554C2DB5D6D6E8B4D174E3EDC613AD75DF438F3DF5DCA5975E7B1B84CF88238D3C649451479B7E8649FACF3CC5CC32EB6CCB2D4269C595565EB2CAAAAB6D626D871D77DA79CB2EBBEEF6EEB5DBAB9FBDE69E3CF7B3D7DCED35F5583CCFC987D7B82CF2D684533849EA333CE6A3C3E3A21E5070529FD9E262F4EA39F599AD9EA4481EAFB9A4CE994E3D8607E3723E6DF7EEBB0FCFFDE83793E2AFFCE65F79CEA8EBFE3F3C67D475B7E7BEFAED1BAFCD7618251C076916AA4D6DD8001B0FACD27C69CA495F3EFB0402CB6C65F1AD0C69B2AAE4EA13E1136B9DDD3561BCD52C2B2BA4557882FC07D8DADCA94611926DD59DF3D8750C2721742B69381F187C8B12A6B42D74B6FD6ABE4F9374F85996B6D0521D3D3437435EA9DA1C41B8B8469A60744ED1EE314ADB214F9C35FA9A3EAFB9A624DB6335793689444BAC387CDA6517B6C3AD094076C9BF9EF3D3A779BFB06398B62F5B77A1935164ACDD5D4CD9B91A5375AEED4C1CF6412C0D8DE51256233867EE39EC05F8CF3EB26C26985AD860DF02B3F593A064508B784B79ED52F67013B394E417AE9B69C755C1A9007B14D74D0BD955CD9D81F9AC106F614DA293CC61763AC1BFFB3474CA5004A6D8A49466D02E218F9E6ACF25F6DC5C63CC2DD610B77703313325B7DDEC6E92E09E3A2C56E9CDACB897ABB8BE420076117182F3F76884B11AAF0FC2330429B18D3EA25B36F7DD9961F3B16FFCEB722FA52D63E97028C1E71C572099A094CAD3A2C135D398C007145301ECE5A3DAAE5B624B6DD85485D95DAAFACEFC9573096A7D35CBDC96644E6DE61664B7B99AC3A92B4FB27FBA3C17A195834506127344B5F27396B288DF6821E2E4FB2A75CF8A5F57E44DEFB4E1B6A615F2CBEF881A596BAAF19162C9CE0C6A74CCB963ED6506A1851C49FC5467040C4E5804AB34B056A86D17011B66701D16E1ADE4A6AF0B2AE30552B1E7911544DD40B3A5B142CFE2924690A8B543D7E6304C5A20E0EEB64DDA3058346306458E3F6603AA08BF96C428B6CB6987594FB60F200DEEF76BC1F515A0645A1DA4060FBC306E92D163972169333B577CEE75A636161640258F8DD0AC3960B2D5A2012B4F9E6223297DBAB4E6D6A1DB014E0CD92829C857AF00440BA15672EE53B3AB642281A9017D44B559A36E3B3ACEA8155CC6097DA86F12B497B206E28EA0F1087DB93011518C35C58A0B42812CC805A5B3520CD60FA9074D19907E3B7BDA1C522AAD0DD771D442FF912444FA768128628AB42A338508FAC7C41F800D4779DA20732DB81601F43D78332C9714F88E87C8212CC6B41A861A74406A4CF7D900E693052C14A1D0944F0A7C6B0DD29029ACCE4BE0672A3442FA367436B3B9BB7EEF98987DEAFAC9F2CFBDF28679EE96A47CEAF888D38FAE1F7A7E9CB4793DEBAF93FE26E1DED3CDD05E7FDD007924981DEFB73E34B3705F05B505A5A8E4D2C91849C1F96A5C579AB7886E5081B721A33704FD21B34E62ED2E049DE5B1B0BB218D01C349DC083148084EF1442491D1476DC4E5112429865E2973F612C56688E24A01AEDC53319F3DA1B75E981F42F18C553ACC4AF285861C691324AF70362544CCD363325295041CD42A0E99E286CD19AD0EE680E94CC247655726323DC45AD70864B4543FD7029667F5E091674489FEA5AA81DCC05029B5031EC453D564AF8B606178913180D0525D46A3914603CD060A2C1A37904BDA04C65CB683784824184EA0394194A1B750DB20C36828B3EC95F4A88E0398845F66524E81C5C0A9623C919770AAA41E7DEB610D0B637B15789EA2CE4E5A540D08B308A49610560797DD8DCF6F9FE6F9C2BF7E7E3494962880229272A5F2DEAA557C82C4A05AD5389500E251041017836F586A2258E14F1520DE20C5E4387D2336F7245D465314A1587D3338018357958C539E1868F50BA5E0F3E57DEFC8C2485143233E61207B31D538B98CF14F73A3BC37F7874FF3B70FBEFCBC67641EA7049CFEF344CDE799FE71A204FF8471119DBD470AED45D78BD68241819267BCE71B109F3214176424E5B14C0E00F4B6179F9C6AFC407C87829C2A17A8215915EFE862C931B63B798C48F4E380C6AEB6285810F52046CE886D19BB8FE109DC0EDE8411602EBFC5C539D29E8CDCA4F32A345C2F3863523CBA070C3772F9E11E2883D968A5A10B10EC69AFB64837AC0AE066696774C3CF7141482395B09402DC0A0AE5DFDF49E6A85677B7CB8C5B8771B118FA8EACEFC78720C601F6E2B6E0A182402C37C2BFDF310FB7B0ADE6C0CEE897B5DCDB5019DFC760DF06740F4721EB1AAA79752BBD18AA0AC18FC17E0CD5C851613A24FE3EE3FD3C8F8F7B2F067C0FD7FCAB719F076CFED5B8CFB635FF6ADCE73BE65F8DFB6C5BF3AFC67DB6ADF957E33EDBD6BC3661AAE8BBED7C0C88DC195AEAA36407B7670AFD1153DAD4676804143EC5ADD9C813DA44EA7986037A909114E865AA197D92941144FCDD66A2CEA5C8DC9E3A59156C2D7178544AA4E41341F9C7B55B438C3081B98ED7E44CCD375DC7F8EEFA4E489CF11937CDDF30C41F711394340A930F28A983E82ACB77FE006D6071A1546ABB44EA8A1E758501663DDAA936C668B27F7D7343FC930BD44BD0BDBB8BD8D2BFA314F36F1C44E5CE9CE9D37B5D5FD0389A54AC2AE56C4D2A074F45A1A21F41DF41E106A852E75A4AB08EC4C20EBA400067954A453B9CFAA92B9518517B7CA5B6C76B88592ACB8582771FC5E9B31BCCB31F4EC9FCAD2BC94A752606EDFEAB4BCC3586F5EEBC8F687185EC68616526711CF085A38EB2BEEF9867FAAA11BD2C6B48DC04DC257A7439FBA19EEC128657D9BEF3A4507249E709B0A176C39EBE35A76A9B2757CB925A83D64E798C8E9DB1ECD850C24B45A59DBC8FF9A90298864757CBA63AD21535E89A2AB4882D11D7595DB1406C8F6CA72E94A8BE2C882C17894CB855052E629DDC9A6EA16B7D48124D7690AE26F0ACD5AE387722D99162E4E0A9B63CFA78A898D6A152CB256A3E4F296F3DC93F1D45CDC4982919A00537503DA2FD628A4D10759E3C773BA310408BA07F52F2B5F796D566A9A19E296F44280CB69F9D7A39475D64196396C5237164FA5F037442DC472C547A1DE488F7940033108F29544A5E04776A511795987866DC03E5DFEAAA8DCE569EA926C18C7386530A8F1E19EC2C6D04228C8993B673BB51436A024255CB1C542C6F47356302C2DF462D3F84A93204C0475ADD6E27E4EA6CBA9E22B613738E900280BADE44F50B5E150077FB1A2DF51AC2BE117849BC422046CAAB8E8AE821A3BAD8594AC99E673303CBF98AABE8FAC77216D121835AE44426053C38BDD0D9FDD241048DEBDFE4F8438A633B5019ADDDB4EC1A068753E06CC204CFC78B9086745D52500AC25DDF5EA5EC9225147DB65E8ADF6879D12121ABAB56D8C4DE29B3755D29E17AD1682A0A2CADE772F2FDA09F8E3CF553DC54076553B4A0E57AFC3402E1798216F0540AAB5447E226741AE255350E4A250CF1860AD4E328B636D2AB9BAB338CA417320523517E412426FDA860A8048BE6083A3BEA8A888F9D2ACD11FB25EEA6CB2430E024FC7401BD4A0C8E593A68B325CF6F6A76B28A02D505A42971364C77C1E6A84B23B855E1D6E92AABA3346A6928AB0AF99D7BF6E4B22E0142DE432C4138478CDD8F385C4D851471C8F45503385A28C18B5AA2521EA7AAA6B6875EB35E146F670C57D62BEB92F5EEEC7E0E81FF4640432AC733274D8719A8443DD5F090055763184D190AFA96A95129325713722B4F72BC48A45C5B59F74E4B2E8651ECAA053EF6206D6D82C101272056FAA4D8889DE4C97BE6D966BD8A77A2749DC25D57FDC84B66BE9C59139043DD47CA7447AC32D2081D465D6F05148ACB60424F450B785EE1454DDA8DE191101E485C28981682A9C0672A84BB2E09B4E8C881D5A0D3315C44D22C5D02AA45B9FC7CDFBAEA45CA825D8498F6B86B083E0763C7E890104DABA97D21E8F8A3EB3CD4DC05A26B758613692449525E24F0FADC73C744A98ECB8353FF1800D47A86451C076696FD18117506986033FA87053A55BC6889D642814FF07E452900E06D968B5D064CDBBE217458E74AF73FF0B9BE338E429994EB7F22F52FA5E9F705ABF991D8DFD4D5E1745DC17ECDE9E64D9F3D52BAF6953F8F603D09B24F7CAE35A7F99ED05F94A33FF0F9E71576CCB549C8325B9C7E49ECAECFEC671E937256B664C0407793A01072BEF5440CF6D435C88CAE34E1397425C93F7CD6A5382A6937A10838931789A2E596EECCB7E86D654AB524D8B39693B30583446084A09A50149573AEE0360A3A046A7B885D0542CF8A0DD8185801DFFC216818259401640AD0029359CC584D40E1F689DE00CC48C8DA450ABD59DD12AE0E522B63925BF0A86E8328A5214798802EC9A95C50890264A0FCE150A7FB5848020AF0A1495B8F5CC86E217DDAB43075CB030AC96B418C013502BAD4DC36FC9DA1425803188963730792A38AC0CF800084AD0B05B70AEE35C253DFEC707C2E3BCC63DDA1FEBE78F3156D2E2446DFBAFB77360A7DD6B892A36A7F5D8734225917ED9E1670CC4BF5FA588A7C972A1F65C8097AD3BE8CE36B927C2A46B4A3BBDEB839F7D41B266931F2E2E6DF1523283649C50C023C29DA517F4EE0B7B45C4366D0B5EAB91254A057D087BEA101DD16A1A69C6BB600A59115C511B514AFC378E21FFE9B364FA75BE9634519BA1345815BA83EC934EC8B6EB394B3C84B1A8013A8A21034F8EF3040ECB59984E6AA049AD4498E124FC457E84A02FE28CF0152ADA0F0DA32D4925D46E211B0BDE816AE6ECDCD44A14AAE55DD32A1F75902F99386DED0609DE4AA255FD0EF2B78F202F3EB9A1A8A715BDD3323661D41A5CBD276A1469CE60B10E01BA45AF2F7E9ED55FFC1678122BB2F25B843E84A13BAAE1E2845A3E6455543D4593BA27990DC8BD2B7177A3E6B6FA21B902B44ABFBB051852B02282520BA77F4310C9974BF5FCB04FB4918F4230C6E4EBF28BDE7AF949E35111BBA44F102632B35236481973C00D1ACB2873121BA90C98DF7F92D1E150FAB36C5BA4ACC136595A264862BA270A9292FF3F977E96C5EE7F3EFD2D9BCCEE7DFA5B3799DCFBF4B67F33A9F7F97CEE64B3ECF813E9F645CA6028C3DA928B5712C105DB7DD49212445861E6107C6DF0A99463D63D22C6375643AA4371A614B312BBAB585EF48706233BA74895EAA1C5DA255A9E574D7D93B3D0832A153B2C04434A7D5E311743E377180342A3C0D6FC4A57BC54C08C175EADCA2BBE608B59006BA23EB0E27294A56C0E886E9CF0D405030C3AF4AB5024F436D400DC3D1B0E6CD8E0216D5CC5055D4C31E149944AF672830AA0A6ED3C7D6D1F8E0325661B65B5A2602512F28F246E1B9C87A7046D7DE72CD969E7C0C441A754A12915BDF9B23F049A52F027F78D0880ABD83298A5C20156E44F511F6B1EA3A414798D5052E1101DEF8A44BF016220EA864C2A553BD93794BD5BAEB4E8FD574FC758E75119F8DBA32398CE91841C29013FB0EA6A65B60AAA42740A5F6F7582430C91D8E2A452D3482772254B840D2FB2ABA4ED00A3229D9A47319D30F6B80B14593753150E69708EB44104857301D475D531165D13D41A20601A7040FFB2FB5244017D0B9C0ACD10DCB9BD9F5C0C18FAB563F895CF39B55AB9F16ADCC6F56AD7E5AB432BF59B5FA69D1CAFC66D5EA27916B5EAC5AFDFAD3FCA4C27E83DAE62715F61BD4363FA9B01F51BB8D5D726A6592CA613BA32784C9952EBE52FC6FF434DA797B12238A0D7394E342381F178266EB6179985B197A9E7A1C2C1B1E22E8759103C19BBAA596D40CD6539ABA4C5821CB734007F3B57A6FA69D91EDA1617650A3BBB00DE5E146F2EBF75EF4AB20873D5F411A7088D8A09E0FB1A268625FD759094B9ED2E6A7A6CD47DB6EFFA9D7ABA7874EF51571C4956E67B4A956ACFBC7FEFEDC9DF99BFE302EC0A327CB5695FBB800A1726C476C25AF4C6B655E10B1EB29736DA39DFBE6D77B1B79021C6F7182E31EBF1A956EE42360B1FA75F66A31C47D1DE6D0530B27E472D463075B3721FB7526C16B9CE93ECE7DC73CDD42292BA36DE07CAF141FBEF24E1AB2D183BA50728AFAC100F7A9B7815A32BF6FB06EEAE2986ED5C875D423E9C25B79798772304E3D4532926A8959CCFB77DEB9D446B072BB92E4BC9CA91AE43B673EB8D27C7BE3AF1C69EDE54ABAC699E63EFF84371943773B053D42D803047B2D150EA753A13354758AEA4B324E0FDA94774FAAE80421E15B51BB2AED7CE951CF6D3E98148BB6EFED667E67D2D71635BF33E96B8B9ADF99F4C3A2E4C79D00D7DEA01AFBCE808FDCB86E3DDC799D19EF8961EECC78CB8BB7ACB823FFDA9AEF7A3EEB0AFC4555A6384C69A46B18737A8A97E0633423AF594AAA2E9E23061E549C220FF35404D7FF6D22BAC0A1DB7C29B9BA113D7A9E39F8E56DCD2842139AA7849CE8949EDCA5B9DDDAEFEBC691DFA2670FCFF2C8747EEB315A441F8556BE0EA9049B7C2C5447A18673A8151148ADB65499DE4C82DA04643352494FEC2C7D7E9EFF3AA2E760839E6EA9E7689F16A5064B2E1FE6394D8BAC6AB365414F22D5500855CF54861C89198519CB58218CA8BC1766874D4BA2BA5221B00CF62A71E90611E5B6364330E9DE2C156D06A4C461B20C0B0458F6FC9700A7559628D3D5B9C822FEA9B587197A12EF3ED255D28083ED3955E5ABA6BF7B7B1455F2E5A6BD6E03803C60B490896F6DFDE1E19F3A33D7C03EDAFAD77199ABAFFF7E5CC63D18ECBF199779ECEBBF199779EAED9FC765BEF6F56FE332DFF6F60FE332AFFAFAEDB8CC0FBDFD6A5CE6E7BEFE7E5CE6E7C07F6F6B9FD3F67BBBD066D6CA14A02CABEA7F7EAAA2FF9FCDF8EDD1D0DD021AE7A8E702BC286AA8ABDDA0FEB428C1B9F5D016052F8A34538F373D1251F2B25A2B5A572210217AD4D3EA768BD753E78D8A0FC9A1B04751A8CA31F44001E9C7185729BC1AE5B1D505B9A793F5E63747F07FFAFC6543D80DCE33FF07EF138E17DF34C11100000006624B4744002F003B00C2E786AA47000000097048597300000B1200000B1201D2DD7EFC0000000774494D4507E8020C110938E2F11507000009CB4944415478DAEDDDED6F55F501C0F1EF29AD9D94D25B903E535A972965938251E3668046D43D98652ECB96C5171B2F96BD58F6425FED2D7F82BCD88B2DD986C936B3C42C98A81345874FC832C5960953D452B01568015BA0850DDADF5E9CDB818C29BDF79C736F6FBF9FE4E65A28C7D3F33BDF7BCE3DF7F41C902449922449922449922449922400A2F9FE038410BA8075F907401F300EF4E7BFDE0DF4475134EE703B26FADFC1CA8510B6861086C2F5DB1D42D8E2D2734C7479D0B68610C643E18642087D2E49C764A10FDAF6901C5F111D93053B688F85E4F96AE8982CB841EB0BE91872E93A2649A99A27F3F9504AD35DE52B61C1B63826F333A675294EDB980AD3E598CCCF982463928C49923149C62419932463928C493226C998241993644C923149C624C9982463928C49923149C94AE58AAE218487B87C45CF5C0293EC4D683AD77204187255581063D29F7FEC48E36AB2518201E58047F28F06D73595B9A780AD5114F597554CF92DD17623D23CB42D8AA247CA22A6FC55387FE798681E1B00FA8ADDF5AB3224895E6047B113A92A22A47586A40AB22984B0B524BB792184FE7CD15225E98EA26828B32D53FE808321A91215BC758A0A8C6907F01D97BB2A54632107230A7DCFD4E7F256052B68FD9E734CF9030F7E9EA44AB62E939848EF1412695EF34457C9982463928C49923149C6241993644C928C493226C998241993644C923149C624C9982463928C49322649C624955E7566FFA781013875D225AEF4DDBBB9C2637A61276CFB8503ADF47D14DCCD937CCF24C9982463928C49322649C6241993644C9231493226C998246392644C923149C62419932463928C493226C998241993644C9231493226291DD52E82042D6E8A9F1B5BE2E7B3A7E1D2BF616AB4FCE6B5A61E2E9E75CC8CA90C57CC8ED570D73DD0DA062DAD505D0DA74EC1B111D8F30A1C7ABDF4F3B9E216E8E886E52BA0B61626C6E1F429183A589EC11BD302D3BE167AD6C203DF80B5BDB06C39D4D54155155CB800A3A370CBADF0442DFCE3A5D2CDE717EF86EF3F0CAB7B604513544570EE1C8C8CC0FE01D8F3327C7C18CE0C3BA6C65402DD77C2C6CD70DF03B07E3DD42D81458B208AE2BF5FB204EAEB61491D4455F0474A13D4EA0DF0939FC1868D90CBC55B25809919E85903EB6F8F237BED65786B2F8CEC776C8D29E39036DD075FFF66BC32D6D55DFBFB6A6BA1B905366E8CBFCE3AA8D51BE0A73F87FB1F808686CBA1431C7E43431CFCD2A5D0DC0C1D9DF074351CDDE7181B5346EF916E5B1FEFDA7D5648A50EEACA9072B9FFFF7D5555B07C39DC7127D47E01C63F81E7C6E1F4A0636D4C29EB580D7D9B61DDFACF0FA954415D6F48B3A228DE42F5F4C0B18FE1C07E6332A6942DED80BEFBF3EF91EAE6F66FB30A6AAE215D19546323DCFD55F8F00338FC4F0F48CC811FDACE55FD32E8EA86C665F1EED15C5D19D4C35BE0B67BCB23A42B835AB62CDE7DBDB5D7F176CB94A29B9A6165E7DCB74A596CA18A0DE9CAF96B6D85E636C7DB985234330D8BAA3F7D54AC1C824A2AA4D903120D0DD0D41C9FD5E107BAC6948AE919B8F82F0833C54F2BA9A0920CE9BF2F1A33307D092E9E77CC8D292513A7617010D6AE83E6DAC2DE372519541A2185005353303EEE781B538A3E390EEFBD0B4786E243C97575A5DBE54B2BA4F17138F41E0C1FF16458634AD1D428BCF27C7C426BFD52E8EA82C58BB30F2ACD900E1E807D6FC1E1F71C6F634AD9D82178F2F7F1E938DF7A1056651C54DA21BDB80BFEB2C30F6D8D2923C70FC29F1E8FFF3BCBA0D20E69D70BF0F493F1CF2763AAD8A00CC9980C2A81A09E6F826F7FD7908CC9A08A0A6A531F7CF92B70F3CDF187A98694B62E63AAD4A05A5BE34775B5216563BB31556A50D5090E9321A5C6B3C6D30AEAD967E20F76A7A6E215B81C18923119942119934195475086644C066548C6A4F208CA908CC9A00CC998541E411992312DB8A0CE9F4F3EA8106062C2908C690105F5FC4E38711C2E5D4A76FAD3D370EA24BCB1C7908C698138772E9D5DBD288AAF79DEDE012B5A5CCE19F274A2ACB5AC8107BF179FBCDAD60E3535C94E7FD1A2F8BA77F7DC136FA54A75B300635226216DBE2F3E0B3C972BFEBCBD6BB9E186D2DE2CC0989469488D8DE98434ABD477DF302655444806654C866450C6A4F20CC9A08CC9900CCA98549E21199431199241199321251FD2C58BF1D9123535E5773B1B19D3BC09E9CC041C38104F73656769AE6D2E639AF7214D4CC4677FFF613B7C6D6369AE6D2E63AA98907EFD4B38B81B3E3A1CFFB94119932115111294EE660132A68A0A69964119534559DA019B1FCC3EA42C839A998E8F20BEFBAAE36D4C296AEB86DE5EE859937D48590575C75D70F4288C8E78D3B3EBE46FDA1614D34AF8D22DC9FE3ED25C42BA3AA8A42FD2525B0BED6DB0BA079ADA1D6F634AD1E2BA64B602C5849476508BEBA0B3D35F7D37A614D5D4C777A5288790D20C2A8AE25F819731A5E6E25938FE318C8DC5D75828754869051542FE14A619C7DC98523476024646E0FC547984944650535370F4088C1E77BC8D2945470FC0DED76178B8B0AD531A212519D4EC852C0707E1E431C7FB3A7968BCD05DBD37F7C2AD6B606903B4B7435555E943BA3A2828ECB0F9E424F4EF83179EF5B0B83165E0E430ECFB3BAC5A155F5AEBA69B3EFF0D7B1621151BD4E4240C0CC02B2FC3F0FB8EB33165606A14DE7831DE325D380FB7DF012B57C6415DBDC2CECCC0D933B06B573621151AD4E4240CF4C3CE67E32DEFD4A8E36C4C1939330C3BFF0CC746E2F74F1B37C59725AEBFE2F0F9850BF11D29F6BC06BFF95576217D565037DE7879B73484F87AE793E7E0EDB7E1A55DF0EA5FE1C3BD8EAF319520A8BF4DC0E1F7E1E03B70E7DDD0D101B9468880D151383C084F3D09875E2FCD3CCE0615026CD8046D6D71F03333F1018AB1B178DE9F7B063E781746F63BAEC654C2031223FBE3C73BFDD09083DC7298BE042747E19331183B54DA793C7E109EF82D0C7E08AD6DD0D2121F891C1B8313C7A0FF4D38F67EFCB3C898CAC2D17DF1734D7DF9AD9863876067FE5077FD8AF8F9ECD8E517041953D96EADCA79BE4E1B4FD2FCD0563226C998246392644C923149C62419932463928C49322649C6241993644C9231493226C9982463928C495211B2BB06C48FB6C00F7EE8122F85E6E6F8F9C4894F7F7D2DB3DFA3328EA9A9C9A55D6A9D9DC97C8FDCCD938C49AAD098C65D6CAA7005ADE305DD98358424EE402C95A7282AEC86C585EEE63DE52257852A78DD2E34A61D2E7355A882D7EDA8D07F1842180256B9EC55418E4451D495F59609608BCB5E15A6A875BAE098A228DA0D6C73F9AB426CCBAFD3058B8A9D8310C276E0C78E85E6B1C7A3282A7A4FABE80F6DF333F1A8E3A179EAD124424A24A67C508F01DDC0E38E8DE6CBD608E8CEAFBB8988929EC3104217F010D007E41CB3B2D09B7F1EB8EAEB6B19A8E0E5300EEC0676445134E46A214992244992244992244992242925FF0110814C6D735846220000000049454E44AE426082,16,16);
INSERT INTO workflow_icon VALUES (7,'Notification','image/png',	0x89504E470D0A1A0A0000000D49484452000000300000003008060000005702F987000006D549444154789CED995B6F1BC715C77F33B3BBBC9914255217CB94253B961D5F52C1B01DC7411E0AA3017A79E8533F4C3F415EFA19F2D6A7BE14050A3FD4401B20B013BB0E5AC1D728B6258AB16C4AA26851A4C4DD9D993C2C4951B268396D2ACB85FE00012E7666CEF9EFF99F336776E1000738C03B0DB1CBF57E856DFFD9E2B010EF86FFD676FCDF42200E3874B1DBA71040086CB42F00E24AA94F0B85C249A594B6D6EECB500821ACD65A954AA56FB5D67F03361C2104D65AA750289CFCFAAB9B9F259229692D48B9BF3818631102D61B7573F9A32BBF9F9B9BFBBB1002A775DF1A94965E4A653219F9563DDD05CD1061509A96D4DB0430468BE9A7557B3C74399C75897B0ED65AAC85B795DB6DDB420836FC90856AC093F9AA3546773CEA10D0063602C3DC6293D26283F1E12463B904526E66F55EF168DB932222515C5A67EE45038D62233068B339B64340C948F7AE23D968064CCFAD32575EE774E110F98C172DBC07D1E8B6B1B4EAF3A0B4C6CBF580842B89C75CA414A82E913BDD93E3AE22E6481C1C923178590FF8E2DE32855C9C73E3195231F53F23B22917A8373577E756292D6F908A2972873C24A01C49DC555BE66D21107305314F10221052908AC5A93735F34B1BCCBE6870F6689A336369A414B4F792FF9648F73AC658EECFD7B857ACA194E4482E4E2A263116ACB1389EC077B71AEC109052B6C22340898E677D498774E210E56A93DB33551E94D6F8F0643FE38309008C8DB4FA9FA07BEEDCE23AB7BE5D616D3D647C28C950368614A08D4509408092022905526E6A684B041C018E142045A7ADB0447C0AF904837D1E8F171AFCE5D6732686927C727A80FE43EE8F26D21E2B05ACAC057CF9A0C26CB9C1582EC1C5C92C3157A1B5C1D2F28728528E1438DB6C6C21A0A4C09102DB45A00D6B2D7157313591A1908BF3EFD9553EBF5EE4D2892C1FBDDF8FE7C88EA15EB26ADF9302FCD0F0D5C3156E7F57259B72B972B29F5CDA233416636DA4846D739DB6427A11909D10BD4A401045435B4B3EE371F567799EBE6870F3D10ADF3CA9F28BA921CE8DA7232DB713B26DBCE540DBF6DD628DEBFF2AD30C2C9726B31C1B4E460D4E6BB7758478A5216B7707DB3B845722A0A4C0EC40A01BA645687234C5B1E124B767AAFCF18B22EF8D24F9D5C5C31C198847E35A192A854008F8BEB2C1B57F2EF0F87983F3C7FBB93499C55182505B4CCB7E2F58BBE9DF8E04247492783702DD0BFAA1A119041472319A21FCE1CF8FF9F8FD017E73618864ABEC369A9ABFDE2973E361851323C9686C10B4A4223166F76AD6B627A5A0BBD7796309C1A68C04E0BA92F9C53A37EF2F914EB9FCF2C261D24997FBC51AD7BE2973F35185DF7D3C0AC09F6E3CC35592DF7E38C299A3696A8D802FEF2F72EDF633AE9CC933369822084C67ED9DFAF9379290F39A248E16B12825B1D632FD64859967AB9C1BEFE3EC44166B418786A9890CA74653FCE3EE329F5F2F0270F5833C3F3F9723EE29367C4D3AE1F2EB8BA3DC9BAD72EBD1122B359F0F26B20821D0DAF4B0BDE95F4F02BD73206AEA3CD76175DDE7CECC32EB7EC8D5A91146B209FCD080B5384AE28706D7899EF6D4B10C001383491ABEC60F0D4EEB0180E0FC7B031CCE25B833B3C48DFB3E17267364121E7EA85B92DAF461D71C4046C9D62DA1289C1681C45182D2529D7BB32B0CA4637C727608CF7508428D942090D19E81C062A9FB9A422EDAECEABE460A70956CC9241A1368C3487F924FCF8F32FDA4C2D70FCA9C9DE8A7904F116ADBB22D36AB98144821A0572FA464F433324A2A0BB852A2B5E5E1FC0ACF2B0DCE4C64191F4AA38DC51883A376CA3E8122DA4501DC1E63008C3178AEE2F2E921E6CA35BEFBBECADABACFC92359949284C6223B11604B23B785C0F62A8410B84AB2DAF079345FC15AB87C7A984CD223D026AAD73B3AF6E361894AEEF1910CF94C9C87C50AD34F17393536D0B1C79B54A168002825505252AED429BE58259F493071B80F29A324DB9E483F158C31F4A53C2E9D1A6676E12533C5658E0E67181A48A18D897C7B7D12434C810E60FE7995D5BACF64A19F7C36D1D1A4B33D863F29A2DC505270EA683F4BD538A5F22A4D3FE0C86086987A8D84005C47B1DE0C292E2CA31C8733C7F2C43D87D098D6C4BD382E47A5C358CB507F924CCAA3547E49716199F1D11CAED3E33CA094E265AD0EF5905C5F92FC401A41A44D47EEF539BFDD095B123187136339962A35162B35304D94DA24D1211004017EB3C9D1B141BCAE538F7C8B6FEB448B88000607D2F881A6385F220882CE982E09490673593C5761CCCEBBE1DB84B516CF550CE6B2744BB94B42C2BA6E745E937B2E99DDD17EA0AEEB0AA544A75D6A13105A6B55AD56B5D6DA5A6BF765048410D46A35A3B556B412E59D7F37FA7FF3763ABAB3CF64D30BBDBE0FEC74BD5FB1DF557280031CE00007D823FC009124D769C93854B10000000049454E44AE426082,16,16);
INSERT INTO workflow_icon VALUES (8,'Edition','image/png',	0x89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF40000000467414D410000D904DCB2DA020000067849444154789CC5964D6C13E919C7FFF365C7C4CD879D8F0D64EDB80E34C28BA304A9212840D4224E143801074A94037BD86DC3A16AA54891B85184A05237D96AA52A3D80842A558A90E0C20A11407CE4404C886CC7DE86754C242731AC89673CB6C733F33E3D9044D9ACD776AA7EFCA5F734EFBCCFEF79DE79FEF300FF6709956EDCBF7F7FF7E9D3A74FF03CCFCBB29CD7342DF79F00102BDD78EAD4A9C1919191DFACAEAEE2EDDBB7C9783CFE4D241299999999090483C1D94824F26D3A9D7EBF5D00AECC73E1EAD5ABBF773A9D1F777575FDCAED767F6C1806044180244910840F05CCE572482693CBF178FC9F4B4B4B51C69856EC6C228224495C2010088D8E8E7E590960C3ECEC6C82D654281448370CCA9B26657339CA66B394CBE5289FCF53A150A04A35313111D8C8B00C80E3DCB973BFDEB56B57FDB70B0B48C932E464126C6E0E92D3094E92408C8188C01883AEEB6517C771304D7387CBE56A0D854221BE5C09789E474ED3109D9A82944C627E64047A3E0FB1BA1A2002C771DB5A8C31ECDCB9B3766868E8F3C6C6C676BEBFBFFFC8F1E3C77F590A8288505D5707737C1C5A4B0B2C7D7D0063955C6151711C877038FC5D241259168F1E3D3A32343474F4C68D1B7F49241219599697C7C6C6C600E8EBC1AB2C16581A1AB03A30008769C2AAEB802080E3CA7DC3C5835B2C1684C3E198AEEB09F1D2A54B5763B198E7E2C58B9F757474E0FEFDFBA1E6E6E6B6F1F1F13F2D2C2CA419631045113FEFEA02E338F01FEE10CC34FFED0A00C0ECECEC1C005920A2E5603098AAADAD3DB067CF1EFBDEBD7B1D8661D89A9B9BDB88A8AABFBFFF176EB7BB5E5614643319E83C0FA4D3E02509102AF6B10D0982005555313636762B168B3D1100E88CB185A74F9FBE4EA5529EB6B6B65DBDBDBD1FD5D4D4D8DFBD7B57B76FDF3E9FD3E9B43DBE7F1F862461FE8B2F509D4EA3C6EF07781EDC5A592B5D9224219148D0B56BD7461545F9663D853C11C55EBD7AF52A140AD99D4EE7DE9E9E9EC6EEEE6E573E9FB728B99C24BE7F0FF7D75F63657E1E6DC3C3B055558118DB761788A2886030981A1D1DFD3380E4E61AEA0096161717679E3C79A2582C169FCFE7ABF3783C92AA2848A82AD2990CD29F7C829FFA7CB08A15BBF8868808A228E2D9B367B1898989AF0064B65E220390521425383939199365D9DBD0D0D0E4F178D0E870A0AEB3133FF3FB515D550522DA56E0CD002F5FBE5CBC7DFBF6DF00E48B19110158D175FDEF77EFDEFD5296653C7FFE1C055D87C36E874514C1711C789E2F5BEEADC1D7B5B97D4B3961CEEFF74BBDBDBDF07ABD989E9E46341A85AEEB30D75A5092A492596F5DAC887995BCC8AEAE2EBF2008F07ABDB0D96C98999981AAAAB05AAD989A9AC2891327E072B960180668CD963707DC0A534CA50044BFDFBF6FFDE0A6A6261C3A7408939393181C1C84C3E1402814C2C0C0000E1C3800C6D80F322C0652B16C365BEBF4F4F4DB542A4544448661906118A4280A5DBE7C994451A41D3B76D0912347E8D6AD5B4444649A26699A469AA6513E9FA7DCDA2F5B555552559532990C1111DDBC793300A0AE2440676767FFD2D2124B2693DF03304D938888EEDDBB47BB77EF2600D4DADA4A57AE5C21555549D775D2346D23F83A4026932145518888E8FAF5EBCF00D49404387BF6EC6FB3D92C2D2F2F7F0F6033C49B376F687070900090CFE7A34C26438CB18DEC5555DDD8AF691A99A6498F1F3FD65A5A5AFE00C002941848CE9F3FFFE9C18307BB73B91CEC763B00FCA0BDEAEAEA70F2E449F87C3ED4D6D6429224343737C36AB5823106C330208A220CC300630C8140C03873E6CC578944E2AF004ACE8F96870F1F4E9BA6B95101D3348BAECDE3DAA3478FE8CE9D3B140E87299FCF532A9522455128954A51381CA6E1E1E159007BB0695EFC311F70A8AA5A158FC7CB7EB68C3198A6099EE771F8F0E18D8E2022E8BA8E6C368BB9B939489204C3300200E6F1C1EC4AEA2782201C6B6A6ABAFCE2C58BD5724326638C4CD3245DD7C9300C22225A5D5DA568344A0F1E3CA04824424444C78E1DFBDDD6403FE60319D3341F2493C99542A1F06939DACDF66B9A26D2E9345EBF7E8D743A8D8E8E0EB4B4B4409665168D46E72A0520000680950B172EFCC36EB7B7B3623EBAF92051E4EBEBEB6BDC6E77437B7B7B436767674D5F5F1FAC562B00607171F1BB783C3E5F29C0BADE8742A13FE2836994BB371E4015805A9EE73F72B95C6EAFD7EBF1F97C9E9E9E9EB6582C1601B0B2F5A5ED4F95E525009000D800D801D40368029006300B40FB6F0314D37AB7112AE880FFA9FE054D115D3C36C248200000000049454E44AE426082,16,16);
/*!40000 ALTER TABLE `workflow_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_prerequisite`
--

DROP TABLE IF EXISTS `workflow_prerequisite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_prerequisite` (
  `id_prerequisite` int(11) NOT NULL AUTO_INCREMENT,
  `id_action` int(11) NOT NULL,
  `prerequisite_type` varchar(255) NOT NULL,
  `uid_prerequisite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_prerequisite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_prerequisite`
--

LOCK TABLES `workflow_prerequisite` WRITE;
/*!40000 ALTER TABLE `workflow_prerequisite` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_prerequisite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_prerequisite_duration_cf`
--

DROP TABLE IF EXISTS `workflow_prerequisite_duration_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_prerequisite_duration_cf` (
  `id_prerequisite` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  PRIMARY KEY (`id_prerequisite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_prerequisite_duration_cf`
--

LOCK TABLES `workflow_prerequisite_duration_cf` WRITE;
/*!40000 ALTER TABLE `workflow_prerequisite_duration_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_prerequisite_duration_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_resource_history`
--

DROP TABLE IF EXISTS `workflow_resource_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_resource_history` (
  `id_history` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `id_action` int(11) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_access_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_history`),
  KEY `history_id_workflow_fk` (`id_workflow`),
  KEY `history_id_action_fk` (`id_action`),
  KEY `history_id_resource_fk` (`id_resource`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_history`
--

LOCK TABLES `workflow_resource_history` WRITE;
/*!40000 ALTER TABLE `workflow_resource_history` DISABLE KEYS */;
INSERT INTO `workflow_resource_history` VALUES (22,1,'appointment',1,1,'2024-02-09 14:46:09','auto'),(23,2,'appointment',1,1,'2024-02-09 14:46:09','auto'),(24,3,'appointment',1,1,'2024-02-09 14:49:39','auto'),(25,4,'appointment',1,1,'2024-02-28 15:34:35','auto'),(26,5,'appointment',1,1,'2024-02-28 15:46:10','auto'),(27,6,'appointment',1,1,'2024-02-28 15:53:10','auto'),(28,7,'appointment',1,1,'2024-02-28 15:55:45','auto'),(29,8,'appointment',1,1,'2024-02-29 09:56:15','auto'),(30,9,'appointment',1,1,'2024-02-29 15:50:45','auto'),(31,10,'appointment',1,1,'2024-02-29 15:56:15','auto'),(32,11,'appointment',1,1,'2024-02-29 15:59:15','auto'),(33,12,'appointment',1,1,'2024-02-29 16:12:00','auto'),(34,13,'appointment',1,1,'2024-03-01 13:19:53','auto'),(35,14,'appointment',1,1,'2024-03-01 13:35:23','auto'),(36,14,'appointment',1,4,'2024-03-01 13:37:06','admin'),(37,15,'appointment',1,1,'2024-03-01 15:11:53','auto'),(38,16,'appointment',1,1,'2024-03-01 15:12:53','auto'),(39,17,'appointment',1,1,'2024-03-05 09:54:13','auto'),(346,18,'appointment',1,1,'2024-05-24 08:10:25','auto'),(347,19,'appointment',1,1,'2024-05-24 08:10:27','auto'),(348,20,'appointment',1,1,'2024-05-24 08:10:27','auto'),(349,21,'appointment',1,1,'2024-05-24 08:10:27','auto'),(350,22,'appointment',1,1,'2024-05-24 08:10:28','auto'),(351,23,'appointment',1,1,'2024-05-24 08:10:28','auto'),(352,24,'appointment',1,1,'2025-01-23 09:42:43','auto'),(353,25,'appointment',1,1,'2025-01-23 09:44:13','auto'),(354,26,'appointment',1,1,'2025-01-23 09:44:43','auto'),(355,27,'appointment',1,1,'2025-01-23 09:45:13','auto'),(356,28,'appointment',1,1,'2025-01-23 09:45:43','auto'),(357,29,'appointment',1,1,'2025-01-23 09:46:13','auto'),(358,30,'appointment',1,1,'2025-01-23 09:48:43','auto'),(359,31,'appointment',1,1,'2025-01-23 09:49:43','auto'),(360,32,'appointment',1,1,'2025-01-23 09:50:13','auto'),(361,33,'appointment',1,1,'2025-01-23 09:50:43','auto'),(362,34,'appointment',1,1,'2025-01-23 09:52:13','auto'),(363,35,'appointment',1,1,'2025-01-23 09:53:13','auto'),(364,36,'appointment',1,1,'2025-01-23 09:53:43','auto'),(365,37,'appointment',1,1,'2025-01-23 09:54:13','auto'),(366,38,'appointment',1,1,'2025-01-23 09:54:43','auto'),(367,39,'appointment',1,1,'2025-01-23 09:55:13','auto'),(368,40,'appointment',1,1,'2025-01-23 09:55:43','auto'),(369,41,'appointment',1,1,'2025-01-23 09:56:43','auto'),(370,42,'appointment',1,1,'2025-01-23 09:57:13','auto'),(371,43,'appointment',1,1,'2025-01-23 09:58:43','auto'),(372,44,'appointment',1,1,'2025-01-23 09:59:13','auto'),(373,45,'appointment',1,1,'2025-01-23 10:00:13','auto'),(374,46,'appointment',1,1,'2025-01-23 10:02:43','auto');
/*!40000 ALTER TABLE `workflow_resource_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_resource_user_history`
--

DROP TABLE IF EXISTS `workflow_resource_user_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_resource_user_history` (
  `id_history` int(11) NOT NULL,
  `user_access_code` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `first_name` varchar(255) DEFAULT '',
  `last_name` varchar(255) DEFAULT '',
  `realm` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_history`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_user_history`
--

LOCK TABLES `workflow_resource_user_history` WRITE;
/*!40000 ALTER TABLE `workflow_resource_user_history` DISABLE KEYS */;
INSERT INTO `workflow_resource_user_history` VALUES (36,'admin','admin@lutece.fr','admin','Admin','BACK_OFFICE_USER');
/*!40000 ALTER TABLE `workflow_resource_user_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_resource_workflow`
--

DROP TABLE IF EXISTS `workflow_resource_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_resource_workflow` (
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `resource_type` varchar(255) NOT NULL,
  `id_state` int(11) DEFAULT NULL,
  `id_workflow` int(11) NOT NULL,
  `id_external_parent` int(11) DEFAULT NULL,
  `is_associated_workgroups` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_resource`,`resource_type`,`id_workflow`),
  KEY `workflow_resource_workflow_id_resource_fk` (`id_resource`),
  KEY `workflow_resource_workflow_resource_type_fk` (`resource_type`),
  KEY `workflow_resource_workflow_id_workflow_fk` (`id_workflow`),
  KEY `fk_document_id_state` (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_workflow`
--

LOCK TABLES `workflow_resource_workflow` WRITE;
/*!40000 ALTER TABLE `workflow_resource_workflow` DISABLE KEYS */;
INSERT INTO `workflow_resource_workflow` VALUES (1,'appointment',2,1,1,0),(2,'appointment',2,1,1,0),(3,'appointment',2,1,1,0),(4,'appointment',2,1,1,0),(5,'appointment',2,1,1,0),(6,'appointment',2,1,1,0),(7,'appointment',2,1,1,0),(8,'appointment',2,1,1,0),(9,'appointment',2,1,1,0),(10,'appointment',2,1,1,0),(11,'appointment',2,1,1,0),(12,'appointment',2,1,1,0),(13,'appointment',2,1,1,0),(14,'appointment',2,1,1,0),(15,'appointment',2,1,1,0),(16,'appointment',2,1,1,0),(17,'appointment',2,1,1,0),(18,'appointment',2,1,1,0),(19,'appointment',2,1,1,0),(20,'appointment',2,1,1,0),(21,'appointment',2,1,1,0),(22,'appointment',2,1,1,0),(23,'appointment',2,1,1,0),(24,'appointment',2,1,1,0),(25,'appointment',2,1,1,0),(26,'appointment',2,1,1,0),(27,'appointment',2,1,1,0),(28,'appointment',2,1,1,0),(29,'appointment',2,1,1,0),(30,'appointment',2,1,1,0),(31,'appointment',2,1,1,0),(32,'appointment',2,1,1,0),(33,'appointment',2,1,1,0),(34,'appointment',2,1,1,0),(35,'appointment',2,1,1,0),(36,'appointment',2,1,1,0),(37,'appointment',2,1,1,0),(38,'appointment',2,1,1,0),(39,'appointment',2,1,1,0),(40,'appointment',2,1,1,0),(41,'appointment',2,1,1,0),(42,'appointment',2,1,1,0),(43,'appointment',2,1,1,0),(44,'appointment',2,1,1,0),(45,'appointment',2,1,1,0),(46,'appointment',2,1,1,0);
/*!40000 ALTER TABLE `workflow_resource_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_resource_workgroup`
--

DROP TABLE IF EXISTS `workflow_resource_workgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_resource_workgroup` (
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `resource_type` varchar(255) DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `workgroup_key` varchar(255) DEFAULT NULL,
  KEY `workflow_resource_workgroup_id_resource_fk` (`id_resource`),
  KEY `workflow_resource_workgroup_resource_type_fk` (`resource_type`),
  KEY `workflow_resource_workgroup_id_workflow_fk` (`id_workflow`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_workgroup`
--

LOCK TABLES `workflow_resource_workgroup` WRITE;
/*!40000 ALTER TABLE `workflow_resource_workgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_resource_workgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_state`
--

DROP TABLE IF EXISTS `workflow_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_state` (
  `id_state` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `is_initial_state` smallint(6) DEFAULT 0,
  `is_required_workgroup_assigned` smallint(6) DEFAULT 0,
  `id_icon` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  `uid_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_state`),
  KEY `fk_state_id_workflow` (`id_workflow`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_state`
--

LOCK TABLES `workflow_state` WRITE;
/*!40000 ALTER TABLE `workflow_state` DISABLE KEYS */;
INSERT INTO `workflow_state` VALUES (1,'Non Validé','Rendez-vous nouvellement créé qui n\'a pas encore fait l\'objet d\'une validation',1,1,0,NULL,1,'172ec40d-d64e-11ee-a4dc-0242ac120002'),(2,'Validé','Rendez-vous validé soit automatiquement, soit par l\'action d\'un administrateur',1,0,0,1,2,'172ec952-d64e-11ee-a4dc-0242ac120002'),(3,'Annulé','Rendez-vous qui a été annulé soit pas l\'usager, soit par un administrateur',1,0,0,5,3,'172eca8c-d64e-11ee-a4dc-0242ac120002'),(4,'Honoré','Rendez-vous qui a été honoré par l\'usager et déclaré comme tel par un administrateur',1,0,0,NULL,4,'172ecb5e-d64e-11ee-a4dc-0242ac120002'),(5,'Non honoré','Rendez-vous qui n\'a pas été honoré par l\'usager et déclaré comme tel par un administrateur',1,0,0,NULL,5,'172ecc2f-d64e-11ee-a4dc-0242ac120002'),(6,'Rendez-Vous Anonymisé','Un rendez-vous anonymisé automatiquement pour se conformer à RGPD',1,0,0,NULL,6,'8c08235c-b816-45f2-812f-59938d09b87e'),(7,'Rendez-Vous Supprimé','Suppression du rendez-vous automatique suivant un délai',1,0,0,NULL,7,'cbcd79ac-c9df-4f48-97e5-eb30f906946a');
/*!40000 ALTER TABLE `workflow_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task`
--

DROP TABLE IF EXISTS `workflow_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task` (
  `id_task` int(11) NOT NULL AUTO_INCREMENT,
  `task_type_key` varchar(50) DEFAULT NULL,
  `id_action` int(11) NOT NULL DEFAULT 0,
  `display_order` int(11) DEFAULT 0,
  `uid_task` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_task`),
  KEY `task_id_action_fk` (`id_action`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task`
--

LOCK TABLES `workflow_task` WRITE;
/*!40000 ALTER TABLE `workflow_task` DISABLE KEYS */;
INSERT INTO `workflow_task` VALUES (1,'taskNotifyGru',1,1,'174cdb5e-d64e-11ee-a4dc-0242ac120002'),(2,'taskUpdateAppointmentCancelAction',1,2,'174ce02b-d64e-11ee-a4dc-0242ac120002'),(3,'taskReportAppointment',4,1,'174ce191-d64e-11ee-a4dc-0242ac120002'),(4,'taskReportAppointment',5,1,'174ce2dc-d64e-11ee-a4dc-0242ac120002'),(5,'taskTypeArchive',6,1,NULL),(6,'taskTypeArchive',7,1,NULL),(7,'taskTypeArchive',8,1,NULL),(9,'taskNotifyGru',2,1,'7c1730c8-01bf-4fe5-9b28-8f1cb1011ff0'),(10,'taskTypeComment',3,1,'59f47fed-060d-4ab6-8a2a-cef7b084455d'),(11,'taskNotifyGru',3,2,'1f82e527-0c28-4d27-82bb-15b08bf58a95');
/*!40000 ALTER TABLE `workflow_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_alert_gru_cf`
--

DROP TABLE IF EXISTS `workflow_task_alert_gru_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_alert_gru_cf` (
  `id_task` int(11) NOT NULL,
  `id_spring_provider` varchar(255) DEFAULT NULL,
  `marker_provider_ids` varchar(1000) DEFAULT NULL,
  `demand_status` int(11) DEFAULT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `set_onglet` smallint(6) DEFAULT NULL,
  `message_guichet` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `status_text_guichet` varchar(255) DEFAULT NULL,
  `sender_name_guichet` varchar(255) DEFAULT NULL,
  `subject_guichet` varchar(255) DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) DEFAULT NULL,
  `message_agent` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) DEFAULT NULL,
  `message_email` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sender_name_email` varchar(255) DEFAULT NULL,
  `recipients_cc_email` varchar(255) DEFAULT NULL,
  `recipients_cci_email` varchar(255) DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `billing_account_sms` varchar(255) DEFAULT NULL,
  `billing_group_sms` varchar(255) DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) DEFAULT NULL,
  `sender_name_broadcast` varchar(255) DEFAULT NULL,
  `subject_broadcast` varchar(255) DEFAULT NULL,
  `message_broadcast` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  `days_to_alert` int(11) DEFAULT NULL,
  `id_state_after` int(11) DEFAULT NULL,
  `alert_subject` varchar(255) DEFAULT NULL,
  `marker_alert` varchar(255) DEFAULT NULL,
  `alert_after_before` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_alert_gru_cf`
--

LOCK TABLES `workflow_task_alert_gru_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_alert_gru_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_alert_gru_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_alert_gru_history`
--

DROP TABLE IF EXISTS `workflow_task_alert_gru_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_alert_gru_history` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `message_guichet` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `status_text_guichet` varchar(255) DEFAULT NULL,
  `sender_name_guichet` varchar(255) DEFAULT NULL,
  `subject_guichet` varchar(255) DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) DEFAULT NULL,
  `message_agent` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) DEFAULT NULL,
  `message_email` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sender_name_email` varchar(255) DEFAULT NULL,
  `recipients_cc_email` varchar(255) DEFAULT NULL,
  `recipients_cci_email` varchar(255) DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `billing_account_sms` varchar(255) DEFAULT NULL,
  `billing_group_sms` varchar(255) DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) DEFAULT NULL,
  `sender_name_broadcast` varchar(255) DEFAULT NULL,
  `subject_broadcast` varchar(255) DEFAULT NULL,
  `message_broadcast` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_history`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_alert_gru_history`
--

LOCK TABLES `workflow_task_alert_gru_history` WRITE;
/*!40000 ALTER TABLE `workflow_task_alert_gru_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_alert_gru_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_archive_cf`
--

DROP TABLE IF EXISTS `workflow_task_archive_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_archive_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `next_state` int(11) NOT NULL,
  `type_archival` varchar(255) DEFAULT NULL,
  `delay_archival` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_archive_cf`
--

LOCK TABLES `workflow_task_archive_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_archive_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_archive_cf` VALUES (5,6,'ANONYMIZE',365),(6,6,'ANONYMIZE',365),(7,7,'DELETE',1825);
/*!40000 ALTER TABLE `workflow_task_archive_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_archive_resource`
--

DROP TABLE IF EXISTS `workflow_task_archive_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_archive_resource` (
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `initial_date` timestamp NULL DEFAULT NULL,
  `archival_date` timestamp NULL DEFAULT NULL,
  `is_archived` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_resource`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_archive_resource`
--

LOCK TABLES `workflow_task_archive_resource` WRITE;
/*!40000 ALTER TABLE `workflow_task_archive_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_archive_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_assignment_cf`
--

DROP TABLE IF EXISTS `workflow_task_assignment_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_assignment_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `is_multiple_owner` smallint(6) DEFAULT 0,
  `is_notify` smallint(6) DEFAULT 0,
  `message` varchar(255) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `is_use_user_name` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_assignment_cf`
--

LOCK TABLES `workflow_task_assignment_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_assignment_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_assignment_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_change_appointment_status_cf`
--

DROP TABLE IF EXISTS `workflow_task_change_appointment_status_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_change_appointment_status_cf` (
  `id_task` int(11) NOT NULL,
  `appointment_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_change_appointment_status_cf`
--

LOCK TABLES `workflow_task_change_appointment_status_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_change_appointment_status_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_change_appointment_status_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_change_state_config`
--

DROP TABLE IF EXISTS `workflow_task_change_state_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_change_state_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_next_state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_change_state_config`
--

LOCK TABLES `workflow_task_change_state_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_change_state_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_change_state_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_change_state_information`
--

DROP TABLE IF EXISTS `workflow_task_change_state_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_change_state_information` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `new_state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_change_state_information`
--

LOCK TABLES `workflow_task_change_state_information` WRITE;
/*!40000 ALTER TABLE `workflow_task_change_state_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_change_state_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_choice_config`
--

DROP TABLE IF EXISTS `workflow_task_choice_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_choice_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_choice_config`
--

LOCK TABLES `workflow_task_choice_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_choice_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_choice_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_choose_state_config`
--

DROP TABLE IF EXISTS `workflow_task_choose_state_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_choose_state_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `controller_name` varchar(100) DEFAULT NULL,
  `id_state_ok` int(11) NOT NULL,
  `id_state_ko` int(11) NOT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_choose_state_config`
--

LOCK TABLES `workflow_task_choose_state_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_choose_state_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_choose_state_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_choose_state_information`
--

DROP TABLE IF EXISTS `workflow_task_choose_state_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_choose_state_information` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `new_state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_choose_state_information`
--

LOCK TABLES `workflow_task_choose_state_information` WRITE;
/*!40000 ALTER TABLE `workflow_task_choose_state_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_choose_state_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_comment_config`
--

DROP TABLE IF EXISTS `workflow_task_comment_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_comment_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `is_mandatory` smallint(6) DEFAULT 0,
  `is_richtext` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_comment_config`
--

LOCK TABLES `workflow_task_comment_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_comment_config` DISABLE KEYS */;
INSERT INTO `workflow_task_comment_config` VALUES (10,'Raison de l\'annulation',1,0);
/*!40000 ALTER TABLE `workflow_task_comment_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_comment_value`
--

DROP TABLE IF EXISTS `workflow_task_comment_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_comment_value` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL,
  `comment_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_history`,`id_task`),
  KEY `comment_value_id_history_fk` (`id_history`),
  KEY `comment_value_id_task_fk` (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_comment_value`
--

LOCK TABLES `workflow_task_comment_value` WRITE;
/*!40000 ALTER TABLE `workflow_task_comment_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_comment_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_confirm_action_config`
--

DROP TABLE IF EXISTS `workflow_task_confirm_action_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_confirm_action_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_confirm_action_config`
--

LOCK TABLES `workflow_task_confirm_action_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_confirm_action_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_confirm_action_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_manual_app_notify`
--

DROP TABLE IF EXISTS `workflow_task_manual_app_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_manual_app_notify` (
  `id_notif` int(11) NOT NULL,
  `id_history` int(11) DEFAULT NULL,
  `id_appointment` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_notif`),
  KEY `idx_wf_task_manual_app_notify` (`id_appointment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_manual_app_notify`
--

LOCK TABLES `workflow_task_manual_app_notify` WRITE;
/*!40000 ALTER TABLE `workflow_task_manual_app_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_manual_app_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notification_cf`
--

DROP TABLE IF EXISTS `workflow_task_notification_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notification_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_mailing_list` int(11) DEFAULT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notification_cf`
--

LOCK TABLES `workflow_task_notification_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_notification_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notification_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notify_admin_appointment_cf`
--

DROP TABLE IF EXISTS `workflow_task_notify_admin_appointment_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notify_admin_appointment_cf` (
  `id_task` int(11) NOT NULL,
  `id_admin_user` int(11) DEFAULT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `sender_email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `recipients_cc` varchar(255) NOT NULL DEFAULT '',
  `recipients_bcc` varchar(255) NOT NULL DEFAULT '',
  `id_action_cancel` int(11) DEFAULT NULL,
  `id_action_validate` int(11) DEFAULT NULL,
  `ical_notification` smallint(6) DEFAULT 0,
  `create_notif` smallint(6) DEFAULT 0,
  `location` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_admin_appointment_cf`
--

LOCK TABLES `workflow_task_notify_admin_appointment_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_admin_appointment_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notify_admin_appointment_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notify_appointment_cf`
--

DROP TABLE IF EXISTS `workflow_task_notify_appointment_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notify_appointment_cf` (
  `id_task` int(11) NOT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `sender_email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `recipients_cc` varchar(255) NOT NULL DEFAULT '',
  `recipients_bcc` varchar(255) NOT NULL DEFAULT '',
  `id_action_cancel` int(11) DEFAULT NULL,
  `ical_notification` smallint(6) DEFAULT 0,
  `create_notif` smallint(6) DEFAULT 0,
  `location` varchar(255) NOT NULL DEFAULT '',
  `is_sms` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_appointment_cf`
--

LOCK TABLES `workflow_task_notify_appointment_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_appointment_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notify_appointment_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notify_appointment_crm`
--

DROP TABLE IF EXISTS `workflow_task_notify_appointment_crm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notify_appointment_crm` (
  `id_task` int(11) NOT NULL,
  `id_demand_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `status_text` varchar(255) DEFAULT NULL,
  `id_status_crm` varchar(255) DEFAULT NULL,
  `object` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_appointment_crm`
--

LOCK TABLES `workflow_task_notify_appointment_crm` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_appointment_crm` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notify_appointment_crm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notify_gru_cf`
--

DROP TABLE IF EXISTS `workflow_task_notify_gru_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notify_gru_cf` (
  `id_task` int(11) NOT NULL,
  `id_spring_provider` varchar(255) DEFAULT NULL,
  `marker_provider_ids` varchar(1000) DEFAULT NULL,
  `demand_status` int(11) DEFAULT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `set_onglet` smallint(6) DEFAULT NULL,
  `message_guichet` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `status_text_guichet` varchar(255) DEFAULT NULL,
  `sender_name_guichet` varchar(255) DEFAULT NULL,
  `subject_guichet` varchar(255) DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) DEFAULT NULL,
  `message_agent` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) DEFAULT NULL,
  `message_email` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sender_name_email` varchar(255) DEFAULT NULL,
  `recipients_cc_email` varchar(255) DEFAULT NULL,
  `recipients_cci_email` varchar(255) DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `billing_account_sms` varchar(255) DEFAULT NULL,
  `billing_group_sms` varchar(255) DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) DEFAULT NULL,
  `sender_name_broadcast` varchar(255) DEFAULT NULL,
  `subject_broadcast` varchar(255) DEFAULT NULL,
  `message_broadcast` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  `content_cleaned` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_gru_cf`
--

LOCK TABLES `workflow_task_notify_gru_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_gru_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_notify_gru_cf` VALUES (1,'notifygru-appointment.ProviderService.@.1','',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;${firstName!}&nbsp;${lastName!},</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;${date_appointment!} de&nbsp;${time_appointment!} &agrave;&nbsp;${end_time_appointment!} a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"${url_report!}\">ce lien</a>, ou l\'annuler en cliquant <a href=\"${url_cancel!}\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(9,'notifygru-appointment.ProviderService.@.1','',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'votre rendez-vous a bien &eacute;t&eacute; annul&eacute;','<p>Bonjour&nbsp;${firstName!}&nbsp;${lastName!},</p>\r\n<p>Suite a votre demande, votre rendez-vous a bien &eacute;t&eacute; annul&eacute;.</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(11,'notifygru-appointment.ProviderService.@.1','',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous a &eacute;t&eacute; annul&eacute; ','<p>Bonjour&nbsp;${firstName!}&nbsp;${lastName!},</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous a &eacute;t&eacute; annul&eacute; pour la raison suivante ${cancel_motif!}.</p>\r\n<p>&nbsp;</p>\r\n<p>erci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0);
/*!40000 ALTER TABLE `workflow_task_notify_gru_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notify_gru_history`
--

DROP TABLE IF EXISTS `workflow_task_notify_gru_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notify_gru_history` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `message_guichet` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `status_text_guichet` varchar(255) DEFAULT NULL,
  `sender_name_guichet` varchar(255) DEFAULT NULL,
  `subject_guichet` varchar(255) DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) DEFAULT NULL,
  `message_agent` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) DEFAULT NULL,
  `message_email` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sender_name_email` varchar(255) DEFAULT NULL,
  `recipients_cc_email` varchar(255) DEFAULT NULL,
  `recipients_cci_email` varchar(255) DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `billing_account_sms` varchar(255) DEFAULT NULL,
  `billing_group_sms` varchar(255) DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) DEFAULT NULL,
  `sender_name_broadcast` varchar(255) DEFAULT NULL,
  `subject_broadcast` varchar(255) DEFAULT NULL,
  `message_broadcast` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  `code_event` varchar(45) DEFAULT NULL,
  `type_event` varchar(45) DEFAULT NULL,
  `message_event` text DEFAULT NULL,
  `content_cleaned` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_history`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_gru_history`
--

LOCK TABLES `workflow_task_notify_gru_history` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_gru_history` DISABLE KEYS */;
INSERT INTO `workflow_task_notify_gru_history` VALUES (22,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;12/02/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=1f42f1b5e\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=1f42f1b5e\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/grusupply/notification] : ',0),(23,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;15/02/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=27209b899\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=27209b899\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/grusupply/notification] : ',0),(24,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;prenom&nbsp;nom,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;13/02/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=307de7871\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=307de7871\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0),(25,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;29/02/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=45078fbd0\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=45078fbd0\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/grusupply/notification] : ',0),(26,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=5facef2e3\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=5facef2e3\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://127.0.0.1:8080/rendezvous/rest/grusupply/notification] : ',0),(27,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;12:00 &agrave;&nbsp;13:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=66e496225\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=66e496225\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://127.0.0.1:8080/rendezvous/rest/notification/send] : ',0),(28,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;29/02/2024 de&nbsp;17:00 &agrave;&nbsp;18:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=72603ed23\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=72603ed23\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/notification/send] : ',0),(30,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;philippe&nbsp;bareille,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;11:00 &agrave;&nbsp;12:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=956cce199\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=956cce199\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/notification/send] : ',0),(31,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;ph&nbsp;ba,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=10270795a1\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=10270795a1\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/notification/send] : ',0),(32,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;phil&nbsp;bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=11d4fbdbdc\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=11d4fbdbdc\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/notification/send] : ',0),(33,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;ph&nbsp;ba,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;04/03/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=124d3d3dd3\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=124d3d3dd3\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0),(34,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;18/03/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=131830eb6c\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=131830eb6c\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://127.0.0.1:8080/rendezvous/rest/grusupply/notification] : ',0),(35,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Ginette&nbsp;Michu,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;05/03/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=147009507d\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=147009507d\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0),(37,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;P&nbsp;B,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;16:00 &agrave;&nbsp;17:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=15fe52817e\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=15fe52817e\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0),(38,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Ph&nbsp;B,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;17:00 &agrave;&nbsp;18:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=16339f91d6\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=16339f91d6\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://127.0.0.1:8080/rendezvous/rest/grusupply/notification] : ',0),(39,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;P&nbsp;B,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;08/03/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=177bd64a8d\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=177bd64a8d\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0),(346,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Peter&nbsp;Parker,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;31/05/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=18239f10cf\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=18239f10cf\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(347,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Wade&nbsp;Wilson,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;13/06/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=19068fd1dc\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=19068fd1dc\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(348,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Harley&nbsp;Quinn,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;18/07/2024 de&nbsp;11:00 &agrave;&nbsp;12:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=20ce9e1a66\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=20ce9e1a66\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(349,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Bruce&nbsp;Banner,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;29/08/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=21b4d294a1\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=21b4d294a1\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(350,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Wayne&nbsp;Campbell,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;24/10/2024 de&nbsp;11:00 &agrave;&nbsp;12:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=22b557a23c\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=22b557a23c\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(351,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Maximus&nbsp;Decimus Meridius,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;14/11/2024 de&nbsp;16:00 &agrave;&nbsp;17:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=233e93c5fd\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=233e93c5fd\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(352,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Andy&nbsp;Dufresne,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;24/01/2025 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=24a0b49222\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=24a0b49222\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(353,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Michael&nbsp;Corleone,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;06/02/2025 de&nbsp;12:00 &agrave;&nbsp;13:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=25e34ba33c\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=25e34ba33c\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(354,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Frodon&nbsp;Sacquet,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;11/02/2025 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=26b5fe664c\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=26b5fe664c\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(355,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Wallace&nbsp;Mia,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;13/02/2025 de&nbsp;17:00 &agrave;&nbsp;18:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=27f0d6faa1\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=27f0d6faa1\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(356,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Obi-wan&nbsp;Kenobi,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;07/02/2025 de&nbsp;17:00 &agrave;&nbsp;18:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=28dda79ddb\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=28dda79ddb\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(357,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Leia&nbsp;Organa,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;04/02/2025 de&nbsp;13:00 &agrave;&nbsp;14:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=29921921b8\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=29921921b8\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(358,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Luke&nbsp;Skywalker,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;04/03/2025 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=30e9c07e5b\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=30e9c07e5b\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(359,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Clarice&nbsp;Tarling,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;18/03/2025 de&nbsp;13:00 &agrave;&nbsp;14:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=313aca4d81\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=313aca4d81\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(360,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Marty&nbsp;McFly,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;03/04/2025 de&nbsp;14:00 &agrave;&nbsp;15:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=32bed77f25\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=32bed77f25\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(361,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Mathilda&nbsp;Lando,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;17/04/2025 de&nbsp;11:00 &agrave;&nbsp;12:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=33840245ea\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=33840245ea\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(362,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Mary Jane&nbsp;Watson,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;11/03/2025 de&nbsp;13:00 &agrave;&nbsp;14:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=34c049bb6f\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=34c049bb6f\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(363,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Keyser&nbsp;Söze,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;23/01/2025 de&nbsp;14:00 &agrave;&nbsp;15:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=35fa09bdd0\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=35fa09bdd0\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(364,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Ellen&nbsp;Ripley,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/04/2025 de&nbsp;11:00 &agrave;&nbsp;12:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=368f2c82ef\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=368f2c82ef\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(365,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Indiana&nbsp;Jones,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;10/04/2025 de&nbsp;11:00 &agrave;&nbsp;12:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=37623f7e22\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=37623f7e22\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(366,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Wendy&nbsp;Torrance,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;24/04/2025 de&nbsp;11:00 &agrave;&nbsp;12:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=38b77c42af\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=38b77c42af\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(367,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Bryan&nbsp;Mills,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;29/04/2025 de&nbsp;16:00 &agrave;&nbsp;17:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=39006d8674\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=39006d8674\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(368,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Tony&nbsp;Montana,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/04/2025 de&nbsp;15:00 &agrave;&nbsp;16:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=4014a69453\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=4014a69453\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(369,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Amélie&nbsp;Poulain,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;13/02/2025 de&nbsp;11:00 &agrave;&nbsp;12:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=4127aad033\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=4127aad033\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(370,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;John&nbsp;McClane,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;06/05/2025 de&nbsp;12:00 &agrave;&nbsp;13:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=42b94c7aca\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=42b94c7aca\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(371,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Truman&nbsp;Burbank,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;14/03/2025 de&nbsp;12:00 &agrave;&nbsp;13:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=43443ad8ca\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=43443ad8ca\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(372,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Maverick&nbsp;Mitchell,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;30/05/2025 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=446896393b\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=446896393b\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(373,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Beatrix&nbsp;Kiddo,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;05/06/2025 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=45e2bfef25\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=45e2bfef25\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(374,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Hermione&nbsp;Granger,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;15/04/2025 de&nbsp;13:00 &agrave;&nbsp;14:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=46e3cdc1b7\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=46e3cdc1b7\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0);
/*!40000 ALTER TABLE `workflow_task_notify_gru_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notify_gru_mapping_manager`
--

DROP TABLE IF EXISTS `workflow_task_notify_gru_mapping_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notify_gru_mapping_manager` (
  `id_notifygrumappingmanager` int(11) NOT NULL,
  `beankey` varchar(255) NOT NULL DEFAULT '',
  `connection_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `mobilephonenumber` int(11) NOT NULL DEFAULT 0,
  `fixedphonenumber` int(11) NOT NULL DEFAULT 0,
  `email` int(11) NOT NULL DEFAULT 0,
  `demandetype` int(11) NOT NULL DEFAULT 0,
  `demand_reference` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_notifygrumappingmanager`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_gru_mapping_manager`
--

LOCK TABLES `workflow_task_notify_gru_mapping_manager` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_gru_mapping_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notify_gru_mapping_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notify_reminder_cf`
--

DROP TABLE IF EXISTS `workflow_task_notify_reminder_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notify_reminder_cf` (
  `id_task` int(11) NOT NULL,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `nb_alerts` int(11) DEFAULT 0,
  PRIMARY KEY (`id_task`,`id_form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_reminder_cf`
--

LOCK TABLES `workflow_task_notify_reminder_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_reminder_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notify_reminder_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_update_admin_appointment`
--

DROP TABLE IF EXISTS `workflow_task_update_admin_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_update_admin_appointment` (
  `id_update` int(11) NOT NULL,
  `id_history` int(11) DEFAULT NULL,
  `id_appointment` int(11) DEFAULT NULL,
  `id_admin_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_update`),
  KEY `idx_wf_task_update_admin_app` (`id_appointment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_update_admin_appointment`
--

LOCK TABLES `workflow_task_update_admin_appointment` WRITE;
/*!40000 ALTER TABLE `workflow_task_update_admin_appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_update_admin_appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_update_appointment_cancel_cf`
--

DROP TABLE IF EXISTS `workflow_task_update_appointment_cancel_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_update_appointment_cancel_cf` (
  `id_task` int(11) NOT NULL,
  `id_action_cancel` int(11) DEFAULT NULL,
  `id_action_report` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`),
  KEY `fk_wf_task_up_app_cancel_cf` (`id_action_cancel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_update_appointment_cancel_cf`
--

LOCK TABLES `workflow_task_update_appointment_cancel_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_update_appointment_cancel_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_update_appointment_cancel_cf` VALUES (2,2,4);
/*!40000 ALTER TABLE `workflow_task_update_appointment_cancel_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_workflow`
--

DROP TABLE IF EXISTS `workflow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_workflow` (
  `id_workflow` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_enabled` smallint(6) DEFAULT 0,
  `workgroup_key` varchar(255) DEFAULT NULL,
  `uid_workflow` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_workflow`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_workflow`
--

LOCK TABLES `workflow_workflow` WRITE;
/*!40000 ALTER TABLE `workflow_workflow` DISABLE KEYS */;
INSERT INTO `workflow_workflow` VALUES (1,'Permanences Juridiques','Cycle de vie d\'une prise de rendez-vous simple pour les permanences juridiques','2024-02-07 14:57:54',1,'all','1717cd14-d64e-11ee-a4dc-0242ac120002');
/*!40000 ALTER TABLE `workflow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_workgroup_cf`
--

DROP TABLE IF EXISTS `workflow_workgroup_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_workgroup_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `workgroup_key` varchar(255) NOT NULL,
  `id_mailing_list` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`,`workgroup_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_workgroup_cf`
--

LOCK TABLES `workflow_workgroup_cf` WRITE;
/*!40000 ALTER TABLE `workflow_workgroup_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_workgroup_cf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-23 11:04:13
