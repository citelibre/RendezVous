-- MariaDB dump 10.19  Distrib 10.6.17-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: lutece
-- ------------------------------------------------------
-- Server version	10.6.17-MariaDB-1:10.6.17+maria~ubu2004
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,NO_TABLE_OPTIONS' */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_appointment`
--

LOCK TABLES `appointment_appointment` WRITE;
/*!40000 ALTER TABLE `appointment_appointment` DISABLE KEYS */;
INSERT INTO `appointment_appointment` VALUES (1,'1f42f1b5e',1,0,2,4,0,0,'2024-02-09 13:44:46',NULL,1,0),(2,'27209b899',1,0,2,4,0,0,'2024-02-09 14:42:42',NULL,2,0),(3,'307de7871',1,0,2,4,0,0,'2024-02-09 14:49:21','admin',3,0),(4,'45078fbd0',1,0,2,4,0,0,'2024-02-28 15:34:30',NULL,4,0),(5,'5facef2e3',1,0,2,4,0,0,'2024-02-28 15:46:02',NULL,5,0),(6,'66e496225',1,0,2,4,0,0,'2024-02-28 15:53:07',NULL,6,0),(7,'72603ed23',1,0,2,4,0,0,'2024-02-28 15:55:29',NULL,7,0),(8,'832bee60d',1,0,2,4,0,0,'2024-02-29 09:55:53',NULL,8,0),(9,'956cce199',1,0,2,4,0,0,'2024-02-29 15:50:33','admin',9,0),(10,'10270795a1',1,0,2,4,0,0,'2024-02-29 15:55:51','admin',10,0),(11,'11d4fbdbdc',1,0,2,4,0,0,'2024-02-29 15:59:10','admin',11,0),(12,'124d3d3dd3',1,0,2,4,0,0,'2024-02-29 16:11:30','admin',12,0),(13,'131830eb6c',1,0,2,4,0,0,'2024-03-01 13:19:47',NULL,13,0),(14,'147009507d',1,0,2,4,0,0,'2024-03-01 13:35:06','admin',14,0),(15,'15fe52817e',1,0,2,4,0,0,'2024-03-01 15:11:41',NULL,15,0),(16,'16339f91d6',1,0,2,4,0,0,'2024-03-01 15:12:49',NULL,16,0),(17,'177bd64a8d',1,0,2,4,0,0,'2024-03-05 09:54:07',NULL,17,0),(18,'18239f10cf',1,0,2,4,0,0,'2024-05-23 16:27:44','admin',18,0),(19,'19068fd1dc',1,0,2,4,0,0,'2024-05-23 16:29:15','admin',19,0),(20,'20ce9e1a66',1,0,2,4,0,0,'2024-05-23 16:30:23','admin',20,0),(21,'21b4d294a1',1,0,2,4,0,0,'2024-05-23 16:31:01','admin',21,0),(22,'22b557a23c',1,0,2,4,0,0,'2024-05-23 16:32:15','admin',22,0),(23,'233e93c5fd',1,0,2,4,0,0,'2024-05-23 16:33:35','admin',23,0),(24,'24ee9f2b3e',1,0,2,4,0,0,'2024-07-30 13:11:20',NULL,24,0);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_appointment_slot`
--

LOCK TABLES `appointment_appointment_slot` WRITE;
/*!40000 ALTER TABLE `appointment_appointment_slot` DISABLE KEYS */;
INSERT INTO `appointment_appointment_slot` VALUES (1,4,1),(2,6,1),(3,7,1),(4,12,1),(5,13,1),(6,14,1),(7,15,1),(8,18,1),(9,20,1),(10,21,1),(11,13,1),(12,17,1),(13,22,1),(14,25,1),(15,26,1),(16,27,1),(17,29,1),(18,37,1),(19,38,1),(20,39,1),(21,40,1),(22,41,1),(23,42,1),(24,48,1);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_calendar_template`
--

LOCK TABLES `appointment_calendar_template` WRITE;
/*!40000 ALTER TABLE `appointment_calendar_template` DISABLE KEYS */;
INSERT INTO `appointment_calendar_template` VALUES (1,'Calendrier','Calendrier des cr�neaux disponibles et indisponibles','skin/plugins/appointment/calendar/appointment_form_calendar.html'),(2,'Calendrier jours ouverts','Calendrier des cr�neaux disponibles et indisponibles (jours ouverts)','skin/plugins/appointment/calendar/appointment_form_calendar_opendays.html'),(3,'Liste des creneaux disponibles','Liste des cr�neaux disponibles','skin/plugins/appointment/calendar/appointment_form_list_open_slots.html'),(4,'Liste des creneaux disponibles jours ouverts','Liste des cr�neaux disponibles (jours ouverts)','skin/plugins/appointment/calendar/appointment_form_list_open_slots_opendays.html'),(5,'Liste des creneaux disponible regroup�s','Liste des creneaux disponible regroup�s','skin/plugins/appointment/calendar/appointment_form_list_open_slots_grouped.html');
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
);
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
);
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
);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_form_message`
--

LOCK TABLES `appointment_form_message` WRITE;
/*!40000 ALTER TABLE `appointment_form_message` DISABLE KEYS */;
INSERT INTO `appointment_form_message` VALUES (1,'Choisir une date','Pr�nom','','Nom','','Email','','Confirmation Email','','Votre demande de rendez-vous a bien �t� cr��e avec la reference %%REF%%','jsp/site/Portal.jsp','Votre demande de rendez-vous a bien �t� annul�e','Terminer','Aucun cr�neau disponible n\'a �t� trouv�. Veuillez r�iterer votre recherche ult�rieurement.','','R�server','Complet',1);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_reservation_rule`
--

LOCK TABLES `appointment_reservation_rule` WRITE;
/*!40000 ALTER TABLE `appointment_reservation_rule` DISABLE KEYS */;
INSERT INTO `appointment_reservation_rule` VALUES (1,'P�riode scolaire','P�riode de forte affluence avec une capacit� de r�ception adapt�e','#491af4',1,3,1,60,1),(2,'Vacances scolaires','P�riode de plus faible affluence avec capacit� de r�ception adapt�e','#36d941',1,1,1,60,1);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_slot`
--

LOCK TABLES `appointment_slot` WRITE;
/*!40000 ALTER TABLE `appointment_slot` DISABLE KEYS */;
INSERT INTO `appointment_slot` VALUES (1,'2024-02-08 09:00:00','2024-02-08 10:00:00',1,0,3,3,3,0,1),(2,'2024-02-09 09:00:00','2024-02-09 10:00:00',1,0,3,3,3,0,1),(3,'2024-02-08 12:00:00','2024-02-08 13:00:00',1,0,3,3,3,0,1),(4,'2024-02-12 10:00:00','2024-02-12 11:00:00',1,0,3,2,2,1,1),(5,'2024-02-13 09:00:00','2024-02-13 10:00:00',1,0,3,3,3,0,1),(6,'2024-02-15 09:00:00','2024-02-15 10:00:00',1,0,3,2,2,1,1),(7,'2024-02-13 10:00:00','2024-02-13 11:00:00',1,0,3,2,2,1,1),(8,'2024-02-15 16:00:00','2024-02-15 17:00:00',1,0,3,3,3,0,1),(9,'2024-02-16 12:00:00','2024-02-16 13:00:00',1,0,3,3,3,0,1),(10,'2024-02-09 16:00:00','2024-02-09 17:00:00',1,0,3,3,3,0,1),(11,'2024-02-09 17:00:00','2024-02-09 18:00:00',1,0,3,3,3,0,1),(12,'2024-02-29 10:00:00','2024-02-29 11:00:00',1,0,3,2,2,1,1),(13,'2024-03-01 09:00:00','2024-03-01 10:00:00',1,0,3,1,1,2,1),(14,'2024-03-01 12:00:00','2024-03-01 13:00:00',1,0,3,2,2,1,1),(15,'2024-02-29 17:00:00','2024-02-29 18:00:00',1,0,3,2,2,1,1),(16,'2024-02-29 09:00:00','2024-02-29 10:00:00',1,0,3,3,3,0,1),(17,'2024-03-04 09:00:00','2024-03-04 10:00:00',1,0,3,2,2,1,1),(18,'2024-02-29 15:00:00','2024-02-29 16:00:00',1,0,3,2,2,1,1),(19,'2024-03-01 13:00:00','2024-03-01 14:00:00',1,0,3,3,3,0,1),(20,'2024-03-01 11:00:00','2024-03-01 12:00:00',1,0,3,2,2,1,1),(21,'2024-03-01 10:00:00','2024-03-01 11:00:00',1,0,3,2,2,1,1),(22,'2024-03-18 09:00:00','2024-03-18 10:00:00',1,0,3,2,2,1,1),(23,'2024-03-01 15:00:00','2024-03-01 16:00:00',1,0,3,3,3,0,1),(24,'2024-03-05 09:00:00','2024-03-05 10:00:00',1,0,3,3,3,0,1),(25,'2024-03-07 09:00:00','2024-03-07 10:00:00',1,0,3,2,2,1,1),(26,'2024-03-01 16:00:00','2024-03-01 17:00:00',1,0,3,2,2,1,1),(27,'2024-03-01 17:00:00','2024-03-01 18:00:00',1,0,3,2,2,1,1),(28,'2024-03-08 09:00:00','2024-03-08 10:00:00',1,0,3,3,3,0,1),(29,'2024-03-08 10:00:00','2024-03-08 11:00:00',1,0,3,2,2,1,1),(30,'2024-05-24 09:00:00','2024-05-24 10:00:00',1,0,3,3,3,0,1),(31,'2024-08-15 10:00:00','2024-08-15 11:00:00',0,1,1,1,1,0,1),(32,'2024-08-15 11:00:00','2024-08-15 12:00:00',0,1,1,1,1,0,1),(33,'2024-08-15 12:00:00','2024-08-15 13:00:00',0,1,1,1,1,0,1),(34,'2024-08-15 13:00:00','2024-08-15 14:00:00',0,1,1,1,1,0,1),(35,'2024-08-15 14:00:00','2024-08-15 15:00:00',0,1,1,1,1,0,1),(36,'2024-08-15 15:00:00','2024-08-15 16:00:00',0,1,1,1,1,0,1),(37,'2024-05-31 09:00:00','2024-05-31 10:00:00',1,0,3,2,2,1,1),(38,'2024-06-13 09:00:00','2024-06-13 10:00:00',1,0,3,2,2,1,1),(39,'2024-07-18 11:00:00','2024-07-18 12:00:00',1,0,1,0,0,1,1),(40,'2024-08-29 10:00:00','2024-08-29 11:00:00',1,0,1,0,0,1,1),(41,'2024-10-24 11:00:00','2024-10-24 12:00:00',1,0,3,2,2,1,1),(42,'2024-11-14 16:00:00','2024-11-14 17:00:00',1,0,3,2,2,1,1),(43,'2024-07-16 10:00:00','2024-07-16 11:00:00',0,1,1,1,1,0,1),(44,'2024-07-16 11:00:00','2024-07-16 12:00:00',0,1,1,1,1,0,1),(45,'2024-07-16 12:00:00','2024-07-16 13:00:00',0,1,1,1,1,0,1),(46,'2024-07-16 13:00:00','2024-07-16 14:00:00',0,1,1,1,1,0,1),(47,'2024-05-24 11:00:00','2024-05-24 12:00:00',1,0,3,3,0,0,1),(48,'2024-08-01 12:00:00','2024-08-01 13:00:00',1,0,1,0,0,1,1),(49,'2024-08-01 09:00:00','2024-08-01 10:00:00',1,0,1,1,1,0,1);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_user`
--

LOCK TABLES `appointment_user` WRITE;
/*!40000 ALTER TABLE `appointment_user` DISABLE KEYS */;
INSERT INTO `appointment_user` VALUES (1,'foo.bar@citelibre.org','Foo','Bar','foo.bar@citelibre.org',NULL),(2,'jane.doe@citelibre.org','Jane','Doe','jane.doe@citelibre.org',NULL),(3,'conrad.adams@citelibre.org','Conrad','Adams','conrad.adams@citelibre.org',NULL),(4,'conrad.adams@citelibre.org','Conrad','Adams','conrad.adams@citelibre.org',NULL),(5,'bruce.dickinson@citelibre.org','Bruce','Dickinson','bruce.dickinson@citelibre.org',NULL),(6,'agent.smith@citelibre.org','Agent','Smith','agent.smith@citelibre.org',NULL),(7,'al.capone@citelibre.org','Al','Capone','al.capone@citelibre.org',NULL),(8,'henriette.michu@citelibre.org','Henriette','Michu','henriette.michu@citelibre.org',NULL),(9,'pete.blake@citelibre.org','Pete','Blake','pete.blake@citelibre.org',NULL),(10,'joe.jackson@citelibre.org','Joe','Jackson','joe.jackson@citelibre.org',NULL),(11,'billy.zekid@citelibre.org','Billy','Zekid','billy.zekid@citelibre.org',NULL),(12,'sarah.connor@citelibre.org','Sarah','Connor','sarah.connor@citelibre.org',NULL),(13,'carl.knox@citelibre.org','Carl','knox','carl.knox@citelibre.org',NULL),(14,'anna.nasse@citelibre.org','Anna','Nasse','anna.nasse@citelibre.org',NULL),(15,'jill.morisson@citelibre.org','Jill','Morisson','jill.morisson@citelibre.org',NULL),(16,'joan.jett@citelibre.org','Joan','Jett','joan.jett@citelibre.org',NULL),(17,'marge.simpson@citelibre.org','Marge','Simpson','marge.simpson@citelibre.org',NULL),(18,NULL,'Peter','Parker','peter.parker@citelibre.org',NULL),(19,NULL,'Wade','Wilson','wade.wilson@citelibre.org',NULL),(20,NULL,'Harley','Quinn','harley.quinn@citelibre.org',NULL),(21,NULL,'Bruce','Banner','bruce.banner@citelibre.org',NULL),(22,NULL,'Wayne','Campbell','wayne.campbell@citelibre.org',NULL),(23,NULL,'Maximus','Decimus Meridius','maximus.decimus.meridius@citelibre.org',NULL),(24,'toto','tata','toto','toto@localhost.fr',NULL);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_dashboard`
--

LOCK TABLES `core_admin_dashboard` WRITE;
/*!40000 ALTER TABLE `core_admin_dashboard` DISABLE KEYS */;
INSERT INTO `core_admin_dashboard` VALUES ('autoIncludesAdminDashboardComponent',1,4),('databaseAdminDashboardComponent',1,1),('editorAdminDashboardComponent',1,3),('featuresAdminDashboardComponent',1,5),('myluteceAuthenticationFilterAdminDashboardComponent',1,3),('searchAdminDashboardComponent',1,2),('usersAdminDashboardComponent',1,1),('workflowAdminDashboardComponent',1,1),('xslExportAdminDashboardComponent',1,6);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_right`
--

