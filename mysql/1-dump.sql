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

CREATE DATABASE lutece;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_appointment`
--

LOCK TABLES `appointment_appointment` WRITE;
/*!40000 ALTER TABLE `appointment_appointment` DISABLE KEYS */;
INSERT INTO `appointment_appointment` VALUES (1,'1f42f1b5e',1,0,2,4,0,0,'2024-02-09 13:44:46',NULL,1,0),(2,'27209b899',1,0,2,4,0,0,'2024-02-09 14:42:42',NULL,2,0),(3,'307de7871',1,0,2,4,0,0,'2024-02-09 14:49:21','admin',3,0),(4,'45078fbd0',1,0,2,4,0,0,'2024-02-28 15:34:30',NULL,4,0),(5,'5facef2e3',1,0,2,4,0,0,'2024-02-28 15:46:02',NULL,5,0),(6,'66e496225',1,0,2,4,0,0,'2024-02-28 15:53:07',NULL,6,0),(7,'72603ed23',1,0,2,4,0,0,'2024-02-28 15:55:29',NULL,7,0),(8,'832bee60d',1,0,2,4,0,0,'2024-02-29 09:55:53',NULL,8,0),(9,'956cce199',1,0,2,4,0,0,'2024-02-29 15:50:33','admin',9,0),(10,'10270795a1',1,0,2,4,0,0,'2024-02-29 15:55:51','admin',10,0),(11,'11d4fbdbdc',1,0,2,4,0,0,'2024-02-29 15:59:10','admin',11,0),(12,'124d3d3dd3',1,0,2,4,0,0,'2024-02-29 16:11:30','admin',12,0),(13,'131830eb6c',1,0,2,4,0,0,'2024-03-01 13:19:47',NULL,13,0),(14,'147009507d',1,0,2,4,0,0,'2024-03-01 13:35:06','admin',14,0),(15,'15fe52817e',1,0,2,4,0,0,'2024-03-01 15:11:41',NULL,15,0),(16,'16339f91d6',1,0,2,4,0,0,'2024-03-01 15:12:49',NULL,16,0),(17,'177bd64a8d',1,0,2,4,0,0,'2024-03-05 09:54:07',NULL,17,0),(18,'18239f10cf',1,0,2,4,0,0,'2024-05-23 16:27:44','admin',18,0),(19,'19068fd1dc',1,0,2,4,0,0,'2024-05-23 16:29:15','admin',19,0),(20,'20ce9e1a66',1,0,2,4,0,0,'2024-05-23 16:30:23','admin',20,0),(21,'21b4d294a1',1,0,2,4,0,0,'2024-05-23 16:31:01','admin',21,0),(22,'22b557a23c',1,0,2,4,0,0,'2024-05-23 16:32:15','admin',22,0),(23,'233e93c5fd',1,0,2,4,0,0,'2024-05-23 16:33:35','admin',23,0);
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
INSERT INTO `appointment_appointment_slot` VALUES (1,4,1),(2,6,1),(3,7,1),(4,12,1),(5,13,1),(6,14,1),(7,15,1),(8,18,1),(9,20,1),(10,21,1),(11,13,1),(12,17,1),(13,22,1),(14,25,1),(15,26,1),(16,27,1),(17,29,1),(18,37,1),(19,38,1),(20,39,1),(21,40,1),(22,41,1),(23,42,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_comment`
--