LOCK TABLES `core_admin_right` WRITE;
/*!40000 ALTER TABLE `core_admin_right` DISABLE KEYS */;
INSERT INTO `core_admin_right` VALUES ('APPOINTMENT_CALENDAR_TEMPLATE','appointment.adminFeature.manageCalendarTemplates.name',0,'jsp/admin/plugins/appointment/ManageCalendarTemplates.jsp','appointment.adminFeature.manageCalendarTemplates.name',0,'appointment','STYLE',NULL,NULL,5,0),('APPOINTMENT_CATEGORY_MANAGEMENT','appointment.adminFeature.manageCategories.name',2,'jsp/admin/plugins/appointment/ManageAppointmentCategory.jsp','appointment.adminFeature.manageCategories.name',0,'appointment','APPLICATIONS',NULL,NULL,3,0),('APPOINTMENT_COMMENT_MANAGEMENT','appointment.adminFeature.manageComment.name',2,'jsp/admin/plugins/appointment/Comments.jsp','appointment.adminFeature.manageComment.name',0,'appointment','APPLICATIONS',NULL,NULL,4,0),('APPOINTMENT_FORM_MANAGEMENT','appointment.adminFeature.ManageAppointmentForm.name',2,'jsp/admin/plugins/appointment/ManageAppointmentForms.jsp','appointment.adminFeature.ManageAppointmentForm.description',0,'appointment','APPLICATIONS',NULL,NULL,2,0),('CORE_ADMINDASHBOARD_MANAGEMENT','portal.admindashboard.adminFeature.right_management.name',0,NULL,'portal.admindashboard.adminFeature.right_management.description',0,'','SYSTEM','ti ti-dashboard',NULL,1,0),('CORE_ADMIN_SITE','portal.site.adminFeature.admin_site.name',2,'jsp/admin/site/AdminSite.jsp','portal.site.adminFeature.admin_site.description',1,NULL,'SITE','ti ti-home-edit','jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-site',1,0),('CORE_CACHE_MANAGEMENT','portal.system.adminFeature.cache_management.name',0,'jsp/admin/system/ManageCaches.jsp','portal.system.adminFeature.cache_management.description',1,'','SYSTEM','ti ti-clock-edit',NULL,0,0),('CORE_DAEMONS_MANAGEMENT','portal.system.adminFeature.daemons_management.name',0,'jsp/admin/system/ManageDaemons.jsp','portal.system.adminFeature.daemons_management.description',0,'','SYSTEM','ti ti-timeline-event',NULL,0,0),('CORE_DASHBOARD_MANAGEMENT','portal.dashboard.adminFeature.dashboard_management.name',0,NULL,'portal.dashboard.adminFeature.dashboard_management.description',0,'','SYSTEM','ti ti-layout-dashboard',NULL,2,0),('CORE_EDITORS_MANAGEMENT','portal.admindashboard.editorManagement.right.name',2,NULL,'portal.admindashboard.editorManagement.right.description',1,'','SYSTEM','ti ti-tools',NULL,3,0),('CORE_FEATURES_MANAGEMENT','portal.admin.adminFeature.features_management.name',0,NULL,'portal.admin.adminFeature.features_management.description',0,'','SYSTEM','ti ti-apps',NULL,0,0),('CORE_LEVEL_RIGHT_MANAGEMENT','portal.users.adminFeature.level_right_management.name',2,NULL,'portal.users.adminFeature.level_right_management.description',0,'','MANAGERS','ti ti-list-detail',NULL,2,0),('CORE_LINK_SERVICE_MANAGEMENT','portal.insert.adminFeature.linkService_management.name',2,NULL,'portal.insert.adminFeature.linkService_management.description',0,NULL,NULL,'ti ti-link',NULL,1,0),('CORE_LOGS_VISUALISATION','portal.system.adminFeature.logs_visualisation.name',0,'jsp/admin/system/ManageFilesSystem.jsp','portal.system.adminFeature.logs_visualisation.description',1,'','SYSTEM','ti ti-list-search',NULL,0,0),('CORE_MAILINGLISTS_MANAGEMENT','portal.mailinglist.adminFeature.mailinglists_management.name',2,'jsp/admin/mailinglist/ManageMailingLists.jsp','portal.mailinglist.adminFeature.mailinglists_management.description',0,'','MANAGERS','ti ti-mail-cog',NULL,3,0),('CORE_PAGE_TEMPLATE_MANAGEMENT','portal.style.adminFeature.page_template_management.name',0,'jsp/admin/style/ManagePageTemplates.jsp','portal.style.adminFeature.page_template_management.description',0,'','STYLE','ti ti-layout-board',NULL,1,0),('CORE_PLUGINS_MANAGEMENT','portal.system.adminFeature.plugins_management.name',0,'jsp/admin/system/ManagePlugins.jsp','portal.system.adminFeature.plugins_management.description',1,'','SYSTEM','ti ti-apps-filled',NULL,0,0),('CORE_PROPERTIES_MANAGEMENT','portal.site.adminFeature.properties_management.name',2,'jsp/admin/ManageProperties.jsp','portal.site.adminFeature.properties_management.description',0,NULL,'SITE','ti ti-checklist','jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-properties',2,0),('CORE_RBAC_MANAGEMENT','portal.rbac.adminFeature.rbac_management.name',0,'jsp/admin/rbac/ManageRoles.jsp','portal.rbac.adminFeature.rbac_management.description',0,'','MANAGERS','ti ti-user-check',NULL,0,0),('CORE_RIGHT_MANAGEMENT','portal.users.adminFeature.right_management.name',0,'jsp/admin/features/ManageRights.jsp','portal.users.adminFeature.right_management.description',0,'','MANAGERS','ti ti-gavel',NULL,4,0),('CORE_ROLES_MANAGEMENT','portal.role.adminFeature.roles_management.name',2,'jsp/admin/role/ManagePageRole.jsp','portal.role.adminFeature.roles_management.description',0,'',NULL,'ti ti-list-check',NULL,9,0),('CORE_SEARCH_INDEXATION','portal.search.adminFeature.indexer.name',0,'jsp/admin/search/ManageSearchIndexation.jsp','portal.search.adminFeature.indexer.description',0,'','SYSTEM','ti ti-settings-search',NULL,0,0),('CORE_SEARCH_MANAGEMENT','portal.search.adminFeature.search_management.name',0,NULL,'portal.search.adminFeature.search_management.description',0,'','SYSTEM','ti ti-database-search',NULL,0,0),('CORE_STYLESHEET_MANAGEMENT','portal.style.adminFeature.stylesheet_management.name',0,'jsp/admin/style/ManageStyleSheets.jsp','portal.style.adminFeature.stylesheet_management.description',1,'','STYLE','ti ti-file-code',NULL,2,0),('CORE_STYLES_MANAGEMENT','portal.style.adminFeature.styles_management.name',0,'jsp/admin/style/ManageStyles.jsp','portal.style.adminFeature.styles_management.description',1,'','STYLE','ti ti-brush',NULL,3,0),('CORE_TEMPLATES_AUTO_INCLUDES_MANAGEMENT','portal.templates.adminFeature.ManageAutoIncludes.name',1,NULL,'portal.templates.adminFeature.ManageAutoIncludes.description',1,'','STYLE','ti ti-code-circle-2',NULL,4,0),('CORE_USERS_MANAGEMENT','portal.users.adminFeature.users_management.name',2,'jsp/admin/user/ManageUsers.jsp','portal.users.adminFeature.users_management.description',1,'','MANAGERS','ti ti-users',NULL,0,0),('CORE_WORKGROUPS_MANAGEMENT','portal.workgroup.adminFeature.workgroups_management.name',2,'jsp/admin/workgroup/ManageWorkgroups.jsp','portal.workgroup.adminFeature.workgroups_management.description',0,'','MANAGERS','ti ti-users-group',NULL,1,0),('CORE_XSL_EXPORT_MANAGEMENT','portal.xsl.adminFeature.xsl_export_management.name',2,NULL,'portal.xsl.adminFeature.xsl_export_management.description',1,'','SYSTEM','ti ti-file-export',NULL,4,0),('DATABASE_GROUPS_MANAGEMENT','module.mylutece.database.adminFeature.groups_management.name',3,'jsp/admin/plugins/mylutece/modules/database/ManageGroups.jsp','module.mylutece.database.adminFeature.groups_management.description',0,'mylutece-database',NULL,NULL,NULL,10,0),('DATABASE_MANAGEMENT_USERS','module.mylutece.database.adminFeature.database_management_user.name',3,'jsp/admin/plugins/mylutece/modules/database/ManageUsers.jsp','module.mylutece.database.adminFeature.database_management_user.description',0,'mylutece-database',NULL,NULL,NULL,10,0),('ENTRY_TYPE_MANAGEMENT','genericattributes.adminFeature.manageEntryType.name',1,'jsp/admin/plugins/genericattributes/ManageEntryType.jsp','genericattributes.adminFeature.manageEntryType.description',0,'genericattributes','MANAGERS',NULL,NULL,8,0),('HTMLPAGE_MANAGEMENT','htmlpage.adminFeature.htmlpage_management.name',2,'jsp/admin/plugins/htmlpage/ManageHtmlPage.jsp','htmlpage.adminFeature.htmlpage_management.description',0,'htmlpage','SITE',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-htmlpage',3,0),('IDENTITYSTORE_ADMIN_MANAGEMENT','identitystore.adminFeature.AdminIdentities.name',1,'jsp/admin/plugins/identitystore/ManageClientApplications.jsp','identitystore.adminFeature.AdminIdentities.description',0,'identitystore',NULL,NULL,NULL,4,0),('IDENTITYSTORE_MANAGEMENT','identitystore.adminFeature.ManageIdentities.name',1,'jsp/admin/plugins/identitystore/ManageIdentities.jsp','identitystore.adminFeature.ManageIdentities.description',0,'identitystore',NULL,NULL,NULL,4,0),('MULTIVIEW_APPOINTMENT','module.appointment.management.adminFeature.MultiviewAppointment.name',2,'jsp/admin/plugins/appointment/modules/management/MultiviewAppointment.jsp','module.appointment.management.adminFeature.MultiviewAppointment.description',0,'appointment-management','APPLICATIONS',NULL,NULL,1,0),('MYDASHBOARD_PANEL_MANAGEMENT','mydashboard.adminFeature.ManageMydashboardPanel.name',0,'jsp/admin/plugins/mydashboard/ManageMyDashboardPanel.jsp','mydashboard.adminFeature.ManageMydashboardPanel.description',0,'mydashboard','STYLE',NULL,NULL,6,0),('MYLUTECE_MANAGEMENT','mylutece.adminFeature.mylutece_management.name',2,'jsp/admin/plugins/mylutece/ManageMylutece.jsp','mylutece.adminFeature.mylutece_management.description',0,'mylutece',NULL,NULL,NULL,5,0),('MYLUTECE_MANAGE_AUTHENTICATION_FILTER','mylutece.adminFeature.mylutece_management_authentication_filter.name',3,'jsp/admin/plugins/mylutece/security/ManageAuthenticationFilter.jsp','mylutece.adminFeature.mylutece_management_authentication_filter.description',0,'mylutece',NULL,NULL,NULL,7,0),('MYLUTECE_MANAGE_EXTERNAL_APPLICATION','mylutece.adminFeature.mylutece_management_external_application.name',3,'jsp/admin/plugins/mylutece/ManageExternalApplicationUser.jsp','mylutece.adminFeature.mylutece_management_external_application.description',0,'mylutece',NULL,NULL,NULL,6,0),('PROFILES_MANAGEMENT','profiles.adminFeature.profiles_management.name',0,'jsp/admin/plugins/profiles/ManageProfiles.jsp','profiles.adminFeature.profiles_management.description',0,'profiles','MANAGERS',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-profiles',7,0),('PROFILES_VIEWS_MANAGEMENT','profiles.adminFeature.views_management.name',0,'jsp/admin/plugins/profiles/ManageViews.jsp','profiles.adminFeature.views_management.description',0,'profiles','STYLE',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-profiles',7,0),('REFERENCELIST_MANAGEMENT','referencelist.adminFeature.ReferenceListManage.name',0,'jsp/admin/plugins/referencelist/ManageReferences.jsp','referencelist.adminFeature.ReferenceListManage.description',0,'referencelist',NULL,NULL,NULL,8,0),('REGULAR_EXPRESSION_MANAGEMENT','regularexpression.adminFeature.regularexpression_management.name',0,'jsp/admin/plugins/regularexpression/ManageRegularExpression.jsp','regularexpression.adminFeature.regularexpression_management.description',0,'regularexpression','SYSTEM',NULL,NULL,15,0),('SITELABELS_MANAGEMENT','sitelabels.adminFeature.ManageSiteLabels.name',0,'jsp/admin/plugins/sitelabels/ManageLabels.jsp','sitelabels.adminFeature.ManageSiteLabels.description',0,'sitelabels','SITE',NULL,NULL,4,0),('SOLR_CONFIGURATION_MANAGEMENT','search.solr.adminFeature.configuration.title',1,'jsp/admin/search/solr/ManageSearchConfiguration.jsp','search.solr.adminFeature.configuration.description',0,'solr','SYSTEM',NULL,'',13,0),('SOLR_FIELDS_MANAGEMENT','search.solr.adminFeature.fields.title',1,'jsp/admin/search/solr/ManageSolrFields.jsp','search.solr.adminFeature.fields.description',0,'solr','SYSTEM',NULL,'',14,0),('SOLR_INDEX_MANAGEMENT','search.solr.adminFeature.title',1,'jsp/admin/search/solr/ManageSearchIndexation.jsp','search.solr.adminFeature.description',0,'solr','SYSTEM',NULL,'',12,0),('SYSTEMINFO_MANAGEMENT','systeminfo.adminFeature.systeminfo_management.name',0,'jsp/admin/plugins/systeminfo/ManageSystemInfo.jsp','systeminfo.adminFeature.systeminfo_management.description',0,'systeminfo','SYSTEM',NULL,NULL,16,0),('VIEW_TEMP_FILES','filegenerator.adminFeature.temporary_files.name',2,'jsp/admin/plugins/filegenerator/ManageMyFiles.jsp','filegenerator.adminFeature.temporary_files.description',0,'','APPLICATIONS',NULL,NULL,6,0),('WORKFLOW_MANAGEMENT','workflow.adminFeature.workflow_management.name',3,'jsp/admin/plugins/workflow/ManageWorkflow.jsp','workflow.adminFeature.workflow_management.description',0,'workflow','APPLICATIONS',NULL,NULL,5,0);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_role`
--

LOCK TABLES `core_admin_role` WRITE;
/*!40000 ALTER TABLE `core_admin_role` DISABLE KEYS */;
INSERT INTO `core_admin_role` VALUES ('all_site_manager','Site Manager'),('assign_groups','Assigner des groupes aux utilisateurs'),('assign_roles','Assigner des roles aux utilisateurs'),('CREATE_REFERENCE_IMPORT','Import csv file'),('kibana_dashboards_manager','Gestion des tableaux de bords Kibana'),('mylutece_database_manager','Mylutece Database management'),('mylutece_manager','G�rer les patram�tres avanc�s Mylutece'),('profiles_manager','Profiles management'),('profiles_views_manager','Profiles Views management'),('rendezvous_manager','all rendezvous-related rights'),('super_admin','Super Administrateur'),('workflow_manager','Workflow management');
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_role_resource`
--

LOCK TABLES `core_admin_role_resource` WRITE;
/*!40000 ALTER TABLE `core_admin_role_resource` DISABLE KEYS */;
INSERT INTO `core_admin_role_resource` VALUES (1,'all_site_manager','PAGE','*','VIEW'),(2,'all_site_manager','PAGE','*','MANAGE'),(3,'super_admin','INSERT_SERVICE','*','*'),(4,'all_site_manager','PORTLET_TYPE','*','*'),(5,'all_site_manager','ADMIN_USER','*','*'),(6,'all_site_manager','SEARCH_SERVICE','*','*'),(7,'all_site_manager','XSL_EXPORT','*','*'),(150,'profiles_manager','PROFILES','*','*'),(151,'profiles_views_manager','PROFILES_VIEWS','*','*'),(165,'CREATE_REFERENCE_IMPORT','REFERENCE_IMPORT','*','*'),(205,'assign_roles','ROLE_TYPE','*','ASSIGN_ROLE'),(206,'assign_groups','GROUP_TYPE','*','ASSIGN_GROUP'),(207,'mylutece_manager','MYLUTECE','*','*'),(350,'mylutece_database_manager','DATABASE','*','*'),(912,'workflow_manager','WORKFLOW_ACTION_TYPE','*','*'),(923,'workflow_manager','WORKFLOW_STATE_TYPE','*','*'),(1026,'super_admin','APPOINTMENT_FORM','*','*'),(1029,'super_admin','APPOINTMENT_FORM_CREATE','*','*'),(1030,'kibana_dashboards_manager','kibana_dashboard','*','*');
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user`
--

LOCK TABLES `core_admin_user` WRITE;
/*!40000 ALTER TABLE `core_admin_user` DISABLE KEYS */;
INSERT INTO `core_admin_user` VALUES (1,'admin','Admin','admin','admin@lutece.fr',0,'PBKDF2WITHHMACSHA512:40000:51ca5786101ccd16119cc3a7accba6f3:af9c9024a93721c06d8f16cd4b0c0ea3d7ab93bb24785d0ce6ee48fe26538da2edba892c89a4bad56cfc18fb3bdca7f3e972ad46df79caf34bfb5aaed8455052f609d11663a22f2c1ca6e1d14c10d493c758277306aa11edd428c923b4e38a8532c9ea201abcd6d7e2517f1340916b8fed9e5e2d043eb58be7d4ccc18cadd4ee','fr',0,0,0,'2024-11-27 12:53:44',1753951069253,0,'2024-07-31 08:37:49','all');
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_connections_log`
--

LOCK TABLES `core_connections_log` WRITE;
/*!40000 ALTER TABLE `core_connections_log` DISABLE KEYS */;
INSERT INTO `core_connections_log` VALUES ('admin','172.25.0.1','2024-05-21 13:28:12',0),('admin','172.25.0.1','2024-05-21 14:57:00',0),('admin','192.168.144.1','2024-07-30 12:53:17',0),('toto','192.168.144.1','2024-07-30 13:09:27',0);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_datastore`
--

LOCK TABLES `core_datastore` WRITE;
/*!40000 ALTER TABLE `core_datastore` DISABLE KEYS */;
INSERT INTO `core_datastore` VALUES ('appointment.site_property.nbplaces','5'),('core.advanced_parameters.access_failures_captcha','1'),('core.advanced_parameters.access_failures_interval','10'),('core.advanced_parameters.access_failures_max','3'),('core.advanced_parameters.account_life_time','12'),('core.advanced_parameters.account_reactivated_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.account_reactivated_mail_subject','Votre compte a bien ├⌐t├⌐ r├⌐activ├⌐'),('core.advanced_parameters.default_user_language','fr'),('core.advanced_parameters.default_user_level','0'),('core.advanced_parameters.default_user_notification','1'),('core.advanced_parameters.default_user_status','0'),('core.advanced_parameters.email_pattern','^[\\w_.\\-!\\#\\$\\%\\&\'\\*\\+\\/\\=\\?\\^\\\\}\\{\\|\\~]+@[\\w_.\\-]+\\.[\\w]+$'),('core.advanced_parameters.email_pattern_verify_by',''),('core.advanced_parameters.expired_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.expired_alert_mail_subject','Votre compte a expir├⌐'),('core.advanced_parameters.first_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.first_alert_mail_subject','Votre compte va bient├┤t expirer'),('core.advanced_parameters.force_change_password_reinit','false'),('core.advanced_parameters.lock_reset_token_to_session','false'),('core.advanced_parameters.maximum_number_password_change',''),('core.advanced_parameters.nb_alert_account','2'),('core.advanced_parameters.notify_user_password_expired',''),('core.advanced_parameters.other_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.other_alert_mail_subject','Votre compte va bient├┤t expirer'),('core.advanced_parameters.password_duration','120'),('core.advanced_parameters.password_expired_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.password_expired_mail_subject','Votre mot de passe a expir├⌐'),('core.advanced_parameters.password_format_numero','false'),('core.advanced_parameters.password_format_special_characters','false'),('core.advanced_parameters.password_format_upper_lower_case','false'),('core.advanced_parameters.password_history_size',''),('core.advanced_parameters.password_minimum_length','8'),('core.advanced_parameters.reset_token_validity','60'),('core.advanced_parameters.time_before_alert_account','30'),('core.advanced_parameters.time_between_alerts_account','10'),('core.advanced_parameters.tsw_size_password_change',''),('core.advanced_parameters.use_advanced_security_parameters',''),('core.backOffice.defaultEditor','tinymce'),('core.cache.status.appointment.appointmentFormCacheService.enabled','1'),('core.cache.status.asynchronousupload.asynchronousUploadCacheService.enabled','0'),('core.cache.status.BaseUserPreferencesCacheService.enabled','1'),('core.cache.status.BaseUserPreferencesCacheService.maxElementsInMemory','1000'),('core.cache.status.DatastoreCacheService.enabled','0'),('core.cache.status.EntryTypeServiceManagerCache.enabled','1'),('core.cache.status.LinksIncludeCacheService.enabled','1'),('core.cache.status.LuteceUserCacheService.enabled','1'),('core.cache.status.LuteceUserCacheService.maxElementsInMemory','1000'),('core.cache.status.MailAttachmentCacheService.diskPersistent','true'),('core.cache.status.MailAttachmentCacheService.enabled','1'),('core.cache.status.MailAttachmentCacheService.maxElementsInMemory','10'),('core.cache.status.MailAttachmentCacheService.overflowToDisk','true'),('core.cache.status.MailAttachmentCacheService.timeToLiveSeconds','7200'),('core.cache.status.MyPortalWidgetContentService.enabled','1'),('core.cache.status.MyPortalWidgetService.enabled','1'),('core.cache.status.PageCacheService.enabled','1'),('core.cache.status.PageCachingFilter(CAUTION:NEVERUSEWITHUSERDYNAMICDATA).enabled','0'),('core.cache.status.PageCachingFilter.enabled','0'),('core.cache.status.pathCacheService.enabled','1'),('core.cache.status.PortalMenuService.enabled','1'),('core.cache.status.PortletCacheService.enabled','0'),('core.cache.status.SiteMapService.enabled','1'),('core.cache.status.StaticFilesCachingFilter.enabled','1'),('core.cache.status.StaticFilesCachingFilter.timeToLiveSeconds','604800'),('core.cache.status.workflow.alertGruConfigCacheService.enabled','0'),('core.cache.status.workflow.notifyGruConfigCacheService.enabled','0'),('core.daemon.accountLifeTimeDaemon.interval','3600'),('core.daemon.accountLifeTimeDaemon.onStartUp','true'),('core.daemon.AlertGruDaemon.interval','86400'),('core.daemon.AlertGruDaemon.onStartUp','true'),('core.daemon.anonymizationDaemon.interval','86400'),('core.daemon.anonymizationDaemon.onStartUp','false'),('core.daemon.AppointmentReminderDaemon.interval','600'),('core.daemon.AppointmentReminderDaemon.onStartUp','true'),('core.daemon.archiveDaemon.interval','86400'),('core.daemon.archiveDaemon.onStartUp','true'),('core.daemon.automaticActionDaemon.interval','30'),('core.daemon.automaticActionDaemon.onStartUp','true'),('core.daemon.changeStateDaemon.interval','10'),('core.daemon.changeStateDaemon.onStartUp','false'),('core.daemon.chooseStateActionDaemon.interval','10'),('core.daemon.chooseStateActionDaemon.onStartUp','false'),('core.daemon.crmClientSender.interval','60'),('core.daemon.crmClientSender.onStartUp','true'),('core.daemon.databaseAccountLifeTimeDaemon.interval','86400'),('core.daemon.databaseAccountLifeTimeDaemon.onStartUp','true'),('core.daemon.databaseAnonymizationDaemon.interval','86400'),('core.daemon.databaseAnonymizationDaemon.onStartUp','true'),('core.daemon.fullIndexingDaemon.interval','86400'),('core.daemon.fullIndexingDaemon.onStartUp','true'),('core.daemon.incrementalIndexingDaemon.interval','600'),('core.daemon.incrementalIndexingDaemon.onStartUp','true'),('core.daemon.indexer.interval','300'),('core.daemon.indexer.onStartUp','true'),('core.daemon.mailSender.interval','3600'),('core.daemon.mailSender.onStartUp','true'),('core.daemon.notifyHistoryCleanerDaemon.interval','10'),('core.daemon.notifyHistoryCleanerDaemon.onStartUp','false'),('core.daemon.slotDaemon.interval','86400'),('core.daemon.slotDaemon.onStartUp','true'),('core.daemon.solrindexer.interval','300'),('core.daemon.solrindexer.onStartUp','true'),('core.daemon.temporaryfilesDaemon.interval','86400'),('core.daemon.temporaryfilesDaemon.onStartUp','false'),('core.daemon.threadLauncherDaemon.interval','86400'),('core.daemon.threadLauncherDaemon.onStartUp','true'),('core.frontOffice.defaultEditor','sceeditor'),('core.plugins.status.address-autocomplete.installed','true'),('core.plugins.status.address.installed','true'),('core.plugins.status.appointment-desk.installed','true'),('core.plugins.status.appointment-desk.pool','portal'),('core.plugins.status.appointment-filling.installed','true'),('core.plugins.status.appointment-filling.pool','portal'),('core.plugins.status.appointment-leaflet.installed','true'),('core.plugins.status.appointment-management.installed','true'),('core.plugins.status.appointment-management.pool','portal'),('core.plugins.status.appointment-mydashboard.installed','true'),('core.plugins.status.appointment-mydashboard.pool','portal'),('core.plugins.status.appointment-solr.installed','true'),('core.plugins.status.appointment-solrsearchapp.installed','true'),('core.plugins.status.appointment.installed','true'),('core.plugins.status.appointment.pool','portal'),('core.plugins.status.appointmentgru.installed','true'),('core.plugins.status.appointmentgru.pool','portal'),('core.plugins.status.asynchronous-upload.installed','true'),('core.plugins.status.asynchronous-upload.pool','portal'),('core.plugins.status.captcha.installed','true'),('core.plugins.status.crmclient.installed','true'),('core.plugins.status.crmclient.pool','portal'),('core.plugins.status.elasticdata-appointment.installed','false'),('core.plugins.status.elasticdata-appointment.pool','portal'),('core.plugins.status.elasticdata.installed','false'),('core.plugins.status.elasticdata.pool','portal'),('core.plugins.status.filegenerator.installed','true'),('core.plugins.status.filegenerator.pool','portal'),('core.plugins.status.genericalert.installed','true'),('core.plugins.status.genericalert.pool','portal'),('core.plugins.status.genericattributes-address.installed','true'),('core.plugins.status.genericattributes-googlemaps.installed','true'),('core.plugins.status.genericattributes.installed','true'),('core.plugins.status.genericattributes.pool','portal'),('core.plugins.status.grusupply.installed','true'),('core.plugins.status.grusupply.pool','portal'),('core.plugins.status.html.installed','true'),('core.plugins.status.htmlpage.installed','true'),('core.plugins.status.htmlpage.pool','portal'),('core.plugins.status.identitystore.installed','true'),('core.plugins.status.jcaptcha.installed','true'),('core.plugins.status.kibana.installed','false'),('core.plugins.status.kibana.pool','portal'),('core.plugins.status.leaflet.installed','true'),('core.plugins.status.lucene.installed','true'),('core.plugins.status.matomo.installed','false'),('core.plugins.status.mermaidjs.installed','true'),('core.plugins.status.mermaidjs.pool','portal'),('core.plugins.status.modulenotifygrumappingmanager.installed','false'),('core.plugins.status.modulenotifygrumappingmanager.pool','portal'),('core.plugins.status.mydashboard.installed','true'),('core.plugins.status.mydashboard.pool','portal'),('core.plugins.status.mylutece-database.installed','true'),('core.plugins.status.mylutece-database.pool','portal'),('core.plugins.status.mylutece-oauth2.installed','false'),('core.plugins.status.mylutece.installed','true'),('core.plugins.status.mylutece.pool','portal'),('core.plugins.status.notifygru-appointment.installed','true'),('core.plugins.status.notifygru-appointment.pool','portal'),('core.plugins.status.oauth2.installed','false'),('core.plugins.status.profiles.installed','true'),('core.plugins.status.profiles.pool','portal'),('core.plugins.status.referencelist.installed','true'),('core.plugins.status.referencelist.pool','portal'),('core.plugins.status.regularexpression.installed','true'),('core.plugins.status.regularexpression.pool','portal'),('core.plugins.status.rest.installed','true'),('core.plugins.status.sitelabels.installed','true'),('core.plugins.status.solr.installed','true'),('core.plugins.status.solr.pool','portal'),('core.plugins.status.swaggerui.installed','true'),('core.plugins.status.swaggerui.pool','portal'),('core.plugins.status.systeminfo.installed','true'),('core.plugins.status.themecitelibre.installed','true'),('core.plugins.status.workflow-alertgru.installed','true'),('core.plugins.status.workflow-alertgru.pool','portal'),('core.plugins.status.workflow-appointment.installed','true'),('core.plugins.status.workflow-appointment.pool','portal'),('core.plugins.status.workflow-notifygru.installed','true'),('core.plugins.status.workflow-notifygru.pool','portal'),('core.plugins.status.workflow-rest.installed','true'),('core.plugins.status.workflow.installed','true'),('core.plugins.status.workflow.pool','portal'),('core.startup.time','Jul 30, 2024, 3:23:28 PM'),('core.templates.currentCommonsInclude','Bootstrap5Tabler'),('core_banned_domain_names','yopmail.com'),('leaflet.icon.icons.default.installed','true'),('leaflet.icon.icons.green.installed','true'),('leaflet.icon.icons.red.installed','true'),('leaflet.icon.icons.yellow.installed','true'),('matomo.site_property.server.http.url','http://localhost/'),('matomo.site_property.server.https.url','http://localhost/'),('matomo.site_property.site.id','1'),('matomo.site_property.widget.auth.token','cfa9a798abd584817e2eb94d7bc14bb0'),('mylutece-database_banned_domain_names','yopmail.com'),('mylutece.security.public_url.mylutece-database.url.createAccount.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=createAccount'),('mylutece.security.public_url.mylutece-database.url.doActionsAll','jsp/site/plugins/mylutece/modules/database/Do*'),('mylutece.security.public_url.mylutece-database.url.doLogin','jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp'),('mylutece.security.public_url.mylutece-database.url.doLogout','jsp/site/plugins/mylutece/DoMyLuteceLogout.jsp'),('mylutece.security.public_url.mylutece-database.url.login.page','jsp/site/Portal.jsp?page=mylutece&action=login'),('mylutece.security.public_url.mylutece-database.url.lostLogin.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=lostLogin'),('mylutece.security.public_url.mylutece-database.url.lostPassword.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=lostPassword'),('mylutece.security.public_url.mylutece-database.url.reinitPassword.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=reinitPassword'),('mylutece.security.public_url.mylutece.url.createAccount.page','jsp/site/Portal.jsp?page=mylutece&action=createAccount'),('mylutece.security.public_url.mylutece.url.doActionsAll','jsp/site/plugins/mylutece/Do*'),('mylutece.security.public_url.mylutece.url.doLogin','jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp'),('mylutece.security.public_url.mylutece.url.doLogout','jsp/site/plugins/mylutece/DoMyLuteceLogout.jsp'),('mylutece.security.public_url.mylutece.url.login.page','jsp/site/Portal.jsp?page=mylutece&action=login'),('mylutece.security.public_url.mylutece.url.lostLogin.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=lostLogin'),('mylutece.security.public_url.mylutece.url.lostPassword.page','jsp/site/Portal.jsp?page=mylutece&action=lostPassword'),('mylutece.security.public_url.mylutece.url.modifyAccount.page','jsp/site/Portal.jsp?page=mylutece&action=modifyAccount'),('portal.site.site_property.admin_home_url','jsp/admin/AdminMenu.jsp'),('portal.site.site_property.avatar_default','themes/admin/shared/unknown.svg'),('portal.site.site_property.back_images','themes/admin/tabler/images/bg_login1.svg, themes/admin/tabler/images/bg_login2.svg'),('portal.site.site_property.bo.showXs.checkbox','1'),('portal.site.site_property.bo.showXsWarning.checkbox','0'),('portal.site.site_property.email','<webmaster email>'),('portal.site.site_property.home_url','jsp/site/Portal.jsp'),('portal.site.site_property.layout.darkmode.checkbox','0'),('portal.site.site_property.layout.menu.checkbox','0'),('portal.site.site_property.layout.readmode.checkbox','0'),('portal.site.site_property.layout.user.darkmode.show.checkbox','1'),('portal.site.site_property.layout.user.menumode.show.checkbox','1'),('portal.site.site_property.layout.user.readmode.show.checkbox','0'),('portal.site.site_property.locale.default','fr'),('portal.site.site_property.login.image',''),('portal.site.site_property.logo_url','themes/admin/shared/images/logo-header-icon.svg'),('portal.site.site_property.meta.author','<author>'),('portal.site.site_property.meta.copyright','<copyright>'),('portal.site.site_property.meta.description','<description>'),('portal.site.site_property.meta.keywords','<keywords>'),('portal.site.site_property.name','CiteLibre Rendez-Vous'),('portal.site.site_property.noreply_email','no-reply@mydomain.com'),('portal.site.site_property.popup_credits.textblock','&lt;credits text&gt;'),('portal.site.site_property.popup_legal_info.copyright.textblock','&lt;copyright text&gt;'),('portal.site.site_property.popup_legal_info.privacy.textblock','&lt;privacy text&gt;'),('portal.site.site_property.portlet.title.maxlength','75'),('themecitelibre.site_property.bannerMessage.CloseButton.checkbox','1'),('themecitelibre.site_property.bannerMessage.htmlblock',''),('themecitelibre.site_property.bannerMessage.Position','bottom-right'),('themecitelibre.site_property.bannerMessage.Title',''),('themecitelibre.site_property.bannerMessage.Type','info'),('themecitelibre.site_property.footer.about','CiteLibre est faite par et pour les villes, sur les principes de l\'open source. <br> <a class=\"btn btn-link ps-0\" href=\"http://lutece.paris.fr\" title=\"[Nouvelle fen�tre] LUTECE\" target=\"_blank><img src=\"images/poweredby.png\" alt=\"Powered by LUTECE\"></a> '),('themecitelibre.site_property.footer.about.title','A propos'),('themecitelibre.site_property.footer.cookieLabel','Gestion des cookies'),('themecitelibre.site_property.footer.cookieLink','#cookiecitelibrepack'),('themecitelibre.site_property.footer.links.title','Liens importants'),('themecitelibre.site_property.robotIndex.checkbox','1');
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_file`
--

LOCK TABLES `core_file` WRITE;
/*!40000 ALTER TABLE `core_file` DISABLE KEYS */;
INSERT INTO `core_file` VALUES (125,'export_users_csv.xml',125,2523,'application/xml','2005-10-10 10:10:10','INIT_CORE'),(126,'export_users_xml.xml',126,259,'application/xml','2005-10-10 10:10:10','INIT_CORE'),(127,'export_users_csv.xml',127,1861,'application/xml',NULL,NULL),(128,'export_users_xml.xml',128,259,'application/xml',NULL,NULL);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_page`
--

LOCK TABLES `core_page` WRITE;
/*!40000 ALTER TABLE `core_page` DISABLE KEYS */;
INSERT INTO `core_page` VALUES (1,0,'Home','Home Page','2024-03-14 13:42:18',1,1,1,'2024-03-14 13:42:18','none','default',0,'','application/octet-stream',NULL,NULL,1,0,0),(3,1,'Liens Utiles','Page contenant les liens et acc�s vers les diff�rents services de l\'application','2024-05-21 09:25:52',0,1,2,'2024-05-21 09:10:52','none','default',1,NULL,'application/octet-stream',NULL,NULL,1,0,0);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_physical_file`
--

LOCK TABLES `core_physical_file` WRITE;
/*!40000 ALTER TABLE `core_physical_file` DISABLE KEYS */;
INSERT INTO `core_physical_file` VALUES (125,'<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"text\"/>\r\n	\r\n	<xsl:template match=\"users\">\r\n		<xsl:apply-templates select=\"user\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"user\">\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:value-of select=\"access_code\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"last_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"first_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"email\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"status\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"locale\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"level\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"must_change_password\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"accessibility_mode\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"password_max_valid_date\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"account_max_valid_date\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"date_last_login\" />\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:apply-templates select=\"roles\" />\r\n		<xsl:apply-templates select=\"rights\" />\r\n		<xsl:apply-templates select=\"workgroups\" />\r\n		<xsl:apply-templates select=\"attributes\" />\r\n		<xsl:text>&#10;</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"roles\">\r\n		<xsl:apply-templates select=\"role\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"role\">\r\n		<xsl:text>;\"role:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"rights\">\r\n		<xsl:apply-templates select=\"right\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"right\">\r\n		<xsl:text>;\"right:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"workgroups\">\r\n		<xsl:apply-templates select=\"workgroup\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"workgroup\">\r\n		<xsl:text>;\"workgroup:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attributes\">\r\n		<xsl:apply-templates select=\"attribute\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attribute\">\r\n		<xsl:text>;\"</xsl:text>\r\n		<xsl:value-of select=\"attribute-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-field-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-value\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>'),(126,'<?xml version=\"1.0\" ?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:template match=\"/ | @* | node()\">\r\n		<xsl:copy>\r\n			<xsl:apply-templates select=\"@* | node()\" />\r\n		</xsl:copy>\r\n	</xsl:template>\r\n</xsl:stylesheet>'),(127,'<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"text\"/>\r\n	\r\n	<xsl:template match=\"users\">\r\n		<xsl:apply-templates select=\"user\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"user\">\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:value-of select=\"access_code\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"last_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"first_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"email\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"status\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"password_max_valid_date\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"account_max_valid_date\" />\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:apply-templates select=\"roles\" />\r\n		<xsl:apply-templates select=\"groups\" />\r\n		<xsl:apply-templates select=\"attributes\" />\r\n		<xsl:text>&#10;</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"roles\">\r\n		<xsl:apply-templates select=\"role\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"role\">\r\n		<xsl:text>;\"role:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"groups\">\r\n		<xsl:apply-templates select=\"group\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"group\">\r\n		<xsl:text>;\"group:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attributes\">\r\n		<xsl:apply-templates select=\"attribute\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attribute\">\r\n		<xsl:text>;\"</xsl:text>\r\n		<xsl:value-of select=\"attribute-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-field-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-value\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>'),(128,'<?xml version=\"1.0\" ?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:template match=\"/ | @* | node()\">\r\n		<xsl:copy>\r\n			<xsl:apply-templates select=\"@* | node()\" />\r\n		</xsl:copy>\r\n	</xsl:template>\r\n</xsl:stylesheet>');
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet`
--

LOCK TABLES `core_portlet` WRITE;
/*!40000 ALTER TABLE `core_portlet` DISABLE KEYS */;
INSERT INTO `core_portlet` VALUES (2,'HTML_PORTLET',1,'Infos','2019-05-31 15:51:57',0,1,3,100,0,'2015-05-15 15:26:01',1,'none',273),(4,'HTML_PORTLET',1,'Lutece','2019-06-03 10:23:25',0,1,4,100,0,'2019-05-31 11:55:16',1,'none',4369),(5,'HTML_PORTLET',1,'Autres informations','2019-05-31 16:51:33',0,1,5,100,0,'2019-05-31 15:01:47',1,'none',4369),(6,'APPOINTMENT_FORM_LIST_PORTLET',1,'Agendas disponibles','2024-05-23 15:25:03',0,4,1,0,0,'2024-05-21 08:29:17',0,'none',4369),(8,'HTML_PORTLET',3,'Introduction','2024-05-21 16:35:23',0,1,1,100,0,'2024-05-21 09:25:22',1,'none',4369),(9,'HTML_UNTRANSFORMED_PORTLET',3,'Tableau des liens et identifiants','2024-05-21 16:39:03',0,1,1,0,0,'2024-05-21 09:26:56',1,'none',4369),(11,'HTML_PORTLET',1,'Lien carto','2024-05-23 15:18:57',0,3,1,100,0,'2024-05-21 16:40:51',1,'none',4369),(13,'HTML_UNTRANSFORMED_PORTLET',1,'lien carto','2024-05-23 14:17:54',0,5,1,0,0,'2024-05-21 16:48:30',1,'none',4369),(16,'HTML_UNTRANSFORMED_PORTLET',1,'Intro','2024-05-23 16:35:58',0,1,1,0,0,'2024-05-23 14:21:30',0,'none',4369),(18,'HTML_UNTRANSFORMED_PORTLET',1,'Administration','2024-07-31 08:45:45',0,2,1,0,0,'2024-05-23 15:23:41',0,'none',4369);
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
);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_style`
--

LOCK TABLES `core_style` WRITE;
/*!40000 ALTER TABLE `core_style` DISABLE KEYS */;
INSERT INTO `core_style` VALUES (3,'Menu Init','',3),(4,'Main Menu','',4),(5,'Breadcrumb','',5),(6,'Site Map','',6),(7,'Tree View Menu','',7),(8,'Site Map (Admin mode)',NULL,8),(100,'D�faut','HTML_PORTLET',0),(101,'Fond color�','HTML_PORTLET',0),(200,'D�faut','MYLUTECE_PORTLET',0);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_stylesheet`
--

LOCK TABLES `core_stylesheet` WRITE;
/*!40000 ALTER TABLE `core_stylesheet` DISABLE KEYS */;
INSERT INTO `core_stylesheet` VALUES (10,'Rubrique HTML - D�faut','portlet_html.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n<xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n<xsl:template match=\"portlet\">\r\n<xsl:variable name=\"device_class\">\r\n<xsl:choose>\r\n	<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n	<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n	<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n	<xsl:otherwise></xsl:otherwise>\r\n</xsl:choose>\r\n</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n	<xsl:choose>\r\n	<xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n	<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n	<xsl:apply-templates select=\"html-portlet\" />\r\n	</xsl:when>\r\n	<xsl:otherwise>\r\n	<xsl:apply-templates select=\"html-portlet\" />\r\n	</xsl:otherwise>\r\n</xsl:choose>\r\n</div>\r\n</xsl:template>\r\n	\r\n<xsl:template match=\"html-portlet\">\r\n	<xsl:apply-templates select=\"html-portlet-content\" />\r\n</xsl:template>\r\n	\r\n<xsl:template match=\"html-portlet-content\">\r\n	<xsl:value-of disable-output-escaping=\"yes\" select=\".\" />\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n\r\n\r\n\r\n'),(211,'Menu Init','menu_init.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"menu-list\">\r\n<br /><br />\r\n	<div id=\"menu-init\">\r\n		<div id=\"menu-init-content\">\r\n            <ul id=\"menu-verti\">\r\n                <xsl:apply-templates select=\"menu\" />\r\n            </ul>\r\n        </div>\r\n     </div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"menu\">\r\n    <xsl:variable name=\"index\">\r\n    	<xsl:number level=\"single\" value=\"position()\" />\r\n    </xsl:variable>\r\n\r\n    <xsl:if test=\"$index &gt; 7\">\r\n        <li class=\"first-verti\">\r\n        	<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n          		<xsl:value-of select=\"page-name\" />\r\n	        </a>\r\n    	    <xsl:apply-templates select=\"sublevel-menu-list\" />\r\n        </li>\r\n   </xsl:if>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu-list\" >\r\n	<ul>\r\n    	<li class=\"last-verti\">\r\n		 	<xsl:apply-templates select=\"sublevel-menu\" />\r\n 	    </li>\r\n    </ul>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu\">\r\n   <xsl:variable name=\"index_sous_menu\">\r\n         <xsl:number level=\"single\" value=\"position()\" />\r\n   </xsl:variable>\r\n\r\n   <a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n		<span><xsl:value-of select=\"page-name\" /></span>\r\n   </a>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(213,'Main Menu','menu_main.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n    <xsl:param name=\"site-path\" select=\"site-path\" />\r\n    <xsl:template match=\"menu-list\">\r\n        <xsl:apply-templates select=\"menu\" />\r\n    </xsl:template>\r\n    <xsl:template match=\"menu\">\r\n        <li class=\"nav-item\">\r\n            <a href=\"{$site-path}?page_id={page-id}\" class=\"nav-link\" target=\"_top\">\r\n                <xsl:value-of select=\"page-name\" />\r\n            </a>\r\n        </li>\r\n    </xsl:template>\r\n</xsl:stylesheet>'),(215,'Breadcrumb','page_path.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n\r\n<xsl:template match=\"page\">\r\n		<xsl:if test=\"position()!=last()-1\">\r\n			<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\"><xsl:value-of select=\"page-name\" /></a> >\r\n		</xsl:if>\r\n		<xsl:if test=\"position()=last()-1\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page_link\">\r\n		<xsl:if test=\"position()!=last()-1\">\r\n			<a href=\"{$site-path}?{page-url}\" target=\"_top\"><xsl:value-of select=\"page-name\" /></a> >\r\n		</xsl:if>\r\n		<xsl:if test=\"position()=last()-1\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n</xsl:stylesheet>'),(217,'Site Map','site_map.xsl','<?xml version=\"1.0\"?> <xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"> 	<xsl:param name=\"site-path\" select=\"site-path\" /> 	<xsl:variable name=\"current-page-id\" select=\"current-page-id\" /> 	<xsl:template match=\"page[page-level=0]\"> 		<div id=\"lutece-map-tree\" class=\"lutece-tree\"> 			<ul> 				<li id=\"node-{page-id}\" class=\"lutece-tree-node\" data-tree-icon=\"home\"> 					<xsl:value-of select=\"page-name\" /> 					<xsl:if test=\"not(string(page-role)=\'none\')\"> 						<strong> 							<xsl:text disable-output-escaping=\"yes\">- #i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text> 							<xsl:value-of select=\"page-role\" /> 						</strong> 					</xsl:if> 					<a href=\"{$site-path}?page_id={page-id}\" title=\"{page-description}\"><span class=\"ti ti-home-link ms-2\"></span></a> 					<ul> 						<xsl:apply-templates select=\"child-pages-list\" /> 					</ul> 				</li> 			</ul> 		</div> 	</xsl:template> 	<xsl:template match=\"page[page-level>0]\"> 		<xsl:variable name=\"index\" select=\"page-id\" /> 		<xsl:variable name=\"description\" select=\"page-description\" /> 		<xsl:choose> 			<xsl:when test=\"count(child-pages-list/*)>0\"> 			<li id=\"node-{$index}\" class=\"lutece-tree-node\" data-tree-icon=\"folder\"> 				<span class=\"node-name\"> 					<xsl:value-of select=\"page-name\" /> 					<xsl:if test=\"not(string(page-role)=\'none\')\"> 						<strong> 							<xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text> 							<xsl:value-of select=\"page-role\" /> 						</strong> 					</xsl:if> 					<a href=\"{$site-path}?page_id={page-id}\" title=\"{page-name } - {$description}\"><span class=\"ti ti-link mx-2\"></span></a> 				</span> 				<ul> 					<xsl:apply-templates select=\"child-pages-list\" /> 				</ul> 			</li> 			</xsl:when> 			<xsl:otherwise> 				<li id=\"node-{$index}\" class=\"lutece-tree-item\" data-tree-icon=\"file-symlink\"> 					<a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\"> 						<span class=\"leaf-name\"><xsl:value-of select=\"page-name\" /></span> 						<xsl:if test=\"not(string(page-role)=\'none\')\"> 							<strong> 								<xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text> 								<xsl:value-of select=\"page-role\" /> 							</strong> 						</xsl:if> 					</a> 				</li>    			</xsl:otherwise> 		</xsl:choose> 	</xsl:template> 	<xsl:template match=\"child-pages-list\"> 		<xsl:apply-templates select=\"page\" /> 	</xsl:template> </xsl:stylesheet>'),(253,'Tree View Menu','menu_tree.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"menu-list\">\r\n	<xsl:variable name=\"menu-list\" select=\"menu\" />\r\n\r\n	<script type=\"text/javascript\">\r\n		$(document).ready(function(){\r\n			$(\"#tree\").treeview({\r\n				animated: \"fast\",\r\n				collapsed: false,\r\n				unique: true,\r\n				persist: \"cookie\"\r\n			});\r\n		\r\n		});\r\n	</script>    \r\n	\r\n	<xsl:if test=\"not(string(menu)=\'\')\">\r\n	    <xsl:text disable-output-escaping=\"yes\">		    \r\n            <div class=\"tree4\">		\r\n			<h2>&#160;</h2>\r\n			<ul id=\"tree\" class=\"tree4\">\r\n                <xsl:apply-templates select=\"menu\" />        \r\n			</ul>	\r\n			</div>\r\n		 	 <br />\r\n		</xsl:text> \r\n	</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"menu\">\r\n    <xsl:variable name=\"index\">\r\n    	<xsl:number level=\"single\" value=\"position()\" />\r\n    </xsl:variable>\r\n		<li>\r\n          <a href=\"{$site-path}?page_id={page-id}\" target=\"_top\" >\r\n               <xsl:value-of select=\"page-name\" />\r\n           </a>	   \r\n		   <br />\r\n		   <xsl:value-of select=\"page-description\" />\r\n			<xsl:apply-templates select=\"sublevel-menu-list\" /> \r\n			\r\n		</li> 	\r\n		\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu-list\" > \r\n	\r\n	<xsl:apply-templates select=\"sublevel-menu\" /> 	    	\r\n\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"sublevel-menu\">\r\n   <xsl:variable name=\"index_sous_menu\">\r\n         <xsl:number level=\"single\" value=\"position()\" />\r\n   </xsl:variable>\r\n		 <ul >\r\n			<li>\r\n				<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n					<xsl:value-of select=\"page-name\" />\r\n				</a>\r\n			</li>			\r\n		</ul>\r\n		\r\n   \r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(279,'Site Map (Admin mode)','admin_site_map_admin.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n    <xsl:param name=\"site-path\" select=\"site-path\" />\r\n    <xsl:variable name=\"current-page-id\" select=\"current-page-id\" />\r\n    <xsl:template match=\"page[page-level=0]\">\r\n        <div id=\"lutece-map-tree\" class=\"lutece-tree\">\r\n            <ul>\r\n                <li class=\"lutece-tree-node\" data-tree-icon=\"home\">\r\n                    <xsl:value-of select=\"page-name\" />\r\n                    <xsl:if test=\"not(string(page-role)=\'none\')\">\r\n                        <strong>\r\n                            <xsl:text disable-output-escaping=\"yes\">- #i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n                            <xsl:value-of select=\"page-role\" />\r\n                        </strong>\r\n                    </xsl:if>\r\n                    <a href=\"{$site-path}?page_id={page-id}\" title=\"{page-description}\"><span class=\"ti ti-link\"></span></a>\r\n                    <ul>\r\n                        <xsl:apply-templates select=\"child-pages-list\" />\r\n                    </ul>\r\n                </li>\r\n            </ul>\r\n        </div>\r\n    </xsl:template>\r\n    <xsl:template match=\"page[page-level>0]\">\r\n        <xsl:variable name=\"index\" select=\"page-id\" />\r\n        <xsl:variable name=\"description\" select=\"page-description\" />\r\n        <xsl:choose>\r\n            <xsl:when test=\"count(child-pages-list/*)>0\">\r\n            <li id=\"node-{$index}\" class=\"lutece-tree-node\" data-tree-icon=\"folder\">\r\n                <xsl:value-of select=\"page-name\" />\r\n                <xsl:if test=\"not(string(page-role)=\'none\')\">\r\n                    <strong>\r\n                        <xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n                        <xsl:value-of select=\"page-role\" />\r\n                    </strong>\r\n                </xsl:if>\r\n                <a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\"><span class=\"ti ti-link\"></span></a>\r\n                <ul>\r\n                    <xsl:apply-templates select=\"child-pages-list\" />\r\n                </ul>\r\n                </li>   \r\n            </xsl:when>\r\n            <xsl:otherwise>\r\n            <li id=\"node-{$index}\" class=\"lutece-tree-item\" data-tree-icon=\"file\">\r\n                <xsl:value-of select=\"page-name\" />\r\n                <xsl:if test=\"not(string(page-role)=\'none\')\">\r\n                    <strong>\r\n                        <xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n                        <xsl:value-of select=\"page-role\" />\r\n                    </strong>\r\n                </xsl:if>\r\n                <a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\"><span class=\"ti ti-link\"></span></a>\r\n                <xsl:apply-templates select=\"child-pages-list\" />\r\n            </li>    \r\n            </xsl:otherwise>\r\n        </xsl:choose>\r\n    </xsl:template>\r\n    <xsl:template match=\"child-pages-list\">\r\n        <xsl:apply-templates select=\"page\" />\r\n    </xsl:template>\r\n</xsl:stylesheet>'),(285,'Rubrique HTML - Fond color�','portlet_html_background.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n	\r\n	<div class=\"portlet {$device_class}\">\r\n		<div class=\"well\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h2>\r\n					<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n				</h2>\r\n				<div class=\"portlet-background-content -lutece-border-radius-bottom\">\r\n					<xsl:apply-templates select=\"html-portlet\" />\r\n				</div>\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<div class=\"portlet-background-content -lutece-border-radius\">\r\n					<xsl:apply-templates select=\"html-portlet\" />\r\n				</div>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n		</div>\r\n    </div>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"html-portlet\">\r\n	<xsl:apply-templates select=\"html-portlet-content\" />\r\n</xsl:template>\r\n\r\n<xsl:template match=\"html-portlet-content\">\r\n	<xsl:value-of disable-output-escaping=\"yes\" select=\".\" />\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>'),(310,'Rubrique MyLutece - D�faut','portlet_mylutece.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n		<div class=\"well\">\r\n			<xsl:choose>\r\n	        <xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n				<xsl:apply-templates select=\"mylutece-portlet\" />\r\n	        </xsl:when>\r\n	        <xsl:otherwise>\r\n				<xsl:apply-templates select=\"mylutece-portlet\" />\r\n	        </xsl:otherwise>\r\n			</xsl:choose>\r\n			<div class=\"clearfix\">&#160;</div>\r\n		</div>\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"mylutece-portlet\">\r\n	<xsl:apply-templates select=\"user-not-signed\" />\r\n	<xsl:apply-templates select=\"lutece-user\" />\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"user-not-signed\">\r\n	<form class=\"form\" action=\"jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp\" method=\"post\">\r\n		<xsl:apply-templates select=\"lutece-user-authentication-service[@delegated=\'true\']\" />\r\n		<xsl:apply-templates select=\"lutece-user-authentication-service[@loginpassword-required=\'true\']\" />\r\n		<xsl:if test=\"count(lutece-user-authentication-service[@loginpassword-required=\'true\']) &gt;= 1\">\r\n			<label for=\"username\">Code d\'acc&#232;s :</label>\r\n			<input name=\"username\" class=\"input-normal\" id=\"username\" autocomplete=\"off\" tabindex=\"1\" type=\"text\"/><br />\r\n			<label for=\"password\">Mot de passe :</label>\r\n			<input name=\"password\" class=\"input-normal\" id=\"password\" autocomplete=\"off\" tabindex=\"2\" type=\"password\" />\r\n			<button class=\"btn btn-small\" tabindex=\"3\" type=\"submit\"><i class=\"icon-user\">&#160;</i>&#160;Connexion</button>\r\n		</xsl:if>\r\n	</form>\r\n	<xsl:apply-templates select=\"lutece-user-new-account-url\" />\r\n	<xsl:apply-templates select=\"lutece-user-lost-password-url\" />\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-authentication-service[@loginpassword-required=\'true\']\">\r\n	<label class=\"radio\" for=\"auth_provider\" >\r\n		<input type=\"radio\" name=\"auth_provider\" value=\"{name}\" checked=\"checked\" />\r\n		<xsl:value-of select=\"display-name\" />\r\n	</label>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-authentication-service[@delegated=\'true\']\">\r\n	<a href=\"{url}?auth_provider={name}\">\r\n		<img src=\"{icon-url}\" alt=\"{display-name}\" title=\"{display-name}\"/>\r\n	</a>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user\">\r\n    <p>\r\n	<strong>Bienvenue&#160;\r\n		<xsl:value-of disable-output-escaping=\"yes\" select=\"lutece-user-name-given\" />&#160;\r\n		<xsl:value-of disable-output-escaping=\"yes\" select=\"lutece-user-name-family\" />\r\n	</strong>\r\n	</p>\r\n    <xsl:apply-templates select=\"lutece-user-logout-url\" />\r\n    <xsl:apply-templates select=\"lutece-user-view-account-url\" />\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-logout-url\">\r\n   <form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n   	<button type=\"submit\" class=\"btn\"><i class=\"icon-off\">&#160;</i>&#160;D&#233;connexion</button>&#160;\r\n   </form>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-new-account-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n		<button type=\"submit\" class=\"btn\"><i class=\"icon-plus\">&#160;</i>&#160;Cr&#233;er un compte</button>&#160;\r\n    </form>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-lost-password-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n	   	<button type=\"submit\" class=\"btn\"><i class=\"icon-lock\">&#160;</i>&#160;Mot de passe perdu</button>&#160;\r\n   </form>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-view-account-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n	   	<button type=\"submit\" class=\"btn\"><i class=\"icon-edit\">&#160;</i>&#160;Voir mon compte</button>&#160;\r\n	</form>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n');
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_template`
--

LOCK TABLES `core_template` WRITE;
/*!40000 ALTER TABLE `core_template` DISABLE KEYS */;
INSERT INTO `core_template` VALUES ('core_account_reactivated_mail','Bonjour ${first_name} ! Votre compte utilisateur a bien �t� r�activ�. Il est d�sormais valable jusqu\'au ${date_valid}.'),('core_expiration_mail','Bonjour ${first_name} ! Votre compte a expir�. Vous ne pourrez plus vous connecter avec, et les donn�es vous concernant ont �t� anonymis�es'),('core_first_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive � expiration. Pour prolonger sa validit�, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera d�sactiv�.'),('core_other_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive � expiration. Pour prolonger sa validit�, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera d�sactiv�.'),('core_password_expired','Bonjour ! Votre mot de passe a expir�. Lors de votre prochaine connexion, vous pourrez le changer.'),('mylutece_database_account_reactivated_mail','Bonjour ${first_name} ! Votre compte utilisateur a bien �t� r�activ�. Il est d�sormais valable jusqu\'au ${date_valid}.'),('mylutece_database_expiration_mail','Bonjour ${first_name} ! Votre compte a expir�. Vous ne pourrez plus vous connecter avec, et les donn�es vous concernant ont �t� anonymis�es'),('mylutece_database_first_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive � expiration. Pour prolonger sa validit�, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera d�sactiv�.'),('mylutece_database_mailLostPassword','<html><head><title>#i18n{mylutece.email_reinit.object}</title></head><body><p>#i18n{mylutece.email_reinit.content.text}<br /></p><p>#i18n{mylutece.email_reinit.content.newPassword} : ${new_password}<br /></p></body></html><p>#i18n{mylutece.email_reinit.content.reinitPassword}<a href=\"${reinit_url}\">#i18n{mylutece.email_reinit.content.labelLink}</a></p>'),('mylutece_database_mailPasswordEncryptionChanged','<html><head><title>Votre mot de passe a �t� r�initialis�</title></head><body><p>Pour des raisons de s�curit�, votre mot de passe a �t� r�initialis�.<br />----------------------------------------------------------</p><p>Votre nouveau mot de passe est : ${new_password}<br />----------------------------------------------------------</p></body></html>'),('mylutece_database_other_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive � expiration. Pour prolonger sa validit�, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera d�sactiv�.'),('mylutece_database_password_expired','Bonjour ! Votre mot de passe a �xpir�. Lors de votre prochaine connection, vous pourrez le changer.'),('mylutece_database_unblock_user','${site_link!}<br />Bonjour ! Votre IP a �t� bloqu�e. Pour la d�bloquer, vous pouvez suivre le lien suivant : <a href=\"${url}\">debloquer</a>.');
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_password_history`
--

LOCK TABLES `core_user_password_history` WRITE;
/*!40000 ALTER TABLE `core_user_password_history` DISABLE KEYS */;
INSERT INTO `core_user_password_history` VALUES (1,'PBKDF2WITHHMACSHA512:40000:c70fa5d392001060a5e4e1383ace3180:a27f5d08fd0057bd0a3b3dab1f52a2acec45b56ff23d4869bf849bd68010fee9cdf484a17c09bfc4c447394e43c2d0365c320d5e656224891970d085dafd541542bb48f2a36dfb322dca482cef148b7ac14b01cedd6058cf537cec7ee0950a422c6c38da600967f88e5f95a8e3fcd52fca2117d3b64eee6c31b704d59c4a58da','2024-05-21 07:54:38'),(1,'PBKDF2WITHHMACSHA512:40000:51ca5786101ccd16119cc3a7accba6f3:af9c9024a93721c06d8f16cd4b0c0ea3d7ab93bb24785d0ce6ee48fe26538da2edba892c89a4bad56cfc18fb3bdca7f3e972ad46df79caf34bfb5aaed8455052f609d11663a22f2c1ca6e1d14c10d493c758277306aa11edd428c923b4e38a8532c9ea201abcd6d7e2517f1340916b8fed9e5e2d043eb58be7d4ccc18cadd4ee','2024-07-30 12:53:44');
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_right`
--

LOCK TABLES `core_user_right` WRITE;
/*!40000 ALTER TABLE `core_user_right` DISABLE KEYS */;
INSERT INTO `core_user_right` VALUES ('APPOINTMENT_CALENDAR_TEMPLATE',1),('APPOINTMENT_CATEGORY_MANAGEMENT',1),('APPOINTMENT_COMMENT_MANAGEMENT',1),('APPOINTMENT_FORM_MANAGEMENT',1),('CORE_ADMINDASHBOARD_MANAGEMENT',1),('CORE_ADMIN_SITE',1),('CORE_CACHE_MANAGEMENT',1),('CORE_DAEMONS_MANAGEMENT',1),('CORE_DASHBOARD_MANAGEMENT',1),('CORE_EDITORS_MANAGEMENT',1),('CORE_FEATURES_MANAGEMENT',1),('CORE_LEVEL_RIGHT_MANAGEMENT',1),('CORE_LINK_SERVICE_MANAGEMENT',1),('CORE_LOGS_VISUALISATION',1),('CORE_MAILINGLISTS_MANAGEMENT',1),('CORE_MODES_MANAGEMENT',1),('CORE_PAGE_TEMPLATE_MANAGEMENT',1),('CORE_PLUGINS_MANAGEMENT',1),('CORE_PROPERTIES_MANAGEMENT',1),('CORE_RBAC_MANAGEMENT',1),('CORE_RIGHT_MANAGEMENT',1),('CORE_ROLES_MANAGEMENT',1),('CORE_SEARCH_INDEXATION',1),('CORE_SEARCH_MANAGEMENT',1),('CORE_STYLESHEET_MANAGEMENT',1),('CORE_STYLES_MANAGEMENT',1),('CORE_TEMPLATES_AUTO_INCLUDES_MANAGEMENT',1),('CORE_USERS_MANAGEMENT',1),('CORE_WORKGROUPS_MANAGEMENT',1),('CORE_XSL_EXPORT_MANAGEMENT',1),('DATABASE_GROUPS_MANAGEMENT',1),('DATABASE_MANAGEMENT_USERS',1),('ENTRY_TYPE_MANAGEMENT',1),('HTMLPAGE_MANAGEMENT',1),('IDENTITYSTORE_ADMIN_MANAGEMENT',1),('IDENTITYSTORE_MANAGEMENT',1),('MULTIVIEW_APPOINTMENT',1),('MYDASHBOARD_PANEL_MANAGEMENT',1),('MYLUTECE_MANAGEMENT',1),('MYLUTECE_MANAGE_AUTHENTICATION_FILTER',1),('MYLUTECE_MANAGE_EXTERNAL_APPLICATION',1),('PROFILES_MANAGEMENT',1),('PROFILES_VIEWS_MANAGEMENT',1),('REFERENCELIST_MANAGEMENT',1),('REGULAR_EXPRESSION_MANAGEMENT',1),('SITELABELS_MANAGEMENT',1),('SOLR_CONFIGURATION_MANAGEMENT',1),('SOLR_FIELDS_MANAGEMENT',1),('SOLR_INDEX_MANAGEMENT',1),('SYSTEMINFO_MANAGEMENT',1),('VIEW_TEMP_FILES',1),('WORKFLOW_MANAGEMENT',1);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_role`
--

LOCK TABLES `core_user_role` WRITE;
/*!40000 ALTER TABLE `core_user_role` DISABLE KEYS */;
INSERT INTO `core_user_role` VALUES ('all_site_manager',1),('assign_groups',1),('assign_roles',1),('CREATE_REFERENCE_IMPORT',1),('kibana_dashboards_manager',1),('mylutece_database_manager',1),('mylutece_manager',1),('profiles_manager',1),('profiles_views_manager',1),('super_admin',1),('workflow_manager',1);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_xsl_export`
--

LOCK TABLES `core_xsl_export` WRITE;
/*!40000 ALTER TABLE `core_xsl_export` DISABLE KEYS */;
INSERT INTO `core_xsl_export` VALUES (125,'Core - Export users to a CSV file','Export back office users to a CSV file','csv',125,'core'),(126,'Core - Export users to a XML file','Export back office users to a XML file','xml',126,'core'),(127,'MyLutece Database - Export CSV des utilisateurs','Export des utilisateur MyLutece Database dans un fichier CSV','csv',127,'mylutece-database'),(128,'MyLutece Database - Export XML des utilisateurs','Export des utilisateur MyLutece Database dans un fichier XML','xml',128,'mylutece-database');
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
);
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
);
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
);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_entry_type`
--

LOCK TABLES `genatt_entry_type` WRITE;
/*!40000 ALTER TABLE `genatt_entry_type` DISABLE KEYS */;
INSERT INTO `genatt_entry_type` VALUES (123,'Bouton radio',0,0,0,'appointment.entryTypeRadioButton','dot-circle','appointment',1,0),(124,'Case � cocher',0,0,0,'appointment.entryTypeCheckBox','check-square','appointment',2,0),(125,'Commentaire',0,1,0,'appointment.entryTypeComment','comment','appointment',3,0),(126,'Date',0,0,0,'appointment.entryTypeDate','calendar','appointment',4,0),(127,'Liste d�roulante',0,0,0,'appointment.entryTypeSelect','list-alt','appointment',5,0),(128,'Zone de texte court',0,0,0,'appointment.entryTypeText','file-alt','appointment',6,0),(129,'Zone de texte long',0,0,0,'appointment.entryTypeTextArea','sticky-note','appointment',7,0),(130,'Num�rotation',0,0,0,'appointment.entryTypeNumbering','hashtag','appointment',8,0),(131,'Regroupement',1,0,0,'appointment.entryTypeGroup','indent','appointment',9,0),(132,'Liste d�roulante SQL',0,0,0,'appointment.entryTypeSelectSQL','list-alt','appointment',10,0),(133,'G�olocalisation',0,0,0,'appointment.entryTypeGeolocation','map-marked-alt','appointment',11,0),(134,'Session',0,0,0,'appointment.entryTypeSession','user','appointment',12,0),(135,'Utilisateur MyLutece',0,0,1,'appointment.entryTypeMyLuteceUser','user','appointment',13,0),(136,'Image',0,0,0,'appointment.entryTypeImage','image','appointment',14,0),(137,'Fichier',0,0,0,'appointment.entryTypeFile','file','appointment',15,0),(138,'Num�ro de t�l�phone',0,0,0,'appointment.entryTypePhone','phone-square','appointment',16,1);
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
);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `html_portlet`
--

LOCK TABLES `html_portlet` WRITE;
/*!40000 ALTER TABLE `html_portlet` DISABLE KEYS */;
INSERT INTO `html_portlet` VALUES (2,'<p>Affichage de la page <a href=\"jsp/site/Portal.jsp?page=appointmentsearch&amp;category=Avocats\">Cartographie</a> pour les services de rendez-vous d�t�ritorrialis�s</p>\n<p class=\"logo\">&nbsp;</p>'),(4,'<h2>Get into the Back Office of this demo site</h2> \n<p class=\"mb20\">Sign in as administrator with <em>admin/adminadmin</em>.</p> \n<p><a class=\"btn btn-primary\" title=\"Access to admin [Open  in new window]\" href=\"jsp/admin/AdminLogin.jsp\" target=\"\"><span class=\"fa fa-door-open\">&nbsp;</span> Enter Back Office</a></p> \n<p>&nbsp;</p>'),(5,'<h3>Resources</h3> \n<hr> \n<div class=\"row\"> \n <div class=\"col-xs-12 col-sm-6\"> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"GitHub site [Open  in new window]\" href=\"https://github.com/lutece-platform\" target=\"_blank\"><img class=\"media-object\" src=\"images/local/skin/github-logo.png\" alt=\"Github logo\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Access to our code repository</h4> \n   </div> \n  </div> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"Docker Hub site [Open  in new window]\" href=\"https://hub.docker.com/u/lutece\" target=\"_blank\"><img class=\"media-object\" src=\"images/local/skin/docker-logo.png\" alt=\"Docker images\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Grab some Docker images to run demos</h4> \n   </div> \n  </div> \n </div> \n <div class=\"col-xs-12 col-sm-6\"> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"Lutece Wiki site [Open  in new window]\" href=\"https://fr.lutece.paris.fr/fr/jsp/site/Portal.jsp?page=wiki&amp;action=changeLanguage&amp;page_name=home&amp;language=en\" target=\"_blank\"> <img class=\"media-object\" src=\"images/local/skin/wiki-logo.png\" alt=\"WIKI\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Read our technical documentation</h4> \n   </div> \n  </div> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\" Twitter Site [Open  in new window]\" href=\"https://twitter.com/LuteceNews\" target=\"_blank\"> <img class=\"media-object\" src=\"images/local/skin/twitter-logo.png\" alt=\"Twitter logo\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Follow us on Twitter</h4> \n   </div> \n  </div> \n </div> \n</div>'),(8,'<p><strong>RendezVous</strong> est un service num�rique qui comprend un ensemble de fonctionnalit�s rendues possibles gr�ce � l\'ajout de serveurs tiers permettant notamment les statistiques de visites (<strong>Matomo</strong>) et m�tier (<strong>ElasticSearch</strong> et <strong>Kibana</strong>), l\'authentification en back office (<strong>keycloak</strong>) ou encore l\'affichage des disponibilit�s sur une carte (gr�ce aux indexations sur <strong>SolR</strong>). Seuls les emails sont �mul�s par un outil (<strong>Mailpit</strong>) permettant d\'intercepter tous les envois effectu�s depuis l\'application pour vous donner une bonne id�e des possibilit�s. Ces envois seront � p�renniser en utilisant votre propre serveur de messagerie d\'entreprise.</p>\n<p>Voici l\'ensemble des liens vers ces applicatifs, avec les identifiants des comptes utilisateurs vous permettant de vous connecter aux interfaces d\'administration :</p>'),(9,'<style>\r\ntable {\r\n  font-family: arial, sans-serif;\r\n  border-collapse: collapse;\r\n  width: 100%;\r\n}\r\n\r\ntd, th {\r\n  border: 1px solid #dddddd;\r\n  text-align: left;\r\n  padding: 4px;\r\n}\r\n\r\n/*tr:nth-child(even) {\r\n  background-color: #ff3300;\r\n}*/\r\n</style>\r\n<table>\r\n  <tr style=\"background-color: #ff3300;\">\r\n    <th>Service</th>\r\n    <th>Identifiants</th>\r\n    <th>Commentaires</th>\r\n  </tr>\r\n  <tr>\r\n    <td><b>Back Office RendezVous</b><br/><a href=\"http://localhost:8080/rendezvous/jsp/admin/AdminLogin.jsp\" target=\"_blank\">(lien)</a></td>\r\n    <td>Identifiant : admin<br/>Mot de passe : adminadmin<br/><i>Lors de la premi�re connexion, il vous sera demand� de le modifier</i></td>\r\n    <td>Le \"back office\" est l\'interface d\'administration de votre application de prise de rendez-vous. Il vous permet de g�rer les comptes et leurs autorisations associ�es, l\'�ditorial, le param�trage de votre application, et de g�rer les rendez-vous pris par les usagers au quotidien : cr�er vos agendas, d�finissez vos disponibilit�s et les notifications � envoyer, et laissez l\'application faire le reste.</td>\r\n  </tr>\r\n<tr>\r\n    <td><b>Mailpit</b><br/><a href=\"http://localhost:1080/\" target=\"_blank\">(lien)</a></td>\r\n    <td>Pas d\'identifiant n�cessaire</td>\r\n    <td>Mailpit est un petit outil permettant d\'intercepter les notifications envoy�es sur un port particulier pour en afficher le contenu avec une l�g�re mise en forme. Il suffit de cliquer sur une ligne de notification pour d�plier le contenu. Cela vous permet de tester les envois effectu�s par l\'application.</td>\r\n  </tr>\r\n  <tr>\r\n    <td>Matomo<br/><a href=\"http://localhost/\" target=\"_blank\">(lien)</a></td>\r\n    <td>Pas d\'identifiant n�cessaire</td>\r\n    <td>Matomo est un logiciel libre et open source de mesure de statistiques d\'audience. Lorsqu\'un usager navigue sur l\'application, les pages qu\'il consulte, le temps pass�, ainsi que les �l�ments techniques de son origine g�ographe, et son navigateur internet sont consultables depuis cette interface, mais �galement dans le back office de l\'application (menu \"Site\" -> \"Statistiques Web Matomo\").</td>\r\n  </tr>\r\n<tr>\r\n    <td>SolR<br/><a href=\"http://localhost:1080/solr/#/\" target=\"_blank\">(lien)</a></td>\r\n    <td>Pas d\'identifiant n�cessaire</td>\r\n    <td>SolR est une base de donn�es optimis�e pour la recherche, con�ue sous licence libre. Elle est utilis�e pour indexer les cr�neaux disponibles de fa�on optimis�e et pour restituer ces disponibilit�s sur une carte g�ographique.</td>\r\n  </tr>\r\n  <tr>\r\n    <td>ElasticSearch / Kibana<br/><a href=\"http://localhost:5601/s/dev/app/home#/\" target=\"_blank\">(lien)</a></td>\r\n    <td>Pas d\'identifiant n�cessaire</td>\r\n    <td>ElasticSearch est �galement une base de donn�es permettant l\'indexation optimis�e de donn�es. Cette pile est utilis�e pour stocker les statistiques m�tier li�es � l\'utilisation du service (ex. combien de temps � l\'avance les rendez-vous sont-ils pris en moyenne, quels sont les cr�neaux les plus pris�s, une r�partition des rendez-vous sur votre territoire, les chiffres li�s aux reports, annulations, surbooking, etc.)</td>\r\n  </tr>\r\n  <tr>\r\n    <td rowspan=\"2\">Keycloak<br/><a href=\"http://localhost:8081/admin/\" target=\"_blank\">(lien)</a></td>\r\n    <td>(<i>Compte admin</i>)<br/>Identifiant : admin<br/>Mot de passe : admin1234</td>\r\n    <td rowspan=\"2\">Keycloak est un outil open source permettant de l\'authentification unique et la gestion d\'identit�, d�velopp� par la communaut� WildFly et h�berg� par RedHat.</td>\r\n  </tr>\r\n  <tr>\r\n        <td>(<i>Compte utilisateur de d�mo</i>)<br/>Identifiant : test@paris.fr<br/>Mot de passe : test1234=TEST1234</td>\r\n  </tr>\r\n</table>'),(11,'<h2>Choisissez le meilleur parcours usager pour acc�der � vos agendas</h2>\n<p>Utilisez le module listant tous vos agendas automatiquement :&nbsp;</p>'),(13,'...ou bien utilisez la carte g�ographique comme point d\'entr�e de vos services d�territorialis�s...\r\n<p class=\"text-center\">\r\n<a class=\"btn-solid-reg\" href=\"jsp/site/Portal.jsp?page=appointmentsearch&category=Avocats\" target=\"_blank\" title=\"Cartographie\">\r\n<span class=\"icon\"><i class=\"ti ti-map-2\"></i></span>\r\n<span class=\"text\">Cartographie</span>\r\n</a>\r\n</p>'),(16,'<section id=\"lutece\" class=\"lutece\">\r\n    <div class=\"container\">\r\n        <div class=\"row align-items-center\">\r\n            <div class=\"col-lg-6\">\r\n                <div class=\"lutece-content\">\r\n                    <h1 class=\"my-3\">CiteLibre rendez-vous, votre outil cl� en main</h1>\r\n                    <p class=\"font-weight-bold\" >\r\n                        FR : CiteLibre est la suite logicielle de services num�riques cl� en main r�utilisant les composants du framework open source <a href=\"https://lutece.paris.fr/\" title=\"Site Lutece\" target=\"_blank\">Lutece</a>. Elle permet aux municipalit�s de tester, r�utiliser et de param�trer les services disponibles pour r�pondre � leurs besoins. CiteLibre est gratuit, open source, enti�rement personnalisable et s�curis�.<br/>\r\nF�licitations, vous avez d�ploy� votre service num�rique de prise de rendez-vous. Prochaine �tape, cr�er votre propre agenda. Toute la documentation est disponible <a href=\"https://lutece.paris.fr/support/wiki/howto-operational-plugin-appointment.html\" title=\"Site Lutece\" target=\"_blank\">ici</a>. <br/>\r\nAu fil de l\'utilisation de l\'application, vous pourrez exploiter des outils d\'aide � la d�cision (statistiques m�tier r�alis�es avec la couche ElasticSearch / Kibana). Mettez en place les r�gles de gestion propre � vos usages et appropriez-vous les d�tails des notifications envoy�es � vos usagers.\r\n                    </p>\r\n                    <p class=\"font-weight-bold\">\r\n                        EN: <i>CiteLibre is the turnkey digital services software suite reusing components from the open source framework <a href=\"https://lutece.paris.fr/en/\" title=\"Site Lutece\" target=\"_blank\">Lutece</a>. It enables municipalities to test, reuse and parameterize the services available to meet their needs. CiteLibre is free, open source, fully customizable and secure.<br/>\r\nCongratulations, you\'ve deployed your digital appointment booking service. Next step is to create your own agenda. The full documentation is available <a href=\"https://lutece.paris.fr/support/wiki/howto-operational-plugin-appointment.html\" title=\"Site Lutece\" target=\"_blank\">here</a>.<br/>\r\nAs you use the application, you\'ll be able to harness decision-making tools (business statistics produced with the ElasticSearch / Kibana suite). Set up management rules specific to your uses and take ownership of the details of notifications sent to your users.</i>\r\n                    </p>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-lg-6\">\r\n                <img src=\"images/site/city-home.svg\" alt=\"\">\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>'),(18,'<div class=\"lutece-content mt-5\">\r\n                    <h2 class=\"my-3\">Connectez-vous � l\'administration de l\'application</h2>\r\n                    <p class=\"font-weight-bold\">FR : Connectez-vous � l\'interface d\'administration en utilisant le login <strong>\"admin\"</strong> et le mot de passe <strong>\"adminadmin\"</strong> (vous serez invit�s � r�initialiser le mot de passe). Vous pourrez alors personnaliser l\'agenda de d�mo.<br/>Vous trouverez �galement tous les <a href=\"jsp/site/Portal.jsp?page_id=3\" title=\"Liens utiles\">liens utiles</a> avec les informations de connexion pour utiliser tous les services mis � disposition dans l\'application.</p>\r\n                    <p class=\"font-weight-bold\">EN: <i>Log in to the administration interface using login <strong>\"admin\"</strong> and password <strong>\"adminadmin\"</strong> (you will be prompted to reset the password). You can test each of its features and customize the demo calendar.<br/>You will also find all <a href=\"jsp/site/Portal.jsp?page_id=3\" title=\"Useful links\">Useful links</a> with connection credentials to use all available features.</i></p>\r\n                    <p class=\"text-center\">\r\n			<a class=\"btn-solid-reg\" href=\"jsp/admin/AdminLogin.jsp\" target=\"_blank\" title=\"Go to admin login page [Open in new window]\">\r\n				<span class=\"icon\"><i class=\"ti ti-user-cog\"></i></span>\r\n				<span class=\"text\">Administration</span>\r\n			</a>\r\n		</p>\r\n</div>\r\n\r\n<div class=\"lutece-content mt-5\">\r\n                    <h2 class=\"my-3\">Connectez-vous en temps qu\'utilisateur � l\'application</h2>\r\n                    <p class=\"font-weight-bold\">FR : Connectez-vous en temps qu\'utilisateur en utilisant le login <strong>\"test\"</strong> et le mot de passe <strong>\"test1234=TEST1234\"</strong>. Vous pourrez alors prendre un cr�neau dans les permanence juridique avec les champs utilisateurs pr�-remplis.<br/></p>\r\n                    <p class=\"font-weight-bold\">EN: <i>Log in as a user using login <strong>\"test\"</strong> and password <strong>\"test1234=TEST1234\"</strong>. You will then be able to take a slot in the legal office with the user fields pre-filled.<br/></p>\r\n                    <p class=\"text-center\">\r\n			<a class=\"btn-solid-reg\" href=\"jsp/site/Portal.jsp?page=mylutece&action=login\" target=\"_blank\" title=\"Go to user login page [Open in new window]\">\r\n				<span class=\"icon\"><i class=\"ti ti-user-cog\"></i></span>\r\n				<span class=\"text\">User login</span>\r\n			</a>\r\n		</p>\r\n</div>');
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `htmlpage`
--

LOCK TABLES `htmlpage` WRITE;
/*!40000 ALTER TABLE `htmlpage` DISABLE KEYS */;
INSERT INTO `htmlpage` VALUES (1,'Texte de page de pr�-recherche','<p>Test</p>',0,'all','none'),(2,'Texte d\'aide sur la page calendrier','<p>test 2</p>',0,'all','none');
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitystore_attribute`
--

LOCK TABLES `identitystore_attribute` WRITE;
/*!40000 ALTER TABLE `identitystore_attribute` DISABLE KEYS */;
INSERT INTO `identitystore_attribute` VALUES (1,'Genre','gender','0:Non d�fini /  1:Homme / 2:Femme',0),(2,'Email','email','',0),(3,'Date de naissance','birthdate','au format DD/MM/YYYY',0),(4,'Lieu de naissance','birthplace','',0),(5,'T�l�phone portable','mobile_phone','R�serv� pour l\'envoi de SMS',0),(6,'T�l�phone fixe','fixed_phone','',0),(7,'T�l�phone fixe ou mobile','phone','',0),(8,'Nom usuel','preferred_username','',0),(9,'Adresse postale','address','',0),(10,'Pr�nom','first_name','Pr�nom usuel',0),(11,'Nom de famille de naissance','family_name','',0),(12,'Num�ro de rue','address_number','Champ d\'adresse : num�ro de rue ',0),(13,'Suffixe','address_suffix','Champ d\'adresse : suffixe de num�ro (bis,ter...)',0),(14,'Rue','address_street','Champ d\'adresse :  rue, avenue...',0),(15,'Immeuble','address_building','Champ d\'adresse : immeuble, r�sidence...',0),(16,'Etage','address_stair','Champ d\'adresse : Etage, Num�ro d appartement',0),(17,'Code postal','address_postal_code','Champ d\'adresse : code postal',0),(18,'Ville','address_city','Champ d\'adresse : ville',0),(19,'Pays de naissance','birthcountry','',0),(30,'(FC) Pr�noms','fc_given_name','Format Pivot FranceConnect - Liste des pr�noms',0),(31,'(FC) Nom de naissance','fc_family_name','Format Pivot FranceConnect',0),(32,'(FC) Date de naissance','fc_birthdate','Format Pivot FranceConnect - format YYYY-MM-DD',0),(33,'(FC) Genre','fc_gender','Format Pivot FranceConnect - male / female',0),(34,'(FC) Lieu de naissance','fc_birthplace','Format Pivot FranceConnect - Code INSEE du lieu de naissance (ou une chaîne vide si la personne est n�e � l\'�tranger)',0),(35,'(FC) Pays de naissance','fc_birthcountry','Format Pivot FranceConnect - Code INSEE du pays de naissance',0);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_connections_log`
--