LOCK TABLES `appointment_comment` WRITE;
/*!40000 ALTER TABLE `appointment_comment` DISABLE KEYS */;
INSERT INTO `appointment_comment` VALUES (1,1,'2024-08-15','00:00:00','2024-08-15','00:00:00','<p>Jour f&eacute;ri&eacute;</p>','2024-05-22','admin'),(2,1,'2024-07-16','00:00:00','2024-07-16','00:00:00','<p>Ferm&eacute; le matin pour cause de travaux</p>','2024-05-23','admin');
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
INSERT INTO `appointment_display` VALUES (1,0,'','NULL',4,1,4,1);
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
INSERT INTO `appointment_form_message` VALUES (1,'Choisir une date','Prénom','','Nom','','Email','','Confirmation Email','','Votre demande de rendez-vous a bien été créée avec la reference %%REF%%','jsp/site/Portal.jsp','Votre demande de rendez-vous a bien été annulée','Terminer','Aucun créneau disponible n\'a été trouvé. Veuillez réiterer votre recherche ultérieurement.','','Réserver','Complet',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_slot`
--

LOCK TABLES `appointment_slot` WRITE;
/*!40000 ALTER TABLE `appointment_slot` DISABLE KEYS */;
INSERT INTO `appointment_slot` VALUES (1,'2024-02-08 09:00:00','2024-02-08 10:00:00',1,0,3,3,3,0,1),(2,'2024-02-09 09:00:00','2024-02-09 10:00:00',1,0,3,3,3,0,1),(3,'2024-02-08 12:00:00','2024-02-08 13:00:00',1,0,3,3,3,0,1),(4,'2024-02-12 10:00:00','2024-02-12 11:00:00',1,0,3,2,2,1,1),(5,'2024-02-13 09:00:00','2024-02-13 10:00:00',1,0,3,3,3,0,1),(6,'2024-02-15 09:00:00','2024-02-15 10:00:00',1,0,3,2,2,1,1),(7,'2024-02-13 10:00:00','2024-02-13 11:00:00',1,0,3,2,2,1,1),(8,'2024-02-15 16:00:00','2024-02-15 17:00:00',1,0,3,3,3,0,1),(9,'2024-02-16 12:00:00','2024-02-16 13:00:00',1,0,3,3,3,0,1),(10,'2024-02-09 16:00:00','2024-02-09 17:00:00',1,0,3,3,3,0,1),(11,'2024-02-09 17:00:00','2024-02-09 18:00:00',1,0,3,3,3,0,1),(12,'2024-02-29 10:00:00','2024-02-29 11:00:00',1,0,3,2,2,1,1),(13,'2024-03-01 09:00:00','2024-03-01 10:00:00',1,0,3,1,1,2,1),(14,'2024-03-01 12:00:00','2024-03-01 13:00:00',1,0,3,2,2,1,1),(15,'2024-02-29 17:00:00','2024-02-29 18:00:00',1,0,3,2,2,1,1),(16,'2024-02-29 09:00:00','2024-02-29 10:00:00',1,0,3,3,3,0,1),(17,'2024-03-04 09:00:00','2024-03-04 10:00:00',1,0,3,2,2,1,1),(18,'2024-02-29 15:00:00','2024-02-29 16:00:00',1,0,3,2,2,1,1),(19,'2024-03-01 13:00:00','2024-03-01 14:00:00',1,0,3,3,3,0,1),(20,'2024-03-01 11:00:00','2024-03-01 12:00:00',1,0,3,2,2,1,1),(21,'2024-03-01 10:00:00','2024-03-01 11:00:00',1,0,3,2,2,1,1),(22,'2024-03-18 09:00:00','2024-03-18 10:00:00',1,0,3,2,2,1,1),(23,'2024-03-01 15:00:00','2024-03-01 16:00:00',1,0,3,3,3,0,1),(24,'2024-03-05 09:00:00','2024-03-05 10:00:00',1,0,3,3,3,0,1),(25,'2024-03-07 09:00:00','2024-03-07 10:00:00',1,0,3,2,2,1,1),(26,'2024-03-01 16:00:00','2024-03-01 17:00:00',1,0,3,2,2,1,1),(27,'2024-03-01 17:00:00','2024-03-01 18:00:00',1,0,3,2,2,1,1),(28,'2024-03-08 09:00:00','2024-03-08 10:00:00',1,0,3,3,3,0,1),(29,'2024-03-08 10:00:00','2024-03-08 11:00:00',1,0,3,2,2,1,1),(30,'2024-05-24 09:00:00','2024-05-24 10:00:00',1,0,3,3,3,0,1),(31,'2024-08-15 10:00:00','2024-08-15 11:00:00',0,1,1,1,1,0,1),(32,'2024-08-15 11:00:00','2024-08-15 12:00:00',0,1,1,1,1,0,1),(33,'2024-08-15 12:00:00','2024-08-15 13:00:00',0,1,1,1,1,0,1),(34,'2024-08-15 13:00:00','2024-08-15 14:00:00',0,1,1,1,1,0,1),(35,'2024-08-15 14:00:00','2024-08-15 15:00:00',0,1,1,1,1,0,1),(36,'2024-08-15 15:00:00','2024-08-15 16:00:00',0,1,1,1,1,0,1),(37,'2024-05-31 09:00:00','2024-05-31 10:00:00',1,0,3,2,2,1,1),(38,'2024-06-13 09:00:00','2024-06-13 10:00:00',1,0,3,2,2,1,1),(39,'2024-07-18 11:00:00','2024-07-18 12:00:00',1,0,1,0,0,1,1),(40,'2024-08-29 10:00:00','2024-08-29 11:00:00',1,0,1,0,0,1,1),(41,'2024-10-24 11:00:00','2024-10-24 12:00:00',1,0,3,2,2,1,1),(42,'2024-11-14 16:00:00','2024-11-14 17:00:00',1,0,3,2,2,1,1),(43,'2024-07-16 10:00:00','2024-07-16 11:00:00',0,1,1,1,1,0,1),(44,'2024-07-16 11:00:00','2024-07-16 12:00:00',0,1,1,1,1,0,1),(45,'2024-07-16 12:00:00','2024-07-16 13:00:00',0,1,1,1,1,0,1),(46,'2024-07-16 13:00:00','2024-07-16 14:00:00',0,1,1,1,1,0,1),(47,'2024-05-24 11:00:00','2024-05-24 12:00:00',1,0,3,3,0,0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_user`
--

LOCK TABLES `appointment_user` WRITE;
/*!40000 ALTER TABLE `appointment_user` DISABLE KEYS */;
INSERT INTO `appointment_user` VALUES (1,'foo.bar@citelibre.org','Foo','Bar','foo.bar@citelibre.org',NULL),(2,'jane.doe@citelibre.org','Jane','Doe','jane.doe@citelibre.org',NULL),(3,'conrad.adams@citelibre.org','Conrad','Adams','conrad.adams@citelibre.org',NULL),(4,'conrad.adams@citelibre.org','Conrad','Adams','conrad.adams@citelibre.org',NULL),(5,'bruce.dickinson@citelibre.org','Bruce','Dickinson','bruce.dickinson@citelibre.org',NULL),(6,'agent.smith@citelibre.org','Agent','Smith','agent.smith@citelibre.org',NULL),(7,'al.capone@citelibre.org','Al','Capone','al.capone@citelibre.org',NULL),(8,'henriette.michu@citelibre.org','Henriette','Michu','henriette.michu@citelibre.org',NULL),(9,'pete.blake@citelibre.org','Pete','Blake','pete.blake@citelibre.org',NULL),(10,'joe.jackson@citelibre.org','Joe','Jackson','joe.jackson@citelibre.org',NULL),(11,'billy.zekid@citelibre.org','Billy','Zekid','billy.zekid@citelibre.org',NULL),(12,'sarah.connor@citelibre.org','Sarah','Connor','sarah.connor@citelibre.org',NULL),(13,'carl.knox@citelibre.org','Carl','knox','carl.knox@citelibre.org',NULL),(14,'anna.nasse@citelibre.org','Anna','Nasse','anna.nasse@citelibre.org',NULL),(15,'jill.morisson@citelibre.org','Jill','Morisson','jill.morisson@citelibre.org',NULL),(16,'joan.jett@citelibre.org','Joan','Jett','joan.jett@citelibre.org',NULL),(17,'marge.simpson@citelibre.org','Marge','Simpson','marge.simpson@citelibre.org',NULL),(18,NULL,'Peter','Parker','peter.parker@citelibre.org',NULL),(19,NULL,'Wade','Wilson','wade.wilson@citelibre.org',NULL),(20,NULL,'Harley','Quinn','harley.quinn@citelibre.org',NULL),(21,NULL,'Bruce','Banner','bruce.banner@citelibre.org',NULL),(22,NULL,'Wayne','Campbell','wayne.campbell@citelibre.org',NULL),(23,NULL,'Maximus','Decimus Meridius','maximus.decimus.meridius@citelibre.org',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_week_definition`
--

LOCK TABLES `appointment_week_definition` WRITE;
/*!40000 ALTER TABLE `appointment_week_definition` DISABLE KEYS */;
INSERT INTO `appointment_week_definition` VALUES (2,1,'2024-09-01','2025-01-01'),(3,1,'2024-01-01','2024-06-30'),(4,2,'2024-07-01','2024-08-31');
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
INSERT INTO `core_admin_role` VALUES ('all_site_manager','Site Manager'),('assign_groups','Assigner des groupes aux utilisateurs'),('assign_roles','Assigner des roles aux utilisateurs'),('CREATE_REFERENCE_IMPORT','Import csv file'),('kibana_dashboards_manager','Gestion des tableaux de bords Kibana'),('mylutece_manager','Gérer les patramètres avancés Mylutece'),('profiles_manager','Profiles management'),('profiles_views_manager','Profiles Views management'),('rendezvous_manager','all rendezvous-related rights'),('super_admin','Super Administrateur'),('workflow_manager','Workflow management');
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
INSERT INTO `core_admin_user` VALUES (1,'admin','Admin','admin','admin@lutece.fr',0,'PLAINTEXT:adminadmin','fr',0,0,0,'1980-01-01 00:00:00',NULL,0,'1980-01-01 00:00:00','all');
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
INSERT INTO `core_connections_log` VALUES ('admin','172.25.0.1','2024-05-21 13:28:12',0),('admin','172.25.0.1','2024-05-21 14:57:00',0);
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
INSERT INTO `core_datastore` VALUES ('appointment.site_property.nbplaces','5'),('core.advanced_parameters.access_failures_captcha','1'),('core.advanced_parameters.access_failures_interval','10'),('core.advanced_parameters.access_failures_max','3'),('core.advanced_parameters.account_life_time','12'),('core.advanced_parameters.account_reactivated_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.account_reactivated_mail_subject','Votre compte a bien â”œâŒtâ”œâŒ râ”œâŒactivâ”œâŒ'),('core.advanced_parameters.default_user_language','fr'),('core.advanced_parameters.default_user_level','0'),('core.advanced_parameters.default_user_notification','1'),('core.advanced_parameters.default_user_status','0'),('core.advanced_parameters.email_pattern','^[\\w_.\\-!\\#\\$\\%\\&\'\\*\\+\\/\\=\\?\\^\\\\}\\{\\|\\~]+@[\\w_.\\-]+\\.[\\w]+$'),('core.advanced_parameters.email_pattern_verify_by',''),('core.advanced_parameters.expired_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.expired_alert_mail_subject','Votre compte a expirâ”œâŒ'),('core.advanced_parameters.first_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.first_alert_mail_subject','Votre compte va bientâ”œâ”¤t expirer'),('core.advanced_parameters.force_change_password_reinit','false'),('core.advanced_parameters.lock_reset_token_to_session','false'),('core.advanced_parameters.maximum_number_password_change',''),('core.advanced_parameters.nb_alert_account','2'),('core.advanced_parameters.notify_user_password_expired',''),('core.advanced_parameters.other_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.other_alert_mail_subject','Votre compte va bientâ”œâ”¤t expirer'),('core.advanced_parameters.password_duration','120'),('core.advanced_parameters.password_expired_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.password_expired_mail_subject','Votre mot de passe a expirâ”œâŒ'),('core.advanced_parameters.password_format_numero','false'),('core.advanced_parameters.password_format_special_characters','false'),('core.advanced_parameters.password_format_upper_lower_case','false'),('core.advanced_parameters.password_history_size',''),('core.advanced_parameters.password_minimum_length','8'),('core.advanced_parameters.reset_token_validity','60'),('core.advanced_parameters.time_before_alert_account','30'),('core.advanced_parameters.time_between_alerts_account','10'),('core.advanced_parameters.tsw_size_password_change',''),('core.advanced_parameters.use_advanced_security_parameters',''),('core.backOffice.defaultEditor','tinymce'),('core.cache.status.appointment.appointmentFormCacheService.enabled','1'),('core.cache.status.asynchronousupload.asynchronousUploadCacheService.enabled','0'),('core.cache.status.BaseUserPreferencesCacheService.enabled','1'),('core.cache.status.BaseUserPreferencesCacheService.maxElementsInMemory','1000'),('core.cache.status.DatastoreCacheService.enabled','0'),('core.cache.status.EntryTypeServiceManagerCache.enabled','1'),('core.cache.status.LinksIncludeCacheService.enabled','1'),('core.cache.status.LuteceUserCacheService.enabled','1'),('core.cache.status.LuteceUserCacheService.maxElementsInMemory','1000'),('core.cache.status.MailAttachmentCacheService.diskPersistent','true'),('core.cache.status.MailAttachmentCacheService.enabled','1'),('core.cache.status.MailAttachmentCacheService.maxElementsInMemory','10'),('core.cache.status.MailAttachmentCacheService.overflowToDisk','true'),('core.cache.status.MailAttachmentCacheService.timeToLiveSeconds','7200'),('core.cache.status.MyPortalWidgetContentService.enabled','1'),('core.cache.status.MyPortalWidgetService.enabled','1'),('core.cache.status.PageCacheService.enabled','1'),('core.cache.status.PageCachingFilter(CAUTION:NEVERUSEWITHUSERDYNAMICDATA).enabled','0'),('core.cache.status.PageCachingFilter.enabled','0'),('core.cache.status.pathCacheService.enabled','1'),('core.cache.status.PortalMenuService.enabled','1'),('core.cache.status.PortletCacheService.enabled','0'),('core.cache.status.SiteMapService.enabled','1'),('core.cache.status.StaticFilesCachingFilter.enabled','1'),('core.cache.status.StaticFilesCachingFilter.timeToLiveSeconds','604800'),('core.cache.status.workflow.alertGruConfigCacheService.enabled','0'),('core.cache.status.workflow.notifyGruConfigCacheService.enabled','0'),('core.daemon.accountLifeTimeDaemon.interval','3600'),('core.daemon.accountLifeTimeDaemon.onStartUp','true'),('core.daemon.AlertGruDaemon.interval','86400'),('core.daemon.AlertGruDaemon.onStartUp','true'),('core.daemon.anonymizationDaemon.interval','86400'),('core.daemon.anonymizationDaemon.onStartUp','false'),('core.daemon.AppointmentReminderDaemon.interval','600'),('core.daemon.AppointmentReminderDaemon.onStartUp','true'),('core.daemon.archiveDaemon.interval','86400'),('core.daemon.archiveDaemon.onStartUp','true'),('core.daemon.automaticActionDaemon.interval','30'),('core.daemon.automaticActionDaemon.onStartUp','true'),('core.daemon.changeStateDaemon.interval','10'),('core.daemon.changeStateDaemon.onStartUp','false'),('core.daemon.chooseStateActionDaemon.interval','10'),('core.daemon.chooseStateActionDaemon.onStartUp','false'),('core.daemon.crmClientSender.interval','60'),('core.daemon.crmClientSender.onStartUp','true'),('core.daemon.fullIndexingDaemon.interval','86400'),('core.daemon.fullIndexingDaemon.onStartUp','true'),('core.daemon.incrementalIndexingDaemon.interval','600'),('core.daemon.incrementalIndexingDaemon.onStartUp','true'),('core.daemon.indexer.interval','300'),('core.daemon.indexer.onStartUp','true'),('core.daemon.mailSender.interval','3600'),('core.daemon.mailSender.onStartUp','true'),('core.daemon.notifyHistoryCleanerDaemon.interval','10'),('core.daemon.notifyHistoryCleanerDaemon.onStartUp','false'),('core.daemon.slotDaemon.interval','86400'),('core.daemon.slotDaemon.onStartUp','true'),('core.daemon.solrindexer.interval','300'),('core.daemon.solrindexer.onStartUp','true'),('core.daemon.temporaryfilesDaemon.interval','86400'),('core.daemon.temporaryfilesDaemon.onStartUp','false'),('core.daemon.threadLauncherDaemon.interval','86400'),('core.daemon.threadLauncherDaemon.onStartUp','true'),('core.frontOffice.defaultEditor','sceeditor'),('core.plugins.status.address-autocomplete.installed','true'),('core.plugins.status.address.installed','true'),('core.plugins.status.appointment-desk.installed','true'),('core.plugins.status.appointment-desk.pool','portal'),('core.plugins.status.appointment-filling.installed','true'),('core.plugins.status.appointment-filling.pool','portal'),('core.plugins.status.appointment-leaflet.installed','true'),('core.plugins.status.appointment-management.installed','true'),('core.plugins.status.appointment-management.pool','portal'),('core.plugins.status.appointment-mydashboard.installed','true'),('core.plugins.status.appointment-mydashboard.pool','portal'),('core.plugins.status.appointment-solr.installed','true'),('core.plugins.status.appointment-solrsearchapp.installed','true'),('core.plugins.status.appointment.installed','true'),('core.plugins.status.appointment.pool','portal'),('core.plugins.status.appointmentgru.installed','true'),('core.plugins.status.appointmentgru.pool','portal'),('core.plugins.status.asynchronous-upload.installed','true'),('core.plugins.status.asynchronous-upload.pool','portal'),('core.plugins.status.captcha.installed','true'),('core.plugins.status.crmclient.installed','true'),('core.plugins.status.crmclient.pool','portal'),('core.plugins.status.elasticdata-appointment.installed','true'),('core.plugins.status.elasticdata-appointment.pool','portal'),('core.plugins.status.elasticdata.installed','true'),('core.plugins.status.elasticdata.pool','portal'),('core.plugins.status.filegenerator.installed','true'),('core.plugins.status.filegenerator.pool','portal'),('core.plugins.status.genericalert.installed','true'),('core.plugins.status.genericalert.pool','portal'),('core.plugins.status.genericattributes-address.installed','true'),('core.plugins.status.genericattributes-googlemaps.installed','true'),('core.plugins.status.genericattributes.installed','true'),('core.plugins.status.genericattributes.pool','portal'),('core.plugins.status.grusupply.installed','true'),('core.plugins.status.grusupply.pool','portal'),('core.plugins.status.html.installed','true'),('core.plugins.status.htmlpage.installed','true'),('core.plugins.status.htmlpage.pool','portal'),('core.plugins.status.identitystore.installed','true'),('core.plugins.status.jcaptcha.installed','true'),('core.plugins.status.kibana.installed','true'),('core.plugins.status.kibana.pool','portal'),('core.plugins.status.leaflet.installed','true'),('core.plugins.status.lucene.installed','true'),('core.plugins.status.matomo.installed','true'),('core.plugins.status.mermaidjs.installed','true'),('core.plugins.status.mermaidjs.pool','portal'),('core.plugins.status.modulenotifygrumappingmanager.installed','false'),('core.plugins.status.modulenotifygrumappingmanager.pool','portal'),('core.plugins.status.mydashboard.installed','true'),('core.plugins.status.mydashboard.pool','portal'),('core.plugins.status.mylutece-oauth2.installed','true'),('core.plugins.status.mylutece.installed','true'),('core.plugins.status.mylutece.pool','portal'),('core.plugins.status.notifygru-appointment.installed','true'),('core.plugins.status.notifygru-appointment.pool','portal'),('core.plugins.status.oauth2.installed','true'),('core.plugins.status.profiles.installed','true'),('core.plugins.status.profiles.pool','portal'),('core.plugins.status.referencelist.installed','true'),('core.plugins.status.referencelist.pool','portal'),('core.plugins.status.regularexpression.installed','true'),('core.plugins.status.regularexpression.pool','portal'),('core.plugins.status.rest.installed','true'),('core.plugins.status.sitelabels.installed','true'),('core.plugins.status.solr.installed','true'),('core.plugins.status.solr.pool','portal'),('core.plugins.status.swaggerui.installed','true'),('core.plugins.status.swaggerui.pool','portal'),('core.plugins.status.systeminfo.installed','true'),('core.plugins.status.themecitelibre.installed','true'),('core.plugins.status.workflow-alertgru.installed','true'),('core.plugins.status.workflow-alertgru.pool','portal'),('core.plugins.status.workflow-appointment.installed','true'),('core.plugins.status.workflow-appointment.pool','portal'),('core.plugins.status.workflow-notifygru.installed','true'),('core.plugins.status.workflow-notifygru.pool','portal'),('core.plugins.status.workflow-rest.installed','true'),('core.plugins.status.workflow.installed','true'),('core.plugins.status.workflow.pool','portal'),('core.startup.time','May 21, 2024, 7:49:15 AM'),('core.templates.currentCommonsInclude','Bootstrap5Tabler'),('core_banned_domain_names','yopmail.com'),('leaflet.icon.icons.default.installed','true'),('leaflet.icon.icons.green.installed','true'),('leaflet.icon.icons.red.installed','true'),('leaflet.icon.icons.yellow.installed','true'),('matomo.site_property.server.http.url','http://localhost/'),('matomo.site_property.server.https.url','http://localhost/'),('matomo.site_property.site.id','1'),('matomo.site_property.widget.auth.token','cfa9a798abd584817e2eb94d7bc14bb0'),('mylutece.security.public_url.mylutece.url.createAccount.page','jsp/site/Portal.jsp?page=mylutece&action=createAccount'),('mylutece.security.public_url.mylutece.url.doActionsAll','jsp/site/plugins/mylutece/Do*'),('mylutece.security.public_url.mylutece.url.doLogin','jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp'),('mylutece.security.public_url.mylutece.url.doLogout','jsp/site/plugins/mylutece/DoMyLuteceLogout.jsp'),('mylutece.security.public_url.mylutece.url.login.page','jsp/site/Portal.jsp?page=mylutece&action=login'),('mylutece.security.public_url.mylutece.url.lostLogin.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=lostLogin'),('mylutece.security.public_url.mylutece.url.lostPassword.page','jsp/site/Portal.jsp?page=mylutece&action=lostPassword'),('mylutece.security.public_url.mylutece.url.modifyAccount.page','jsp/site/Portal.jsp?page=mylutece&action=modifyAccount'),('portal.site.site_property.admin_home_url','jsp/admin/AdminMenu.jsp'),('portal.site.site_property.avatar_default','themes/admin/shared/unknown.svg'),('portal.site.site_property.back_images','themes/admin/tabler/images/bg_login1.svg, themes/admin/tabler/images/bg_login2.svg'),('portal.site.site_property.bo.showXs.checkbox','1'),('portal.site.site_property.bo.showXsWarning.checkbox','0'),('portal.site.site_property.email','<webmaster email>'),('portal.site.site_property.home_url','jsp/site/Portal.jsp'),('portal.site.site_property.layout.darkmode.checkbox','0'),('portal.site.site_property.layout.menu.checkbox','0'),('portal.site.site_property.layout.readmode.checkbox','0'),('portal.site.site_property.layout.user.darkmode.show.checkbox','1'),('portal.site.site_property.layout.user.menumode.show.checkbox','1'),('portal.site.site_property.layout.user.readmode.show.checkbox','0'),('portal.site.site_property.locale.default','fr'),('portal.site.site_property.login.image',''),('portal.site.site_property.logo_url','themes/admin/shared/images/logo-header-icon.svg'),('portal.site.site_property.meta.author','<author>'),('portal.site.site_property.meta.copyright','<copyright>'),('portal.site.site_property.meta.description','<description>'),('portal.site.site_property.meta.keywords','<keywords>'),('portal.site.site_property.name','CiteLibre Rendez-Vous'),('portal.site.site_property.noreply_email','no-reply@mydomain.com'),('portal.site.site_property.popup_credits.textblock','&lt;credits text&gt;'),('portal.site.site_property.popup_legal_info.copyright.textblock','&lt;copyright text&gt;'),('portal.site.site_property.popup_legal_info.privacy.textblock','&lt;privacy text&gt;'),('portal.site.site_property.portlet.title.maxlength','75'),('themecitelibre.site_property.bannerMessage.CloseButton.checkbox','1'),('themecitelibre.site_property.bannerMessage.htmlblock',''),('themecitelibre.site_property.bannerMessage.Position','bottom-right'),('themecitelibre.site_property.bannerMessage.Title',''),('themecitelibre.site_property.bannerMessage.Type','info'),('themecitelibre.site_property.footer.about','CiteLibre est faite par et pour les villes, sur les principes de l\'open source. <br> <a class=\"btn btn-link ps-0\" href=\"http://lutece.paris.fr\" title=\"[Nouvelle fenêtre] LUTECE\" target=\"_blank><img src=\"images/poweredby.png\" alt=\"Powered by LUTECE\"></a> '),('themecitelibre.site_property.footer.about.title','A propos'),('themecitelibre.site_property.footer.cookieLabel','Gestion des cookies'),('themecitelibre.site_property.footer.cookieLink','#cookiecitelibrepack'),('themecitelibre.site_property.footer.links.title','Liens importants'),('themecitelibre.site_property.robotIndex.checkbox','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
INSERT INTO `core_user_password_history` VALUES (1,'PBKDF2WITHHMACSHA512:40000:c70fa5d392001060a5e4e1383ace3180:a27f5d08fd0057bd0a3b3dab1f52a2acec45b56ff23d4869bf849bd68010fee9cdf484a17c09bfc4c447394e43c2d0365c320d5e656224891970d085dafd541542bb48f2a36dfb322dca482cef148b7ac14b01cedd6058cf537cec7ee0950a422c6c38da600967f88e5f95a8e3fcd52fca2117d3b64eee6c31b704d59c4a58da','2024-05-21 07:54:38');
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
INSERT INTO `html_portlet` VALUES (2,'<p>Affichage de la page <a href=\"jsp/site/Portal.jsp?page=appointmentsearch&amp;category=Avocats\">Cartographie</a> pour les services de rendez-vous détéritorrialisés</p>\n<p class=\"logo\">&nbsp;</p>'),(4,'<h2>Get into the Back Office of this demo site</h2> \n<p class=\"mb20\">Sign in as administrator with <em>admin/adminadmin</em>.</p> \n<p><a class=\"btn btn-primary\" title=\"Access to admin [Open  in new window]\" href=\"jsp/admin/AdminLogin.jsp\" target=\"\"><span class=\"fa fa-door-open\">&nbsp;</span> Enter Back Office</a></p> \n<p>&nbsp;</p>'),(5,'<h3>Resources</h3> \n<hr> \n<div class=\"row\"> \n <div class=\"col-xs-12 col-sm-6\"> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"GitHub site [Open  in new window]\" href=\"https://github.com/lutece-platform\" target=\"_blank\"><img class=\"media-object\" src=\"images/local/skin/github-logo.png\" alt=\"Github logo\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Access to our code repository</h4> \n   </div> \n  </div> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"Docker Hub site [Open  in new window]\" href=\"https://hub.docker.com/u/lutece\" target=\"_blank\"><img class=\"media-object\" src=\"images/local/skin/docker-logo.png\" alt=\"Docker images\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Grab some Docker images to run demos</h4> \n   </div> \n  </div> \n </div> \n <div class=\"col-xs-12 col-sm-6\"> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"Lutece Wiki site [Open  in new window]\" href=\"https://fr.lutece.paris.fr/fr/jsp/site/Portal.jsp?page=wiki&amp;action=changeLanguage&amp;page_name=home&amp;language=en\" target=\"_blank\"> <img class=\"media-object\" src=\"images/local/skin/wiki-logo.png\" alt=\"WIKI\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Read our technical documentation</h4> \n   </div> \n  </div> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\" Twitter Site [Open  in new window]\" href=\"https://twitter.com/LuteceNews\" target=\"_blank\"> <img class=\"media-object\" src=\"images/local/skin/twitter-logo.png\" alt=\"Twitter logo\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Follow us on Twitter</h4> \n   </div> \n  </div> \n </div> \n</div>'),(8,'<p><strong>RendezVous</strong> est un service numérique qui comprend un ensemble de fonctionnalités rendues possibles grâce à l\'ajout de serveurs tiers permettant notamment les statistiques de visites (<strong>Matomo</strong>) et métier (<strong>ElasticSearch</strong> et <strong>Kibana</strong>), l\'authentification en back office (<strong>keycloak</strong>) ou encore l\'affichage des disponibilités sur une carte (grâce aux indexations sur <strong>SolR</strong>). Seuls les emails sont émulés par un outil (<strong>FakeSMTP</strong>) permettant d\'intercepter tous les envois effectués depuis l\'application pour vous donner une bonne idée des possibilités. Ces envois seront à pérenniser en utilisant votre propre serveur de messagerie d\'entreprise.</p>\n<p>Voici l\'ensemble des liens vers ces applicatifs, avec les identifiants des comptes utilisateurs vous permettant de vous connecter aux interfaces d\'administration :</p>'),(9,'<style>\r\ntable {\r\n  font-family: arial, sans-serif;\r\n  border-collapse: collapse;\r\n  width: 100%;\r\n}\r\n\r\ntd, th {\r\n  border: 1px solid #dddddd;\r\n  text-align: left;\r\n  padding: 4px;\r\n}\r\n\r\n/*tr:nth-child(even) {\r\n  background-color: #ff3300;\r\n}*/\r\n</style>\r\n<table>\r\n  <tr style=\"background-color: #ff3300;\">\r\n    <th>Service</th>\r\n    <th>Identifiants</th>\r\n    <th>Commentaires</th>\r\n  </tr>\r\n  <tr>\r\n    <td><b>Back Office RendezVous</b><br/><a href=\"http://localhost:8080/rendezvous/jsp/admin/site/AdminLogin.jsp\" target=\"_blank\">(lien)</a></td>\r\n    <td>Identifiant : admin<br/>Mot de passe : adminadmin<br/><i>Lors de la première connexion, il vous sera demandé de le modifier</i></td>\r\n    <td>Le \"back office\" est l\'interface d\'administration de votre application de prise de rendez-vous. Il vous permet de gérer les comptes et leurs autorisations associées, l\'éditorial, le paramétrage de votre application, et de gérer les rendez-vous pris par les usagers au quotidien : créer vos agendas, définissez vos disponibilités et les notifications à envoyer, et laissez l\'application faire le reste.</td>\r\n  </tr>\r\n<tr>\r\n    <td><b>FakeSMTP</b><br/><a href=\"http://localhost:1080/\" target=\"_blank\">(lien)</a></td>\r\n    <td>Pas d\'identifiant nécessaire</td>\r\n    <td>FakeSMTP est un petit outil permettant d\'intercepter les notifications envoyées sur un port particulier pour en afficher le contenu avec une légère mise en forme. Il suffit de cliquer sur une ligne de notification pour déplier le contenu. Cela vous permet de tester les envois effectués par l\'application.</td>\r\n  </tr>\r\n  <tr>\r\n    <td>Matomo<br/><a href=\"http://localhost/\" target=\"_blank\">(lien)</a></td>\r\n    <td>Pas d\'identifiant nécessaire</td>\r\n    <td>Matomo est un logiciel libre et open source de mesure de statistiques d\'audience. Lorsqu\'un usager navigue sur l\'application, les pages qu\'il consulte, le temps passé, ainsi que les éléments techniques de son origine géographe, et son navigateur internet sont consultables depuis cette interface, mais également dans le back office de l\'application (menu \"Site\" -> \"Statistiques Web Matomo\").</td>\r\n  </tr>\r\n<tr>\r\n    <td>SolR<br/><a href=\"http://localhost:8983/solr/#/\" target=\"_blank\">(lien)</a></td>\r\n    <td>Pas d\'identifiant nécessaire</td>\r\n    <td>SolR est une base de données optimisée pour la recherche, conçue sous licence libre. Elle est utilisée pour indexer les créneaux disponibles de façon optimisée et pour restituer ces disponibilités sur une carte géographique.</td>\r\n  </tr>\r\n  <tr>\r\n    <td>ElasticSearch / Kibana<br/><a href=\"http://localhost:5601/s/dev/app/home#/\" target=\"_blank\">(lien)</a></td>\r\n    <td>Pas d\'identifiant nécessaire</td>\r\n    <td>ElasticSearch est également une base de données permettant l\'indexation optimisée de données. Cette pile est utilisée pour stocker les statistiques métier liées à l\'utilisation du service (ex. combien de temps à l\'avance les rendez-vous sont-ils pris en moyenne, quels sont les créneaux les plus prisés, une répartition des rendez-vous sur votre territoire, les chiffres liés aux reports, annulations, surbooking, etc.)</td>\r\n  </tr>\r\n  <tr>\r\n    <td rowspan=\"2\">Keycloak<br/><a href=\"http://localhost:8081/admin/\" target=\"_blank\">(lien)</a></td>\r\n    <td>(<i>Compte admin</i>)<br/>Identifiant : admin<br/>Mot de passe : admin1234</td>\r\n    <td rowspan=\"2\">Keycloak est un outil open source permettant de l\'authentification unique et la gestion d\'identité, développé par la communauté WildFly et hébergé par RedHat.</td>\r\n  </tr>\r\n  <tr>\r\n        <td>(<i>Compte utilisateur de démo</i>)<br/>Identifiant : test@paris.fr<br/>Mot de passe : test1234=TEST1234</td>\r\n  </tr>\r\n</table>'),(11,'<h2>Choisissez le meilleur parcours usager pour accéder à vos agendas</h2>\n<p>Utilisez le module listant tous vos agendas automatiquement :&nbsp;</p>'),(13,'...ou bien utilisez la carte géographique comme point d\'entrée de vos services déterritorialisés...\r\n<p class=\"text-center\">\r\n<a class=\"btn-solid-reg\" href=\"jsp/site/Portal.jsp?page=appointmentsearch&category=Avocats\" target=\"_blank\" title=\"Cartographie\">\r\n<span class=\"icon\"><i class=\"ti ti-map-2\"></i></span>\r\n<span class=\"text\">Cartographie</span>\r\n</a>\r\n</p>'),(16,'<section id=\"lutece\" class=\"lutece\">\r\n    <div class=\"container\">\r\n        <div class=\"row align-items-center\">\r\n            <div class=\"col-lg-6\">\r\n                <div class=\"lutece-content\">\r\n                    <h1 class=\"my-3\">CiteLibre rendez-vous, votre outil clé en main</h1>\r\n                    <p class=\"font-weight-bold\" >\r\n                        FR : CiteLibre est la suite logicielle de services numériques clé en main réutilisant les composants du framework open source <a href=\"https://lutece.paris.fr/\" title=\"Site Lutece\" target=\"_blank\">Lutece</a>. Elle permet aux municipalités de tester, réutiliser et de paramétrer les services disponibles pour répondre à leurs besoins. CiteLibre est gratuit, open source, entièrement personnalisable et sécurisé.<br/>\r\nFélicitations, vous avez déployé votre service numérique de prise de rendez-vous. Prochaine étape, créer votre propre agenda. Toute la documentation est disponible <a href=\"https://lutece.paris.fr/support/wiki/howto-operational-plugin-appointment.html\" title=\"Site Lutece\" target=\"_blank\">ici</a>. <br/>\r\nAu fil de l\'utilisation de l\'application, vous pourrez exploiter des outils d\'aide à la décision (statistiques métier réalisées avec la couche ElasticSearch / Kibana). Mettez en place les règles de gestion propre à vos usages et appropriez-vous les détails des notifications envoyées à vos usagers.\r\n                    </p>\r\n                    <p class=\"font-weight-bold\">\r\n                        EN: <i>CiteLibre is the turnkey digital services software suite reusing components from the open source framework <a href=\"https://lutece.paris.fr/en/\" title=\"Site Lutece\" target=\"_blank\">Lutece</a>. It enables municipalities to test, reuse and parameterize the services available to meet their needs. CiteLibre is free, open source, fully customizable and secure.<br/>\r\nCongratulations, you\'ve deployed your digital appointment booking service. Next step is to create your own agenda. The full documentation is available <a href=\"https://lutece.paris.fr/support/wiki/howto-operational-plugin-appointment.html\" title=\"Site Lutece\" target=\"_blank\">here</a>.<br/>\r\nAs you use the application, you\'ll be able to harness decision-making tools (business statistics produced with the ElasticSearch / Kibana suite). Set up management rules specific to your uses and take ownership of the details of notifications sent to your users.</i>\r\n                    </p>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-lg-6\">\r\n                <img src=\"images/site/city-home.svg\" alt=\"\">\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>'),(18,'<div class=\"lutece-content mt-5\">\r\n                    <h2 class=\"my-3\">Connectez-vous à l\'administration de l\'application</h2>\r\n                    <p class=\"font-weight-bold\">FR : Connectez-vous à l\'interface d\'administration en utilisant le login <strong>\"admin\"</strong> et le mot de passe <strong>\"adminadmin\"</strong> (vous serez invités à réinitialiser le mot de passe). Vous pourrez alors personnaliser l\'agenda de démo.<br/>Vous trouverez également tous les <a href=\"jsp/site/Portal.jsp?page_id=3\" title=\"Liens utiles\">liens utiles</a> avec les informations de connexion pour utiliser tous les services mis à disposition dans l\'application.</p>\r\n                    <p class=\"font-weight-bold\">EN: <i>Log in to the administration interface using login <strong>\"admin\"</strong> and password <strong>\"adminadmin\"</strong> (you will be prompted to reset the password). You can test each of its features and customize the demo calendar.<br/>You will also find all <a href=\"jsp/site/Portal.jsp?page_id=3\" title=\"Useful links\">Useful links</a> with connection credentials to use all available features.</i></p>\r\n                    <p class=\"text-center\">\r\n			<a class=\"btn-solid-reg\" href=\"jsp/admin/AdminLogin.jsp\" target=\"_blank\" title=\"Go to admin login page [Open in new window]\">\r\n				<span class=\"icon\"><i class=\"ti ti-user-cog\"></i></span>\r\n				<span class=\"text\">Administration</span>\r\n			</a>\r\n		</p>\r\n</div>');
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
INSERT INTO `identitystore_attribute` VALUES (1,'Genre','gender','0:Non défini /  1:Homme / 2:Femme',0),(2,'Email','email','',0),(3,'Date de naissance','birthdate','au format DD/MM/YYYY',0),(4,'Lieu de naissance','birthplace','',0),(5,'Téléphone portable','mobile_phone','Réservé pour l\'envoi de SMS',0),(6,'Téléphone fixe','fixed_phone','',0),(7,'Téléphone fixe ou mobile','phone','',0),(8,'Nom usuel','preferred_username','',0),(9,'Adresse postale','address','',0),(10,'Prénom','first_name','Prénom usuel',0),(11,'Nom de famille de naissance','family_name','',0),(12,'Numéro de rue','address_number','Champ d\'adresse : numéro de rue ',0),(13,'Suffixe','address_suffix','Champ d\'adresse : suffixe de numéro (bis,ter...)',0),(14,'Rue','address_street','Champ d\'adresse :  rue, avenue...',0),(15,'Immeuble','address_building','Champ d\'adresse : immeuble, résidence...',0),(16,'Etage','address_stair','Champ d\'adresse : Etage, Numéro d appartement',0),(17,'Code postal','address_postal_code','Champ d\'adresse : code postal',0),(18,'Ville','address_city','Champ d\'adresse : ville',0),(19,'Pays de naissance','birthcountry','',0),(30,'(FC) Prénoms','fc_given_name','Format Pivot FranceConnect - Liste des prénoms',0),(31,'(FC) Nom de naissance','fc_family_name','Format Pivot FranceConnect',0),(32,'(FC) Date de naissance','fc_birthdate','Format Pivot FranceConnect - format YYYY-MM-DD',0),(33,'(FC) Genre','fc_gender','Format Pivot FranceConnect - male / female',0),(34,'(FC) Lieu de naissance','fc_birthplace','Format Pivot FranceConnect - Code INSEE du lieu de naissance (ou une chaîne vide si la personne est née à l\'étranger)',0),(35,'(FC) Pays de naissance','fc_birthcountry','Format Pivot FranceConnect - Code INSEE du pays de naissance',0);
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
INSERT INTO `workflow_icon` VALUES (1,'ValidationUsager','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ó\0\0\0Ì\0\0\0é‡–—\0\0#czTXtRaw profile type exif\0\0xÚÕœYv9lÿ±Š^æa9Ïé¼å÷5D’\"%R¥\Z~žT%RÉÌÀs3‡‡Ìþÿ{Ìÿð«¥dML¥æ–³åWl±ùÎ7Õ>¿ž¯ÎÆûçýµÂëgîóëfÎ×</éM¯7æýzçõôã%¾^Ÿ_7åu!__zýàí‚Awö|óz_}](øçu÷ú»i¯Ïõøa;¯ÿk»÷Ô‡žýô÷X0ÆJ\\/xãwpÁògÕ‚þ¡ß¯ŸxÞäBáû2Æ¿¶yÿö\'ãòµíl½#|6…±ùõ†ü“^¯»ôµí®…>®È½}ë?ÿ Tÿfµ_lwÎªçìgw=f,•ÍkSöu‰ûo˜2Üe~þO|_îïÆïÊ\'[xsð{\Z×œÇÚÇE·\\wÇíûuºÉ£ß¾ðÕûéÃ}­†â›ŸA.ˆúíŽ/¡…eBÅ?¯^öïkq÷¾íÞoºÊ—ãÞq1|ùëoóÕ‹ÿä÷û…ÎQè:wY®­X—Wè±yNò.\\àÎË¦éÚ÷þ6ïnýñKŽ\rx0]3W6Øíx.1’û[áú9ð¾d£±“]Y¯`\"îXŒxÀf’ËÎï‹sØ±âŸÎÊI?ð€KÉ/g¾	!ãœêuo>SÜ}¯OþyhÁJ‘‚kZè8+ÆDü”X‰¡žBŠ&¥”SI5µÔsÈ1§œsÉÂ¨^B‰%•\\J©¥•^C5Õ\\K­µÕÞ|@Xj¹Ójk­wnÚ¹tçÓwô>ü#Ž4ò(£Ž6ú$|fœiæYfmöåWX¤ÿÊ«˜UW[}»M(í¸ÓÎ»ìºÛî‡X;áÄ“N>åÔÓN÷ÚË«Ÿ½æ~òÜï½æ^^“Çâ}_ùá5^.åíNp’ä3<æ£ÃãE8Ég¶º½<\'ŸÙæIŠäñšKrÎròŒÛùtÜ»ï~xî·~3)þ-¿ùï<gäºÿÂsF®{yîW¿}áµÕoE	×AÊBÙÔ†°ñ†]»¯]5éùzr=ØâØÎ(gÏ²}_yÌZ–Ç™ÃRùœ‘òZ³Ça²­«dvÛ\ZÆÈÍF^šgù“v9Êó8ÎŽÍîšksz­“‹©tU\'—æ:u˜AÖuê,qð«Œ3Üˆ¡4¿F«Ù«\r‘ººco)o•ØºKÞÑ¬a’Ó¬Ò™¨8	8_3cr¾¬šv,;­•úìÇÎÙFu±G®Ü¹„VO,is¥r×m|²Ä,›]\Z]/Ù+±7•ãÄ¿ùšV-3œSK1½—	îÇ)™9W¿°ê\nì©â„=Ø¬ÂÔ{€³LþBJ|ë¬?uîŠrÆ„l	ß¬ôRÜ¬Œž	Ð”ê®ìbÍ{r\Z±äE´î6¼¯8Î×³©k¡.áÏÙB*×ÿÖsEúîÄ´Om=Ñ•’‡\'If“EÆŒ¥HƒxXb´&œšR\nZÓ–â¶-|\'Ô#ÏåýÞ©¢÷\"×Z3o¿ŽÏÇŽ–ÏXu^<\"rï–ö\nI_ƒ\'—¶®×œâ=kýþ«ñø°Æ·Ûs…QjX¬¥écq3÷ÔÚªíÒ,Ù ÔI;¢z\n$vî#³„eÆ©¹sc´ƒq6^çsT_²’»l¢%8’jkïPD.Óãzc(úSÑ¿×Ð_›=œˆ»ÙîÊý‰ÇU÷u_‡êûé¨©8)ð&1\rno<Ù•5éFk©»qO]vG€/÷°¨ÒÞNc{kÓE¶!QŒÅè‡xU€î0t¿JÖ_Û×âžua‡Bæ0èp3¤7RÕŒ4ÉÓ°ì˜ëKT&“è{âk²¨à´ë42ÒïÚ¥&Ù\Z*(l*ƒikÜì$\0Ç7Æü+[š/ŒÙÎr²/XÛ_bÉ÷=-Œ|ß;IÒõma ä³6üð,îû¥}\\ïÿ¼0s?‹ÒÞ^”}_Ö³¨gIºñ]Ò›µÌsýb-½*]6\rdý}%1ö³ÉÍ/IûšÔúŠ’6$w¹e$Ÿç2™‚Êj|ê¬‹\'Æö ¶c‰ „^õ­œøñ€Õ3€òAÝx\"{Qy¥½Ôg›8‰ØrLn´ªþw]16ñEU\"2Ër“l.”ÚQ¸­àæ(ñD!CÓ]O”Þ7ú¥ï7®N	ý[¿z°¸Ó§Ð¶Sü!5eØ•öô…rÞ÷kA¨	fGlC­~G¡§RÕ-ÀÈlHÉgmz¾º£Å9`\'6P›ß`R‡”;‘9¬†\0[(Ñ\rA¨¤-ì*î“ý0âF	K÷‰¯K“ùËÚõ‡_\\ˆ\rŸºl2W`åL¹›#.ê?)/Ü“µó)ÌÍ»Ôx™:½í9®’ÚƒF\0îÁ~Àrî04X_s‡$ªÑ €\\e@±\\…²©¹ÝàÙÀ¥3äÇí	ºÅòú¢ºüòŒ_X¾šŸ_ø§_¿¼Ði¯%~Z ¯¿/äÀ Š¹DtñÃaRÈ×=&‹~¯yÿQÉ92é€\'i•á[+U1‚Ò×îP8\"Vä†ØÒÇyŠpÈÉaÊ?¦0Ò+_Ê³¹çÈªõŽµZ(Ìe#CÝ})a¶Wæˆ3_HCíq¡£×ØHí¿ºØÅì¿{±dØ™NŽ’ŒÓu“Ø¦àŠ²Â„¸Ææ Š-#Ø&dfìåcïŠô›ŠµÕT¹[ ÎÁ|ÇŒµ™á<¯êj¡\rôÇbÅÊÛÜ†2Õ¹!Ä8HO\\–„ã(HË¬M¦Ì#>†UC.‹8¤\ZÁÂ­\0ù\n‰ÄßTh+8Ú(\Z“bh‘’Àn„ˆÂéJ-ˆ²bÕkDví)ò,ð\0ð9ÝŸO“ÂH­`Þå÷å˜é jo!!_«°\0*Ú‡Ø»AÔÞ-¯æÓËöo–ÙŸ¼»Ñ|¿8ñO.e¾Œ¯p)óM¨þíK™³ÿ›K™ocþo^Êü&}þÖ¥ÌÝ!oä³.÷Õ[¦ÈÚ4ö¨+…d‘^»ÃÄµË€m€†;EPÖGÖ@I‰lTÉÓû{õB´LÈFùì[©»ôÝ ‹érÉéÊØÉ\\é*±#úCîˆ}à£\\èšNw@+Šc‹á‘={:x¯¨)ëŸâ¦¯åz«½(lÐ²\"·Y‰ª%\\ããõ•±ä;Ú*¹+‘×#¢Ú±iÈU\\`\'.\0,V·É†\ZøKâ§ÇÔÊ%òÍî	èÐ•ì\Z6Rû-\Z¨wÄ^˜(ÎÑ)]·úš›íoø²E 9X$hG†0Á·Œ*CmÀÖ°µµœ€âŽ`dÄ]F›ÃÝøÁ¯UúšÏUÁRBB=ÉQ@4}äa¾]Í\'*ˆ‡ýÍºu\'Š:‚šõào¯U¥ž·QyÎ§7‹Ê3„Tá{5,)Ï¢=uÚ+¯«(2N¨‡¼Qs]ÝŸu\rY=\"VüÉ@€¥8$08â|¢B,þ\\ªw‡sàYjÛ13©„¯ÚÄ™#°cO;;ø$Ú×ãÞÙ®zÝ%O(v\'“¸ñázíæìíðFöª‰b‹à~ä˜Ô‘ˆ‚u	ýÀ\"—å+óÎ/U\0>¨‚0’~º“îÓíM¥‡6?jE1ÄJQõ‡T_ýÈrëe¹é\Zù>K™H9„55s±”¯R$nuº!VŽ2YÈØNðªÎÇs{p5‚Sð\"q·†6„ó#ü&ó\"+¹Êºßg­±ÝºàÚŸ~ŠIîê]ûÿŒ¤á„Æ¬ƒB?sêîÕcâÛ…^Æžæi3Õ«‚ýÓg\"”}[PøM:=zÛõ7½ÝïjÒe¦åîæWf	³Žîü„A¨Mç8‹Zî-–¹mÀ¶óA‚wÊE?Çhf\r±ApçqíR·0@–[òôÞˆwã^¨¥¸ó¹Ï‡Ë¶­<ÖÂ¢×#º2)uöØâ°ê$(,H6T_aoQœ]=¶¿G/à®¦ÜãÌ|c)a‚áÿñ«èx™÷ó[(¿âXë:$<&ÿàÕñwq\rÿ­Ô0¿Ó\Z€zøë8+¢lË¸k—{nœ\\÷\\çÈ5üÎ×Boa\rìå@Y4\n«¥IÌ;×\'^kI­+Wu†î÷aa±ð…h$DYhÌ€î•#!Öºt&Á\\}t»Õð…{Ú>Aô4=µQÎlAß<¡3N/™š`%û~áNdqùIŠX×ÖiÔVR¿;4øWÍU€½—™ÂQ³XÍCÂT…šÇ\\=¸göì,t DSƒj³k˜¹®ŠªpœjÔÙä©ª‡¶4uÐ¹f®M†ºJ†C¢O%a“wp~Mn¾\rYkQmÅÓ*ùìäû;‚	Ÿ¨ýã	ÁMï¨H“Hœºwù@ÓÔ½£hy´-‰¿©À”ÖW÷n‡„Èˆ_ð¯~¹ÞÃ\"\n©mÜjÃÓðÐÎo,Á5”5R„·Úˆ³Á§Ä‰C’ýUáÖzÚPÈQ½YVë&†qc;oõuÇêÐ^™È‹§öˆdBhF}zIåvXÞ–uÏ&Ïy[Ö³(û–Væï×ÊEA,Íäã‰2ÅbVÒ‰„§‚e9\"jã¸á rò¡C-j\00tŠ¥›†§ù„EWd#(^¯^míµjc½CÒo\Z\nïz]yªM]M{÷õbÿð—lòpãÅí‡F\0Bõ=“§*eïçòõ*^êr½Ê—î :éfàºtàT3Á;ÔÏwVéúšdfœ½[‹/ê2Ôìì\\!YÁd€õÝÈ†•!ù°<Hâxe—ðMè\\r ²aÖuOÖ|¬¤Üì˜ÅÁ™¢‡ûì$†åü¢@¸‘ÔŽ×·¼5Í\'¼šòSrçiÊßƒúù”ìC@ÚŠ#â?+tñ€dOHi©³õkÚ®§äE=Ì/Wˆïôêƒ‚¨šª&)`˜}¤Vä\r¨‡\"N\rÌv\'”‘Ñï{jx»•5´=^ï)J˜ÌÑZ#ê°‹+¬„†ÛÕ{òes¥®éôà\0Y=”\nnh!IJ¸Ñ·š°p/qjþ€*ò6ÉÔVžeÀœ[¦Ñ½KÛeõ×÷æSÀ\"8WÈ÷áà”L#;¢e“:ÍÚ»íB|¢iFD®WèYº0Z˜iz“@¯Bä	ÄÎ*3ÌÊÝ³\ruÒQ ¯\"e÷4è$,™^tb·T€Ó‚±LJid_±-R‡eOd.´I— Æ†¨\n;Å‚¬‡øTÐuÓ&kÚµ:Û×º7T¤¢ƒsh¢¤c 9ŠNÄˆ*¬êÎ-\0!÷àÕ£©ÑL(|9‡ÒÅ}3Ïçx+Så`Zpœ€Ã]«Í/A\0èŠ,Þý†d7;]<[Áiì¨¼§dµi;ÝÖHÆR»ÒÐ&ƒîòœx³O¸&¶Wû©š÷\"„¨2Ä	Œ±ˆVoâ}EÅ“;DÀB|.  ´¹2YV‡ÎÐêÄ§c#0SV\\îqY‹n7Ú[TÎSŽDoØû@²àb¬Ë¦U–õÄ /Øg–þ›ˆ4ÇÞ¨Þ¨¤N\'*ßjÀ#G¤ÊÀ>ðº–¢ïŠÉi»@¡ñ\08§ö”y—!(I/Í\\å¸¦lÎ:Õë¾,!¬çtñC,âG°F²ªÐ¹	œ‹$¯FX*(wÃ´Yé¼HZJE{›.\"wW/î9w¦«©” «Õƒª^Ñu\\Ç…ú8xîƒ_øˆ:°×\\’»[”ê‹Ù6Q#óyš(dÃf‚œÕ’Š\\nì¢ïw€œ÷>[{õl5ô\r¡÷jø¤^£_„š)uÉåˆ°†Ám ø€#î)´KÔ.¡4\'vW5ØRž…¨ŽúCl²bÅö°–v<³]‹b‡Ç/SÈ˜ªåç€²Ð©ÛÑš\'#S1ÁqðóD±ûPw¯üˆ\"•ZÔ¡€J÷\0b„”LX‰‡÷Ü–¬‘u(ó¤ûögîŽmNmÚ4û”;\rÁëþ ô[\0sO)a™ÖIëÔ)ÛÒõfµOG5óMÝûÊë‹ûÿ¤¬ÚUèº7ÏÈ€`Ø:¬é›SíbKš\0p ŒF‹;%‰¤ i lÝu*YL^ÀƒÍ£P* 3ü–š¢°Õ·LÅh¨†»‘ªúlÇÞ\ZÁŒ¾ïXá’÷Û\ZSÂ;Ém:O\'Å\n)Ž:¹d¢OòÈÞ¢w;½ð¬ *M)Îê!k„v©i.‰)àª|¸RÔ)lne°\Z.îöH,üN}}I5:¦äo.J:ó¥þý‰@Ü&áRWG¡ËÌ\r²EŒTnÒ\0\nõ#oËU0Fo)hd¥7ì«þë¿£3b3Äé6“xÈT­þbPŠrxUÊÄsSÖé*…\0™Q©H€‘Xž ;¹&ôþD•ÄXÂm×UŒn¿îÎaÓw^c>Êëyó?‹É£Wà  H®b9˜´¦¨{]ËœÓFœ|»pÏFÒsê¬ë¼\0å¶¥zZØˆSjü)~Ÿœ¸|Âó®ª[¥‚8QÂÀØÇû¥r±¸0Ú V§iX³~”\0N±©¦j‡‰˜Í‚‘€–è\n.è6uœ6$²ªè¨u¡\ZÀ\" ±\r,ht¿Ú8ýå„öœäZ:²XHß-ï)–Éé´x7ª4ú¤MÛ(/°F…¿G.jÃj%âˆô!¼b5[ e„5È‰<ãÒÏ¡oä-Öží)] ˆºF’SG°7NÏXKµ„¤\'ñ¦ƒ´HÀhuEt×ÄRLÔ>?)Ø	B\0è”E°×˜ÌÂÔ:FáÓ8•‚¡mþR\'Ÿ!ï*„2“(6x3ÕÆ½DS[8ž<Â `Sª\n5ÙzSTèØÒhîc.šÕiÁ4r[vÔ\r È Oê‹\"j)ù èã¨yeD\rÈ<4ÇUO„Ž QáuF³c ØàsgP:\0—˜•šz®šð=:\"¤®ª %X.\ZÁV]^ƒ í}Ã’«¨èZš‚Ò*áú4‡²Œ˜XÑ»VÎ*)1öŽ‚úCíÙ¨~YúèÂãœ¾WÞŒév¼:ä\"‚`xXp%JÉ3aÎ\r:,~aòÝ µ&G0°KnXµå•¨.@¥E7ý®Èø>¶¨<¤Û\rc¯*°jw#\\*qZ%X÷ç=›×‹·=\ZdùÂN¥Ñìë\noŸ}ZÊVŸ_¤–»}õœaþ8ÕISx NóÀ]³Sãò(ø/4ñPÔ£ßžÖ›o~\0-‘¦(\rgHÒH­\n—&vˆ§¥†Q9Yj‘r4uj_Ä™HOÄÞK’GÀ\n¸Çß·îÔyA‡báj—ïSk\rÔj@kÀ’ô_D¨ fA4dÑ•§h}©/çušYÉA_B7èª	+ÒØ!ñEe:ž2´>ñv=(ÇÔÉÅI€µ®JÒ4Ií\'mÀÔŠ‰ðK˜ØuÔD|æ‰(„«à¤ƒŒbçˆiBnÀã(áWÆ!4µ›Ïóh¼î§ò]ð0IÝvB¥ÝS¥]¦®Dà¡Ø¸:}h4êŠL7nB£KM÷@Bó£«YG^kbñÎxJlÁ!\\Ðœ\râ’¶ä%)bá¸)TÔ«Ï^¼»\ZŠ$€Ð\n&k\ZSR4ëf\'Áä\\õ\0¼ÛÝ$ÜìÀõ\ZH³ßç{àÃ·?Ó¨ÌCõ‰¾\'Uª<}ø	1¬Ë!ŒX\r¢€ÉDlë$#j6‡JˆžÓ,…øX!#¸¾r¹‡›PƒÓÁÒDíF.Â—DØH=‡‘È½Ò!uú”ù¶Ç¢a×KJÔÅÉVrâX„j°“š¢yûù‘ê=ìé9ÔÒD[¸½|yr®¼Ê|E¬4°@I*vøƒ>%û+¨)jGªO(J°Þ‰\\ÇgU×ØbÆ²°ñæôJ·>ž”üÑWâè560I•íà3A“ÇLÁf#YÇ‰5CâiÖµ\npU°JÈùÛ! )Y:M‚nA›cy&%”ÿ¨˜ ¡™ïa\n¸4ŒäubÊ¹lCåðšÜ°b¹”ÈÀ!XV¡N\0µ0žÞ\'J	b]EÜØRyu¢c‰ÔN±R‡ª06É\nvƒ\\>´¦p ¾—º)\ZÙ«-©¡8(Ñ¨­RÕMÍH¶TT=––§u¬¥ðÙ¼àÓv¨_#† ƒÉo¢”â$‚$Wi¦‘\"s-R\"Ä™‹nöìæ†}°8ª€‚pui£ÝY;K	ìÑeJô²r2ôxx&L(M+ÍÔaˆê…C„ÂáÆéÐKÑÈ\nÅjg¬ÌÊR’›Ðà³Æ53è«A*Tï1Ü|¾jwk4¹«ë:P7 O¢®ºb5mEtºEXµp•ŸÇä°‹Šé]²å.¢*Äa¤xù(D*¡‰FÕ#UóçÔà¿NÏ—Žf\rËŽ\nRZ³	qÁP÷}oðùîÂUÈ‚	,YC!ïj$hð^Dê°}Í¡.ÀXÄ:µ ÖEMÛ!¿Á4ç2‹Hã4káÈ0uæPòÄÚ¬æ Y4q†‡È–|x~«J‰V£üÂD×ØdîìÛüVíP6j_>I‹`7Ô&ó/ºÞ0¸ÆqÏvj´OÊ	¯ÜÞä†“glïo@Ë€ŒHQÔœÐeµ\'¯S‡“þ8³ûöXèVðRM;\ZÕ®¼¡[À4)MîNMWë€¹tù6éá”oVÉ|‘¹Ä\'tÊ>ƒX+PFcjŠE€;Ûq{Ã¾†¬¹Òs°]˜îá\0qun«{=#Àí™¶<°¿yAa¨nÿC… ª›õN8TƒšA#J5Ö\'4ð÷šW]ªY-Rý‡XŸÎ¯Ìk$ù‹Å~X«Îî­¦ÞŸááÞž³G”‘¾ÑÐ³5¡ë¸å‘¼ÿæræ¹Þ¿¿œù¸¼s9óënu¹*»]}µ·Ou/È2\rø\0tE5p¯•H+Á¤{“ÊáŽ3“þEHË>cÝáž YMÔéïj«ÜéÊ3æ=£ê 	@:	4—ØrUCsßº$‚ìQÝ8Šµ©ÏÒ47Yp‰‚¾öÃì¢Yòû„†NQhNÑ8\Z€ÙòF…übSÙW®B)‡Õ5¥$SŸ·ž?cE·ÿfk,%R¸D¦¯uš6\"i¥Úï^HKÈ!’dL \"Ä>‚&ƒŽŸ”¿XM\Zª¬ð7µO²Ž)c±\0¡\'Q6å”Ð ºªG<ÕNbçB¬jÒÿØ]£Ð{Ö½ü%\0*\"®îY@Ra¬ì.uÃ¦2´1À2Š²ÃÝOÑC/pZ*DMfö»ºCnÍ5-ÌÍ.‰&»€¤(d\n‰bG´Tõ1\\€<Š³ÀÚ+Å&/d9Tdõ@{„Ä£¯Àìä(è@ÕVˆbûŠºD¨Yt	H¤ÐË7‡ŒV‹4¬ªn½G*Ý~#ŽÈðÌ\Z›5 ©žM[Å±€ÈG`KÝ!ø±ÕÖæ¼Î5`“¢L‰Ð‰.`ë°†k\Zþüð[¯ó5âƒØ`|ÿ’–Š“\nFB­£tßB×ñ!f<ùÞÛ-¢UávR¯jËÌ,?¨%ÄK‘BTÕÕ§<êdëà¨SÉÆÉÒjJB›†Nã‡Cqç¬¾6x­uÊ´£¶£ù82Õ\ZÅ›64Û8§OòŸºó¶>0þÖy¥FÍ4CÇ*C@ÚçìÊ s°¬Š?g°ã`ë*½Ré` „ÿ„©ë˜Lƒ±£\\ÚºE%\\\'I•R‡UT\'š«#ÚÑý„ô&Äˆ\"dLn`I‡èA…,”xî#Á=ÑpÍöO”¢ÔâSõ5¤5VUÓO*ðP¯L˜ªØäÚFáéäÀ©›5€£¨,ë0ûR’²ø‘•›ÐiC\n~¹«ÑS·wÄS“Š˜‰Ûèè)Y\r2 rÜXJ:æ\"áˆäm€É7\r³¸þ¼h\0íü× @ÕAT¾3h÷É½÷‰\0óõHÀóPÉ÷s\0ïãÎ¯Á¸½ÌwCª7¿[—Mß–¥³óyRAý˜»°gY?-J€åŸÁ¸O‹Ò3?æ·—õëÌÄÇE©íó»ñ‰?·•y3Ö¿µ•y3Ö¿µ•y3Ö¿µ•‘^\"·Ô˜¤x U4Å“ô$»#«%upÎÙb1ZTW/>Ý\\Ñ1ÚêfP#Xú¹Gð@à•x:‚÷ ’Z [ªku\">ÈÀ”á¼C‡É®¥Œðsà}‘ÆÐó–Àj]¥NO9I²\0Ï)Á)ššÃ÷*ÌÙÂ™Ô§ÐéI„œLìiJ[D\r…5ñ©i½ä.Ÿ&äèžÖZ¯c‰„\'ŠšÇC:d¢Ö¢ “‡ÄŠßôÜ-àº¼ŽA÷Òº`E>²vÊº°g‘ÙeC) vUuHOŒ\"«³”º]ƒÎ³¨2ÓéjôR¢½ž.‚RLÆÎÒ¹uA†RŠ¥rr=ÊhÙ#jÝ]Óó…n¶¶1i\0º·Þ^u†ËjÊéÌ„Wão#sä^E| T8$ÛÛà—&Ê›†s4¶ì‹AÍH¤;‡=›ÎãXõè*Ô*C(±y§o-ÄÀ9=	ï÷z¸Õ\rô_v(—Eày¹EÊq	­…€¾ãr‹†Zswd57õ´×P¥ml´éáX¨Ž¿}çû3‹§p=(Çì@,ÒŒ¿™+èÁ‰%^µ.÷n˜’tŒR/pzãöVTEžy&(QÜ“5BÌ°¡ˆÖ\Z4Á’ò„þaµ’Zõ93Ä*\n™BBœE¡:bÑ—‚ÝóŽ¬ÃôóTå\"ÄÇóŒÜ[á½æ>ÿBè¦F•¾O¿$vL1{ž~WT%\'+ 5ëû’ùã^Ó3ûvŸÝ0HÕôãÿš³á˜á)pÔ=\n\'¬6\r’N€!DMÙYOå‚,*ú-!©¡>rÐlcyFÍÙš[::D’pêŽU@­išñ­Q¤GÁ(›¤€q4™ÊÖç}-9ºú½Ç4¡5@aŒÞÝlÜ®ã´³N8wÓºœ¼ô„9pU½Îµ‹(ð —4Ö®™8T¶Óá¯¨Ä‚¨Ù£Ó.2rúFŠöT EnïP‘Ýs\\ûÃ_ -ª7RÄ’ú		Ð?k¡#èw•N°F´ëHbè9ôM¬CÏ¤Ã5¡ˆhØiOF§}ê‘ù{4K8bì˜%ñô˜y:jggâU¨Ž°\'¨À™Ù%øƒc‘=ñJEeÁ`ÔÎÈ¢QàùMôG¨!ø1›˜÷ÔnÑˆúªè>Ï±FÀÞ4˜p«…Ÿ¸7ï)“uàÊfQSYGå9Åìu^9wŠFÖPrÝJcênit	¶§j¤qf„ÓnW/Ô´ªoô•õCÚl¢©+´<˜ó÷ú§p¨=f¤.ìÌ‹sÑMMò]ó·0âÔ	ñ°ÍS²^Z¦^Ñ\"	.™-èA†zM-þ=Qœà¶Ø9›Iý\\tï~ôŒ+¤”µ^R\Z­_uWàÍ[§,¡TsAM‚z,Ÿ”Á°Á¥h,\ZvŒ~qú‡\Z¢LÐ©Vªa·‹­6ˆÎ\'Z½ÿP×¿\npÿÁ€Èƒžêô¦¼M˜$ îïÅI‘œêeF©»¤÷S\n6rùè_¶Õ‹kzGO¦PRiÎsxfþ‹‡)?]h!hÁ¿¢ÓÖ4°)(5¡æ× ‹=j£Ù.ð’¨¹çƒ÷e#ƒ0¡®d•Ù·1f0\"bG=Þ3‚FqóÞHK«.œ¦‰¥ \n>\"W)Ä„ö-ýÓ\"‰Z(…QØIÕ\rvZê£Ã¼Ïñ\\_S\Zo‡sš@To5¦éÊ]î„«Úì÷™¡ÑÈ¢«.k~\rÞšÑR¨\"*ý 6hÓô\"åfÖ^ËMó\r=ºTÓ}š\0²@Éi÷VkgÝÖÜsÂZŸ‘[$3A†èWÃµ+§ï¾\" ]­Ž`²K…bˆÑ¯Æk3zíóÑ#°°šù?·cÖ6^\0\0\0bKGD\0/\0;\0Âç†ªG\0\0\0	pHYs\0\0\0\0ÒÝ~ü\0\0\0tIMEè80+µð°\0\0æIDATxÚí{|TÕ½è¿kÏL’É$L1^!bˆ\nÔ”—WA=b_G¡~îéií9µ×{nkOÏ§xŽçöho¯ÚÇ¹½íGEû±µ¼h}TD\r PÞh#ˆ\0	‰	äaæµ×ýcv0Åç±g2;ù}?Ÿù|xìÙ³gíõõ[¿µöZJkM†QTZ/€* \rØcý}³õç6¹\'„Ê™\n€{€UÀ„ßó°Öz	rOD&`uÓü	¾¿Îºá›¥þË=Î2­î´é\\«¥•’{2\\ezø–Íç¼VZ(¹\'ÃM¦*àõœ·Îê,rOÒŽ1HŸ»\"Eç`U\n!~VÉ=q¦L•)þ…â§Lî‰3e‘I‘ID&A™AdAd‘ID&AD&A™Ad‘I‘ID&A™AdAd„Á%ÖUVðÉŠž6|î,›ÎÓuÀQ¹µÃâžì±^ëÉ€Õd’©wEÏd#„tñÑÅ3÷dšL+ˆ.(	NãQ«È™VOÈ=Ì^>Ù\\ m\"’0DûëÓý¡}eª‘„!Ä|«5(aÞËhAJL$MÙÝÞ–i…ˆ$QÒÖ:õ¶LëåRîÂ¥4$#z[¦*)oa“–úmM<Èx’0”©L—LRÖ‚`_˜\'‚È$\"“ ˆL‚ ˆL‚ 2	‚È$\"“ \"“ ˆL‚ 2	‚È$E \"“ ˆL‚ 2	‚ 2	‚È$\"“ ˆL‚ ˆL‚0x¸“xï“È>HBzøÁP—i-°Yî³ 2I˜\'\"“ ˆL‚0„q‡/6uNÄdJ¶[ÍÖš)Jqñ¹ÇhÍ{Jq(Ö»\\¸\ruFª‡ 2¦&˜	|Íe¨«ÜÓ\0”êÿx¥¸ Û­ÐpÐÔÔ\0¿\0öŠ€Ta8†yÙÀÍ†b»õºK)V”Š¯öž¸Õ:¯ ™”†y\Zv\0ÏZ­’Ìþ¨a‡†ÏG]„!*“†<SócÛÌH‰©0CÁVSó°†|©:Â“)ÖŸSðGCñí´˜â[\nÖÂz†Ta(% fe»U5P’æÏ½>Û­^–\0»Xn•þ¾\\GbÓÑœ,Ó,`0Dê¥Ø\0,&ºS½“x˜?È×p?iÜ¼YÂ¼óEÊõàŠtV(\rÕÁPd\Z‚ô™xÍ¾,ëQ5ø\"õ&&Š³<®Ÿ\0yRD&G1õO¬¾J&±(bêŸJu™C8bÞè2Ô™xm.CÝŽ˜Ë¥J‰LOkG Ëí2î\\™Z–n—qßéÎ Ì”™2¿Ïs\'0/Ã/sN~®{•T+‘)£q»ŒUdþTe]§ 2e&Z³\0˜ë2£5‹¤j‰L™ÊíÜWê¯Lo“ª%2efì¤¸ÁI…ê´ë†‰LZs50ÚaåZ¢5UR½D¦Lû•¿ÐA!ÞÙrµ®[™2Š…-ÛR½D&A†hŸér\'¬S¯[ú}&Ç!}&‘I„!æ9´`µÔ-‘)ãÂ¥è£áÎóàe©^\"S¦áÔÕTƒR½D¦L£Á¡eÛ ÕKdÊ4¶:´lß–ê%2eV¬6\0+×®`ØÜ+ÕKdÊ(²ÜFƒ[§­Ynã„T/‘)ù+×õRµD¦ŒÄÔúy Ý!eÚajýœT-‘)3/R©FÀ)ëÒýÜPJB<‘)£ù?h:€ŸKµ™2àa2w¦Ž&º ¾´J\"“#øW2wÇ‰}DwvD&G M­ÿèÎ°ëê¶®Ë”*%29ç‚•ú3Ñ¥¿ÂrIà‹†RÛ¥:\ro¹ÙYGwèEo¶ë——ñuw•WŠ˜¿ê	D^‘ëqRÞCfì(2\r6#r=:6ÿ!ljÜ†\Z4¡Â¦þ¿Zs÷ˆ\\ÓÂ»=æõ’å6Ì3È?˜¦þê ô¡zLSßu&ùf–Û~’àl™\0ò¼nÓ0ÔZ­¹MkŽ¥%®ÓÓš•†¡Ïóº#R…G‡yç¢/™¦ž§á?\r¥Þ|ÌSëh¾a2Ã!ª¬~Z¥õ÷v|oëŠî™ÒÝÄ\ZªXŽè%.C= —ÚØ\ZíŠ˜ú_Ü.õRÆoj“”YòTYÒÌJàŽÛ…Ñ=Ôî¢Û¥6t	¿êÍr]nê\0W£8U+Pcšú¡ž`d»/ÇG¤X¬\0&H˜7D°*þ6àf`TÄÔ\r¥æKT´edõyK8®£•ªM­ßpê5 Å0¾·¨rþèžá,“dòcM­]À\r†RS³ÃPì ö§o[]†ú=ðû>ÿ6ÈéÛY¢áRqÇrù¦ærCq¹©uxÉP*Lt>a÷¬7U–D²!v†ËT\\|Á\nÊŒ>•Ûˆþ±X™Ìö‰<Ò~ÈŽ\r„Ìülq+°ÆPÑ_fëZlRgu Ÿ6ÍC@¢5À|Q§ßÎµ®Ò‰Q¥µÆ®W(l–›¦þ™Öº5Ö0µÞbj=×ÎëˆõešæSëš8Êë”iêŸ‡ÂfÅ`\\o’¯2­õfí\\Žj­+cü®Êzñ–S&Œ3e›šw»Ô6¥¸ë\\¡`£©yPÃˆ4]o¾©ù¥Ô+\n®Œã}…Jñ\r·Km55ÿÈvÀomÕqxk4ØMô™‚þ«+Q5ÕŠˆf“€\\ë^}¦+Jk]¼žÀ^lN®UdªF?k(õ¹ä[Xê€ÿª¯¤®g!ð˜RÉw¶M­ßU¨[”â`‡tk‡`b¡ÎÊ:n¶\"3¥”*f\0×åÀÀÇV_z°øÐ¤µ(¥t¦É4x(µ± LSë\r¦©ïq»ŒCv41§†zØPj)öîbxÌº™&Ô\ZàC¼‡ó¨•D	Ü¬æ>+—`}à3\0¼¼hõ{ß#:¨¬3E¦TˆÔ— Ö¼¥?2µ®1”êJ åðJ]¡5ßQŠ«R–e’PDWVJIH×ÜÞL[÷iŽ:À®†ý7­¨_–ñ#Ç‘ãñRZ”ªjÂ>¢k‹|˜ä/(!:î¸Åj­_£ŸlrÚe\n„M_–ËØ®ÓÓTA\ZWBs«ÇeÔX¿2çcz(b^åqW\0‹€1éIQŒ˜—e»®A©ÒÉ¶°®¾¥žCM‡ØÕ°“ïùNRçz`âƒL+ª bô4ÊÇL³õ‡è²~H>kL$d	øày«…\Z<™4<©àŽAª0aú¬Ñ`ê³©ö^Æ2HÃ\ZžVð•Aì­üvTs¸†_|ŠM=Õ)¹ØÞÅümù\\Vz©ÝbÅB·UýÐêKEE&­¹Q)ÖY™áœ_=­Y©TÚ°\\<‘Ì	¡\0µ\rµülûOyêôci½ø;\nïâ«•w1»l6Ùž´%H›€Ÿ]‰êtÚe\n„Í¼,·ñgÓÄ›ó¶Nƒaó²l·Ñé‘¡\05kø_»~”²V(žÖê¿Ïþ\'®*¿*R€€û€z“igrê^i`”»\rõONé`ãû|sýÝ,ÛrÝ ‹°©§še[®cÅ3ËÙ[—ò=<DçwhýIR/-2…M=Ò0Ô7E—ÏÆ0Ô7Â¦•â©$:€7Ýüè•‡˜ñ§Š´‡t±J5§º’½òÝ©úÓê;y”RFZeRp›‚\"Q%¦²\Z¥¢c©is\"É†½u{¹}ÝÊ¤3séàûG¾ÃíëV²íÐ¶Tœ¾‹h–¸µo\"å2#:Çe¨»E“Øqê›ÁˆNÅÓÂDÇIâé7ïü†9Õ•ÒÅÓJU½~¿}ç·Ã¶íŠ\Z\"º²Ò«DgS¤/ÌójÑ©\ZBìL÷jf\nÎûq>õ\ZøÞŸîcõÞ/;¶0sèiÞ|ÿ\rLôÚ7\Z8EtðvÑéFé“I)n7*·¿IAÂáÎxEºÃ\Z~ÜøŽ-ÇI®r–¿)ÅS‰˜I¯sxŸh&ïø§ú»©ü\"Ý!Ó«£O»\nñÿ®è™v…zeñ&šÛ›YñÌrG‹PU°€¹æRâ/ÁãJjxÓ$:¾ô*ðNß¾RZdòzŒQ*:Wˆ?1Åë1.°étqõ“¡\0ÿ¼ñ{ŽêõÇ¥YóX8a!¥£Jí{ÒDg¿DŸÚt†y7ˆI±Ì¦ðn~<\"Ý¿aMF¦½ãa”*æ†Ñ7pÉøKðçú1TÒUÝEtß{œg[£ÔÊ¤¹Z|Hªü’½]ox·vÛZÇ‡v>•Ï­£Vrãô›7r\\²á]_–2ÀÓ)“)bj¥Åˆ¤’“\"¦Nf¥¾{â	ï^{÷5þ±öï_n}‹øÒŒ/R>¦Üî©Eùý8¥L&C©àó¢DR\\n(•èc –L1QßRÏ²-×9¾À&¹Ê¹mêJfŒŸIŽ\'\'q\'Ñ„NúdR\nÈú§I£Jx†}Ì­R àß^ÿ×!Q`U¸bÒäfç¦òcÖ¤»Ï´L\\´rŒ«Uª>Píø„|’½+öÛ‘pˆ»uJÙ\'jg¬¾ã€DBå¸*ÖV©¹½™Ûv8-IŸÊgQñbfŽigÂá³Ê8M2i¬µ©™As«ôäöµCC¤¼¥,œ¼/D©´ô.îIcBD¤r¬\"Æuê[ê1ü³DZ’«?÷U*K+ñeû’:_8óþþs[\'CªëcU¬þn÷3Žÿ²Wz¯á+}…+¦\\A¾7?©VÉÔ&--ñ¼eEÊeê	™#LM…Ôk[Â¼©=!³ Ñ<P_Éé­Rï$Ö¹“æ‘—“—ôùBáûïçXkÌ›P.§Ï\n±)‘Éë1¼†b´¨<JQâõÞ8DŠ)ñðjí«Ž/›ÞI¬¾‚¤ûI¦6ijoâÅC/ðÒ»/%Ô:I˜7´¨ŠõÀ_|ÊÑ_´ï$V—‘ü\"»=¶}¸•[_àkÿž@(w™‹LÃP¦ƒï;zFxß4øoòû5„Í0~ô!ë?K½ù!\0µ\rµÒ2\rc\nˆñ)Ú?×ïtô½:·ŠkÊ®a´tRcJZkÚ»Ûyý½×ùÞ÷ñ\\çÎþßÛuoÇz\Z?Ö¦×\"“„xŽ¢Ü5Kobú…Óñåø’ê+…Í0\'ÛNòfÝ›léyó¯þ/Î	¿\"Ó£2–ƒšÛ›âRÅ¬.»‹¥/¥xDqÒ}¥®3]ì?±ÍÕtéO¯ûYßR/2‰LççpóaÇ~Áå#oaeåJÆŽÁ0’«º3BÃé6Ö½ÂžÐŽ~9Ôthðe\n™:¢õÜ9íhè	™:–aù²XÎwäÔG–Ã¥Yó¸}º%’\r“X;z:Øzd+¯·½vÞcÎ·åMZeòªE)¶‹\nÉ£`§ÇPÅphLÉ‡ÍûY·Œ½…Yã+mIƒÃAjjy±þ…³Ù»þØtrS<IˆÔmŸ¢¡VÅÑ)Î[Ž±sš£I_æ[Î’Š¥ŒÈM.\rŽ„i<ÝÈúýëùñá‡h4x|œ}ËÊÔ=5¢‚-åøV‡Åô£Ç@dF%VN¹‰Å“j•´Ötº¨=YËÆÕŸ)RIˆ‚Tnìµ‘èšÌ>Q\"aºÛRoMíM)¯ø\0Y*‹ÝÞo†,îðnÔßpÕä«ðf%·„`ÄŒÐÔÞ\ZÜ.R)ÓG¦fƒ!+º&Œ©Ùh(š3½å(qf¦ocsÇâÏöÓî¡õL;Úwœ7S3<³¹¥âVJ\nJ’N:ô{Ø{üüip(s§¶2èG•R7+IÁ\'ÒW2M­6”Êh‘ù—2·d.—¿ŒQy£ðeùèvÓØÞÈŒÆ™l;9w:·ña$þý¯o{³ÆÏ²åÉÙ¶î6Þ<öfÜrj:ëÕ©•©3hn-Èqý\nøšè7wÍ-…9®Œ¼¸RcUþkùÒÅ_¦bLEùE¸\\.”µ†N‰¿„1þ1L9‘‹\Z*¨i®agÏZul\rm¥çr–L[ŠßçOzFxÄŒðþÉ÷Ùpê¥”–IJe*ÌqE4ü‹†+”ì„O«ô.ðÏ…9®H¦Š´xäVL»™9“æàÍò~j57;—Ò¢R\nó\n[0–É…“¹¨q:5§Þbgpàyo>•Ïõ\\Ïä’É¸ä«hkg+ëj×\r˜Ïx™\0T´ïôu¥¨–dDLtiÍ×3µ¯äSù\\ã¯bÉ¤%Ìž0_Îùo©ËpQ[€/ËGQ~¥#K)o(ç¢“ÓÙÚQsÞÐïJï5\\S6?éåº´Ö´v¶ò«m¿äñÖ_$tŽñ#ÇÅIºÓqÅ¢O%>\'B\r,°ÂP1¥Ã…Iî©\\V|3ÆÎ¤ 7¶€=nÅ#ŠáAñˆÊF–qQC[š·ðN÷¶¿\nýÆã¸þÂETŒ®H:éÙ]¿›gNü6ásäxbÎ\"îq§ñ>¼Œè…Y.õŸÀlñæSìFôÝY.µ-Ukå¨Uš”3™	¸`ÄqÍSJáÍòR:ª”BŸúœÌE\rñVë[¼ÚG—îdÁˆë˜7aEùÉíÚjj“Æ¶Fž}ÿYFÞKË\rL§Ld¹Ô;°^šåRßUŠ¿“VêlX÷«`Dÿ0Û­\ríöÄrP²3rðRš;žò’ò„Ç}ÃÀŸë\'7;—¢ü\"ÆŽgjc9Û\Z·ña÷a®›p=eEeI/mÜèá­Þâ¹SÏ&užIfÊ`U˜ÿ<Ltí±¯\rS©º_+E}¶;©ŒU[¬ÞQxWÂ«·f©,¦–S”?*é›Çå¡(¿ˆ¼œ<JF”PVXFkW³ÆUF·€IbVxØs¸ù0¿?ü»˜³‡ý±À»8ž…ÿ7»±2î55ÿ¦a±¡˜«`Š†K\\8ÔÌÑÐ `§†Ã¦æmÕ†Š]‚¨#†õò.+¹<a™Æ»\'0Ò;CÙ“®ï\rýÆG¡¯@8€/ÛG–;+©¤C{W;/×¾ÄÆî“º¾£dn˜wžäDð;ë…©µÏ¥TÖP“ÉÔ:èRªK®ÔŒÃE¦)£¦$Þ¡×AàrÙ;öeùÞ|òtÞYÉ%	±ïØ>þpâI_×´¢˜W«{##d:—R]VVkHáJýL†ÍÄ°CàÔ’©	@„NB‘PJ¾€-Ëuµ5ñlí³ìíJúz*FO‹ç‡L¦ù!bJBÄ85¦_Z\"Ím?J[W›;—ÛJ0äðÉÃ<¾ãqžn}Ò–sN(*‹«ìE¦a&ÀO*Àl4³óôŸy¯á=:Ït¢µÎÚ¤³§“}\'öQÝ´Á–‰¬÷Žùn\\É‡dÃ¼GÀÖ´<g€ÏÌ)Ï›0jû€wÏìçåÃ/“›åå’	³á‘®]\'ÎK  ¾µžMu¯}æT¥X¹±â¦Xmïý!KF¦YRwIÅ…‰/ßhç—-?ãÃ‡¹¹åæO™OiQ©Ý{ÇÆÞ3#œúø;êw°i€õâåâ±ÇÕ*I˜7LÉöd\'êõòj÷Ë<ðþý<Tó Õª9Ùv2íý(­5Ýn>hþ€WŽoLè1þx`âƒñpŸ•É-Ukx²túÒ„C½¾­ÔS§c÷žÝ,k¸¥åK˜>öâ´…~áH˜¦ö&jŽ¾Å–.û¦3.*_ÏáëûÊ$ýžaHiQiR³!ú²?´‹ý\'v±ãÔvn*]ÎµS¯¥ì‚²TívþIÒáL\'\Z°±icR3úrGá]Ìšsf/VZ@Y-Õkø±·n/sª+m=gïÓ·Ë\'ßÄÜ‰ó(.(¶å™¤sé	öp°ñ ïzŒ_|ôSÛÎ»ùÚ­|~êçc=|5°¶÷/®5kÖ\0\\²9ÙpctÁhê?<ÎÞ3»í«ätqàÌ^ö5 ýT;9Ê‹ßë\'Û“m[ègš&§>>Å¼Á¯?ÅiÝj[«ô«ïŽç-«‰fPÿªeZ<!ÕkøQßRÏÔg\'¤ìüWç,`ùø,˜º€IÅ“’^eàLèûíçáíÿ›uöm%º}ñžxB¼\'9gËÓÞ–ieYT¯á…?×OÎ©\\6µ¥f\'ÁúðvžÞICs#*¨ðçD¿HtVxo«ôò_^æé“OÑcÓÌ³&>È-³ãZHk5p²ï?¨>£ØUÀëR½†ÝÜ¾neÊwÇ(wMgé7°lê2fŸ…ßçûiÚž`ï~›îø!›Ï¼bÛµ»½‰bq¬‡¿A?ö¶LXY‰B`žT¯áE¶\'›É¹“Y{ô±”~N«þˆw>ÞÊ‘¦:z:{Èsç‘Ÿ“ÇÛR^¡Hˆ†Ó\r¬;ðG~súIÛ®ë¥+_eÆø¸ÖûYMŸ,^2l\0&ãö$ÂÐaü¨ñwáå–RþYÇ\"GÙÖ¶•†¦F(ü9#ÈÍö\r¸üq0¤©­‰šÃ5<yô	>2íYö‰ò•yÏ[Þ\0Öô÷çÊÑA¨v`‰T±áÅŒgl\n³íãÔ/\"Hmð]öµì§¥¥•lßë?;6¥”Bk©M>>ó1‡NbCí^¨ÿÛöÐ.ð.æáÿònW\\©ûk9ÏØ¬\Z`æo™eàRÍ†ÍíÍÜùüiß]pNÖ•,»œS2Æ?—áÂÔ&--Ôžü[OlãõS¯Q9bË¬ðÞÅ<yÓSñô“\0%ºÔñÊÔWªV‡K²}Îd.1Ì&l¡|*Ÿù¹˜S4Ÿ\'žp7Ç?>Á»¨\r¾gÛ,€ý7ÖR>fZ<oi·\\hKF&ÁùTg¦v°„‚è,ŠQFºƒ Ú*Ä=žÔËÍô™‡\'2\ro¾å¡RE‚\"}j€VdöçshCE¨ûHÌZEÂåy¦áÅ\n+ö™b1ë¿ð÷Žù®c¿ô½c¾›¨HíV‹Ó“Ò2Iÿ)fžßý<·íXî¨/ûÄ¬§¹uö­‰>	üW³Â¥eÎe³UIâæ¦KnâÐ-uÜQx—#Âºý7Öò¥¹_JT¤oÇ#’´LÃ›5Àyc  ú@uÆ¶RI¶F1\'D&¡/kIbP¾£»ƒö¿Àê½_Îˆ/óÀÄ¹sÎªDúFI‹$2	I•	R=1ëi®š|URl&+’È$ôrÑ]I’\"\n°ëè.ßó˜-kKÄ…wñ…é_äò‰—\'½UŽ\"‰LB_VaãÓÖÍíÍn>LÍÑ·øþ‘ïØÆÍ¾ðRfŒ›‘l(w.qeíD&!*‰fûüvŸ¸¾¥ž§OÐìfWÃN\06Üô©ÁàÞÅg·r™VTÁy0¶p¬!\\´{ÛlÇÉD&á\\\nˆÎA›?Ä¿ç^K¤£vPÆ™„si#:°ûmâœ-á î·Zá£vžTZ&a Ê¬¾ÄPi¥öZ}Ã=©8¹´LÂ@µZ©ÕD·ùt*íÖw¨L•HÒ2	ñö¥î±^~IôiÚþHd•j1ì¡;$™;Xe½2¥Oµ×hí`|¸È$ØAÑ4ó*Ò¿	Þ^KžõØœ™„L«ªÏËîP°Žè kïëh¦|q‘IHG«ÒzðÉ²Â´bu}$Ùlõ{öX¯ŒÝOìÿ°ìîmZd\0\0\0\0IEND®B`‚',16,16),(2,'AnnulationUsager','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ó\0\0\0Ì\0\0\0é‡–—\0\0%-zTXtRaw profile type exif\0\0xÚÕœYv=r…ß±\n/ó°Œçx^¾¿‹,REíKÝ?©b1CÄ‘eöÿü÷1ÿÅŸÖ‚71•š[Î–?±Åæ;ßTûüy¾:ïïŸ^?sß¿næ|ýÀó’ÞôzcÞ¯÷w^Oß~¡Ä×ëãû×My]È××…^?x»`Ð=ß¼ÞW_\nþyÝ½þmÚë÷zü0×ÿk»÷Ô/=?úôïXXŒ•¸käwpÁòßª7ý?†~¿v~ây“…ïÓý¯îëµ3ïß~Z¼S¾^;Û_ïß/…±ùõ†üi^¯»ôõÚÝú8\"÷ö­ÿþ#ûd?þù°vç¬zÎ~f×cf¥²yMÊ¾.q¿ãƒ¥÷×2ÿO|_îßÆßÊ\';¶ØÍÁßi\\sžÕ>.ºåº;nß¯ÓM†ýö…¯ÞOîk5ßüÚ‚¨¿îøZX&Tög²k—ýûXÜ½o»÷›®rçåx§w\\Œ½üñ¯ùêÅùû~¡sºÎÝÅ,w­—Wè1íœþË»Øw^kšîúÞ¿æ}[¿ýÑÆv0Ýe®L°Ûñ\\b$÷-¶ÂÝçÀû’Æ>©áÊz]€%âÞ‰ÁÅÑÙìBrÙÙâ}qŽu¬ìOgä¤€ì€KÉ/g{Bfsª×½ùâî{}òÏË@‘B&I*;ÔÙ¬ñSb%†z\n)š”RN%ÕÔRÏ!ÇœrÎ%£z	%–Tr)¥–Vz\r5ÖTs-µÖV{ó-\0a©åVL«­µÞ¹içÒßî¼£÷áGq¤‘Gu´Ñ\'á3ãL3Ï2ël³/¿Â\"ýW^Å¬ºÚêÛmBiÇvÞe×Ýv?ÄÚ	\'žtò)§žvúû®½võû]sŸvî×»æ^»¦‹÷}åÛ®ñr)o—p‚“¤=cÇ|tìxÑœ´g¶º½vN{f›\')’g×\\Òæ,§cãv>÷¾wßvî—ûfRü«}ó?Û9£­û¿Ø9£­{íÜûöÅ®­~%Ü\rRjMm8\0oØµûÚÅIÏ×“ëa-ŽmáŒrö,Û÷•Ç¬ey\"“`¬T>g¤¼Öìq˜lëê\0™Ý¶†1r³‘—æYþ¤]Žò<Ž³c³»¦ÃØœ^ëäb*]ìäÒ\\§3ÈºîO%þ”q†1”æ×h5»±sµ!Â«;ö–òÅÖ]ò&ˆf\r“œf”ÎDÅiLÀùš™%çËªiÇ²ÓZ©Ï~ìœmTÇ\"öÈ•› —Ðê‰!m®Tî¸\r\\AÌ¸Ù¥Ñõ½s\'þ÷‹¯iÕ2Ã9µÓ{™à~Ìˆ’™sõ‹U]9õAœ0K˜²*= Y&ÿ %{ë¬}ëÜåÌ2%öf­ —òàfeôL€¦TweklÞ“Óˆ%/¢u·á}eã|=^ÍøØØþ;[Håî¿õÜE‘¾;1íS[DOt¥äáI’Âd1³R¤A<1ZNM)„Ã´¥¸mßÇ‰ôÈsy¿w*…è=…ÈbkH­™·_ÇçcGËg¬:/¹wJ{…¤¯ÁƒKS×kNñÉ=cýùWãÙSÀš½Ýž+ŒR{dÅZš>7sO­­Ú®ÌÒ\Z”:IbGTOÄÎ}d†°Ì85wnL€v°#ÎÆëüìKVr—M´GBÂ¶¶ðEtá20®7†¢?Åý{\rýó¸ÙÃÙ,q\'Û]¹?ñlÕ}GÝwCõýtp*›x1\rÛÞ\"x²+cÒÖ‘»Ùžº<êŽ\0_$îaP¥-v;\"ì­I­\r‰b,›A€~ˆWèC÷«dýÝ€aûZÜ³.Ö¡„9Ì:ÜéT5#Mò4,;æÂú’”É$ú^ øš*¸ª?Í…ô»ëR“Ö\Z)(l˜Á´5îö\r€ã\'‹ù»µ4_,f;ËiÍx	ÄÚþ\"C¾ïiaäûÞI\Z®o!Ÿ±±Ïà~>´ãýßÌœgŸAiîŸeß‡õê’n|‡ô¶ZæÛrý°ZzU;vUØ4õ÷•ÄØï—Üüp‘´ï’Z@QÒ†ä.—Fòy.“!„TVã·Î:±xRalðhŸb;0vBèUßèÄ‡\0VÏ0\0ôo<‘½`Þµ—úLÓ\0\'‘µ“­ªÿ»®˜›ø‚•ˆÌ²Ü$›T;\n·µÜ%ž(dhºë‰Z£÷‰~¹ƒ¿Þ7®N	ý[?î`q§O¡m‡ü5eØ•öô:ï‰ûáBAM0;²6p}ð;:=LU·\0#3!%ŸµéùêŽç€Ø@mþ‚IuRîDr6T\'\nµP¢‚PY[ÔUÜ\'û1PÅ–î_S“ù-wýá×obÂ§®€šÌaƒr†îæfüBÊ‹íÉšyCææ]j¼GoFF{Ž«¤ö €{X?`9w\Zª¯¹Ã/$ØhÀE WH,W‘l\"#·:˜‚:C~¶=C—,ï¾Az¡kƒ?Hžñƒ\nÒWóù…ýúå…N{\rñ»òúû\0IT1—ˆ.~8Ì#J\0ùºÇdÐïœño4HÎ‘I<I«ŒˆÞZ©J”¾vGÂÙ¨\"7¤”>ÎCÂ!\'ÇRFô1ÄH;VùJžíÈ=G¶ÀrðcµH˜«F‡ºûRÂl¯Ì#g¾†%ÚãBG\r®1‘Ú/(~u±‹Ù{±dÔ™NŽ’ŒÓu“˜¦à‰²ÂD¸ÆäŠ\rãï\'bfìåcï‰õ›ŠµÕÄÜ-Às(ß1cmf¸ƒÎ«ºZhÿ±qEò6·‘LunÄ1Ò—%±qÒò#k’)3ÃÈè—E\ZRHaáV€|…ÆÄâoÚ\nŽ6ŽÆ£äƒÚÆ¤$ð‚a¢Øtƒ¤DY©êÎ5\"³ö<<\0|N÷çÓ£d0r+,ïòûjÌtpµƒ7ƒˆ¯Îª0\0˜ïCìÝ jï+¯âÓkíßVþµîüä}ÍAñÃ&þÉ¥Ì—ñõ—2?	Õ¿¾”9ûÿæRæ§1ÿ——2¿HŸ¿º”¹3äü®Ë}õ–!Y›Æu¥,Ök7p˜¸v9°\rÐ°c§ÊÚáÈ\Z$)‘«\"yzg/LËA6è³oU¦îÐwC.¦«Qdä+c\'så«¤ZŒä¹#EôAr¡wi:Ý­ ÇÃc{ötè^ISÆ?¥M+»–ëe{IØþ eÅn3±%Zããõ•±ä;Þ*¹+‘×#âÚYÓ°;«¸ÀL\\\0dX¬þo!’	5ð—ÄOÏR+—È7»\" #W²ÃhØ÷[<Pï˜½0qœ£C2]·êš›éoô²Å 9X$dGF0¡·Š*#mÀÖ°µ5œ€ãŽ`\ZdÄ]F›ÃÝ•î¿`é»|®\n–‚èIqÈô‘‡røv5Ÿ`ú›uëN:‚Š÷ào­UÔ‚ÎÛÇˆžóéMÁ\"zF*|¯‚%ô,ÙS§½öºú€#é„zØ+5×Õñý¹ÁkØêA°âÐ7X,Å!ãÀ‚cî1Á\'*ÄâgªÞÍÁÎÂmÇÌ$2]µ‰3G`ÇžvvèI¼¯g{g»îu[”<ìN&ØÆGë@´›7±·Ã›Ø«R$þ‰-‚û±crcDB\"\nÖô\0K\\–KVæ]_Š\0>¸‚0?Y?ÝI÷éö¦Ò#›·¢˜f¥¨‚úÍªH¯~T¹õªÜt‰F{ŸåÌG„QMÍB,åëIDŒ[nG„•ƒ&Û	>BÕùxn\0\r¡BÐ³¼BÜ©á\rÑ|àÉüObå£VY÷û¬qc¶[|!ûâSO1É]¿kÿŸÁH\ZNhÌ8 ú™Sw¯\Zß.ü2ëiž2S½.Ø?u&BÙ©°…„ß¤Óã·]óÛýŽ&]eZ^án~T–à1ãèÎO„Êtƒ³àroY™[l;,y§\\ôsŒfÖ\Zwž­]ªdÁrK»‡\0½ÇnÄ;ñŽ.ÔPÜù¾Î‚†”Ê¶­<Ö¢¢×#º2)uöØÒ°ª$(,H&T_aÁÞâ8»jl\'/à®¦Üã–ùÆVÂmtDÿÇ¯¢ã-8´¼7˜ßBùÇšX×!á1ù›®Ž¿Šk4ø/­†ù•×\0ÔÃïã¬H²-ãî\n¼¶çÆÉÝž»9Ú\Z~†æk¡·ˆ±ör€–G\'ÂjióÎõÉ®µ¤Ò•cnÕãû}X¬Xx™ˆB4¢VhÌ@î•#!Öº|&Á\\}t»UðE{Ú>Aô=µAg¶àï‡Nžð§—\'XÙ>Œ_À¸Y\\~’\"Öµu\ZÜJêw‡ÿª¸\n°÷2S8*«xHƒªHó˜«÷ÌžŒhjHmf2×Uq5-‚ÃFIž*>ô¨¥©ƒÎ5smª0ÔU2\Z*›¼ƒÀQø5AÜ|²Ö‚m¥Ó*ùììû;‚	Ÿàþñ„àÇ¢wT$‡I\"NÕ»|iªÞAZoKâoj}UïÆpXˆ¼ø…þêW{°{¬ˆB`j\Z—mbx\nšù%´†²FŽð²ä1|(N\Z’è/†[ë)C\r G|³¬*×M\nãÆvÞªë(ŽU¡½\Z2‘÷Hd\"hF}jIåVXÞ†uÏ&ÏyÖ3(û–Væïùº(˜¥™ü³x’L±˜•t\"á!R°,‡@Dm6n8¤œöÐá	5\09‡ÄÒMÃS|bEWd\"8^¯ZmíµWÆz‡¤_ÞýºòT“ºžöÎë\'ŽýÃ?²ÊÃ·ÕöLžR¨ÐÞgúz‘—ª\\/úÒÄ“hÞá¥ƒ¦š	]Ø‘~¾3J××$3ãìuØZ|Q•±àfgç\nÉ\n&ò¨7´èÆ6¬ŒÈGå‘@2Ç+´„o*Dç’ÌÆ²®{²æc%åfgYš)z´ÏNRXÎ/Â¤r¼¾å­Ù¨?áU”Gœ’;OQ^GŒu>”}cÈH[qDüg….; ÛRZªì!ýš¦k¥)¹CQ\rs¡Ëâ;½ê à®¦ªH\nfáŠ¼òPÂ©Ùî„22þ}\0‡·Ë¬¡íØUðî¢„É­…0¢»¸ÂJxø¸]½\'_6WxM§Èê¡T0p#IRâ€à`}«‰î%Nõ_\0PE»M2µ•\'B0ç–i@tg.ÄÒvYõõ½ù-`œ+ØìûphJ¦‘Ñ2IfíÝv!>ñ4#b×+rŠ,],Z˜iz“@¯Bä	ÄÎ(3ÊÉÝ³\ruÒQ¯e÷4è$,™^tb·DÀi¡X&T\Z™Wl‹ÔaXÀ™mÒ%¨°!©ÂLYAÆC|*èºi“1Žwm…Îöµî\0$atpO”t4GÑ‰QÅªºs	 ä¼j45š‰„’s8]¶oæùoeX¥…Æ	l¸kµù%\0]±Å»àŸ‘Ñˆìb‡¡!‚g+l\Z3j\0ï)Ye\ZÌNc¶5’±pW\ZšdÐ]žoæ‰ÖdíU~ªf ½ÈÀ\0±?°q‚b,’Õ›x_`Qñä°0Ÿ(m®L–Õ¡3´:ÙÓÁbcX¦¬¸Üã²ß>n¼·¤œ‡Ž$o˜ûÀ2àb¬«¦EK	>1øæ™åÿ&&Í17Ø—ÔÉáó­æXtäˆ°êƒýÀ×Bú>à˜œ¦\Zð€³qjN™wp‚’ôRÏUŽkjÍ§jÝW%„õœ.~àÉ\"}„j$kŠŸ›À¹Hòª…¥‚‚h7–6+IëA©hoñÁEìîêÅ=çnÁa£bc5Qé\0ºZ=¸ê]gë¸P‡Gû°¯|d:°×Z’»[PõÅl›àÈ|ž\"\nÙ°‚™ g´¤\"—uÑ÷Û	@ÎûŽž­ƒ¹z¦\ZúŽ†Ð{ü\0R¯Ö/BÍP]rD9&¬±à6@>à†{\níÜ%”æ×‰ÝU\rk©BÏÂTGýGj±b¥öX-Íxf»dÇŽ_¥Yª–Ÿ^ÄB‡·£57#a¸\rÅÖýRg‚J>~y2g%Ì\nÉÃìTž€fÈ\"O‚ÂKÑ‘Ã5l¤›»ƒ¯nJFdÒáM!*˜‰°làŸüb“ÚÍ:˜±ÍÑF\r…Ú`<C¶¦ÒzuKpT³Nm£Žâ®S5çs¸üSAß0ÇeÉ±*u“;Á-ÈÀ®ÃW¸5©øÛ&4å\'áf·ê¼Ž·¤Ä¨ªrÄî°í”ÉG‡Ô:×\"ÿ„\nPÄz‚^#¥Fìo4:pÏ$Íè0î˜^D?Ïe]+ä“‘——O‡$vV/ódµOÔ#²Õ °SìmMP$‚´\0v×›©{|ƒùÑ8ì«\nsžêC¨5JŒƒß&ËL!Õ_ðv®Ûœ¼ŠÞÅ€Æ¹ˆ»Út·ä§ÿÈë\Z av‹ë5áÉž6=ÑúÐ%/\00ÒB!RVŽDŠH€$½>´{²?‘…hH’•õ¤#‹Q‰EÀ)Ûf7òkâÙ\'ˆÂõäIgöE¥úP.£•‚˜qŒÛ ºÑ0‰#ˆ&›\r¡íND—Ýn­“P`hÜNÇqìÈ¹q!Y‡\rŽ%’q0¤ÆŒ·?Ìjj›`ï	W3¸’¢š°VXwxè»Ô­°ª\0©Í €bèžÓÖMN è ©bÎž\Z¡D¦c÷ÎÔü<Œxó!êÀ}êÄ\"¨…\".½Qá+gÞEÞªü4D¬äá‡Õ`ŸPdª€xP2¯td‘*”Â($3Oæ¶Kñ‘©¡¦\"¯Â+íÀ²A»H~á7‹NH -Ÿ‹•–N>c:7¡³§´ÉÀc€•º+æÕOÂ&©se³ZÝ57Ua©Ï¬5AN\"Šÿ0™\\~ìÑ`tx$W¶± ê6Rgô[®!sïƒóAÏ­\0ÑôŒ†‘CPjHWkÙ‡`€Þ›\'’Ø,ÁÙ£§êˆuab‚ÃX¢ãtSÜïÊ;¸‹q‘¾™è`µòK\nöd3„bßfªsÖt~ží–å†IÆº\r6*ÊÎ£–³Ò3I§ßE•–\\< µÙw÷¦“S\\vŒõîAùNbZ¤ãBeJÊgx†4`;–qÀÑ—º[™´†ö|t<J>Lo%d–ü‚‹%h\n˜hy¥HÆw•páqó`%÷eO,\Z‰a X„à>\0¯Ì½ÈÁÌ š\r¡@ˆZ•ÀÇIÈtHVÌC8aõ`Û KÇ‰²L)kÌBÎŠ8ÕØÇ¯¨ú‚Â“Á†`ðÐ–²Áf‘Ý£¢ÅÐ}ª,£©|‘ÅÇ§¡ógZJŸ[W‡NZòðô)i,/ŒX—ˆ!Ô\Z|_O“+DN\0BÔŸÊØïUló›2v\Z¤JY»ü´,ùòuæÍØ-5Ö¶·úëTs¤1žR˜hqö«Â¦Ñáï°·V€	éH™_ì1®à*Š·z]¢\ZtŒr°©~(ü™_w^½‘ßªe52¦cÕAHlâ¤ä‰n‘eö¦Ž’{ÆYQ°Lgo1Ùfí¥¸”J@©ø§œñ•0’\0,ÐÄ_j«‰„$’ƒ\'æQ¢DÆ$!XiU–l°I½õ¡ÒÕ±ï8“f8Sæêž‰ì®¦—G©—‚	iêc\"ÁÈÓI€!‘l…Ñ»Z3‚q9—.+©o° ˆéŽBbdh!TÄà¯óeÒtÏ0SÏP•à\0é—Ç	È®HÎ\rTÈF«wm©0!5\rŒ{a\r¦ëçHoÊÂ€Ü–T K¥$¦†8æš€È+]NI$ŸNÄ¶²!ÚŠ BTÑó™)×pH¯îqû2Ñ_‘à—zU[Xê$‹8P%.¨ÌI©?ƒ$ƒ£Ùf™(ÔÁèñ^Í´ÛüƒôDGƒpív€Aeöhª? KÒ@$:Bé\rthD\ZicØMï£_µTCp¨¶Uñ¤ÂÕ¿©Üñ4I‘$^cTµJEn€[aÌÒù\Z¦?7ò«1‚C/†ÛG®Úô$báV+‡,C­B®ŸÃ\0B×1ÀCW««Î÷î§è+‘¢•ÁNTµ­f±ðÀx²·˜/ú.blÊfáz\0ØN_S†?.Å¢5ORB`À{•‰Îˆé†ÅØf0€} Lc,É¸ú1Õ‘ÛVóRV©»¶q1”›J{À.Ã\0*H°[NnVO\0´_‚8p¡KÐMTtò™ìÕí6jê$D¥ªzOê‰ZJÛúBèkXäþô—bC;o£2YÉ7Þï%‚›Ü\r	Žò\'tn­mƒtQ™Óª›E§ØÈV•–º¾ð\"P`|â>YN{!VÆ‹¡R\'¬ íéÇqìÃTû.|ÎÌî\rZ%­¸‰ÅŠâÍs\'þÖ-I)hUTÄÍúªöo5ûWÅ^@¬š½YþÈ>¼F	É“e3AqèébÕŠS;{Ä(Uš4Äß\nvÑ7\0·ncÏyí`=äi^êïäÍ£ã\0|ÑiClw¦ðj–Ûñ\\Éu=F\"_:ÿ¦ÙKMžFpÙ¯ãn»˜ÿ+ªô^á‚c#X\\[ÕÙVŸölFæU4Pc²¤ÿ=Þ“Íú¾zû—Å[5ÄUòÑ\0)EG¤êœ¯êå.’\"#¿¤K‡}1ÒënËVªÕwbüŽjÜV|0Où`¨Yí7Q‡ŒˆqGFvTf`\n$gVµúãKØ÷ÆZOÒmß™p¿º†r3R›ÌÊÏ–>ðÀ6„oI˜ªš’Ê†+zVƒä°êÄ–8ÝT@[ö$}´Õ¾¨`j;TRÂ\n²rl	xnE7$eDÁ!tBTÚíž^gøP}cAÉ©–E5Š«­³.go¬š¢0Q_°ìë,l$¼ÈÔaÐ°^\0*½€5@¥ã·ƒ‡\0¢ÄÐ„ðiU§(ãªî”…Òj@é‡;\ZÈRùñ( ‹Z[‰ %÷Ék?Áš…­Z8.YôìÕC,ÿfòøöR±@&1ØA0,Bç­òÖ}ó¾\'\0g:« Ï¾gz\0#,¹†]`%¿ÜFµ²MeB\0qSÊcG\\~\Z>¤+Ôf9¡´CJ3/–œÅîÎÃø‰÷\rÝ>MŒhÇ^ëŸ	/ÎLðVþ§õ\0ó­ °‘KpÀN:ÔŽÇäœ(V®Wïl)¥°ììVAøU÷Î”)ÌÆÈ‰;8«¦Ûå£v€,Œ†ù±g+õ58¼•š‚¬ê:|hÎ%m5^8ÿtÔ‚bO{BÒ7ÒfáéYØ?XN’¦Ñ™Á-iR	Þi°k1Wóå&×³½êöÕAÈzÎ)´ž%\\w„½é°·¨Ô\ráP\'˜\nü‰±\rÄ±ÖÉÏó¤ ¤tžÿf¼V={Oã€cMÂÓr_ô\rV-B\n°ðÇ4oWüO/h>ñ_/h~6ç_\\(’ÉÈª`ãÝ@|•±1ª½áv@uùAlÔmÝÜø‰§SÔÊk©‹]‰ º\ZÏ½	xÇ8ÌæÝ€ŽrÔóø<ÐÔÐ£3•çÀÐ!—–yvÃ“^%J7@¬5Ôë«“NÃaw«æhtë’Äæ¡À§V±¹(Vzà„6,11c7 \'Ž!Ag$Ü£zI›z¶Óž>ÿlr¦ÆßLŽÁ0©­.ÿÞP¨µ>Ô|ú!ô¿9BØ…B^sÛ‹BYõÛðÛ±è¨äU‘3Z’#}(NÖê±/UÔ²”˜Ä\nm\Z©NœÔ«\0¯3~Öoô	AéîÀò€Q\\j-šQûxècUw~PËñŽ:…PQ\'f„¶¬ ò ­„˜í+yÂˆv:S†š\".]í	=Ç›dâ ”&‹8œYj]›[®–ªm¨°]…WNäÛ„§-…Tá9¢9),p°o\"`Ë¯´dÐÏjƒ˜G•o‚e«V‘#a\rÆëPbù=UU^ºG{=“”++È-ØÔjŒj£ŽM_§K…°2z–„ûé¡â¤}<Î«ïdFŸuÚªC ‡tÄ-³ÔÞ®¾ìÙ\088HOÎ°o„}ÆËCéy,°\Z×,\'±²ŠèÜDÐ>Þý”Ù/C%ª˜üÆcÉ\ZQ·ö\0éYOD`‰¹âÓC‘$d…_\'¡`XHÆ0ªÔAÀ+QrŸ‚“+ÇW)lòcº‡žCƒÓfgnl$:[†Ýºå\\­.es™‡K§…]ÓãiA²E-‚“Ð¸.ºw‹†h:€–üé3#e`ÉÕÅ¹¸^»²Éz4ß¤Î	T+t¡Œ@€/QþìñÖ$ªÛjsÍˆ`Lßê8sô¥\npCîÈe5u`R\nƒÀOcÈ1hzDžFÙÖ¨Sj€fU\\\\ß1 w˜°	Ï£pwÖ ç¸¾\rPWdÉÒƒ 3bö¢a¬§¨Mý‚\0Îû¢ŠP\rmƒr¸T¦®2k³zž‹œ€¶—Š©lßÂÎCGbR7IGÓ]×£ç4zUWGÓclÅÌ§¹m²4¡¦`›w—PzÃOb\"©i„=e\rVÅÝù[õèÌ$	ZÕZõ©ßCþé5d`8u5.¦·¶ÅïÛHÔàtI¦ÁTÿòRß:äŸ\'²~ÖÝbn{‹º)ÞÑ¢Þä·Aý´·Å<Í-ÏãQ?ïhù0¬Ûâùcw‹ykoù8(±ìÿ¯}\ZÖWkeÞë?]+ó]+Ð°VæûF _+ó¹èÏÖª4œøÌÜqh(2EPQh\0¨:d™zhy÷<ðà0PÍo`U±]»9œH¢gÕ‰\0µm`ê³[æömd9qðç¦açb8Î	Îë9æ\0Rb_¢,,š!à÷°`€ŠÐ’î¡ƒÇfÔ3qÂ*•ß`¢Ã’é†*€wh‹ê3îÕÊYb¬tNíC6`ÐI»Ö¡£j‘Qo¨žÖ=;%–H\rä€˜úÙt\Zfû^Ø2Ÿ¿ 5 ªa:\"[$î\0ë\\Vk\'N\'XõŠˆ¥¹¯ˆŠj6Ä~äÏ2Í	/TZÆøô6èé>ì‹š6ûšêžëV“³aË`n[²Ó¸†ÞÜ¾Áƒ²êa –\nã¼…k¡K°¨h9--çqÃp-d¹â–Žþ>ç¢Ç$™l¾\'D8_øÇªFfxÂ¨tÜœëÎuF§6/Ì¾mßŽjòÒ’Y­W¾G 6AY2žp^õ,>¢õ´ËýléÄªž\"=åª‡[3ÌˆuÓ‰¢üá`_Ûm‰Q«\nŽ’=r¸¬œÔfç¦‡‹w,ÃœDÙ€}óµÍ$ÒÎ²8h”iš\'¨…Jƒìg½\'a ·Ê‚¬8a3]€í[	îj»&Be¿Ô<Ûg=NMf¨àPWóñ¯ªL=ŒË†JKG½Q‹\0;õã†Zd[iåvPI?SA²Å½èËIh¨©ÆCñ°¡\Z:‡Òž5z@Q ¹D5ü#! ¾ªyMŸ²Ýz4=—Îû£éõõTömÌ»w©ÛDk×Áƒ»!‹òóP÷Bó0‚ŸQÅ‘ŒaûÕ¥6gd#êP&Àÿø”Ÿù·§úNŒ§ªÉØz2ÓÕP#,qalXÓŽÔfÏuÈíô):MOp£aô!/©\"È¯ªÔ–ÝÏòäØÀÖ_áfT×Dû@ïˆ	ä¯*e½(Ÿ§Zºt7ïI7AÁ¡Éxu˜\"\"t”yÙ–´7…õ\'ªôü=±,yg‡† Ï®P‘àháÝ)×ëKEì¢\\Rà\"à¬zv.U}¼ƒ¿w›BáEÀv7¦ž¼\\nvaaçt!;E¬¯îöàîjœ³{ê)uáŒ‰zI`ÞSÎéô1!AMtE³êø™I¬¸ªÝh]ØXT$¼JBq\Z–MOçôª³·†ó:ûZíko¹ªÑ¨Eg”RúüÏêØ&ƒm\0JÇÓªÝjIUSóœS‚ü ÅÉè<ædv¨1L0ŠŒiÁ³¨.¤ššyØY=¯Ì.÷‘a-z5è´Ô§1ú.z ¶ƒBœ\Zôh¿¬\\vº0f®FîZ’G‰Õb6˜*d›Í\r0Uþ«z¨\ZèP‹l²:juN¢æ!µžt±ëÒÑ£*ŒÛyt„Vecô±\"ðuW½ÿÖÎY«±TðÔQ€iÐ×ÞcAªãuîˆ>Ã°j“ÞLSm[:.‡ç ŠûŒ\rnU0n§sê¬ÂÄqiO»§úÌ¶7éeBÕn g‰êïç/(åK`Ò@Â^»ÑA·­zÞ?1•þŠíh½YU\'ij×0ÁÕMhëà@hM&”*Ó€»Üq€nú°’¨§™X¨6ô,D4÷cA¼úù\\«÷ÓªÔ¬Ñî§áb˜=c›©j+ØÇ ÏïÐs\\±Âp(™íuÛ†ªª&&L[c­Öt@ŸšÐï£ Œt[uý®Ìnþé!ìÜõÈ5Ü™ôy½ûÝMê^õ6â\'ã¬3®]ŸÕž”&\rB¿Ÿw¢Ët	cuÚö¶õ0]=x20â\nèZÇÇÅW–j&Ã¦Õ°’-b¨¸J`EÚû‡ÈèS)†ž8Âœq±>LÖ‘ºº…\\;z‚ß«¸ºÖHUeMDP@ú)~:M¾Œ¯6y<½!Ê‘r$ð«óm<MòOç›Ed¥ûJujöw:ñ([Ÿ……%|N\0Ô™…Ó6XÏÅ€—à@>DOˆ©%\'é \"ÛR0®6)Š;XhÆÛÄQˆ‹d¡z&˜Íâ¬¦ººòËG­+Ö´ü9Îeï±Ü&Oö÷³;,­ù_ŸR/	ÒÃÈx\0\0\0bKGD\0/\0;\0Âç†ªG\0\0\0	pHYs\0\0\0\0ÒÝ~ü\0\0\0tIMEè9\rjÆà\0\0/IDATxÚí{”Õ€¿[Ý=Ã\0ó\0yhD@0ø`•ñ$¢Mt×hdÙÄG<èf£Ivc&šMÔœ¬§‰kDÏ1/5B\"F•‡/d01_Ì ¢ŽÎ@˜¡gºëî·Zfq˜©ê®ê®êþ}çô9Vß¾}ë~ý»÷Ö}(­5!c,Pë¼\0ê€6 Ñù{µóßmrOB„\n‰L5À5@=0Æå{ž–8/Aî‰È487­:Ë÷7;7|µÔ¹\'¥,Ó`¾Oi]&QJîI©Ê´Xèsš§J„’{Rj2ÕOn³ÓYäžä«@Ÿ;/ tÇ8•BðN½Ü“hÊTð/¬à±rO¢)“ ˆL‚ ˆL‚ 2	‚È$\"“ \"“ ˆL‚ 2	‚ 2	‚È$\"“ ˆL‚ ˆL‚ 2	‚È$\"“ \"“ ·ªÌcïŽž5>|îdŸÒéf InmIÜ“Fçµ”ì&Û—L™=sÙŒPòÅ2Ìæ™a“ifó@‘Hˆ\Z‹\0\n™ê»äžf{È–ˆ$iÿoi¾?´§Lµ\"’PDÌrúPiæ5:FB1q(y\ZÝÍD¦y\"’P¤ä-:e\"ÓRà\\)w¡HB#2‘©NÊ[(bòR¿-ÌÀƒ<OŠ™Ú|ÉT#e-þ5óA™Ad‘I‘ID&A™AdAd‘ID&A™¤Ad‘ID&AD&A™Ad‘I‘I\nG<‡÷Þœƒ$ä‡ï»LK€ÕrŸ‘Išy‚ 2	‚È$EL¼¾dÊÖÒ6‡—ÇÕ±Zs¸R¹ï5Zów¥x5™Ò/Æ,^‹[jTAdlM9pð•˜¥NŠ[LPª÷ë•â|€ò¸BÃ+¶f\rp;ð’¥HJUJ±™Wœg)žs^F$·(˜`)¾˜Iø¬“® ”„LJÃñ\ZžþèD%?8¸_Ãó\ZN0®	B‘Ê¤a°­ù‘‚õ\nŽÄT8ZÁ:[s›†J©:BÑÉ”Lé£Üo)®ÍK)*x ™ÒGKõŠi\0bry\\­\0Fæùsg—ÇÕJàSÀÆ–[-…?—«‰\"›Že™&…)Ãà`æ¤ú(±˜Uà<|—<Þ,Í¼ýÐÕž +ÒGBiXÑÕžˆ }¦æyPY\"¶X^¤ÌÀÄˆ²DìÇÀ`©N\"S¤HÛúÇN_%Lœ™¶õO¤:‰L‘!•¶Ï‰Yj~ó³Ô¥©´}®T)‘)ô´îL–ÅcÖ7XXË2³¾ùá®.™)!2…›êA‰ùÀñ!ÏæôÊñz©V\"S¨‰Ç¬zÂ?•G9ùD¦p¢5§3\"R¦ÓµæL©Z\"SXù—÷•z+Ó¤j‰Lál;)æF©P£–_¡DdÒš“#V®#µ¦Nª—È¶_ùOD¨‰÷Q¹:ùD¦PqzDËö4©^\"“ EÚgšÅ‚j¾…âï3Eé3‰L‚ m3/¢«¥n‰L¡k.™¥áÑkæÁ_¤z‰La#ª»©vIõ™ÂÆöˆ–ív©^\"SØXÑ²}Fª—È®¶RÊþ°+båº»+eo’ê%2…Š²¸µ=‚Ñi]YÜz[ª—ÈFŒX¹.•ª%2…[ë?í)Ó¶ÖË¤j‰LáÌ¤Rï\0QÙ—îg–RÒÄ™BÍ/\"v?“j%2…íÀm„w¦ŽÆlˆ/QIdŠ7Þ\'^Âœì ˆL‘@ÛZèY¾:œ|ÙR¥D¦èdX©0[¥B’¥4p‘¥ÔsRJ›Hv¶³£{yEyìW‰˜u…ÝåUw§í;:“é‡ª&¢T„×Ž“E¦BS50¡»RöÕ)[·TÁ„JÙú—ZsUÕÀDÔšwÒÌËP·ì=ÉôÕ¶­¿X€>T§më{’é¯–Å-é\'	Ñ–	`pEÜ¶,µDk.Ðš7óÒ®Ó¼©5Z–úõàŠxZªéfÞ¾(ÅÃ¶­×ðsK©3Š\0>f­õ£h®´,™áuN?­Öù»¯ßÛz4EE¦|‡XKmæ¥ÒúS1K}O)¦ú^LÛúÛñ˜z8ô‡Ú„ƒ±Ž<uŽ4“³H#r§0Æ‹í.Æcê‘Ý{R++ÊbÓ,K]œER­À\ZÛÖ·vv¥Ÿ4 žGú¤¨æc¤™W$8=pp@ÚÖ§[JÍ>¥Ld”õxKð–6•VØZ?³Ô*à}ËR\ZUö®)e¢$Sp°­u˜k)•°5Ï[Šçq¿ú¶5f©?\0èñoã=ûCÀ«ŽhÄ”ç¶\\¥­™f)¦ÙZw[J¥0ó	;Š°ÞÔ9ÉØ!—ip*ð¯NÓa¬Õ£r[æ?·\rÉnûþò„•Í’öWýÈh²Û®,OXŸ\Z,e~™¼þÈ¹¤Ùé@ÿxh)‰\Z€Y¢N¯k]§³£Nk_¯î”=Á¶õOµÖ­n3`k½ÖÖz†Ÿùpû²m{º­õ\ZåõmëŸu§ì#\n‘ß_cµÖ«utiÒZ×]NaxÎTnkþ;Së•â*`¨Û7*8QÁ£¶æ\rUyÊo¥­¹Y)õ˜‚™Þ7D)®ŒÇÔ:[ó} <¿µ5N$Ú\Zñh4ØˆY\"Ø4*¥µ®žÈâ½§«s‹ŠŒ×è?ZJ•{„¥ø7¥x,¸(ÎéÀJåÞÙ¶µ~Y¡ÎWŠWBÜ¤[R„ÍÎ¨ãj¿.dd\Z¯+ý	@)Æ(Å#¶ÖËSi{¼ŸM¥íÃm­ÿ¬+üÉé[©+	!¬p\rÎl1ŽÐq¾Û¢b‰Lã•Àè€\n¬KkžVŠÚZ¯±”ÚEäd)u¢Ö\\¯\'Ø,{8B¡j0;+Ó¤ki¶á­·Ìß/nèýº‰GÀ A0j¨€ÑAU6a†õ›\")S2e*‹YÏ)Å¤<Uw€ÇºÓöºDÌZ¼ÜÇµ“ºÓöI‰˜u\"p&pP~ØÜ•¶+[»(R­#’ÑhÛ6xíU#ÍâësKká-F²‰aÂD?¿w»Ó¤mŒœL\ZîVpi*LŠ{4Øú£¡öS Ç\ZîUpIûGKj_Z»~{l\\Ln§Ì‹.…©Sýë2§\r™´æ¥x\0ˆÔJº<Ñ­5*•÷\r,ë»rJ!™„Í›á?åwæ7÷s@ý˜r,”—T¨¼É”LÙƒËâÖ\n&Š7ûN¯t¥ìãÊãÖ®Hˆ”Lš(´è‡ÁE!/Ñêš¯ÃÌ“r•*k¡ò6š·Ô×D¤~~Ù`BÜR_„H¯l…WÁü3\n/˜<Ì?.86åtfÂ]NÙ„32¥l=4f©-\n†‰2ýF§Ö´­\'Æ-Õ\Zð`Ãê¬úH;wÂ¯nÏ}@!hÞ_¾ª²~–÷ŒÏKdRpˆäº¬Ppa(EÚ´	.¹0ü\"Éã%Â3ë³Ma	{2†C¦®´³ÔU¢‰{b–újWZ±Z¸Æ©$ÞEúíoàìÚp4é¼4ý.8Ñä=éù4×j\'2Õ„F¦„¥ŽŽE<1)a©cHw^W½&“ð_ß„ë.Žni^w1ÜÔPc¼4õ—I)>+ndUnŸ`Àa¾g‘nj€»oŽ~Þ}³œhñ¼\nffzUaeêè¶+´éÈ	Þ\"æutÛ~5õÆâu.ZK‹©|Å RÏfß—.ÍF¨ï¸é?*SEÂ:@…s\"g\"¯HXÃ}JÎ[?)™„¾­þQðB-)t3o®h‘gùÔ¼›åI¤›\Z¼ÏdHTFK¨¾åµ5³T¿;Ms²l•SùÍBq{)ÔxnÞÝ³Ä}Ónà5ªk z(-ïÂ‡­°íÅàÊ%Q	Õ0°\nÒ)ØÝ#Íò;aØpøÞ¼¼«Á‰Pmy•)mk³Ô¡bDNƒãœrÌö€·k<5ï_7^îN¢a£ n6S•U`YÐòlÝ\n+–Ã3í;úX8q–aÈèê‚íoCÓVØð$twB·ËÙXwß3N€s>ãöÓ«§ú^ïWP3 ´æ@¥Ø›r‰MZ3Ê)Çl¢R“k™¶mƒ™.V_SgÂÌS`–S©4\")e*wk+lx~s¬{Ð¿Ò8âd¸ä‹0m:\n@*~ïl7ó_x6o„o¹OwÕf¯³Ï¥—5PE&¥HˆH>£Êz†½û¨”LÂ÷ot\'Ò	§Âœ³àÄ™0|¸¨çÖh0r$LŸ±÷ßüêˆ“á+Wé§™)Bñ¸ù\\­M„:ä3FçÇÀÚÇáÝ¿»Kû?Â}Ë¼Lmè-:9\0q–¸P°r¬é¯³üÿxtEÿGÀôSŒH3O‚#öF£õi0l˜êó—Â‰çå.ÒåWÃìÙpÀ&ýÌç*±˜‰R‡Œ†3fÃ¹çÁésün$îYâ%Gó1ò™4”KX*X9Ö»ŽJ--p¥‹½$«†ÁÌ“H™ˆÔç A¡r‰P‘Î˜m:úÂ²Œä±´·Cóðìw}¨/‡9Ÿö²D¾ž}æ™´–‡µ>•c63HÜG%7¿ÈGÀì³á¤SŒ nw¼Í5By©Gÿ‚¡CaêqpÜ¨ôð¨î¿Ë©Œ“É’°T¨r¬Ãí>Û¶¹›>z\"ÔNa˜_/d+T6\"õŒP³ê`ÚÉîŸ-¾ÞËZ¨ê}ûM–T×¢£Þ÷_âášþÈ ÁÙåÈ«P¹ˆÔS¨‘Âaã½E§û<E§yËÔÙmWÙš#¤^ûÒÌßÙm×d{ƒûì+¹‰J‰J3ZVSã=*e#”\"edª®†±c¡ÂÃÀÝ7›ˆíŽsé±D#™*V…¥8PTÈ¥Y‘°*<ˆänàaÕÊü™þ„òK¤±˜Ùw/æqœmÅ_²ŠNÒÌ+.ê\\_ùÛ{Ü]×½Ë<mkÛN(¿E“ßî.ïï»ñr/óö>*s9Å«eze‹·á;Þ5›I:nïó%¿„2fÏñW$­Í~ÍÍÐ–ÅI>›7ÃdWë(ç‰LÅG\rnWÑnØà-åm[Ìô ñÌÔ¡ÁƒýjÆñ0~<Œ:$—ÍO>.R[lÙ¯½íÞÓxî·2UcÖ:5J3OšxýÓÑ-…‡‚W_þÓ¿&ßðáfÛc¿EzùoðÔjxñ÷_÷mê¹§VúLÅ…»tZZ²[ô·ó-xàXö ¿BÅbæå·H«VÂòÜÏÏë5\"o™D¦>xãõì?!(¡‚é¡ûs	L?±Ð2uÛ:­uQŒœÿ:Ý¶N¹¸t¬«·nÍ-Ca*‘`ÿGÞäS¦„¥ÞWŠçD…ÜQ°!a©..u7øðò_sÏT˜„\nJ$€§w{eu Í<\r›E_Êñ¾&è×nCa*H‘Àkß²60™¬|)Ç§]\\Vç*1ï›0†W¨ Eò>Qä\0Ä£ÀnÑ!\':\0ÿöÛzï=ÿsX¡ò%’G‚”i‡­yD|È[ó(ÐúŒæS¨ŠŒµ‚­z±[´Èª¯dÛZß™÷&”Öþ‹ÔÞž_‘Ü+Ó®.{p‡¨‘¿ÞÕe¯TŽ3B=¼ÜìÔÝíoúé´‰J^SDÊK3!biàÛ\Zþ*nxŠJ/ÿé”_´èLÚ“ô?2YTVÂ¸Ã`\\ø¡|¢«2}§+”b0HTé—ÝZs…¥\"ÐWÚ—\'ÁÙŸ3Ûq\reeþËTUÇMÛÛ\'ós_¾Þ5Êí•my™5n)ÖbV%.¡ú	˜g)WÃááéô3àÈ£ÌÊ\\ÀF ~ízä–®\"iÌçŒU]i}zYLý8V¼ù»Òúª²˜ZØ\'ÔÔD[¤B	–f^OÊbêÙdJº,¦¾¡_–(õQ³îŽ®´þAy\\eÛ´ktu•_Ë\n)R¾…\Z92½QW-JñïÀ\'ÿ¡tìv`6Ÿ¤×æ ìçT†^™» ú\"õ&”;ÇîË”9^¶L^]È•¶o_³57i˜c)f(8\\ÃTŸ(6s4lW°AÃë¶æ+,åA‚þiÆÍ~yS§y?{)Œ\"å#BrZx›yûœh~ï¼°µSª¬Ød²µîŠ)µ[±`ê\\“+™;¼xD\nZ¨‰®w«{22íKL©ÝÅØô‹_ÙVãæ„ÀÃÇ—HA\n5Ñõ³¬¦PÊ$d»A÷ÓGG¤ „\Z3ÖSÙË²õR“	à†,Nö>Î:?‘ºº`Ïÿ÷å»è0ýœìÒ™ÿ\rOƒ¹F¦EàkZÈ=À€~¯š~¼Ç\nZ	‡}ÒTÐIGú+R{;l|Ñ¤9î0·›z|Ð\n­;àõg¼¥q¶ë£9Û3?d¹È4YênD9\"‹màÇŽ3GUú*R¬|îºŽf)?Á?¡†ƒON‚‰“`ÛËÞ¶üšt¤§¨$Í¼R¥¼Ü[S/QÃG˜Jî·H·ÿ6=Ìz¨rç4ÁCÆ˜ïà–…·xyÀ-2•<s>íþÚx™9CÖ²üi³3\r1ˆ†J™UQáí}³çx¹ziO™¤ßSŠŒí~6Dg;´¾»ƒ)ƒßBi½wHÜå£Ë¹Ün‹°‰§®[žF„ââŠ«Ý_»ýmx¯%·}‰„P¶mNðxëM÷û×{šnµ¨ç™¸½LjV	2y²»èÔ½þñlþìÞœH~ÕÕe~¶¿ånðaî8þ„¬šx=eZ*5«DùÖ\rî®kÙ\n+ÆÐÑœH~	¥5¼ÿ>¬_.Wÿ{‰Ôp÷¾]¤XCCNSï2z)(”ÕÕ`„gû9IÐî‚T*kÌ3œêj3(„H’;á­`•›ÑÄÊJ3 Ðßˆ¢Ö°c<ý<ø{xÇÅ>žoó=lðno2e„ª—ÚU‚u4¬ßïö³©ÿ®÷ •€ƒŒHUUû¯ÜZÃÎöìEÊV¨ŒHk×ÀÊðò&þøù½0Èõòº\'mÛS¦&`p¼Ô®£¼=îs±4ãÝ×áýÝ°s—9+¶²ÊTìÌ°¹ÖfçØ>€Ç‡_þ4{‘¼¥µÙ½¨¥Åˆôè_`ýÐÖì¢Á¶Òü x‹JM}Éðp(n\'Š‡Q‡@åAðäCý_»£	Þû\0¶6AG\'tvB²ËôkZ[Í±5O?Kî€->í’ÝS¨!CMdŒÅ •Ú+os3<ò0¬X×Ão¸kÞ]ü/9yhèí(ÝûvL×\0·I\r+1’I¸©ÁÛæþÃ\'˜y{#FÂàJ38Ñú>¼±Þ~Éÿ<V‚3>c¦\Ze¤êì4Ãß¯½\nkWAÛ;îFï¦Ìû–y™ÐŠlš¼Èæ¼Ÿ`¾Ô²¢¥¾t©÷Ó•fÊNw§ù;›£/½|VÍA0¸\Ze°§þÙ»v¸ÿÜ)sàï1^»g±hð*SO©æaNZÑ¾h27³És*J¬Úl&îº§Ýq¡-™„èS<‘—jô2e(Ãyôó<V&º–«&Š{FŒ0Í )sD$ó€¶ß‰\r™J‹F¼®C+–•]	ÌdÖ:\\L—ÈTZÌsÚþÞ\"Ô}ËÌ2î¨2ÿÙŠÔŽ™Èàje…D&é?¹çÏ‚+ÏÖ·½õ^3MÈÛðw†Ë€%n/–ÈTšý§Ë²zç9ŸµÍþî\nd³nÕf¸èóÙŠt­‘$2•6\rÀw²zg2	®o”Ê-\Zeê½¾Id*m–ËCù;aùCpÝÅáø6oKë³éå,’È$ä.T¤ºõ^˜yRnlæ(’È$dðg.f2iöÀ[r§?‡ôÅÜpáEæAŽÊÉI$‘IèI=p—o©µ´˜Ùãkž†Å×û×Œ;vªY.‘[Sn_<Ú‰L‚j1£}Õ¾§¼m›Ù¡£^Ü`þí©Ç?þ0xÊœ½G¹L<†‡OìG®7Ú1ÏÞVû‘˜È$ìK\rfêÌ¬\"ÿž›‘šüJPž3	ûÒ†y°{-^gKD‡ï:Q¸ÉÏD%2	}1ÖéKK”Úäô\rÙ+R\"“ÐMN”ºsÌgTiw¾C-nº*‘IðÒ—ºÆyUGH¢Eäéø#‘IÈVªzÜœ¡[‰L‚Ô;¯°ô©69-)Ä‡‹L‚ŒÅ3×“ÿCð69ò,ÅçÑ9‘IƒXu=^~7›1Y3¯¦°|q‘IÈG«ÖyÕ8‚eþ}rÂd$Yíô{\ZWhÏû?j“;‘Ú2~\0\0\0\0IEND®B`‚',16,16),(3,'ReportUsager','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ó\0\0\0Ì\0\0\0é‡–—\0\0\"¹zTXtRaw profile type exif\0\0xÚÕœYv¹’lÿ1Š\Zúf8h×ª¼á×6Ä!ER”Rºyž˜)’‡‡€7æf™ýÿþ÷˜ÿáOÍš˜JÍ-gËŸØbó/ª}þ<Ÿ÷ïûg…×ÏÜç×Íœ¯x^Ò›^oÌûõþÎëéÇ/”øz}|~Ý”×…|}]èõƒ·ÝÙóÅë}õu¡àŸ×Ýë{Ó^¿×ã‡í¼þ¯íÞS¿ôüèË÷±`Œ•¸^ðÆïà‚åïª7ýC¿Ÿ;?ñ¼É…Â×éþBúÞvæýË/Æ;å{ÛÙþzGøl\ncóë\rù‹^¯»ô½í®…>®È½}é?ÿ ÿö+?ÙîœUÏÙÏîzÌX*›×¦ìë÷+Þ80e¸¿–ù(üŸøºÜÆGe‹-¼9ø˜Æ5ç±öqÑ-×Ýqû~žn²Äè·/|ö~úp_«¡øæg¢>Üñ%´°L¨øgâµÀËþ}-îÞ·ÝûMW¹ór¼Ó;.†/þ0ß½øŸ|¼_è…®s×˜åÚŠuy…Ëçô7ïÂ!î¼lš®}ï‡ywë?rlÀƒéš¹²ÁnÇs‰‘ÜØ\n×Ï÷%}RÃ•õº\0&âÞ‰Å¸€lv!¹ìlñ¾8‡+þé¬œð¸”üræà›2Î©^÷æwŠ»ïõÉ?/-8\"…L’T<ÔqVŒ‰ø)±C=…MJ)§’jj©çcN9ç’…Q½„K*¹”RK+½†\Zkª¹–Zk«½y -¶Ôr+¦ÕÖZïÜ´séÎowÞÑûð#Œ8ÒÈ£Œ:Úè“ð™q¦™g™u¶Ù—_a‘þ+¯bV]mõí6¡´ãN;ï²ën»bí„O:ù”SO;ýÝk/¯~öšûâ¹ß{Í½¼&Åû¾òÃk¼\\ÊÛ%œà$ÉgxÌG‡Ç‹< p’Ïlu1zyN>³Í¤<^sIÎYNÃƒq;ŸŽ{÷ÝÏýÖo&Å¿ò›ÿ•çŒ\\÷ßðœ‘ë^žûÙoßxmõ[QÂu²P6µá\0l¼a×îkWMz>Ÿ\\¶8¶…3ÊÙ³lßW³–å1D&Á°T>g¤¼Öìq˜lëê\0™Ý¶†1r³‘—æYþ¤]Žò<Ž³c³»¦ÃÚœ^ëäb*]ÕÉ¥¹NfuÝŸ:Kü)ã7b(Í¯ÑjvcçjC¤®îØ[Ê[%¶î’7A4k˜ä4«t&*NcÎ×Ì˜œO«¦ËNk¥>û±s¶QFì‘+7A.¡ÕKÚ\\©ÜuŸ,1Kàf—F×K@öJìMå8ñßo>§UËçÔRLïe‚û1CJfÎÕ/¬º{êƒ8a–0Å*=ÀY&ßßÆ:kÇÏc»¢œ1![Â7k½”7+£g4¥º+»XcóžœF,y­»\rï+ŽóõlêZhÆÇ†Kø{¶Êõ¿õÜE‘¾;1íS[DOt¥äáI’Âd‘1c)Ò –­	§&‚”‚Ã´¥¸m_Ç	õÈsy¿w*…è=…ÈÂ5¤ÖÌÛ¯ãó±£å3VˆÜ»¥½BÒçà‰Á¥­ë5§øÄDÏZýÙx|\nXãÛí¹Â(µG,ÖÒô±¸™{jmÕvi–lPê$‰Q=;÷‘YÂ2ãÔÜ¹1ÚÁŽ8¯ó{T_²’»l¢%8’jkïPD.Óãzc(úSÑ¿×Ð·ÇÍÎÆÄÝlwåþÄãªûŽº¯CõõtÔTœx†˜··žìÊšt£µTÈŽÝ¸§.»#À‰{XTio§±@„½µé\"Û(ÆâôC¼*@wº_%ë¯†íkqÏº°C!s˜	t¸Ò©jFšäiXvÌ	„õ%*“Iô½@ñ5YTp)Tš\néwíR“l\r•6•Á´5îö\r€ãÆü\'[šoŒÙÎr²/XÛ_bÉ÷=-Œ|ß;IÒõma ä³6üð,î×Kû¸0Þÿyaæ<>~¥½]”}_Ö³¨gIºñ]Ò›µÌsýd-½*]6\rdý}%1ö³ÉÍOIûšÔúŠ’6$w¹e$Ÿç2™‚ÊjüÖY\'O*Œ\rí3@lÆA½ê[9ñã)\0«g*\0åƒºñDö¢òJ{©Ï6\rp±å˜ÜhUýïºb>lâ‹ªDd–å&Ù\\(µ£p[;ÁÍQâ‰B†¦»ž(½oô[þÞo\\)œ\Zû1¶~ö`q§O¡m§øCjÊ°+íéå¼\'î×‚PÌŽØ†ZüŽBO¥ª[€‘Ù’ÏÚô|vG‹sÀNl 6`R‡”;‘9¬†\0[(Ñ\rA¨¤-ì*î“ý0âF	K÷‰ïK“ùÇÚõ‡Ÿ\\ˆ\rŸºl2W`åL¹›#.ê?)/Ü“µó)ÌÍ»Ôx™:½í9®’ÚƒF\0îÁ~Àrî04X_s‡_HT£A-\"\0¹Ê€b¹\neS1r»Á³)JgÈÛ8t‹åõE/t9øå?± }6__øO?{¡Ó^Kü´@^_ ÉAs‰èâ‡Ã<¤¯{Lý^ó!þ£’sdÒOÒ*#Â·Vªb¥¯Ý¡pD6¬È\r±¥óá“Ã”~La¤V¾”g;rÏ‘-T9êkµP˜ËF ‡ºûRÂl¯Ì#g¾†$ÚãBG\r®±‘Ú/(~w±‹Ù{±dØ™NŽ’ŒÓu“Ø¦àŠ²Â„¸Ææ Š-#Ø&dfìåcïŠô›ŠµÕT¹[ ÎÁ|ÇŒµ™á<¯êj¡\rôÇbÅÊÛÜ†2Õ¹!Ä8HO\\–„ã(HË¬M¦Ì#>†UC.‹8¤\ZÁÂ­\0ù\n‰ÄßTh+8Ú(\Z“bh‘’Àn„ˆÂéJ-ˆ²bÕkDví)ò,ð\0ð9ÝŸO“ÂH­`Þå÷å˜é jo!!_«°\0*Ú‡Ø»AÔÞ-¯æÓËöo–ÙŸ¼»Ñ|?9ñO.e¾¯ÿàRæ¡ú×—2gÿw.e~óy)ó›ôù«K™»CÞÈïºÜWo™\"kÓØ£®’Ezí×.G\0¶\ZvìAY;Y%%²QU$OïïÕÑ2U å³ou¦îÒwƒ.¦ËQ$¤+c\'s¥«ÄZŒè¹#Fôr¡wj:Ý­(Ž-†Göìéà½¢¦¬Š›V¼–ë­ö¢°ýAËŠÜf%ª–p×WÆ’ïh«æ®D^ˆjÇ>¦!wVq¸\0H°X}o#’\r5ð—ÄO©•Kä›ÝÐ¡+Ù!4l¤ö[4Pïˆ½0Qœ£S%º<*:nõ57Ûßðe‹@r°HÐŽa‚o\rU†Ú€­`kk9ÅÁ8Èˆ»Œ6‡»*ðƒŸ«ô5Ÿ«‚¥„„ z’£€8húÈÃ9|¹šOTû›uëN	t5=êáiœª´Àóö1*Ïùô¦`Qy†*|­†%åY´§N{åuõEÒ	õW j®«£ûs£®!«GÁŠƒß °‡„GÜ#‚OTˆÅ¯¥zw8ž¥¶3“ŠAˆðªMœ9;ö´³ƒO¢}=îíª×mAPò„bw2É€®\0ÑnÞÈÞod¯Š‘ø\'¶îGŽI	‰(X—Ð?\0,rYn±2ïüRàƒ*ó‹ôÓtŸno*=´ùQ+úÆ|+EÔRE|õ#Ë­—å¦[häû,e>\"åÖÔÌ!ÄR¾J‘DD¸Õév„X9Êd!c;ÁG¨:ÏíÀ!ÔzLÁ‹ ÄÝ\ZÚÎŽðAæ!+¹Êº_g­±ÝºàÚŸ~ŠIîê]ûÿŒ¤á„Æ¬ƒB?sêîÕcâË…^Æžæi3Õ«‚ýÓg\"”}[PøM:=zÛõ7½ÝïjÒe¦åîægf	³Žîü„A¨Mç8‹Zî-–¹mÀ¶óA‚wÊE?Çhf\r±ApçqíR·0@–[òôÞˆwã^¨¥¸ó¹Ï‡Ë¶­<ÖÂ¢×#º2)uöØâ°ê$(,H6T_aoQœ]=¶¿£ÆpWSîñf¾±…”0AŽŽðÿø]t¼‡Ì{ƒù-”_q¬u“ðêø»¸†ƒÿVj˜ßi\r@=üsœQ¶eÜµÀË=7N®{®sä\Z~çk¡·ˆ°ör ,N\Z…ÕÒ$æë¯µ¤Ö•coÕ£û}XX,¼DD!š	Q\Zs@ ¤{åHˆµ.I0WAÇn5|áž¶G=M\'AOm”3[Ð÷C\'OèŒÓK¦&XÉ>„_@¸Y\\~’\"Öµu\Zµ•Ôï\rþ]s`ïe¦pÔ,Vó0U¡æ1Wî™=;ÑÔ Úì\Zf®«¢j\\§\Zu6yªê¡‡-Mt®™kS‡¡®’áèSIØä†_…›/CÃZT[ñt€\nB>ûùþŽ`Â\'jÿxBðcÓ;*’ÀÃ$§î]>Ð4uï(ZmKâo*0¥õÕ½Ã!!òâü«_î÷°ˆB`j·ÚÄð4<´óKp\reá­6¢Çlð)qâ¤@U¸µž6Ô\0rTo–Uçº‰aÜØÎ[}Å±:´—C&òâ©=\"™šQŸ^R¹–·eÝ³ÉsÞ–õ,Ê¾¥•ùûzA¹(ˆ¥™üc<Q¦XÌJ:‘ðR°,‡@Dm7TN>t¨EB\r\0†ÎA±tÓð4Ÿ°èŠlÅëÕ«­½öOm¬wHúMCá]¯+Oµ©«iï¾~¡Ø?|“-Pn¼¸ýÐ@¨>°gòC¥ì}-_¯â¥.×«|éª“hÞ©KN5¼°Cý|g•®¯IfÆÙë°µø¢.cAÍÎÎ’LèQopÑlX’Ë#$ŽW6p	ßÔˆÎ%*f]÷dÍÇJÊÍŽYœ)z¸ÏNbXÎ/\n„Iíx}É[³Ñ|Â«)9%wž¦¼Žë|Jö! mÅñŸºx@²\'¤´ÔÙƒú5m×ŠSr‡¢æ‚—+ÄwzõAÁTMU“0Ì>R+òTÈC§f»ÊÈè÷=5¼ÝÊ\ZÚž¯‚w‡%Læh-„uØÅVBÃÇíê=ù²¹R×tzp€¬J7´$%Üè[MX¸—85@y›dj+Oˆ2`\nÎ-Ó€èÎ^ˆ¥í²úë{ó[À\"8WÈ÷áà”L#;¢e“:ÍÚ»íB|¢iFD®WèYº0Z˜iz“@¯Bä	ÄÎ*3ÌÊÝ³\ruÒQ ¯\"e÷4è$,™^tb·T€Ó‚±LJid_±-R‡eOd.´I— Æ†¨\n;Å‚¬‡øTÐuÓ&kÚµ:Û×º7T¤¢ƒsh¢¤c 9ŠNÄˆ*¬êÎ-\0!÷àÕ£©ÑL(|9‡ÒÅ}3Ïçx+Så`Zpœ€Ã]«Í/A\0èŠ,Þý†d7;]<[Áiì¨¼§dµi;ÝÖHÆR»ÒÐ&ƒîòœx³O¸&¶Wû©š÷\"„¨2Ä	Œ±ˆVoâ}EÅ“;DÀB|.  ´¹2YV‡ÎÐêÄ§c#0SV\\îqY‹n7Ú[TÎSŽDoØû@²àb¬Ë¦U–õÄ /Øg–þ›ˆ4ÇÞ¨Þ¨¤N\'*ßjÀ#G¤ÊÀ>ðº–¢ïŠÉi»@¡ñ\08§ö”y—!(I/Í\\å¸¦lÎ:Õë¾,!¬çtñC,âG°F²ªÐ¹	œ‹$¯FX*(wÃ´Yé¼HZJE{›.\"wW/î9w¦«©” «Õƒª^Ñu\\Ç…ú8xîƒ_øˆ:°×\\’»[”ê‹Ù6Q#óyš(dÃf‚œÕ’Š\\nì¢ïw€œ÷>[{õl5ô\r¡÷jø¤^£_„š)uÉåˆ°†Ám ø€#î)´KÔ.¡4¿Nì®j°¥\Z=Qõ—ØdÅŠía-íxf»Å_¦1UËÏ/d¡ÃÃÁ#{3’2Š„ª}Duƒ[óg\0%ï”Š:¹8äÑšÃÛÙÈT*î@¥%Ž ŸD´°ì¸¡sÃ_pQ Ÿ\r$#é\Z¾—‚w˜`…_Â§ÐC­O®p©œ¼BÄÖžËÏaò/	|SûA‚#Ô]Õbu‹â@×á+µ4©ÙÛ&eÉOÂËnõu]“¡ªPÈ	Ì4c¥—»¿tŽE¾	& ˆÔ­FJÚI À†Ù€÷è¸”ñŒ®#¯\Z>vóg•]…}ž[e­R	þ,YNMØxEP»ýFA;¤Z;ÅÞÖ5\"ÈÚ;‰\r2½‰¸ïu‚W^˜óÔÜA°Ob\Z¼†˜°YvJQ¿-çºÅ)jrÀ7•¿®©R„·Uÿ±ŽWÊž\0q[\\¯	\röŒå©¬Á]òß™ïX¾poˆI9\'Rò“ø=xÐîIþ„ú¤EbXOöa‹jvê€Q¶\rŒnäRÄã\'\nƒëÉ“¾8¥~P.£•yq¬Ž\rm p8‚hÚdÈ—µ;<ªìv{›„Kã~:N(aT?ÕA¬Ã‡‰$&ò(ÞqP Š”3Y¾\'\\-•À•5T€”BªSw€Z°JÓ	kÁ Ö,\n8 ˆÔÆ©š\n#¬I:™OOP¤Òá½3µ?OÉ…¬ùuÀ>uB42^}®œy¥FÝ&gà{B–R˜~‚©\0ÂQ‚y…\\^êH\n“ È|~ éˆ¨‹¢\0 æŽ“Æ\nMlšI¥2f/“N`¤dÏÀ8Ò‹z;ì° 7€	Ò„W\Zœæ?*¶_:ól˜†ì†ºÁ¥=¨2ÔÚRÙ¿#*>ŠjôL%Å½D?b\"öu Â¤ê*H\\D«ÅGàz¡ŒÏ©É„ïnb,sgÐ\\—<CM#79c¥“Ì¼ZÈùC|e(Lè&–ßžDãº¸CE7˜_”†’l+rñ9¸q£Z{#<¨ZÝ×)‰­€NJÑM1åï“yçîÓKÂŽÝ”»Žë \n	]	f/Ñ§\ZÝA/5òYm<à7Ê¿R8wŠ2‘°£hßãm9 Ë…eh‘MQ_À*\r¼‘Š®”yk\Z•9ÑÛüÍëNÎ‹=J+;ÇU¡4è`ÈCÔ“ØÛKBÇ|¼ˆ‰ÐH8#”ÖrÞð¦Â\"6jlA™âò¬ëØiz$¯‚®ƒ¦Ðiæí°Š\rÔ®]4†GDlH¹N¸ÒËHM‰êºÉÔ\r`s0–´1©œ®VÔ,%ÂÏœˆ\0ÀZøBPÃf£¤œŽ7‰‘¾CíâmÔenjv*ž ~‚”TQTïî5fF\Zéè„l¼í£Êo»Å$â\0ö4A|Û-)jöåi·°à¢¶ø]IójK^PÇ»OÏj>³QT€í@©€6û{ahvC»ÜVe\05D#¥}QÇˆfø¿«	îœ/yWõ„4è¸À©~ìû™ß^½Õ<¾ÔÄd„Ðr5@\n\"¤$‰ÔcÁýM%÷ˆ³b&6³·\nî\"ÜŠ3\"•°JÅŸÏt@³÷·€‚°Ôþ‚&òÒ:HÍ‘÷ü’¾MóQŠÜDÚbi\r@&ÍâRo{¨t\rì»mðý.Ç–™jÁCø¯iL¡%p¨£]îSmØðT$S·>D³ÐfR¹âŸ…ðÛ™\0)*Û¤ža¢KÍý‰F›Êµ0`ï\\‡HMÜvB<)óÜŠZðhIÇ«7FàÆnªá“²ÆúÀ7ÍúëØÉ=	û¨>”x>«-ÈƒÐ…%ÀÓUD­V7ï)±jq(!ñ°G>5\'îgÁ ðà ëËÐé‡:	û R·ÂÀî³ÕÑ!àp.±\'F\rÔt~­:¹©û©O¤Þ]]½¥{È^ Ç„%LÂjWÇ\r? ü4jŠÅT¡€XCã M··é–Q\0wzm¶ºÀlß¹àˆm	à\\À‰÷ABß`ßgR¡(¥]MŸ{ÌFYbÜ½­„ :ÐJwº¨#±`ŠÄFñ}-h»nŸÌ½§XÚs‡;ïìä\ZºJqV»†Øƒ	ic._¤¨Çíÿe·~œ†¯üÍüÔèí\Z/\"¤N’ÈX]l\0…è”hì=]D»÷¦SÁÆl47û™…ŠÈ]ª–Xèb€Æ8:OCà5 ÔÝ²5£hî3ªÏnÕ$ƒK Š2ÙÆf«º1;î/`ß}6_^€“ÝùO-µÊ4ÔQQŸÒ³ˆ\"4¤Î°zˆ¢¶0ëi&î9¾kø{^Ò¥Séˆ…ÖºƒÈÀ!¨Ñ1Z°œÛ½QãJ#lÀVÛÎ /òº±Ï6	å»ØÛKM4HÁžàäêè¤lŸP1SeÔ§Róžî$MÑQqâAA¹Œê¹$sˆ÷¨\rã\0AlÙó}8A­“ ¨yž çOqàÕî‰f	\Z¿~\ZÎDE«õGÚCht–ïTjªCe!ýö&5)“oCw\\‚´ˆ:‚¨Å¡éµÊê;(5¬T˜wbÅU“QXa‹pƒ¬À5ZÃÞ\rxØÎ¹;rou…ÿw\ZÅ0RÉK¶ÏÑ¡„óxÆMu	8f×È¸ŽÊlÁ‹ÅºÀ½ž’h)iÙ¡TCI>—+	cx?Ù@Å§±-F,\'£êêo¶EÂÍ\r¡Ï¢í>{—½¦þëˆ¼ô\"çor“˜äé\0½s°{ÑSC+”íA¥¤D8CMô%œ»ê„ŠÏ–YcŒŒ™ÑºCšx1D5w\\À©«a:¨þT{ADŠ¼]HÑ\0„Ë«&\nµå,ùgIùS2ƒÀH²È±F/.CÆÊƒŒPÜª®Aê„b³â¦7fLDŠmI\r¹~çB¢¡\\PÉ`füÆîÈ|Í‘XIÑˆIGë÷(«B\'ÃWDÙÓWYûYÙsÄWõ˜{\Zƒn=Ô@ÒÐëÄÖàÖ— äFŠªêñVgÓ3!hƒdÑ\0Ó•vAI†,f	E}ÑÂí–Èú‚­;:uÝPûwÖ?RnÒ£Ã­ùõbµVgXw]ÎÐ@(;fŽg”RŒJ’`žëýûË™çzÿþræãòþÍåÌçÝ7¢¢YmÎ5a¼C£­1êüNÉt‘É|…–º£ñ\'¥à¬&}ŸÃrú9¾¥ˆèÍkêìsO4ãögð[sq|bäÝêª¯ãL#¥‡tqæu$ú¨5x5@E“&p€àñÕUµÍ³[Ïõš 6ŒíWÇÔ\ZDÔ(Ëz\Z\0dÚ±æ©®Ž¾Ç\Z¡Iõ¡ð=È¹ûXé­	žƒ¶ú¯lMd\"|Ç=’&g%¯ôËÐt\"ärôå¥ëü(zAÇÏyÍ­Ã2Aõ#Ü•¼-Ä|·õÒÿ²…\rÌÜÕP:‹øiá/‰Š\n>Y\rl_ÞK¡Zª—³\Z¬Jª±Ç2\\×‰÷ŒÎC±SqÊÛDQÖ#RQ’FZ\r¡Í~xxÒáÝ:†šê‚«è²§âQjÅ\0C—›zªzT(ì3“ô*\nú:©”xdÀ1§j!lQMa°\0#öÌú\"Œ`©ü‚`Êøˆ¤¡NF«Ÿcè ²\n;	»A† EÕP4·¿ƒMÓŸ‚uU,´©­´tXP…O\ruD°4F:=vEÔp‹Æ©¢wTèóËÏ«È8 ýž!«°œŽ”Ôè8mW§ào_ÙØ,®#ub¦•ƒ<°¥ý&jâFï)ç”b´LÐ\0Û®¾\"j$Bˆ=HB—ÏEI…!\'Ò˜º›Rùµå‹ß\Z×ŽVÍ\'b†«É¹9˜Œ(ÜZæ¡ Ïp»Ðuø–gé)Kc6œ±AØ µ(«\0žÃgt9Ù/%…Èz’\nBÎ‡FÌ½«ŠfK=ªˆ…#Ýá5yð»(AÆ2Ò!ž’À*\'QækÕY£!×ïÈˆžoZ©é€ëžÖ°b”$’¤#H6ÌØh´FGú(²¦Ê:¢Öp{öÞ„5Ã÷ºä`iO÷¤kÑF*½CÅØV#Ê„²iG:jòP:DO?ªAMÁ¡š¦ƒ!Ìý9ù?Ý×d™0Åh`ëñW–%áù~‚ÿwøæ§ü·±‚oïûñ¶ÂžS¯Ûk°àËXðïó¢tÞîŸ‰¶Ï‹ŠæŸ§þlØÁüó´ÃŸÙÊürÚá/me>Ž`ü[™?Ÿù½­ÌL†èñ/(Z©	¤ß\Z$MÔ–¹ÕMmÖdô3®R†:g­\')¿¸£¶F’ÁÆDí]Xb«ûbÉ3tDÊ[²ÖiŒÔ$õÏšÈUfõÛ/\"½:‚ÚŸ¢f¹BTîÔý‘¨¸Om!Õ½úäÐ?[7MÎÎÕÁœš8¤üìÄ\rôØ\\~«EËÅ~W0V~Ž,Lom/ó£Œé	ø¥ž=ÜIcE@	ðiW£\\Í\0I)à¾N]$\n§eM0*=¯mÍQµBçx`9\ZÆQñÑæwWÍRD0P³»Uï	? ìRë:‘¨gÀjÃwk•U¿H1Ÿy¹&±›åŽ8„U n‚µB@`uð¼ºÀs‹õh³£§ŽŸÙ8þÆ#A¤ÀôÄ¨Š|ZN\Z]ÛÕ»à36\n:»Ös†^÷—Êð\Zp.\n—8x3Ò#•ì;2yjµe¯Šæ‚*CGîsÌ\n?Øÿúñó\Zð¡W\rZf)B\rÃs\Zu¼Ax<Ú£èËéŸÅhz$“ê£µ!UG™	Î„Ù‚h—RLÔ‚Ô[ZjV÷Îso\'öà{Ñ˜‡ŽÊ[ï\0VªÖƒ\Zãµ£™1´ê†k^X(š‘8KÔ’M~PéìÐô0º$ŠHŠµ\\%¦p‚ÖL]B©­ãÆÓÇšeóÏÓ˜zŽ¤µJÒƒ[JwŠ¬D0p•b;xt[bªð{°\nMÄØ=5ž®ñZø¤fŒzÓ¬]š\'‘Nÿ«¡’ïYR¢iˆW(…mEOÝ“™|s¹¬žVñzžT]N£³Aðá)ñ¤¤t¢T›Æ{éÕ\r|Òõ)Ù\Z’®jŸ<s$GÏ iá¸Y[J¹¦ó‰fÂŒ²pŠžSQŽP;:.Öl`@ÁY<uFç?Ì+…úŒïY\nÿRçU,hc?,š6‰Íb³¶u¢„æGrÂÌ²ÎÎ}ØeëŒÿ6&s«:†Rg­æÔ†ó<!™­>¨¢ZìI.\0)e5øL4äJÊÞtÖOºu¯gët¤ÄµsJ×…ÛáQF­ÉDÔJ¢«A¹<d.=‘[#\\${>ø‹||f´nSGeÎHèÌP\0<ÊÀß‡¦¥ØE<i’ÃóöDÜRÛJgzX™\'ŸÓA­ûE¾š>çYcVGji¾6Z`‚aÈ	€[0[ýQ @Î1öTE}²\"1Z×êý\'ftäÚÔ¿i\0–äqÊ`&øTAöÚ‘p_‡:I¢wï·é@½þI–Q½¸”oºÙ§þ9{üùc41;\r*0{è,]qDMVùeîèS\\»“?ÄÓ\"SÕò¤DÞSCìÇ’Œë}\ZÜ¯Å(MÏ†ÕbJÛ™3‚¦H3²Ø‰·¢Á·Ô/­:)!Ð°IxM¬.5âGÆk=Qíõ×0¥¹Ó”º…ÍK™ÔAWÝRˆ2Ñüå1SÍÎ•§«¹@Rj:uíõ¸ÁÐT_ÑUñ/•õÓTë†(PG~Äqûª–ZoÓ–Jš†\ZDzê†\"®AxJ	rN»·z ˆØ¹žÃµZŸaÑÔ7A¶MK¬£MrÝ@8t ­êEj$M’R¦}55…7‡õùišCM@YÿR~\0å¾@Fí\0\0\0bKGD\0/\0;\0Âç†ªG\0\0\0	pHYs\0\0\0\0ÒÝ~ü\0\0\0tIMEè9$(tŒ\0\0ÏIDATxÚítÕÀ?wÞ{	òCD~”Ððj\r–•C(­Øu]¢®¬œrL”íªX+¸{êÑ×h»PÝm]µ]{ê‚Õ¸V+J×xDTp5Àú#5\ZºD~„,¼s÷7ÑlLÂÌ{oæÍ¼÷ýœ3çðãÍ¼™ïÜÏûÞ{çÎ½JkÏ(*­\r \Z8\n4Yo´þ|Aî‰P>‘©XÔmîó\n°ÞÚ¹\'\"PoÝ´Ò÷ßgÝðF)ÿrOòY¦õ@m†Žud)¹\'ù*ÓjàÖs®d(¹\'ù&S5ð²ÇÝg5–¹\'žcdé{k\\:îD«PÎ©“{L™*]þ…œS.÷$˜2	‚È$‚È$\"“ ˆL‚ 2	‚ 2	‚È$\"“ \"“ ˆL‚ 2	‚È$‚È$\"“ ˆL‚ 2	‚ 2	Bv±;¡J\rŸÏèY–ï‘¡ãôÇ> Enm^Ü“&kkÀ³É&SÏŒžéLF(^ñÉÉ3›ü&S\rÉÉE\"!h¬±€/dªÖÉ=ÌN>_\\À3IÈÑö_ƒ×_Ú[¦JIÈ!æXm¨¬Tóš,£!—˜„G½»=™©FDrÏ²SOfj\0HÜ…å4<èŒèÉLÕo!‡ñ¤|$;äy’ËTz%S™ÄZ2WÍAd‘ID&AD&A™Ad‘I‘ID&A™Ad’‚È$\"“ ˆL‚ ˆL‚ 2	‚È$\"“ \"“ dp\Zûn@ÖA¼áî\\—i=Ð(÷Y™¤š\'\"“ ˆL‚Ã„óá\"ã¦’0™\\VçkÍd¥8·ïg´æ=¥hîŽë·C…\ruRŠ‡ 2¦¦˜Ü2ÔÅaƒ©\0Jõÿy¥¸ 0¬Ðð¡©Ù\nüØe(º¥¨ùXÍ+®0Û­m‰\")’]L1×÷¸Ê:® ä…LJÃE\Zv\0OYY)LžÔ°CÃ×“®	BŽÊ¤a¸©ù©‚×LsÅT˜¦`›©Y¥¡XŠŽs2uÇõy\nž4Ë=	˜âV¿éŽëiR|„\\ê€˜QV›3<þÞo†ÕàRà\0Æ­’ì¯ËÕBŽ\rG²L3€lˆÔÃhà`>É•êƒÄj`N–Ïá<\\¼Yªy%¦èìŠô™P\Z6Gc‰©Òf\nà9+ˆ„Ö¨ì‹ÔÓ11º z\0.ÅId\n	S?`µUüÄ%	S?(ÅId\nñ„yyÈPµ~<·¡®\'ÌR¤D&ßsèXwA8dÜ„ü\ZËpÈ¸ãHgTFJˆLþ¦tX¤¸Èç§YU<4\\\'ÅJdò5áQ‡ÿ‡ò(ë<‘ÉŸhÍ7€™‰i•Ö\\\"EKdò+íã¶R1½ZŠ–ÈäÏº“â² 5hç+ä‰LZ3°¸ž¡5ÕR¼D&¿ýÊ\rPï³¸Zç-ˆL¾b^@cû\r)^\"“ 9Úfº0ˆ\rêy¹ßf\nÒf™AÈÙj^@«¥l‰L¾«.%_\r^5~\'ÅKdòAM5*ÅKdòmm›/‘Éolhlßâ%2ù«®7ÿèX\\GãæN)^\"“¯(mÌNÛ\nÂÆ¥x‰L~äé€ÅµAŠ–ÈäKL­ÿèHL™Z?#EKdòçI*u\0Ê¼tJIOdò5 ;’b%2ù6`þ©£INˆ/YId\n÷âß\'v‘\\ÙA™6µþ[ ËgçÕe—)EJd\nÎ	+õÉ©¿â>9¥°ÈPj»§ü&‹ëŠ=WTú×HÈ¸‰ìÎòªc	óÑÝ‰ß–)„ËðÇÊ\"S¶)\ZÑÑ¸yKÜÔ„\r•5¡â¦þ…ÖÜ\\24´ê]‚Tóz(æÉîÄ-¦©¯ÏBê„iê%\'»ß+ÒN‚-Àð¢°ij½Ö\\­5­žÔë4­Z³Ð0ÔcÃ‹Â	)BB «y}QŠçMS_¤áaC©K€\"¾æ¤©õ‹h–\Z†ŒpHj«Viý}°ßöªŠ6‰L^§XCµ5ñ„¾4d¨+ÅÌFo\'L}W8¤ž÷ý¢6þ Ü’§Ú’fF\nÇÜ*Œá\\»‹ázáøÉø–¢‚Ð…†¡~\0ÌNOáP‡€­¦©ï?Ml6$G¥¨j€‰RÍË¬‚ÿ:ppzÂÔó¥æ\0—ªdfôÚ%\nì×ÉJ›M­_	ê÷À§†¡6$,ªœ–å³@A’©gj.3”Š˜š†böß¾=2ÔF`c¯«\0†ônÍ–h„”ãº\\±©¹ÐP\\hjž7”Š“OØ•ƒå¦Ú’HÄö¹L£¹À5VÕ¡ÜèU¸ä?ê»cæ“…#•WÚ›3q¢Ý1³¸0b\\Ô*ùËlëO­ì³\ZÐO\0ÿ	Ì‰ê9¢N¿k]­S£ZkM¦¶XÜœbšú_´Ö‡ìž€©õk¦Ö33yv7Ó4«L­·:ˆ×aÓÔÅâæYÙ8ß4·r­u£.-ZëJ·ãä‡çL…¦æÃ!õºRÜŒ°»£‚Y\n^45÷i(ñè|‹MÍO”R/)ø3û¦KÃ!µÍÔ¬\0\nð[[fe¢ž&ï|EÆµaTJk]\r¼œÂ¾sÆô²\"\Zý”¡ÔyégXößUŠ—ÜËâÌÖ*•~cÛÔú]…ºR)>ôq•n}v,ì³z3}àlf¦\n¥Ø’	‘\0”b¢R¼`jý\\<aVdòDã	s²©õ³J±9\"Ym«s•b0Å‡®ÞúÍÅº‰Öµ­Î•ÌTl¾äRÀ¢ZóªRü“©õVC©ã)dŽa†R³´æv¥¸ØÅjY+ðMðE†*#9³’+Uºöö.Žífÿ“·£iWÿ³L™<œ¡CCŒ7Œ!CÂL˜PìÖõî$Ù­ßH™ºãæ°‚±])Îñ¨€\0^Š%Ìm‘±xwÏžK˜GBÆ,ààLo:ø š0¿V6ŽgQ¤JK¤Œe£ÖÖN>ÚÛAÓ®6l<œÖ±jŽ`ÊäáL©(¡¢â´L^w‡U¥m\nœL\Z6(¸6K&N¯9\ZLýYW{ãÈÒã\r¿R°8‹í£ 4½þÆA6=ÓNsKÌöAy„«Œâ«•#2)ÖuV12iÍåJñ PoÒyDLk*åù–uÀºtÐM°gÏ]×Â«ÛOxzò³«ŠX|Íx*+GQXÊªPžÉÔ7‡„·LoÌNFãæ×\nÃFgDêŽ&Ø¶í\0ÿÛ~×²“lµôoÆ3kÖ™éJ•²PžÉ”0õÝ!CÕ‹2§ŒÓB†ú¿‹ÔÜ|„Ùëy&²#Õ]·Ofú´‘žå‰LqSj‚‘¢Ë)³Ó¡„©§†\ruÈåÎ†ÆTÚHÇŽEY»¾9í·©]8‚%u””¤zˆ+p8g¼\'Ï™\\-\"ÙŽÕé\núQ¤]»?eÉÒ·}/À†‡Y²ômÞÜþ§T±žÏ_dô‡LÑ„2ÔÍ¢‰}B†ú^4¡Ýx[¸Ì*$ŽEÚ¸i/×Þô~ÖÛFŽª¢-1n¸­™›öÒu<Ã@©•™Ê|#SÄPÓ€i¢ˆ#Î‰jºÇ]Ã·^»£	êÔÄŠ5Á]UtÅš6VÞ·;¡&:©ê¹.“R\\%n¤·¿r¡Ã¡Ö©H+ïÛMÃæÎÀÇ³as\'‹¯ßA{»ã×Ëæ^•]™ºbf‘N6äç5]13SU½rŽEkoïbñõ;rB¤ÞÕ¾¥Ëw¥\"ÔÝvÚO®ÊT1NWþÈ„ŽˆÉEcT†ç¨ÔMpïÊ÷Õ>ò@¨õ§ú€ÛCg.-ÒâÏŸg z7Ç‰H+ïÛíêó£šùÅ”–F¨œ^JWW‚?ú_¶mïôLÞæ–÷®|þÉW<àAòUý3¼«Ï™´æq¥øŽ8‘bUOó„R,Jãe$GDÛÎJk×íáÁµ™»¾g„ÂçðÙOkk\'O>ý‰g]ï5ó‹©¿ËQïw‡Ue>êi5/aj¥“D‰´:!¾œ0u:3õ-s\"ÒËû]©f~1k>Ÿ¹Õã}ˆ:aB1Ë¿.¿|älÏ:%ž{~Ÿ“]J³’™´fŒR´LÛ˜VrÒŒ·âèjVjmíäòE™Ÿ<µ¢<Âã]èx¼Ü›ÛÿÄ\r·5{äMëÎs:ú|ý¼åZfRŠˆˆ”0ª”GØÛÎJÝÑ÷¯ÚãÊÜuûä”žÎ¬\ZCÍübO‚|ç={œ>ƒª÷´šg5ž…ìÄ±Ì’É[¶ìw­Ã¡|bêóÜÌ™íÍ´æ–ÿê#\'»ÔZm\'odÒÁ˜}Çÿõ¼ÔâXg7+µ·wñÃŸ¸vþi4õ”×¤µµÓiŒ=’IËÃÚÅ1•$¶³Òã¿þX‚lñäÓŸ¤c×d2¤µ”­8Vcs‡ÖÖÎ@Œ\0÷Š\r³k÷§v?^Ú7;Âœ£Î¥_â¼à©†ýN>^ãºL\'bf‰©9KnMFªy\'bfYª7x°¶’d¥/Ò°¹ÓIÛi½^ÑpE¦¢ˆQd(ÆÈ­I¥8£(b9ÉVÇÃË$¸ðâGõj¤š—›TÛýà¦gÚ%ZðàÚƒNž;U‹Ly,Ssó‘œžIöì9\"™))Ãæ[´ï4I[éTìxËö|6¥Xï:‰LRÅ¨ê9@dÊ1l½KÐÞÞ%U<›8èÕ™òQ¦?||L\"e“övd_¦˜©ZçäÂÈž£áDÌÔq-·s¼}ûŽKPm2Ð’7žÊ1Ô§J±]nGú(ø¯ˆ¡ì4rlu>¼÷A§Õ&Û¶ÛŽU©«Õ<\rÈíÈHßÏäñri¶!·qØ¶¬tmB[å–¤ÇWm|¬ÚÎ±R˜„1«\\pþhžýuzKFµ8Î¶7¥<tªµµÓîÊ…enÎNô\"p&J¤L°9S;ø?ÁjÆ–”¤ý>Ô„	ÅÌ¬\ZÃ¼¹ŸríMï»z¾nöæµ›šÄ‡Ô15/%é3}ÚH·\'j)7Ü-zSneJm%ÓÔz•D\"³BÕ.áhÝãîÊÔ5·ÊmL‰Ç:£æk†ÌòßÈj§\r	%€»4ì–Ûè(+½üÐŠŸA2¼R»w2(h×š›¬ÎáÔ×š›”´•\\ÃIUoü8ÛýgG=Nd(^#ùV¢u\n‘€\ZCÙê<`ÈÛÞM^ŽÍû}4¡çoË-ê—w¢	ý-`‹[_PZ*³¯¹š4¼ü²‚z³;®¿­5«$Ký¿jÝêî¸¾´ ¤^Oñ¶æ5Êv~bôCý)@aXTŠÛ€³Ÿå±T]$\'?G)–†U:m¤£v?8»ª(ï±;æ®¢<âdjçÆl¾‚Ñ\nü©ŸÐ\\£að¬†¶\\¼Öu=«auBs©,25ß–­å*§{zÝÍÍG|uœ¼Ï5«ÊY¬ÂÙ¾8CqøwkÃÔzXH©œ«˜ZGCJW@È	:[°1ùä—\'y;ºë·¿kc¹‹ÝÑNq2+Ó”ÉÃí~ô_ÈÔ—RÇs±êR®OqÛˆ\'¥ÔÓëÞ°ñ0ãÎÜËÂ«¿’õ{ÐÚÚéhÕø)¶hÉJ›Ip\r[6G@g”kÚ¨ÿQGŽœÌjõî¶;Þu´Ï—ì¯àÑäËÌ$¸+À-KF»²Bà`4lî¤aó_UÆ¢…“(.. VÄã\Z€X,AWWÜ•ïÞµû°ã•>jæ;ê|€ôVÜ‰ƒ^$ÁfCN]¸Ü!èüâgÌ¬²5)qÖÉéd¦ò`2uêi„SpöY¶‡5öüAÚLyHaAˆ[–Œ–@@íÂNp‹LùÎ%ß+A€ysÏpÔì-“´{ò	Še4D?Ì®*bú4Ûkéî¤×ªëz„Üâ»×•Kú°øšñN>¾º÷_zªyÏHóéÓFJvê“•löà}¡Š×[¦	e~òƒåS%©eê\r}›H=2­Çæ@I!÷ÚNN\'ÉEjŽpÒVúB¯·Là`aa!·XRWAEy$¿ÛJ‹&9ùø+ýõ5ô–©X#E+ÿ())àï¿_ž·×¿êÇ“5j¨“]êûûÇ¾Ï™–YuA!Ï˜Y5&/äÖ.ÁÜjG=x¯ÐëAí`2õT÷–KñÊêÎw&S3¿8o®·¢<ÂÒÏrºÛ€Í!cÆÕ$ÉRùEaAˆ›oœ’í§Šò¯šîdd8V3¨e ÿTZëS œäŠÒÕX£c…àÕâ°1š¼‡öö.–.ß•ÓËunZwžÓ	);,Ž¦#“|ªqøšM.õËGÎvÚ\rp§x+]óƒFöÔŽ\Z5”‡WMÏ¹*_Š\"mÀÆÀÉLùEßCË•ÕÓFrØÉÁ¬ÕØ.2åå–PŽfUéŽ&XyßîÀ.áY3¿˜›oœ’ŠH–H¶ƒ‹LÒ~²ÍsÏïs<—B¶¹óÖ±,XPî´×®‡ëHµCd¢X—ÊŽ­­Ü¿j¯n?áûjÝŠ»§¦³„Ìrú\'2	ýQÜÊŽÝÑ[¶ì÷m–J3õt8Ô9ÝIdÊoÖµ©î|ìX”6·:šØÑMjŽ`ñ¢I©´ÒIdÒÊRÝyëX¾~ÑèLL°™²H\"“ÐÃ2’\'¤Ew4ASS;?±ßõ6Õìª\"®üË1\\pþèL-•“–H\"“‘N‰þhoïâcÛ‡Ø°ñpÆªq•ÓK9ïÜéVåúâ¨×NdìPIr´DÆg÷omí¤íÀqººâ4íê\0’ë$õ}\\Qùl)—)“‡3rd!cÏæÖé$Ç6fâ`\"“Ð—2’Cgæäøuî´DjÉÔelžÐ—£$ì.·~¹s‘{¬,Ü’ÉƒJf£ÜjKäJ–Úiµ\r]™+R2“0-V–ºŽ`Ï^Õa]C%.Nº*™IpÒ–Zfm¥’hµµ¹>\r¸È$¤*U6ÖÐÍ‰D&!ÔY›_ÚT;-ÖgãËE&!”“ìf®ÃûEðvZò4áÞ9‘IðƒXÕ½¶LW÷‘|ÈÚ³µøåÂE&Á‹6V¥µ•Y‚õüûŒA„é‘¤Ñj÷4Y›o×û?eí=q(æ\0\0\0\0IEND®B`‚',16,16),(4,'ValidationAdmin','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ó\0\0\0Ì\0\0\0é‡–—\0\0}zTXtRaw profile type exif\0\0xÚ­›iv#;®„ÿs½ÎÃr8€çôÞòûSždÉ%W=ûVIÅdr\0\03¯‘ÿûï6ÿá\'çâML¥æ–³å\'¶Ø|çKµ×Ïõél<ŸŸn×Ü×v3çí‚§I;Ý:f¹õï´§J¼µ¯í¦Üòõ6ÐíÂÛ€Agö|¹õ«·‚¿ÚÝíß¦ÝîëñÓvnj;sêM×¥»Ç‚1Vb¼à—à‚åïª‚þ‰¡ŸÏÎO\'êiiüÎ lgÞ¿Þo—Ç¶³ýÖ#|5…±ùÖ!ßÙèÖîÒcÛ}^‘{ûê¿^ØÝ½à›íö^uo¹v×cÆRÙÜ6eoCœot˜2œÛ2¿…?‰ïåü6~+[œxláÍÁï4®9µ·‹n¹î¶“ó9Ýd‰Ñ‹/|z?}8m5ßüê‚¨¿nû‚–Á#>L¼höïkqgÞvæ›lrÙåèéƒáËï¿æQãßü¾´·B×¹cÌrlÅº¼¢†e¨çôozá·o6MÇ¾ç×¼»õãGð`:f®l°Ûq\r1’ûÀV8~ôK6\Z{…†+ë6\0&bîÄb\\À6»\\v¶x_œÃŽÿtVNø\\J~9³ñMçT¯ssOq§¯Oþj†ZpD\n9\\C à¬ø)±‚¡žBŠ&¥”SI5µÔsÈ1§Oeå¨^B‰%•\\J©¥•^C5Õ\\K­µÕÞ|PXj¹Ójk­w&íÝ¹»Ó£÷áGq¤‘Gu´Ñ\'ð™q¦™g™u¶Ù—_aþ+¯bV]muq”$J’,Eª4é¬í°ãN;ï²ën»¿{íæÕ¯^swžûÙkîæ5õX<ýÊ‡×h.åm§t’ÔgxÌG‡Ç‹z@ÉI}f«‹Ñ«çÔg¶y‚\"y¼æ’:g9õŒâ|ÚîÝwžûÑo&Å_ùÍ?óœQ×ýxÎ¨ënžûî·^[ýd”p¤Q¨6µaCltÚ}íš“¾}ŽÖÕ«ð­ÎÒ‹´’›OÀ\'¶¶†ë…õ6#¶HHRéAüCl}íÔb)›´óÜmNWB¶¤é|`ñ=–°Jß…É¶—îÇ2I—Ÿ‹è=µ9Bw+dIÍæÃE™iÁÑ9E»ç¬}‡¼pÖ²|–%«$;b3yõAKl8|Y±‚ípk‚]òÏ÷|÷iÞvË±mW&™µLÙÃÅ”k15çúÎàpL°4Ë5Hœ+¶@þkÌ\\6L=l¸Oàlý”,JÀ[Ê²kÝÓ-ÌR“\\·ÒŽÒà©@ö¨n˜²k\Z;óÙÞ‚,ÐIä°;ÝàkŸ†IYJ!SlBJ#h×çHmä\ZGî®³æ[ˆÛ»‰˜Y%÷ÝÉ %‘{Ú´Xet#q‹k¸¾‘\0¬€¸‚ó÷ìÀX7&ð¡ÔØç˜Ñ‰ÍcvØ}ÿº<jíb,NMð9G	)¥Ñ»(¸Všú Å4[|TÛ\r¶Ô†]U˜Ýµ©ïÌKÎÔzk.k[‚9õ•{(»/é§J^Dÿry	ÐÊÁ\"Á¨ÖüœKð-‰8ù!µíÕð«DîôNî²l!¾üŽ¨‘¥ÆGŠ%»2¬10çŽmÔ\n#äHà§¶\"dp`¬¦‘Ðú®nXÁ\r²w%·|R7Š#Ï¬$ê&š-M	#—AE­†‡a’À€{Ø¾Ã`ÑŒ”9þ\r¨\"üZ«Ø.§V;Ñ>¡4r¿!×7ˆ’m\r˜\Z>ð…uŒ»Ì’6»sÕçÑVêS°\0*yn„fË“I®<qŠJË%Y[—n\'<1ËFI‘|µ\"„ZÍy,®šA[ƒú@µ‘Ù¶g´/ã„1Õ7‰´—²qGØx†!.,DkM±á‚PIÄ‚¦³Z\rÖi\r˜~;{Æœ¥6F›nà(Aÿ$ }»\0ŠØ\"£–•B„ýcâÄ†£<c¹^‹úžÜÄ%%¾ã!b‹±-*ì¿…ÐXî«ÌXR„RS>!ðÐ\Z„![ÁMðgªBøvt6»¹Mý>1˜½›úÎò÷³r‡¹Ÿ– ¼›øˆÓ©?ÍüyÓæù®¿oúAÀ½‡›a¼ñ|\0â¨`v¼ßÇÔÈÂ}\rÖ.(EM.ƒˆ))8ßŒšæ-¢Vàn’ÑƒþY\'°ö(€ÎÒ-ìacÈp›à*D‚Œ1[—G¤F£ÌÙR”›IWÐrÛŠùê	½ôÄü$ÏZË ³|¡#Gú‚É9›\"æå1¡J\0Nj‡LqÓæŒV‡sàt6á£fW6²<‰µÉDti~‰@Ë«yøÈ³¢Äü¥©ÜÄP)õCà©i°7,,/²º4—Ñh„ÑD³ÁÂà†ä’6ÀXbŒ‡D\"ÃÒ\\A”¡·PÛ0Ãì(³ì5éQ8	¿¬¤9…,OUãA^Â©%èû2-Û«Àóuv1¢j@2K!©%„Õáewãç·Osßð·Ÿ%)J ˆ¤Ü¨¼·jŸHb¤ZÕ8\r\0ÑDcðK-+ùSˆ7H±rœ¾›{.³+‹P¬¾ÀàUMÆ)/$ãb)ò¹x?²0RÔ0ˆOÈ^™jžXÆøg¸Yß‡ûçyµãÓÏÛŽÌç-A§½Qóu§Ü(à\'1ÌHz©Ð7	Š$ºU#yÑ$²õðˆˆlCü$¡…0‘|+HñÉ©Èì­ÜÚ!xCÓOUïm³+šÕH®F•ÏJ©¯)©³B(.©ÎÏéGÏh´åœj«31u`úEñgñª¡\0ö‘ <Ë¥WÒQ”G%e”€ˆß²‚ê—mP2drMèƒ ƒ-d2™\\œ¹>½[a~\r¦¼GDÜFü×ÍÛˆÿ: ¹_âßhžíù·š?ñÕÍ«^ùÓ€æ·n~6 ù[ÜÜhþˆ/\"›‚Î%\r{Z“õÚ„¢„DÔ³÷$FF|øYJwj-S59iËË-øÐÁc\'7êñIGÕŽIG$B«”H€•Fó÷ŽŸ=â¸ÏmšÈWÂræ3Í±†{ž{c¹ÃqZ}pµ•²ÂÊG(šÂâ[Šãâ¹{šsm‡˜UÜÔJÔ‚vš3}S­HµAz¦új›*ŸÏz•šµ½”Ìõ¥§QPYHÝ¨J=PB£\'¿Ã¥ÍØØ—Vü²Öš.zš\niÌDyèÉ´%£úÑæLz$2)ßfFÒ-Xv¹¡úÆ¥D™×aûÖì\n«^Kj¶^+ºJÄ†D×óJª´<Ž‰I)¥¢õÞ¼°qC†µ2‡[O,‚ØŸTeB¦ÙÒÃ1\"n€\n†1¾G}oe¾ ¦ÅMžx/^rû©¦Ÿé\0£Uß`Ý_n¬›Šf-0.¥ÎÞNp 8=‰7czWN\"ºy×›7ß‡\'im¶Hºä^`Æç¥‚¼÷¦yTyŽNÍ™	äFt¦Ò#\"µŽ‚œzl¼‹ºÜØÕ­”Ã‰ÿLj½B0§¢­¶jé-Î†jÃêP±ÈÚ•(]]ÞJ¬Þ%:W=\'îÍô!µä¬Z7åÐ\nTz*ÑÒvêâÑ•qñ•ZrØ&à[©âì¾-SBx\n\\éz\\dH@ÆãZ¢¥ìMÙ¡ôgÈ¸xAi>-pHýL1,½ˆ\'ÏnFSôX°ø2\"þ„OÚ±fi9þI_jå{O(=ÇA\\‡øôsYçÇ4Y~B5\"·–s˜§ûÜ,‹b¹è¡Ã¥œì#6Ì ¢ƒFÚý…«]ÏÝ±C™¶½¯ŽðÞ^5S_¨•è/GŒê9KRGŸ¥Úª…û®¬2­ÓÓ8bŸØ=Äõ…¶ZîÞ|Ç3%B\\¡I`_t‡Ó¸”	ƒNa¢½WÒâ\nÎƒ`Z7ÐÓãeîVT»7rpþG±¯\ZY\"eƒQhš¬N…i)Ó–÷®åæ¨ˆ•/£@ƒÜ€¡Fg}j\'™+t­\n‡¸]´Ú›ºFI!”€	¡µ^¥¢ á¸¨BÜ(Ï²<N¬pÁŠÒéÄ<pªžæA#!Cã‰ú“ªª¢cÁÔ‹Nw«’1\nu#©qN=.ÇV¬‹,L‰¿{–h¦ô5\0|™¡ÕMQ]q•q‡ñ‹…¡‚¤Þ\0‹ÐCƒÖÚdz&>\n×|7\n¡HÃdí—51âwH¿ú‚óæOXVYsƒ3¶?€VAüÒ@ô¨õDâ`÷†hÓ5ÿèÏpfmoX6\næÏPVˆµ,÷`¾ËÂ\ngEó\rËæÌÖÞàüÌoP¾C²ye=è¬ãZQïÝ«,® N*Ð½xôÊÂÅ^eS3$a8O}(©Ä­Çn(.#‰š¼¡ì&9ˆZÖFgcD¥ÃŒt‚LA6ÿrŒxý«©}ªúƒ.éˆµìL\Z¾ˆµ²ˆ4û\"/DRqD©oë„Øêª\ZW¸\"ÛÖ#!+Wˆºwâ¦¨‰˜€SåˆÎ™#GÅÇ` <‚F)›ôEZ©+ûªÕxv)f›2Š°$TôIÂ! @j´	‘ƒz$õÔÅÈIÏŠ!UTlêÑ9§ö÷	 ÁÍô®{dÏ„~k’àŽBÂr—€æDÎ (‚žg£$Rú¢I¯T@ÈCJq­¶YaC(ýœž×lœwóë£\n÷vòo>ü¨jù¢3P\'œ¼×Ç.[s—oá%³V#|ÐdÝI•D3ÂzáÈ\r0Â…ç¡50¦KNZõ`^!¾ýÇº~N\0Ê@£Îœ°Ós³Ó¥a4%}¨˜ž¾èàK³ U”ŸÇ¼GN/ÏòS“ò#þ%Hù¼„KŒ7Ùk“Y£Gž¹eh\r©3\\_ç^zv	QË>3,‰òˆ¶w=ïrZo(|5ýÐ\Z†ÿÒ/²\\$‰¦¬OWÏ]±\Z³‹­9èó°<<ü*±¬¹5%H<ßQHã»>‹G“X¬áµjÚV…ªjåÅHŠ¦¥é¢–ìpJH\nìM(\'Wtú‚¤SŒa‰ÈíÂ’ÙáòpŽÙ)£¤µÁCH‘§@91El˜:úE‰¤yµ$üäô@„ ¹JöEv[^ÒÒéƒÕFY€8#6È`Zã\\W˜ @Ï!#ÕDÔƒ²—°ªªD‚\nÇj0•þËzj¤H-S\'Ï‰ÖVXìç5Ë{lÜ\"CÁñz|LÒ2Ï²Ö ·‚ÂóD‘ª“Vqù½Jüzê¥ÏE4cb´~záDì£T4¿¯—Šæ÷µâãRÑ<©1E:¡È·}B¢ï$õ\Z&\nƒ\\Ä´>Á„ªYƒ*P}:‹°ìŠRçEBÅMÊiÔ‘]–ô§ÏA…á‚nXÖ&Q÷;}üœ5‚1GïBzÐ\'ÒãP–t¨+@@_ô9ò=ÍŸ²ôpw`‰°¯FƒÐ[Vê7ÄŠ(2 )l©ç\n´ŽÉž¹àæú®Z%‘$KÈšd7Ù!\n#ì#œ\n¢jx°mdÝh¤áÈ~}¡	‰£‘,PiÝ™Á.âÍ¹œ’-ø>³Šb<åC_J2”&ðM4ï,j¡4Ð`ýrG²9??Ï~¡Îx¥Ì0¯Ô¯”æ•:ã•2Ã¼Rg¼Rf˜WêŒWÊsg|=jÐ»~ñ¤ÿJ÷æ_òýçtoþ%ßN÷æÕ|ŸË¤ÒŠ¸vÝ-ÁÉ-V€aÈŠ&jYAMµ\"ç29ã¸™ô¡ìÇ¹4õä‚é¸h!KS]³ÁÙ[k\"´\nÁ\njhÒW5@qI×ãÃ¤È\"”óö+è3mFuT8èd§ð ã¸l²+¨’ëKRAIžÁZ¤Æé1>]”“Û«¡MŽµøçÒç¤M­ÒaAƒùâ>‡÷˜”úÄ%ø¿éê&›B¹.J¯ý§)Ìó9žLAŸzx\ZÔáÌ¥O\rµ!tq¢kë£: í5óÄwƒY{3Ù3ÇbAKM2\Z´þÒ>®m|Ù„¾¡ùÂ>Î+Ÿwò¶‘Û6ôHã~\'¿pýç˜×wò³CÌÑbB×—‹(a®Ð¾ÍòYKTéYøPoYÝ#ÁØ³¾_Ða\Z•Å•fw¶\n×áÝVæÍXÿj+ó{¯?¶•ù\rz¯ù\rz¯y¼‚ò@ºŒÒúÒ÷Ä(\"10Âœâ ÍÊ.‡ø\Zä¦4·9‘Û°­=kÛ]µ$-	0!ëy¤KAßÿˆ\rŒLŠÏúz\\¦ØŽqPéûþÔ—z¦_>ÖIq Å5ƒ-©“ñU+Õê›,ƒ†MˆX#œ‡ò’¸i·Ãµœú\0»]ä‹Â;Ôë¼/ƒžoå‚.#³[03yjV|Äú†fujD£-f§Ž&]€Hhz­U£xª™AýÍ0dç£žPdoŠß*ò‘ƒó¼õë»Šçä8›†£oõm›óÚFUÅåìyoÂ·c/Ã}ïO†ÿÖçtx+¾ußÓ|éúp®ÏS}ëK_ó½óß­Ë<èúWë2Ï:ÿv]æi×_®ËüÜùõu™?t}y]æÀ~».ó`¿]—y°ß®Ëüü××e>¶Ï+µGÙ‡¾¨xT_Û*Mÿ‡¦§ÝÖo¯§	ˆ³~^è’å¨wvÍ™IécK‹k—™àà)>ô©\'=}Ëb§ŽàP¶nB®Ê/´èSœ^2uÙ9#˜¤£ _F€yýä§øT›ôØºµù7rÛ¸ß¾‰û‹0ÞjæWÙH\"?{C\0\0\0bKGD\0/\0;\0Âç†ªG\0\0\0	pHYs\0\0\0\0ÒÝ~ü\0\0\0tIMEè	\"“ì}\0\0RIDATxÚíÝÿO[ç½ð÷±±Á6`;0Æ4€X×†”®)	m’6déšéîNZ§ýÛO÷—ûCž4iÝ®®¦íÞ®6mëÔ,•š¦¡$ÍB€I$¡„Âw°‡‰Æ_Ÿýèh›¦àcRÛçý’¢\nµœÐÏsÞœç|üœç\0DDDDDDDDDDDDDDDDDD\0\0)Ýÿ„\0u«\0 €@ßê×ôI’äãpsLèËƒeB¼\"„wQñ2«Ç1¡Ú+BŸHÜ˜¢‘•ä˜(}Ð^ÉÃßˆÅÚ/Eòñ·!ÇDqƒÖ(¶Æ«Ë1IUšüœÇ·è¸eüM˜°—9&é¦º-<6Ã”Ç$=ÃDÄ01LDÄ01LD1LDÃDÄ0ÃDÄ01LD1LDÃDDQrmÉŽ®Bˆãø÷Žž¦$²6IÇ¹Ÿq\0c<1&}«NoÅn²RdðÓÕ?Fžk”âÞðŠ$I})¦Õ+Ñë¥¡W%IúiJ„iuÎßsL(õh”;õS1HD¨pZîAT2‚TÇ QyZñÊ72ÍBô­&š(“”K’4öÐ®L«\r‰2QÂW\')Á0ÐÂºS†2\'ÒŒHôž©‘õ¦–Ðù½é0­6øye²º‡&lÝ¢´Æ…®DÃDÄ0ÃDÄ01LD1LDÃDDÃDÄ01LDÄ01LDÃDDÑ7/ëaýEýãý˜¿;ÏŠÓ–kªiÊì0µŸÃßþ/Ž4m¹Pà4ˆ÷LDÄ01LDÃDDÃDÄ01LDÄ01LD1LDÃDÄ0ÃDôÐd±Êeò\0\09ÐÁ+<,ÃD›\rMU„ÊœG`×•!_›!B¸;€`|îØÃÅ0Ñ×é€á<amÀã%ÃšgEnv.BÑ¢ñ(&&ñ±çcô{ûÑ·£ÑO°$,ÃD_ô¤n?^t}õŽzC£Ö@%©  \0¸¬.Ô× jº\n®)\':æ;Ð¼Ì@1L´žS]‰#¥GÑàl@±¹š,ÍgÿN‚H€J¥Âó˜\rf”ÚQø‰ÁÛAt„.²€­i4D}Y=lFÛç‚t?:­;mÈ×‘«5 û“l\\žc¿[ã\nðmí>4•5Á^hG¶&{c\'†JKž—íÅ–©JXH†‰M‡ç¬‡°§xòuùPIò,uJ\nJ°¯tjrv³˜“²=¥oÄ~Ç~l7n‡F­Ùô÷gk²Qj.E¹¾ü³Ï¥ˆaR»Ê‰CÅ‡Pi«„>GI’6‚H*õFæXXP†I¹˜š°×^‚Üd©ë5	D¢hU\ZäKFõAÓb– 3ï“lª\"<ïz.«9Úœ„‰F°¸²OÐƒÙø‹Ë0)+Hk«žªx\nF½qSM‡õâñ8üË~Ü˜¹_‹Ë0)ËúU&ƒ)¡û¤5+‘ŒÍ¡m¢\r×#±¸“r|q•ƒœ EcQx^tOtã¼¿•ÅeBY6³ÊáM!°ZÂÐÜZ§Ïñ^‰aR–DV9|eÓ!Áœo—Æ/¡#x‰Åe˜”£P²âèö£øVé·d5Ö7ú§ûÑê9Çã“r¤<¼Xx/TCIAIB«ÖEC˜ðŽ£m¼\r}‘^˜aRŽ&ÃsøÁîÿ@eQ¥ìé],ƒ7àEÏD>ðgq&åpª+ñRÅIì.ÝƒMŽìã­DV0ìFëT+&â£,ð&±5žÆ\ZMÑàl€>[/oj	axnÿwåwøÍ?ÍÂòÊ¤,kÝ;«Ñš”†W90LŠm:¬=£$·áÀU“²ƒ”ÛŒ&Wv˜wÈ[åç*Þ3)8H‡óŽâG5/£Î^C¶AÞ½R8„[î[\\åÀ0)Ï“ºýøaÕÑ°³y:yO½ÆEwÐ>ÞÎU_æà4/ƒ­-b­wîCnN®ìãE¢Í\rá=÷Y®rø²×¦¶¶ˆUîckW%·ß3Ÿ¼ÃUl@(ËúE¬j•Zöñ‚¡ ºF;qÆû‹Ë0)«é°~«.¹¢ñ(Fÿ9Š·FNq•Ê\"w«®5B,Ñ3Úƒ_õ½ŠÖå3,.¯LÊQ©®Æöc¨ÞQ\rCŽAögJ|F‰W&E*”¬ø±ã\'h®i†5ß\n•JÞï½¥•%\\Ÿà3J“ò´œÀÉº“(2ÉZ{Ü{´bæÎZÇßg÷ŽÓ<eù¶v¾_œ Àbp·;ùŒÃ¤<\'ŠO ¶´.)mðp4Œ¡™!œ™x‡Ý;Nó”åˆ¡‡w5#_/¯\rE1{g§¯ŸÆ/F~Îµw¼2)¯éprç÷Qn-—uUâV]¼2¥Ý‰\0ZI‹EáOJ‡ìDá÷ð×w Óêd7Ü~¶Á¦M½{µ(ÖÃ˜mÄr4ïÊ<zý½²:e»5âÄ®a3Ùd7‚á ú§Øg˜R8HÏ›Qo«Çc¥¡0·­ËáeÌúg±{vºæªÑèÂhlxÓÇ©ø%Ô–ÖÊ~r\0|Ë>\\š¼Ä68Ã”zì*\'\ZðƒšÿÄ®¢]°äY V«ï½¥€ÍhC‘±åå¨šÙ…ËžË¸\Zì…Wx6tü:Íã8üH3Œ£ìá±x·æná½…w9pSêéPÁaä»ØëÜV÷¥Õúl=ì;Ì¹f›Šá2»P5[Ëí¸\ZþðÇ7HyxvÛ³pÙ\\	¿l=oÀ‹·†ÞbœaJ-)û8ì<ŒGË…!ç«W«Ô0éM0h\r°äY`/°£r¦UsÕè\\¼ü•S¿\'uû±ßñ´ìíº„ð¼ø]×oñš÷7<†)µ8³*ð˜õ1ì.Þ“Þ´¡ïÑdi`Í·\"_—k¾\rŽªfv¡ÃÓîå®ÏMýŠT%xvÇsØµ}—ì¦C8\ZÆµ‰køËôŸ9pSê]•œ9.”™Ê°-Û¦šJ’V{¡fÃêÔ¯À…ª™*´{Ûq32€%ÀÁüg°¯l,yò^¾qÌúfqêÖ)Ç9xSjÉv})*m•	î£RÝ{S¹>[Kž%æRTÌV¢k¶£Ë#x¦ìY8,Ù[CA´ÚŽ·Nqà¦Ô£•´¨0WÂ’W(»Ã¦Qk`É³ 7\'¶|f¼Kó¨-©»÷\nWDãQŒxFðæÈ_7Ü=$†é¡*Í*C®\0*I”ã­MýJ\nJ`6˜Š†`È6@›¥•Õtð/ùqvè]>9Ë0¥®°C V«“z\\•J…<]rEîg!KT$ÁÀä\0þ6ý7Ã”ºbˆa1@$Ù’ã\'e».Ÿ§†NqðÁUã_a>æÁ˜¾%bñXj]5£aŒÌàµÞ×ð\'ï,†)µÍÆ§põÎÎ\"°€\"%~®¸ˆ#``z\0çÜïq!+Ã”n®\\ÇÙ‘³è¿†ÅàbJ*	aÂ;ãç¿v©ñž)¥®N¿ÿŒ^ÁwçOàéOÃn±Ë~wlÂ÷qñî. w¢¸ŸÃ”ŽÚ–Ïâæ­ëèž;„vÃÞò½Ø–¿-){4l”Ë¡e|êùïOµ&ô˜1L)s•úÃÿÇµ¾k82sÍ•‡Q]\\ƒ|]¾ìÎÜFDcQ¸ýn\\kGÇR;„aJ×#áúôGè]èÁ1{T€c›#)o;`Óa%€37ÐênåJ†)³\\žCÿð5t»»Ñâ:†úò}°š¬Iy&é~M‡Iï$>¿€C¼*1LÈ+<ø³ï\r\\íëÅ3ÇÐ\\y»Kvè7&mê·ö6ô+“WÐºpŽEg˜2Ûpl¿˜DÏ´ÌÇÁŠƒpZ²w€p,ŒÉ…IœŸjcÓaRŽö•üôz<=8æ<†\'œO`»i;²Ô‰•9Ã¿äGçX\'..°À“ò¦~oúÿˆ¾Ð<{G*Ž ¶´FƒqÓOÓ†¢!|<;ˆw§Î°éÀ0){ê7<7ˆ+wîÝO5U4a§mç†÷zˆÄ\"˜óÍ¡m¤\rWÞgA&ê]DßèUt{>D‹ó8žt5 È¼ãûã…£a¸}ntŽvâŒ‡ïe˜è3K\"€¿ÞDÿ>ž=‚ç+žG½fƒ’$A’$!q,…–pÛsÿùÎÏ¶a0:À2LôE£±aü¯gW|½h™iÁÁŠ&‹ V©qÌæ14÷1:§»ðÁÂyŒÇn³h=HO¸7ÇÐáéÀ^Ë^4¹F—1uw\Z770dÃa¢ÍLýÞ]zÝË](TY‹‹0CÄ0Q¢¼ÂoŒÊ|8ˆa\"b˜ˆ&\"b˜ˆ&\"†‰ˆa\"\"†‰ˆa\"b˜ˆˆa\"b˜ˆ&\"†‰ˆ&\"†‰ˆa\"R¦Mï./„hðÁf¿Ïã÷`%²ÂŠlF\0ÀíwîëûYûoÒ™Ýb—{ˆ’$]Üì7=´= ¬F+Ïê48É’p\"ršGDQÚ†ÉÇ²Q†KèOèõvBÁzS¦’|íc¢Ó¼·YrÊP	ŸÛ‰†é4kN*ás;á·!Æ\0”±ö”AÆ%Ir<ì+\0¼ÌÚS†‘uN\'¦ÕOˆ_eý)C¼šÈª‡¤LóÖM÷^ð#Ž¥±7$I’=Ó’ý¡íêñ3Ž¥©Ÿ%#HI	Ój ~	 ÀJ—«€òÕs7)¤dÿ„B€ã\0\Z˜8f)¡võŸý_øú~ú3¸>\0œ–$iŒ§m‘ýXÚãM\\Wo\0\0\0\0IEND®B`‚',16,16),(5,'ReportAdmin','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ó\0\0\0Ì\0\0\0é‡–—\0\0,zTXtRaw profile type exif\0\0xÚ­œiv¹’¬ÿc½ÌÃr0žóvð–ßŸ!’â ²¤[·Å#%+#ø`næ@–Ùÿÿÿó?ü©)DS©¹ålù[l¾óKµÏŸçÕÙxÿ½Vx]sŸß7s¾.xÞÒM¯ó~Ýßy?½ Ä×ûãóû¦¼òõ5ÐëÂÛ€AOöüòº¯¾\nþyß½þÛ´×çzü°œ×ßÚî3õ¡çÒ—ÿŽc¬ÄxÁ¿ƒ–«núC¿¯+ž›\\¨Ïïü›BøÞvæ×¯_ŒwÊ÷¶³ýuGøl\ncóë†üÅF¯÷]úÞv×BgäÞ~õŸ/„ó2„ýÝvç¬zÎ~V×cÆRÙ¼e_CÜß¸q`ÊÇ\Z™ŸÂßÄïåþ4~*KœxláÍÁÏ4®9µ‹n¹îŽÛ÷uºÉ£ß¾ðêýôá¾WCñÍÏ Dý¸ãKha<âÃÄk·ý¯¹¸ûÜvŸ7]åÉËq§w&ÿýöc¾{óßüü\Zè…®s×˜åÚŠyyYœiÈsú—»pˆ;/›¦kßûc~¹õýð`ºf®,°Ûñ1’{­pý¸/Ùhì“\Z®¬×\0˜ˆg\'&ã°Ù…ä²³Åûâv¬ø§3sRÀ<àRòË™ƒoBÈ8§z=›ÏwïõÉ?o-8\"…\n®i¡ã¬ñSb%†z\n)š”RN%ÕÔRÏ!ÇœrÎ%£z	%–Tr)¥–Vz\r5ÖTs-µÖV{ó-\0a©åVL«­µÞyhgèÎ§;wô>ü#Ž4ò(£Ž6ú$|fœiæYfmöåWX¤ÿÊ«˜UW[}»M(í¸ÓÎ»ìºÛî‡X;áÄ“N>åÔÓNÿåµ—W?{Í}ñÜ?{Í½¼&Å{_y÷\Zo—ò6„œ$ùùèðx‘Nò™­.F/ÏÉg¶y’\"y¼æ’œ³œ<†ãv>÷ËwïžûG¿™ÿ#¿ùŸ<gäºÿÏ¹îå¹ßýö×V¿%\\)eS``ã†]»¯]5é·×±€ÀºzÝüVgée·’›O„Olm\r×ómfÛ²CÚ•;È€­¯“Z,…dÛíä<O›Ó•†-i:˜|%¬ÒOáaÇïîÇ2IÓÏek„žÚ¡»òNÍæÂÅ=Ó£sŠöÌYû	yá¬9öòy¯½J²#6“W/‘h‰\r‡/»íÆv¸5È.ùŸ×üåÕüzãÄ°ìØ¶ÊCf-sŸábÊÎµ˜šsýdâpLbi*–kØà\\yäp6à¿ÆÌå°ÀÔÃû6˜­W‚’Imâ-å}j=Ó-ÌR“ß¸n¥w§Õ£ºazÈ®)w&æ³…x{d«ÓÿîÕðP¦R¨‡”R\Zò©\\ãÈÝuæÜcñx7!3«ä~º=½$jO›«Œnv<Û5\\ß(\0vqçŸÙ	coLÂ3„RcŸcF·mg°Âîã8ø×åQkßÆòÀ©ŸsÜd¢¤4î.\n®•æ>(1\rÀÞ>ÊvÃ[²a³§6ùÎü•s	j}4—u,ÉœúÊ=”Ó×î§î¼ÈþåòÚ„V\ZHÌÕªÏ¹ÔMüFK!N~ìÚÎjøuG>éî{ÙB~ùa#{/*–ìÊ ÆÀœ\'¶QW(Œ#‰ŸÚŠ€Á\r‹`Uö­ŸZÀ†Ü Šð©ä–o›RÆHÅ‘gˆº	OKs‡‘‹KŠ \"k‡¡á0LÚ à¶/Æ0X4c!Ç³V„_kbÇåtÂj7Û\'Fí÷{Së@É²H\røÂ¼IF]fI‡Õ¹êóh+õ¹±\0,yˆfË“í\rXyó•:–K{MÝNpb–“¢øê€hCÔjÎc)»j&X\ZÐGT›=Û±sàŒÖÀeœ0¦|“({)+OgÛ…‰b®)6\\*Å‚\\P9«Õ`ýFPÊ€ôÇÙ;æ,µ1ÚtGmøIB¤ˆ\"–È¨e¡@@ÿ˜ø°á(Ïd®×\"€~&ŸÛ%ßõ9„ÅXVÇP“\ZË}6€ùdK‰4å›ßZƒ4d	{ð!ð3U!};<›Õ¼ýëÁÄì—G±ü×§ò	óõ±$å—_rúþèOþ¸hóóª_ô7	÷+ÝãŸ \nfÇû}Leîk v)ª¸2¦¤à|3n¨Ì[H7¨À§)Foú™uëŒBÐYngÒ0\\ÄM!	ÁU<IdŒÙ:qy	IŠa4dÎÙEØL¡xR€w^K1Ÿ=¡K?˜Ÿ‚â™kTV’/tèH_ y£f#!b^“‘ª$àD«8hŠ›6g¸:˜¦³U]YÈòÖ¶g £Kóko`y5yf”x~i2›*¥~ÁƒxjJö¶	¦™]šËp4ÒhÂÙ@Íà†â’±¶ ‰\nW(sRß‚mƒ³ÃÌ²WÑC0	¿¬¤šB§ªñD^Â©%èû{Z*¶Áóˆ:»QÊR(j	buqÙ½ðùíÕ|}ãß¾¾”v€B’rCyqŸ(b”ZqœF\0q+ˆ7ƒïXjAX©Ÿ\" Þ@ÅÊuúlžEºÌ.A¬¾œ€Á«*Æ)/´ÇƒRÔóíýÐÂˆ¨aŸ0}*Õ¼¹Œñïp³þ\Zî¯æooüñõµ\"óqIÀé¿^¨ù¼Ò?.4ÇNa€Vø=MBwŠëQ@’Ë³´‡_@>Æiè¸Q˜A™9QÐ2ÉàCÏÐ_\'Ÿ2€<2	¹¨g˜–ãn6C½»Ðqš­é>€Ígçé&œcñøŒð/ªJ+«Ïz²qk_Ì©oMœ”·™ëW ¹vÖ8Ñ¤áŒi#!(Ô´	=@£Û¬‰Òvˆ?^ï#˜^ç^º\n5inO­lô,\'¹Ê¥0uß/œÿt\r ýL9Tf‡œ\0¶ö×é½¦ `ú2½/WXšÔŸ”Â*Áó[!J<q6‘’\Zƒ—ZÐøýIî»åš?Yâ¾-¢-˜‹ð½©yÁe˜jM‰’§A‚?Ž¸{ÉÃ¹MÐu¬ÌFÞlô6²lD^œã=<°‡€^x‹\"ú\ZEáÃÅ¯×:Ï·-žª™F_V¸.B5&¤(‰4v‡‘é„|\"Õ¥	vR);an©Àç-¥÷‡g6†ù›ˆ™™‹(…ÍÛ\n5É…™U~í\ZR…Tå¯]ÄÏÇº{ß£bÄ„Áˆé¶tÇ	Þ!@ûš\'?±ô\n}`äý¿²âãÅO×ž¼ ÅÑÞVdÄ¹‘?ú°\n×úâ%ß]yÂø›(6ÿ}–=Ifþ”eÔÏíßq†íç\n0Ñ%öRá­NPð ©\"TÂ2ç4Ñ¡I¤À’ÀB\\£¡pùz¡¤µ |Ð,°7	x-••b¬–†8HrBÒh3î&cûîÝU&Ë·r¨Ôðö$‚0g„±DQ_fŒ*Ž×‘¤×øiµ‹à-¢Êß‹ï@mÞ‘Z-îüð¸;Ì¬Q‰³G§\\\0i÷	“Ó@¿_\Z¬%@Q`õ‘Òó]$¡~PKIW÷j£ÛkF÷«±kvª10we’\'~þƒçADk‰ˆ®‹ËA KXßíÓSÇiÂ27%‡à.aºçŽaR°,Ï$É÷1VÚÐš6 O\rx¢±„Ô\r¤Iúsñ¦l©b}ñÈ=•cŸæ¯$zjQ®êCÛaP°ã€+kU“½z:IÆ.UêùEªC{™<ð|Ò>j3IÜøhk¬5\"“ìb¼•Ú?ƒ«‡\'6÷s—¬¬äTïZ`.;1Æ…ú™\n„Éù=”\'ø\Z½ë§7%f2½×ú#S©¬°öã\0Ù fžãã¤þ h×ƒai>uÀ‰·âLÎÊ°ywå¼_Ÿe±=a³‚\'cAÓ$ÇÑ†}[$íüf¹“1À£RIf«gê>žŠëã’ìÇn‹Oy#á·ó¹¶\ZÙx‡è·)¢ÇÈÜ‰ûW\ZS#_‘D‡W ÞÞÃì=É8¥_áÍÛž¡1¨‰èrU*¥!j@†N„FŽÎéM’hÝ¢,Îâë\"Ìè—>þQÒr[÷½\"o\rK,¬9	o~¿!s³áäxâ[›åŸf\Z*Á×{ž;žëó¹y‘ù<DÍ3ÊçwTë.Â€ÊÕ|€žO.øLÔ[ü}~óïÐçwð1ÿ}~¿b~FŸAH¹ZêíÆFQ\rÐœ¼ÛA]Þ\Z8¼¨-á„û{‘ Eóå–Èâ³i€ì%LÉäI\"q—™Ò®ílÔ\")1©ŒÒk¥EˆÌÌÝ1•LmÖ®%õ‚¸#Â5}¥ÆE´Œñ²“x@¤°ì	pàˆeÚ‰ñNø93&ƒöA¢ú\ZAÈaãdmÌ­f„šÚ6.jÖ-§6qÕM²\n-Œ:ç\reZÐQ[¡fOSsJ:6Ï™VûTÛ£ðCz_dl;äèb††<:Ã){ˆŒÔBž82ÉFi¯€aY;ËÞ;±MI\0\'=zÛ<„=k[ÁÂ†ô×Š)j	Ä\n¦tç|‡cÒ„e ¸Sè\0º-åŠB3= Š§œEÎ3Õòj#ÊÎ6î R{Àf¤m+$2XŠ´A$£!xtó†8Fœ™R¶èý›ü\"0ƒÚyd‡RüÌ\rÉ½Éˆ…¡5¬I\rÊ\0€R˜ï6½‘Æ \00ì½¶x@`7 8ðmWèY(‡éT5rf–¸”%¬YÙ ™ààÅ  b‰ÄxÁØ\Z$ÑñžOêÏQïõLlcóEào‚Ómö©ýV;\"[hGØ$I‘µ©iøüPQÛ)z\ZíBhp\\§â&%ˆŽx0¥D‰KVŠU»LÔ{€¿¨’f”™2Ç=Í D=Ãe¨oO²Ÿû(s‰\ZK˜‚èùuÝÚwŒL¸…AøIØDZEdXncÞKFwX`(€•—ÖxÞþô.EAMxÞß°ù,o×ý[ÍàÒÑ\0•¥;Š²0§n¬YŽ7ÚµúýížG¡Îñ´Õí«7÷vÍ|‘¾”¾\r¶OòùVeZfvhØÖíÂÉ{ªÖwêÄúŠ^;É/ei:â\nÔ_‚yK4ŸŒ¬±w³÷P<‰ËÒ\\›+G1ƒP@Úçêcý°\0Š¨zÝºY‹ÕÖHÉê#‘U$¼\Z½CÜc>|x7xX{©©Æ•¶Þv\0³y–óT*äK<fŸ×eÙSºÑ\nHÒ \nE•ª–ƒBy‘ñx	­)€ýZÇæeÂJÁ.í•¨Ó R²©Œj·cÿìÁnYo.J«S`n£¶ìéÚ¡ÁêÔVœÀ‡ÂPÚòë¹bÎà[µ €¨ÁEu\'õ†¥\0VôZ\nÀBÄ2=g!@Ã[GÂÄ={Œ$Ñr¹+qœ{{Š§{Š€£^ÀÎÈÍÀ‰I~K@×ò‹?ô„`8Àt\0ø*_RD˜°ÏjQ´£&3¥ž$	äš0W\\Êiï\Z~JšnÅLvu³À6—ÇØ8Ww*ž¢CO˜…ä(5Ô@Ê.óÁ±‹:UIt`E¸$ø%T¬A9‡øl’NUöž•z ¬E¼e±A‘ˆ$’G\n6ŸàQè˜$Z‡ÖÙ\ZÌŽ‚®Þ&œÛ¡\0¨(þn~Z´=ç­ù#x|Ä—Ï7|À`ä[xy¡tæ\nÑ_øòÛûïc~ƒ˜7€¹è¢í¸D—_ØbÞÀE¾¨½ä\r_~¿òcd‹#æ|…˜_—Î?ã’ £¿ÄE„ØÀ{ºX_\"YÂ–ä¬ä’÷Hne‡ÍØDG‰$”=„§(¥Ré%Àâ4ÔR·,Ð¢JX… ‚ôJñÒ¶\Z·Ÿi%[™½\nÅˆ4ºkyR’¿úœp—\0ç˜X–UÅÇû™X¾@K0v {hâ]”€Ž3€æï0\0eNÈPÿÕáÀGÏžM‚ò/ð#—t›)½ÀO Ëf‚‚I©%˜\"¬É%y´áœTgB[dµ9{ÕBóÂµ=<\Z/XzX\"ba\\ˆSÎe¾v<`^3µ§oSÊ³±ñì&Q¸ã$éøòØQ¢\r¸ /uËu¾‡ê¢Ù7ðTM¯‘d$\0%ÊžÙ \"Â¡ñÄsfÅ%€¨™à\nøœ\ZTötì%W?ñ&ô˜àw	 ÷½n‹#³oóej‹„ÌC¼V¢fªÛDÕ€sD	H\'‹ÜI¥Dœ5¼‹úYq—\rz•š\rºï¢fðé,¸`8ò¡*Ü%Ý]°h’ŒPs %\\¿QÂRÑ—’·Õ&û„~7•¬\Z# häªƒÃw¢zÜ³#™•¢6Aç‹6€KBüšÍH”ý_h6ó¦Íþ[Ífþ}Çè³f3ÿ¾côùŠù‡Ž±zÛˆ:Ó´Iÿ‹r88hà‚ó\"y§ÌØhZ[¡\"®à¦\r°0ÿJ°dJ¤Ýœ@Ð³ÎÕôQ*-G»vñ±Y~©œÚ–O®-9ÖAµkIûOándqêW€’Ìd%é7äBÔqòRçjAõˆ‚³¯‘ÇV‰²Ûò.ê\Z,t$ü|4mî‘~•ØFW±G t\0c›¸_åÞÈ…ºC¶Q·_}žŽ¶:jè¬¦ØEX‘ek¼˜ÌçQ>\ZæÔÊTÿŒ÷@|$¯n?)-,Éz*\ntOe–³ÕŠÝï¹œÁ!½M„Ê{˜\"@LVÕ¢=ÈŸ³Ž,:¾|ÏyŠS\rNa§kik§&û¥²ƒìòàÌq¨¬‡øôÒ‹ŽIhcFE´öp€­©Ó-D…\"Üäš†î²)òâ©Àó(ý°[5NÛD9j^\'£%0Õé7–I5uhÔì3®•@œ2pÝÕQ–(±SÇ¹ µ\0]€ße?\'Q‰döz|(SÐî\rÇ©\'×hq2\r§rM R²¶\\¤†à“2OVN1\Zëˆq™&ZíwŠ1áª-Ph`ãD4ž¦DðTÔ|…¼é!c*©‚A{aÕÝË”\0f*êò‚6bP»BÌ\n~enËh%FP\"AÙŠ?Oq\\‰,t·ÖÚläÀÄ§.Î}U€,\rÅ½^÷¼ßòÜð\\ÎùÞ\rT|w³ÄZ)´ßmc~¿¹‰í¬æó§ùóVî78+ê•ÂÜ·îÃÌ™C~Þþü®vT@ ôìØÑ»gƒ!-¸–Î-5ö/²Ö´¥ÿT“,ÀFõ(X#p5×ž~NèrCMo>*¤ršÔn¡VÃý”A9Ì[Ç*7Odü!´73%„\Zñj_°Q„d$‹u`~ä{Ÿ÷ÈzNº±$ÒjCÞ¬Žàí€¾Ò˜^g	K™J©i´,…p»\\øqåIì<j8,P?G‘±½U8¡Ž?)¥šGmÕhßè:2ºö™Áþà€•p;(<­@DÂÓŒ@hEe L³QsJñ@sAY¹ÙŸúc€tOè’k:¨£…î‡qXƒÎ×ÌÄ/öˆ svÛ,vpba^ä;ú[­1*\n/F)øpF`KäM¯d÷Ö\"q†–TS^Ç?Òh.ë„F]{ ½èh)Þë\nØã¦šN°}I@ÕgØ\\ñEeO…h‰!¦tÖc,ÈÉlÈuTãk×­bâÛ îuÃËÓ«/ô/Ó„U&œ¡³%ª3É¬a!mØØ™TE³N5bÔÕx’‚i…œˆ¯Ù)ã´\"òU/r\rlØ:x\Z[†)\Z>n«¯:rHör‰àTzm2ƒâN„y¼,@5h¶¨ Ïé\'£0òm(¦0K¯&žoFxN˜CT\0Øa™µÖ:u}Ã\r·ð\'µ#0Ö|¥ÎÞ¿?÷ÎÿŽ†™?÷ÎÿŽ†™?÷ÎÿŽ†™?÷ÎÿŽ†™?÷Îÿ°q§6Êßà±*`ú¶ÔâkâJ(<ê–$Sº§±2u#ãUé\"#j3$àÝ¢\rµœ¦…Ú_DÈ‰tÂ„4TàdS±$&a( a€FB¤.Ð%:ª(Õ2H¾aÀbQ¬-4ŒXA07¨èfËõ¢râŒzp0g !©Cõ‰K¤c‚:Þðè Ï\0LÓÐ}HÙ£,@;‡\n)ƒä5ãÈIgêÚVÉœ•õaÔ–äË+\"KN¦~fÛŠŽÃPoû‡È¹›!‘•aÁ2¹õi\0Á-¼Í:†i(>¾‚Bè7\nëQKdÄdðaŒmU°QÖd­ÎB,IšÐ7„™Bžºqtjluu¥Öòž|Ú|PR.ÕÞ»¯ÒDãô5¨Y‰êZBÐIg;\"˜R¬N¦Á&ô%/Œ`Z÷¤èm¢Ý/b¹US~ˆj1(ŸW½Á³²&Ë(Ožd¤É®g³‘©\'ø)op!Š„¶ÿÐÂ:àjæžPGûúM‡1böÐ†¨è¦uyK;‰„]›#ücÖ!ä­³Ší¡ŸÔîñ2‘(‚ôNx•M[û£^-¥‡€ÈH}LØ8[Ë¥#Q9ëÉê^úÞUH²Èc&¸vËCXš–¹ôD9ÞÏp¢£ãjáûiøj#ª•&ï7oÜbîñ÷;‚$îAv¯+k«H!<c*`Ïkñ\nüø®y½*ªïþ×	÷? xœpàþ\Zm\Zã€¹}Ù,D\\Å\n\"75BŽ½ï¹dª>8°pxDð”öNl¹è!\\&\r¸ƒ/:|†¾K¤]fK©Ò·H»ùt£ÕÊ c(¢%=RY’ê;¸¦êØ„€Ïm¥ÄÂÏShŸ Ï\rÂâË­P—únu¸fYQô:&kj·‰b‚¾½0´«çu†Hò\'ð ÃN=6žÇ°Þ•U{hu¤¯Ç=¹Ui‹”ˆóýxE\'¡?, 2¸yè]X£6¶t@¹(*¦IÑI¶W+\n„S1~½b~]ã¹+xæô¤7û}³–÷¥ÜéšçÔÃ—µ¼Vò~å›µ|YŠù¼–{t¡CØj>ëH!Æ\"%zÊ„ã×%Ú\r?ÚWuhã1øsÀÒùä—g]*Ì·T‚nÆ£ïQ•\" ‡r-#Ü=}J}\rÅ\0¾ê{§n€ÉÖS‡rðì€ÈÝÔ!txµu¸\Z-ú[h˜·9´ÔzôÚŸDíB‰m^Ä‹LAß.ílŒ®ƒ%›ÀìËª€cAQZa\\Â{õé=ÎÃY„Mà^±„¤Á¥–”(Òý›IŸïlÜ00Ž¿\n`><ˆŒrÈ¨ŸÊüœQd|F\0“þ:Ía°4Þ`@À.¼`ÀôðÓ¥>|÷)&?/Å|^‹\ZÏ¬uþ™7†ûAB¢tj‹Û~%\0fyä„m}§¡ùa‘Ø«Å^ZM+­K2Qž=×Gc±é½H^óQ	÷ÐçîNÛZ»j_¸¦šN\"h/Ró½Ž¬!‰ÚÄ£j/“™VßãJæ}Ð7â(M_”ñúÆ,±ä–£ X”$šgö;=€ÿ*¿]Â©€\n@B}íÊßY5U/`ZenŠêÐ‰9P÷DÂØ\\D#ZÞÁI+¢Z‚ÚÔ¦y}Á½Gdí¬¯Â§vÖóUhåøSŠ´/ùþÕ/µŠPÝœHÄÜ¯k¼šLLã×ÍåíŽ××*î-Ï\r¢í¯ÑÒk4}wýŸoÿ8Þ·|Ï|œÞ3;óqzÿÍìÌùºÜ9;ó“ñþÓÙ™ŸŒ÷ŸÎÎükÿfvæo\\û7³3ÿiàýt·ùOï§Ù™ÿ&->Þmþ}Zè‹dó²¶ÚV6ÃˆFýšÛ\0_ÓÐšlU\0FÝè[½ª¾Ö1ªTÈf)EùŒ­ïÃˆeŒ,¯óÒ¡X}cLó\rUƒˆ…ßÁ(å;#E§W© Ù2Bó(Žd|\\Ö†ü×_wýó×`ÿ«W\"{±ó¿Ýh6CVÌø\0\0\0bKGD\0/\0;\0Âç†ªG\0\0\0	pHYs\0\0\0\0ÒÝ~ü\0\0\0tIMEè6x>ÌE\0\05IDATxÚí}TUe¾Ç¿›EÞã GÊAT@|ƒÆrÂ›×º“–ÉÊÉÑí¦6IXwœHïõæˆco„5wÆÊYTwa]qusÆò.Yéò­òƒ \ZG‘=\nŠûþ–):ÏÞœs8gïïg-–×³7û<Ïþœçýù„B!„B!„B!„B!„\0¼ýÈ²lÚý\0\0š”uÿ^ L’¤f7Ë„Ü\\X¡²,¯’eÙ&‹S\"ËòãÌ=–	ù±ÐVÉ²Ü,«Ç&Ërs’e¢÷B{_vüFd™è¶Ð^—¿\rY&º+´Ù5Ø˜»,gáã%Ï9ÃE÷ÂoBÕ<Î2ñN™R]xoÊ¤ËÄ;e\"„2B™!”‰ÊDe\"„P&B(!”‰ÊD¡L„P&B(!”‰B™¡L„P&Be\"Ä¹¸äDWY–gàÇ=CpËÑNºOOÔ°ñUÐE™”uÿ»â4YÉ‰…x¦û\'„ï\Zñp¶\0X%IR™GÉÔ]½O‰ˆ’/IÒ3!S÷)œï±Lˆó-€ŒÞ6ý|(!\r ¸·7ñé…H©‰hˆ{dY^Õ\'Í<Y–Ëº&DKÄI’ds[ÍÔ=à@‘ˆQ];I*e*0ùN4J˜šÁµ}¦æ7Ñ0ªÞoÅ2u<p>‰h™T·È×-!!Ä«áBWB(!”‰ÊD¡L„P&B(!”‰B™¡L„P&Be\"„2B™¡L„ÊDe\"„2B™!”‰¾Ç×]¨¼âÎž½Ä\'.grF¬¶eú¿ßccQKš¸œ²]}#›y„P&B(!”‰B™q9¾ÌÏbÌHDš|‘˜0\0|ˆ#ü|}`0H$	²,£³SFÛùË¨±µ¡ýÒU­<IwE á”Ç*/ x[3“2é‡¨îN€;ÓÂ‘”Ž¨ß#%9¢Çÿ_™#ãôé°Õ¶¢ü»|ðñYœwÈÌtÊ¤FóÃÌM˜ro,BCý]öw	11ˆ‰	Ä]£ñ¯dToFYY\n‹¾Ç‰S,Êä5ÐÜGM¸Ú`„†ø÷É3¬aH°†á‘™CqðÐY”|Ùˆ\ržeQ&Ïg|²?Ì3ãgwò¨çòñ‘œä¤Ìšy;wÆš¼eò<&¤ø#ë©¡H\ZáùµæÀ˜5s¦üSÞ|û(>ÙÚÊ¤L}O´É€ÜUV¤Ž6yÝ³‡…õCÖoG íüwøüË,L55>³ ÷ý$d?9[7OôJ‘®lÄK¹cñ§×¬ˆh`ÁR&÷’6º>ß<ó~ ™Ï”ž…ß¹„±€)“{X¶h þë­	.âîËZjÙ3IøÓkV4ûL®#0@ÂŸ×ÄˆÄp—Üßnw ¹¹õ\'»ú.eå-=¦KˆD@€±1Ð¯Ÿ/Ìæ —ÔR_lÆÊbï7ÜÜI™œHR‚¯Ap°Ñi÷¬«kCUuÊÊ[n ¼9í¼Ìp$Ä\"Á\Z«Õ9Í4“)\0ù¯ŽÅÚu\\¦D™œÃÏÓûãåµcào48E ={±i‹•¶ËN{Æ.»$³Zü0kº	cRÃ{-–¿Ñ€U+S12±\Z¹ùœ“¢L½àÑé!øý¿¥ôêí8zôþüž\r;K/ºü™+m—»_üLJë9Æ\"5ÕÔ«/ƒÌYÃ\0€BQ&uüê¡PüîÙä^I´{÷)ü¥Þ©µv–^ÄÎÒJX-6,Y‹‰©–ŠBQ&UÌžÑ;‘*+ÏaýÛÕn©‰Dk«ì5°Zê±ryü-WS(åphü6LHñÇ3KGªº¶µµyëbÖüï<F¤¥š»ø0òÖDkk‡j¡ž^É…2Ýž”áF¼ùú8UM¡òŠ3X°äk¯8ÚlcQ,ù\ZûJO«º~Îcñ˜15ˆ/eê™@	¯þ1Y•HE›ª1wñá>ë©­¥ž\\V‰¢MÕhïP¶ÏÉßhÀ²¬‘°Zü(Õ¹™—W[a2(dXµºÌ«û¹ù\rX»®B±PÁÁF¼¶ve¢:?eá¯î@Ú„ŠEÒÊ„fñ¶6ÌùÍ~ØíE×™ÍAÈûCe\"]ÄöÅ‡+ºÆnw`Îoökje@¥í2–d—+jrF¬®ûO”é:òÖ%)ê\'µwtâÅµ‡¼ªäj¡žZ”@™ôÎÝ¡h¡èµ¦\'{;S¨×RÔ‡2™°&g0eÒ+aÁ>X¸@Yó®ðƒ*],úÜYzk×U(ºfÊ”X]ŽîQ&\0Ïý6VQónGI=ÞØÐ¨›ü)ÞÖ†Ï¶Ö\n§÷7\Z°ry<eÒ‘á>˜2E<žO]]²WÔè.Ÿ^È=ÊÊsÂéS’#0)­¿®òH÷kóž}Ú,\\+µwtâ¥¼£n{¶Sƒâ‡Ô”88Vu»KÛúlÀ#ç?¢ðÝ	ÂùõÄ|v–¦LzàŽPdÜ#œ~ûöz—8X-~X²0ãÆFÞ´ñ\0ÙÝµãÇ›O¸}¹R¥í2\n?¨Â‚ùbýËkµ“–iØÌëfÑü(áoY»ÝrO¸¼&ÚP0“3bo»“×lBöÒQøëÛ#ÜžgolhD]øÀËÃF±Ï¤¦ÞgN[ø‘kûIV‹ž_ž¬h;|JrDŸxòñfñ/•‰Q&­óà}AÂ/n]]›Ë›T+—Ç«ZX›žåöU‹šP^qF(­¿Ñ€œ¬hÊ¤eyX|OÉ7±Z,C‚U_{Ï$÷Ãü?ÅõÂiÇ¤†S&-3|¸Ø#v»Ã-}gžväŠ·µ	÷¬Ö0]LâêR¦_ÏnRí(9Ò3Ÿoßn2kº‰2i‘»ïomÚb§5·à\rÂëöC(“\Z\'Ö?©¬<§ÉáÎäèQ±U¢ÍjÊäED›Â»h¿)k¢-ÿ€ýÄ\"ú\ršßë¤;™þyŠxsƒM<±¦ž(#)“¦H%&“Ýî`OÑQ½!CxËG²P&bcÄ\nôx\rÃQŠRUÝ\"ÖÄä52½O™¥T[ËP”¢Ü*äÍDÐt>èN&ÑÁ‡CG:E”Ý¥byåŒè!”Éa\"q”ô-µ<¢§+™ž&6¿¤ôF\">âG™´€Ñ(	¥küÞA;eº¾¾K¼‰Ô2iâÃJ”ÉUˆ›LþšÍ]!ùhS¦qc#ñéG½[HÚpêvï=ëap(qÁÁÆ^ï‡2›ƒž…{\'ŸÁÜÅ‡™©læÝùªÌÿ¤$G¨:¨Ete‰ÃÑI™´ÀU™2‰\n5/SÙVó~ýÄ\Z9ÇªÎS&-påŠ˜L!!þºê_¦EƒP¦[²÷€Øz;o;ÁX­Ê6ói}ÝeºÛÉ+ÂiõvNvOˆ6õ¬?áuwZ-ÔÝÚ¼ÖÖ¡t©ÉŒ .ÊÄ4æ•.ejiiJ74n\0ßAâ…Ò)9V™2y¢3õñÃBh‰¨LV±ÄçšÛ)“–8^#6¡$$§VÝ§4Xð4Úºº”IKì; ¾ýé‘n{.%ÄÜè3¦	>ìÿêeÒ3§DgçU¡´Æßá¶çúß¿5xT>‰žd;mªXÈ˜öŽNÍo¸ÔLçš;`0ˆ}lwœ¸±¨	E›ª=\"êêÚ›/&÷ˆD±áóµÚ? Fw2mß!>Ïáo4¸µ©—›ß€U«ËpîÜ¥>mÞ-{þ PÚy™áÂÜÇ*µ/“îV¨hÇÉ“ç#6œû‹)Ñn¬^¼­\rÅÛöcÎÌPÌÎŒCP¾¾ÒK¡._î„ÃqÅ%»¼¢IQtÄ{\'Nû÷ívÊ¤E*6	Ëd6õI\\ÖÂOšQøÉ7›‡“Òú#%Y,\0‚ÝîÐE\\[]žN´u›²šæ‰ùŸ2çQñ`qz	Ë£K™¾ÜwÇkZ„Ó_‹\ZN~¬•ÒÓÄ?ëåÌvÝž›·{²ÚéwÙÃi‘Ššº¼âŒnÎl×­L¯œFk«øò³9Hñ†9-2/3\\¸¯(‹}K™¼˜={¿W”~ÁãV]Äf½m_ivœpÚºº6]Œ«k™^}³—.‰3ñÜRýFäý!Nø¬vÀ=Qê)“‡ÐØt;w)iJO‹rëD®\'5ï&gˆàÕÕµéîØ0ÝÜÿûÕ6á\rƒ?4u‹×|HÉë±Zü°dQ¢¢k^Ê;ª»wI÷2uvÛ¾¨St¿Ñ€§%è¢ÿdµø¡ /EQ8˜}¥§u1IK™z`M^öì=%¼šèŠóT—¢y¡rÿc¸¢~R{G\'^YoÓå{D™ºYü\\Ö¿¥ì$S­õ×·G(>¥¨ðƒ*ÝÆ¦L×±±¨	ûJOS¨n‘”Ì\']´î\\L™<œ\'—UÂnwèV(«Å_l§X$»ÝÕëªtýîP¦ø÷ÕG4™Pøî¯å›15y)ŠúH×úIo½sL·Í;Êtö|}	ïQ|¿Ñ€U+S±&g°×}æœ¬h<¿<Y±H\0°e‹1€)ÓíûOj·‘?pÿ|úQªW¬4·Zü°é½$dÎ\Z¦*\Zúg[k…·¸S&“›ß€%êjšÍAxåc<º–ÊÉŠFá»Ø]?à dg.eÒ9Ù+jP^qFÕµþF¸¾ÜšŽœ,Ï‰*1/3_l§º6º&ƒ¢Q&ÅÌ]|XµP@×ÙÌYÃú\\ªœ¬h|úQ*²—ŽRÕ7¢H·‡a8µ&g0¸H¯¥š>Ý‚²2;\nÿ»ÞåËn&¥õÇÃFaÜØH§„Ê¡H”É)¼{.\\Aæ¬a½º¿Ñ€ô´(¤§EÁnwàxM«Sƒ3ÏËGjJ’F…÷ªº‘¢MÕl LÎ”8t¤\rÏ/OVÝß¸“)\0&S\0ÒÓ¢½´këBép8® ¬¼ëœŠÝ¥m7ÍáX-~?„rIˆDD„?¢\rpÉéí(xç#±S&çS¼­\råK‘ÿr’Ó_^³9è‡{^Û?”Ý‡ŸÕnwàÅµ‡t¹\nœnâxýürv>ÛZ«xµ„·°£¤÷=ôEbÍä¾~Ôß>·cù³Ã5†Ænwà­wŽqUk&÷³ëÀEürvŠ6U+ÞµëI´wt¢hS5î{è+ŠÄš©ï\'>ü¸Y‹Í˜8qS(Ü%ÑîÝ§Pð—zÝ/V¥L„íäd¯¨ÁÐØ:<½Èì´ùJD™t=@‘½¢@\rr²¢ñ³;#=¦Oe·;°£äçŒ(“w6ÿß€»Ç÷Ç´_˜6ÁäÔÉTQJ÷Ûñ÷ívŽÎQ&mTì:pÀ	Ü=¾?~~WC`ìô¦`kklµ­8r¤;÷œ£@”Iëb]ÐÕÔº¶¢!!>Ä\0ôëg¸e-ÖÚÚ––®óÒ«ª[àptâXÕùWLÊ¤*m—QikÀ%;Þ\nç™¡L„P&B(!äÖHJ/e9À¥×Ùí\\ºÔÉï\"#»F?ù½\'®¥ñfœ09>Y’¤¥¹m4ÏÝ“”DÝK¦••ïlæB™!jdjf¶£ê—Ô\\$Ë²Ìü&ZE’$U^¨mæma–¢úÝV+S1óœhÕï¶¤öBY–m\0†0ï‰†¨•$Éâîš	\0gÞÑ«wZµLÝ3ÄùÌ¢òÕ¬zpJ3ïºæÞû\0æ±,ˆ³Q’¤^·´z=iÛýÙ,â¥d;C$§ÈÔ-Ôë\0â\0ldÙo©\0Äu¿»NAröÊ²l0@€P–™G0ºûßooø½\'¾Õp>4(P,I’¯!„B!„B!„B!„B!ÄEü?ge€a\'Ø\0\0\0\0IEND®B`‚',16,16),(6,'AnnulationAdmin','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ó\0\0\0Ì\0\0\0é‡–—\0\0‰zTXtRaw profile type exif\0\0xÚ­›Ùu±’DÿaÅ˜€=s°žó<óç&ªH6›lJÔQR·jÁ’KD$\0™õ¿ÿÙæø%®Z“”\\s¶üŠ5VßøRìõëút6ž¿Ï¯î{îóu3Æ}ÃsIºÌë~¾q=}¼ ñ¾Þ?_7r7äËÝÐ}ã­Á ={¾ÜÏ•»¡à¯ëîþ·©÷{->LçþSêéS_ºn=ý;\nÆ˜‰ö‚7~,} èŸÚùlÜñ<äB9W*§¾·yÿúd¼-ßÛÎ¶û‰ðÙÆæûüd£ûºKßÛîXèqDîí«ÿ|ãøåñ×ƒíöžeïuÍ®ÅŒ¥²¹\'eï&Î7¤‘xY#ó#üI|—óSù)Lqà±‰7;?Ã¸ê<ÖÞ.ºéšÛnÏáCŒ~yáÓûáÃ¹V‚øêGPDýqÛn˜ø0ðZà²‹;ýÖÓßp…ž§ãIïh_~ý1ß]ü—Ÿ÷†öÖÐuîSŽ­—×Ðcê9ý›§pˆÛ·MÓ±ïù1^zÿ¥Ž\rx03&Øl¿šèÉ}ÄV8~<—l4öJ\r\'ón\0Ñwb0.à›]H.;+Þ‹sØ±àŸÆÈIßñ€KÉOg6¾	!ãœâµoÞwžõÉ_—‘B‚kHœc\"~$b¨¥¢I)å$©¤šZ9æ”s–¬Õ$H”$YDŠTi%”XRÉEJ)µ´êk\0ÂRÍUL-µÖÖè´ÑtãíÆ­ußC=õÜ¥—^{„Ïˆ#<d”QG›~†IúÏ<ÅÌ2ëlË-BiÅ•V^²Êª«mbm‡wÚyË.»îöîµÛ«Ÿ½æž<÷³×Üí5õX<ÏÉ‡×¸,òÖ„S8Iê3<æ£Ãã¢PpRŸÙâbôê9õ™­ž¤H¯¹¤Î™N=†ãr>m÷î»Ïýè7“â¯üæ_yÎ¨ëþ?<gÔu·ç¾úí¯Ív%iªMmØ\0¬Ò|iÊI_>ûËleñ­i²ªäêákÝ5a¼Õ,++¤Ux‚üØÚÜ©F’mÕóØu\'!t+i8|‹¦´-t¶ýj¾O“tøY–¶ÐR=47C^©ÚA¸¸Fš`tNÑî1JÛ!Oœ5úš>¯¹¦$Ûc5y6‰DK¬8|Úe¶Ã­	@vÉ¿žóÓ§y¿°c˜¶/[w¡“Qd¬Ý]LÙ¹\ZSu®íLöA,\råV#8gî9ìøÏ>²l&˜ZØ`ß³õ“ dP‹xKyíRöp³”ä®›iÇUÁ©\0{×MÙUÍù¬oaM¢“Ìav:Á¿û4tÊP¦Ø¤”fÐ.!žjÏ%öÜ\\cÌ-Ö·w13%·Ýìn’àž:,VéÍ¬¸—«¸¾B\0vq‚ó÷h„±\Z¯Â3)±>¢[6÷Ý™aó±oüër/¥-cép(ÁçW ™ ”ÊÓ¢Á5Ó˜ÀSìå£Ú®[bKmØT…Ù]ªúÎü•s	j}5ËÜ–dNmæd·¹šé+O²º<¡•ƒEsDµòs–²ˆßh!âäû*uÏŠ_WäMï´á¶¦òËïˆ\ZYkªñ‘bÉÎjtÌ¹cíe¡…IüTgNX«4°V¨mfpá­ä¦¯*ãR±ç‘DÝ@³¥±BÏâ’F¨µC×æ0LZ àî¶MÚ0X4cEŽ?fª¿–Ä(¶Ëi‡YO¶ \rî÷kÁõ dZ¤¼0n’Ñc—!i3;W|îu¦6@%Ð¬9`²Õ¢+Ožb#)}º´æÖ¡ÛNÙ()ÈW¯\0D¡VrîS³«d\"©}DµY£n;:Î¨\\Æ	}¨o´—²âŽ ñ}¹0QŒ5ÅŠB,È¥³RÖ©M~;{ÚR*­\r×qÔBÿ‘$Dúv(bŠ´*3…úÇÄ€\rGyÚ s-¸ô=x3,—øŽ‡È!,Æ´\Z†\Zt@jL÷Ù\0æ“,¡Ð”O\n|k\rÒ)¬ÎKàg*4Bú6t6³¹»~ï˜˜}êúÉòÏ½ò†yî–¤|êøˆÓ®z~œ´y=ë¯“þ&áÞÓÍÐ^Ý\0y$˜ï·>4³p_µ¥¨äÒÉIÁùj\\Wš·ˆnP·!£7ý!³Nbí.å±°»!ÃIÜ1HNñD$‘ÑGmÄå$)†^)söÅfˆâJ®ÜS1Ÿ=¡·^˜BñŒU:ÌJò…†i$¯p6%DÌÓc2R•Ô*™â†Í­æ€éLÂGeW&2=ÄZ×d´T?×–gõà‘gD‰þ¥ªÜÀP)µÄSÕd¯‹`ax‘1€ÐR]F£‘FÍ\n,\Z7KÚÆ\\¶ƒxH$N 9A”¡·PÛ Ãh(³ì•ô¨Ž˜„_fRNÅÀ©b<‘—pª¤}ëa\rc{xž¢ÎNZT\r³¤–V—ÝÏoŸæùÂ¿~~4”–(€\"’r¥òÞªU|‚Ä ZÕ8•\0âQƒoXj\"XáO Þ Åä8}#6÷$]FS¡X}38ƒW•ŒSžhõ¥àóå}ïÈÂHQC#>a {1Õ8¹ŒñOs£¼7÷‡Oó·¾ü¼gd§œþóDÍç™þq¢ÿ„q½G\níE×‹Ö‚A’g¼çŸ2d$å±L\0ô¶Ÿœjü@|‡‚œ*¨!YïèbÉ1¶;yŒHôã€Æ®¶(Xõ FÎˆm»á	ÜÞ„`.¿ÅÅ9ÒžŒÜ¤ó*4\\/8cR<º7rùá(ƒÙh¥¡ìi¯¶H7¬\nàfigtÃÏqAH#•°”Ü\n\nåßßIæ¨Vw·ËŒ[‡q±úŽ¬ïÇ‡ Æöâ¶à¡‚@,7Â¿ß1·°­æÀÎè—µÜÛPßÇ`ßtG!ë\Zªyu+½ª\nÁÁ~ÕÈQa:$þ>ãý<{/|×ü«qŸlþÕ¸Ï¶5ÿjÜç;æ_ûl[ó¯Æ}¶­ùWã>ÛÖ¼6aªè»í|ˆÜZê£d·g\nýSÚÔgh>Å­ÙÈÚDêy†z‘èeª}’”DüÝf¢Î¥ÈÜž:Yl-qxTJ¤äAùÇµ[CŒ0¹Ž×äLÍ7]ÇøîúNHœñ7Íß0Äq”4\n“(©ƒè*Ëwþ\0m`q¡Tj»DêŠu…f=Ú©6Æh²}sCü“ÔKÐ½»‹ØÒ¿£óoDåÎœéÓ{]_Ð8šT¬*ålM*OE¡¢AßAá¨RçZJ°ŽÄÂº@\0g•JE;œú©+•Q{|¥¶ÇkˆY*Ë…‚wÅé³Ì³NÉü­+ÉJu&íþ«KÌ5†õî¼hq…ìhae&qð…£Ž²¾ï˜gúª½,kHÜÜ%zt9û¡žì†WÙ¾ó¤PrIç	°¡vÃž¾5§j›\'WË’ZƒÖNyŒŽ±ìØPÂKE¥¼ù©˜†GWË¦:Ò5èš*´ˆ-×Y]±@ll§.”¨¾,ˆ,‰L¸U.bÜšn¡k}HMv®&ð¬Õ®8w\"Ù‘bäà©¶<úx¨˜Ö¡RË%j>O)o=É?EÍÄ˜) 7P=¢ýbŠMuž<w;£@‹ Ròµ÷–Õf©¡ž)oD(¶Ÿz9G]dc–Å#qdú_tBÜG,Tzäˆ÷”\03)TJ^wjQ•˜xfÜåßêªÎVž©&ÁŒs†S\nì,m\"Œ‰“¶s»QCjBUËT,oG5cÂßF-?„©2ÀGZÝn\'äêlºž\"¶sŽ€ºÞDõ^\0wû\Z-õ\ZÂ¾xI¼B FÊ«ŽŠè!£ºØYJÉžg3ËùŠ«èúÇrÑ!ƒZäD&<8½ÐÙýÒAëßäøCŠc;P­Ý´ì\Z‡SàlÂÏÇ‹†t]RP\nÂ]ß^¥ì’%}¶^ŠßhyÑ!!««VØÄÞ)³u])ázÑh*\n,­çròý ŸŽ<õSÜTeS´ åzü4áy‚ðT\n«TGâ&t\ZâU5J%ñ†\nÔã(¶6Ò«›«3Œ¤2#Q~A$&ý¨`¨‹æ:;êŠˆ*Íû%î¦Ë$0à$üt½JŽY:h³%Ïojv²ŠÕ¤)q6LwÁæ¨K#¸UáÖé*«£4ji(«\nù{öä².BÞC,A8GŒÝ8\\M…qÈôU8Z(Á‹Z¢R§ª¦¶‡^³^ogWÖ+ë’õîì~ÿF@C*Ç3\'M‡¨D=ÕðWcM\nú–©Q)2Wr+Or¼H¤\\[Y÷NK.†Qìª>ö mm‚Á\' Vú¤ØˆäÉ{æÙf½Šw¢tÂ]WýÈKf¾œYCÝGÊtG¬2ÒF]oŠË`BOEx^áEMÚá‘H\\(˜‚©Àg*„».	´èÈÕ Ó1\\DÒ,]ªE¹ü|ßºêEÊ‚]„˜ö¸k>cÇèM«©}!èø£ë<ÔÜ¢ku†i$IR^$ðúÜsÇD©ŽËƒSÿ\0Ôz†Ef–ýu˜`3ú‡:U¼h‰ÖBOð~E)\0àm–‹]LÛ¾!tXçJ÷?ð¹¾3ŽB™”ë\"õ/¥é÷«ù‘ØßÔÕát]Á~ÍéæMŸ=Rºö•?`=	²O|®5§ùžÐ_”£?ðùçvÌµIÈ2[œ~Iì®Ïìg“rV¶dÀ@w“ r¾õDöÔ5ÈŒ®4á9t%É?|Ö¥8*i7¡8“‰¢å–îÌ·èmeJµ$Ø³–“³ƒD`„ šP•s®à6\n:j{ˆ]BÏŠ\rØXßü!h%”d\nÐ“YÌXM@áö‰Þ\0ÌHÈÚE\n½YÝ®R+c’[ð¨nƒ(¥!G˜€.É©\\P‰d üáP§ûXH\nð¡I[\\Èn!}Ú´0uË\nÉkAŒ5ºÔÜ6ü¡BX‰cs’£ŠÀÏ€\0„­·\nî5ÂSßìp|.;ÌcÝ¡þ¾xóm.$Fßºûw6\n}Ö¸’£j]‡4\"YížpÌKõúXŠ|—*eÈ	zÓ¾Œãk’|*F´£»Þ¸9÷Ô&i1òâæß#(6IÅ<)ÚQNà·´\\CfÐµê¹T WÐ‡¾¡Ý¡¦œk¶\0¥‘Åµ¯Ãxâþ›6O§[écEºE[¨>É4ì‹n³”³ÈK\Z€¨¢4øï0@ìµ™„æªšÔIŽOÄWèJþ(ÏR­ ðÚ2Ô’]Fâ°½è®nÍÍD¡J®UÝ2¡÷Yù“†ÞÐ`äª%_Ðï+xòóëš\ZŠq[Ý3#fA¥ËÒv¡Fœæà¤Zò÷éíUÿÁg\"»/%¸CèJº®(E£æEUCÔY;¢yÜ‹Ò·z>ko¢+D«û°Q…+(% ºwô1™t¿_ËûIô#nN¿(½ç¯”ž5ºDñc+5#d—<\0Ñ¬²‡1!ºÉ÷ù-«6ÅºJÌe•¢d†+¢p©)/óùwél^çóïÒÙ¼Îçß¥³yÏ¿Kgó:Ÿ—ÎæK>Ï>Ÿd\\¦Œ=©(µq,]·ÝI!$E†aÆß\n™F=cÒ,cud:¤7\ZaK1+ºµ…ïHpb3ºt‰^ª]¢U©åt×Ù;=2¡S²ÀD4§Õãt>7q€4*<\roÄ¥{ÅLÁuêÜ¢»æµº#ë\')JVÀè†éÏ\r@P0Ã¯JµOCm@\rÃÑ°æÍŽÕÌPUÔÃ™D¯g(0ª\nnÓÇÖÑøà2Va¶[Z&Q/(òFá¹ÈzpF×ÞrÍ–ž|D\ZuJ‘[ß›#ðI¥/xÐˆ\n½ƒ)Š\\ nDõö±ê:AG˜Õ.Þø¤Kð\"¨dÂ¥S½“yKÕºëNÕtüuŽuŸº29ŒéAÂû¦¦[`ª¤\'@¥ö÷X$0ÉŽ*E-4‚w\"T¸@Òû*ºNÐ\n2)Ù¤sÓk€±E“u1Pæ—ëDHW0G]SeÑ=A¢§û/µ$@Ð¹À¬Ñ\rË›ÙõÀÁ«V?‰\\ó›U«Ÿ­ÌoV­~Z´2¿YµúiÑÊüfÕê\'‘k^¬ZýúÓü¤Â~ƒÚæ\'öÔ6?©°Q»]rje’Êa;£\'„É•.¾Rüoô4Úy{#Š\rs”ãB8‚fëay˜[zžz,\"èu‘Á›º¥–ÔÖSšºLX!Ës@óµzo¦‘í¡avP£»°\råáFòë÷^ô« ‡=_A\ZpˆØ ž±¢hb_×Y	KžÒæ§¦ÍGÛnÿ©×«§‡NõqÄ•ng´©V¬ûÇþþÜù›þ0.À£\'ËV•û¸\0¡rlGl%¯Lke^±ë)sm£ûæ×{yoq‚ã¿\Z•nä#`±úuöj1Ä}æÐS\'ärÔc[7!ûu&Ákœé>Î}Ç<ÝB)+£mà|¯¾òN\Z²ÑƒºPrŠúÁ\0÷©·Z2¿o°nêâ˜nÕÈuÔ#éÂ[yy‡r0N=E2’j‰YÌûwÞ¹ÔF°r»’ä¼œ©\Zä;g>¸Ò|{ã¯iíåJºÆ™æ>ÿ„7Cw;=BØ{-§S¡3TuŠêK2NÚ”wOªè!á[Q»*í|éQÏm>˜‹¶ïíf~gÒ×5¿3ék‹šß™ôâäÇ\0×Þ \ZûÎ€Ü¸n=Üyï‰aîÌxË‹·¬¸#ÿÚšïz>ë\nüEU¦8Li¤kszŠ—àc4#¯YJª.ž#Tœ\"óT×ÿm\"ºÀ¡Û|)¹º=zž9øåmÍ(Bš§„œè”žÜ¥¹ÝÚïëÆ‘ß¢gÏòÈt~ë1ZD…V¾©›|,TG¡†s¨H­¶T™ÞL‚Úd3RIOì,}~žÿ:¢ç`ƒžn©çhŸ¥K.æ9M‹¬j³eAO\"ÕPUÏT†‰…ËX!Œ¨¼f‡MK¢ºR!°ö*qéå¶6C0éÞ,m¤Äa²Xöü—\0§U–(ÓÕ¹È\"þ©µ‡zï>ÒUÒ€ƒí9Uå«¦¿{{Uòå¦½n€<`´‰omýááŸ:3×À>Úú×q™«¯ÿ~\\Æ=ì¿—yìë¿—yêíŸÇe¾öõoã2ßööã2¯úúí¸Ì½ýj\\æç¾þ~\\æçÀokŸÓö{»ÐfÖÊ ,«ê~ª¢ÿŸÍøíÑÐÝ\Zç¨ç¼(j¨«Ý þ´(Á¹õÐ/Š4S7=Qò²Z+ZW\"!zÔÓêv‹×SçŠÉ¡°GQ¨Ê1ô@éÇW)¼\Zå±Õ¹§“õæ7GðúüeCØ\rÎ3ÿïŽß4Á\0\0\0bKGD\0/\0;\0Âç†ªG\0\0\0	pHYs\0\0\0\0ÒÝ~ü\0\0\0tIMEè	8âñ\0\0	ËIDATxÚíÝíoUõÀñï)­”Ò[>SZ—)e“‚Qãf€FÔ=˜e.Ë–Å/–½XöB_í-‚¼Ø‹-Ù†É6³Ä,˜¨E‡OÈ2Å–	SÔR°h[ …\rÚß^œÛŒ)½÷œsoo¿ŸäæZ(ÇÓó;ß{Î=÷ô$I’$I’$I’$I’$\0¢ùþ„º€uù@0ôç¿Þ\rôGQ4îp;&úßÁÊ…¶††ÂõÛBØâÒsLtyÐ¶†ÆCá†B}.IÇd¡Úö_“;h…äùjè˜,¸Aëéré:&I©š\'óùPJÓ]å+aÁ¶8&ó3¦u)NÛ˜\nÓå˜ÌÏ˜$c’ŒI’1IÆ$“$c’ŒI2&É˜$“dL’1IÆ$É˜$c’ŒI’1IÉJåŠ®!„‡¸|EÏ\\“ìMh:×rrUXcÒŸìHãj²Q‚å€Gò×5•¹§€­Qõ—ULù-Ñv#Ò<´-Š¢GÊ\"¦üU8ç˜h\0úŠÝõ«2$‰^`G±©*\"¤u†¤\n²)„°µ$»y!„þ|ÑR%éŽ¢h(³-Sþ€ƒ!©¼uŠ\nŒið—»*Tc!#\n}ÏÔçòV+hýžsLù~ž¤J¶.“˜Hïi^óDWÉ˜$c’ŒI’1IÆ$“dL’ŒI2&É˜$“dL’1IÆ$É˜$c’ŒI2&IÆ$•^ufÿ§8uÒ%®ôÝ»¹Âcza\'lû…­ô}ÜÍ“|Ï$É˜$c’ŒI2&IÆ$“dL’1I2&É˜$c’dL’1IÆ$“$c’ŒI2&É˜$“dL’1I2&)Õ.‚-nŠŸ[âç³§áÒ¿aj´üæµ¦.žuÌŒ©WÌŽÕp×=ÐÚ-­P]\r§NÁ±Øó\nz½ôó¹âèè†å+ ¶&Æáô):XžÁÓÓ¾zÖÂß€µ½°l9ÔÕAU\\¸\0££pË­ðD-üã¥ÒÍçï†ï?«{`ETEpîŒŒÀþØó2||Î;¦ÆTÝwÂÆÍpß°~=Ô-E‹ Šâ¿_²êëaIDUðGJÔê\rð“ŸÁ†ËÅ[%€™èYëo#{íexk/Œìwl)ã6Ý_ÿf¼2ÖÕ]ûûjk¡¹6nŒ¿Î:¨Õà§?‡û€††Ë¡C~CCüÒ¥ÐÜðt5ÝçSFï‘n[ïÚ}VH¥êÊr¹ÿÿ}UU°|9Üq\'Ô~Æ?çÆáô cmL)ëX\r}›aÝúÏ©TA]oH³¢(ÞBõôÀ±áÀ~c2¦”-í€¾ûóï‘êæöo³\nj®!]Tc#ÜýUøð8üOHÌÚÎUý2èê†ÆeñîÑ\\]ÔÃ[à¶{Ë#¤+ƒZ¶,Þ}½µ×ñvË”¢›šaeçÜ·JYl¡Š\réÊùkm…æ6ÇÛ˜R43\r‹ª?}T¬‚J*¤Ù\r\rÐÔŸÕáºÆ”Šé¸ø/3ÅO+© ’é¿/\Z30}	.žwÌ)%§apÖ®ƒæÚÂÞ7%T\Z!…\0SS0>îxSŠ>9ï½G†âCÉuu¥ÛåK+¤ñq8ôñdXcJÑÔ(¼ò||BkýRèê‚Å‹³*Í€}oÁá÷ocJÙØ!xò÷ñé8ßzVeTÚ!½¸þ²Ãm)#ÇÂŸÿ;Ë Òi×ðô“ñÏ\'cªØ É˜* žo‚o×ŒÉ Š\njS|ù+póÍñ‡©†”¶.cªÔ Z[ãGuµ!ec»1UjPÕ	“!¥Æ³ÆÓ\nêÙgâv§¦â¸’1”!“A•GP†dLeHÆ¤òÊŒÉ É˜TA’1-¸ ÎŸO>¨`bÂŒiõüN8q.]JvúÓÓpê$¼±ÇŒi8w.]½(Š¯yÞÞ+Z\\Îòt¢¬µ¬¿Ÿ¼ÚÖ55ÉNÑ¢øºw÷Üo¥Ju³\0cR&!m¾/><—+þ¼½k¹á†ÒÞ,À˜”iHé„4«Ôwß0&UDHeL†dPÆ¤òÉ ŒÉÊ˜Tž!”1’A“!%ÒÅ‹ñÙ55åw;Ó¼	éÌ8Osegi®m.cš÷!MLÄgÿa;|mci®m.cª˜~ýK8¸>:ÿ¹A“!”îf2¦Š\ni–ASEYÚ›Ì>¤,ƒš™Ž ¾ûªãmL)jë†Þ^èY“}HYuÇ]pô(ŒŽxÓ³ëäoÚÓJøÒ-Éþ>Ò\\Bº:¨¤/ÒR[ím°ºšÚocJÑâºd¶Å„”vP‹ë ³Ó_}7¦ÕÔÇw¥(‡Ò*Šâ_—1¥æâY8þ1ŒÅ×X(uHiBþ¦ÇÜ˜R4vFFàüTy„”FPSSpôŒw¼)EGÀÞ×ax¸°­S\Z!%Ôì…,áä1Çû:yh¼Ð]½7÷Â­k`i´·CUUéCº:((ì°ùä$ôïƒžõ°¸1eàä0ìû;¬Z_Zë¦›>ÿ\r{!Ôä$À+/ÃðûŽ³1e`jÞx1Þ2]8·ß+WÆA]½ÂÎÌÀÙ3°kW6!\ZÔä$ôÃÎgã-ïÔ¨ãlL93;ÿÇFâ÷O7Å—%®¿âðù…ñ)ö¼¿ùUv!}VP7Þxy·4„øzç“çàí·á¥]ðê_áÃ½Ž¯1• ¨¿MÀá÷áà;pçÝÐÑ¹Fˆ€ÑQ8<O=	‡^/Í<ÎlØmmqð33ñŠ±±xÞŸ{>xFö;®ÆTÂ#ûãÇ;ýÐƒÜr˜¾\'Gá“1;TÚy<~žø-~­mÐÒ‰ƒÇ ÿM8ö~ü³È˜ÊÂÑ}ñsM}ù­˜c‡`gþPwýŠøùìØåSÙn­Êy¾NOÒüÐV2&É˜$c’dL’1IÆ$“$c’ŒI2&IÆ$“dL’1I2&É˜$c’ŒIR²»Ä¶À~è/…ææøùÄ‰O}-³ß£2Ž©©É¥]jÉ|ÜÍ“ŒIªÐ˜Æ]lªp­ãÝ˜5„$î@,•§(*ì†Å…îæ=å\"W…*xÝ.4¦.sU¨‚×í¨ÐBV¹ìUAŽDQÔ•õ–	`‹Ë^¦¨uºà˜¢(Ú\rlsù«BlË¯Ó‹ŠƒÂvàÇŽ…æ±Ç£(*zO«èmó3ñ¨ã¡yêÑ$BJ$¦|PÝÀãŽæËÖèÎ¯»‰ˆ’žÃBðÐä³²Ð›¸êëk¨àå0ìvDQ4äj!I’$I’$I’$I’$)%ÿLmsXF\"\0\0\0\0IEND®B`‚',16,16),(7,'Notification','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\00\0\0\00\0\0\0Wù‡\0\0ÕIDATxœí™[oÇÇ3³»¼™%RË”%;–_RÁ°ÇA\n£zyèS?L?A^úòÖ§¾\n?Ô@ °»ZÁ×(¶%Š±lJ¢hQ¤ÄÝ™<,IQ²h9m*Ë…þ\0.vfÎùïùŸ3gvá\08À;\r±Ëõ~…mÿÙâ°ï†ÿÖvüßB 8t±Û§@l´/\0âJ©O…ÂI¥”¶ÖîËP!¬ÖZ•J¥oµÖ6!ÖZ§P(œüú«›Ÿ%’)i-H¹¿8cÖusù£+¿Ÿ››û»§uß\Z”–^Je2ùV=ÝÍaPš–ÔÛ0F‹é§U{<t9œu‰{ÖZ¬…·•ÛmÛB6ü…jÀ“ùª5Fw<êÐ6ÃÜb“Òbƒñá$c¹Rnfõ^ñhÛ“\"\"Q\\ZgîEb#0h³9¶C@ÉH÷®#ÙhLÏ­2W^çtáùŒ-¼Ñè¶±´êó ´ÆËõ€„+‰Ç\\¤¨.‘;Ý“ã®\"æH’1xYøâÞ2…\\œsãR1õ?#²)¨75wçV)-oŠ)r‡<$ IÜU[æm!s1O\"RŠÅ©75óKÌ¾hpöhš3ci¤´÷’ÿ–H÷:ÆXîÏ×¸W¬¡”äH.N*&1¬±8žÀw·\ZìR¶Â#@‰Žg}I‡tâåj“Û3U”Öøðd?ãƒ	\0Œ´úŸ {îÜâ:·¾]am=d|(ÉP6† E	@€’)RnjhKŽ E§­°D|\nùƒ}\ZüåÖs&†’|rz€þCî&Ò+¬¬|ù Âl¹ÁX.ÁÅÉ,1W¡µÁÒò‡(RŽ8Ûll! ¤À‘ÛE \rk-qW15‘¡‹óïÙU>¿^äÒ‰,½ßçÈŽ¡^²jß“üÐðÕÃnW%›r¹r²Ÿ\\Ú#4cm¤„ms¶Bz½J@EC[K>ãqõgyž¾hpóÑ\nß<©ò‹©!Î§#-·²m¼å@ÛöÝbëÿ*Ó,—&³NF\rNk·u„x¥!kwÛ;„W\" ¤Àì@ ¦Ehr4Å±á$·gªüñ‹\"ï$ùÕÅÃˆGãZ*…@ø¾²Áµ.ðøyƒóÇû¹4™ÅQ‚P[LË~/X»éßŽ$t’x7Ýú¡¡r1š!üáÏùøý~saˆd«ì6šš¿Þ)sãa…#Éhl´¤\"1f÷jÖ¶\'¥ »×yc	Á¦Œàº’ùÅ:7ï/‘N¹üòÂaÒI—ûÅ\Z×¾)sóQ…ß}<\nÀŸn<ÃU’ß~8Â™£ij€/ï/ríö3®œÉ36˜\"Lgíúù7’óš$Ž±(%±Ö2ýd…™g«œïãìDkA‡†©‰§FSüãî2Ÿ_/põƒ<??—#î)6|M:áòë‹£Ü›­rëÑ+5Ÿ&²!ÐÚô°½é_O½s jê<×auÝçÎÌ2ë~ÈÕ©F²	üÐ€µ8Jâ‡×‰žöÔ±\0ƒI\Z¾Æ\rNë€àü{Î%¸3³Äû>&sd~¨[’Úôa×@FÉÖ-¡(œÄQ‚ÒR{³+¤c|rvÏuB” ÑžÀb©ûšB.Úìê¾F\np•lÉ$\ZhÃH’OÏ2ý¤Â×Êœè§OjÛ²-6«˜H! W/¤dô32J*¸R¢µåáü\nÏ+\rÎLdJ£Åƒ£vÊ>\"ÚEÜc\0Œ1x®âòé!æÊ5¾û¾ÊÚºÏÉ#Y”’„Æ\";`K#·…Àö*„¸J²Úðy4_ÁZ¸|z˜LÒ#Ð&ª×;:öãa‰Jîñ‘ùLœ‡Å\nÓO956Ð±Ç›T¡h\0(%PRR®Ô)¾X%ŸI0q¸)£$ÛžH?Œ1ô¥<.\Zfvá%3ÅeŽg\ZH¡‰|{}CL`þy•ÕºÏd¡Ÿ|6ÑÑ¤³=†?)¢ÜPRpêh?KÕ8¥ò*M?àÈ`†˜z„\0\\G±Þ).,£‡3ÇòÄ=‡Ð˜ÖÄ½8.G¥ÃXËP’LÊ£T~Iqa™ñÑ®Óã< ”âe­õ\\_’ü@\ZA¤MGîõ9¿Ý	[1‡c9–*5+50M”Ú$Ñ!~³ÉÑ±A¼®S|‹oëD‹ˆ\0Òø¦8_\"‚Î˜.	IsY<WaÌÎ»áÛ„µÏUæ²tK¹KBÂºnt^“{.™ÝÑ~ ®ë\n¥D§]jZkU­VµÖÚZk÷e„Ôj5£µV´å7úóv:º³ÏdÓ½¾ìt½_±ßUr€à\0Ø#ü\0‘$×iÉ8T±\0\0\0\0IEND®B`‚',16,16),(8,'Edition','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0 \0\0\0 \0\0\0szzô\0\0\0gAMA\0\0ÙÜ²Ú\0\0xIDATxœÅ–MléÇÿóeÇÄÍ‡\rdí¸4Â‹£©!(@Ô\"N8J”{ØmÃ¡j¥H‘¸Q„ R7Ùj¥*=€„*UŠàÂ\n@|ä@LˆlÇÞ†uL$\'1¬‰g<¶Ç3ó>=DÙ¬×vª~ü¥÷4ï¼ÏïyÞyþó\0ÿg	•nÜ¿÷éÓ§Oð<ÏË²œ×4-÷Ÿ\0+ÝxêÔ©Á‘‘‘ß¬®®âíÛ·Éx<þM$™™™™	ƒÁÙH$òm:~¿]\0®ÌsáêÕ«¿w:wuuýÊívlA€$I„ÌårH&“ËñxüŸKKKQÆ˜Vìl\"‚$I\\ ŽŽ~Y	`Ãììl‚ÖT(H7Ê›&es9Êf³”Ëå(ŸÏS¡P J511ØÈ°€ãÜ¹s¿ÞµkWý·HÉ2ädln’Ó	N’@ŒˆÀƒ®ëeÇq0Ms‡Ëåj\r…B!¾\\	xžGNÓš‚”Lb~dz>±º\Z ÇqÛZŒ1ìÜ¹³vhhèóÆÆÆv¾¿¿ÿÈñãÇY\n‚ˆP]Ws|ZK,}}\0c•\\aQq‡p8ü]$Y=:244tôÆI$Y–—ÇÆÆÆ\0èëÁ«,X\Z\Z°:0\0‡iÂªë€ €ãÊ}ÃÅƒ[,„Ãá˜®ë	ñÒ¥KWc±˜çâÅ‹Ÿuttàþýû¡æææ¶ñññ?-,,¤cE?ïêã8ðîÌ4ÿí\n\0Àììì\0Y ¢å`0˜ª­­=°gÏûÞ½{†aØš››Ûˆ¨ª¿¿ÿn·»^Vd3è<¤Óà%	*ö±\r	‚\0UU166v+‹=\0èŒ±…§OŸ¾N¥Rž¶¶¶]½½½ÕÔÔØß½{W·oß>ŸÓé´=¾†$aþ‹/PN£ÆïxÜZY+]’$!‘HÐµk×FEùf=…<Å^½zõ*\nÙNçÞžžžÆîînW>Ÿ·(¹œ$¾÷×_ce~mÃÃ°UUÛvˆ¢ˆ`0˜\Zý3€äæ\Zê\0–gž<y¢X,ŸÏç«óx<’ª(H¨*Ò™ÒŸ|‚Ÿú|°Š»ø†ˆ¢(âÙ³g±‰‰‰¯\0d¶^\"R%899“eÙÛÐÐÐäñxÐèp ®³?óûQ]U\"ÚVàÍ\0/_¾\\¼}ûöß\0ä‹XÑuýïwïÞýR–e<þ]‡Ãn‡EÁqxž/[î­Á×µ¹}K9aÎï÷K½½½ðz½˜žžF4\Z…®ë0×ZP’¤’Yo]¬ˆy•¼È®®.¿ ðz½°Ùl˜™™ªª°Z­˜ššÂ‰\'àr¹`hÍ–7Ü\nSL¥\0D¿ß¿oýà¦¦&:t“““„Ãá@(ÂÀÀ\08\0ÆØ2,R±l6[ëôôôÛT*EDD†aa¤(\n]¾|™DQ¤;vÐ‘#GèÖ­[DDdš&išFš¦Q>Ÿ§ÜÚ/[UURU•2™Ý¼y3\0 ®$@gggÿÒÒK&“ß0M“ˆˆîÝ»G»wï&\0ÔÚÚJW®\\!UUI×uÒ4m#ø:@&“!EQˆˆèúõëÏ\0Ô”8{öìo³Ù,-//`3Ä›7ohpp\0Ïç£L&CŒ±ìUUÝØ¯i\Z™¦I?ÖZZZþ\0À”HÎŸ?ÿéÁƒ»s¹ìv;\0ü ½êêêpòäIø|>ÔÖÖB’$477Ãjµ‚1Ã0 Š\"Ã\0c@À8sæÌW‰Dâ¯\0JÎ–‡N›¦¹QÓ4‹®ÍãÚ£GèÎ;‡)ŸÏS*•\"EQ(•JQ8¦áááY\0{°i^ü1p¨ªZÇË~¶Œ1˜¦	žçqøðáŽ \"èºŽl6‹¹¹9H’Ã0\0æñÁìJê\'‚ kjjºüâÅ‹ÕrC&cŒLÓ$]×É0\"\"Z]]¥h4J< H$BDDÇŽûÝÖ@?æÓ4$“É•B¡ði9ÚÍökš&Òé4^¿~t:ŽŽ´´´@–eFç* \0€•.üÃn··³b>ºù QäëëëkÜnwC{{{CgggM__¬V+\0`qqñ»x<>_)ÀºÞ‡B¡?âƒi”»7@€Zžç?r¹\\n¯×ëñù|žžžž¶X,°²õ¥íO•å%\0\0Ø\0ØÔh0@ûoÓz·*è€ÿ©þM]<6ÂH \0\0\0\0IEND®B`‚',16,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_history`
--

LOCK TABLES `workflow_resource_history` WRITE;
/*!40000 ALTER TABLE `workflow_resource_history` DISABLE KEYS */;
INSERT INTO `workflow_resource_history` VALUES (22,1,'appointment',1,1,'2024-02-09 14:46:09','auto'),(23,2,'appointment',1,1,'2024-02-09 14:46:09','auto'),(24,3,'appointment',1,1,'2024-02-09 14:49:39','auto'),(25,4,'appointment',1,1,'2024-02-28 15:34:35','auto'),(26,5,'appointment',1,1,'2024-02-28 15:46:10','auto'),(27,6,'appointment',1,1,'2024-02-28 15:53:10','auto'),(28,7,'appointment',1,1,'2024-02-28 15:55:45','auto'),(29,8,'appointment',1,1,'2024-02-29 09:56:15','auto'),(30,9,'appointment',1,1,'2024-02-29 15:50:45','auto'),(31,10,'appointment',1,1,'2024-02-29 15:56:15','auto'),(32,11,'appointment',1,1,'2024-02-29 15:59:15','auto'),(33,12,'appointment',1,1,'2024-02-29 16:12:00','auto'),(34,13,'appointment',1,1,'2024-03-01 13:19:53','auto'),(35,14,'appointment',1,1,'2024-03-01 13:35:23','auto'),(36,14,'appointment',1,4,'2024-03-01 13:37:06','admin'),(37,15,'appointment',1,1,'2024-03-01 15:11:53','auto'),(38,16,'appointment',1,1,'2024-03-01 15:12:53','auto'),(39,17,'appointment',1,1,'2024-03-05 09:54:13','auto'),(346,18,'appointment',1,1,'2024-05-24 08:10:25','auto'),(347,19,'appointment',1,1,'2024-05-24 08:10:27','auto'),(348,20,'appointment',1,1,'2024-05-24 08:10:27','auto'),(349,21,'appointment',1,1,'2024-05-24 08:10:27','auto'),(350,22,'appointment',1,1,'2024-05-24 08:10:28','auto'),(351,23,'appointment',1,1,'2024-05-24 08:10:28','auto');
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
INSERT INTO `workflow_resource_workflow` VALUES (1,'appointment',2,1,1,0),(2,'appointment',2,1,1,0),(3,'appointment',2,1,1,0),(4,'appointment',2,1,1,0),(5,'appointment',2,1,1,0),(6,'appointment',2,1,1,0),(7,'appointment',2,1,1,0),(8,'appointment',2,1,1,0),(9,'appointment',2,1,1,0),(10,'appointment',2,1,1,0),(11,'appointment',2,1,1,0),(12,'appointment',2,1,1,0),(13,'appointment',2,1,1,0),(14,'appointment',2,1,1,0),(15,'appointment',2,1,1,0),(16,'appointment',2,1,1,0),(17,'appointment',2,1,1,0),(18,'appointment',2,1,1,0),(19,'appointment',2,1,1,0),(20,'appointment',2,1,1,0),(21,'appointment',2,1,1,0),(22,'appointment',2,1,1,0),(23,'appointment',2,1,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task`
--

LOCK TABLES `workflow_task` WRITE;
/*!40000 ALTER TABLE `workflow_task` DISABLE KEYS */;
INSERT INTO `workflow_task` VALUES (1,'taskNotifyGru',1,1,'174cdb5e-d64e-11ee-a4dc-0242ac120002'),(2,'taskUpdateAppointmentCancelAction',1,2,'174ce02b-d64e-11ee-a4dc-0242ac120002'),(3,'taskReportAppointment',4,1,'174ce191-d64e-11ee-a4dc-0242ac120002'),(4,'taskReportAppointment',5,1,'174ce2dc-d64e-11ee-a4dc-0242ac120002'),(5,'taskTypeArchive',6,1,NULL),(6,'taskTypeArchive',7,1,NULL),(7,'taskTypeArchive',8,1,NULL);
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
INSERT INTO `workflow_task_notify_gru_cf` VALUES (1,'notifygru-appointment.ProviderService.@.1','',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;${firstName!}&nbsp;${lastName!},</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;${date_appointment!} de&nbsp;${time_appointment!} &agrave;&nbsp;${end_time_appointment!} a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"${url_report!}\">ce lien</a>, ou l\'annuler en cliquant <a href=\"${url_cancel!}\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0);
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
INSERT INTO `workflow_task_notify_gru_history` VALUES (22,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;12/02/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=1f42f1b5e\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=1f42f1b5e\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/grusupply/notification] : ',0),(23,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;15/02/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=27209b899\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=27209b899\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/grusupply/notification] : ',0),(24,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;prenom&nbsp;nom,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;13/02/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=307de7871\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=307de7871\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0),(25,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;29/02/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=45078fbd0\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=45078fbd0\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/grusupply/notification] : ',0),(26,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=5facef2e3\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=5facef2e3\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://127.0.0.1:8080/rendezvous/rest/grusupply/notification] : ',0),(27,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;12:00 &agrave;&nbsp;13:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=66e496225\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=66e496225\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://127.0.0.1:8080/rendezvous/rest/notification/send] : ',0),(28,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;29/02/2024 de&nbsp;17:00 &agrave;&nbsp;18:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=72603ed23\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=72603ed23\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/notification/send] : ',0),(30,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;philippe&nbsp;bareille,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;11:00 &agrave;&nbsp;12:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=956cce199\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=956cce199\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/notification/send] : ',0),(31,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;ph&nbsp;ba,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=10270795a1\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=10270795a1\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/notification/send] : ',0),(32,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;phil&nbsp;bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=11d4fbdbdc\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=11d4fbdbdc\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/notification/send] : ',0),(33,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;ph&nbsp;ba,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;04/03/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=124d3d3dd3\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=124d3d3dd3\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0),(34,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;18/03/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=131830eb6c\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=131830eb6c\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://127.0.0.1:8080/rendezvous/rest/grusupply/notification] : ',0),(35,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Ginette&nbsp;Michu,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;05/03/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=147009507d\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=147009507d\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0),(37,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;P&nbsp;B,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;16:00 &agrave;&nbsp;17:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=15fe52817e\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=15fe52817e\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0),(38,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Ph&nbsp;B,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;17:00 &agrave;&nbsp;18:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=16339f91d6\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=16339f91d6\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://127.0.0.1:8080/rendezvous/rest/grusupply/notification] : ',0),(39,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;P&nbsp;B,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;08/03/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=177bd64a8d\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=177bd64a8d\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0),(346,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Peter&nbsp;Parker,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;31/05/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=18239f10cf\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=18239f10cf\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(347,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Wade&nbsp;Wilson,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;13/06/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=19068fd1dc\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=19068fd1dc\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(348,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Harley&nbsp;Quinn,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;18/07/2024 de&nbsp;11:00 &agrave;&nbsp;12:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=20ce9e1a66\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=20ce9e1a66\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(349,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Bruce&nbsp;Banner,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;29/08/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=21b4d294a1\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=21b4d294a1\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(350,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Wayne&nbsp;Campbell,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;24/10/2024 de&nbsp;11:00 &agrave;&nbsp;12:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=22b557a23c\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=22b557a23c\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(351,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Maximus&nbsp;Decimus Meridius,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;14/11/2024 de&nbsp;16:00 &agrave;&nbsp;17:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=233e93c5fd\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=233e93c5fd\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0);
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

-- Dump completed on 2024-05-24  8:24:18