LOCK TABLES `mylutece_connections_log` WRITE;
/*!40000 ALTER TABLE `mylutece_connections_log` DISABLE KEYS */;
INSERT INTO `mylutece_connections_log` VALUES ('192.168.144.1','2024-07-31 08:36:19',0);
/*!40000 ALTER TABLE `mylutece_connections_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_group`
--

DROP TABLE IF EXISTS `mylutece_database_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_group` (
  `group_key` varchar(100) NOT NULL DEFAULT '0',
  `group_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`group_key`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_group`
--

LOCK TABLES `mylutece_database_group` WRITE;
/*!40000 ALTER TABLE `mylutece_database_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_group_role`
--

DROP TABLE IF EXISTS `mylutece_database_group_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_group_role` (
  `group_key` varchar(100) NOT NULL DEFAULT '0',
  `role_key` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_key`,`role_key`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_group_role`
--

LOCK TABLES `mylutece_database_group_role` WRITE;
/*!40000 ALTER TABLE `mylutece_database_group_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_group_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_key`
--

DROP TABLE IF EXISTS `mylutece_database_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_key` (
  `mylutece_database_user_key` varchar(255) NOT NULL,
  `mylutece_database_user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`mylutece_database_user_key`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_key`
--

LOCK TABLES `mylutece_database_key` WRITE;
/*!40000 ALTER TABLE `mylutece_database_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_user`
--

DROP TABLE IF EXISTS `mylutece_database_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_user` (
  `mylutece_database_user_id` int(11) NOT NULL,
  `login` varchar(100) NOT NULL DEFAULT '',
  `password` mediumtext NOT NULL,
  `name_given` varchar(100) NOT NULL DEFAULT '',
  `name_family` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) DEFAULT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 0,
  `reset_password` smallint(6) NOT NULL DEFAULT 0,
  `password_max_valid_date` timestamp NULL DEFAULT NULL,
  `account_max_valid_date` bigint(20) DEFAULT NULL,
  `nb_alerts_sent` int(11) NOT NULL DEFAULT 0,
  `last_login` timestamp NOT NULL DEFAULT '1979-12-31 23:00:00',
  PRIMARY KEY (`mylutece_database_user_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_user`
--

LOCK TABLES `mylutece_database_user` WRITE;
/*!40000 ALTER TABLE `mylutece_database_user` DISABLE KEYS */;
INSERT INTO `mylutece_database_user` VALUES (1,'test','PBKDF2WITHHMACSHA512:40000:817f39cddd820b13dd94ad170407a287:a686646301319c93848b78401df3bd8bf0da7cb61230b58f41d0336d0bd98600ffd58a8103ab1cb53bf3e353a58e7c11de192e8135485c671ef501dd402fc393609a30f5481d6395034cf716a8fcd043e619a40401aae1cc7257e7de18175423a9f973de8a821d3e8a7789892075070c9dda33cab197f22cf2d231fddcd93929','test','test','test@paris.fr',1,0,NULL,1753519568827,0,'2024-07-31 08:46:08');
/*!40000 ALTER TABLE `mylutece_database_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_user_group`
--

DROP TABLE IF EXISTS `mylutece_database_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_user_group` (
  `mylutece_database_user_id` int(11) NOT NULL DEFAULT 0,
  `group_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`mylutece_database_user_id`,`group_key`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_user_group`
--

LOCK TABLES `mylutece_database_user_group` WRITE;
/*!40000 ALTER TABLE `mylutece_database_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_user_parameter`
--

DROP TABLE IF EXISTS `mylutece_database_user_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_user_parameter` (
  `parameter_key` varchar(100) NOT NULL,
  `parameter_value` varchar(100) NOT NULL,
  PRIMARY KEY (`parameter_key`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_user_parameter`
--

LOCK TABLES `mylutece_database_user_parameter` WRITE;
/*!40000 ALTER TABLE `mylutece_database_user_parameter` DISABLE KEYS */;
INSERT INTO `mylutece_database_user_parameter` VALUES ('access_failures_captcha','1'),('access_failures_interval','10'),('access_failures_max','3'),('account_creation_validation_email','false'),('account_life_time','360'),('account_reactivated_mail_sender','LUTECE'),('account_reactivated_mail_subject','Votre compte a bien �t� r�activ�'),('auto_login_after_validation_email','false'),('enable_jcaptcha','false'),('enable_unblock_ip','false'),('expired_alert_mail_sender','LUTECE'),('expired_alert_mail_subject','Votre compte a expir�'),('first_alert_mail_sender','LUTECE'),('first_alert_mail_subject','Votre compte va bientot expirer'),('force_change_password_reinit',''),('mail_lost_password_sender','LUTECE'),('mail_lost_password_subject','Votre mot de passe a �t� r�initialis�'),('mail_password_encryption_changed_sender','LUTECE'),('mail_password_encryption_changed_subject','Votre mot de passe a �t� r�initialis�'),('maximum_number_password_change',''),('nb_alert_account','2'),('notify_user_password_expired',''),('other_alert_mail_sender','LUTECE'),('other_alert_mail_subject','Votre compte va bientot expirer'),('password_duration',''),('password_expired_mail_sender','LUTECE'),('password_expired_mail_subject','Votre mot de passe a expir�'),('password_format_numero','false'),('password_format_special_characters','false'),('password_format_upper_lower_case','false'),('password_history_size',''),('password_minimum_length','8'),('time_before_alert_account','30'),('time_between_alerts_account','10'),('tsw_size_password_change',''),('unblock_user_mail_sender','LUTECE'),('unblock_user_mail_subject','Votre IP a �t� bloqu�e'),('use_advanced_security_parameters','false');
/*!40000 ALTER TABLE `mylutece_database_user_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_user_password_history`
--

DROP TABLE IF EXISTS `mylutece_database_user_password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_user_password_history` (
  `mylutece_database_user_id` int(11) NOT NULL,
  `password` mediumtext NOT NULL,
  `date_password_change` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`mylutece_database_user_id`,`date_password_change`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_user_password_history`
--

LOCK TABLES `mylutece_database_user_password_history` WRITE;
/*!40000 ALTER TABLE `mylutece_database_user_password_history` DISABLE KEYS */;
INSERT INTO `mylutece_database_user_password_history` VALUES (1,'PBKDF2WITHHMACSHA512:40000:038a4e79d13b73a9ade944db5ce3e663:1360254649dfb21fc999aac9bd77bf9249c8331a4ef219a81e36dd28186c74fb3ea36decf4251a474387830ce152eaa7b65b531691b173a7d716de0ef7d38ef6c9a82078a96e45035373070f3dc89c48916670b984072bc6e5c943b5b626916b34dfff7674abd1d7566d33ce400d5b6e5504ac43e57bff135cb202b5f7a64d02','2024-07-31 08:37:30');
/*!40000 ALTER TABLE `mylutece_database_user_password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_user_role`
--

DROP TABLE IF EXISTS `mylutece_database_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_user_role` (
  `mylutece_database_user_id` int(11) NOT NULL DEFAULT 0,
  `role_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`mylutece_database_user_id`,`role_key`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_user_role`
--

LOCK TABLES `mylutece_database_user_role` WRITE;
/*!40000 ALTER TABLE `mylutece_database_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_user_role` ENABLE KEYS */;
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regularexpression_regular_expression`
--

LOCK TABLES `regularexpression_regular_expression` WRITE;
/*!40000 ALTER TABLE `regularexpression_regular_expression` DISABLE KEYS */;
INSERT INTO `regularexpression_regular_expression` VALUES (1,'Fichier JPG','image/jpeg','image/jpeg','Expression r�guli�re pour les fichiers de type jpeg.','Le format du fichier n\'est pas valide. Veuillez choisir une image de type jpeg.'),(2,'Email','(^([a-zA-Z0-9]+(([\\.\\-\\_]?[a-zA-Z0-9]+)+)?)\\@(([a-zA-Z0-9]+[\\.\\-\\_])+[a-zA-Z]{2,4})$)|(^$)','admin@lutece.fr','Expression r�guli�re pour les emails.','Le format de l\'email est incorrect.');
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action`
--

LOCK TABLES `workflow_action` WRITE;
/*!40000 ALTER TABLE `workflow_action` DISABLE KEYS */;
INSERT INTO `workflow_action` VALUES (1,'Validation automatique','Action d�clench�e automatiquement pour valider tacitement un rendez-vous pris par l\'usager',1,2,-1,1,1,0,1,0,'173d4670-d64e-11ee-a4dc-0242ac120002'),(2,'Annulation par l\'usager','Annulation du rendez-vous � l\'initiative de l\'usager',1,3,-1,3,0,0,2,0,'173d4957-d64e-11ee-a4dc-0242ac120002'),(3,'Annulation par l\'administration','Annulation du rendez-vous � l\'initiative de l\'administration',1,3,-1,6,0,0,3,0,'173d4a42-d64e-11ee-a4dc-0242ac120002'),(4,'Report usager','Report du rendez-vous � l\'initiative de l\'usager',1,2,-1,2,0,0,4,0,'173d4b08-d64e-11ee-a4dc-0242ac120002'),(5,'Report administration','Report du rendez-vous � l\'initiative de l\'administration',1,2,-1,5,0,0,5,0,'173d4bc7-d64e-11ee-a4dc-0242ac120002'),(6,'Action d\'arriver sur l\'&#233;tat Honor�','',1,4,-1,8,0,0,0,1,'65a75fb2-0fbc-48dc-b921-124335131427'),(7,'Action d\'arriver sur l\'&#233;tat Non honor�','',1,5,-1,8,0,0,0,1,'fde24f70-324e-44d2-a147-9707c29be80c'),(8,'Action d\'arriver sur l\'&#233;tat Rendez-Vous Anonymis�','',1,6,-1,8,0,0,0,1,'ccd14851-ff67-49ec-8e57-e108f07c8270');
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
);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_icon`
--

LOCK TABLES `workflow_icon` WRITE;
/*!40000 ALTER TABLE `workflow_icon` DISABLE KEYS */;
INSERT INTO `workflow_icon` VALUES (1,'ValidationUsager','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0釖�\0\0#czTXtRaw profile type exif\0\0x�՜Yv9�l���^�a9�����5D�\"%R�\Z~�T%R���s3�����{���dML�斳�Wl���7�>�����������g���f��</�M�7��z����%�^�_7�u!__z���Aw�|�z_}](��u���i����a;��k��ԇ����X0�J\\/x�wp��g�����߯��x��B��2Ɛ���y��\'���l�#|6��������^�������>�Ƚ}�?� T�f�_lwΪ��gw=f,��kS�u��o�2܏e~�O|_�����\'[xs�{\Zל���E�\\w���u���߾�����}��⛟A.���/��eB�?�^��kq����o�ʝ���q1|��o�Ջ������Q�:w�Y��X�W�yN�.\\��˦����6�n��K�\rx0]3W6��x.1��[��9�d����]Y�`\"�X�x�f����sر���I?��K�/g�	!��uo>S�}�O�yh�J��kZ�8+�D��X���B�&��SI5��s�1��s�¨^B�%�\\J���^C�5�\\K����|@Xj��jk�wnڹt�ӝw�>�#�4�(��6�$|f�i�Yf�m��WX��ʫ�UW[}�M(���λ���X;�ēN>���N��˫���~����^^���}_��5^.��Np��3<���E8�g���<\'���I���Kr�r����tܻ�~x�~3)�-���<g���sF�{y�W�}��oE	�A�B�Ԇ��]��]5��zr=����(gϲ}_y�Z����R����Z��a���dv�\Z���F^�g��v9��8Ύ��ksz����tU\'��:u�A�u�,q�3܈�4�F�ٍ��\r���co)o�غK�Ѭa�Ӭҙ�8�	8_3cr���v,;�������Fu�G����VO,is�r�m|��,��]\Z]/�+�7������V-3�SK1��	��)�9W���\n��=ج��{��L�BJ|�?�u�rƄl	߬�Rܬ��	Д��b��{r\Z��E��6��8�׳�k�.���B*���sE��ĴOm=ѕ��\'If�Eƌ�H�xXb�&��R\nZӖ�-|\'�#���ީ��\"אZ3o���ǎ��Xu^<\"r��\nI_�\'���ל�=k������Ʒ�s�Qj�X���cq3��ڪ��,٠�I;�z\n$v�#��eƩ�sc��q6^�sT_���l�%8�jk�PD.��zc(�Sѿ��_��=����������U�u_���騩8)�&1\rno<ٕ5�Fk���qO]vG�/�����Nc�{k�E�!Q���xU��0t�J�_���ua�B�0�p3�7RՌ4�Ӱ��KT&��{��k�����42��ڥ&�\Z*(l*�ik��$\0�7��+[�/���r�/�X�_b��=-�|�;I��ma �6��,���}\\���0s?���^�}_ֳ�gI��]қ��s�b-�*�]6\rd�}%1����/I������6$w�e$��2����j|��\'��� �c� �^�������3��A�x\"{Qy���g�8��rLn���w]16�EU\"2�r�l.��Q�����(�D!C�]O���7���7�N	��[�z��ӧжS�!5eؕ��r��kA�	fGlC�~G��R�-��lH�gmz����9`\'6P��`R��;�9��\0[(�\rA��-�*��0��F	K�����K������_\\�\r��l2W`�L��#.�?)/ܓ��)�ͻ�x�:��9��ڃF\0��~�r�04X_s�$�Ѡ�\\e@�\\���������3���	����������_X����_��_���i�%~Z ��/������Dt��aR��=&�~�y��Q�92�\'i��[+U1����P8\"V�؁��y�p��a�?�0�+_ʳ�������Z(�e#�C�})a�W��3_HC�q����H������{�d��N����u�ئ�����栊-#�&df��c��������T�[���|ǌ���<��j�\r��b���܆2չ!�8HO\\���(Hˏ�M��#>�UC.�8��\Z�­\0�\n����Th+8�(\Z�bh���n����J-��b՝kDv�)�,�\0�9ݟO���H�`�����jo!!_��\0*ڇػA��-�����o�ٝ����|�8�O.e���p)�M���K����K�oc�o^��&}�֥��!o�.��[���4��+�d�^���ĵ��m��;EP�G�@I�lT���{�B�L�F��[����ݠ��r�����\\�*�#�C�}�\\蝚Nw@+�c��={:x��)����z��(lв\"�Y��%\\������;�*��+��#�ڱ�iȝU\\`\'.\0,V��Ɇ\Z�K����%���	�Е�\Z6R�-\Z�w�^�(��)�]�����o��E 9X$hG�0���*Cm��������`d�]F������U���U�RBB=�Q@4}�a��]�\'*���ͺu\'�:����o�U����QyΧ7��3�T�{5,)Ϣ=u�+��(2�N���Qs]ݟu\rY=\"V��@��8$08�|�B,�\\�w�s�Yj�13����ę#�cO;;�$����ٮz�%O(v\'����z�����F���b��~������u	��\"��+��/U\0>��0�~�����M��6?jE1�JQ��T_��r�e��\Z�>K��H9�55s���R$nu�!V�2Y��N����s{p5�S�\"q��6��#�&�\"+�ʺ�g��ݺ���~�I��]�����Ƭ�B?s���c�ۅ^ƞ�i3ի���g\"�}[P�M:=z��7���j�e����Wf	�����A�M�8�Z�-��m���A��w�E?�hf\r�Ap�q�R�0@�[��ވw�^������˶�<�¢�#�2)u����$(,H6T_a�oQ�]=��G�/஦���|c)a�����x���[(��X�:$<&����wq\r���0��\Z�z��8+�l˸k��{n�\\�\\��5���Boa\r��@Y�4\n��I�;�\'^kI�+Wu���aa���h$DYh����#!ֺt&�\\}t����{�>A�4�=�Q�lA��<�3N/��`%�~�Ndq�I�X��i�VR�;4�W�U�����Q�X�C�T���\\=�g��,t DS�j�k�����p�j��䩪��4uйf�M��J�C�O%a�wp~Mn�\rYkQm��*����;�	����	��M�H�H��w�@�Խ�hy�-������W�n����_�~���\"\n��m�j�����o,�5�5R��ڈ���ĉC��U��z�P�Q�YV��&�qc;o�u���^�ȋ���dBhF}zI�vXޖu�&�y[ֳ(��V����EA,���2�bV҉����e9\"j��r�C-j\00t�������EWd#(^�^m��jc�C�o\Z\n�z]y�M]M{���b��l��p���F\0B��=��*e����*^�r�ʗ�:�f���t�T3�;��wV���df��[�/�2���\\!Y�d���Ȇ�!��<H�xe��M��\\r��a�uO�|�����������$����@��Ԏ׷�5�\'���Sr�i�߃����C@ڊ#�?+t�dOHi���kڮ��E=�/W���ꃂ���&)`�}�V�\r���\"N\r�v\'����{jx��5�=^�)J���Z#갋+������{�es�����\0Y=�\nnh!IJ�ѷ��p/qj��*�6��V�e��[�ѝ�K�e����S�\"8W������L#;�e�:�ڻ�B|�iFD�W�Y�0Z�iz�@�B�	��*3��ݳ\ru�Q �\"e�4�$,�^tb�T�ӂ�LJid_�-R�eOd.�I��Ɔ�\n;ł���T�u�&k�ڵ:�׺7�T���sh��c�9�NĈ*���-\0!��գ��L(|9���}3��x+S�`Zp���]��/A\0�,����d7;]<[�i���d�i;���H�R���&���x�O�&�W����\"��2�	���Vo�}�Eœ;D�B|. ���2YV����ħc#0SV\\�qY�n7�[T�S�Do��@��b�˦U��Ġ/�g����4�ިި�N\'*�j�#G���>�������i�@��\08���y�!(I/�\\带l�:��,!��t�C�,�G�F��й	��$�FX*(wôY�HZJE{�.\"wW/�9w������Ճ�^�u\\ǅ�8x�_��:��\\��[���6Q#�y�(d�f��Ւ�\\n���w���>[{�l5�\r��j��^�_��)u�到��m���#�)�K�.�4\'vW5�R������Cl�b����v<�]�b��/SȘ����Щ�њ\'#S1�q��D��Pw���\"�Z�ԡ�J�\0b��LX���ܖ��u(���g�mNm�4��;\r�����[\0sO)a��I��)���f�OG5�M�����������U�7�Ȁ`�:��S�bK�\0p �F�;%���i l�u*YL^����P*�3�����շL�h������l��\Z����X����\ZS�;�m:O\'�\n)�:�d�O��ޢw;�� *M)��!k�v�i.�)�|�R�)lne�\Z.��H,�N}}I5:��o.J:����@�&�RWG���\r�E�Tn�\0\n�#o�U0Fo)hd�7��뿣3b3��6�x�T��bP�rxU��sS��*�\0�Q�H��X� ;�&��D��X��m�U�n���a�w^c>��y�?�ɣWࠠH�b9����{]˜�F�|�p�F�s��\0嶥zZ؈Sj�)~���|��[��8Q�������r��0ڠV�iX�~�\0N���j����͂����\n.�6u�6$����u�\Z�\" �\r,ht��8������Z:�XH�-�)���x7�4���M�(/�F��G.jÁj%��!�b5[�e�5ȉ<��ϡo�-֞�)]���F�SG�7N�XK���\'񦃴H�huEt��RL��>?)�	B\0�E��ט���:F��8���m�R\'�!�*�2�(6x3�Ə��DS[8�<� `S�\n5�zST���h�c.��i�4r[v�\r ȠO�\"j)����yeD\r�<4�UO�� Q�uF�c���sgP:\0������z���=:\"��� �%X��.\Z�V]^� �}Ò����Z���*��4����XѻV�*)1����C�٨~Y������Wތ�v�:�\"�`xXp%J�3a�\r:,~a����&G0��KnX�啨.@�E7����>��<��\rc�*�jw#\\*qZ%X��=����=\Zd��N����\no�}Z�V�_���}��a�8�ISx N��]�S��(�/4�Pԣߞ֛o~\0-��(\rg�H�H�\n�&v����Q9Yj�r4uj_ęHO��K�G�\n��߷��yA�b�j��Sk�\rԐj@k���_D��fA4dѕ�h}��/�u�Y�A_B7�	+��!�Ee:�2��>�v=(����I���J�4I�\'m�Ԋ��K��u�D|�(������b�iBn��(�W�!4����h���]�0I�vB��S�]��D��ظ:}h4�L7�nB�KM�@B�YG^kb��xJl�!\\М\rⒶ�%)b�)Tԫ�^��\Z�$��\n&k\ZSR�4�f�\'��\\�\0���$����\ZH���{�÷?Ө�C���\'U�<}�	1�ˁ!�X\r���Dl�$#j6�J���,��X!#��r���P����D�F.D�H=��Ƚ��!u����Ǣa�KJ���Vr�X�j�����y����=��9��D[��|yr���|E�4�@I*v��>%�+�)jG�O(J�މ\\�gU��bƲ����J�>����W��560I���3A�ǐL�f#Yǉ5C�iֵ\npU�J��ۍ! )Y:M�nA�cy&%���� ���a\n�4��ubʹlC��ܰb����!XV�N\0�0��\'J	b]E��Ryu�c���N�R���06�\nv�\\>��p ���)\Z٫-��8(Ѩ�R�M�H�TT=���u���ټ��v�_#����o���$�$Wi��\"s-R\"ę�n���}�8���pui���Y;K	��eJ��r2�xx&L(M+��a���C������K��\n�jg���R�����53��A*�T�1�|�jwk4���:P7 O���b5mEt�E�X�p��������]��.��*�a�x�(D*��F�#�U����Nϗ�f\rˎ\nRZ�	q�P�}o����UȂ	,YC!�j$h�^D�}͡.�X�:���EM��!��4��2�H�4k��0u�P��ڬ� Y4q��Ȗ|x~�J�V���D��d����V�P6j_>I�`�7�&�/��0��q�vj�O�	���䆓gl��o@ˀ�HQ���e�\'�S���8���X�V�RM;\Zծ��[�4)M�NMW���t�6��oV�|���\'t�>�X+PFcj�E�;�q{þ�����s�]���\0qun��{=#�홶<��yAa�n�C� ���N8T��A#J5ց\'4���W]�Y-R��X�ί�k$���~X��ޟ��ޞ�G����г5��呼��r�޿�����s9��nu�*�]}��Ou/�2\r�\0tE5p��H+��{���3��EH�>c�� YM���j����3�=��	@:	4��rUCsߺ$��Q�8�����47Y�p������Y����NQhN�8\Z���F��bS�W�B)��5�$S���?cE��fk,%�R�D��u�6\"i���^HK�!�dL \"�>�&�����XM\Z���7�O��)c�\0�\'Q6�Р��G<�Nb�B�j���]��{ֽ�%\0*\"��Y@Ra��.uæ2�1�2����O�C/pZ*DMf���Cn�5-��.�&���(d\n�b�G�T�1\\�<����+�&/�d9Td�@{�ģ����(�@�V�b���D�Yt	H���7��V�4��n�G*�~#����\Z�5 ��M[ű��G`K�!������5`��L�Љ.`밆k\Z���[��5��`|�����\nFB��t�B��!f<���-�U�vR��j��,?�%��K�BTՁէ<�d��S����jJB��N�Cq笾6x�uʴ����82�\Zś64�8�O��>0��y�F�4C�*C@���ʠs���?g��`�*��R�`������L���\\ںE%\\\'I�R�UT\'��#�����&Ĉ\"dLn`I��A�,�x�#�=�p��O����S�5�5VU�O*�P�L�����F������5����,�0�R�������iC\n~���S�w�S�������)Y\r2 r�XJ�:�\"��m��7\r����h\0��� @�AT�3h�ɽ��\0��H��P��s\0��ί����wC�7�[�Mߖ���yRA����gY?-J����O��3?�������E����?��y3ֿ��y3ֿ��y3ֿ���^\"�Ԙ�x�U4œ�$�#�%up�ُb1�ZTW/>��\\�1��fP#X��G�@���x:�� �Z�[�ku\">����C�ɮ���s�}�����j]�NO9I�\0�)�)����*��ԧ��I��L�iJ[D\r�5��i��.��&�螐�Z�c��\'���C:d�֢ ��Ċ���-ຼ�A���`E>�vʺ�g��eC)�vUuHO�\"�����]�γ�2��j�R���.�RL��ҹuA�R��rr=�h�#j�]��n��1i\0���^u��j����W�o#s�^E| T8$����&ʛ�s4��A��H�;�=���X��*�*C(�y�o-��9=	��z��\r�_v(�E�y�E�q	�����r��Zswd57���P�ml���X���}��3��p=(���@,Ҍ��+���%^�.�n��t�R/pz��VTE��y&(Qܓ5B�����\Z4����a��Z�93�*\n�BB�E�:bї������T�\"�����[��>�B�F��O�$vL1{�~WT%\'+�5�����^�3�v��0H��������)p�=\n\'�6\r��N�!DM�YO�,*�-!��>r�lcyF�ٚ[::D�p�U@�i��Q�G�(���q4����}-9����4�5@a���lܮ���N8wӺ���9pU�ε�(� �4֮�8T��ᯨĂ�٣�.2r�F��T En���P��s\\��_ -�7RĒ�		�?k�#�w��N�F��Hb�9�M�CϤ�5��h�iOF�}��{4K8b�%���y:jgg�U���\'�����%��c�=�JEe�`��ȢQ��M�G�!�1����nш����>ϱF��4�p����7�)�u��fQSYG�9���u^9w�F�Pr�Jc��nit	��j�qf��nW/Դ�o���C��l��+�<�����p�=f�.�̋s��MM�]��0��	��S�^Z�^�\"	.�-�A�zM-�=Q���9�I�\\t�~�+���^R\Z�_uW��[�,�TsAM�z,������h,\Zv�~q��\Z�LЩV�a���6��\'Z��P�׿\np���ȃ�����M�$ ���I���eF����S\n6r��_�ՋkzGO�PRi�sxf���)?]h!h�����4�)(5��ם �=j��.𐒨���e#�0��d�ٍ�1�f0\"bG=�3�Fq��HK�.���� \n>\"W)Ą�-��\"�Z(�Q��I�\rvZ�üύ�\\_S\Zo�s�@To5���]�������Ȣ�.�k~\rޚ�R�\"*��6h��\"�f�^�M�\r=�T�}�\0��@�i�Vkg���s�Z��[$3A��Wõ�+���\"��]��`�K�b����k3z���#����?�c�6^\0\0\0bKGD\0/\0;\0�熪G\0\0\0	pHYs\0\0\0\0��~�\0\0\0tIME�80+��\0\0�IDATx��{|Tս�k�L��$L1�^!b��\n���WA=b_G�~��i�9��{nkOϧx���ho��ǹ��GE����h}TD\r�P�h#��\0	�	�a���cv0��g2;�}?��|x�ٳg����[���ZJkM�QTZ/�*�\r�c�}���6�\'���\n�{�U������z	rOD&`�u��	��κᛥ��=�2���\\����{2\\ez����VZ(�\'�M�*������,rOҎ1H��\"E�`U\n!~V�=q�L�)���L�3e�I�ID&A�AdAd�ID&AD&A�Ad�I�ID&A�AdAd��%�UV�Ɋ�6|�,���u�Q�����^�ɀ�d��wE�d#�t���3�d�L+�.(	N�Q���VO�=�^>�\\ m\"�0D�����}e���!�|�5(a��hAJL$M��ޖi��$Q��:��L��R����4$#z[�*)oa���mM<�x�0��L�LRւ`_�\'��$\"� �L� �L� 2	��$\"� \"� �L� 2	��$E \"� �L� 2	� 2	��$\"� �L� �L�0x��x��>HBz��P�i-�Y� 2I�\'\"� �L�0�q�/6uN�dJ�[�֚)Jq��h�{Jq(ֻ\\�\ruF�� 2�&�	|�e����\0���x�� ۭ�p���\0�\0���Ta8�y��͆b���K)V�������:� ���y\Zv\0�Z�����a���G]�!*��<S�c��H��0C�VS�|�:�)֟S�GC�����[\n��z�Ta(% fe�U5P��Ͻ>ۭ^�\0�Xn���\\Gb�ќ,�,`0D��\0,&�S��x�?��p?iܼY¼�E����tV(\r��Pd\Z���x;,��Q5�\"�&&��<��\0yR�D&G1�O��J&�(b�Ju�C8b��2ԝ�xm.C���˥J�LOkG ��2�\\�Z�n�q��Π̔�2��s\'0/�/sN~�{�T+�)�q��Ud�Te]� 2e&Z�\0��2��5��j�L����W�Lo��%2ef줸�I�����LZs50�a�Z�5UR�D�L����A!��r��[�2��-�R�D&A�h��r\'�S�[�}&�!}&�I�!�9�`��-�)�¥�����e�^\"S����T�R�D�L���e� �Kd�4�:�lߖ�%2eV�6\0�+׮`��+�Kd�(��F�[��Yn�T/�)�+��R�D�����y��!e�aj��T-�)3/R�F�)����PJB<�)��?h�:��K��2��a2w��&� ��J\"�#�W2wǉ}DwvD&G�M���ΰ�궮˔*%29炕�3ѥ��rI���Rۥ:\ro��YGw�Eo����uw�W����	D^��qR�Cf�(2\r6#r=:6�!lj܆\Z4�¦��Zs��\\��»=����6�3��?���� ��zLS�u&�f�ې~��l�\0�n�0�Z��Mk��%��Ӛ�����#R�G�y�/�����?\r��|�S�h�a2�!��~Z����v|o�������\Z�X��%.C=����\Z튘�_�.�R�oj��Y�TY��J��ۅ�=��ۥ6t�	���r]n�\0W�8U+Pc����`d�/�G�X�\0&H�7D�*�6�f`T��\r��KT�ed�yK8����M��p�5��0���r���,��d�cM�]�\r�RS��P� ��o[]��=��>�6���Y��Rq�r���rCq��ux�P*Lt>a��7U�D�!v��T\\|�\nʌ>�ۈ��X����<�~Ȏ\r���l�q+��P�_f�ZlRgu��6�C@�5�|Q��ε�҉Q��ƮW(l�����ֺ5�0��bj=����e��S�8��iꟇ�f�`\\o��2��f�\\�j�+c���z�S&�3e��w��6���\\�`��yPÈ4]o�����+\n���}�J�\r�Km55��v�om��qxk4�M�����+Q5Պ�f��\\�^}�+Jk]���^lN�Ud�F?k(���[X������g!�R�w�M��U�[��`�tk�`b���:n�\"3��*f\0�����V_z��Ф�(�t��4x(���LS�\r���q��Cv�41��z�Pj)��bx̺��&�\Z�C���D	���>+�`}�3\0��h�{�#:��3E�T�ԗ�ּ�?2��1��J���J]�5�Q��R�e�PDWVJIH���L[�i��:�����7��_���#Ǒ��RZ��j�>�k�|��/(!:��j�_��lr�e\n�M_��خ��TA\Z�WBs��e�X�2�cz(b^�qW\0��1�IQ���e���A��ɶ�����CM��հ���NR�z`�L+��b�4��L����~H>kL$d	��y��\Z<�4<���A�0a���`곩�^�2H�\Z�V�A���vTs��_|�M=�)�����m�\\Vz��b�B�U���KEE&��Q)�Y��_=�Y�T��\\<��	�\0�\r��l�Oy��ci��;\n�⫕w1�l6ٞ�%H���]��t�e\n�ͼ,��g�ě�N�a�l�����\05k�_�~��V(�����\'�*�*R����z�igr�^i`��\r�ON�`��|s��,�rݠ�����e[�c�3��[��=<D�wh�IR/-2�M=�0�7E���0�7¦�⏩$:�7��蕇�񧊴�t�J5����������;y�RFZeRp��\"Q%��\Z��c�is\"Ɇ�u{�}�ʤ3s���G����V��жT���h���o\"�2#:�e��E��q���N���D�I��7���9Օ���JU�~�}�ö�\Z\"��ҫDgS�/��jѩ\ZB�L�jf\n��q>�\Z�ޟ�c��/;�0s�i�|�\rL���7\Z8Et�v��F�I)n7*��IA���xE��\Z~���-�I�r����)�S��I�sx�h&�������\"�!ӫ�O�\n�����v�ze�&�ۛY��rG�PU����R�/��Jjx�$:��*�N߾RZd�z�Q*:W�?1��1.��tq���\0���{���ǥY�X8a!��J�{�Dg��D���t�y7�I�̦�n~<\"ݿaMF���a�*��7p��K���1T�U�Et�{�g[��ʤ�Z|H�����]ox�v�ZǇv>�ϭ�Vr���7r\\��]_�2��)�)bj�ň���\"�Nf��{�	�^{�5����_n}��Ҍ/R>���E��8�L&C���DR\\n(��c �L1Q�Rϲ-�9��&�ʹm�Jf��I�\'\'q\'фN�dR\n���I�Jx�}̭R ��^��!Q`U�b��f��c֤�ϴL\\�r��U�>P���|��+�ۑp��uJ�\'jg���DB�*�V�����v8-I��gQ�bf��ig���8M2i����As�����CC���,���/D���.�IcBD�r�\"�u�[�1��DZ��?�U*K+�e��:_8���s[\'C��cU��n�3���Wz��+}�+�\\A�7?�V��&-�-�eE�e�	�#LM��k[¼�=!� �<P_��R�$ֹ�摗����B�����Xk̛P.��\n�)���1��b���<JQ���8D�)��j���/��I�����I�6ijo��C/�һ/%�:I�7�����_|��_��$V���\"�=��}��[_�k��@(w��L�P����;zFx�4�o��5��0~�!�?K��!\0�\r��2\rc\n��)�?��t��:��kʮa�tRcJZkڻ�y�������\\�����uo�z\Z?֦�\"��x���5�Kob��������+��0\'�N�fݛl�y��/�	�\"��2���ۛ�RŬ.���/�xDq�}��3]�?�����t�O��Y�R/2�L��p�a�~��#oae�J���0���3B��6ֽЎ~�9�th�e\n�:����9�h�	�:�a��X�w��G�åY�}�%�\r�X;z:�zd+���v�cη�MZe��E)��\nɣ`��P�phLɇ��Y����Y�+mI��Ajjy����ٻ��trS<I��m���V��)�[��s��I_�[Β����M.\r��i<��������h4�x|�}���=5��-��V�����@dF%VN�����j���t��=Y��՟)RI��Tn쵑��>Q\"a��RoM�M)��\0Y*���o�,��n��p���f%��`Č���\Z�.R)�G�f�!+�&���h(�3��(q�f�ocs�������L;�w�7S3<����VJ\nJ�N:�{�{��ip(s��2�G�R7+I�\'�W2M�6��h���2�d.����Qy��e��v���Ȍƙl;9�w:��a$���o{��ϲ��ٶ�6�<�f�rj:�թ��3hn-�q�\n���7�w�-�9����RcU�k���_�bLE�E�\\.���N���1�1L9��\Z*�i�ag�Zul\rm��r�L[���OzFxČ�����p꥔�IJe*�qE4���+��O��.�υ9�H���x�VL��9�����~j57;�ҢR\n�\n[0�Ʌ���q:5��bgp�yo>���\\��ɸ��hkg+�j�\r��x�\0T���u���dDLti��3���S�\\�bɤ%̞0_��o��pQ�[�/�GQ~�#K)o(碓���Qs���J�5\\S6?�庴ִv��m����_$t��#��I��q��O%>\'B\r,��P1���I�\\V|3�Τ 7��=n�#��A��F�qQC[���N���\n�����ET��H:��]��gN�6�s�xb�\"�q��>���Y.���l��S�F��Y.�-Uk��U��3�	�`�q͏SJ���R:��B�����E\r�V�[��G��d���7aE����jj�ƶF�}�YF�K�\rL�Ld��;��^��R�U���V�lX��`D�0ۭ\r���rP�3r�R�;����}����\'7;���\"��gjc9�\Z��a�a��p=eEeI/m�����S�&u�If�`U��<Lt���\rS���_+E}�;��U[��QxW«�f�,��S�?*����(����<JF�PVXFkW��UF��IbVx�s��0�?���������8���7��2�55��a����`��K\\8���Р`��æ�mՆ�]��#���.+�<a�ƻ\'0�;Cٓ��\r�ƍG���@8�/�G�;+��C{W;/׾�������dn�w��D�;녩�ϥT�P���:�R�K�Ԍ��E�)��$ޡ�A�r�;�e��|�t�Y�%	���>�p�I_״��W�{##d:�R]VVkH�J�L��İC�Ԓ�	@��NB�PJ��-�u�5�l����J�z*FO��L��!bJB�85�_Z\"�m?J[W�;��J0����<��q�n}ҖsN(*���E�a&�O*�l4�����y��=:�t��ΐڤ���}\'�Qݴ�������n\\ɇdüG����<g���)ϛ0j��w�����/����	����]\'�K ����Mu�}�T�X���Xm��!KF�YRw�IŅ�/�h�-?�Ý�����O�OiQ��{��ޏ3#���;�w�i�������*I�7L��d\'���j��<���<T� ��9�v2��(�5݁n>h��W�oL�1��x`��p���-Ukx�t�҄C����S�c���,k����K�>�ⴅ~�H���&j��Ŗ.��3.*_�����$��aHiQiR�!��?���\'v���vn*]εS��삲T�v�I��L\'\Z��icR3�rG�]̚sf/VZ@Y-�k���n/s�+m=g�ӷ�\'��܉�(.(�噤s�	�p�� ��z�_|�S�λ�ڭ|~��c=|5���/�5k�\0\\�9�pct�h�?<��3����tq��^�5��T;9ʋ��\'ۓm[�g�&�>>�����?�i�j[����-��fP��eZ<!�k�Q�R��g\'���W�,`��,���Iœ�^e�L���������u�m%�}�xB�\'9g��ޖi�eY�T��?�OΩ\\6��f\'���v��ICs#*���D�HtVxo���_^��O�c�̳&>�-��ZHk5p��?�>��U��R���ܾne�w�(wMg�7�l�2f������iڞ`�~���!�ϼb۵���bq���A?��LXY�B`�T��E�\'�ɹ�Y{���~N���w>�ʑ�:z:{�s瑟����R^�H���\r�;�G~s�Iۮ�+_e�����YM�,^2l\0&��$��a���w���R�Y�\"G�ֶ���F(�9#���\r��q0������5<y�	>2�Y�����y�[�\0������A�v`�T��Ōgl\n����/\"Hm�]��짥��l����?;6��Bk��M>>�1�NbC�^�����.�.����nW\\��k9�ج\Z`�o�e��R͆������i�]pN֕,��S2�?����&-�-Ԟ�[Ol��S�Q9bˬ���<y�S���\0%�����W�V�K�}�d.1�&l�|*����S4�\'��p7�?>����\r�g�,��7�R>fZ<oi�\\hKF&��Tg�v����,�QF�����*�=�������\'2\ro���RE�\"}j�Vd��shCE��H��ZE��y���\n+���b1������c���c���H�V�ӓ�2I�)f���<��X�/�Ĭ��u���>	�W�¥e�e�UI��Kn��-u�Qx�#º�7��_JT�o�#��LÛ5�yc ��@uƶRI�F1\'D&�/kIbP��������_Έ/����sΪD�FI�$2	I�	R=1�i��|URl&+��$�r�]I�\"\n���.��-kK��w��_��\'�U�\"�LB_Va������n>L�ѷ������;�Rf���l(w.qe�D&!*�f��v������O��fW�N\06��������g�r�VT�y0�p�!\\�{�l��D&�\\\n��A�?Ŀ�^K��v�Pƙ�si#:��m�-� �Z�v�TZ&a ʬ��Pi��Z}�=�8��L�@�Z��D��t*��w�L�H�2	����^~I�i��Hd�j1�;$�;Xe�2�O��h�`|��$�A�4�*ҿ	�^K��؜���L�����P��� k��h�|q�IHG��z�ɲ��bu}$�l�{�X���O�����mZd\0\0\0\0IEND�B`�',16,16),(2,'AnnulationUsager','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0釖�\0\0%-zTXtRaw profile type exif\0\0x�՜Yv=r�߱\n/���x^���,RE��K�?�b1C��e����1�şւ71��[Ζ?���;�T��y�:��^?s߿n�|�����zcޯ�w^O�~�������My]��ׅ^?x�`Н=߼�W_\n�yݽ�m���z�0���k���/=?���XX���k�wp��ߪ7�?�~�v~�y��������3��~Z�S�^;�_��/������i�^�������8\"�����#�d?���v�z�~f�cf��yMʾ.q�㍃���2�O|_�����\';�����i\\s��>.��;n߯�M������O�k5��ڂ����ZX&T�g�k����Xܽo����r��x�w\\���������~�s����,w��W�1��˻�w^k���޿�}[����v0�e�L���\\b$�-���������>���z]�%�މ�����Br���}q�u��Og䤀�K�/g{Bfs�׽����{}���@�B&I*;�٬�Sb%�z\n)��RN%��R�!ǜr�%�z	%�Tr)��Vz\r5�Ts-��V{�-\0a��VL���޹i�ҝ���Gq��Gu��\'�3�L3�2�l�/��\"�W^Ŭ����mBiǝv�e��v?��	\'�t�)��v����v��]s�v�׻�^����}�ۮ�r)o�p���=c�|t�x���g���vN{f�\')�g�\\��,�c�v>��w�v��fR��}�?�9�����9��{�܏��Ů�~%�\rRjMm8\0oص���I�ד�a-�m�r�,���Ǭey\"�`�T>g����q�l��\0�ݶ�1r����Y��]��<��c����؜^��b*]���\\�3Ⱥ�O�%��q�1���h5��s�!«;�����]�&�f\r��f��D�iL����%�˪iǲ�Z��~�mT�\"�ȕ� ���!m�T�\r\\A��٥����s\'����i�2�9��{��~̈��s��U]�9�A�0K��*=�Y&� %{묝}����2%�f�����fe�L��Tweklޓӈ%/�u��}e�|=^�����;[H����E��;1�S[DOt���I��d�1�R�A<1ZNM)�ô��m�ǉ��sy�w*��=��bkH���_��cG�g�:/�wJ{�����KS�kN��=c��W��S���ݞ+�R{d�Z�>7sO��ڮ��\Z�:IbGTO���}d���85wnL�v�#�����KVr�M�GB¶��Et�2�0�7��?��{\r�����,q\'�]�?�l�}G�wC��tp*�x1\r��\"x�+cҍ���ٞ�<�\0_$�aP�-v;�\"�I�\r�b,�A�~�W�C��d�݀a�Zܳ.֡�9�:��T5#M�4,;������$�^���*��?́����R��\Z)(l���5��\r��\'����4_,f;�i�x	���\"C��ia���I\Z��o!�����~>�����̜g��Ai�e߇���n|���Z��r��ZzU;vU�4���������p���Z@Q҆�.�F�y.�!�TV��:�xRal�h�b;0v�B�U��ď�\0V�0\0�o<��`����L�\0\'��������������̲�$�T;\n���%�(dh��Z���~����7�N	��[?�`q�O�m��5eؕ��:���BAM0;�6p}�;:=LU�\0#3!%�����瀝�@m��IuR�Dr6T\'\n�P��PY[�U�\'�1Pō��_S��-w���ob§����a�r���f��Bʋ�ɚyC��]j��GoFF{������{X?`9w\Z����/$�h�E WH,W�l\"#�:��:C~�=�C�,�Az�k�?H��\n�W������N{\r����\0IT1��.~8�#J\0���d���o4HΑI<I����Z�J��vG�٨\"7��>�C�!\'�RF�1�H;V�J���=G��r�c�H��F���R�l��#g���%��BG\r�1��/(~u���{�d��N����u�������D��䐊\r��\'bf��c����������-�s(�1cmf��Ϋ�Zh��qE�6��Lun�1��%�q��#k�)3��è�E\ZRH�a�V�|����o�\n�6�ƣ��Ƥ$��a��t��DY���5\"���<<\0|N��ӣd�0r+,���j�tp��7����Ϊ0\0��C�� j�+���k��V�����}�A��&�ɥ̗���2?	տ��9���R�1���2�H�����3����}��!Y��u��,�k7p��v9�\rаc�����\Z$)���\"yzg/L�A6�oU���wC.��Qd�+c\'s嫤Z���#E�A�r�wi:�� ��c{�t�^IS�?�M+���e{I���e�n3�%Z������;�*��+��#��YӰ;���L\\\0dX��o!�	5��O�R+��7�\"�#W��h��[<P0q��C�2]�ꚛ�o��� 9X$dGF0���*#m����5���`\Zd�]F�����`�|�\n���Iq����r�v5�`���u�N�:����o�UԂ��ǈ���M�\"zF�*|��%�,�S������#�z�+5������k��A���7X,�!���c�1�\'*��g������m��$2]��3G`Ǟvv�I��g{g��u[�<��N&��G�@��7��ÛثR$��-���crcDB\"\n��\0K\\�KV�]_�\0>��0?Y?�I�����#����f����ͪH�~T����t�F{���G�QM�B,��ID�[�nG���&�	>B��xn�\0\r�Bг�Bܩ�\r�|���Ob�VY���qc�[|!��SO1�]�k���H\ZNh�8 ��Sw�\Z�.�2�i�2S�.�?u&B�����ߤ��]����&]eZ^�n~T��1���O��t���roY�[l;,y�\\�s�f֐\Zw��]�d�rK��\0���n�;�.�P���΂��ʶ�<֢��#�2)u��Ұ�$(,H&T_a���8�jl\'�/஦�����V�mtD�ǯ��-8��7��B�ǚX�!�1������k4�/�����\0����H�-��\n�����ݞ�9�\Z~��k�����r��G\'��ji���ɮ��ҕcn���}X�Xx��B4�Vh́@��#!ֺ|&�\\}t�U�E{�>A��=�Ag���N����\'X�>�_��Y\\~�\"ֵu\Z�J�w����\n��2S8*�xH��H��̞���hjHmf�2�Uq5-��F�I�*>������5sm�0�U2\Z*����Q�5A�|�ւm��*����;�	�����ǢwT$��I\"Nջ|�i��AZoK�oj}U��pX�������W{�{��B`j\Z�mbx\n���%���F���1|(N\Z��/�[�)C\r G|��*�M\n��vު�(�U��\Z2��Hd\"hF}jI�VXކu�&�y�3(��V����(�����x�L���t\"�!R�,�@Dm6n8�����	5\09���M�S|bEWd\"8^�Zm��W�z��_����T������\'���?��Í���L�R���g�z���\\/��ēh�᥃��	]ؑ~�3J��$3��u�Z|Q���fg�\n�\n&�7���6���G�@2�+��o*D��Ʋ�{��c%�fgY�)z��NRX�/�r���٨?�U�G��;OQ^G�u>�}c�H[qD�g�.; �RZ��!���k�)�CQ\rs���;������H\nfኼ�P©���22�}�\0��ˬ���U�����0����Jx��]�\'_6WxM���T0p#IR��`}���%N�_\0PE�M2��\'B0�i@tg.��vY����-`�+���phJ���2I�f��v!>�4#b�+r�,],Z�iz�@�B�	��(3��ݳ\ru�Q�e�4�$,�^tb�D�i�X&T\Z�Wl��aX��m�%��!��LYA�C|*�i�1�wm�����\0$atpO�t4GщQŪ�s	 ��j45�����s8]�o��oeX���	l�k��%\0]�Ż���ш�b��!�g+l\Z3j\0�)Ye\Z�Nc�5��pW\Z�d�]�o��d�U~�f����\0�?�q�b,�՛x_`Q���0�(m�L�ա3�:���bcX������>n������$o���2�b���EK	>1����&&�17�������Xt䈰����B�>����\Z���qjN�wp���R�U�kj��j�W%���.~��\"}�j$k������H򪅥��h7�6+�I�A�ho��E����=�n�a�bc5Q�\0�Z=��]g�P��G���|d:��Z��[P��l���|�\"\nٰ�� g��\"��u���	@�������z�\Z����{�\0R��/B�P]rD9&���6@>��{\n��%��׉�U\rk�B��TG�Gj�b��X-�xf�dǎ_��Y���^�B���57#a�\r���Rg�J>~y2g%�\n���T��f�\"O��Kё�5l�����nJFd��M!*���l����b���:����F\r��`<C���zuKpT�Nm����S5�s��SA�0�e��*u�;�-����W�5���&4�\'�f�꼎��Ĩ�r�����G��:�\"��\nP�z�^#�F�o4:p��$��0��^D?�e]+䓑��O�$vV/�d�O�#�� �S�mMP$����\0vכ�{|���8�\ns��C�5J���&�L!�_�v�ۜ���ŀƹ���t������\Z av��5�ɞ6=���%/\00�B!RV�D�H�$�>�{�?��hH�����#�Q�E�)�f7�k��\'����Ig�E��P.����q�� ��0�#�&�\r��ND��n��P`h�N�q�ȹq!Y�\r�%�q0�ƌ�?�jj�`�	W3�����VXwx��ԭ��\0�͠�b���MN ���bΞ\Z�D�c����<�x�!��}��\"��\".�Q�+g�Eު�4D����`�Pd��xP2�td�*��($3O�K�����\"��+���A�H~�7�NH -����N>c:�7������c���+��O�&�se�Z�57Ua�Ϭ5AN\"��0�\\~���`tx$W�����6Rg�[�!s��Aϭ\0�􌆑CPjHWkه`���\'��,�٣���uab��X��tSܝ��;��q����`��K\n�d3�b�f�s��t~���Iƺ\r6*�Σ����3I��E��\\<���w���S\\v���A�NbZ��BeJ�gx�4`;�q�ї�[����|t<J>L�o%d����%h\n�hy�H�w�p�q�`%�eO,\Z��a�X��>�\0�̽��� �\r�@��Z����I�tHV�C8a�`� K���L)k�BΊ8��ǯ������`�Ж��f��ݣ���}�,��|��ǧ��gZJ�[W�NZ���)i,/�X��!�\Z|_O�+DN\0Bԟ���Ul�2v\Z�JY���,��u���-5ֶ���Ts�1�R�hq��¦��ﰷV�	�H�_�1��*���z]�\Zt�r��~(��_w^��ߪe52�c�AHl��n�e����{�YQ�Lgo1�f����J@������0�\0,��_j���$��\'��Q�D�$!Xi�U�l�I����ձ�8�f8S�꞉쮦��G���	i�c\"���I�!�l�ѻZ3�q9�.+�o����Bbdh!T���e�t�0�S�P��\0��	ȮH�\rT�F�wm�0!5\r�{�a\r���Ho�ܖT K�$��8暀�+]NI$�NĶ�!ڊ BT���)�pH��q�2�_���zU[X�$�8P%.��I�?�$���f�(����^ʹ����DG�p�v�Ae�h�?�K�@$:B�\rthD\Zic�M�_�TCp����U��տ���4I�$^cT�JEn�[a���\Z�?7�1�C/��G���$b�V+�,C�B���\0B�1�CW�������+����NT��f���x���/�.bl�f�z\0�N_S��?.Ţ5ORB`�{��Έ靆��f�0�}�Lc,ɸ�1Ց�V�RV���q1��J{�.�\0*H�[NnVO\0��_�8p�K�MTt����6j�$D��zO�ZJ��B�kX����bC;o�2Y�7��%���\r	��\'tn�m��tQ�Ӫ�E���V�����\"P`|�>YN{!VƋ�R\'� ���q��T�.|���\rZ%���Ŋ��s\'��-I)hUT�����o5�W�^@���Y��>�F	ɓe3Aq��b��S;{�(U�4��\nv�7\0�nc�y�`=�i^���ͣ�\0|�i�Clw��j���\\�u=F\"_:���KM�F�pٯ�n���+��^�c#X\\[��V��lF�U4Pc���=ޓ���z���[5�U��\0)EG�ꜯ��.�\"#��K�}1��n�V��wb��j�V|0O�`�Y�7Q���qGFvTf`\n$gV���K���ZO�mߙp����r3R���ϖ>���6�oI����ʆ+zV�����8�T@[�$}�վ�`j;T�R�\n�rl	xnE7$eD�!tBT���^g�P}c�Aɩ�E5����.go���0Q_���,l$���a��^\0*��5@�㷃�\0��Є�iU�(��j@�;\Z�R��( �Z[��%��k�?����Z8.Y���C,�f���R�@&1�A0,B���}�\'\0g:��Ͼgz\0#,��]`%���F��M�eB\0qS�cG\\~\Z>�+�f9��CJ3/���������\r�>M�h�^��	/�L�V���\0� ��Kp�N:Ԏ��(�V�W�l)����VA�U���)��ȉ;8����v�,����g+�58������:|h�%m5^8�tԂbO{B�7�f��Y�?XN��љ�-iR	�i�k1W��&׳����A�z�)��%\\w���鰷��\r��P\'�\n���\rı����� �t��f�V={O�cM��r_�\rV-B\n���4oW�O/h>�_/h~6�_\\�(��Ȫ`��@|��1���v@u�Al�m�����S��k��]� �\Z��	x�8�����r���<��У3����!��yvÓ^%J7@�5�뫓N�aw��ht�����V��(V�z��6,11c7�\'�!Ag$ܣzI�z�Ӟ>�lr���L��0��.��P��>�|�!��9B��B^sۋBY���۱��U�3Z�#}(N��/U�Բ���\nm\Z�N�ԫ\0�3~�o�	A����Q\\j-�Q�x��cUw~P��:�PQ\'f��� � ����+y��v:S��\".]�	=Ǜd⠔&�8�Yj]�[���m��]�WN��ۄ�-�T�9�9),p�o\"`˯�d��j��G�o�e�V�#a\r��Pb�=UU^�G{=��++�-���j�j��M_�K��2z�����}<Ϋ�dF�uڪC �t�-��ޮ���\088HOΰo�}��C�y,�\Z�,\'�����D�>����/C%����c�\ZQ��\0�YOD`����C�$d�_\'�`XH�0��A�+Qr���+�W)l�c���C��fgnl$:[�ݺ�\\�.es��K��]��iA�E-��и.�w��h:����3#e`��Ź�^���z4ߤ�	T+t��@�/Q����$��js͈`L��8s��\npC��e5u`R\n��Oc�1hzD�F�֨Sj�fU\\\\�1�w��	ϣpw� 績\rPWd�҃ 3b���a����M��\0΁���P\rm�r�T��2k�z��������l���CGbR7IG��]ף�4zUWG�cl�̧�m�4��`�w�Pz�Ob\"�i�=e\rV���[���$	Z�Z���C���5d`8u5.������H��tI��T��R�:�\'�~��bn{��)�Ѣ��A����<�-��Q?�h�0����cw�yko�8(�����}\Z�Wke��?]+�]+��V��F�_+���֪4����qh(2�EPQh\0�:d�zhy�<��0P�o`U�]�9�H�gՉ\0�m`�[��md9q��a�b8�	��9�\0Rb_�,,�!���`��В�f�3q�*��`�Ò�*�wh��3���Yb��tN�C6`�I�֡�j�Qo���=;%�H\r䀘��t\Zf�^�2���5 ��a:\"[�$�\0�\\Vk\'N�\'X��������j6�~��2�	/TZ���6��>싚6�����V��a�`n[�Ӹ��ܾ����a �\n㼅k�K��h9--�q�p-d�����>��$�l�\'D8_���Ffx��tܜ��uF�6/̾mߎj�ҒY�W�G�6AY2�p^�,>�����l�Ī�\"=媇[3̈uӉ���`_�m�Q�\n��=r����f禇�w�,ÜDـ}�͝$�β8h�i�\'��J��g�\'a �ʂ�8a3]��[	�j�&Be��<�g=NMf��PW��L=�ˆJKG�Q�\0;����Zd[i�vPI?SA�Ž��Ih���C�\Z:�Ҟ5z@Q���D5�#!���yM��ݍz4=�������T�m̻w�ۏDk����!���P�B�0��Qő��a���6gd#�P&���������N�����z2��P#,qalXӎ�f�u���):MOp�a�!/�\"����Ԗ�������_�fT�D�@�	�*e�(��Z�t7�I7A���xu�\"\"t�yٖ�7��\'���=�,yg���ϮP��h��)��KE�\\R�\"�zv.U}���w�B�E�v7���\\nvaa�t!;E������j��{�)u���zI`�S���1!AMtE����I�����h]�XT$�JBq\Z�MO�������:�Z�ko��ѨEg�R�����&�m\0J�Ӫ�jIUS�S�� ���<�dv�1L0��i���.���y�Y=��.��a-z5�ԧ1�.z ��B�\Z�h��\\v�0f�F�Z��G��b6�*d��\r0U��z�\Z�P�l�:juN��!��t���ѣ*��yt�Vec��\"�uW����Y��T��Q�iЁ��cA��u�>ðj��LSm[:.�砊��\rnU0n�s����qiO���̶7�eB�n�g����/(�K`�@�^��A��zށ?1����h�YU\'ij�0��Mh��@hM&�*Ӏ��q�n������X�6�,D4�cA���\\��ӪԬ���b�=c��j+�Ǡ���s\\��p(��uۆ��&&L[c��t@����t[u���n��!����5ܙ�y���M�^�6�\'�3�]�՞�&\rB��w��t�	cu����0]=x20â\n�Z���W�j&æհ�-b��J`E�����S)��8q�>L֑���\\;z�߫���HUeMD�P@�)~:M����6y<�!ʑr$��m<M�O�Ed��Juj�w:�([���%|N\0ԙ��6X�ŀ���@>DO��%\'� \"�R0�6)�;Xh���Q��d�z&��⬦����G�+ִ�9�e��&O���;,��_�R/	���x\0\0\0bKGD\0/\0;\0�熪G\0\0\0	pHYs\0\0\0\0��~�\0\0\0tIME�9\rjƍ�\0\0/IDATx��{�՝��[�=�\0�\0yhD@0�`��$�Mt�hd��G<�f�Ivc&�MԜ����kD�1/5B\"F��/d01_̠���@��g����Zfq������}��9V߾}�~����}(�5!c,P�\0�6���{���mrOB�\n�L5�5@=0��{��8/A��487�:��7;7|���\'�,�`�Oi]&QJ�I�ʴX�s��J��{Rj2�O�n��Y���@�;/�t�8�B�N�ܓh�T�/����rO�)� �L� �L� 2	��$\"� \"� �L� 2	� 2	��$\"� �L� �L� 2	��$\"� \"� ���c5>|�d���f�InmIܓF絔�&ۗL�=sٌP��2�晍a�if�@�H�\Z��\0\n�ꁻ�f{���$i�oi�?��L�\"�PD�r�Pi�5:FB1q(y\Z��D�y\"�P��-:e\"�R�\\)w�HB#2��N�[(b�R�-���<O���|�T#e-�5�A�Ad�I�ID&A�AdAd�ID&A��Ad�ID&AD&A�Ad�I�I\nG<��ލ��$���LK��r��I�y� 2	��$EL��d���6���ձZs�R��5Z�w�x5��/�,^�[j�TAdlM9p𕘥N�[LP����|��B�+�f\rp;�HJUJ��W�g)�s^F$�(�`)��I���� ��LJ��\Z���D%?8�_��\ZN0�	B�ʤa������\n��T8Z�:[s��J�:B�ɔL��o)��K�)*x ��GK��i\0bry\\�\0F��sg���J�S���[-�?���\"��e�&�)��`��(��U�<|�<�,ͼ��՝��+�GBiX�՝�� }��yPY\"�X^���Ĉ�D���`�N\"S�H���N_%L����O�:�L�!��ωYj~��ԥ��}�T)�)���L��c�7�XX�2����.�)!2���A����!���ʁ�z�V\"S��Ǭz�?�G9�D�p�5�3\"R�ӵ�L�Z\"SX����z+��j�L�l;)�F�P��_�DdҚ��#V�#��N����_�OD���Q�:�D�PqzD��4�^\"� E�g�ł�j����3E�3�L� m3/���n�L�k.����k��_�z�La#���vI��������v�^\"S�XѲ}F�����R���+b庻+eo��%2�����=��i]Y�z[���F�X�.��%2�[�?�)ӝ��ˤj�L�̤R�\0Qٗ�g�R���B�/\"�v?�j%2����m�w���l�/QId�7�\'^� �L�@�Z�Y�:�|�R�D��dX�0[�B��4p���sR�J�Hv���{yEy�W��u���Uw��;:�釪&�T����E�BS50��R��)[�T��J���ZsU��DԚw����P��=��ն��X�>T�m�{�鯖�-�\'	і	`pEܶ,�Dk.К7�ҮӼ�5Z�����xZ���f޾(�ö����sK�3��\0>f����h��,��uN?�������z4EE�|�XKm���S1K}O)���^L����z8�ڄ���<u�4��H#r�0Ƌ�.�c��{R++�b�,K]��ER��\Z�ַvv��4 �G����c��W$8=pp@�֧[J�>�Ld��xK�6�V�Z?��*�}�R\ZU���)e��$Sp��u�k)��5�[��q���5f�?\0��o�=�C���hĔ�\\���f)��Zw[J�0�	;����9Ɂ�!�ip*�N�a�գr[�?�\r�n���͒�W��h�ۮ,OX�\Z,e~����ȹ���@�xh)�\Z�Y�N��k]���Nk�_��=���O�֭n3`k���z���p��m{���\Z���m�u��#\n��_c�֫uti�Z�]Nax�Tnk�;S��*`��7*8Q����\rUy�o���Y)�����7D)����:[�}�<��5N$�\Z�h4؈Y\"�4*�����⽧�s�����?ZJ�{���7�x,�(����J��ٶ�~Y��W�WBܤ[R��Ψ�j�.dd\Z�+�	@)�(�#���Si{��M���m���+���[�+�	!�p\r�l1�Ѝq�ۢb�Lさ��\n�Kk�V��Z���ڝE�d)u��\\�\'�,{8B�j0;+Ӥki��᭷��/n����G��A0j���AU6a���\")S2e*�Y�)Ť<U�w�Ǻ���D�Z��ǵ����I��u\"p&pP~��ܕ��+�[�(R�#��h�6x�U#���sKk�-F��a�D?�w�Ӥm��L\Z�Vpi�*L�{4�����S��\Z�UpI�GK�j_Z�~{l\\Ln�́�.��S��2��\r����x\0��J�<ѭ5*��\r,끻rJ!��͛�?��w�7�s@��r,��T��ɔLك���\n&�7��N�t�����֮H��L�(���E!/�ꚯ�̓r�*k��6����D�~~�`B�R_��H�l��W��3\n/�<�?.86�tf�]Nل32�l=4f�-\n��2�F�ִ�\'�-�\Z�`���H;w¯n�}@!h�_���~����KdRp��京Ppa(Eڴ	.�0�\"���%�3�Ma	{2�C�����U��{b��jWZ�Z�Ʃ$�E��o���p4�4�.8��=��4�j\'2ՄF�����E<1)a�cHw^W�&��_߄�.�ni^w1�Ԑ�Pc�4��I)>+ndUn�`�a�g�nj��o�~��}��h�\nffzUae��+���	�\"�ut�~5���u.ZK��|� R�fߗ.�F���?*SE�:@�s\"g\"�HX�}J�[?)�����Q�B-)t3o�h�g�Լ��I��\Z��dHTFK���5�T�;Ms�l��S��Bq{)�xn�ݳ�}�n�5�k�z(-�������%Q	�0�\n�)��#��;a�p�������Pmy�)mk�ԡbDN��r����k<5�_7^�N�a��n6S�U`Y��l�\n+��3�;�X8q�a����oC�V��$twB���Xw�3N�s>��ӫ���^�WP3 ��@���r�MZ3�)�l�R�k��m��.V_Sg��S`�S�4\")e*wk+lx~s�{п�8�d��0m:\n@*~�l7�_x6o��o�Ow�f�����5P�E&�H�H>��z�����L��ot\'�	���ę0|����h0r$L�����ꈓ�+Wé��)B��\\�M�:�3F��������ݿ�K�?�}˼L�m�-:9\0q��P�r�鯳��xtE�G��S�H3O�#�F���i0l�����.��W���p�&���*���R���3fù���s��n$�Y�%G�1���4�KX*X9ֻ�J--p���$���̓�H���� A�r�P�Θm:�²����C���w}�/�9���D��}������>�c63H�G%7��G���S� nw��5By�G���Ca�qp������˩��ɒ�T�r���>۶��>z\"�N�a�_/d+T6\"��P��`��-���Z��}�M�Tע���_����Ƞ���ȫP���S���a�E��<E�y����mWٚ#�^�����m�d{���+��J�J3ZVS�=*e#�\"ed����c��Ï��7���s�D#�*V��8PT��Y��*<��n�a�������K����w/�q�m�_��N��+.�\\_��{�]׽�<mk�N(�E���.���r/��>*s9ūeze���;�5�I:n��%��2f��W$��~��Ж�I>�7�dW�(�L�G\rnW�n��-�m[�����ԡ���j��0~<�:$��O>.R[l�������x��2Uc�:5J3O�x����-���W_��ӿ&���f�c�Ez�o��jx��_�m깧V�LŅ��tZZ�[���-x�X���B�b��H�V������5\"o�D�>x���?!(����s	L?��2u�:�uQ���:�ݶN��t���n�-Ca*�`�G��S����W��D��Q�!a�..u7���_s�T��\nJ$��w{eu��<\r�E_���&��nCa*H��k߲60��|)ǧ]\\V�*1�0�W��E�>Q�\0ģ�n�!\':\0���z�=�sX��%�G��i��yD|�[�(����S�������z�[�Ȫ�d�Z���&�����ޞ_���+Ӯ.{p������e��T�3B=������o�鴉J^SD�K3�!bi��\Z�*nx�J/��_��Lړ�?2YTV¸�`\\��|��2}�+�b0HT��Zs��\"�Wڗ\'�ٟ3�q�\ree��TU�M��\'�s_��5��my�5n)�bV%.��	�g)W�����3�ȣ��\\�F ~�z��\"i���U]i}zYL�8V��������Z�\'��D[�B	�f^O�b��dJ�,���_�(�Q���Ay\\e۴ktu�_�\n)R��\Z92�QW-J���\'���t�v`6����� ��T�^�� �\"�&�;��˔9^�L^]ȕ�o_�57i�c)f(8\\�T�(6s4lW�A���+,�A��i��~yS�y?{)�\"�#B�rZx�y��h~Ｐ�S���d���)�[�`�\\�+�;�xD\nZ���w�{22�KL�����_�V������HA\n5�����P�$d��A��GG���\Z3�S�˲�R�	��,N�>�:?���`�����0���ҙ�\rO��F�E�kZȝ=��~��~��\nZ	�}�T�IG�+R{;l|Ѥ9�0��z|�\n�;��g��q��9�3?d��4Y�nD9\"�m�ǎ3GU�*R�|���f)?�?���ON���`��޶��t���$ͼR���[S/Q�G�J�H��6=�z�r�4�CƘ�����xy�-2�<s>���x�9Cֲ�i�3\r1��J�UQ��}��x�ziO���S���~6Dg;����)��Bi�wH��˹�n�����[�F���⊫�_��mx�%�}��P�mN�x�M����{�n������LjV	2y���Խ��l����H~��e~���n�a�8����x=eZ*5�D��\r�k�\n+�ƍ���H~	�5��>�_�.W�{��p��]�XCCNS�2z)(���`�g�9I��T*k�3��j3(�H�;፭`�����J3��߈�ְc<�<�{x��>�o��=l�no2e����U�u4��������� �����HUU���Z����E�V��Hk�����&�����0���\'��m��S�&`p�Ԯ��=�s�4�����ݰs�9+���T�̰��f��>���_�4{����ٽ��ň��_`���������x�JM}��p(n�\'��Q�@�A��C�_��	��\0�6AG\'tvB���kZ[ͱ5O?K�->��S�!CMd�� ��+os3<�0�X��o�k�]�/9yh��(��vL�\0�I\r+1�I�������\'�y{#F��J38��>���~��<V��3>c��\Ze���4�߯�\nkWA�;�F�́��y�Њl���漟`�Բ���t����f�Nw��;��/�|V�A0�\Ze�����v���)s��1^�g�h�*SO��aNZ�Ѿh27��s*J��l&�q�-���S<��j�2e(�y��<V&����&�{F�0͠)sD$�߉\r�J�F��C+��]	�d�:\\L��TZ�s���\"�}��2�2�يԎ���je�D&�?����+ύַ��^3M���w�ˀ%n/��T���˲z�9������\nd�n�f���يt��$2�6\r�w�zg2	��o��-\Ze꽾Id*m���C��;a�Cp����6o�K���,��$�.T���^�yRnl�(��$d�g.f2i��[r�?����p�E�A���I$�I�I=p�o������k�����׌;v�Y.�[Sn_<�ډL�j1�}վ��m�ُ��^�`����?�0xʜ�G�L<��O�G�7�1��V����$�K\rf�̬\"������JP�3	�҆y�{-^gKD��:Q���D%2	}1��KK����\r�+R\"��MN��s�gTiw�C-n�*�I�җ��yUGH�E���#�I�V�zܜ�[�L��;����69-)ć�L���3ד�C�69�,���9�I�Xu=^~7�1Y3���|q�I�G��y�8�e�}r�d$Y��{\Z�Wh��?j�;��2~\0\0\0\0IEND�B`�',16,16),(3,'ReportUsager','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0釖�\0\0\"�zTXtRaw profile type exif\0\0x�՜Yv��l�1�\Z�f8hת���6�!ER�R�y��)����7�f��������O͚�J�-g˟�b�/�}�<������g������͜�x^қ^o��������/��z}|~ݔׅ|}]���������}�u������{�^���������S�������`���^�������7�C��;?�Ʌ����B��v���/�;�{���zG�l\nc��\r���^�������>�Ƚ}�?����+?��U����z�X*�צ���+�80e����(����܏�Ge��-�9���5��q�-��q�~�n���/|�~�p_����g��>��%��L��g����}-�޷��MW��r��;.�/�0߽��|�_���sט�ڊuy�ː��7��!�l��}�yw�?rl��隹��n�s��܏�\n�ρ�%�}RÕ��\0&�މŸ�lv!��l�8�+�鬜����r���2Ω^��w�����?/-8\"�L�T<�qV���)�C=�MJ)��jj��cN9璅Q��K*��RK+��\Zk���Zk��y -��r+���Z�ܴs��ow����#�8�ȣ�:���q��g�u�ٗ_a��+�bV]m��6���N;��n�b�O:��SO;��k/�~�����{ͽ�&������k�\\��%��$�gx�G�ǋ< p��lu1zyN>���<^sI�YNÃq;��{�����o&ſ����\\����^���o�xm�[Q�u��P6��\0l�a��kWMz>�\\�8��3�ٳl�W���1D&��T>g����q�l��\0�ݶ�1r����Y��]��<��c����ڜ^��b*]�ɥ�Nf�uݟ:K�)�7b(ͯ�jvc�jC����[�[%��7A4k��4�t&*Nc��̘�O���Nk�>��s�QF�+7A.��K�\\��u�,1K�f�F�K@�J�M�8��o>�U���RL�e��1CJf��/��{�8a�0�*=�Y&ߐ��:k��c����1![�7k��7+�g4��+�Xc�F,y��\r�+���l�Zh�ǆK�{�������E��;1�S[DOt���I��d�1c)� ��	�&���ô��m_�	��sy�w*��=���5���ۯ���3V���ܻ��B��������5���D�Z��x|\nX�����(�G,������{jm�vi�lP�$�Q=;��Y�2��ܹ1���8��{T_���l�%8�jk�PD.��zc(�Sѿ�з������lw��������C��t�T�x������ʚt��TȎݸ�.�#��{XTio��@����\"ې(���C�*@w�_%���kqϺ�C!s�	t���jF��iXv�	��%*�I��@�5YTp)T�\n�w�R�l\r�6���5��\r����\'[�o���r�/�X�_b��=-�|�;I��ma �6��,��K��0��ya�<>~��]�}_ֳ�gI��]қ��s�d-�*�]6\rd�}%1����OI������6$w�e$��2����j��Y\'O*�\r�3@l�A��[9��)\0�g*\0僺�D���J{��6\rp���hU��b>l⋪Dd��&�\\(��p[;��Q�B����(�o�[��o\\)�\Z�1�~�`q�O�m��Cjʰ+���\'�ׂP̎؆Z��BO��[��ِ����|vG�s�Nl�6`R��;�9��\0[(�\rA��-�*��0��F	K�����K�������\\�\r��l2W`�L��#.�?)/ܓ��)�ͻ�x�:��9��ڃF\0��~�r�04X_s�_HT�A-\"\0�ʀb�\neS1r����)Jgȏ�8t���E/t9��?� }6__�O?{��^K��@^_ ɁAs����<���{L�^�!���sd�O�*#·V�b��ݡpD6��\r����ᐓÔ~La�V��g;rϑ-T9�k�P��F ���R�l��#g���$��BG\r����/(~w���{�d��N����u�ئ�����栊-#�&df��c��������T�[���|ǌ���<��j�\r��b���܆2չ!�8HO\\���(Hˏ�M��#>�UC.�8��\Z�­\0�\n����Th+8�(\Z�bh���n����J-��b՝kDv�)�,�\0�9ݟO���H�`�����jo!!_��\0*ڇػA��-�����o�ٝ����|?9�O.e�����R���ח2g�w.e~�y)����K��C����Wo�\"k�أ��Ez��.G\0�\Zv�AY;Y%%�QU$O����2U �ou���w�.��Q$�+c\'s���Z���#F�r�wj:��(�-�G���ར����V�������Aˊ�f%��p���Wƒ�h��D^��j�>�!wVq���\0H�X}o#�\r5��O���K��С+�!4l��[4P0Q��S%�<*:n�57���e�@r�HЎa�o\rU����`kk9��8Ȉ��6��*�����5������ z���8h���9|��OT��u�N	t5=��i������1*����`Qy��*|��%�Y��N{�u�E�	��W j����s��!�G���� ���G�#�OT�ů�zw8���3��A��M�9;����O�}=����mAP�bw2ɀ�\0�n���od����\'��G�I�	�(X��?\0,rYn�2��R��*��ӝt�no*=��Q+��|+E�RE|�#˭��[h��,e>\"����!�R�J�DD���v�X9�d!c;�G�:���!�zL�� ��\Z����A�!+�ʺ_g��ݺ���~�I��]�����Ƭ�B?s���c�˅^ƞ�i3ի���g\"�}[P�M:=z��7���j�e����gf	�����A�M�8�Z�-��m���A��w�E?�hf\r�Ap�q�R�0@�[��ވw�^������˶�<�¢�#�2)u����$(,H6T_a�oQ�]=����pWS��f����0A�����]t���{��-�_q��u���������Vj��i\r@=�s�Q�eܵ��=7N�{�s�\Z~�k�����r�,�N\Z���$�����֕coգ�}XX,�DD!�	Q\Zs@ �{�H��.�I0W�A�n5|ាG=M\'AOm�3[��C\'O��K�&X�>�_@�Y\\~�\"ֵu\Z����\r�]s`�e�p�,V�0U��1W�=;�Ԡ��\Zf���j\\�\Zu6y�ꡇ-Mt��kS������SI���_��/C�ZT[�t�\nB>����`�\'j�xB�c�;*���$��]>�4u�(ZmK�o*0��ս�!!����_����B`j����4<��Kp\re��6��l�)q␤@U���6�\0rTo�U纉a���[}ű:��C&��=\"��Q�^R���eݳ�sޖ�,ʾ����zA�(����c<Q�X�J:��R�,�@Dm7TN>t�EB\r\0��A�t��4���l��ի���Om�wH�MC�]�+O���i�~��?|�-Pn����@�>�g�C��}-_��.׫|���hީKN5��C�|g���If��밵��.cA����L�QopэlX��#�$�W6p	�Ԉ�%*f]�d��J�͎Y�)z��NbX�/\n�I�x}�[��|«)9%w�����|J��! m���x@�\'���ك�5m׊Sr��悗+�wz�A�TMU�0�>R+�T�C�f�����=5���\Zڞ��w�%L�h-�u��VB����=���R�tzp��J7��$%��[MX��85@y�dj+O�2`\n�-Ӏ��^������{�[�\"8W������L#;�e�:�ڻ�B|�iFD�W�Y�0Z�iz�@�B�	��*3��ݳ\ru�Q �\"e�4�$,�^tb�T�ӂ�LJid_�-R�eOd.�I��Ɔ�\n;ł���T�u�&k�ڵ:�׺7�T���sh��c�9�NĈ*���-\0!��գ��L(|9���}3��x+S�`Zp���]��/A\0�,����d7;]<[�i���d�i;���H�R���&���x�O�&�W����\"��2�	���Vo�}�Eœ;D�B|. ���2YV����ħc#0SV\\�qY�n7�[T�S�Do��@��b�˦U��Ġ/�g����4�ިި�N\'*�j�#G���>�������i�@��\08���y�!(I/�\\带l�:��,!��t�C�,�G�F��й	��$�FX*(wôY�HZJE{�.\"wW/�9w������Ճ�^�u\\ǅ�8x�_��:��\\��[���6Q#�y�(d�f��Ւ�\\n���w���>[{�l5�\r��j��^�_��)u�到��m���#�)�K�.�4�N�j��\Z=Q���dŊ�a-�xf���_��1U��/d����#{3�2���}Du�[�g\0%����:�8�њ�����T*�@�%���D��측�s�_pQ��\r$#�\Z���w�`�_§�C�O�p���B�֞��a�/	|S�A�#�]�bu��@��+�4���&e�O��n�u]���P�	�4c�����t�E�	& ���FJ�I����ـ����#�\Z>v�g�]�}�[e�R	�,YNM�xEP��FA;�Z;���5\"��;�\r2����u��W^����A�Ob\Z����YvJ�Q�-��)jr�7����R��U���Wʞ\0q[\\�	\r��婬�]�ߝ��X�po�I9\'R��=x��I����EbXO�a�jv�Q�\r�n�R��\'\n��ɓ�8�~P.��yq��\rm�p8�h�dȗ�;<��v{��K�~:N(�aT?�A����$&�(�qP ��3Y�\'\\-���5T��B�Sw�Z�J�	k���,\n8 ��Ʃ�\n#�I:�OOP���3�?OɅ��u�>uB42�^}��y�F�&g�{B�R�~���\0�Q�y�\\^�H\n���|~�����\0 掓�\nMl�I�2f/�N`�d��8ҋz;���7�	҄W\Z��?*�_:�l��솺��=�2��Rٿ#*>�j�L%ŽD?b\"�u�¤�*H\\D��G�z��ϩɄ�nb,sg�\\�<CM#79c��̼Z��C|e(L�&�ߞD㺝�CE7�_���l+r�9�q�Z{#<��Z��)���NJ�M1��y���K������� \n	]	f/ѧ\Z��A/5�Ym<�7ʿR8w�2���h��m9�˅eh�M�Q_�*\r������y�k\Z�9�����N΋=J+;��U�4�`�Cԓ��KB�|����H8#��r���\"6jlA�����iz$������i����\rԮ]4�GDlH�N���HM�����\r`s0��1���V�,%�Ϝ�\0�Z�BP�f�����7���C��m�en�jv*��~���TQT��5fF\Z��l����o��$�\0�4A|�-)j��i���ࢶ��]I�jK^PǻO�j>�QT��@��6�{ahvC��Ve\05D#�}Qǈf���	�/yW��4����~����^��<���d��r5@\n\"�$��c��M%���b&6��\n�\"܊3\"��Jş�t@����������&��:H͑����M�Q��D�bi\r@&�́�Ro{�t\r�m��.ǖ�j�C��iL�%p��]�Sm��T$S�>D��fR�⟅�ۙ\0)*���a�K���F���0`�\\�HM�vB<)�܊Z�hIǫ7F��n�ᓲ���7�����=	��>�x>�-ȃЅ%��UD�V7�)�j�q�(!��G>5\'�g� �� ����:	��R������!�p.�\'F\r�t~�:����O��]]��{�^�Ǆ%L�jW�\r?��4j��T��XC�M���Q\0wzm���l߹��m	�\\���AB�`�gR�(�]M�{�FYbܽ����:�Jw��#�`�āF�}-h�n��́��X�s�;���\Z�J�qV���؃	ic._�����e�~����������\Z/\"�N��X]�l\0���h�=]D���S���l47�����]��X�b��8:OC�5����5�h�3��n�$�K �2��f��1;�/`�}6_^����O-��4�QQ�ҳ��\"4�ΰz���0�i&�9�k�{^ҥS鈅ֺ���!��1Z��۽Q�J#l�V�Π/����6	���KM4H�����荤l�P1Seԁ��R��$M�Qq�AA���$s�����\r�\0Al��}8A����y� �Oq���f	\Z�~\Z�DE��G�Cht��Tj�Ce!��&5)�oCw\\���:��š���;(5�T�wb�U�QXa�p���5Z��\rx�ι;rou����w\Z�0R�K��ѡ��x�Mu	8f�ȸ��l��ź����h)i١TCI>�+	cx?�@���-F,\'���o�E��\r�Ϣ�>{����눼�\"�o�r����\0�s�{�SC+���A��D8CM�%��������Yc���ѺC�x1D5w\\���a�:��T{AD��]H�\0�˫&\n��,�gI�S2��H�ȱF/.C�ʃ�P�ܪ�A���b��7fL�D�mI\r�~�B��\\P�`f������|͑XIшIG��(�B\'�W�D��WY��Y�sčW��{\Z�n=�@ҁ�����֗ �F����Vg�3!h�d�\0ӕvAI�,f	E}�������;�:u�P�w�?Rnңí��b�VgX�w]��@(;f�g�R�J�`����˙�z��r���������7��Ym�5a�C��1��N�t��|�����\'��&}��r�9����͍k��sO4��g�[sq|�b��ꪯ�L#��tq�u$��5x5@�E�&p����U�ͳ[�����6���W��\ZD�(�z\Z\0dڱ橮���\Z�I���=�Ȑ��X�	�����lMd\"|�=�&g%����t\"�r����(zA��yͭ�2A��#ܕ�-�|������\r���P:��i�/��\n>Y\rl_�K�Z���\Z�J���2\\׉���C�Sq��DQ�#RQ�FZ\r��~xx���:��ꁂ�貧�Qj��\0C��z�zT(�3��*\n�:��xd�1�j!lQMa�\0#���\"�`���`�������N�F��c蠲\n;	�A� E�P4���Mӟ�uU,����tXP�O\ruD�4F:=vE�p����wT���ϫ�8 ��!������ԝ�8mW���o_��,�#ub���<����&j�F�)�b�L�\0ۮ�\"j$B�=HB��EI��!\'�����R����\Z׎V�\'b��ɹ9��(�Z� �p���u��g�)Kc6��Aؠ�(�\0��gt9�/%��z�\nB·F̽��fK=����#��5y�(A�2�!���*\'Q�k�Y�!��Ȉ�oZ���ְb�$��#H6��h�FG�(���:��p{�ބ5����`iO��k�F*�C��V#ʄ�iG:j�P:DO?�AM�����!��9�?��d�0�h`��W�%��~��w������o���S��k���X����t��ϋ�柧�l����ß���r��/me>�`�[�?�����L���/(Z�	��\Z$MԖ��Mm�d�3�R�:g�\')����F���D�]Xb��b�3tD�[��i��$�Ϛ�Uf��/\"�:�ڟ�f�BT������Om!ս���?[7M������8����\r��\\~�E�Ő~W0V~�,Lom/���	���=�IcE@	�iW�\\�\0I)�N]$\n�eM0*=�m�Q�B�x`9\Z�Q���wW�RD�0P��U�	? �R�:��g�j�wk�U�H�1�y�&���8�U n��B@`u��s��h������8��#A���Ĩ��|ZN\Z]�ջ��36\n:��s�^����\Zp.\n�8x3�#��;2yj�e���*CG�s�\n?�����\Z�W�\rZf)B\r�s\Zu�Ax<ڣ����hz$���!UG�	���قh�RLԂ�[Zj�V��so\'��{ј���[�\0V�փ\Z����1��k^X(���8KԒM~P����0�$�H��\\%�p��L]B�����Ǐ�e��Әz���J�҃[Jw��D0p�b;xt[b��{�\nM��=5���Z��f�zӬ]�\'�N������YR�i�W(�mEOݓ�|s���V�z�T]N��A��)�t�T��{��\r|ҏ�)�\Z��j�<s$GϠi��Y[J���f�p��SQ�P;:.�l`@�Y<uF�?�+����Y\n�R�U,hc?,��6��b��u���Gr�̲��}�e��6&s�:�Rg�����<!��>��Z�I.\0)e5�L4�J��t�O�u�g�t�ĵsJׅ��QF��D�J��A�<d.=�[#�\\${>��||f�nSGe�H��P\0<��߇���E<i����D�R�JgzX�\'��A��E��>�YcVGji�6Z�`�a��	�[0[�Q� @�1�TE�}�\"1Z���\'ft��Կi\0��q�`&�TA�ڑp_�:I�w���@��I�Q���o��٧�9{��c41;\r�*0{�,]qDMV�e��S\\��?��\"S��D�SC�Ǐ���}\Z�ܯ�(Mφ�bJۙ3��H3��������/�:)!аIxM�.5�G�k=Q���0��Ӕ���K��AW�R�2���1S�Ε���@Rj:u�����T_�U�/���T�(PG~�q���ZoӖJ��\ZDz�\"�AxJ	rN��z��ع�õZ�a��7A��MK��Mr�@8t���Ej$M�R�}55�7���i�CM@Y�R~\0�@F�\0\0\0bKGD\0/\0;\0�熪G\0\0\0	pHYs\0\0\0\0��~�\0\0\0tIME�9$(t�\0\0�IDATx��t՝�?w�{	�CD~����j\r��C(��u]����rL���X+�{���h�P�m]�]�{�ոV+J�xDTp5��#5\Z�D~�,��s��7�lL��{o�ͼ���3���ͼ������{�νJk��(*�\r�\Z8\n4Yo��|AP>��X�m��\n����\'\"Poݴ���g��F)�rO�Y��@m��u�d)�\'�*�j��s�d(�\'�&S5���g5��\'�cd�{k\\:�D�PΩ�{L�*]���S.�$�2	��$��$\"� �L� 2	� 2	��$\"� \"� �L� 2	��$��$\"� �L� 2	� 2	Bv�;�J\r���Y������>�Enm^ܓ&kk���&Sό��LF(^���3��&S\r��E\"!h���/d���=�N>_\\�3I���_��_�[�JI�!�Xm��T�,�!���G��=��FDrϲSOfj\0H܅�4<���L�o!��|$;�y���Tz%S��Z2W�Ad�ID&AD&A�Ad�I�ID&A�Ad���$\"� �L� �L� 2	��$\"� \"� d�p\Z�n@�A���\\�i=�(�Y���\'\"� �L��Ä��\"��0�\\V�k�d�8��g��=�h��C�\ruR�� 2����2��a��\0J��y���0����\n��e(����X�+�0ۭm�\")�]L1����:� �LJ�E\Zv\0OYY)L�԰C�ד�	B�ʤa������Ls�T��`��Y��X���s2u��y\n�4�=	��V���iR|�\\ꀘQV��3<��o���R��\0ƭ����B�\rG�L3�l���h�`>ɕ��j`N���<\\�Y�y�%�����P\Z6Gc���f\n�9+��֨���11� z\0.�Id\n	S?`�U��%	S?(�Id\n�yy�P�~<�����\'�R�D&�s�XwA8d���\Z�pȸ�HgTFJ�L��tX����YU<4\\\'�Jd�5�Q����(�<�ɟh�7���i��\\\"EKd�+��R1�Z����Ϻ�� 5h�+�LZ3����5�R�D&��ʏ\rPﳸZ�-�L�b^@c�\r)^\"� 9�f�0��\r�y��f\n�f�A��j^@��l�L��.%_\r^5~\'�Kd�A�M5*�Kd�m�m�/��olhlߐ�%2���7��X\\�G��N)^\"��(m�N�\n���x�L~��ŵA����KL���HL��Z?#EKd��I*u\0ʼtJIOd�5� ;�b%2��6`���IN�/YId\n���\'v�\\�A��6��[��g��e��)EJd\n�	+�ɩ��>9���Pj���&����=WT��Hȸ����c	��݉ߖ�)����ʁ\"S�)\Z�ѸyK�Ԅ\r�5������\\24��]�T�z(����-����B�i�%\'��+�N�-��ij��\\�5����4�Z��0�cË�	)BB��y}Q��MS_��aC�K�\"�椩��h�\Z��pH�j��Vi�}�ߏ���6�L^�XC�5�4d�+��Fo\'L}W8�����6��ܒ�ڒfF\n��*��\\���z�������Ѕ��~\0�NO�P������?Ml6$G��j��R�����:ppz�����\0��df��%\n��ɁJ�M�_	������6$,�����@A��gj.3�����b�߾=2�F`c��\0��n͖h���\\����P\\hj�7���Oؕ��ڒH���L����5Vա��U���?�c擅#�Wڛ3q��1��0b\\�*��l��O���\Z�O\0�	���9�N��k]�S�ZkM��Xܜb��_�և잀��k��33yv7�4�L��:��a�����Y�8�4�r�u�.-Z�J����L����!��R������Y\n^45�i(��|�M�O�R/)�3���K�!��Ԭ\0\n�[[fe����&�|EƵaTJk]\r��¾s����\"\Z����y�gX��U�������*�~c���]��R)>�q�n}v,�z3}�lf�\n�ؒ	�\0�b�R�`j�\\<aVd�D�	s����J�9\"Ym�s�b0Ň��������ֵ�Ε�Tl��R��Z�R����VC��)d�a�R���v����jY+�M�E�*#9��+U���.��f����iW��L�<��CC�7�!C�L�P����$٭�H���氂��])��\0^�%�m���xw�ϞK�GB�,��Lo:�� �0�V6�gQ�JK��e���N>��AӮ6l<�ֱj�`���L�(���L^w�U�m\n�L\Z6(�6K&N�9\ZL�YW{����\r�R�8����4���A6=�NsK̝�Ay���⫕#2)�uV12i��J� Po�yDLk*���u��t�M�g�]�«�Oxz򳫊X|�x*+GQXʪP���7����Lo�NF���\n�FgD�&ض�\0��~ײ��l��o�3k֙�J��P�ɔ0��!CՋ2��ӏB������|���y&�#�]�Of�����LqS�j�����)�ӡ����\ru��Ά�T�HǎEY��9���]8�%u���z�+p8g�\'ϙ\\-\"َ��\n�Q�]�?e�ҷ}/����Y��m����T���_d�Lф2�͢�}B��^4��x[��*$�Eڸi/���~��F���-1n�������u<�@����|#S�PӀi��#Ήj��]�÷^��	��Ċ5�]UtŚ6V޷;�&:��.�R\\%n���r�á֩H+��M����ǳas\'���A{�����^�]��bf�N6��5]13SU�r�Eko�b��;rB��վ��w�\"��v�O��T1NW������EcT�稝�Mp����>�@������Cg.-��ρ�g�z7ǉH+������Ŕ�F��^JWW�?�_�m��L����|���W�<��A�U�3��ϙ��q���8�bUO�R,J�e$GD��Jk��������g�����Okk\'O>��g]�5󋩿�Q�w�Ue>�i5/aj��D��:!��0u:3�-s\"�ˍ�]�f~1k>����}�:aB1˿.�|�l�:%�{~��]J����f�R��LۘVrҌ���jVjm���E��<��<��]�x�ܛ���\r�5{�M��s:�|���ZfR�����0��G���J��������u���ά\ZC��bO�|�={�>�����g5���ı̒�[��w�á|b���̙�������#\'��Zm\'od���}������Xg7+��w����v�i4�������i�=�I����1�$�����X�l��ӟ�c�d2����8Vcs����@�\0��\r�k��v?^�7;�Υ_�੆�N>^�L\'bf��9KnMF�y\'bfY�7x���d�/Ұ��I�i�^�pE���Qd(�ȭI�8�(b9�V��ˍ$���G��j����T���g�%Z��ڃN�;U�Ly,Ss��I��9\"�)�)��[��4I[�T�x��|6�X�:�LR���9@d�1l�K���%U<�8����Q�?||L\"e���vd_���Z���Ȟ��D��q-�s�}��KPm2В7��1ԧJ�]nG�(�����4rlu>��A��&۶ێU���<\r���H����ri�!�qض�tmB[�喤�Wm|��αR��1�\\p�h��uzKF�8ζ7�<t�����ʅen�N�\"p&J�L�9S;�?�jƖ���>Ԅ	�̬\Zü��r�M�z�n�浛�ć�15/%�3}�H�\'j)7�-z�SneJm%��z�D\"�B�.�h�����5���mL��:��k�����j�\r	%��4���(+��Њ��A2�R�w2(hך�����ך����\\�IUo�8��gG=Nd(^#�V�u\n��\ZC��<`���M^���}4��o�-�w�	�-`�[_PZ*����4�����z�;���5�$K��j��� �^O���5�v~b�C�)@aXT�ۀ����T]$\'�?G)��U:m��v?8��(��;殢<�dj��l���\n�����\\�a𬆶\\���u=�auBs��,25ߖ��*�{z���G|u���5��Y��پ8Cq�wk��zXH�����ZGCJW@ȝ	:[�1��\'y;�뷿kc����Nq2+Ӕ���~�_�ԗ�R�s��R�Oqۈ�\'����ް�0����«���{����h��)�h�J�Ip\r[�6G@g�kڨ�QG���j��;�u�ϗ������$�+�-KF��B�`4l�a�_UƢ��(.. V��\Z�X,AWWܕ�޵���>j�;�|��V܉�^$�fCN]��!���g̬�5)q���d��`2u�i�Sp�Y��5��A�LyHaA�[���@@��Np�L��%�+A�ys�p��-��{�	�e4D?̮*b�4�k��ת�z����וK�����N>���_z�y�H���FJvꓕl��}���[�	e~��S%�e�\r}�H=2���@I!��NN\'�Ej�p�V�B��L�`aa!�XRWAEy$��J�&9��+��5���X#E+�())��_��׿�Ǔ5j��]���Ǿϙ�YuA!ϘY5&/��.��jG=x���A�`2�T��K��ê�w&S3�8o���<���r�ۀ�!c���$�R�EaA��o���������dd8V3�e��TZ�S�����X�c����1�����.�.ߕ��unZw��	);,��#�|�q��M.��G�v�\rp�x+]�F�Ԏ\Z5��WMϹ*_�\"m����L�E�C˕��Fr������.2��P�fU�&Xy���.�Y3���o���H�H���L�~��s��s<�B���ֱ,XP�׮��H�Cd�X�ʎ���ܿj�n?��j݊������r�\'2	�Qܝʎ��[���m�J3�t8�9�Id�o����|�X�6�:���Mj�`�I����Id��R�y�X�~��LL���H\"���2�\'�Ew4ASS;�?���6��\"���1\\p��L-���H\"���N��ho��c��ذ�pƪq��K9���V����Nd�PIr�D�g�om����q���4��\0��$�}\\Q�l)�)��3rd!c����$ǝ6f�`\"�З2�Cg���u�Dj��el�З�$�.�~�s�{�,ܒɃJf��jK�J��i�\r]�+R2�0-V���`�^�a]C%.N�*�IpҖZfm��h���>\r��$�*U6����D&!�Y�_�T;-��g��E&!���f���E�vZ�4���9�I��Xս�LW��|�ڳ����E&��6V���Y�����A�鑤�j�4Y�o��?e�=q(�\0\0\0\0IEND�B`�',16,16),(4,'ValidationAdmin','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0釖�\0\0}zTXtRaw profile type exif\0\0xڭ�iv#;���s���r8������S�d�%W=�VI�dr\0�\03�����6��\'��ML�斳�\'��|�K�����l<��n���v3�킧I;�:f��ﴧ�J���������6���ۀAg�|����������ߦ�����vnj;s�Mץ�ǂ1Vb���������������O\'�ii�� lg޿�o�Ƕ���#|5����!������c�}^�{��^�ݽ�����^uo�v�c�R��6eoC�ot�2��2��?����6~+[�xl����4�9����n��9�d�ы/|z?}8m5��ꂨ�n����#>L�h��kqg�v�lr���������Q������B׹c�rlź���e���oz��o6MǾ�׼���G�`:f�l��q\r1���V8~�K6\Z{��+�6\0&b��b\\�6��\\v�x_�Î�tVN��\\J~9��M�T�ssOq��O�j�ZpD\n9\\C���)����B�&��SI5��s�1�Oe�^B�%�\\J���^C�5�\\K����|PXj��jk�w&�ݹ�ӣ��Gq��Gu��\'�q��g�u�ٗ_a�+�bV]muq�$J�,E�4�����N;��n��{��կ^sw���k��5�X<�ʇ�h.�m�t��gx�G�ǋz@�I}f��ѫ��g�y�\"y��:g9���|���w���o&�_��?�Q��xΨ�n���^[�d�p�Q�6�aClt��}횓�}��ի��ҋ���O�\'�����6#�HHR�A�Cl}��b)�����mNWB���|`�=��J߅ɶ���2I����=�9Bw+dI���E�i��9E��}��p��|�%�$;b3y�AKl8|Y���pk��]���|�i�v��mW&��L��Ŕ�k15����pL�4�5H�+��@�k�\\6L=l�O�l��,J�[ʲk��-�R�\\�Ҏ��@��n��k\Z;��ނ,�I�;��k��IYJ!SlBJ#hא�Hm�\ZG�[�ۻ��Y%��ɠ%�{ڴXet#q�k���\0��������X�7&�����щ�cv�}��<j�b,NM�9G	)�ѻ(�V�� �4[|T�\r�Ԇ]U�ݵ���K��zk.k[�9��{(�/��J^D�ry	���\"�����K�-�8�!����D��N�l!�������G�%�2�10�m�\n#�H৶\"dp`������nX�\r�w%�|R7�#Ϭ$�&�-M	#�AE���a���{ؾ�`ь�9�\r�\"�Z��.�V;�>�4r�!�7��m\r�\Z>��u��̒6�s���V�S�\0*yn�f��I��<q��J�%Y[�n\'<1�FI�|�\"�Z�y,���A[��@��ٶ�g�/�1�7����qG�x�!.,DkM��PIĂ��Z\r�i\r�~;{Ɯ�6F�n�(A�$ }�\0��\"���B��c�Ć�<c�^�����%%��!b��-*쿅�X��XR�RS>!��\Z�![��M�g�B�vt6��M�>1��������r���������ӏ�?��y�����o�A����a��|\0�`v������}\r�.(EM.��))8ߌ��-�V�n����Y\'��(���-�ac�p����*D��1[�G��F���R��IW�rۊ��	����$�Z� �|�#G���9�\"��1�J\0Nj�Lq��V�s�t6�fW6�<���Dti~�@˫y�ȳ��������P)�C�i�7,,/��4��h��D������6�Xb��D\"��\\A���P�0��(��5�Q8	���9�,OU�A^©%���2-۫��uv1�j@2K!�%���ew��Os��%)J���ܨ��j�Hb�Z�8\r\0�Dc�K-+�S�7H�r���{.�+�P����UM�)/$�b)�x?�0R�0�O�^�j�X��g�Y߇�çy����ێ��-A��Q�u��(�\'1�Hz��7	�$�U#y�$������lC�$��0�|+H�ɩ����!xC�OU�m�+��H�F��J��)��B(.����G�h��j��31u`�E�g�\0���<˥W�Q�G%e���߲��mP2drM胠�-d2�\\��>�[a~\r��GD�F���ۈ�:��_��h�����?��ͫ^�Ӏ�n~6��[��h��/\"���%\r{�Z��ڄ��DԳ�$FF|�YJwj-S59i��-����c\'7��IGՎIG$B��H��F����=��m��W�r�3ͱ�{�{c��qZ}p�����G(���[���{�sm��U��JԂv�3�}S�H�Az��j�*��z���������QPYHݨJ=PB�\'�å��ؗV��֚.z�\ni�Dy�ɴ%����Lz$2)�fF�-Xv���ƥD��a���\n�^Kj�^+�JĆD��J��<��I)���ސ���qC��2�[�O,�؟TeB����1\"n�\n�1�G}oe� ��M�x/^r�����\0�U�`�_n���f-�0.���Np�8=�7czWN\"�yכ7߇\'im�H��^`�祂����yTy�N͙	�Ft��#\"����zl������խ�É�Lj�B�0����j�-Άj��P��ڕ(]]��J��%:W=\'���!��䝬Z7��\nT�z*��v��ѕq�Zr�&�[���-SBx\n\\�z\\dH@��Z����M١�gȸxAi>-pH�L1,��\'�nFS�X��2\"��Oڱfi9�I_j�{O(=�A\\���sY��4Y~B5\"��s����,�b��å���#6̠��F����]�ݱC�������^5S_����/G��9KRG��ڪ����2���8b��=����Z��|�3%B�\\�I`_t�Ӹ�	�Na��W��\n΃`Z7���e�VT�7rp�G��\ZY\"e�Qh��N�i)Ӗ���樈�/�@�܀�Fg�}�j\'�+t�\n��]����FI!��	���^�� ���B�(ϲ<N�p�����<p���A#!C������c���Nw���1\nu#�qN=.�V���,L��{�h��5\0|���MQ]q�q��񋅡���\0��C���dz&>\n�|7\n�H�d�51�wH�����OXVYs�3�?�VA��@���D�`��h�5���pfmoX6\n��PV��,�`���\ngE�\r��������oP�C�ye=��ZQ�݁�,��N*��x����^eS3$a8O}(�ĭ�n(.#�����&9�Z�Fgc�D�Ìt�LA6�r�x���}���.鈵�L�\Z�����4�\"/DRqD�o���\ZW��\"��#!+W��w⦨���S�Ι#G��`�<�F)��EZ�+���xv)f�2��$T�I�! @j�	��z$�����Iϊ�!UTl��9���	 �͝��{dτ~k���B�r���DΠ(��g��$R��I�T@�CJq���Ya�C(����l�w��\n�v�o>��j���3P\'����.[s�o�%�V#|�d�I�D3�z��\r0�50�KN�Z�`^!��Ǻ~N\0�@�Μ��s�ӥa4%}������K� U��ǼGN/��S��#�%H���K�7�k�Y�G��eh\r�3\\_�^zv	Q��>3,��w=�rZo(|5��\Z���/�\\$����OW�]�\Z���9��<<�*���5%H<�QH�>�G�X��j�V��j��H���颖�p�JH\n�M(\'Wt���S�a������p��)����CH��@91El�:�E��y�$���@���J�Ev[^����FY�8#6�`Z�\\W��@�!#�Dԃ�����D�\n��j0���zj�H-S�\'ω�VX��5�{l�\"C��z|L�2ϲ� ����D���Vq��J�z��E4cb�~z�D�T4���������R�<�1E:�ȷ}B��$�\Z&\n�\\��>���Y�*P}:���R��EB�M�iԑ]���ϐA��nX�&�Q�;}��5�1G�Bz�\'��P�t�+@@_�9�=�͟��pw`���F��[V�7Ċ(2 )l��\n��ɞ������Z%�$KȚd7�!\n#�#�\n�jx�md�h���~}��	���,Piݙ�.�͹��-�>��b<�C_J2�&�M4��,j�4�`�rG�9??�~��x��0�����:�2üRg�Rf�W�W�sg|=j��~��J��_���to�%�N���|���Ҋ�v�-��-V�aȊ&jYAM�\"�29�����ǹ4����h!KS]���[k\"�\n�\njh�W5@qI��ä�\"���+�3mFuT8�d���l�+���KRAI��Z���1>]���۫�M������M��aA���>������%����&�B�.J���)��9�LA�zx\Z��̥O\r�!tq�k�:��5��w�Y{3ُ3�bAKM2\Z���>�m|ل����>�+�w��6�H�~\'�p�獘�w�C��bBח�(a�о��YKT�Y�PoY�#�س�_�a\Z���fw�\n���V��X�j+�{�?���\rz��\rz�y����@�������(\"10� ��.��\Z��4�9�۰�=k�]�$-	0!�y�KA����\r�L���z\\�؎qP����ԗz�_>�Iq��5�-���U+��,��M�X#���i��õ��\0�]��;��/��o�.#�[03yjV|���fujD�-f��&]�Hhz�U�x��A��0d磞Pdo��*������獁�8���o�m���FU���yo·c/�}�O����tx+��u��|��p��S}�K_��߭�<��W�2�:�v]�i�_������u�?t}y]��~�.�`�]�y�߮�����e>��+�Gه��xT_�*M������o��	��~^��wv͙I�cK�k����)>��\'=}�b���P�nB��/��S�^2u�9#����_F�y���T��غ��7r۸߾����0�j�W�H\"?{C\0\0\0bKGD\0/\0;\0�熪G\0\0\0	pHYs\0\0\0\0��~�\0\0\0tIME�	\"��}\0\0RIDATx����O[������6`;0�4�X׆��)	m�6d���NZ���O���C�4iݮ���ޮ�6m��,����$�B�I$���w�����_���h���cR�����\n����sޜ�|���\0DDDDDDDDDDDDDDDDDD\0\0)���\0u�\0��@����I���psL�˃eB�\"�wQ�2��1��+B�Hܘ����(}�^��߈��/E��!�Dq��(����1IU���Ƿ�e�M���9&���-<6Ô�$=�D�01LD�01LD1LD�D�0�D�01LD1LD�DDQrmɎ�B�������$�6Iǹ�q\0c<1&}�No�n�Rd���?F�k�����$I})��+����W%I�iJ�iu��sL(��h�;�S1HD�pZ�AT2�T� QyZ��72�B��&�(��K�4�ЮL�\r�2Q�W\')�0��ºS�2\'ҌH�����������0�6�ye���&l���ƅ�D�D�0�D�01LD1LD�DD�D�01LD�01LD�DD�7/�a�E�����;ϊӖk�i��0�����/�4m�P��4���LD�01LD�DD�D�01LD�01LD1LD�D�0�D��d��e��\0\09��+<,�D�\r�MU�ʜG`ו!_�!B�;�`|����0����<am��%�ÚgEnv.B���(&&��c�{�����O�$,�D_��n?^t}��zC��@%�  \0��.�נj�\n�)\':�;���@1L��S]�#�G��l@���,�g�N�H�J����\rf��Q����At�.���i4D}Y=lF��t?:�;m����5 ��l\\�c�[�\n�m�>4�5�^hG�&{c\'�JK�������JXH��M�笇��x�u�PI�,uJ\nJ��tjrv����=�o�~�~l7n�F����gk�Qj.E����ϥ�aR�ʉCŇPi��>GI�6�H*�F�XXP�I�����^���d��5	D�hU\Z�KF�A�b� 3�l�\"<�z.�9ڜ���F���OЃ����0)+Hk���x\nF�qSM����8��~ܘ��_��0)��U&�)���5+��͏�m�\r�#���r|q��� EcQx^tOt㼿��eBY6���M!�Z���Z���^�aR�DV9|e�!��o��/�#x��e���P������V�d5�7�����9���r�<�Xx/TCIAIB��EC����m�\r}�^�aR�&�s����@eQ���],�7�E�D>�gq&�p�+�R�I�.݃M���DV0�F�T+&�,�&�5��\ZM��l�>[/oj	axn�w�w��?���ʤ,k�;�њ��W90L�m:�=�$���U����ی&Wv�w�[��*�3)8H���G5/��^C�A޽R8�[�[\\��0)ϓ���a�Ѱ�y:yO��Ew�>��U_��4/��-b�w�CnN���E��\r�=�Y�r�������U�ckW%�ߍ3���Ul@(��E�j�Z�� �F;q����0)��~�.���(F�9��FNq��\"w��5B,�3ڃ_�����3,.�L�Q����c��Q\rC�A�gJ|F�W&E*�����\'h�i�5�\n�J�･�%\\��3J����ɺ�(2�Z{�{�b��Z��g���<e��v�_�� �bp��;��ä<\'�O���.)m�p4���!��x��;N�刡�w5#_/�\r�E1{g����/F~εw�2)��pr��Qn-�uU�V]�2�݉\0ZI�E�OJ��D����w���d7�~����M�{�(�Øm�r4��<z���:e�5��Įa3�d7�� ���g�R8H��Qo��c���0����e��g�{v�����hlx����%Ԗ��~r\0|�>\\���68Ôz�*\'\Z�����Į�]��Y�V�･��hC���娚م˞˸\Z�Wx6t�:��8�H3����x��nὅw9pS��P�a�����V����l=�;̹f���2�P5[����\Z����7Hyxv۳p�\\	��l=o�����b�aJ-)���8�<�G��!�W��0�M0h\r��Y`/��r�Us��\\���S�\'u�����������]�o��7<�)�8�*��1�.��޴���di`ͷ\"_�k�\r��fv��Ӂ���M��T%xv�sص}��C8\ZƵ�k����9pS�]��9.��ʰ-ۦ�J��V{�f��ԯ����*�{�q32�%���g��l,y�^�q��fq��)�9xSjɁv})*m�	�R�{S�>[K�%�RT�V�k���#x��Y8,�[CA�ڎ�Nq��ԣ���0WW(�æQk`ɳ 7\'�|f�K�-���\n�WD�Q�xF���_7�=$��*�*C��\0*I���M�J\nJ`6���`�6@����t�/�qv�]>9�0���C�V��z\\�J�<]rE�g!KT$���\0�6�7Ô�b�a1@$ْ�\'e�.���Nq���U�_a>����%b�Xj]5�a�̍����\'�,�)��Ƨp���\"��\"%~���#``z\0���q!+Ôn�\\�ّ������bJ*	a�;���v��)��N����^�w�O��O�n��~wl��q��.�w���Ô�ږ�����;�v���ؖ�-){4l�ˡe|���O�&��1L)s��Ý�ǵ�k82s͕�Q]\\�|]����FDcQ��n\\kG�R;�aJ�#���G�]��1{T�c�#)o;`�a%�37��n�J�)�\\�C��5t����:���}���Iy&�~M�I�$>��C�*1L�+<���\r\\���3��\\y�Kvè7&m��6�+�Wкp�Eg�2�pl��Dϝ������pZ��w�p,�ɅI��jcӁaR�����z<=8�<�\'�O`�i;�ԉ�9�ÿ�G�X\'..����~o�������<{G*����F�q�Oӆ�!|<;�w�ΰ��0){�7<7�+w��O5U4a�m��z��\"��͡m�\rW�gA&�]D��Ut{>D��8�t5�ȼ��ㅣa�}nt�v⌇�e��3K\"���D��>�=��+�G��f��$A�$!q,��p�s���϶a0:�2L�E��a��gW|�h�i���&��V�q��14�1:�����y��n�h=HO�7�����^�^4�F�1uw\Z770dÁa��L��]z��](TY��0C�0Q���o��|8��a\"b��&\"b��&\"���a\"\"���a\"b���a\"b��&\"���&\"���a\"R�M�./�h��f����`%�lF\0��w���Y�oҙ�b�{��$]��7=�= �F+��48ɒp\"r�GDQچ�ǲQ�K�O��vB�zS��|�c�Ӽ�Yr�P	�ۉ��4kN*�s;�!�\0����A�%Ir<�+\0���S��uN\'��O�_e�)C��Ȫ��L��M�^�#���7$I�=Ӓ�����3����%#HI	�j�~	��J�����s7)�d��B��\0\Z�8f)�v���_��~�3�>\0��$i��m��X��M\\Wo\0\0\0\0IEND�B`�',16,16),(5,'ReportAdmin','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0釖�\0\0,zTXtRaw profile type exif\0\0xڭ�iv����c���r0��v�ߟ!�� ��[��#%+#�`n�@������?��)DS���l�[l��K�ϟ���x��Vx]s��7s�.x��M��~��y?������������5���ۀAO��򺯾\n�y߽�۴��z�������3���җ��c��x�����n�C���+��\\�����B��v�ׯ_�w�����uG�l\nc����F��]��v�Bg��~��/��2���v�z�~V�c�Rټe_C�߸q`��\Z��������4~*K�xl����4�9����n����u���߾�����WC��� D���Kha<���k��������v�7]���q�w&���c�{����\Z���sט�ڊyyY�i�s���p�;/��k��c~�����`�f�,���1�{��p��/�h�\Z���\0��g\'&��م䲳���v���3sR�<�R�˙�oB�8�z=��w���?o-8\"�\n�i���Sb%�z\n)��RN%��R�!ǜr�%�z	%�Tr)��Vz\r5�Ts-��V{�-\0a��VL����yhg�Χ;w�>�#�4�(��6�$|f�i�Yf�m��WX��ʫ�UW[}�M(���λ���X;�ēN>���N�嵗W?{�}��?{ͽ�&��{_y�\Zo��6��$�����x�N�.F/��g�y�\"y�撜��<��v>��w��G���#���<g�����������V�%\\)eS``�]��]5�ױ���z��Vg�e���O�Olm\r��mf۲Cڕ;�����Z,�d���<O�ӕ�-i:�|�%��O�a����2I��ek������N����=��s���Y�	y�9��y��J�#6�W/�h�\r�/���v�5�.�������z�İ�ض��Cf-s��b�ε��s�d�pLbi*�k؝�\\y�p6��������6��W��Im�-�}j=�-�R�߸n�w�գ�azȮ)w&泅x{�d������P�R���R�\Z���\\���u��c�x7!3��~�=�$jO���nv<�5\\�(\0vq��	coL�3�Rc�cF�mg����8���Qk������s܁d��4�.\n���>(1\r��>�v�[�a��6����s	j}4�u,ɜ��=����������ڄV\ZH�ժϹ�M�FK!N~���j�uG>��{�B~�a#{/*��ʠ���\'�QW(��#��ڊ��\r�`U���Z��ܠ���o�R�Hőg��	OKs���K��\"k���0L� ��/�0X4c!��V�_kb��t�j7�\'�F��{S�@ɲH\r�¼IF�]fI�չ��h+���\0,y�f���\rXy��:�K{M�Npb������hC�j�c)�j&X\Z�GT�=۱s����e�0�|�({)+O�gۅ�b�)6\\*ł\\P9��`��FPʀ���;�,�1�tGm�IB��\"�Ȩe�@@�����(�d��\"�~&��%��9��XV�P��\Z�}6��dK�4��Z�4d	{�!�3U!};<�ռ�����G��ק�	���$�_r���O��h��_�7	�+�㍟ �\nf��}Le�k�v�)��2���|3n��[H7���)Fo��u�B�Yng�0\\�M!	�U<Id��:qy	I�a4d��E�L�xR�w^K1�=�K?����kTV�/t�H_ y�f#!b^���$�D�8h��6g�:���U]Y��ֶg �K�ko`y5yf�x~i2��*�~��xjJ��	��]��p4�h��@�������� �\nW(sR߂m���̲W�C0	����B���D^©%���{Z*���:�Q��R(j	buqٽ����|}�߾��v�B�rCyq�(b�Zq�F\0q+�7��XjAX��\" �@��u��l�E��.A������*�)/�ǃR������a�0�}*ռ����p��\Z���oo����\"�qI��^����?.4�Na�V�=MBw��Q@�˳��_@>�i�Q��A�9Q�2��C��_\'�2�<2�	��g����n6C���q���>��g��&�c����/�J+��z�qk_̩oM�����W ��v�8���i#!(��	=@�۬��v�?^�#��^�^�\n5inO�l�,\'�ʥ0u�/��t\r �L9Tf��\0���齦 `�2�/WX�ԟ��*��[!J<q6���\Z��Z���I��?Y�-�-���y��e�jM����A�?��{�ùM�u��F�l�6�lD^��=<���^x�\"�\ZE��ů�:Ϸ-���F_V�.B5&�(�4v����|\"��	vR);an���-���g6��������(���\n5Ʌ�U~�\ZR��T�]��Ǎ�{ߣbĄ���t�	�!@��\'?��\n}`�������Oמ� ���VdĹ�?��\n���%�]y���(6�}�=If��e����q���\n0�%�R��NP� �\"T�2�4ѡI����B\\��p�z����|�,�7	x-��b���8HrB�h3�&c���U&˷r����$�0g��DQ_f�*�ב���i���-��ߐ��@mޑZ-���;̬Q��G�\\\0i�	��@�_\Z�%@Q`����]$�~�PKIW�j��kF���kv�10we�\'~���ADk�����A KX���S�i�27%���.a��aR�,�$��1V�К6 O\rx����\r�I�s��l�b�}��=�c���$zjQ��C�aP��+kU��z:I�.U��E�C{���<�|�>�j3I��hk�5\"��b���?���\'6�s����T�Z`.;1Ɓ���\n���=�\'�\Z�링7%f2���#S�����\0٠f�����h׃ai>u����L�ʰyw��_�e�=a��\'cA�$�ц}[$��f��1��RIf�g�>������n�Oy#�󹶁\Z�x��)���܉�W\ZS#_�D�W ����=�8�_��۞�1���rU*�!j@�N�F���M�h�ݢ,���\"��>�Q�r[��\"o\rK,�9	o~�!s���x�[��f\Z*��{�;���y��<D�3��wT�.��|��O.�L�[�}~����w�1�}~�b~F��AH�Z���FQ\rМ��A]�\Z8��-��{��E�����i��%L��I\"q��Ү�l�\")1���k�E����1�Lm֮%���#�5}��E���x@���	p��eډ�N�93&��A��\ZA�a�dm̭f���6.j�-�6q�M�\n-�:�\reZ�Q[�fOSsJ:6ϙV�T���Cz�_dl;��b��<:�){���B�82�Fi��aY;��;�MI\0\'=z�<�=k[��׊)j	��\n�t�|�c҄e��S�\0�-�B3= ���E�3��j#��6� R{�f�m+$2X��A$�!xt��8F��R�����\"0��yd�R��\rɽɈ��5�I\r�\0�R��6��� \00콶x@�`7 8�mW�Y(��T5rf���%�Y٠����Š b��x��\Z$��O��Q��Llc�E�o��m���V;\"[hG�$I���i��P�Q�)z\Z�Bhp\\��&%��x0�D�KV�U�L�{����f��2�=͠D=�e�oO���(s�\ZK����u��w�L��A�I�DZEdXnc�KFwX`(����x���.EAMx����,�o��[����\0��;��0��n�Y�7ڵ���G������7�v�|����\r��O��VeZf�vh�����{��w�����^;�/ei:�\n�_�yK4����w��P<���\\�+G1�P@���c���\0��z��Y���H��#�U$�\Z�C�c�>|x7xX{��ƕ��v\0�y��T*�K<f��e�S��\nH� \nE����By��x�	�)��Z��e�J�.���� R����j�c���nYo.J�S`n����ڡ���V����Pځ��b���[� ���Eu\'���\0V�Z\n�B�2=g!@�[G��={�$�r�+q�{{��{���^������I~K@��?�`�8�t\0�*_RD���jQ��&3��$	�0W\\�i�\Z~J�n�Lvu��6���8Ww*��CO���(5�@�.����:UIt`E�$�%T�A9��l�NU���z��E�e�A��$�G\n6��Q�$Z���\Z̎���&�ۡ\0�(�n~Z�=��#x|ė�7|�`�[xy�t�\n�_�����c~��7�����D�_�b��E������\r_~��cd��#�|��_��?������E���{�X_\"Y����H�ne���DG�$�=��(�R�%��4�R�,��JX� ��J�Ҷ\Z��i%[��\nň4�kyR����p�\0�X�U����X�@K0v {h�]���3����0\0eN�P����GϞM��/�#�t�)��O��f��I�%�\"��%y��TgB[d�9{�B���=<\Z/XzX\"ba\\�S�e�v<`^3��oSʳ���&Q��$����Q�\r� /u�u����7�TM��d$\0%ʞ� \"¡��sf�%����\n���\ZT�t�%W?�&���w	���n�#�o�ej���C�V�f��DՀsD	H\'��I�D�5���Yq�\rz��\r��f���,�`8��*��%�]�h��Ps %\\�Q�R�����&��~7��\Z# h䪃�w�zܳ#���6A�6�KB����H��_h6���[�f�}��f3��c�������zۈ:��I���r88h���\"y���hZ[�\"��\r�0�J�dJ�݁�@���Ν��Q*-G�v�Y~���ږO�-�9�A�kI�O�ndq�W���d%�7�B�q�R�jA��������V����.�\Z,t$�|4m�~��FW�G�t\0c��_�����C�Q��_}���:j����EX�ek������Q>\Z���T���@|$�n?)-,�z*\ntOe�����﹜�!�M��{�\"@LVբ=ȟ��,:�|�y�S\rNa�kik�&�������̝q�����ҋ�IhcFE��p����-D�\"�䝚��)����(���[5N�D9j^\'�%0��7�I5uh��3��@�2p��Q�(�Sǹ �\0]��e?\'Q�d�z|(S��\rǩ\'�hq2\r�rM�R��\\�����2OVN1\Z�q�&Z�w�1�-Ph`�D4��D�T�|���!c*��A{a��˔\0f*��6bP�B�\n~en��h%FP\"Aي?Oq\\�,t���l��ħ.Ν}�U�,\rŽ^������\\���\rT|w��Z)��mc~����������V�78+ꕁ�ܷ��̙C~����vT@����ѻg�!-���-5�/�֝���T�,�F�(X#p5מ~N�rCMo>*�r��n�V���A9�[�*�7Od�!�73%�\Z�j_�Q�d$�u`~�{���zN��$�jCެ��퀾��^g	K�J�i�,�p�\\�q�I�<j8,P?G���U8��?)��Gm�h��:2��������p;(<�@D����@hEe L�QsJ�@sAY�ٟ�c�tO�k:����qX�����/��� sv�,vpba^�;�[�1�*\n/F)�pF�`K�M�d��\"q��TS^�?�h.�F]{���h)��\n�㦚N�}I@�g�\\�EeO�h��!�t��c,��l�uT�k׭b�� �u��ӫ/�/ӄU&���%�3ɬa!m�ؙTE�N5b��x��i�����)�\"�U/r\rl�:x\Z[�)\Z>n��:rH�r��Tzm2��N�y�,@5h�����\'�0�m(�0K�&�oFx�N�CT\0�a���:u}�\r��\'�#0�|����?������?������?������?������?����q�6���*`����k�J(<�$S���2u#�U�\"#j3$�ݢ\r������_Dȉt4T�dS�$&a(�a�FB��.�%:�(Ձ2H�a�bQ�-4�XA0�7��f���r��zp0g !�C��K�c�:��� �\0L���}H٣,@;�\n)��5��Ig��Vɜ��aԝ���+\"KN�~fۊ��Po�����!��a�2��i\0�-��:�i(>��B�7\n�QKd�d�a�mU�Q�d�΍B,�I��7��B��qtjluu���|�|PR.�޻��D��5�Y��ZB�Ig;\"�R�N��&�%/��`Z���m��/b�US~�j1(�W����&�(O�d���g���\'�)op!������:�j�PG��M�1b�І�菦uyK;��]�#�c�!䭳�������2�(���Nx�M[���^-����H}L�8[˥#Q9���^��UH��c&�v�C�X����D9��p����j��i�j#��&�7�o�b���;�$�Av�+k�H!<c*`�k�\n���y��*����	�? x�p��\Zm\Z�〹}�,D\\�\n\"75B���d�>8�pxD���Nl��!\\&\r��/:|��K�]fK�ҷ�H��t��� c(�%=RY��;����؄��m����Sh� �\r��˭P��nu�fYQ��:&kj��b����0���u�H�\'��N=6���ޕU{hu���=�Ui�����xE\'�?,�2�y�]X�6�t@�(*�I�I�W+\n�S1~�b~]��+x���7�}��������×��V�~囵|Y����{t�C�j>�H!�\"%zʄ��%�\r?�Wuh�1�s����g]*̷T�nƣ�Q�\" �r-#�=}J}\r�\0��{��n���S�r�����!tx�u�\Z-�[h��9��z�ڟD�B�m^ċLA�.�l���%���˪�cAQZa�\\�{��=���Y�M�^��������(���I��l�00���\n�`><��rȨ����Qd|F\0��:�a�4�`@�.�`���ӥ>|�)&?/�|^�\ZϬu��7���AB�tj��~%\0fy䄏m}���a�ث�^ZM+��K2Q�=�Gc���H^�Q	����N�Z�j_���N\"h/R󽎬!��ģj/��V��J�}�7�(M_����,�䖣 X�$�g�;=���*�]���\n@B}���Y5U/`Zen��Љ9P�D�\\D#Z��I+�Z��Ԧy}��Gd�����v��Uh��S��/���/��PݜH�ܯk��LL�������*�-�\r�����k4}w��o�8޷|�|��3;�qz�������9;����ٙ��������k�fv�o\\�7�3�i��t��O�ٙ�&->�m�}Z�d��V6Á�F���\0_���lU\0F��[����1�T�f)E����Èe�,��ҡX}cL�\rU�����(�;#E�W���2B�(�d|\\ֆ��_w���`��W\"{���h6CV��\0\0\0bKGD\0/\0;\0�熪G\0\0\0	pHYs\0\0\0\0��~�\0\0\0tIME�6x>�E\0\05IDATx��}TUe�ǿ�E�� G�AT@|��r�׺��������6IXw�H���co�5w��YTwa]qus��.Y������ \ZG�=\n����):�ޜs8g��g-�׳7�<�������B!�B!�B!�B!�\0���Ȳl���\0\0��u�^�L��f7˄�\\X��,��e�&�S\"����=�	���Vɲ�,��&�rs�e��B{_v�Fd���^���\rY&�+��5ؘ�,g��%�9�E��oB�<�2�N�R]xoʤ��;e\"�2B�!���De\"�P&B(!���D�L�P&B(!��B��L�P&Be\"Ĺ��DWY�g��=C�p��N�OO���U�E��u���4Yɉ�x��\'��\Z�p�\0X%IR�G��]�O���/I�3!S�)��L��-���6�|(!\r���7��H��h�{dY^�\'�<Y�˺�&DK�I�ds[��=�@��Q];I*e*0��N4J����}��7�0��o�2u<p>�h�T���-!!ī�BWB(!���D�L�P&B(!��B��L�P&Be\"�2B��L��De\"�2B�!������]���Ξ��\'.grF��e���ccQK����]}#�y�P&B(!��B�q9���b�HD�|��0\0|��#�|}`0H�$	�,��SF��˨�����U�<�IwE���*/�x[3�2釨�N�;������#%9���_�#����ն���|��Y�w��tʤF���M�ro,BC�]�w	11���	�]��dToFYY\n��ǉS�,��5��GM��`�����3�aH��ᑙCq��Y�|و\r�eQ&�g|�?�3�gw���񑐜��̚y;w�ƚ�e�<&��#멡H\Z������5s��S�|�(>����L}O�ɀ�UV��6yݳ���C�oG���w���,L55>����$d?9[7O�J��l�K�c�׬�h`�R&��6�>�<�~���ϔ���������)�{X�h ��	.���Zj�3I��kV4�L�#0@׏Ĉ�p���nw����\'��.e�-=�K�D@��1Я�/�� ��R_l��b�7��I��HR���Ap��i���kCUu��[n��9���p$�\"�\Z��9�4�)\0�����u\\�D��������c�o48E�={�i����N{�.�$�Z�0k�	cR�{-��рU+S12�\Z�����L����!��������8z����\r;K/���+m��_�LJ�9��\"5�ԫ/��Y�\0�BQ&u��P����^I�{�)��ީ��v�^���JX-6,Y�����BQ&U̞�;�*+�a���n��Dk��5�Z�ry�-W�S(�ph�6LH��3KG�����y�b���<F�����0��Dkk�j��^��2ݞ��F���8UM��3X��k�8�lcQ,�\Z�JO��~�c�15�/eꙐ@	��1Y�HE��1w��>�����\\V��M�h�P����h�����Z�(չ��W[a2(dX��̫���\rX��B�P��F��ve�:?e��@ڄ��E�ʄf�6���~��Eי�A��Ce\"]����+��nw`�o�kje@��2�d�+jrF���O��:��%)�\'�wt�ŵ����j��Z�@����ݡh�赦�\'{;S��Rԇ2��&g0e�+a�>X�@Y���*],��Yzk�U(�fʔX]��Q&\0��6VQ�nGI=��Ш��)�ֆ϶�\n��7\Z�ry<e���>�2E<�O]]�W��.�^�=���s��S�#0)����H�k�}�,\\+�wt⥼�n{�S��Ԕ8�8Vu�K��l�#�?����	����|v��Lz��Pd�#�~��z�8X-~X�0��F޴�\0�ݵ�ǛO�}�R��2\n?��b��k���i���f��(�oY�݁rO��&�P0�3bo���lB��Q���#ܞgolhD]�����F�Ϥ��gN[��k�IV��_��h;|JrD�x��f�/��Q&���}A�/n]]�˛T+�ǫZX����U��P^qF(��р��hʤeyX|O�7�Z,C�U_{�$���?���iǤ�S&-3|��#v��-}g�v����	����0]L��R�_�nR�(9�3�o�n2k��2i���om�b�5���\r����C(�\Z\'�?��<������Q�U��j��ED�»h�)k�-����\"�\r���;��y�xs�M<���(#)��H%&���`O�Q�!Cx�G�P&bc�\n�x\r�Q�RU�\"���52�O���T[�P���*�͍D�t>�N&���CG:E�ݥby��!��a\"q��-�<��+��&6���F\">�G����(	�k��A;e���K���ԏ2i��J��U���L���]�!�hS�qc#��G�[H�p�v�=�ap(q���^�2�����{\'���Ň��l�������$G�:�Ete���I���U�2�\n5/S�V�~��\Z9Ǫ�S&-p劘L!!���_�E�P�[����z;o;��X��6�i}�e���+�i�vNvO�6��?�uwZ-��ڼ���t�Ɍ .��4�.ejiiJ74n\0�A���)9V�2y�3���Bh��LV����)��8^#6�$$�Vݧ4X�4ں��IK�; ����n{.%��܁�3�	>���e�3�Dg�U�������߿5xT>��d;m�XȘ��N�o�ԝL�;`0�}lw����	E��=\"���ڐ�/&��D�����?�Fw2m�!>��o4�����߀U��p�ܥ>m�-{��P�y�����*�/��V��h�ɓ�#6���)�n��^��\r���c��P�ΌCP����K�._��q�%���IQt�{\'N���vʤE*6	�d6�I\\��O�Q��7�����#%Y,\0����E\\[]�N�u�������2�Q�`qz	ˣK���w�kZ��_�\ZN~�����?���vݞ��{����w��i������n�l׭L��Fk����9H�9-2/3\\��(�}K���={�W�~��V]�f�m_iv�pں�6]���k�^}��.�3��R�F��!N��v�=Q�)����t;w)iJO�r�D�\'5�&g����յ���0�����6�\r�?4u��|H��Z��dQ��k^�;��wI�2uv۾�St��р�%��d��� /EQ8�}��u1IK�z`M^��=%����T���y�r�c��~R{G\'^Yo��{D��Y�\\ֿ��$S��׷G(>����*���Lױ��	�JOS�n���\']��\\L�<�\'�U�nw�V(��_l�X$�݁��t��P����G4�P����15y)��H��Io�sL��;�t�|}	�Q|��рU+S�&g��}本h<�<Y�H\0�e��1�)���Oj��?p�|�Q�W�4�Z���$d�\Z�*\Z�g[k���S&��߀%�j��Ax�c<���ɊF���]?�dg.e�9�+jP^qFյ�F��ܚ��,ω*1/3_l��6�&��Q&��]|X�P@���Y��\\���h|�Q*���R�7�H��a8�&g0�H���>݂�2;\n�����n&����Fa��H��ʡH��)��{.\\A�a����р��(��E�nw�xM�S�3��GjJ�F������M�l�L��8t�\r�/OV�߸�)\0&S\0�Ӣ���k�Bép8����뜊ݥm7��X-~?�rI�DD�?�\rp����(x�#�S&�S��\r�K��r��_^�9�{^�?�݇��nw�ŵ�t�\n�n�x��rv>�Z�x�������=�Eb��~��>�c���5��nw�w�qUk&����E�rv�6U+޵�I�wt�hS5�{�+�Ě��\'>��Y�͘8q�S(�%��ݧP�z�/V�L���d�����:<����JD�t=@���@\rr���;#=�Oe�;����(�w6��߀���Ǵ_��6����TQ�J�����v��Q&mT�:p�	�=�?~~WC`���`kkl��8r�;���@�I�b]��Ժ��!!>�\0��g�e-��ځ����ҫ�[�pt�X��WLʤ*m�Qik�%;�\n��L�P&B(!��HJ/�e9�����\\����\"#�F?��\'���f�09>Y����m4�ݓ�D�K����l�B�!jdjf������\\$˲��&ZE�$U^�m�ma�����V+S1�h�ﶤ�BY�m\0�0��$���	\0g��ѫwZ�L�3�����լzpJ3����\0�,��Q��^��z=i���,�d;C$���-��\0�\0ld�o��\0�u��NAr�ʲl0@�P��G0���oo��\'��p>4(P,I���!�B!�B!�B!�B!�E�?ge�a\'�\0\0\0\0IEND�B`�',16,16),(6,'AnnulationAdmin','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0釖�\0\0�zTXtRaw profile type exif\0\0xڭ��u��D�aŘ�=s���<��&�H6�lJ�QR�j��KD$\0�������%�Z��\\s���5V��R����t6��ϯ�{��u3�}�sI���~�q=}� ��?_7r7����}���={��ϕ���������{->L��S��S_�n=�;\nƘ���7~,} ���l��<�B9W*����y��d�-��ζ���������d���K���X�qD����|����׃���e�uͮŌ���\'e�&�7��xY#�#�I|��S�)Lq౉7;?ø�<��.���n���C�~y����ùV���GPD�q�n���0�Z��;����p����I�h_~�1�]��������u�S�����c�9���p�۷Mӱ��1^z���\rx03&�l����}�V8~<�l4�J\r\'�n\0�wb0.��]H.;+ދsر����I��K�Og6�	!��o�w���_���B�kH�c\"~$b����I)�$���Z9�s���$H�$YD�Ti%�XR�EJ)���k\0�R�UL-�����t����u�C�=�ܥ�^{�ψ#�<d�QG�~�I��<��2�l�-BiŕV^�ʪ�mbm�w�y�.����۫���<�����5�X<�ɇ׸,�քS8I�3<���PpR���b��9�����H���ΙN=��r>m�����7����_yΨ��?<g�u������v%i�Mm�\0��|i�I_>��le�i�����k��5a��,++�Ux����ܩF�m՝��u\'!t+i8|���-t��j�O�t�Y���R=47C^��A��F�`tN��1J�!O�5��>���$�c5y6�DK�8|�e�í	@vɿ��ӧy��c��/[w��Qd��]Lٹ\ZSu��L�A,\r��V#8g�9���>�l&�Z�`�����dP�xKy�R�p�����i�U��\0{�M�U͝���oaM���av:���4t�P�ؤ�f�.!��j�%��\\c�-��w13%���n���:,V�ͬ�����B\0vq���h��\Z��3)��>�[6�ݙa�o��r/�-c�p(��W ����Ӣ�5Ә�S��ڮ[bKm�T��]�����s	j}5�ܖdNm�d���é+O��<���EsD��s����h!���*uϊ_W�M�ᶦ���\ZYk��b��jt̹c�e��I�TgNX�4�V�mfp�䦯*�R��D�@���B��F���C��0LZ ��M�0X4cE�?f����(��i�YO� \r��k���dZ��0n��c�!i3;W|�u�6@%��Ь9`�բ+O�b#)}���֡�N�()�W�\0D�Vr�S��d\"��}D�Y�n;:Ψ\\�	}�o���⎠�}�0Q�5ŊB�,���R��M�~;{�R*�\r�q�B��$D�v�(b��*3�����\rGy� s-��=x3,�����!,ƴ\Z�\Zt@jL��\0�,�ДO\n|k\rҐ)��K�g*4B�6t6���~}����Ͻ�y|���ӏ�z~��y=믓�&�����^�\0y$��>4�p_������I��j\\W���nP��!�7�!�Nb�.�屰�!��I�1HN�D$��Gm��$)�^)s��f��J��S1�=��^�B�U:�J�i$�p6%D��c2R��*������L�GeW&2=�Z�d�T?��g���gD�������P)��S�d��`ax�1��R]F��F�\n,\Z7�K��\\��xH$N�9A���P� �h(�������_fRN����b<��p��}�a\rc{x���NZT\r���V�ݍ�o���¿~~4��(�\"�r��ުU|�ĠZ�8�\0�Q�oXj\"X�O � ��8}#6�$]FS�X}38�W��S�h�����}���HQC#>a {1�8���Os��7��O����gd����D���q���q��G\n�E׋ւA��g���2d$�L\0����j�@|���*�!Y��b�1�;y�H��Ʈ�(X� FΈm���	�ބ`.���9Ҟ�ܤ�*4\\/8cR<�7r��(��h���i��H7�\n�figt��qAH#����\n\n���I�Vw�ˌ[�q�����Ǉ ���ࡂ@,7¿�1������藵��P��`�tG!�\Z�yu+��\n���~��Qa:$�>��<��{/|���q�l�ո϶5�j��;�_��l[��}���W�>�ּ6a���|��Z�d�g\n�S��gh>ŭ���D�y�z���e�}��D��f�Υ�ܞ:Yl-qxTJ��A�ǵ[C�0�����L�7]����NH��7��0�q�4\n�(���*�w�\0m`q�Tj�D�u�f=ک6�h�}sC���Kн���ҿ��oD�Μ��{]_�8�T�*�lM*OE��A�A��R�ZJ�����@\0g�JE;���+�Q{|���k�Y*˅�w��̳N���+�Ju&���K�5��hq��hae&q�������g���,kH��%zt9�����Wپ�PrI�	��vÞ�5�j�\'W˒Z��Ny������P�KE��������GW˦:�5�*��-�Y]�@l�l�.���,�,�L�U.b�ܚn�k}HMv��&�ծ8w\"ّb�੶<�x��֡R�%j>O)o=�?E�Ę)�7P=��b�Mu�<w;�@��R����f���)oD(���z9G]dc��#qd�_tB�G,Tz���\03�)TJ^wjQ��xf���ꪍ�V��&��s�S\n��,m\"����s�QCjBU�T,oG5c��F-?��2�GZ�n\'��l��\"�s�����D�^\0w�\Z-�\Z¾xI�B Fʫ���!���YJɞg3�������r�!�Z�D&<8�����A�����C�c;P�ݴ�\Z�S�l��ǋ��t]RP\n�]�^��%}�^��hy�!!��V���)�u])�z�h*\n,��r�����<�S�TeS���z�4�y��T\n�TG�&t\Z�U5J%�\n��(�6ҫ��3��2#Q~A$&��`���:;ꊈ��*��%��$0�$�t�J�Y:h�%�ojv����)q6Lw��K#�U���*��4ji(�\n��{��.B�C,A8G�ݏ8\\M�q��U8Z(��Z�R�����^�^ogW�+����~��F@C*�3\'M��D=��WcM\n���Q)2Wr+Or�H�\\[Y�NK.�Q�>� mm��\' V��؈���{��f��w�t��]W��Kf��Y�C�G�tG�2�F]o��`BOEx^�EMڍ�H\\(����g*��.	��ȁՠ�1\\D�,]�E��|ߺ�Eʂ]����k>c��M��}!����<���ku�i$IR^$���s�D��˃S�\0�z�Ef��u�`3��:U�h��B�O�~E)\0�m��]L۾!tX�J�?�3�B���\"�/�����������t]�~���M�=R���?�`=	�O|�5����_��?���v̵I�2[�~I���g�rV�d�@w��r��D��5Ȍ�4�9t%�?|֥8*i7�8�����̷�meJ�$س����D`���P�s��6\n:j{�]Bϊ\r�X��!h%�d\n��Y�XM@����\0�H��E\n�Y��R+c�[�n�(�!G��.ɩ\\P�d���P��XH\n�I[�\\�n!}ڴ0u�\n�kA�5���6���BX�cs����π\0���\n�5�S��p|.;�cݡ��x�m.$Fߺ�w6\n}ָ��j]�4\"Y�p�K��X�|�*e�	zӾ��k�|*F���޸9��&i1����#(6I�<)�QN෴\\Cfе�T�WЇ������k�\0������x���6O�[�cE�E�[�>�4�n����K\Z���4��0@쵙����I�O�W�J�(�R����2Ԓ]F�����n��D�J�U�2��Y�����`��%_��+x���\Z�q[�3#fA���v�F����Z����U��g�\"�/%�C�J��(E��EUC�Y;�y�܋ҷz>ko��+D���Q�+(% �w�1�t�_��I�#nN�(�篔�5�D�c+5#d��<\0Ѭ��1!��ɍ��-�6źJ�e��d�+�p�)/��w�l^����ټ��ߥ�y�ϿKg�:����K>ρ>�d\\��=�(�q,]��I!$E�a��\n�F=c�,cud:�7\ZaK1+����Hpb3�t�^�]�U��t��;=2�S��D4���t>7q�4*<\roĥ{�L�u�ܢ�����#�\')JV����\r@P0ïJ�OCm@\r�Ѱ�͎��PU���D�g(0�\nn������2Va�[Z&Q/(�F��zpF��r͖�|D\ZuJ�[ߛ#�I�/xЈ\n��)�\\ nD����:AG��.���K�\"�d¥S��yKպ�N��t�u�u���29��A���[`��\'@���X$0��*E-4�w\"T�@��*�N�\n2)٤s�k��E�u1P��DHW0G]Se�=A���/�$@й���\r˛������V?�\\�U����oV�~Z�2�Y��i���f��\'�k^�Z������~���\'��6?��Q��]rje��a;�\'�ɕ.�R�o�4�y{#�\rs��B8�f�ay�[z�z,\"�u��������S��LX!�s@�zo�����avP���\r��F���^�� �=_A\Zp�ؠ���hb_�Y	K��槦�G�n��׫��N�qĕng��V�����ܝ���0.��\'�V���\0�rlGl%�Lke^��)sm�����{yoq���\Z�n�#`��u�j1�}��S\'�r�c[7!�u&�k��>�}�<�B)+�m�|���N\Z�у�Pr���\0����Z2�o�n��n��u�#��[yy�r0N=E2�j�Y��w޹�F�r��伜�\Z�;g>��|{�i��J�ƙ�>��7Cw;=B�{-�S�3Tu��K2NڔwO��!�[Q�*�|�Q�m>�����f~g��5�3�k��ߙ�â�ǝ\0�ޠ\Z�΀�ܸn=�y��a��xˋ���#�ښ�z>�\n�EU�8Li�ksz���c4#�YJ�.�#T�\"�T��m\"����|)��=z�9��m�(B����蔞ܥ�����Ƒߢg���t~�1ZD�V���|,TG��s�H��T��L��d3RIO�,}~��:��`��n��h��K.�9M��j�eAO\"�PU�T����X!���f�MK��R!��*q��6C0��,m��a�X���\0�U�(�չ�\"����z�>�UҀ��9U嫦�{{U�妽n�<`���om���:3��>���q����~\\�=��y���y���e���o�2����2��������j\\���~\\���ok���{��f���,��~����������\Z���(j��ݠ��(����/�4S�7=Q�Z+ZW\"!z���v��S獊ɡ�GQ��1�@��W)�\Z�������7G���eC�\r�3����4�\0\0\0bKGD\0/\0;\0�熪G\0\0\0	pHYs\0\0\0\0��~�\0\0\0tIME�	8��\0\0	�IDATx����oU����)����[�>SZ�)e��Q�f�F�=�e.˖�/��X�B_�-��؋-ن�6��,��E�O�2Ŗ	S�R�h[��\r��^�ہ�)���soo����Z(���;�{�=���$I�$I�$I�$I�$\0������u�@0���\r�GQ4�p;&���ʅ������B���sLtyж��C�B}.I�d����_�;h����j�,�A��r�:&I��\'��PJ�]�+a��8&�3�u)Nۘ\n���Ϙ$c��I�1I�$�$c��I2&ɘ$�dL�1I�$ɘ$c��I�1I�J劮!���|E�\\��Mh:�rrUXcҟ�H�j�Q��G��5�����Q��UL�-�v#�<�-��G�\"��U8�h\0�����2$�^`G��*\"�u��\n�)���$�y!��|�R%鎢h(�-S���!��u�\n�i���*Tc!#\n}����V+h��sL�~��J�.��H�i^�DWɘ$c��I�1I�$�dL��I2&ɘ$�dL�1I�$ɘ$c��I2&I�$�^uf���8u�%��ݻ��cza\'l����}�͓|�$ɘ$c��I2&I�$�dL�1I2&ɘ$c�dL�1I�$�$c��I2&ɘ$�dL�1I2&)�.�-n��[�糧�ҿaj��浦.�ǔ�W̎�p�=��-�P]\r�N����\nz�������+��&���):X���Ӿz��߀���l9��AU\\�\0��p˭�D-�������?�{`ETEp�������2||�;��T�w���p��~=�-�E� ��_���aIDU�GJ��\r�������[%���Y�o�#{�exk/��wl�)�6�_�f�2��]��jk��6n���:���?�����ˡC~CC�ҥ����t5��SF�n[��}VH��ʐr���}UU�|9�q\'�~�?������cmL)�X\r}�a����TA]oH��(�B�������~c2��-퀾������o�\nj�!]Tc#��U��8�OH́��U�2���e���\\]��[�{�#�+�Z�,�}����v˔���ae�ܷJYl��\r���km��6�ۘR43\r��?}T��J*��\r\r������Ɣ����/3�O+����/\Z30}	.�w̍)%�ap֮�����7%T\Z!�\0SS0>�xS�>9�G��C�uu���K+��q8��dXcJ��(��||Bk�R��ŋ�*͐�}o���ocJ��!x����8�zVeT�!�����m�)#���;ˠ�i������\'c�ؠɘ*���o�oא�ɠ�\njS|�+p��񇩆��.c�ԠZ[�Gu�!ec�1UjP�	�!�Ƴ��\n��g�v�����1�!�A�GP�dLeHƤ�ʐ�ɠɘTA�1-��ΟO>�`b�i��N8q.]Jv���p�$��ǐ�i�8w.�]�(��y��+Z\\��t����������55�NѢ��w��o�Ju�\0cR&!m�/><�+���k����,���iH���4��w�0&UDHeL�dPƤ�ɠ�ɐʘT�!�1�A�!%�ŋ��55�w;Ӽ	��8Osegi�m.c��!ML�g�a;|mci�m.c���~�K8�>:��A�!��f2��\ni�ASEY���>�,����� ����mL)j��^�Y�}HYu�]p�(��xӳ��o��J��-��>�\\B�:��/�R[�m����ocJ��d�ń�vP�렳�_}7����w�(���*��_��1���Y8�1����X(uHiB���ܘR4vFF��Ty��FPSSp��w��)EG���ax���S\Z!%��,��1��:yh��]�7�­k`i��CUU�C�:((���$������1e��0��;�Z_Z릛>�\r{!��$�+/�����1e`j�x1�2]8��+W�A]������3�kW6!\Z��$���g�-�Ԩ�lL93;��F��O7ŗ%�������)����Uv!}VP7�xy�4��z������]��_�ý��1� ��M�����;p�����F���Q8<O=	�^/�<�l�mmq�33����xޟ{>xF�;��T�#���;�А��r��\'G�1;T�y<~��-~�m����Ǡ�M8�~��Ș���}�sM}���c�`g�Pw�������S�n��y�NO���V2&ɘ$c�dL�1I�$�$c��I2&I�$�dL�1I2&ɘ$c��IR��ď��~�/�����ĉO}-�ߣ2���ɥ]j���|��͓�I�И�]l�p��ݘ5�$�@,��(*�Ņ��=�\"W�*x�.4�.sU������BV��UA�DQԕ��	`��^��u����(�\rls��Bl˯������v�ǎ��ǣ(*zO��m�3��y��$BJ$�|P���㎍����ί������B�����Л���k���0�vDQ4�j!I�$I�$I�$I�$)%��LmsXF\"\0\0\0\0IEND�B`�',16,16),(7,'Notification','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\00\0\0\00\0\0\0W��\0\0�IDATx��[o��3����%R˔%;�_R���A\n�zy�S?L?A^��֧�\n?�@ ��Z��(�%��lJ�hQ��ݝ�<,IQ�h9m*˅�\0.vf�����3gv�\08�;\r���~�m������v��B 8t�ۧ@l�/\0�J�O��I������P!��Z�J�o��6!�Z�P(������%�)i-H��8c�us��+�������u�\Z��^Je2�V=��aP����0F��U{<t9�u�{�Z�����m�B6���j����5Fw<��6��b��b���$c�Rnf�^�hۓ\"\"Q\\Zg�E�b#0h�9�C@�H��#�hLϭ2W^�t���-��趱��������+��\\��.�;ݓ�\"�H�1xY���2�\\�s�R1�?#�)�75w�V)-o��)r�<$�I�U[�m!s1O\"R��ũ75�K̾hp�h�3ci������H�:�X��׸W����H.N*&1��8��w�\Z��R��#@��g}I�t��j��3U����d?�	\0������{���:��]am=d|(�P6���E	@��)RnjhK� E���D|\n��}�\Z���s&��|rz��C�&�+��|���l��X.���,1W�����(R�8�ll!�����E�\rk-qW15�������U>�^�҉,�ߏ�Ȏ�^�jߓ�����nW%�r�r��\\�#4cm��ms��Bz���J@EC[K>�q�gy��hp��\n�<��!΍�#-��m��@���b���*�,�&�NF\rNk�u�x�!kw�;�W\"����@��Ehr4ű�$�g���\"�$�����G�Z*�@�����.��y�����4��Q�P[L�~/X��ߎ$t�x7����r1�!��Ϗ���~sa�d��6����)s�a�#�hl��\"1f�jֶ\'����yc	���ຒ��:7�/�N����a�I���\Z׾)s�Q��}<\n��n<�U��~8�ij��/�/r��3���36�\"Lg���7���$��(%��2�d��g�����DkA�����FS���2�_/p��<??�#�)6|M:��닣ܛ�r��+5�&�!������_O�s j�<�au����2�~�թF�	�Ѐ�8J�׉��Ա\0�I\Z��\rN����{�%�3�č�>&sd~�[���a�@F��-�(���Q��R�{�+�c|rv�uB�� �ў��b���B.���F\np�l�$\Zh�H�OϏ2����ʜ�觐Oj۲-6��H!�W/�d�32J*�R�����\n�+\r�LdJ�����v�>�\"�E�c\0�1x����!��5����ں��#Y����\";`K#����*��J���y4_�Z�|z�L�#�&��;:��a�J���L���\n�O956бǛT�h\0(%PRR��)�X%�I0q�)�$۞H?�1��<.�\Zfv�%3�e�g\ZH���|{}CL�`�y�պ�d��|6�Ѥ�=�?)��PRp�h?K�8��*M?��`��z��\0\\G��).,��3���=�И�Ľ8.G��X�P�LʣT~Iqa������<���e���\\_��@\ZA�MG��9��	[1�c9�*5+50M��$�!~��ѱA��S�|�o�D��\0����8_\"�Θ.	IsY<Wa�λ�ۄ��U�tK�KBºnt^�{.���~���\n�D�]jZkU�V���Zk�e��j5��V��7��v:���d����t�_��Ur��\0�#�\0�$�i�8T�\0\0\0\0IEND�B`�',16,16),(8,'Edition','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0 \0\0\0 \0\0\0szz�\0\0\0gAMA\0\0�ܲ�\0\0xIDATx�ŖMl����e��͇��\rd��4��!(@�\"N8J�{�máj�H��Q��R7�j�*=��*U����\n@|�@L�l�ކuL$\'1��g<��3�>=�D٬�v�~���4���y�y��\0�g	�nܿ��ӧO�<�˲��4-��\0+�x�ԩ����߬����۷�x<�M$����	���H$�m:�~�]\0��s��ի�w:�wuu���vlA�$I���rH&���x��KKKQƘV�l\"�$I\\ ���~Y	`���l��T(H7ʛ&es9�f����(��S�P�J511�Ȱ��ܹs�޵kW��H�2�dln��	N�@�������e�q0Ms���j\r�B!�\\	x�GN�����Lb~dz>��\Z �q�Z�1�ܹ�vhh�����v��������Y\n��P]Ws|ZK,}}\0c�\\aQq�p8�]$Y�=:244t�ƍI$Y������\0����,X\Z\Z�:0\0�iª� ���}�Ń[,��ᘮ�	�ҥKWc����ŋ�utt�����������?-,,�cE?���8���4��\n\0����\0Y ��`0����=�g��޽{�aؚ��ۈ�����n��^Vd3�<���%	*��\r	�\0UU166v+�=\0茱��O��N�R����]�������߽{W�o�>���=��$a��/P�N���x�ZY+]�$!�Hеk�FE�f=�<�^�z�*\nٝN�ޞ�����nW>��(��$���_ce~m�ðUU��v���`0�\Z�3���\Z�\0�g�<y�X,����x<��(H�*ҙҟ|���|�������(�ٳg�����\0d�^\"�R%899�e�������x��p���?��Q]U\"�V��\0/_�\\�}���\0�X�u��w���R�e<�]��n�E�qx�/[��׵�}K9a���K����z����F4\Z���0�ZP���Yo]��y��Ȯ�.� �z���l�������Z����\'�r�`h͖7�\nSL�\0D�߿o�দ&:t������@(���\08\0��2,R�l6[�����T*EDD�a�a�(\n]�|�DQ�;vБ#G�֭[DDd�&i�F��Q>����/[UURU�2�ݼy3\0��$@ggg���K&��0M����ݻG�w�&\0���JW�\\!UUI�u�4m#�:@&�!EQ�������\0Ԕ8{��o��,-//`3ě7ohpp�\0���L&C����UU�دi\Z��I�?�ZZZ�\0��HΟ?�����s��v;\0������p��I�|>���B�$477�j��1�0 �\"�\0c�@�8s��W�D�\0JΏ��N���Q�4����ڣG��Ν;�)��S*�\"EQ(�JQ8����Y\0{�i^�1p��Z���~��1��	��q��ፎ \"躎l6���9H��0\0����J�\'� kjj���ŋ�rC&c�L�$]��0\"\"Z]]�h4J<�H$BDDǎ���@?��4$�ɕB��i9���k�&��4^�~�t:������@�e�F�* \0��.��n���b>�� Q����k�nwC{{{CgggM__�V+\0`qq�x<>_)��އB�?�i��7@�Z��?r�\\n�����|�����X,�����O��%\0�\0�\0��h�0@�o�z�*����M]<6�H \0\0\0\0IEND�B`�',16,16);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_history`
--

LOCK TABLES `workflow_resource_history` WRITE;
/*!40000 ALTER TABLE `workflow_resource_history` DISABLE KEYS */;
INSERT INTO `workflow_resource_history` VALUES (22,1,'appointment',1,1,'2024-02-09 14:46:09','auto'),(23,2,'appointment',1,1,'2024-02-09 14:46:09','auto'),(24,3,'appointment',1,1,'2024-02-09 14:49:39','auto'),(25,4,'appointment',1,1,'2024-02-28 15:34:35','auto'),(26,5,'appointment',1,1,'2024-02-28 15:46:10','auto'),(27,6,'appointment',1,1,'2024-02-28 15:53:10','auto'),(28,7,'appointment',1,1,'2024-02-28 15:55:45','auto'),(29,8,'appointment',1,1,'2024-02-29 09:56:15','auto'),(30,9,'appointment',1,1,'2024-02-29 15:50:45','auto'),(31,10,'appointment',1,1,'2024-02-29 15:56:15','auto'),(32,11,'appointment',1,1,'2024-02-29 15:59:15','auto'),(33,12,'appointment',1,1,'2024-02-29 16:12:00','auto'),(34,13,'appointment',1,1,'2024-03-01 13:19:53','auto'),(35,14,'appointment',1,1,'2024-03-01 13:35:23','auto'),(36,14,'appointment',1,4,'2024-03-01 13:37:06','admin'),(37,15,'appointment',1,1,'2024-03-01 15:11:53','auto'),(38,16,'appointment',1,1,'2024-03-01 15:12:53','auto'),(39,17,'appointment',1,1,'2024-03-05 09:54:13','auto'),(346,18,'appointment',1,1,'2024-05-24 08:10:25','auto'),(347,19,'appointment',1,1,'2024-05-24 08:10:27','auto'),(348,20,'appointment',1,1,'2024-05-24 08:10:27','auto'),(349,21,'appointment',1,1,'2024-05-24 08:10:27','auto'),(350,22,'appointment',1,1,'2024-05-24 08:10:28','auto'),(351,23,'appointment',1,1,'2024-05-24 08:10:28','auto'),(352,24,'appointment',1,1,'2024-07-30 13:11:42','auto');
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_workflow`
--

LOCK TABLES `workflow_resource_workflow` WRITE;
/*!40000 ALTER TABLE `workflow_resource_workflow` DISABLE KEYS */;
INSERT INTO `workflow_resource_workflow` VALUES (1,'appointment',2,1,1,0),(2,'appointment',2,1,1,0),(3,'appointment',2,1,1,0),(4,'appointment',2,1,1,0),(5,'appointment',2,1,1,0),(6,'appointment',2,1,1,0),(7,'appointment',2,1,1,0),(8,'appointment',2,1,1,0),(9,'appointment',2,1,1,0),(10,'appointment',2,1,1,0),(11,'appointment',2,1,1,0),(12,'appointment',2,1,1,0),(13,'appointment',2,1,1,0),(14,'appointment',2,1,1,0),(15,'appointment',2,1,1,0),(16,'appointment',2,1,1,0),(17,'appointment',2,1,1,0),(18,'appointment',2,1,1,0),(19,'appointment',2,1,1,0),(20,'appointment',2,1,1,0),(21,'appointment',2,1,1,0),(22,'appointment',2,1,1,0),(23,'appointment',2,1,1,0),(24,'appointment',2,1,1,0);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_state`
--

LOCK TABLES `workflow_state` WRITE;
/*!40000 ALTER TABLE `workflow_state` DISABLE KEYS */;
INSERT INTO `workflow_state` VALUES (1,'Non Valid�','Rendez-vous nouvellement cr�� qui n\'a pas encore fait l\'objet d\'une validation',1,1,0,NULL,1,'172ec40d-d64e-11ee-a4dc-0242ac120002'),(2,'Valid�','Rendez-vous valid� soit automatiquement, soit par l\'action d\'un administrateur',1,0,0,1,2,'172ec952-d64e-11ee-a4dc-0242ac120002'),(3,'Annul�','Rendez-vous qui a �t� annul� soit pas l\'usager, soit par un administrateur',1,0,0,5,3,'172eca8c-d64e-11ee-a4dc-0242ac120002'),(4,'Honor�','Rendez-vous qui a �t� honor� par l\'usager et d�clar� comme tel par un administrateur',1,0,0,NULL,4,'172ecb5e-d64e-11ee-a4dc-0242ac120002'),(5,'Non honor�','Rendez-vous qui n\'a pas �t� honor� par l\'usager et d�clar� comme tel par un administrateur',1,0,0,NULL,5,'172ecc2f-d64e-11ee-a4dc-0242ac120002'),(6,'Rendez-Vous Anonymis�','Un rendez-vous anonymis� automatiquement pour se conformer � RGPD',1,0,0,NULL,6,'8c08235c-b816-45f2-812f-59938d09b87e'),(7,'Rendez-Vous Supprim�','Suppression du rendez-vous automatique suivant un d�lai',1,0,0,NULL,7,'cbcd79ac-c9df-4f48-97e5-eb30f906946a');
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_gru_history`
--

LOCK TABLES `workflow_task_notify_gru_history` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_gru_history` DISABLE KEYS */;
INSERT INTO `workflow_task_notify_gru_history` VALUES (22,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;12/02/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=1f42f1b5e\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=1f42f1b5e\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/grusupply/notification] : ',0),(23,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;15/02/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=27209b899\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=27209b899\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/grusupply/notification] : ',0),(24,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;prenom&nbsp;nom,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;13/02/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=307de7871\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=307de7871\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0),(25,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;29/02/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=45078fbd0\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=45078fbd0\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/grusupply/notification] : ',0),(26,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=5facef2e3\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=5facef2e3\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://127.0.0.1:8080/rendezvous/rest/grusupply/notification] : ',0),(27,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;12:00 &agrave;&nbsp;13:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=66e496225\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=66e496225\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://127.0.0.1:8080/rendezvous/rest/notification/send] : ',0),(28,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;29/02/2024 de&nbsp;17:00 &agrave;&nbsp;18:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=72603ed23\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=72603ed23\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/notification/send] : ',0),(30,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;philippe&nbsp;bareille,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;11:00 &agrave;&nbsp;12:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=956cce199\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=956cce199\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/notification/send] : ',0),(31,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;ph&nbsp;ba,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=10270795a1\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=10270795a1\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/notification/send] : ',0),(32,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;phil&nbsp;bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=11d4fbdbdc\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=11d4fbdbdc\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/rendezvous/rest/notification/send] : ',0),(33,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;ph&nbsp;ba,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;04/03/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=124d3d3dd3\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=124d3d3dd3\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0),(34,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Phil&nbsp;Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;18/03/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=131830eb6c\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=131830eb6c\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://127.0.0.1:8080/rendezvous/rest/grusupply/notification] : ',0),(35,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Ginette&nbsp;Michu,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;05/03/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=147009507d\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=147009507d\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0),(37,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;P&nbsp;B,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;16:00 &agrave;&nbsp;17:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=15fe52817e\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=15fe52817e\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0),(38,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Ph&nbsp;B,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/03/2024 de&nbsp;17:00 &agrave;&nbsp;18:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=16339f91d6\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=16339f91d6\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://127.0.0.1:8080/rendezvous/rest/grusupply/notification] : ',0),(39,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;P&nbsp;B,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;08/03/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=177bd64a8d\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=177bd64a8d\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0),(346,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Peter&nbsp;Parker,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;31/05/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=18239f10cf\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=18239f10cf\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(347,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Wade&nbsp;Wilson,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;13/06/2024 de&nbsp;09:00 &agrave;&nbsp;10:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=19068fd1dc\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=19068fd1dc\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(348,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Harley&nbsp;Quinn,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;18/07/2024 de&nbsp;11:00 &agrave;&nbsp;12:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=20ce9e1a66\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=20ce9e1a66\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(349,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Bruce&nbsp;Banner,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;29/08/2024 de&nbsp;10:00 &agrave;&nbsp;11:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=21b4d294a1\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=21b4d294a1\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(350,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Wayne&nbsp;Campbell,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;24/10/2024 de&nbsp;11:00 &agrave;&nbsp;12:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=22b557a23c\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=22b557a23c\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(351,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;Maximus&nbsp;Decimus Meridius,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;14/11/2024 de&nbsp;16:00 &agrave;&nbsp;17:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=233e93c5fd\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=233e93c5fd\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(352,1,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre rendez-vous pour le conseil juridique','<p>Bonjour&nbsp;tata&nbsp;toto,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre rendez-vous du&nbsp;01/08/2024 de&nbsp;14:00 &agrave;&nbsp;15:00 a bien &eacute;t&eacute; valid&eacute;.</p>\r\n<p>Merci de pr&eacute;parer les &eacute;l&eacute;ments n&eacute;cessaires pour que notre conseiller juridique vous apporte tous les &eacute;l&eacute;ments.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez &agrave; tout moment modifier ce cr&eacute;neau en cliquant sur <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewAppointmentCalendar&amp;id_form=1&amp;nbPlacesToTake=1&amp;refAppointment=24ee9f2b3e\">ce lien</a>, ou l\'annuler en cliquant <a href=\"http://localhost:8080/rendezvous/jsp/site/Portal.jsp?page=appointment&amp;view=getViewCancelAppointment&amp;refAppointment=24ee9f2b3e\">ici</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; nos services en ligne,</p>\r\n<p>L\'&eacute;quipe CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0);
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
);
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
);
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
);
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
);
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
);
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
);
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
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-31 11:03:32
