/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

DROP TABLE IF EXISTS `appointmentgru_`;
CREATE TABLE IF NOT EXISTS `appointmentgru_` (
  `id_appointmentgru` int(11) NOT NULL,
  `guid` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_appointmentgru`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointmentgru_` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointmentgru_` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_appointment`;
CREATE TABLE IF NOT EXISTS `appointment_appointment` (
  `id_appointment` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nb_places` int(11) NOT NULL DEFAULT 0,
  `is_cancelled` tinyint(1) NOT NULL DEFAULT 0,
  `id_action_cancelled` int(11) DEFAULT NULL,
  `notification` int(11) NOT NULL DEFAULT 0,
  `id_admin_user` int(11) DEFAULT 0,
  `date_appointment_create` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_access_code_create` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `is_surbooked` tinyint(1) NOT NULL DEFAULT 0,
  `id_action_reported` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_appointment`),
  UNIQUE KEY `reference_idx` (`reference`),
  KEY `fk_appointment_appointment_appointment_user_idx` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=852 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_appointment` DISABLE KEYS */;
INSERT INTO `appointment_appointment` (`id_appointment`, `reference`, `nb_places`, `is_cancelled`, `id_action_cancelled`, `notification`, `id_admin_user`, `date_appointment_create`, `admin_access_code_create`, `id_user`, `is_surbooked`, `id_action_reported`) VALUES
	(841, '8415c682', 1, 0, 0, 0, 0, '2022-03-09 12:16:37', NULL, 1, 0, 0),
	(842, '8427c031', 2, 0, 0, 0, 0, '2022-03-09 16:08:50', NULL, 2, 0, 0),
	(843, '8432f2a6', 1, 0, 0, 0, 0, '2022-03-09 16:40:36', NULL, 3, 0, 0),
	(844, '84476f76', 1, 0, 0, 0, 0, '2022-03-09 16:44:53', NULL, 4, 0, 0),
	(845, '8452174f', 2, 0, 0, 0, 0, '2022-03-10 10:42:01', NULL, 5, 0, 0),
	(846, '8464e6ad', 1, 0, 0, 0, 0, '2022-03-10 14:50:38', NULL, 6, 0, 0),
	(847, '847a8184', 1, 0, 0, 0, 0, '2022-03-10 15:57:20', NULL, 7, 0, 0),
	(848, '84839c90', 1, 0, 0, 0, 0, '2022-03-10 15:57:49', NULL, 8, 0, 0),
	(849, '84901b28', 2, 0, 0, 0, 0, '2022-03-10 16:31:55', NULL, 9, 0, 0),
	(850, '850fa433', 1, 0, 0, 0, 0, '2022-03-10 16:32:58', NULL, 10, 0, 0),
	(851, '851d396f', 1, 0, 0, 0, 0, '2022-03-11 09:38:41', NULL, 11, 0, 0);
/*!40000 ALTER TABLE `appointment_appointment` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_appointment_response`;
CREATE TABLE IF NOT EXISTS `appointment_appointment_response` (
  `id_appointment_response` int(11) NOT NULL AUTO_INCREMENT,
  `id_response` int(11) NOT NULL,
  `id_appointment` int(11) NOT NULL,
  PRIMARY KEY (`id_appointment_response`),
  UNIQUE KEY `appointment_appointment_response_unique` (`id_appointment`,`id_response`),
  KEY `fk_appointment_appointment_response_appointment_appointment_idx` (`id_appointment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_appointment_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_appointment_response` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_appointment_slot`;
CREATE TABLE IF NOT EXISTS `appointment_appointment_slot` (
  `id_appointment` int(11) NOT NULL,
  `id_slot` int(11) NOT NULL,
  `nb_places` int(11) NOT NULL,
  PRIMARY KEY (`id_appointment`,`id_slot`),
  KEY `fk_appointment_appointment_slot_slot` (`id_slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_appointment_slot` DISABLE KEYS */;
INSERT INTO `appointment_appointment_slot` (`id_appointment`, `id_slot`, `nb_places`) VALUES
	(149, 940, 1),
	(372, 1532, 1),
	(372, 1533, 1),
	(721, 3233, 1),
	(841, 3653, 1),
	(842, 3651, 2),
	(843, 3654, 1),
	(844, 3651, 1),
	(845, 3653, 2),
	(846, 3656, 1),
	(847, 3658, 1),
	(848, 3658, 1),
	(849, 3658, 2),
	(850, 3657, 1),
	(851, 3660, 1);
/*!40000 ALTER TABLE `appointment_appointment_slot` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_calendar_template`;
CREATE TABLE IF NOT EXISTS `appointment_calendar_template` (
  `id_calendar_template` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_calendar_template`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_calendar_template` DISABLE KEYS */;
INSERT INTO `appointment_calendar_template` (`id_calendar_template`, `title`, `description`, `template_path`) VALUES
	(1, 'Calendrier', 'Calendrier des créneaux disponibles et indisponibles', 'skin/plugins/appointment/calendar/appointment_form_calendar.html'),
	(2, 'Calendrier jours ouverts', 'Calendrier des créneaux disponibles et indisponibles (jours ouverts)', 'skin/plugins/appointment/calendar/appointment_form_calendar_opendays.html'),
	(3, 'Liste des creneaux disponibles', 'Liste des créneaux disponibles', 'skin/plugins/appointment/calendar/appointment_form_list_open_slots.html'),
	(4, 'Liste des creneaux disponibles jours ouverts', 'Liste des créneaux disponibles (jours ouverts)', 'skin/plugins/appointment/calendar/appointment_form_list_open_slots_opendays.html'),
	(5, 'Liste des creneaux disponible regroup├⌐s', 'Liste des creneaux disponible regroupés', 'skin/plugins/appointment/calendar/appointment_form_list_open_slots_grouped.html');
/*!40000 ALTER TABLE `appointment_calendar_template` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_category`;
CREATE TABLE IF NOT EXISTS `appointment_category` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nb_max_appointments_per_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_category`),
  UNIQUE KEY `appointment_category_unique_label` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_category` DISABLE KEYS */;
INSERT INTO `appointment_category` (`id_category`, `label`, `nb_max_appointments_per_user`) VALUES
	(2, 'Autres', 1);
/*!40000 ALTER TABLE `appointment_category` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_closing_day`;
CREATE TABLE IF NOT EXISTS `appointment_closing_day` (
  `id_closing_day` int(11) NOT NULL AUTO_INCREMENT,
  `date_of_closing_day` date NOT NULL,
  `id_form` int(11) NOT NULL,
  PRIMARY KEY (`id_closing_day`),
  UNIQUE KEY `appointment_closing_day_unique` (`id_form`,`date_of_closing_day`),
  KEY `fk_appointment_closing_day_appointment_form_idx` (`id_form`),
  KEY `date_of_closing_day` (`date_of_closing_day`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_closing_day` DISABLE KEYS */;
INSERT INTO `appointment_closing_day` (`id_closing_day`, `date_of_closing_day`, `id_form`) VALUES
	(30, '2021-04-16', 3),
	(29, '2021-04-17', 3),
	(28, '2021-04-18', 3),
	(27, '2021-04-19', 3),
	(26, '2021-04-20', 3),
	(25, '2021-04-21', 3);
/*!40000 ALTER TABLE `appointment_closing_day` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_comment`;
CREATE TABLE IF NOT EXISTS `appointment_comment` (
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
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `appointment_comment` DISABLE KEYS */;
INSERT INTO `appointment_comment` (`id_comment`, `id_form`, `starting_validity_date`, `starting_validity_time`, `ending_validity_date`, `ending_validity_time`, `comment`, `comment_creation_date`, `comment_user_creator`) VALUES
	(214, 5, '2021-05-17', '00:00:00', '2021-05-17', '00:00:00', '<p>dazdzad</p>', '2021-05-20', 'testchef'),
	(215, 5, '2021-05-17', '00:00:00', '2021-05-17', '00:00:00', '<p>dddd</p>', '2021-05-20', 'testchef'),
	(216, 5, '2021-05-18', '00:00:00', '2021-05-18', '00:00:00', '<p>TEST ADMIN</p>', '2021-05-20', 'admin'),
	(217, 5, '2021-05-19', '00:00:00', '2021-05-19', '00:00:00', '<p>TEST CHEF AVEC DROIT</p>', '2021-05-20', 'testchef'),
	(221, 5, '2021-11-08', '10:00:00', '2021-11-08', '12:00:00', '<p>1</p>', '2021-11-08', 'admin'),
	(222, 5, '2021-11-08', '09:00:00', '2021-11-08', '10:00:00', '<p>2</p>', '2021-11-08', 'admin');
/*!40000 ALTER TABLE `appointment_comment` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_comment_notification_cf`;
CREATE TABLE IF NOT EXISTS `appointment_comment_notification_cf` (
  `notify_type` varchar(45) NOT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `appointment_comment_notification_cf` DISABLE KEYS */;
INSERT INTO `appointment_comment_notification_cf` (`notify_type`, `sender_name`, `subject`, `message`) VALUES
	('CREATE', 'RdV Titres R7', 'Notification de cr??ation de commentaire', '<p>Bonjour,</p>\r\n<p>Un commentaire a &eacute;t&eacute; ajout&eacute; le ${creation_date!} sur le planning de rdv du "${form_title!}".</p>\r\n<p>Commentaire appliqu&eacute; du ${date_start_validity!} &agrave; ${time_start_validity!} au ${date_end_validity!} &agrave; ${time_end_validity!}.</p>\r\n<p>&nbsp;</p>\r\n<p>Par ${creator_user_name!}</p>\r\n<p>Commentaire :</p>\r\n<p>${comment!}</p>\r\n<p>&nbsp;</p>\r\n<p>--</p>\r\n<p>Ne pas r&eacute;pondre</p>'),
	('DELETE', 'RdV Titres R7', 'Notification de suppression de commentaire', '<p>Bonjour,</p>\r\n<p>Un commentaire vient d\'&ecirc;tre supprim&eacute; sur le planning de rdv du "${form_title!}".</p>\r\n<p>Commentaire appliqu&eacute; du ${date_start_validity!} &agrave; ${time_start_validity!} au ${date_end_validity!} &agrave; ${time_end_validity!}.</p>\r\n<p><br />Par ${creator_user_name!}</p>\r\n<p>Commentaire :</p>\r\n<p>${comment!}</p>\r\n<p>&nbsp;</p>\r\n<p>--</p>\r\n<p>Ne pas r&eacute;pondre</p>'),
	('UPDATE', 'RdV Titres R7', 'Notification de modification de commentaire', '<p>Bonjour,</p>\r\n<p>Un commentaire vient d\'&ecirc;tre modifi&eacute; sur le planning de rdv du "${form_title!}".</p>\r\n<p>Commentaire appliqu&eacute; du ${date_start_validity!} &agrave; ${time_start_validity!} au ${date_end_validity!} &agrave; ${time_end_validity!}.</p>\r\n<p><br />Par ${creator_user_name!}</p>\r\n<p>Commentaire :</p>\r\n<p>${comment!}</p>\r\n<p>&nbsp;</p>\r\n<p>--</p>\r\n<p>Ne pas r&eacute;pondre</p>');
/*!40000 ALTER TABLE `appointment_comment_notification_cf` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_display`;
CREATE TABLE IF NOT EXISTS `appointment_display` (
  `id_display` int(11) NOT NULL AUTO_INCREMENT,
  `display_title_fo` tinyint(1) NOT NULL DEFAULT 0,
  `icon_form_content` mediumblob DEFAULT NULL,
  `icon_form_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nb_weeks_to_display` int(11) NOT NULL DEFAULT 0,
  `is_displayed_on_portlet` tinyint(1) NOT NULL DEFAULT 1,
  `id_calendar_template` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  PRIMARY KEY (`id_display`),
  UNIQUE KEY `appointment_display_unique` (`id_form`),
  KEY `fk_appointment_display_appointment_calendar_template_idx` (`id_calendar_template`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_display` DISABLE KEYS */;
INSERT INTO `appointment_display` (`id_display`, `display_title_fo`, `icon_form_content`, `icon_form_mime_type`, `nb_weeks_to_display`, `is_displayed_on_portlet`, `id_calendar_template`, `id_form`) VALUES
	(3, 0, _binary '', 'NULL', 10, 0, 5, 3),
	(5, 1, _binary '', 'NULL', 6, 1, 3, 5);
/*!40000 ALTER TABLE `appointment_display` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_form`;
CREATE TABLE IF NOT EXISTS `appointment_form` (
  `id_form` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `starting_validity_date` date DEFAULT NULL,
  `ending_validity_date` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `id_workflow` int(11) DEFAULT NULL,
  `workgroup` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_multislot_appointment` tinyint(1) NOT NULL DEFAULT 0,
  `role_fo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capacity_per_slot` int(11) NOT NULL DEFAULT 5,
  PRIMARY KEY (`id_form`),
  KEY `starting_validity_date_idx` (`starting_validity_date`),
  KEY `ending_validity_date_idx` (`ending_validity_date`),
  KEY `fk_appointment_form_appointment_category_idx` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_form` DISABLE KEYS */;
INSERT INTO `appointment_form` (`id_form`, `title`, `description`, `reference`, `id_category`, `starting_validity_date`, `ending_validity_date`, `is_active`, `id_workflow`, `workgroup`, `is_multislot_appointment`, `role_fo`, `capacity_per_slot`) VALUES
	(3, 'TEST YYU multi-slot normal', 'Ceci est un test de YYU multi slot validation auto ZZZZ', '', 2, '2021-04-02', NULL, 0, 1, 'groupe_yyu', 1, 'restricted', 5),
	(5, 'Agenda générique', 'Agenda de démonstation', '', NULL, '2021-07-01', NULL, 1, 51, 'all', 0, 'none', 5);
/*!40000 ALTER TABLE `appointment_form` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_form_message`;
CREATE TABLE IF NOT EXISTS `appointment_form_message` (
  `id_form_message` int(11) NOT NULL AUTO_INCREMENT,
  `calendar_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_firstname_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_firstname_help` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_lastname_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_lastname_help` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_email_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_email_help` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_confirmationEmail_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_confirmationEmail_help` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_appointment_created` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `url_redirect_after_creation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_appointment_canceled` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `label_button_redirection` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_available_slot` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `calendar_description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `calendar_reserve_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `calendar_full_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_form` int(11) NOT NULL,
  PRIMARY KEY (`id_form_message`),
  KEY `fk_appointment_form_message_appointment_form_idx` (`id_form`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_form_message` DISABLE KEYS */;
INSERT INTO `appointment_form_message` (`id_form_message`, `calendar_title`, `field_firstname_title`, `field_firstname_help`, `field_lastname_title`, `field_lastname_help`, `field_email_title`, `field_email_help`, `field_confirmationEmail_title`, `field_confirmationEmail_help`, `text_appointment_created`, `url_redirect_after_creation`, `text_appointment_canceled`, `label_button_redirection`, `no_available_slot`, `calendar_description`, `calendar_reserve_label`, `calendar_full_label`, `id_form`) VALUES
	(3, 'Choisir une date', 'Pr├⌐nom', '', 'Nom', '', 'Email', '', 'Confirmation Email', '', '<p>Votre demande de rendez-vous a bien &eacute;t&eacute; cr&eacute;&eacute;e avec la reference %%REF%%</p>', 'jsp/site/Portal.jsp?page=appointment&view=getMyAppointments', '<p>Votre demande de rendez-vous a bien &eacute;t&eacute; annul&eacute;e</p>', 'Terminer', 'Aucun cr├⌐neau disponible n\'a ├⌐t├⌐ trouv├⌐. Veuillez r├⌐iterer votre recherche ult├⌐rieurement.', '', 'R├⌐serv├⌐xx', 'Completxx', 3),
	(5, 'Choix de la date', 'Surname', '', 'Name', '', 'E-mail', '', 'E-mail confirm', '', '<p>Your demand <strong>has been accepted</strong> with this reference<strong>&nbsp;%%REF%%</strong></p>', 'jsp/site/Portal.jsp', '<p>Your appointement is canceled</p>', 'Finish !', 'No more slots available ! Please renew your demand in a moment.', '<p>Beware if no slots are available, many slots&nbsp;will be available in a few hours !</p>\r\n<div id="gtx-trans" style="position: absolute; left: 132px; top: 25px;">&nbsp;</div>', 'Book', 'No more slots available !', 5);
/*!40000 ALTER TABLE `appointment_form_message` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_form_portlet`;
CREATE TABLE IF NOT EXISTS `appointment_form_portlet` (
  `id_portlet` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  PRIMARY KEY (`id_portlet`,`id_form`),
  KEY `fk_appointment_form_portlet_appointment_form_idx` (`id_form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_form_portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_form_portlet` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_form_rule`;
CREATE TABLE IF NOT EXISTS `appointment_form_rule` (
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_form_rule` DISABLE KEYS */;
INSERT INTO `appointment_form_rule` (`id_form_rule`, `is_captcha_enabled`, `is_mandatory_email_enabled`, `is_active_authentication`, `nb_days_before_new_appointment`, `min_time_before_appointment`, `nb_max_appointments_per_user`, `nb_days_for_max_appointments_per_user`, `bo_overbooking`, `id_form`) VALUES
	(3, 0, 1, 0, 0, 2, 0, 0, 1, 3),
	(5, 0, 0, 0, 0, 0, 0, 0, 0, 5);
/*!40000 ALTER TABLE `appointment_form_rule` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_localization`;
CREATE TABLE IF NOT EXISTS `appointment_localization` (
  `id_localization` int(11) NOT NULL AUTO_INCREMENT,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_form` int(11) NOT NULL,
  PRIMARY KEY (`id_localization`),
  KEY `fk_appointment_localization_appointment_form_idx` (`id_form`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_localization` DISABLE KEYS */;
INSERT INTO `appointment_localization` (`id_localization`, `longitude`, `latitude`, `address`, `id_form`) VALUES
	(3, 2.3211, 48.83, '122 rue d\'Al├⌐sia, 75014 PARIS', 3),
	(5, 2.341, 48.8601, '4 place du Louvre, 75001 PARIS', 5);
/*!40000 ALTER TABLE `appointment_localization` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_reservation_rule`;
CREATE TABLE IF NOT EXISTS `appointment_reservation_rule` (
  `id_reservation_rule` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 1,
  `max_capacity_per_slot` int(11) NOT NULL DEFAULT 0,
  `max_people_per_appointment` int(11) NOT NULL DEFAULT 0,
  `id_form` int(11) NOT NULL,
  `duration_appointments` int(11) NOT NULL DEFAULT 15,
  PRIMARY KEY (`id_reservation_rule`),
  KEY `fk_appointment_reservation_rule_appointment_form_idx` (`id_form`),
  KEY `fk_appointment_working_day_appointment_reservation_rule_idx` (`id_reservation_rule`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `appointment_reservation_rule` DISABLE KEYS */;
INSERT INTO `appointment_reservation_rule` (`id_reservation_rule`, `name`, `description`, `color`, `enable`, `max_capacity_per_slot`, `max_people_per_appointment`, `id_form`, `duration_appointments`) VALUES
	(10, 'P??riode par d??faut', 'P??riode par d??faut', '#d031dd', 1, 5, 2, 5, 15),
	(22, 'P??riode verte', 'P??riode d??faut', '#47d737', 1, 7, 2, 5, 15),
	(37, 'P??riode rouge', 'P??riode rouge', '#fc3114', 1, 3, 2, 5, 15);
/*!40000 ALTER TABLE `appointment_reservation_rule` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_resource_app_res`;
CREATE TABLE IF NOT EXISTS `appointment_resource_app_res` (
  `id_appointment` int(11) NOT NULL DEFAULT 0,
  `id_app_form_res_type` int(11) NOT NULL DEFAULT 0,
  `id_resource` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_appointment`,`id_app_form_res_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_resource_app_res` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_resource_app_res` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_resource_form_rt`;
CREATE TABLE IF NOT EXISTS `appointment_resource_form_rt` (
  `id` int(11) NOT NULL DEFAULT 0,
  `id_appointment_form` int(11) NOT NULL DEFAULT 0,
  `resource_type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_app_admin_user` smallint(6) NOT NULL DEFAULT 0,
  `is_localization` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_appointment_resource_form_rt_name` (`resource_type_name`),
  KEY `fk_appointment_res_form_rt_id_form` (`id_appointment_form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_resource_form_rt` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_resource_form_rt` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_slot`;
CREATE TABLE IF NOT EXISTS `appointment_slot` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3661 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_slot` DISABLE KEYS */;
INSERT INTO `appointment_slot` (`id_slot`, `starting_date_time`, `ending_date_time`, `is_open`, `is_specific`, `max_capacity`, `nb_remaining_places`, `nb_potential_remaining_places`, `nb_places_taken`, `id_form`) VALUES
	(3636, '2021-11-25 10:00:00', '2021-11-25 10:30:00', 1, 0, 3, 3, 3, 0, 5),
	(3637, '2021-11-29 10:00:00', '2021-11-29 11:00:00', 1, 1, 1, 1, 1, 0, 5),
	(3638, '2021-11-29 11:00:00', '2021-11-29 12:00:00', 1, 1, 6, 6, 6, 0, 5),
	(3639, '2021-11-29 12:00:00', '2021-11-29 13:00:00', 0, 1, 6, 6, 6, 0, 5),
	(3640, '2021-11-29 13:00:00', '2021-11-29 14:00:00', 1, 1, 6, 6, 6, 0, 5),
	(3641, '2021-11-29 14:00:00', '2021-11-29 15:00:00', 1, 1, 6, 6, 6, 0, 5),
	(3650, '2022-03-10 10:00:00', '2022-03-10 10:30:00', 1, 0, 3, 3, 3, 0, 5),
	(3651, '2022-03-10 10:30:00', '2022-03-10 11:00:00', 1, 0, 3, 0, 0, 3, 5),
	(3652, '2022-03-10 11:00:00', '2022-03-10 12:00:00', 1, 0, 5, 5, 5, 0, 5),
	(3653, '2022-03-10 13:00:00', '2022-03-10 14:00:00', 1, 0, 5, 2, 2, 3, 5),
	(3654, '2022-03-10 14:00:00', '2022-03-10 15:00:00', 1, 0, 5, 4, 4, 1, 5),
	(3655, '2022-03-17 10:30:00', '2022-03-17 11:00:00', 1, 0, 3, 3, 3, 0, 5),
	(3656, '2022-03-17 14:00:00', '2022-03-17 15:00:00', 1, 0, 5, 4, 4, 1, 5),
	(3657, '2022-03-17 13:00:00', '2022-03-17 14:00:00', 1, 0, 5, 4, 4, 1, 5),
	(3658, '2022-03-17 11:00:00', '2022-03-17 12:00:00', 1, 0, 5, 1, 1, 4, 5),
	(3659, '2022-03-17 10:00:00', '2022-03-17 10:30:00', 1, 0, 3, 3, 3, 0, 5),
	(3660, '2022-03-31 11:00:00', '2022-03-31 12:00:00', 1, 0, 5, 4, 4, 1, 5);
/*!40000 ALTER TABLE `appointment_slot` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_time_slot`;
CREATE TABLE IF NOT EXISTS `appointment_time_slot` (
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
) ENGINE=InnoDB AUTO_INCREMENT=14512 DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `appointment_time_slot` DISABLE KEYS */;
INSERT INTO `appointment_time_slot` (`id_time_slot`, `starting_time`, `ending_time`, `is_open`, `max_capacity`, `id_working_day`) VALUES
	(1472, '10:00:00', '11:00:00', 1, 0, 77),
	(1473, '11:00:00', '12:00:00', 1, 5, 77),
	(1474, '12:00:00', '13:00:00', 0, 5, 77),
	(1475, '13:00:00', '14:00:00', 1, 5, 77),
	(1476, '14:00:00', '15:00:00', 1, 5, 77),
	(1477, '10:00:00', '10:30:00', 1, 3, 78),
	(1478, '11:00:00', '12:00:00', 1, 5, 78),
	(1479, '12:00:00', '13:00:00', 0, 5, 78),
	(1480, '13:00:00', '14:00:00', 1, 5, 78),
	(1481, '14:00:00', '15:00:00', 1, 5, 78),
	(1482, '10:30:00', '11:00:00', 1, 3, 78),
	(1588, '09:00:00', '09:30:00', 1, 3, 86),
	(1589, '09:30:00', '10:00:00', 1, 3, 86),
	(1590, '10:00:00', '10:30:00', 1, 3, 86),
	(1591, '10:30:00', '11:00:00', 1, 3, 86),
	(1592, '11:00:00', '11:30:00', 1, 3, 86),
	(1593, '11:30:00', '12:00:00', 1, 3, 86),
	(1594, '12:00:00', '12:30:00', 1, 3, 86),
	(1595, '12:30:00', '13:00:00', 1, 3, 86),
	(1596, '13:00:00', '13:30:00', 1, 3, 86),
	(1597, '13:30:00', '14:00:00', 1, 3, 86),
	(1598, '14:00:00', '14:30:00', 1, 3, 86),
	(1599, '14:30:00', '15:00:00', 1, 3, 86),
	(1600, '15:00:00', '15:30:00', 1, 3, 86),
	(1601, '15:30:00', '16:00:00', 1, 3, 86),
	(1602, '16:00:00', '16:30:00', 1, 3, 86),
	(1603, '09:00:00', '09:30:00', 1, 3, 87),
	(1604, '09:30:00', '10:00:00', 1, 3, 87),
	(1605, '10:00:00', '10:30:00', 1, 3, 87),
	(1606, '10:30:00', '11:00:00', 1, 3, 87),
	(1607, '11:00:00', '11:30:00', 1, 3, 87),
	(1608, '11:30:00', '12:00:00', 1, 3, 87),
	(1609, '12:00:00', '12:30:00', 1, 3, 87),
	(1610, '12:30:00', '13:00:00', 1, 3, 87),
	(1611, '13:00:00', '13:30:00', 1, 3, 87),
	(1612, '13:30:00', '14:00:00', 1, 3, 87),
	(1613, '14:00:00', '14:30:00', 1, 3, 87),
	(1614, '14:30:00', '15:00:00', 1, 3, 87),
	(1615, '15:00:00', '15:30:00', 1, 3, 87),
	(1616, '15:30:00', '16:00:00', 1, 3, 87),
	(1617, '16:00:00', '16:30:00', 1, 3, 87),
	(1618, '09:00:00', '09:30:00', 1, 3, 88),
	(1619, '09:30:00', '10:00:00', 1, 3, 88),
	(1620, '10:00:00', '10:30:00', 1, 3, 88),
	(1621, '10:30:00', '11:00:00', 1, 3, 88),
	(1622, '11:00:00', '11:30:00', 1, 3, 88),
	(1623, '11:30:00', '12:00:00', 1, 3, 88),
	(1624, '12:00:00', '12:30:00', 1, 3, 88),
	(1625, '12:30:00', '13:00:00', 1, 3, 88),
	(1626, '13:00:00', '13:30:00', 1, 3, 88),
	(1627, '13:30:00', '14:00:00', 1, 3, 88),
	(1628, '14:00:00', '14:30:00', 1, 3, 88),
	(1629, '14:30:00', '15:00:00', 1, 3, 88),
	(1630, '15:00:00', '15:30:00', 1, 3, 88),
	(1631, '15:30:00', '16:00:00', 1, 3, 88),
	(1632, '16:00:00', '16:30:00', 1, 3, 88),
	(1633, '09:00:00', '09:30:00', 1, 3, 89),
	(1634, '09:30:00', '10:00:00', 1, 3, 89),
	(1635, '10:00:00', '10:30:00', 1, 3, 89),
	(1636, '10:30:00', '11:00:00', 1, 3, 89),
	(1637, '11:00:00', '11:30:00', 1, 3, 89),
	(1638, '11:30:00', '12:00:00', 1, 3, 89),
	(1639, '12:00:00', '12:30:00', 1, 3, 89),
	(1640, '12:30:00', '13:00:00', 1, 3, 89),
	(1641, '13:00:00', '13:30:00', 1, 3, 89),
	(1642, '13:30:00', '14:00:00', 1, 3, 89),
	(1643, '14:00:00', '14:30:00', 1, 3, 89),
	(1644, '14:30:00', '15:00:00', 1, 3, 89),
	(1645, '15:00:00', '15:30:00', 1, 3, 89),
	(1646, '15:30:00', '16:00:00', 1, 3, 89),
	(1647, '16:00:00', '16:30:00', 1, 3, 89),
	(1648, '09:00:00', '09:30:00', 1, 3, 90),
	(1649, '09:30:00', '10:00:00', 1, 3, 90),
	(1650, '10:00:00', '10:30:00', 1, 3, 90),
	(1651, '10:30:00', '11:00:00', 1, 3, 90),
	(1652, '11:00:00', '11:30:00', 1, 3, 90),
	(1653, '11:30:00', '12:00:00', 1, 3, 90),
	(1654, '12:00:00', '12:30:00', 1, 3, 90),
	(1655, '12:30:00', '13:00:00', 1, 3, 90),
	(1656, '13:00:00', '13:30:00', 1, 3, 90),
	(1657, '13:30:00', '14:00:00', 1, 3, 90),
	(1658, '14:00:00', '14:30:00', 1, 3, 90),
	(1659, '14:30:00', '15:00:00', 1, 3, 90),
	(1660, '15:00:00', '15:30:00', 1, 3, 90),
	(1661, '15:30:00', '16:00:00', 1, 3, 90),
	(1662, '16:00:00', '16:30:00', 1, 3, 90),
	(1663, '09:00:00', '09:30:00', 1, 3, 91),
	(1664, '09:30:00', '10:00:00', 1, 3, 91),
	(1665, '10:00:00', '10:30:00', 1, 3, 91),
	(1666, '10:30:00', '11:00:00', 1, 3, 91),
	(1667, '11:00:00', '11:30:00', 1, 3, 91),
	(1668, '11:30:00', '12:00:00', 1, 3, 91),
	(1669, '12:00:00', '12:30:00', 1, 3, 91),
	(1670, '12:30:00', '13:00:00', 1, 3, 91),
	(1671, '13:00:00', '13:30:00', 1, 3, 91),
	(1672, '13:30:00', '14:00:00', 1, 3, 91),
	(1673, '14:00:00', '14:30:00', 1, 3, 91),
	(1674, '14:30:00', '15:00:00', 1, 3, 91),
	(1675, '15:00:00', '15:30:00', 1, 3, 91),
	(1676, '15:30:00', '16:00:00', 1, 3, 91),
	(1677, '16:00:00', '16:30:00', 1, 3, 91),
	(1726, '09:00:00', '10:00:00', 1, 4, 103),
	(1727, '10:00:00', '11:00:00', 1, 4, 103),
	(1728, '11:00:00', '12:00:00', 1, 4, 103),
	(1729, '09:00:00', '10:00:00', 1, 4, 104),
	(1730, '10:00:00', '11:00:00', 1, 4, 104),
	(1731, '11:00:00', '12:00:00', 1, 4, 104),
	(1787, '09:00:00', '10:00:00', 1, 4, 121),
	(1788, '10:00:00', '11:00:00', 1, 4, 121),
	(1789, '11:00:00', '12:00:00', 1, 4, 121),
	(1790, '09:00:00', '10:00:00', 1, 4, 122),
	(1791, '10:00:00', '11:00:00', 1, 4, 122),
	(1792, '11:00:00', '12:00:00', 1, 4, 122),
	(5103, '09:00:00', '09:30:00', 1, 4, 257),
	(5104, '09:30:00', '10:00:00', 1, 4, 257),
	(5105, '10:00:00', '10:30:00', 1, 4, 257),
	(5106, '10:30:00', '11:00:00', 1, 4, 257),
	(5107, '11:00:00', '11:30:00', 1, 4, 257),
	(5108, '11:30:00', '12:00:00', 1, 4, 257),
	(5109, '09:00:00', '09:30:00', 1, 4, 258),
	(5110, '09:30:00', '10:00:00', 1, 4, 258),
	(5111, '10:00:00', '10:30:00', 1, 4, 258),
	(5112, '10:30:00', '11:00:00', 1, 4, 258),
	(5113, '11:00:00', '11:30:00', 1, 4, 258),
	(5114, '11:30:00', '12:00:00', 1, 4, 258),
	(5115, '09:00:00', '09:30:00', 1, 4, 259),
	(5116, '09:30:00', '10:00:00', 1, 4, 259),
	(5117, '10:00:00', '10:30:00', 1, 4, 259),
	(5118, '10:30:00', '11:00:00', 1, 4, 259),
	(5119, '11:00:00', '11:30:00', 1, 4, 259),
	(5120, '11:30:00', '12:00:00', 1, 4, 259),
	(5226, '09:00:00', '09:30:00', 1, 3, 269),
	(5227, '10:00:00', '11:00:00', 1, 3, 269),
	(5228, '11:00:00', '12:00:00', 1, 3, 269),
	(5229, '12:00:00', '12:30:00', 1, 3, 269),
	(5230, '13:00:00', '14:00:00', 1, 3, 269),
	(5231, '14:00:00', '15:00:00', 1, 3, 269),
	(5232, '15:00:00', '16:00:00', 1, 3, 269),
	(5233, '16:00:00', '17:00:00', 1, 3, 269),
	(5234, '17:00:00', '18:00:00', 1, 3, 269),
	(5235, '09:00:00', '10:00:00', 1, 3, 270),
	(5236, '10:00:00', '11:00:00', 1, 3, 270),
	(5237, '11:00:00', '12:00:00', 1, 3, 270),
	(5238, '12:00:00', '13:30:00', 1, 3, 270),
	(5239, '13:30:00', '14:30:00', 1, 3, 270),
	(5240, '14:30:00', '15:30:00', 1, 3, 270),
	(5241, '15:30:00', '16:30:00', 1, 3, 270),
	(5242, '16:30:00', '17:30:00', 1, 3, 270),
	(5243, '17:30:00', '18:00:00', 1, 3, 270),
	(5244, '09:00:00', '10:00:00', 1, 3, 271),
	(5245, '10:00:00', '10:30:00', 1, 3, 271),
	(5246, '10:30:00', '11:00:00', 1, 3, 271),
	(5247, '11:00:00', '11:10:00', 1, 3, 271),
	(5248, '11:10:00', '12:10:00', 1, 3, 271),
	(5249, '12:10:00', '13:10:00', 1, 3, 271),
	(5250, '13:10:00', '13:40:00', 1, 5, 271),
	(5251, '13:40:00', '14:40:00', 1, 3, 271),
	(5252, '14:40:00', '15:40:00', 1, 3, 271),
	(5253, '09:00:00', '10:00:00', 1, 3, 272),
	(5254, '10:00:00', '11:00:00', 1, 3, 272),
	(5255, '11:00:00', '11:30:00', 0, 2, 272),
	(5256, '12:00:00', '13:00:00', 1, 3, 272),
	(5257, '13:00:00', '13:30:00', 1, 4, 272),
	(5258, '13:30:00', '13:45:00', 1, 3, 272),
	(5259, '14:30:00', '15:00:00', 1, 2, 272),
	(5260, '15:00:00', '16:00:00', 1, 3, 272),
	(5261, '16:00:00', '17:00:00', 1, 3, 272),
	(5262, '09:00:00', '10:00:00', 1, 3, 273),
	(5263, '10:00:00', '11:00:00', 1, 3, 273),
	(5264, '11:00:00', '11:30:00', 1, 4, 273),
	(5265, '12:00:00', '13:00:00', 1, 3, 273),
	(5266, '13:00:00', '14:00:00', 1, 3, 273),
	(5267, '14:00:00', '15:00:00', 1, 3, 273),
	(5268, '15:00:00', '16:00:00', 1, 3, 273),
	(5269, '16:00:00', '16:30:00', 1, 1, 273),
	(5270, '16:30:00', '17:30:00', 1, 3, 273),
	(5271, '15:40:00', '16:10:00', 0, 3, 271),
	(5272, '16:10:00', '16:40:00', 1, 3, 271),
	(5273, '17:00:00', '17:30:00', 0, 3, 272),
	(5274, '17:30:00', '18:00:00', 1, 3, 272),
	(5275, '11:30:00', '12:00:00', 1, 3, 272),
	(5276, '11:30:00', '12:00:00', 0, 5, 273),
	(5277, '17:30:00', '18:00:00', 1, 3, 273),
	(5467, '13:45:00', '14:15:00', 1, 3, 272),
	(5468, '14:15:00', '14:30:00', 0, 3, 272),
	(5469, '16:40:00', '17:10:00', 1, 3, 271),
	(5470, '17:10:00', '17:30:00', 0, 3, 271),
	(5471, '17:30:00', '17:40:00', 1, 3, 271),
	(5472, '17:40:00', '17:50:00', 1, 3, 271),
	(5473, '17:50:00', '18:00:00', 1, 3, 271),
	(5474, '09:30:00', '10:00:00', 0, 3, 269),
	(5475, '12:30:00', '13:00:00', 1, 3, 269),
	(7207, '10:00:00', '10:15:00', 1, 7, 393),
	(7208, '10:15:00', '10:30:00', 1, 7, 393),
	(7209, '10:30:00', '10:45:00', 1, 7, 393),
	(7210, '10:45:00', '11:00:00', 1, 7, 393),
	(7211, '11:00:00', '11:15:00', 1, 7, 393),
	(7212, '11:15:00', '11:30:00', 1, 7, 393),
	(7213, '11:30:00', '11:45:00', 1, 7, 393),
	(7214, '11:45:00', '12:00:00', 1, 7, 393),
	(7215, '12:00:00', '12:15:00', 1, 7, 393),
	(7216, '12:15:00', '12:30:00', 1, 7, 393),
	(7217, '12:30:00', '12:45:00', 1, 7, 393),
	(7218, '12:45:00', '13:00:00', 1, 7, 393),
	(7219, '13:00:00', '13:15:00', 1, 7, 393),
	(7220, '13:15:00', '13:30:00', 1, 7, 393),
	(7221, '13:30:00', '13:45:00', 1, 7, 393),
	(7222, '13:45:00', '14:00:00', 1, 7, 393),
	(7223, '14:00:00', '14:15:00', 1, 7, 393),
	(7224, '14:15:00', '14:30:00', 1, 7, 393),
	(7225, '14:30:00', '14:45:00', 1, 7, 393),
	(7226, '14:45:00', '15:00:00', 1, 7, 393),
	(7227, '10:00:00', '10:15:00', 1, 7, 394),
	(7228, '10:15:00', '10:30:00', 1, 7, 394),
	(7229, '10:30:00', '10:45:00', 1, 7, 394),
	(7230, '10:45:00', '11:00:00', 1, 7, 394),
	(7231, '11:00:00', '11:15:00', 1, 7, 394),
	(7232, '11:15:00', '11:30:00', 1, 7, 394),
	(7233, '11:30:00', '11:45:00', 1, 7, 394),
	(7234, '11:45:00', '12:00:00', 1, 7, 394),
	(7235, '12:00:00', '12:15:00', 1, 7, 394),
	(7236, '12:15:00', '12:30:00', 1, 7, 394),
	(7237, '12:30:00', '12:45:00', 1, 7, 394),
	(7238, '12:45:00', '13:00:00', 1, 7, 394),
	(7239, '13:00:00', '13:15:00', 1, 7, 394),
	(7240, '13:15:00', '13:30:00', 1, 7, 394),
	(7241, '13:30:00', '13:45:00', 1, 7, 394),
	(7242, '13:45:00', '14:00:00', 1, 7, 394),
	(7243, '14:00:00', '14:15:00', 1, 7, 394),
	(7244, '14:15:00', '14:30:00', 1, 7, 394),
	(7245, '14:30:00', '14:45:00', 1, 7, 394),
	(7246, '14:45:00', '15:00:00', 1, 7, 394),
	(9636, '08:30:00', '08:45:00', 1, 5, 555),
	(9637, '08:45:00', '09:00:00', 1, 5, 555),
	(9638, '09:00:00', '09:15:00', 1, 5, 555),
	(9639, '09:15:00', '09:30:00', 1, 5, 555),
	(9640, '09:30:00', '09:45:00', 1, 5, 555),
	(9641, '09:45:00', '10:00:00', 1, 5, 555),
	(9642, '10:00:00', '10:15:00', 1, 5, 555),
	(9643, '10:15:00', '10:30:00', 1, 5, 555),
	(9644, '10:30:00', '10:45:00', 1, 5, 555),
	(9645, '10:45:00', '11:00:00', 1, 5, 555),
	(9646, '11:00:00', '11:15:00', 1, 5, 555),
	(9647, '11:15:00', '11:30:00', 1, 5, 555),
	(9648, '11:30:00', '11:45:00', 1, 5, 555),
	(9649, '11:45:00', '12:00:00', 1, 5, 555),
	(9650, '12:00:00', '12:15:00', 1, 5, 555),
	(9651, '12:15:00', '12:30:00', 1, 5, 555),
	(9652, '12:30:00', '12:45:00', 1, 5, 555),
	(9653, '12:45:00', '13:00:00', 1, 5, 555),
	(9654, '13:00:00', '13:15:00', 1, 5, 555),
	(9655, '13:15:00', '13:30:00', 1, 5, 555),
	(9656, '13:30:00', '13:45:00', 1, 5, 555),
	(9657, '13:45:00', '14:00:00', 1, 5, 555),
	(9658, '14:00:00', '14:15:00', 1, 5, 555),
	(9659, '14:15:00', '14:30:00', 1, 5, 555),
	(9660, '14:30:00', '14:45:00', 1, 5, 555),
	(9661, '14:45:00', '15:00:00', 1, 5, 555),
	(9662, '15:00:00', '15:15:00', 1, 5, 555),
	(9663, '15:15:00', '15:30:00', 1, 5, 555),
	(9664, '15:30:00', '15:45:00', 1, 5, 555),
	(9665, '15:45:00', '16:00:00', 1, 5, 555),
	(9666, '16:00:00', '16:15:00', 1, 5, 555),
	(9667, '16:15:00', '16:30:00', 1, 5, 555),
	(9668, '16:30:00', '16:45:00', 1, 5, 555),
	(9669, '08:30:00', '08:45:00', 1, 5, 556),
	(9670, '08:45:00', '09:00:00', 0, 6, 556),
	(9671, '09:00:00', '09:15:00', 1, 5, 556),
	(9672, '09:15:00', '09:30:00', 1, 5, 556),
	(9673, '09:30:00', '09:45:00', 1, 5, 556),
	(9674, '09:45:00', '10:00:00', 1, 5, 556),
	(9675, '10:00:00', '10:15:00', 1, 5, 556),
	(9676, '10:15:00', '10:30:00', 1, 5, 556),
	(9677, '10:30:00', '10:45:00', 1, 5, 556),
	(9678, '10:45:00', '11:00:00', 1, 5, 556),
	(9679, '11:00:00', '11:15:00', 1, 5, 556),
	(9680, '11:15:00', '11:30:00', 1, 5, 556),
	(9681, '11:30:00', '11:45:00', 1, 5, 556),
	(9682, '11:45:00', '12:00:00', 1, 5, 556),
	(9683, '12:00:00', '12:15:00', 1, 5, 556),
	(9684, '12:15:00', '12:30:00', 1, 5, 556),
	(9685, '12:30:00', '12:45:00', 1, 5, 556),
	(9686, '12:45:00', '13:00:00', 1, 5, 556),
	(9687, '13:00:00', '13:15:00', 1, 5, 556),
	(9688, '13:15:00', '13:30:00', 1, 5, 556),
	(9689, '13:30:00', '13:45:00', 1, 5, 556),
	(9690, '13:45:00', '14:00:00', 1, 5, 556),
	(9691, '14:00:00', '14:15:00', 1, 5, 556),
	(9692, '14:15:00', '14:30:00', 1, 5, 556),
	(9693, '14:30:00', '14:45:00', 1, 5, 556),
	(9694, '14:45:00', '15:00:00', 1, 5, 556),
	(9695, '15:00:00', '15:15:00', 1, 5, 556),
	(9696, '15:15:00', '15:30:00', 1, 5, 556),
	(9697, '15:30:00', '15:45:00', 1, 5, 556),
	(9698, '15:45:00', '16:00:00', 1, 5, 556),
	(9699, '16:00:00', '16:15:00', 1, 5, 556),
	(9700, '16:15:00', '16:30:00', 1, 5, 556),
	(9701, '16:30:00', '16:45:00', 1, 5, 556),
	(9702, '08:30:00', '08:45:00', 1, 5, 557),
	(9703, '08:45:00', '09:00:00', 1, 5, 557),
	(9704, '09:00:00', '09:15:00', 0, 5, 557),
	(9705, '09:15:00', '09:30:00', 0, 5, 557),
	(9706, '09:30:00', '09:45:00', 1, 5, 557),
	(9707, '09:45:00', '10:00:00', 1, 3, 557),
	(9708, '10:00:00', '10:15:00', 1, 5, 557),
	(9709, '10:15:00', '10:30:00', 1, 5, 557),
	(9710, '10:30:00', '10:45:00', 1, 5, 557),
	(9711, '10:45:00', '11:00:00', 1, 5, 557),
	(9712, '11:00:00', '11:15:00', 1, 5, 557),
	(9713, '11:15:00', '11:30:00', 1, 5, 557),
	(9714, '11:30:00', '11:45:00', 1, 5, 557),
	(9715, '11:45:00', '12:00:00', 1, 5, 557),
	(9716, '12:00:00', '12:15:00', 1, 5, 557),
	(9717, '12:15:00', '12:30:00', 1, 5, 557),
	(9718, '12:30:00', '12:45:00', 1, 5, 557),
	(9719, '12:45:00', '13:00:00', 1, 5, 557),
	(9720, '13:00:00', '13:15:00', 1, 5, 557),
	(9721, '13:15:00', '13:30:00', 1, 5, 557),
	(9722, '13:30:00', '13:45:00', 1, 5, 557),
	(9723, '13:45:00', '14:00:00', 1, 5, 557),
	(9724, '14:00:00', '14:15:00', 1, 5, 557),
	(9725, '14:15:00', '14:30:00', 1, 5, 557),
	(9726, '14:30:00', '14:45:00', 1, 5, 557),
	(9727, '14:45:00', '15:00:00', 1, 5, 557),
	(9728, '15:00:00', '15:15:00', 1, 5, 557),
	(9729, '15:15:00', '15:30:00', 1, 5, 557),
	(9730, '15:30:00', '15:45:00', 1, 5, 557),
	(9731, '15:45:00', '16:00:00', 1, 5, 557),
	(9732, '16:00:00', '16:15:00', 1, 5, 557),
	(9733, '16:15:00', '16:30:00', 1, 5, 557),
	(9734, '16:30:00', '16:45:00', 1, 5, 557),
	(9735, '08:30:00', '08:45:00', 1, 5, 558),
	(9736, '08:45:00', '09:00:00', 1, 5, 558),
	(9737, '09:00:00', '09:15:00', 0, 6, 558),
	(9738, '09:15:00', '09:30:00', 1, 5, 558),
	(9739, '09:30:00', '09:45:00', 1, 5, 558),
	(9740, '09:45:00', '10:00:00', 1, 1, 558),
	(9741, '10:00:00', '10:15:00', 1, 1, 558),
	(9742, '10:15:00', '10:30:00', 1, 1, 558),
	(9743, '10:30:00', '10:45:00', 1, 5, 558),
	(9744, '10:45:00', '11:00:00', 1, 5, 558),
	(9745, '11:00:00', '11:15:00', 1, 5, 558),
	(9746, '11:15:00', '11:30:00', 1, 5, 558),
	(9747, '11:30:00', '11:45:00', 1, 5, 558),
	(9748, '11:45:00', '12:00:00', 1, 5, 558),
	(9749, '12:00:00', '12:15:00', 1, 5, 558),
	(9750, '12:15:00', '12:30:00', 1, 5, 558),
	(9751, '12:30:00', '12:45:00', 1, 5, 558),
	(9752, '12:45:00', '13:00:00', 1, 5, 558),
	(9753, '13:00:00', '13:15:00', 1, 5, 558),
	(9754, '13:15:00', '13:30:00', 1, 5, 558),
	(9755, '13:30:00', '13:45:00', 1, 5, 558),
	(9756, '13:45:00', '14:00:00', 1, 5, 558),
	(9757, '14:00:00', '14:15:00', 1, 5, 558),
	(9758, '14:15:00', '14:30:00', 1, 5, 558),
	(9759, '14:30:00', '14:45:00', 1, 5, 558),
	(9760, '14:45:00', '15:00:00', 1, 5, 558),
	(9761, '15:00:00', '15:15:00', 1, 5, 558),
	(9762, '15:15:00', '15:30:00', 1, 5, 558),
	(9763, '15:30:00', '15:45:00', 1, 5, 558),
	(9764, '15:45:00', '16:00:00', 1, 5, 558),
	(9765, '16:00:00', '16:15:00', 1, 5, 558),
	(9766, '16:15:00', '16:30:00', 1, 5, 558),
	(9767, '16:30:00', '16:45:00', 1, 5, 558),
	(9768, '08:30:00', '08:45:00', 1, 5, 559),
	(9769, '08:45:00', '09:00:00', 1, 5, 559),
	(9770, '09:00:00', '09:15:00', 1, 5, 559),
	(9771, '09:15:00', '09:30:00', 1, 5, 559),
	(9772, '09:30:00', '09:45:00', 1, 5, 559),
	(9773, '09:45:00', '10:00:00', 1, 5, 559),
	(9774, '10:00:00', '10:15:00', 1, 5, 559),
	(9775, '10:15:00', '10:30:00', 1, 5, 559),
	(9776, '10:30:00', '10:45:00', 1, 5, 559),
	(9777, '10:45:00', '11:00:00', 1, 5, 559),
	(9778, '11:00:00', '11:15:00', 1, 5, 559),
	(9779, '11:15:00', '11:30:00', 1, 5, 559),
	(9780, '11:30:00', '11:45:00', 1, 5, 559),
	(9781, '11:45:00', '12:00:00', 1, 5, 559),
	(9782, '12:00:00', '12:15:00', 1, 5, 559),
	(9783, '12:15:00', '12:30:00', 1, 5, 559),
	(9784, '12:30:00', '12:45:00', 1, 5, 559),
	(9785, '12:45:00', '13:00:00', 1, 5, 559),
	(9786, '13:00:00', '13:15:00', 1, 5, 559),
	(9787, '13:15:00', '13:30:00', 1, 5, 559),
	(9788, '13:30:00', '13:45:00', 1, 5, 559),
	(9789, '13:45:00', '14:00:00', 1, 5, 559),
	(9790, '14:00:00', '14:15:00', 1, 5, 559),
	(9791, '14:15:00', '14:30:00', 1, 5, 559),
	(9792, '14:30:00', '14:45:00', 1, 5, 559),
	(9793, '14:45:00', '15:00:00', 1, 5, 559),
	(9794, '15:00:00', '15:15:00', 1, 5, 559),
	(9795, '15:15:00', '15:30:00', 1, 5, 559),
	(9796, '15:30:00', '15:45:00', 1, 5, 559),
	(9797, '15:45:00', '16:00:00', 1, 5, 559),
	(9798, '16:00:00', '16:15:00', 1, 5, 559),
	(9799, '16:15:00', '16:30:00', 1, 5, 559),
	(9800, '16:30:00', '16:45:00', 1, 5, 559),
	(9801, '08:30:00', '08:45:00', 1, 5, 560),
	(9802, '08:45:00', '09:00:00', 1, 5, 560),
	(9803, '09:00:00', '09:15:00', 1, 5, 560),
	(9804, '09:15:00', '09:30:00', 1, 5, 560),
	(9805, '09:30:00', '09:45:00', 1, 5, 560),
	(9806, '09:45:00', '10:00:00', 1, 5, 560),
	(9807, '10:00:00', '10:15:00', 1, 5, 560),
	(9808, '10:15:00', '10:30:00', 1, 5, 560),
	(9809, '10:30:00', '10:45:00', 1, 5, 560),
	(9810, '10:45:00', '11:00:00', 1, 5, 560),
	(9811, '11:00:00', '11:15:00', 1, 5, 560),
	(9812, '11:15:00', '11:30:00', 1, 5, 560),
	(9813, '11:30:00', '11:45:00', 1, 5, 560),
	(9814, '11:45:00', '12:00:00', 1, 5, 560),
	(9815, '12:00:00', '12:15:00', 1, 5, 560),
	(9816, '12:15:00', '12:30:00', 1, 5, 560),
	(9817, '12:30:00', '12:45:00', 1, 5, 560),
	(9818, '12:45:00', '13:00:00', 1, 5, 560),
	(9819, '13:00:00', '13:15:00', 1, 5, 560),
	(9820, '13:15:00', '13:30:00', 1, 5, 560),
	(9821, '13:30:00', '13:45:00', 1, 5, 560),
	(9822, '13:45:00', '14:00:00', 1, 5, 560),
	(9823, '14:00:00', '14:15:00', 1, 5, 560),
	(9824, '14:15:00', '14:30:00', 1, 5, 560),
	(9825, '14:30:00', '14:45:00', 1, 5, 560),
	(9826, '14:45:00', '15:00:00', 1, 5, 560),
	(9827, '15:00:00', '15:15:00', 1, 5, 560),
	(9828, '15:15:00', '15:30:00', 1, 5, 560),
	(9829, '15:30:00', '15:45:00', 1, 5, 560),
	(9830, '15:45:00', '16:00:00', 1, 5, 560),
	(9831, '16:00:00', '16:15:00', 1, 5, 560),
	(9832, '16:15:00', '16:30:00', 1, 5, 560),
	(9833, '16:30:00', '16:45:00', 1, 5, 560),
	(13005, '09:00:00', '09:30:00', 1, 5, 695),
	(13006, '09:30:00', '10:00:00', 1, 5, 695),
	(13007, '10:00:00', '10:30:00', 1, 5, 695),
	(13008, '10:30:00', '11:00:00', 1, 5, 695),
	(13009, '11:00:00', '11:30:00', 1, 5, 695),
	(13010, '11:30:00', '12:00:00', 1, 5, 695),
	(13011, '12:00:00', '12:30:00', 1, 5, 695),
	(13012, '12:30:00', '13:00:00', 1, 5, 695),
	(13013, '13:00:00', '13:30:00', 1, 5, 695),
	(13014, '13:30:00', '14:00:00', 1, 5, 695),
	(13015, '14:00:00', '14:30:00', 1, 5, 695),
	(13016, '14:30:00', '15:00:00', 1, 5, 695),
	(13017, '09:00:00', '09:30:00', 1, 5, 696),
	(13018, '09:30:00', '10:00:00', 1, 5, 696),
	(13019, '10:00:00', '10:30:00', 1, 5, 696),
	(13020, '10:30:00', '11:00:00', 1, 5, 696),
	(13021, '11:00:00', '11:30:00', 1, 5, 696),
	(13022, '11:30:00', '12:00:00', 1, 5, 696),
	(13023, '12:00:00', '12:30:00', 1, 5, 696),
	(13024, '12:30:00', '13:00:00', 1, 5, 696),
	(13025, '13:00:00', '13:30:00', 1, 5, 696),
	(13026, '13:30:00', '14:00:00', 1, 5, 696),
	(13027, '14:00:00', '14:30:00', 1, 5, 696),
	(13028, '14:30:00', '15:00:00', 1, 5, 696),
	(13029, '09:00:00', '09:30:00', 1, 5, 697),
	(13030, '09:30:00', '10:00:00', 1, 5, 697),
	(13031, '10:00:00', '10:30:00', 1, 5, 697),
	(13032, '10:30:00', '11:00:00', 1, 5, 697),
	(13033, '11:00:00', '11:30:00', 1, 5, 697),
	(13034, '11:30:00', '12:00:00', 1, 5, 697),
	(13035, '12:00:00', '12:30:00', 1, 5, 697),
	(13036, '12:30:00', '13:00:00', 1, 5, 697),
	(13037, '13:00:00', '13:30:00', 1, 5, 697),
	(13038, '13:30:00', '14:00:00', 1, 5, 697),
	(13039, '14:00:00', '14:30:00', 1, 5, 697),
	(13040, '14:30:00', '15:00:00', 1, 5, 697),
	(13041, '09:00:00', '09:30:00', 1, 5, 698),
	(13042, '09:30:00', '10:00:00', 1, 5, 698),
	(13043, '10:00:00', '10:30:00', 1, 5, 698),
	(13044, '10:30:00', '11:00:00', 1, 5, 698),
	(13045, '11:00:00', '11:30:00', 1, 5, 698),
	(13046, '11:30:00', '12:00:00', 1, 5, 698),
	(13047, '12:00:00', '12:30:00', 1, 5, 698),
	(13048, '12:30:00', '13:00:00', 1, 5, 698),
	(13049, '13:00:00', '13:30:00', 1, 5, 698),
	(13050, '13:30:00', '14:00:00', 1, 5, 698),
	(13051, '14:00:00', '14:30:00', 1, 5, 698),
	(13052, '14:30:00', '15:00:00', 1, 5, 698);
/*!40000 ALTER TABLE `appointment_time_slot` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_user`;
CREATE TABLE IF NOT EXISTS `appointment_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `email_idx` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `appointment_user` DISABLE KEYS */;
INSERT INTO `appointment_user` (`id_user`, `guid`, `first_name`, `last_name`, `email`, `phone_number`) VALUES
	(1, NULL, 'Laurent', 'HOHL', 'laurent.hohl@gmail.com', NULL),
	(2, NULL, 'Laurent', 'HOHL', 'laurent.hohl@gmail.com', NULL),
	(3, NULL, 'Laurent', 'HOHL', 'laurent.hohl@gmail.com', NULL),
	(4, NULL, 'Julie', 'PATS', 'juliepats@yahoo.com', NULL),
	(5, NULL, 'Laurent', 'HOHL', 'laurent.hohl@gmail.com', NULL),
	(6, NULL, 'Laurent', 'HOHL', 'laurent.hohl@gmail.com', NULL),
	(7, NULL, 'Julie', 'PATS', 'juliepats@yahoo.com', NULL),
	(8, NULL, 'HOHL', 'Clémence', 'clemence.hohl@gmail.com', NULL),
	(9, NULL, 'Julie', 'PATS', 'juliepats@yahoo.com', NULL),
	(10, NULL, 'Laurent', 'HOHL', 'laurent.hohl@gmail.com', NULL),
	(11, NULL, 'Laurent', 'HOHL', 'laurent.hohl@gmail.com', NULL);
/*!40000 ALTER TABLE `appointment_user` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_week_definition`;
CREATE TABLE IF NOT EXISTS `appointment_week_definition` (
  `id_week_definition` int(11) NOT NULL AUTO_INCREMENT,
  `id_reservation_rule` int(11) NOT NULL,
  `date_of_apply` date NOT NULL,
  `ending_date_of_apply` date NOT NULL,
  PRIMARY KEY (`id_week_definition`),
  UNIQUE KEY `appointment_week_definition_unique_date` (`id_reservation_rule`,`date_of_apply`),
  KEY `date_of_apply_idx` (`date_of_apply`)
) ENGINE=InnoDB AUTO_INCREMENT=335 DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `appointment_week_definition` DISABLE KEYS */;
INSERT INTO `appointment_week_definition` (`id_week_definition`, `id_reservation_rule`, `date_of_apply`, `ending_date_of_apply`) VALUES
	(276, 10, '2021-07-01', '2021-08-29'),
	(325, 10, '2021-08-30', '2021-08-31'),
	(326, 10, '2021-11-22', '2021-12-16'),
	(327, 10, '2021-09-03', '2021-11-14'),
	(333, 10, '2021-12-22', '2021-12-31'),
	(334, 10, '2022-01-01', '2022-12-31');
/*!40000 ALTER TABLE `appointment_week_definition` ENABLE KEYS */;

DROP TABLE IF EXISTS `appointment_working_day`;
CREATE TABLE IF NOT EXISTS `appointment_working_day` (
  `id_working_day` int(11) NOT NULL AUTO_INCREMENT,
  `day_of_week` int(11) NOT NULL,
  `id_reservation_rule` int(11) NOT NULL,
  PRIMARY KEY (`id_working_day`),
  UNIQUE KEY `appointment_working_day_unique` (`id_reservation_rule`,`day_of_week`)
) ENGINE=InnoDB AUTO_INCREMENT=767 DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `appointment_working_day` DISABLE KEYS */;
INSERT INTO `appointment_working_day` (`id_working_day`, `day_of_week`, `id_reservation_rule`) VALUES
	(86, 1, 5),
	(87, 2, 5),
	(88, 4, 5),
	(89, 5, 5),
	(90, 6, 5),
	(91, 7, 5),
	(103, 2, 6),
	(104, 3, 6),
	(77, 1, 10),
	(78, 4, 10),
	(121, 2, 13),
	(122, 3, 13),
	(393, 1, 22),
	(394, 4, 22),
	(257, 1, 33),
	(258, 2, 33),
	(259, 3, 33),
	(269, 1, 37),
	(270, 2, 37),
	(271, 3, 37),
	(272, 4, 37),
	(273, 5, 37),
	(555, 1, 38),
	(556, 2, 38),
	(557, 3, 38),
	(558, 4, 38),
	(559, 5, 38),
	(560, 6, 38),
	(695, 1, 92),
	(696, 4, 92),
	(697, 5, 92),
	(698, 6, 92);
/*!40000 ALTER TABLE `appointment_working_day` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_admin_dashboard`;
CREATE TABLE IF NOT EXISTS `core_admin_dashboard` (
  `dashboard_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`dashboard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_admin_dashboard` DISABLE KEYS */;
INSERT INTO `core_admin_dashboard` (`dashboard_name`, `dashboard_column`, `dashboard_order`) VALUES
	('autoIncludesAdminDashboardComponent', 1, 4),
	('editorAdminDashboardComponent', 1, 3),
	('featuresAdminDashboardComponent', 1, 5),
	('myluteceAuthenticationFilterAdminDashboardComponent', 1, 3),
	('searchAdminDashboardComponent', 1, 2),
	('usersAdminDashboardComponent', 1, 1),
	('workflowAdminDashboardComponent', 1, 1),
	('xslExportAdminDashboardComponent', 1, 6);
/*!40000 ALTER TABLE `core_admin_dashboard` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_admin_mailinglist`;
CREATE TABLE IF NOT EXISTS `core_admin_mailinglist` (
  `id_mailinglist` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `workgroup` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_mailinglist`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_admin_mailinglist` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_mailinglist` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_admin_mailinglist_filter`;
CREATE TABLE IF NOT EXISTS `core_admin_mailinglist_filter` (
  `id_mailinglist` int(11) NOT NULL DEFAULT 0,
  `workgroup` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_mailinglist`,`workgroup`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_admin_mailinglist_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_mailinglist_filter` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_admin_right`;
CREATE TABLE IF NOT EXISTS `core_admin_right` (
  `id_right` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level_right` smallint(6) DEFAULT NULL,
  `admin_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_updatable` int(11) NOT NULL DEFAULT 0,
  `plugin_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_feature_group` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documentation_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_order` int(11) DEFAULT NULL,
  `is_external_feature` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_right`),
  KEY `index_right` (`level_right`,`admin_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_admin_right` DISABLE KEYS */;
INSERT INTO `core_admin_right` (`id_right`, `name`, `level_right`, `admin_url`, `description`, `is_updatable`, `plugin_name`, `id_feature_group`, `icon_url`, `documentation_url`, `id_order`, `is_external_feature`) VALUES
	('APPOINTMENT_CALENDAR_TEMPLATE', 'appointment.adminFeature.manageCalendarTemplates.name', 0, 'jsp/admin/plugins/appointment/ManageCalendarTemplates.jsp', 'appointment.adminFeature.manageCalendarTemplates.name', 0, 'appointment', 'APPLICATIONS', NULL, NULL, 4, 0),
	('APPOINTMENT_CATEGORY_MANAGEMENT', 'appointment.adminFeature.manageCategories.name', 1, 'jsp/admin/plugins/appointment/ManageAppointmentCategory.jsp', 'appointment.adminFeature.manageCategories.name', 0, 'appointment', 'MANAGERS', NULL, NULL, 8, 0),
	('APPOINTMENT_COMMENT_MANAGEMENT', 'appointment.adminFeature.manageComment.name', 2, 'jsp/admin/plugins/appointment/Comments.jsp', 'appointment.adminFeature.manageComment.name', 0, 'appointment', 'APPLICATIONS', NULL, NULL, 5, 0),
	('APPOINTMENT_FORM_MANAGEMENT', 'appointment.adminFeature.ManageAppointmentForm.name', 3, 'jsp/admin/plugins/appointment/ManageAppointmentForms.jsp', 'appointment.adminFeature.ManageAppointmentForm.description', 0, 'appointment', 'CONTENT', NULL, NULL, 1, 0),
	('CORE_ADMIN_SITE', 'portal.site.adminFeature.admin_site.name', 0, 'jsp/admin/site/AdminSite.jsp', 'portal.site.adminFeature.admin_site.description', 1, NULL, 'SITE', 'images/admin/skin/features/admin_site.png', 'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-site', 1, 0),
	('CORE_ADMINDASHBOARD_MANAGEMENT', 'portal.admindashboard.adminFeature.right_management.name', 0, NULL, 'portal.admindashboard.adminFeature.right_management.description', 0, '', 'SYSTEM', 'images/admin/skin/features/manage_admindashboards.png', NULL, 10, 0),
	('CORE_CACHE_MANAGEMENT', 'portal.system.adminFeature.cache_management.name', 0, 'jsp/admin/system/ManageCaches.jsp', 'portal.system.adminFeature.cache_management.description', 1, '', 'SYSTEM', 'images/admin/skin/features/manage_caches.png', NULL, 2, 0),
	('CORE_DAEMONS_MANAGEMENT', 'portal.system.adminFeature.daemons_management.name', 0, 'jsp/admin/system/ManageDaemons.jsp', 'portal.system.adminFeature.daemons_management.description', 0, '', 'SYSTEM', NULL, NULL, 9, 0),
	('CORE_DASHBOARD_MANAGEMENT', 'portal.dashboard.adminFeature.dashboard_management.name', 0, NULL, 'portal.dashboard.adminFeature.dashboard_management.description', 0, '', 'SYSTEM', 'images/admin/skin/features/manage_dashboards.png', NULL, 11, 0),
	('CORE_EDITORS_MANAGEMENT', 'portal.admindashboard.editorManagement.right.name', 0, NULL, 'portal.admindashboard.editorManagement.right.description', 1, '', 'SYSTEM', NULL, NULL, 12, 0),
	('CORE_FEATURES_MANAGEMENT', 'portal.admin.adminFeature.features_management.name', 0, NULL, 'portal.admin.adminFeature.features_management.description', 0, '', 'SYSTEM', 'images/admin/skin/features/manage_features.png', NULL, 8, 0),
	('CORE_LEVEL_RIGHT_MANAGEMENT', 'portal.users.adminFeature.level_right_management.name', 0, NULL, 'portal.users.adminFeature.level_right_management.description', 0, '', 'MANAGERS', 'images/admin/skin/features/manage_rights_levels.png', NULL, 5, 0),
	('CORE_LINK_SERVICE_MANAGEMENT', 'portal.insert.adminFeature.linkService_management.name', 0, NULL, 'portal.insert.adminFeature.linkService_management.description', 0, NULL, NULL, NULL, NULL, 1, 0),
	('CORE_LOGS_VISUALISATION', 'portal.system.adminFeature.logs_visualisation.name', 0, 'jsp/admin/system/ManageFilesSystem.jsp', 'portal.system.adminFeature.logs_visualisation.description', 1, '', 'SYSTEM', 'images/admin/skin/features/view_logs.png', NULL, 3, 0),
	('CORE_MAILINGLISTS_MANAGEMENT', 'portal.mailinglist.adminFeature.mailinglists_management.name', 2, 'jsp/admin/mailinglist/ManageMailingLists.jsp', 'portal.mailinglist.adminFeature.mailinglists_management.description', 0, '', 'MANAGERS', 'images/admin/skin/features/manage_mailinglists.png', NULL, 4, 0),
	('CORE_PAGE_TEMPLATE_MANAGEMENT', 'portal.style.adminFeature.page_template_management.name', 0, 'jsp/admin/style/ManagePageTemplates.jsp', 'portal.style.adminFeature.page_template_management.description', 0, '', 'STYLE', 'images/admin/skin/features/manage_page_templates.png', NULL, 1, 0),
	('CORE_PLUGINS_MANAGEMENT', 'portal.system.adminFeature.plugins_management.name', 0, 'jsp/admin/system/ManagePlugins.jsp', 'portal.system.adminFeature.plugins_management.description', 1, '', 'SYSTEM', 'images/admin/skin/features/manage_plugins.png', NULL, 4, 0),
	('CORE_PROPERTIES_MANAGEMENT', 'portal.site.adminFeature.properties_management.name', 0, 'jsp/admin/ManageProperties.jsp', 'portal.site.adminFeature.properties_management.description', 0, NULL, 'SITE', NULL, 'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-properties', 2, 0),
	('CORE_RBAC_MANAGEMENT', 'portal.rbac.adminFeature.rbac_management.name', 1, 'jsp/admin/rbac/ManageRoles.jsp', 'portal.rbac.adminFeature.rbac_management.description', 0, '', 'MANAGERS', 'images/admin/skin/features/manage_rbac.png', NULL, 2, 0),
	('CORE_RIGHT_MANAGEMENT', 'portal.users.adminFeature.right_management.name', 1, 'jsp/admin/features/ManageRights.jsp', 'portal.users.adminFeature.right_management.description', 0, '', 'MANAGERS', 'images/admin/skin/features/manage_rights_levels.png', NULL, 6, 0),
	('CORE_ROLES_MANAGEMENT', 'portal.role.adminFeature.roles_management.name', 1, 'jsp/admin/role/ManagePageRole.jsp', 'portal.role.adminFeature.roles_management.description', 0, '', 'USERS', 'images/admin/skin/features/manage_roles.png', NULL, 3, 0),
	('CORE_SEARCH_INDEXATION', 'portal.search.adminFeature.indexer.name', 0, 'jsp/admin/search/ManageSearchIndexation.jsp', 'portal.search.adminFeature.indexer.description', 0, '', 'SYSTEM', NULL, NULL, 5, 0),
	('CORE_SEARCH_MANAGEMENT', 'portal.search.adminFeature.search_management.name', 0, NULL, 'portal.search.adminFeature.search_management.description', 0, '', 'SYSTEM', NULL, NULL, 6, 0),
	('CORE_STYLES_MANAGEMENT', 'portal.style.adminFeature.styles_management.name', 0, 'jsp/admin/style/ManageStyles.jsp', 'portal.style.adminFeature.styles_management.description', 1, '', 'STYLE', 'images/admin/skin/features/manage_styles.png', NULL, 3, 0),
	('CORE_STYLESHEET_MANAGEMENT', 'portal.style.adminFeature.stylesheet_management.name', 0, 'jsp/admin/style/ManageStyleSheets.jsp', 'portal.style.adminFeature.stylesheet_management.description', 1, '', 'STYLE', 'images/admin/skin/features/manage_stylesheets.png', NULL, 2, 0),
	('CORE_TEMPLATES_AUTO_INCLUDES_MANAGEMENT', 'portal.templates.adminFeature.ManageAutoIncludes.name', 0, NULL, 'portal.templates.adminFeature.ManageAutoIncludes.description', 1, '', 'STYLE', 'images/admin/skin/features/manage_templates.png', NULL, 4, 0),
	('CORE_USERS_MANAGEMENT', 'portal.users.adminFeature.users_management.name', 2, 'jsp/admin/user/ManageUsers.jsp', 'portal.users.adminFeature.users_management.description', 1, '', 'MANAGERS', 'images/admin/skin/features/manage_users.png', NULL, 1, 0),
	('CORE_WORKGROUPS_MANAGEMENT', 'portal.workgroup.adminFeature.workgroups_management.name', 1, 'jsp/admin/workgroup/ManageWorkgroups.jsp', 'portal.workgroup.adminFeature.workgroups_management.description', 0, '', 'MANAGERS', 'images/admin/skin/features/manage_workgroups.png', NULL, 3, 0),
	('CORE_XSL_EXPORT_MANAGEMENT', 'portal.xsl.adminFeature.xsl_export_management.name', 0, NULL, 'portal.xsl.adminFeature.xsl_export_management.description', 1, '', 'SYSTEM', NULL, NULL, 13, 0),
	('ENTRY_TYPE_MANAGEMENT', 'genericattributes.adminFeature.manageEntryType.name', 1, 'jsp/admin/plugins/genericattributes/ManageEntryType.jsp', 'genericattributes.adminFeature.manageEntryType.description', 0, 'genericattributes', 'APPLICATIONS', NULL, NULL, 2, 0),
	('HTMLPAGE_MANAGEMENT', 'htmlpage.adminFeature.htmlpage_management.name', 1, 'jsp/admin/plugins/htmlpage/ManageHtmlPage.jsp', 'htmlpage.adminFeature.htmlpage_management.description', 0, 'htmlpage', 'SITE', NULL, 'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-htmlpage', 3, 0),
	('MULTIVIEW_APPOINTMENT', 'module.appointment.management.adminFeature.MultiviewAppointment.name', 3, 'jsp/admin/plugins/appointment/modules/management/MultiviewAppointment.jsp', 'module.appointment.management.adminFeature.MultiviewAppointment.description', 0, 'appointment-management', 'CONTENT', NULL, NULL, 2, 0),
	('MYDASHBOARD_PANEL_MANAGEMENT', 'mydashboard.adminFeature.ManageMydashboardPanel.name', 0, 'jsp/admin/plugins/mydashboard/ManageMyDashboardPanel.jsp', 'mydashboard.adminFeature.ManageMydashboardPanel.description', 0, 'mydashboard', 'USERS', NULL, NULL, 4, 0),
	('MYLUTECE_MANAGE_AUTHENTICATION_FILTER', 'mylutece.adminFeature.mylutece_management_authentication_filter.name', 0, 'jsp/admin/plugins/mylutece/security/ManageAuthenticationFilter.jsp', 'mylutece.adminFeature.mylutece_management_authentication_filter.description', 0, 'mylutece', 'USERS', NULL, NULL, 1, 0),
	('MYLUTECE_MANAGEMENT', 'mylutece.adminFeature.mylutece_management.name', 0, 'jsp/admin/plugins/mylutece/attribute/ManageAttributes.jsp', 'mylutece.adminFeature.mylutece_management.description', 0, 'mylutece', 'USERS', NULL, NULL, 2, 0),
	('PROFILES_MANAGEMENT', 'profiles.adminFeature.profiles_management.name', 1, 'jsp/admin/plugins/profiles/ManageProfiles.jsp', 'profiles.adminFeature.profiles_management.description', 0, 'profiles', 'MANAGERS', NULL, 'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-profiles', 7, 0),
	('PROFILES_VIEWS_MANAGEMENT', 'profiles.adminFeature.views_management.name', 1, 'jsp/admin/plugins/profiles/ManageViews.jsp', 'profiles.adminFeature.views_management.description', 0, 'profiles', 'MANAGERS', NULL, 'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-profiles', 9, 0),
	('REFERENCELIST_MANAGEMENT', 'referencelist.adminFeature.ReferenceListManage.name', 0, 'jsp/admin/plugins/referencelist/ManageReferences.jsp', 'referencelist.adminFeature.ReferenceListManage.description', 0, 'referencelist', 'APPLICATIONS', NULL, NULL, 6, 0),
	('REGULAR_EXPRESSION_MANAGEMENT', 'regularexpression.adminFeature.regularexpression_management.name', 1, 'jsp/admin/plugins/regularexpression/ManageRegularExpression.jsp', 'regularexpression.adminFeature.regularexpression_management.description', 0, 'regularexpression', 'SYSTEM', 'images/admin/skin/plugins/regularexpression/regularexpression.png', NULL, 1, 0),
	('RESOURCE_MANAGE_RESOURCES', 'resource.resourceManagement.pageTitle', 2, 'jsp/admin/plugins/resource/ManageResources.jsp', 'resource.resourceManagement.description', 0, 'resource', 'APPLICATIONS', NULL, NULL, 3, 0),
	('SITELABELS_MANAGEMENT', 'sitelabels.adminFeature.ManageSiteLabels.name', 1, 'jsp/admin/plugins/sitelabels/ManageLabels.jsp', 'sitelabels.adminFeature.ManageSiteLabels.description', 0, 'sitelabels', 'SITE', NULL, NULL, 4, 0),
	('SOLR_CONFIGURATION_MANAGEMENT', 'search.solr.adminFeature.configuration.title', 0, 'jsp/admin/search/solr/ManageSearchConfiguration.jsp', 'search.solr.adminFeature.configuration.description', 0, 'solr', 'SYSTEM', NULL, '', 15, 0),
	('SOLR_FIELDS_MANAGEMENT', 'search.solr.adminFeature.fields.title', 0, 'jsp/admin/search/solr/ManageSolrFields.jsp', 'search.solr.adminFeature.fields.description', 0, 'solr', 'SYSTEM', NULL, '', 16, 0),
	('SOLR_INDEX_MANAGEMENT', 'search.solr.adminFeature.title', 0, 'jsp/admin/search/solr/ManageSearchIndexation.jsp', 'search.solr.adminFeature.description', 0, 'solr', 'SYSTEM', NULL, '', 14, 0),
	('SORLSERVER_ADD_FILE', 'solrserver.adminFeature.addfile.name', 2, 'jsp/admin/plugins/solrserver/ManageFileInSolr.jsp', 'solrserver.adminFeature.addfile.description', 0, 'solrserver', NULL, NULL, 'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-solrserver', 2, 0),
	('SYSTEMINFO_MANAGEMENT', 'systeminfo.adminFeature.systeminfo_management.name', 0, 'jsp/admin/plugins/systeminfo/ManageSystemInfo.jsp', 'systeminfo.adminFeature.systeminfo_management.description', 0, 'systeminfo', 'SYSTEM', NULL, NULL, 17, 0),
	('VIEW_TEMP_FILES', 'filegenerator.adminFeature.temporary_files.name', 3, 'jsp/admin/plugins/filegenerator/ManageMyFiles.jsp', 'filegenerator.adminFeature.temporary_files.description', 0, '', 'SYSTEM', NULL, NULL, 7, 0),
	('WORKFLOW_MANAGEMENT', 'workflow.adminFeature.workflow_management.name', 2, 'jsp/admin/plugins/workflow/ManageWorkflow.jsp', 'workflow.adminFeature.workflow_management.description', 0, 'workflow', 'APPLICATIONS', 'images/admin/skin/plugins/workflow/workflow.png', 'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-workflow', 1, 0);
/*!40000 ALTER TABLE `core_admin_right` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_admin_role`;
CREATE TABLE IF NOT EXISTS `core_admin_role` (
  `role_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`role_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_admin_role` DISABLE KEYS */;
INSERT INTO `core_admin_role` (`role_key`, `role_description`) VALUES
	('all_site_manager', 'Site Manager'),
	('APP_OVERBOOK', 'Prise de RDV en surbooking'),
	('assign_groups', 'Assigner des groupes aux utilisateurs'),
	('assign_roles', 'Assigner des roles aux utilisateurs'),
	('COMMENT_ADD', 'Ajout de commentaires'),
	('COMMENT_MODERATE', 'Mod├⌐ration de commentaires (modifier/supprimer)'),
	('CONFIG_GFA', 'Configuration pour GFA'),
	('CONSULTATION_KIBANA', 'Consultation tableau de bord Kibana'),
	('front_role', 'front role'),
	('Gestion_utilisateurs_avancee', 'Gestion avanc├⌐es des utilisateurs'),
	('kibana_dashboards_manager', 'Gestion des tableaux de bords Kibana'),
	('LISTE_DIFF', 'Role vide permettant de l\'assigner aux utilisateurs faisant partie des listes de diffusion'),
	('LISTE_DIFF_ERREUR_GFA', 'Role vide permettant de l\'assigner destinataires des erreurs GFA'),
	('MAILTEST', 'MAILTEST'),
	('mylutece_manager', 'G├⌐rer les patram├¿tres avanc├⌐s Mylutece'),
	('profiles_manager', 'Profiles management'),
	('profiles_views_manager', 'Profiles Views management'),
	('RDV_ADMIN', 'Configuration compl├¿te de tous les composants de rendez-vous'),
	('rdv_agentAccueil', 'Configuration des composants de rendez-vous relative ├á un compte agent d\'accueil'),
	('RDV_form', 'Modification et activation d\'un formulaire de rendez-vous'),
	('rdv_planificateur', 'Configuration des composants de rendez-vous relative ├á un compte plannificateur'),
	('super_admin', 'Super Administrateur'),
	('test_lolo', 'RDV'),
	('workflow_manager', 'Workflow management');
/*!40000 ALTER TABLE `core_admin_role` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_admin_role_resource`;
CREATE TABLE IF NOT EXISTS `core_admin_role_resource` (
  `rbac_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resource_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resource_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `permission` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`rbac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1174 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_admin_role_resource` DISABLE KEYS */;
INSERT INTO `core_admin_role_resource` (`rbac_id`, `role_key`, `resource_type`, `resource_id`, `permission`) VALUES
	(101, 'all_site_manager', 'PORTLET_TYPE', '*', '*'),
	(111, 'all_site_manager', 'ADMIN_USER', '*', '*'),
	(137, 'all_site_manager', 'SEARCH_SERVICE', '*', '*'),
	(150, 'profiles_manager', 'PROFILES', '*', '*'),
	(151, 'profiles_views_manager', 'PROFILES_VIEWS', '*', '*'),
	(164, 'all_site_manager', 'XSL_EXPORT', '*', '*'),
	(207, 'mylutece_manager', 'MYLUTECE', '*', '*'),
	(912, 'workflow_manager', 'WORKFLOW_ACTION_TYPE', '*', '*'),
	(923, 'workflow_manager', 'WORKFLOW_STATE_TYPE', '*', '*'),
	(1026, 'super_admin', 'APPOINTMENT_FORM', '*', '*'),
	(1027, 'kibana_dashboards_manager', 'kibana_dashboard', '*', '*'),
	(1028, 'super_admin', 'WORKFLOW_ACTION_TYPE', '*', '*'),
	(1029, 'super_admin', 'APPOINTMENT_FORM_CREATE', '*', '*'),
	(1030, 'super_admin', 'CONFIG_GFA', '*', '*'),
	(1031, 'super_admin', 'ROLE_TYPE', '*', '*'),
	(1032, 'super_admin', 'PAGE', '*', '*'),
	(1033, 'super_admin', 'WORKFLOW_STATE_TYPE', '*', '*'),
	(1034, 'super_admin', 'ADMIN_USER', '*', '*'),
	(1035, 'super_admin', 'MYLUTECE', '*', '*'),
	(1036, 'super_admin', 'INSERT_SERVICE', '*', '*'),
	(1037, 'super_admin', 'IDENTITY', '*', '*'),
	(1040, 'CONSULTATION_KIBANA', 'kibana_dashboard', '*', 'VIEW'),
	(1041, 'APP_OVERBOOK', 'APPOINTMENT_FORM', '*', 'OVERBOOKING_FORM'),
	(1043, 'RDV_ADMIN', 'APPOINTMENT_FORM', '*', 'VIEW_APPOINTMENT'),
	(1046, 'RDV_ADMIN', 'APPOINTMENT_FORM', '*', 'CHANGE_STATE'),
	(1047, 'RDV_ADMIN', 'APPOINTMENT_FORM', '*', 'MODIFY_ADVANCED_SETTING_FORM'),
	(1048, 'RDV_ADMIN', 'APPOINTMENT_FORM', '*', 'CREATE_APPOINTMENT'),
	(1049, 'RDV_ADMIN', 'APPOINTMENT_FORM', '*', 'VIEW_FORM'),
	(1050, 'RDV_ADMIN', 'APPOINTMENT_FORM', '*', 'DELETE_APPOINTMENT'),
	(1051, 'RDV_ADMIN', 'APPOINTMENT_FORM', '*', 'CHANGE_APPOINTMENT_DATE'),
	(1053, 'RDV_ADMIN', 'APPOINTMENT_FORM', '*', 'MODIFY_FORM'),
	(1054, 'RDV_ADMIN', 'APPOINTMENT_FORM_CREATE', '*', 'CREATE_FORM'),
	(1055, 'RDV_ADMIN', 'WORKFLOW_ACTION_TYPE', '*', '*'),
	(1056, 'RDV_ADMIN', 'WORKFLOW_STATE_TYPE', '*', '*'),
	(1057, 'RDV_ADMIN', 'COMMENT', '*', '*'),
	(1066, 'rdv_planificateur', 'APPOINTMENT_FORM', '*', 'VIEW_FORM'),
	(1068, 'super_admin', 'PROFILES', '*', '*'),
	(1078, 'rdv_agentAccueil', 'APPOINTMENT_FORM', '*', 'VIEW_FORM'),
	(1079, 'rdv_agentAccueil', 'APPOINTMENT_FORM', '*', 'VIEW_APPOINTMENT'),
	(1083, 'rdv_agentAccueil', 'APPOINTMENT_FORM', '*', 'CHANGE_APPOINTMENT_STATUS'),
	(1084, 'rdv_agentAccueil', 'APPOINTMENT_FORM', '*', 'CREATE_APPOINTMENT'),
	(1085, 'rdv_planificateur', 'APPOINTMENT_FORM', '*', 'MODIFY_ADVANCED_SETTING_FORM'),
	(1086, 'rdv_agentAccueil', 'WORKFLOW_ACTION_TYPE', '*', 'VIEW'),
	(1092, 'front_role', 'WORKFLOW_ACTION_TYPE', '56', 'VIEW'),
	(1093, 'front_role', 'WORKFLOW_ACTION_TYPE', '55', 'VIEW'),
	(1094, 'front_role', 'WORKFLOW_ACTION_TYPE', '60', 'VIEW'),
	(1095, 'rdv_agentAccueil', 'APPOINTMENT_FORM', '*', 'CHANGE_APPOINTMENT_DATE'),
	(1098, 'front_role', 'WORKFLOW_ACTION_TYPE', '10', '*'),
	(1099, 'front_role', 'WORKFLOW_ACTION_TYPE', '6', '*'),
	(1100, 'front_role', 'WORKFLOW_ACTION_TYPE', '2', '*'),
	(1101, 'super_admin', 'kibana_dashboard', '*', '*'),
	(1102, 'rdv_agentAccueil', 'WORKFLOW_STATE_TYPE', '*', 'VIEW_ALL_WORKGROUP'),
	(1103, 'front_role', 'WORKFLOW_ACTION_TYPE', '28', 'VIEW'),
	(1104, 'front_role', 'WORKFLOW_ACTION_TYPE', '25', 'VIEW'),
	(1105, 'front_role', 'WORKFLOW_ACTION_TYPE', '63', 'VIEW'),
	(1106, 'front_role', 'WORKFLOW_ACTION_TYPE', '64', 'VIEW'),
	(1108, 'COMMENT_ADD', 'APPOINTMENT_FORM', '*', 'ADD_COMMENT_FORM'),
	(1109, 'COMMENT_MODERATE', 'APPOINTMENT_FORM', '*', 'MODERATE_COMMENT_FORM'),
	(1111, 'front_role', 'WORKFLOW_ACTION_TYPE', '201', '*'),
	(1112, 'front_role', 'WORKFLOW_ACTION_TYPE', '60', '*'),
	(1113, 'front_role', 'WORKFLOW_ACTION_TYPE', '198', 'VIEW'),
	(1114, 'front_role', 'WORKFLOW_ACTION_TYPE', '199', 'VIEW'),
	(1154, 'RDV_ADMIN', 'CONFIG_GFA', '*', '*'),
	(1156, 'assign_roles', 'ROLE_TYPE', '*', 'ASSIGN_ROLE'),
	(1157, 'CONFIG_GFA', 'CONFIG_GFA', '*', '*'),
	(1158, 'rdv_planificateur', 'APPOINTMENT_FORM', '*', 'MODIFY_FORM'),
	(1159, 'RDV_form', 'APPOINTMENT_FORM', '*', 'VIEW_APPOINTMENT'),
	(1160, 'RDV_form', 'APPOINTMENT_FORM', '*', 'CHANGE_APPOINTMENT_STATUS'),
	(1161, 'RDV_form', 'APPOINTMENT_FORM', '*', 'CHANGE_STATE'),
	(1162, 'RDV_form', 'APPOINTMENT_FORM', '*', 'MODIFY_ADVANCED_SETTING_FORM'),
	(1163, 'RDV_form', 'APPOINTMENT_FORM', '*', 'CREATE_APPOINTMENT'),
	(1164, 'RDV_form', 'APPOINTMENT_FORM', '*', 'DELETE_FORM'),
	(1165, 'RDV_form', 'APPOINTMENT_FORM', '*', 'VIEW_FORM'),
	(1166, 'RDV_form', 'APPOINTMENT_FORM', '*', 'MODIFY_FORM'),
	(1167, 'super_admin', 'PORTLET_TYPE', '*', 'CREATE'),
	(1168, 'super_admin', 'PORTLET_TYPE', '*', 'MANAGE'),
	(1169, 'super_admin', 'SEARCH_SERVICE', '*', '*'),
	(1170, 'super_admin', 'COMMENT', '*', '*'),
	(1171, 'super_admin', 'XSL_EXPORT', '*', '*'),
	(1172, 'super_admin', 'PROFILES_VIEWS', '*', '*'),
	(1173, 'Gestion_utilisateurs_avancee', 'ADMIN_USER', '*', '*');
/*!40000 ALTER TABLE `core_admin_role_resource` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_admin_user`;
CREATE TABLE IF NOT EXISTS `core_admin_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `access_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT 0,
  `password` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fr',
  `level_user` smallint(6) NOT NULL DEFAULT 0,
  `reset_password` smallint(6) NOT NULL DEFAULT 0,
  `accessibility_mode` smallint(6) NOT NULL DEFAULT 0,
  `password_max_valid_date` timestamp NULL DEFAULT NULL,
  `account_max_valid_date` bigint(20) DEFAULT NULL,
  `nb_alerts_sent` int(11) NOT NULL DEFAULT 0,
  `last_login` timestamp NOT NULL DEFAULT '1980-01-01 00:00:00',
  `workgroup_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'all',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_admin_user` DISABLE KEYS */;
INSERT INTO `core_admin_user` (`id_user`, `access_code`, `last_name`, `first_name`, `email`, `status`, `password`, `locale`, `level_user`, `reset_password`, `accessibility_mode`, `password_max_valid_date`, `account_max_valid_date`, `nb_alerts_sent`, `last_login`, `workgroup_key`) VALUES
	(1, 'admin', 'AdminNom', 'adminPrénom', 'philippe.bareille@paris.fr', 0, 'PBKDF2WITHHMACSHA512:40000:2fab846f7b9e5ac90dc748468cba9a8d:4c0bdd4f4788e77b5186654b468bcea427da390aab937d0914e0c27705d5f3890224ec18b57a552c1705059c3bafbb0b75a723157ff957e30517abdec4f5b10e1888148e12b50c89a6c5cab66d19695d58586307a36a4bbb3315df036d9be773d876f1715caf225945b7866a2c621e05a0d38ae1fc5725178f95ffd8a5393a9c', 'fr', 0, 0, 0, '2022-07-01 13:34:00', 1678454561626, 0, '2022-03-10 14:22:41', 'all');
/*!40000 ALTER TABLE `core_admin_user` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_admin_user_anonymize_field`;
CREATE TABLE IF NOT EXISTS `core_admin_user_anonymize_field` (
  `field_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anonymize` smallint(6) NOT NULL,
  PRIMARY KEY (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_admin_user_anonymize_field` DISABLE KEYS */;
INSERT INTO `core_admin_user_anonymize_field` (`field_name`, `anonymize`) VALUES
	('access_code', 1),
	('email', 1),
	('first_name', 1),
	('last_name', 1);
/*!40000 ALTER TABLE `core_admin_user_anonymize_field` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_admin_user_field`;
CREATE TABLE IF NOT EXISTS `core_admin_user_field` (
  `id_user_field` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_attribute` int(11) DEFAULT NULL,
  `id_field` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `user_field_value` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_user_field`),
  KEY `core_admin_user_field_idx_file` (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_admin_user_field` DISABLE KEYS */;
INSERT INTO `core_admin_user_field` (`id_user_field`, `id_user`, `id_attribute`, `id_field`, `id_file`, `user_field_value`) VALUES
	(53, 13, 1, 7, NULL, 'SRU_MOM'),
	(54, 19, 1, 10, NULL, 'AgentRdV'),
	(55, 57, 1, 7, NULL, 'SRU_MOM'),
	(56, 58, 1, 7, NULL, 'SRU_MOM');
/*!40000 ALTER TABLE `core_admin_user_field` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_admin_user_preferences`;
CREATE TABLE IF NOT EXISTS `core_admin_user_preferences` (
  `id_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pref_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pref_value` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`,`pref_key`),
  KEY `index_admin_user_preferences` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_admin_user_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_user_preferences` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_admin_workgroup`;
CREATE TABLE IF NOT EXISTS `core_admin_workgroup` (
  `workgroup_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `workgroup_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`workgroup_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_admin_workgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_workgroup` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_admin_workgroup_user`;
CREATE TABLE IF NOT EXISTS `core_admin_workgroup_user` (
  `workgroup_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`workgroup_key`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_admin_workgroup_user` DISABLE KEYS */;
INSERT INTO `core_admin_workgroup_user` (`workgroup_key`, `id_user`) VALUES
	('TestBTIQ', 14),
	('TestBTIQ', 15),
	('TestBTIQ', 16),
	('TestBTIQ', 18),
	('TestBTIQ', 24),
	('TestBTIQ', 26),
	('TestBTIQ', 27),
	('TestBTIQ', 28),
	('TestBTIQ', 29),
	('TestBTIQ', 30),
	('TestBTIQ', 31),
	('TestBTIQ', 32),
	('TestBTIQ', 33),
	('TestBTIQ', 55),
	('Titres10e', 14),
	('Titres10e', 15),
	('Titres10e', 16),
	('Titres10e', 18),
	('Titres10e', 24),
	('Titres10e', 27),
	('Titres10e', 28),
	('Titres10e', 29),
	('Titres10e', 30),
	('Titres10e', 32),
	('Titres10e', 33),
	('Titres10e', 55),
	('Titres11e', 14),
	('Titres11e', 15),
	('Titres11e', 16),
	('Titres11e', 18),
	('Titres11e', 24),
	('Titres11e', 27),
	('Titres11e', 28),
	('Titres11e', 29),
	('Titres11e', 30),
	('Titres11e', 32),
	('Titres11e', 33),
	('Titres11e', 55),
	('Titres12e', 14),
	('Titres12e', 15),
	('Titres12e', 16),
	('Titres12e', 18),
	('Titres12e', 24),
	('Titres12e', 27),
	('Titres12e', 28),
	('Titres12e', 29),
	('Titres12e', 30),
	('Titres12e', 32),
	('Titres12e', 33),
	('Titres12e', 55),
	('Titres13e', 14),
	('Titres13e', 15),
	('Titres13e', 16),
	('Titres13e', 18),
	('Titres13e', 24),
	('Titres13e', 27),
	('Titres13e', 28),
	('Titres13e', 29),
	('Titres13e', 30),
	('Titres13e', 32),
	('Titres13e', 33),
	('Titres13e', 55),
	('Titres14e', 14),
	('Titres14e', 15),
	('Titres14e', 16),
	('Titres14e', 18),
	('Titres14e', 24),
	('Titres14e', 27),
	('Titres14e', 28),
	('Titres14e', 29),
	('Titres14e', 30),
	('Titres14e', 32),
	('Titres14e', 33),
	('Titres14e', 55),
	('Titres15e', 14),
	('Titres15e', 15),
	('Titres15e', 16),
	('Titres15e', 18),
	('Titres15e', 22),
	('Titres15e', 24),
	('Titres15e', 27),
	('Titres15e', 28),
	('Titres15e', 29),
	('Titres15e', 30),
	('Titres15e', 32),
	('Titres15e', 33),
	('Titres15e', 54),
	('Titres15e', 55),
	('Titres15e_Notifications', 22),
	('Titres16e', 14),
	('Titres16e', 15),
	('Titres16e', 16),
	('Titres16e', 18),
	('Titres16e', 24),
	('Titres16e', 27),
	('Titres16e', 28),
	('Titres16e', 29),
	('Titres16e', 30),
	('Titres16e', 32),
	('Titres16e', 33),
	('Titres16e', 55),
	('Titres17e', 14),
	('Titres17e', 15),
	('Titres17e', 16),
	('Titres17e', 18),
	('Titres17e', 24),
	('Titres17e', 27),
	('Titres17e', 28),
	('Titres17e', 29),
	('Titres17e', 30),
	('Titres17e', 32),
	('Titres17e', 33),
	('Titres17e', 55),
	('Titres18e', 14),
	('Titres18e', 15),
	('Titres18e', 16),
	('Titres18e', 18),
	('Titres18e', 24),
	('Titres18e', 27),
	('Titres18e', 28),
	('Titres18e', 29),
	('Titres18e', 30),
	('Titres18e', 32),
	('Titres18e', 33),
	('Titres18e', 55),
	('Titres19e', 14),
	('Titres19e', 15),
	('Titres19e', 16),
	('Titres19e', 18),
	('Titres19e', 24),
	('Titres19e', 27),
	('Titres19e', 28),
	('Titres19e', 29),
	('Titres19e', 30),
	('Titres19e', 32),
	('Titres19e', 33),
	('Titres19e', 55),
	('Titres20e', 14),
	('Titres20e', 15),
	('Titres20e', 16),
	('Titres20e', 18),
	('Titres20e', 24),
	('Titres20e', 27),
	('Titres20e', 28),
	('Titres20e', 29),
	('Titres20e', 30),
	('Titres20e', 32),
	('Titres20e', 33),
	('Titres20e', 55),
	('Titres5e', 14),
	('Titres5e', 15),
	('Titres5e', 16),
	('Titres5e', 18),
	('Titres5e', 24),
	('Titres5e', 27),
	('Titres5e', 28),
	('Titres5e', 29),
	('Titres5e', 30),
	('Titres5e', 32),
	('Titres5e', 33),
	('Titres5e', 55),
	('Titres6e', 14),
	('Titres6e', 15),
	('Titres6e', 16),
	('Titres6e', 18),
	('Titres6e', 24),
	('Titres6e', 27),
	('Titres6e', 28),
	('Titres6e', 29),
	('Titres6e', 30),
	('Titres6e', 32),
	('Titres6e', 33),
	('Titres6e', 55),
	('Titres7e', 14),
	('Titres7e', 15),
	('Titres7e', 16),
	('Titres7e', 18),
	('Titres7e', 24),
	('Titres7e', 27),
	('Titres7e', 28),
	('Titres7e', 29),
	('Titres7e', 30),
	('Titres7e', 32),
	('Titres7e', 33),
	('Titres7e', 55),
	('Titres8e', 14),
	('Titres8e', 15),
	('Titres8e', 16),
	('Titres8e', 18),
	('Titres8e', 24),
	('Titres8e', 27),
	('Titres8e', 28),
	('Titres8e', 29),
	('Titres8e', 30),
	('Titres8e', 32),
	('Titres8e', 33),
	('Titres8e', 55),
	('Titres9e', 14),
	('Titres9e', 15),
	('Titres9e', 16),
	('Titres9e', 18),
	('Titres9e', 24),
	('Titres9e', 27),
	('Titres9e', 28),
	('Titres9e', 29),
	('Titres9e', 30),
	('Titres9e', 32),
	('Titres9e', 33),
	('Titres9e', 55),
	('TitresCentre', 14),
	('TitresCentre', 15),
	('TitresCentre', 16),
	('TitresCentre', 18),
	('TitresCentre', 24),
	('TitresCentre', 27),
	('TitresCentre', 28),
	('TitresCentre', 29),
	('TitresCentre', 30),
	('TitresCentre', 32),
	('TitresCentre', 33),
	('TitresCentre', 55),
	('TitresLouvre', 14),
	('TitresLouvre', 15),
	('TitresLouvre', 16),
	('TitresLouvre', 18),
	('TitresLouvre', 20),
	('TitresLouvre', 24),
	('TitresLouvre', 25),
	('TitresLouvre', 27),
	('TitresLouvre', 28),
	('TitresLouvre', 29),
	('TitresLouvre', 30),
	('TitresLouvre', 32),
	('TitresLouvre', 33),
	('TitresLouvre', 55);
/*!40000 ALTER TABLE `core_admin_workgroup_user` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_attribute`;
CREATE TABLE IF NOT EXISTS `core_attribute` (
  `id_attribute` int(11) NOT NULL AUTO_INCREMENT,
  `type_class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `help_message` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_mandatory` smallint(6) DEFAULT 0,
  `is_shown_in_search` smallint(6) DEFAULT 0,
  `is_shown_in_result_list` smallint(6) DEFAULT 0,
  `is_field_in_line` smallint(6) DEFAULT 0,
  `attribute_position` int(11) DEFAULT 0,
  `plugin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anonymize` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_attribute` DISABLE KEYS */;
INSERT INTO `core_attribute` (`id_attribute`, `type_class_name`, `title`, `help_message`, `is_mandatory`, `is_shown_in_search`, `is_shown_in_result_list`, `is_field_in_line`, `attribute_position`, `plugin_name`, `anonymize`) VALUES
	(1, 'fr.paris.lutece.portal.business.user.attribute.AttributeComboBox', 'Profil', '', 0, 0, 0, 0, 0, 'profiles', NULL);
/*!40000 ALTER TABLE `core_attribute` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_attribute_field`;
CREATE TABLE IF NOT EXISTS `core_attribute_field` (
  `id_field` int(11) NOT NULL AUTO_INCREMENT,
  `id_attribute` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_value` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_DEFAULT_value` smallint(6) DEFAULT 0,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `max_size_enter` int(11) DEFAULT NULL,
  `is_multiple` smallint(6) DEFAULT 0,
  `field_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_attribute_field` DISABLE KEYS */;
INSERT INTO `core_attribute_field` (`id_field`, `id_attribute`, `title`, `DEFAULT_value`, `is_DEFAULT_value`, `height`, `width`, `max_size_enter`, `is_multiple`, `field_position`) VALUES
	(1, 1, NULL, NULL, 0, 0, 0, 0, 1, 1),
	(2, 1, 'AgentGuichet', 'Profil d\'agents d\'acceuil permettant de g├⌐rer les RdV - prises - annulation et export', 0, 0, 0, 0, 0, 2),
	(3, 1, 'AgentMetier', 'Gestion et plannification des RdV', 0, 0, 0, 0, 0, 3),
	(4, 1, 'ChefDeService', 'Profil des Chefs de service, DGA, DGAS', 0, 0, 0, 0, 0, 4),
	(5, 1, 'AdministrateurMetier', 'Profil des administrateurs RdV - WF - messages - formulaire - gestion et planification', 0, 0, 0, 0, 0, 5),
	(6, 1, 'ReferentLocal', 'Profil applicable pour les r├⌐f├⌐rents locaux', 0, 0, 0, 0, 0, 6),
	(7, 1, 'SRU', 'Profil applicable pour les administrateurs fonctionnels', 0, 0, 0, 0, 0, 7),
	(8, 1, 'Teleconseiller3975', 'Profil permettant de g├⌐rer les RdV - prises - annulation et export', 0, 0, 0, 0, 0, 8);
/*!40000 ALTER TABLE `core_attribute_field` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_connections_log`;
CREATE TABLE IF NOT EXISTS `core_connections_log` (
  `access_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `login_status` int(11) DEFAULT NULL,
  KEY `index_connections_log` (`ip_address`,`date_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_connections_log` DISABLE KEYS */;
INSERT INTO `core_connections_log` (`access_code`, `ip_address`, `date_login`, `login_status`) VALUES
	('admin', '127.0.0.1', '2020-11-13 14:07:04', 0),
	('admin', '127.0.0.1', '2020-11-13 14:07:08', 0),
	('guichardf', '10.16.197.202', '2020-12-23 09:13:32', 0),
	('guichardf', '10.16.197.202', '2020-12-23 09:13:41', 0),
	('chef13', '10.16.197.202', '2020-12-23 09:14:29', 0),
	('guichardf', '10.16.197.202', '2020-12-23 09:52:55', 0),
	('ducellierc', '10.16.200.134', '2020-12-29 11:34:05', 0),
	('ducellierc', '10.16.200.134', '2020-12-29 11:34:14', 0),
	('ducellierc', '10.16.200.134', '2020-12-29 11:34:21', 0),
	('ducellierc', '10.16.200.134', '2020-12-29 11:34:36', 0),
	('ducellierc', '10.16.200.134', '2020-12-29 11:34:50', 0),
	('benoitq', '10.99.9.49', '2020-12-29 14:22:16', 0),
	('benoitq', '10.99.9.49', '2020-12-29 14:23:11', 0),
	('ducellierc', '10.16.200.134', '2020-12-29 14:39:55', 0),
	('debuignem', '10.16.198.203', '2020-12-29 14:50:03', 0),
	('marc.debuigne', '10.16.198.203', '2020-12-29 14:50:09', 0),
	('CORONELS', '10.99.8.69', '2020-12-31 09:06:42', 0),
	('CORONELS', '10.99.8.69', '2020-12-31 09:07:02', 0),
	('coronels', '10.99.8.69', '2020-12-31 09:07:18', 0),
	('Coronels', '10.99.8.69', '2020-12-31 09:07:35', 0),
	('coronels', '10.99.8.69', '2020-12-31 09:07:54', 0),
	('CORONELS', '10.99.8.69', '2020-12-31 09:08:29', 0),
	('Coronels', '10.99.8.69', '2020-12-31 09:09:04', 0),
	('coronels', '10.99.8.69', '2020-12-31 09:09:29', 0),
	('coronels', '10.99.8.69', '2020-12-31 09:09:46', 0),
	('ducellierc', '10.16.200.121', '2020-12-31 13:26:13', 0),
	('admin2', '10.167.7.96', '2021-01-04 10:26:42', 0),
	('dvlr.andresw', '10.99.8.136', '2021-01-04 14:20:49', 0),
	('admin', '10.167.6.221', '2021-01-04 17:31:04', 0),
	('admin', '10.167.6.191', '2021-01-05 09:49:37', 0),
	('breuiln', '10.16.248.83', '2021-01-05 11:12:00', 0),
	('breuiln', '10.16.248.83', '2021-01-05 11:12:13', 0),
	('breuiln', '10.16.248.83', '2021-01-05 11:13:14', 0),
	('admin', '10.16.204.1', '2021-01-05 15:25:19', 0),
	('admin', '10.16.204.1', '2021-01-05 15:25:34', 0),
	('admin', '10.16.204.1', '2021-01-05 15:25:52', 0),
	('guichardf', '10.99.10.14', '2021-01-05 16:46:20', 0),
	('admin', '10.167.7.30', '2021-01-06 12:01:48', 0),
	('admin', '10.167.6.231', '2021-01-06 14:41:34', 0),
	('guichardf', '10.167.7.30', '2021-01-06 17:56:10', 0),
	('admin', '10.16.204.2', '2021-01-06 18:04:49', 0),
	('benoitq', '10.99.9.49', '2021-01-07 16:53:21', 0),
	('breuiln', '10.99.68.207', '2021-01-07 17:23:24', 0),
	('admin', '10.16.204.128', '2021-01-07 22:20:01', 0),
	('admin', '10.16.204.0', '2021-01-08 08:58:08', 0),
	('benoitq', '10.99.9.49', '2021-01-08 10:29:23', 0),
	('admin', '10.16.204.0', '2021-01-08 14:36:47', 0),
	('admin', '10.167.6.217', '2021-01-08 16:23:43', 0),
	('admin', '10.167.6.217', '2021-01-08 16:23:54', 0),
	('admin', '10.16.204.128', '2021-01-08 23:41:03', 0),
	('admin', '10.16.204.128', '2021-01-09 01:08:24', 0),
	('admin', '10.16.204.128', '2021-01-09 01:08:31', 0),
	('homandm', '10.16.200.120', '2021-01-11 09:17:46', 0),
	('homandm', '10.16.200.120', '2021-01-11 09:18:27', 0),
	('mhomand75', '10.16.200.120', '2021-01-11 09:19:23', 0),
	('homandm', '10.16.200.120', '2021-01-11 09:19:39', 0),
	('homandm', '10.16.200.120', '2021-01-11 09:23:25', 0),
	('homandm', '10.16.200.120', '2021-01-11 09:23:51', 0),
	('homandm', '10.16.200.120', '2021-01-11 09:27:34', 0),
	('homandm', '10.16.200.120', '2021-01-11 09:28:27', 0),
	('breuiln', '10.16.248.91', '2021-01-11 18:02:11', 0),
	('admin', '10.16.204.128', '2021-01-12 10:52:28', 0),
	('admin', '10.167.6.191', '2021-01-14 10:12:53', 0),
	('ducellierc', '10.16.203.141', '2021-01-14 10:31:42', 0),
	('ducellierc', '10.16.203.141', '2021-01-14 10:31:53', 0),
	('ducellierc', '10.16.203.141', '2021-01-14 10:32:04', 0),
	('ducellierc', '10.16.203.141', '2021-01-14 10:32:14', 0),
	('ducellierc', '10.16.203.141', '2021-01-14 11:24:24', 0),
	('ducellierc', '10.16.203.141', '2021-01-14 11:24:45', 0),
	('ducellierc', '10.16.203.141', '2021-01-14 11:24:55', 0),
	('ducellierc', '10.16.203.141', '2021-01-14 11:25:51', 0),
	('ducellierc', '10.16.203.141', '2021-01-14 11:26:05', 0),
	('CHEFLOUVRE', '10.99.9.103', '2021-01-14 11:39:54', 0),
	('benoitq', '10.99.9.49', '2021-01-14 11:41:49', 0),
	('ducellierc', '10.16.203.141', '2021-01-14 12:22:12', 0),
	('valletk', '10.99.9.93', '2021-01-14 15:26:22', 0),
	('homandm', '10.99.9.103', '2021-01-14 15:33:36', 0),
	('homandm', '10.99.9.103', '2021-01-14 15:34:11', 0),
	('admin', '10.167.7.106', '2021-01-14 15:34:41', 0),
	('homandm', '10.99.9.103', '2021-01-14 15:35:02', 0),
	('homandm', '10.99.9.103', '2021-01-14 15:36:05', 0),
	('homandm', '10.99.9.103', '2021-01-14 15:36:42', 0),
	('homandm', '10.99.9.103', '2021-01-14 15:37:37', 0),
	('homandm', '10.99.9.103', '2021-01-14 15:37:59', 0),
	('homandm', '10.99.9.103', '2021-01-14 15:38:20', 0),
	('homandm', '10.99.9.103', '2021-01-14 15:38:38', 0),
	('homandm', '10.99.9.103', '2021-01-14 15:39:38', 0),
	('homandm', '10.99.9.103', '2021-01-14 16:01:07', 0),
	('homandm', '10.99.9.103', '2021-01-14 16:01:33', 0),
	('homandm', '10.99.9.103', '2021-01-14 16:09:56', 0),
	('homandm', '10.99.9.103', '2021-01-14 16:14:12', 0),
	('homandm', '10.99.9.103', '2021-01-14 16:14:51', 0),
	('ducellierc', '10.99.8.136', '2021-01-18 08:47:57', 0),
	('coronels', '10.16.200.172', '2021-01-18 09:13:34', 0),
	('coronels', '10.16.200.172', '2021-01-18 09:23:08', 0),
	('admin', '10.167.6.229', '2021-01-18 15:45:15', 0),
	('admin', '10.167.6.108', '2021-01-19 09:33:16', 0),
	('breuiln', '10.16.248.234', '2021-01-19 09:56:59', 0),
	('benoitq', '10.99.9.49', '2021-01-19 11:06:13', 0),
	('testbitq', '10.99.10.14', '2021-01-19 11:32:35', 0),
	('testbtiq', '10.99.10.14', '2021-01-19 11:32:48', 0),
	('cheflouvre', '10.99.10.14', '2021-01-19 14:44:35', 0),
	('cheflouvre', '10.99.10.14', '2021-01-19 14:44:46', 0),
	('guichardf', '10.99.10.14', '2021-01-19 14:47:08', 0),
	('guichardf', '10.99.10.14', '2021-01-19 14:48:03', 0),
	('coronels021', '10.16.202.225', '2021-01-19 15:16:16', 0),
	('agentlouvre', '10.99.10.14', '2021-01-20 11:31:20', 0),
	('ducellierc', '10.99.8.136', '2021-01-21 10:28:43', 0),
	('admin', '10.16.198.101', '2021-01-21 12:55:24', 0),
	('admin', '10.16.198.101', '2021-01-21 12:57:03', 0),
	('cheflouvre', '10.99.8.54', '2021-01-21 16:54:36', 0),
	('admin', '10.16.204.0', '2021-01-22 08:31:58', 0),
	('benoitq', '10.99.9.49', '2021-01-22 10:23:35', 0),
	('admin', '10.167.7.17', '2021-01-25 10:11:27', 0),
	('admin', '10.167.6.126', '2021-01-25 11:56:01', 0),
	('homandm', '10.16.203.49', '2021-01-25 14:11:25', 0),
	('VALLETK', '10.99.9.93', '2021-01-26 14:43:01', 0),
	('VALLETK', '10.99.9.93', '2021-01-26 14:43:16', 0),
	('LUTECE', '10.99.9.103', '2021-01-26 16:15:03', 0),
	('hom', '10.99.9.103', '2021-01-26 16:16:13', 0),
	('guichardf', '10.99.8.54', '2021-01-26 16:59:13', 0),
	('guichardf', '10.99.8.54', '2021-01-27 11:51:55', 0),
	('agent3975', '10.16.248.119', '2021-01-27 14:05:26', 0),
	('agentlouvre', '10.16.203.132', '2021-01-28 09:27:12', 0),
	('guichardf', '10.16.203.132', '2021-01-28 12:23:05', 0),
	('guichardf', '10.16.203.132', '2021-01-28 12:35:17', 0),
	('ducellierc', '10.16.201.185', '2021-01-29 11:10:00', 0),
	('benoitq', '10.99.9.49', '2021-01-29 11:10:48', 0),
	('benoitq', '10.99.9.49', '2021-01-29 11:11:39', 0),
	('DVLRVALLETK', '10.99.9.93', '2021-01-29 12:56:05', 0),
	('homandm', '10.99.9.103', '2021-01-29 13:41:07', 0),
	('DVLRVALLETK', '10.16.196.77', '2021-01-31 17:57:58', 0),
	('cheflouvre', '10.16.203.39', '2021-02-02 12:16:48', 0),
	('admin', '10.16.204.2', '2021-02-02 13:55:00', 0),
	('admin', '10.167.6.197', '2021-02-02 15:51:48', 0),
	('guichardf', '10.99.8.54', '2021-02-03 09:06:28', 0),
	('guichardf', '10.99.8.54', '2021-02-04 15:12:20', 0),
	('W78_rec', '10.167.6.108', '2021-02-09 15:24:33', 0),
	('W78_rec', '10.167.6.108', '2021-02-09 15:24:44', 0),
	('guichardf', '10.99.8.54', '2021-02-09 17:05:57', 0),
	('admin', '10.167.6.108', '2021-02-09 17:07:27', 0),
	('guichardf', '10.99.8.54', '2021-02-10 09:14:26', 0),
	('guichardf', '10.99.8.54', '2021-02-10 09:14:34', 0),
	('guichardf', '10.99.8.54', '2021-02-10 09:14:45', 0),
	('admin', '10.167.7.53', '2021-02-10 09:58:14', 0),
	('coronels', '10.16.202.161', '2021-02-10 14:27:39', 0),
	('coronels', '10.16.198.22', '2021-02-11 11:18:43', 0),
	('admin', '10.167.6.196', '2021-02-11 17:31:02', 0),
	('coronels', '10.99.8.62', '2021-02-12 10:19:44', 0),
	('cheflouvre', '10.16.248.41', '2021-02-12 15:15:52', 0),
	('cheflouvre', '10.16.248.41', '2021-02-12 15:16:06', 0),
	('cheflouvre', '10.16.248.41', '2021-02-12 15:16:52', 0),
	('admin', '10.16.204.131', '2021-02-15 13:42:27', 0),
	('homandm', '10.16.201.16', '2021-02-15 14:06:38', 0),
	('valletk', '10.16.241.36', '2021-02-15 18:04:45', 0),
	('debuignm', '10.16.240.197', '2021-02-16 10:41:13', 0),
	('admin', '10.16.204.2', '2021-02-16 11:47:18', 0),
	('admin', '10.16.204.2', '2021-02-16 11:47:24', 0),
	('admin', '10.16.204.131', '2021-02-16 12:14:03', 0),
	('admin', '10.16.204.131', '2021-02-16 12:25:40', 0),
	('admin', '10.16.204.131', '2021-02-16 12:25:50', 0),
	('admin', '10.16.204.131', '2021-02-16 12:30:02', 0),
	('admin', '10.16.204.131', '2021-02-16 12:30:12', 0),
	('benoitq', '10.99.9.49', '2021-02-16 14:10:26', 0),
	('test', '10.167.6.92', '2021-02-17 13:41:54', 0),
	('admin', '10.16.204.1', '2021-02-18 17:40:56', 0),
	('debuignm', '10.16.197.40', '2021-02-18 18:21:11', 0),
	('admin', '10.16.204.128', '2021-02-18 18:58:38', 0),
	('admin', '10.16.204.128', '2021-02-19 09:09:59', 0),
	('admin', '10.16.204.128', '2021-02-19 09:44:33', 0),
	('admin', '10.167.6.136', '2021-02-19 16:47:48', 0),
	('DVLR.VALLETK', '10.16.200.118', '2021-02-21 17:19:35', 0),
	('admin', '10.16.204.129', '2021-02-22 17:58:53', 0),
	('admin', '10.16.204.132', '2021-02-23 10:24:29', 0),
	('admin', '10.167.6.171', '2021-02-23 14:12:03', 0),
	('admin', '10.16.204.131', '2021-02-26 11:55:52', 0),
	('admin', '10.16.204.128', '2021-03-01 10:50:54', 0),
	('admin2', '10.167.6.155', '2021-03-04 11:22:17', 0),
	('admin', '10.167.6.155', '2021-03-04 11:25:10', 0),
	('admin', '10.167.6.155', '2021-03-04 11:32:48', 0),
	('admin', '10.167.6.248', '2021-03-09 13:24:38', 0),
	('admin', '10.167.6.248', '2021-03-09 13:24:50', 0),
	('admin', '10.167.7.133', '2021-03-09 17:06:45', 0),
	('admin', '10.167.6.157', '2021-03-10 12:38:21', 0),
	('admin', '10.16.204.130', '2021-03-29 10:57:42', 0),
	('admin', '10.16.204.130', '2021-03-29 10:57:49', 0),
	('admin', '10.16.204.130', '2021-03-29 14:47:31', 0),
	('admin', '10.16.204.130', '2021-03-29 14:47:42', 0),
	('cheflouvre', '10.99.8.54', '2021-03-31 15:43:02', 0),
	('cheflouvre', '10.99.8.54', '2021-03-31 15:43:13', 0),
	('admin', '10.167.6.144', '2021-04-01 14:26:37', 0),
	('admin', '10.167.6.144', '2021-04-01 16:24:03', 0),
	('admin', '10.167.6.191', '2021-04-14 15:44:40', 0),
	('admin', '10.167.6.135', '2021-04-22 11:29:46', 0),
	('admin', '10.167.6.124', '2021-04-22 15:50:10', 0),
	('admin', '10.167.6.191', '2021-05-04 11:45:25', 0),
	('agentlouvre', '10.99.8.54', '2021-05-05 15:09:10', 0),
	('admin2', '10.167.6.65', '2021-05-07 14:44:21', 0),
	('debuignm', '10.16.165.7', '2021-05-11 19:02:55', 0),
	('admin', '10.16.204.147', '2021-05-12 14:09:13', 0),
	('admin', '192.168.99.68', '2021-05-12 15:06:05', 0),
	('admin', '192.168.99.68', '2021-05-12 15:06:18', 0),
	('guichardf', '10.99.8.54', '2021-05-17 16:08:03', 0),
	('guichardf', '10.99.8.54', '2021-05-17 16:08:13', 0),
	('admin', '10.16.204.157', '2021-05-18 08:57:22', 0),
	('admin', '10.16.204.157', '2021-05-18 08:57:29', 0),
	('guichardf', '10.99.8.54', '2021-05-18 13:44:00', 0),
	('juillat', '10.16.173.232', '2021-05-18 15:30:40', 0),
	('juillat', '10.16.173.232', '2021-05-18 15:31:02', 0),
	('juillat', '10.16.163.223', '2021-05-19 11:44:31', 0),
	('admin', '10.16.204.160', '2021-05-19 12:07:53', 0),
	('admin', '10.167.6.108', '2021-05-25 14:06:26', 0),
	('admin', '10.167.6.205', '2021-05-28 10:23:28', 0),
	('breuiln', '10.16.170.208', '2021-06-15 12:28:50', 0),
	('admin', '10.167.6.135', '2021-06-25 11:10:49', 0),
	('admin', '10.167.6.99', '2021-07-29 18:01:58', 0),
	('admin', '10.100.36.157', '2021-08-02 08:56:40', 0),
	('admin', '10.167.6.108', '2021-08-30 15:07:24', 0),
	('admin', '10.167.6.205', '2021-10-29 17:53:34', 0),
	('admin', '10.167.6.205', '2021-10-29 17:53:39', 0),
	('admin', '10.167.6.205', '2021-10-29 17:53:49', 0),
	('admin', '10.16.169.60', '2021-11-02 14:19:09', 0),
	('admin', '10.16.174.23', '2021-11-03 16:49:21', 0),
	('admin', '10.16.160.103', '2021-11-05 08:59:59', 0),
	('admin', '10.16.166.245', '2021-11-08 10:07:54', 0),
	('admin', '10.16.166.245', '2021-11-08 12:31:17', 0),
	('admin', '10.16.174.255', '2021-11-10 10:56:18', 0),
	('breuiln', '10.99.68.207', '2021-11-23 14:26:46', 0),
	('admin', '10.100.40.157', '2021-12-03 16:10:46', 0),
	('admin', '10.100.40.157', '2021-12-03 17:47:56', 0),
	('admin', '10.100.40.157', '2021-12-06 09:56:13', 0),
	('admin', '10.16.172.243', '2021-12-07 16:08:17', 0),
	('admin', '10.16.172.243', '2021-12-07 16:08:32', 0),
	('admin', '10.16.170.232', '2021-12-22 14:00:37', 0),
	('admin', '10.16.173.67', '2021-12-29 10:14:37', 0),
	('admin', '10.16.173.67', '2021-12-29 10:14:42', 0),
	('admin', '10.16.173.197', '2022-01-27 11:21:56', 0),
	('admin', '10.16.172.199', '2022-02-01 12:07:43', 0),
	('admin', '10.20.1.234', '2022-02-10 14:00:50', 0),
	('admin', '10.16.172.22', '2022-03-03 15:08:47', 0),
	('admin', '10.16.172.22', '2022-03-03 15:08:51', 0),
	('admin', '0:0:0:0:0:0:0:1', '2022-03-07 16:50:45', 0),
	('admin', '0:0:0:0:0:0:0:1', '2022-03-07 16:50:51', 0);
/*!40000 ALTER TABLE `core_connections_log` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_dashboard`;
CREATE TABLE IF NOT EXISTS `core_dashboard` (
  `dashboard_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`dashboard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_dashboard` DISABLE KEYS */;
INSERT INTO `core_dashboard` (`dashboard_name`, `dashboard_column`, `dashboard_order`) VALUES
	('APPOINTMENT_FORM', 3, 2),
	('APPOINTMENT_USER_CALENDAR', 3, 3),
	('CORE_PAGES', 2, 1),
	('CORE_SYSTEM', 1, 2),
	('CORE_USER', 4, 1),
	('CORE_USERS', 1, 1),
	('WORKFLOW', 3, 1);
/*!40000 ALTER TABLE `core_dashboard` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_datastore`;
CREATE TABLE IF NOT EXISTS `core_datastore` (
  `entity_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entity_value` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`entity_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_datastore` DISABLE KEYS */;
INSERT INTO `core_datastore` (`entity_key`, `entity_value`) VALUES
	('captcha.defaultProvider', 'JCaptcha'),
	('core_banned_domain_names', 'yopmail.com'),
	('core.advanced_parameters.access_failures_captcha', '1'),
	('core.advanced_parameters.access_failures_interval', '10'),
	('core.advanced_parameters.access_failures_max', '3'),
	('core.advanced_parameters.account_life_time', '12'),
	('core.advanced_parameters.account_reactivated_mail_sender', 'lutece@nowhere.com'),
	('core.advanced_parameters.account_reactivated_mail_subject', 'Votre compte a bien ├⌐t├⌐ r├⌐activ├⌐'),
	('core.advanced_parameters.default_user_language', 'fr'),
	('core.advanced_parameters.default_user_level', '1'),
	('core.advanced_parameters.default_user_notification', '1'),
	('core.advanced_parameters.default_user_status', '0'),
	('core.advanced_parameters.email_pattern', '^[\\w_.\\-!\\#\\$\\%\\&\'\\*\\+\\/\\=\\?\\^\\`\\}\\{\\|\\~]+@[\\w_.\\-]+\\.[\\w]+$'),
	('core.advanced_parameters.email_pattern_verify_by', ''),
	('core.advanced_parameters.expired_alert_mail_sender', 'lutece@nowhere.com'),
	('core.advanced_parameters.expired_alert_mail_subject', 'Votre compte a expir├⌐'),
	('core.advanced_parameters.first_alert_mail_sender', 'lutece@nowhere.com'),
	('core.advanced_parameters.first_alert_mail_subject', 'Votre compte va bient├┤t expirer'),
	('core.advanced_parameters.force_change_password_reinit', 'false'),
	('core.advanced_parameters.lock_reset_token_to_session', 'false'),
	('core.advanced_parameters.maximum_number_password_change', ''),
	('core.advanced_parameters.nb_alert_account', '2'),
	('core.advanced_parameters.notify_user_password_expired', ''),
	('core.advanced_parameters.other_alert_mail_sender', 'lutece@nowhere.com'),
	('core.advanced_parameters.other_alert_mail_subject', 'Votre compte va bient├┤t expirer'),
	('core.advanced_parameters.password_duration', '120'),
	('core.advanced_parameters.password_expired_mail_sender', 'lutece@nowhere.com'),
	('core.advanced_parameters.password_expired_mail_subject', 'Votre mot de passe a expir├⌐'),
	('core.advanced_parameters.password_format_numero', 'false'),
	('core.advanced_parameters.password_format_special_characters', 'false'),
	('core.advanced_parameters.password_format_upper_lower_case', 'false'),
	('core.advanced_parameters.password_history_size', ''),
	('core.advanced_parameters.password_minimum_length', '8'),
	('core.advanced_parameters.reset_token_validity', '60'),
	('core.advanced_parameters.time_before_alert_account', '30'),
	('core.advanced_parameters.time_between_alerts_account', '10'),
	('core.advanced_parameters.tsw_size_password_change', ''),
	('core.advanced_parameters.use_advanced_security_parameters', ''),
	('core.backOffice.defaultEditor', 'tinymce'),
	('core.cache.status.appointment.appointmentFormCacheService.enabled', '1'),
	('core.cache.status.asynchronousupload.asynchronousUploadCacheService.enabled', '0'),
	('core.cache.status.BaseUserPreferencesCacheService.enabled', '0'),
	('core.cache.status.BaseUserPreferencesCacheService.maxElementsInMemory', '1000'),
	('core.cache.status.DatastoreCacheService.enabled', '0'),
	('core.cache.status.EntryTypeServiceManagerCache.enabled', '1'),
	('core.cache.status.LinksIncludeCacheService.enabled', '0'),
	('core.cache.status.LuteceUserCacheService.enabled', '1'),
	('core.cache.status.LuteceUserCacheService.maxElementsInMemory', '1000'),
	('core.cache.status.MailAttachmentCacheService.diskPersistent', 'true'),
	('core.cache.status.MailAttachmentCacheService.enabled', '1'),
	('core.cache.status.MailAttachmentCacheService.maxElementsInMemory', '10'),
	('core.cache.status.MailAttachmentCacheService.overflowToDisk', 'true'),
	('core.cache.status.MailAttachmentCacheService.timeToLiveSeconds', '7200'),
	('core.cache.status.MyPortalWidgetContentService.enabled', '1'),
	('core.cache.status.MyPortalWidgetService.enabled', '1'),
	('core.cache.status.PageCacheService.enabled', '0'),
	('core.cache.status.PageCachingFilter.enabled', '0'),
	('core.cache.status.PageCachingFilter(CAUTION:NEVERUSEWITHUSERDYNAMICDATA).enabled', '0'),
	('core.cache.status.pathCacheService.enabled', '0'),
	('core.cache.status.PortalMenuService.enabled', '0'),
	('core.cache.status.PortletCacheService.enabled', '0'),
	('core.cache.status.resource.resourceCacheService.enabled', '1'),
	('core.cache.status.resource.resourceCacheService.maxElementsInMemory', '500'),
	('core.cache.status.SiteMapService.enabled', '1'),
	('core.cache.status.StaticFilesCachingFilter.enabled', '0'),
	('core.cache.status.StaticFilesCachingFilter.timeToLiveSeconds', '604800'),
	('core.cache.status.workflow.alertGruConfigCacheService.enabled', '0'),
	('core.cache.status.workflow.notifyGruConfigCacheService.enabled', '0'),
	('core.cache.status.XMLTransformerCacheService(XSLT).enabled', '1'),
	('core.crypto.key', '8384f7b46e7cd86417d089cd0fcfdf5bfc430ad75875b09b2cd12c0d68633fbb'),
	('core.daemon.accountLifeTimeDaemon.interval', '86400'),
	('core.daemon.accountLifeTimeDaemon.onStartUp', 'false'),
	('core.daemon.AlertGruDaemon.interval', '3600'),
	('core.daemon.AlertGruDaemon.onStartUp', 'true'),
	('core.daemon.anonymizationDaemon.interval', '86400'),
	('core.daemon.anonymizationDaemon.onStartUp', 'false'),
	('core.daemon.AppointmentReminderDaemon.interval', '600'),
	('core.daemon.AppointmentReminderDaemon.onStartUp', 'false'),
	('core.daemon.archiveDaemon.interval', '86400'),
	('core.daemon.archiveDaemon.onStartUp', 'false'),
	('core.daemon.automaticActionDaemon.interval', '60'),
	('core.daemon.automaticActionDaemon.onStartUp', 'true'),
	('core.daemon.changeStateDaemon.interval', '10'),
	('core.daemon.changeStateDaemon.onStartUp', 'false'),
	('core.daemon.chooseStateActionDaemon.interval', '10'),
	('core.daemon.chooseStateActionDaemon.onStartUp', 'false'),
	('core.daemon.crmClientSender.interval', '60'),
	('core.daemon.crmClientSender.onStartUp', 'true'),
	('core.daemon.databaseAccountLifeTimeDaemon.interval', '86400'),
	('core.daemon.databaseAccountLifeTimeDaemon.onStartUp', 'true'),
	('core.daemon.databaseAnonymizationDaemon.interval', '86400'),
	('core.daemon.databaseAnonymizationDaemon.onStartUp', 'true'),
	('core.daemon.ExportWssoAdminUsersDaemon.interval', '3600'),
	('core.daemon.ExportWssoAdminUsersDaemon.onStartUp', 'true'),
	('core.daemon.fullIndexingDaemon.interval', '86400'),
	('core.daemon.fullIndexingDaemon.onStartUp', 'true'),
	('core.daemon.incrementalIndexingDaemon.interval', '3000'),
	('core.daemon.incrementalIndexingDaemon.onStartUp', 'false'),
	('core.daemon.indexer.interval', '60'),
	('core.daemon.indexer.onStartUp', 'true'),
	('core.daemon.mailSender.interval', '86400'),
	('core.daemon.mailSender.onStartUp', 'true'),
	('core.daemon.relaunchAppointmentDaemon.interval', '3600'),
	('core.daemon.relaunchAppointmentDaemon.onStartUp', 'true'),
	('core.daemon.slotDaemon.interval', '86400'),
	('core.daemon.slotDaemon.onStartUp', 'true'),
	('core.daemon.solrindexer.interval', '300'),
	('core.daemon.solrindexer.onStartUp', 'true'),
	('core.daemon.temporaryfilesDaemon.interval', '86400'),
	('core.daemon.temporaryfilesDaemon.onStartUp', 'true'),
	('core.daemon.threadLauncherDaemon.interval', '86400'),
	('core.daemon.threadLauncherDaemon.onStartUp', 'true'),
	('core.frontOffice.defaultEditor', 'markitupbbcode'),
	('core.plugins.status.address-autocomplete.installed', 'true'),
	('core.plugins.status.address.installed', 'true'),
	('core.plugins.status.Admin Authentication WSSO.installed', 'true'),
	('core.plugins.status.appointment-desk.installed', 'true'),
	('core.plugins.status.appointment-desk.pool', 'portal'),
	('core.plugins.status.appointment-filling.installed', 'true'),
	('core.plugins.status.appointment-filling.pool', 'portal'),
	('core.plugins.status.appointment-leaflet.installed', 'true'),
	('core.plugins.status.appointment-management.installed', 'true'),
	('core.plugins.status.appointment-management.pool', 'portal'),
	('core.plugins.status.appointment-mydashboard.installed', 'true'),
	('core.plugins.status.appointment-mydashboard.pool', 'portal'),
	('core.plugins.status.appointment-resource.installed', 'false'),
	('core.plugins.status.appointment-resource.pool', 'portal'),
	('core.plugins.status.appointment-solr.installed', 'true'),
	('core.plugins.status.appointment-solrsearchapp.installed', 'true'),
	('core.plugins.status.appointment-titre.installed', 'false'),
	('core.plugins.status.appointment-titre.pool', 'portal'),
	('core.plugins.status.appointment.installed', 'true'),
	('core.plugins.status.appointment.pool', 'portal'),
	('core.plugins.status.appointmentfactory.installed', 'true'),
	('core.plugins.status.appointmentgru.installed', 'true'),
	('core.plugins.status.appointmentgru.pool', 'portal'),
	('core.plugins.status.archive-client.installed', 'true'),
	('core.plugins.status.archive.installed', 'true'),
	('core.plugins.status.archive.pool', 'portal'),
	('core.plugins.status.asynchronous-upload.installed', 'true'),
	('core.plugins.status.asynchronous-upload.pool', 'portal'),
	('core.plugins.status.avatar.installed', 'true'),
	('core.plugins.status.avatar.pool', 'portal'),
	('core.plugins.status.blobstore.installed', 'true'),
	('core.plugins.status.blobstore.pool', 'portal'),
	('core.plugins.status.bootstrap2compatibility.installed', 'true'),
	('core.plugins.status.calendar.installed', 'true'),
	('core.plugins.status.calendar.pool', 'portal'),
	('core.plugins.status.captcha.installed', 'true'),
	('core.plugins.status.contextinclude.installed', 'true'),
	('core.plugins.status.contextinclude.pool', 'portal'),
	('core.plugins.status.core_extensions.installed', 'true'),
	('core.plugins.status.crm-form.installed', 'true'),
	('core.plugins.status.crm-form.pool', 'portal'),
	('core.plugins.status.crm-formengine.installed', 'true'),
	('core.plugins.status.crm-formengine.pool', 'portal'),
	('core.plugins.status.crm-mylutece.installed', 'true'),
	('core.plugins.status.crm-mylutece.pool', 'portal'),
	('core.plugins.status.crm-mylutecedatabase.installed', 'true'),
	('core.plugins.status.crm-mylutecedatabase.pool', 'portal'),
	('core.plugins.status.crm-mylutecedirectory.installed', 'true'),
	('core.plugins.status.crm-mylutecedirectory.pool', 'portal'),
	('core.plugins.status.crm-rest.installed', 'true'),
	('core.plugins.status.crm-rest.pool', 'portal'),
	('core.plugins.status.crm.installed', 'true'),
	('core.plugins.status.crm.pool', 'portal'),
	('core.plugins.status.crmclient.installed', 'true'),
	('core.plugins.status.crmclient.pool', 'portal'),
	('core.plugins.status.digglike.installed', 'true'),
	('core.plugins.status.digglike.pool', 'portal'),
	('core.plugins.status.directory-googlemaps.installed', 'true'),
	('core.plugins.status.directory-pdfproducer-archive.installed', 'true'),
	('core.plugins.status.directory-pdfproducer-archive.pool', 'portal'),
	('core.plugins.status.directory-pdfproducer.installed', 'true'),
	('core.plugins.status.directory-pdfproducer.pool', 'portal'),
	('core.plugins.status.directory.installed', 'true'),
	('core.plugins.status.directory.pool', 'portal'),
	('core.plugins.status.document-export.installed', 'true'),
	('core.plugins.status.document-export.pool', 'portal'),
	('core.plugins.status.document.installed', 'true'),
	('core.plugins.status.document.pool', 'portal'),
	('core.plugins.status.elasticdata-appointment.installed', 'true'),
	('core.plugins.status.elasticdata-appointment.pool', 'portal'),
	('core.plugins.status.elasticdata.installed', 'true'),
	('core.plugins.status.elasticdata.pool', 'portal'),
	('core.plugins.status.extend-actionbar.installed', 'true'),
	('core.plugins.status.extend-actionbar.pool', 'portal'),
	('core.plugins.status.extend-actionhit.installed', 'true'),
	('core.plugins.status.extend-actionhit.pool', 'portal'),
	('core.plugins.status.extend-comment-extendable.installed', 'true'),
	('core.plugins.status.extend-comment-extendable.pool', 'portal'),
	('core.plugins.status.extend-comment.installed', 'true'),
	('core.plugins.status.extend-comment.pool', 'portal'),
	('core.plugins.status.extend-feedback.installed', 'true'),
	('core.plugins.status.extend-feedback.pool', 'portal'),
	('core.plugins.status.extend-opengraph.installed', 'true'),
	('core.plugins.status.extend-opengraph.pool', 'portal'),
	('core.plugins.status.extend-rating.installed', 'true'),
	('core.plugins.status.extend-rating.pool', 'portal'),
	('core.plugins.status.extend-statistics.installed', 'true'),
	('core.plugins.status.extend-statistics.pool', 'portal'),
	('core.plugins.status.extend.installed', 'true'),
	('core.plugins.status.extend.pool', 'portal'),
	('core.plugins.status.filegenerator.installed', 'true'),
	('core.plugins.status.filegenerator.pool', 'portal'),
	('core.plugins.status.form-compare-validators.installed', 'true'),
	('core.plugins.status.form-compare-validators.pool', 'portal'),
	('core.plugins.status.form-date-validators.installed', 'true'),
	('core.plugins.status.form-date-validators.pool', 'portal'),
	('core.plugins.status.form-exportdatabase.installed', 'true'),
	('core.plugins.status.form-exportdatabase.pool', 'portal'),
	('core.plugins.status.form-exportdirectory.installed', 'true'),
	('core.plugins.status.form-exportdirectory.pool', 'portal'),
	('core.plugins.status.form-include-opengraph.installed', 'true'),
	('core.plugins.status.form-include-opengraph.pool', 'portal'),
	('core.plugins.status.form.installed', 'true'),
	('core.plugins.status.form.pool', 'portal'),
	('core.plugins.status.formengine-facilfamilles.installed', 'true'),
	('core.plugins.status.formengine-facilfamilles.pool', 'portal'),
	('core.plugins.status.formengine-outputws.installed', 'true'),
	('core.plugins.status.formengine-outputws.pool', 'portal'),
	('core.plugins.status.formengine.installed', 'true'),
	('core.plugins.status.formengine.pool', 'portal'),
	('core.plugins.status.genericalert.installed', 'true'),
	('core.plugins.status.genericalert.pool', 'portal'),
	('core.plugins.status.genericattributes-address.installed', 'true'),
	('core.plugins.status.genericattributes-address.pool', 'portal'),
	('core.plugins.status.genericattributes-googlemaps.installed', 'true'),
	('core.plugins.status.genericattributes-googlemaps.pool', 'portal'),
	('core.plugins.status.genericattributes.installed', 'true'),
	('core.plugins.status.genericattributes.pool', 'portal'),
	('core.plugins.status.gfa.installed', 'true'),
	('core.plugins.status.gfa.pool', 'portal'),
	('core.plugins.status.greetingscard.installed', 'true'),
	('core.plugins.status.greetingscard.pool', 'portal'),
	('core.plugins.status.helpdesk.installed', 'true'),
	('core.plugins.status.helpdesk.pool', 'portal'),
	('core.plugins.status.html.installed', 'true'),
	('core.plugins.status.html.pool', 'portal'),
	('core.plugins.status.htmlpage.installed', 'true'),
	('core.plugins.status.htmlpage.pool', 'portal'),
	('core.plugins.status.identitystore-openam.installed', 'true'),
	('core.plugins.status.identitystore.installed', 'true'),
	('core.plugins.status.importexport.installed', 'true'),
	('core.plugins.status.importexport.pool', 'portal'),
	('core.plugins.status.jcaptcha.installed', 'true'),
	('core.plugins.status.kibana.installed', 'true'),
	('core.plugins.status.kibana.pool', 'portal'),
	('core.plugins.status.leaflet.installed', 'true'),
	('core.plugins.status.lucene.installed', 'true'),
	('core.plugins.status.matomo.installed', 'false'),
	('core.plugins.status.mdph.installed', 'true'),
	('core.plugins.status.mdph.pool', 'portal'),
	('core.plugins.status.mermaidjs.installed', 'true'),
	('core.plugins.status.mermaidjs.pool', 'portal'),
	('core.plugins.status.modulenotifygrumappingmanager.installed', 'true'),
	('core.plugins.status.modulenotifygrumappingmanager.pool', 'portal'),
	('core.plugins.status.mydashboard.installed', 'true'),
	('core.plugins.status.mydashboard.pool', 'portal'),
	('core.plugins.status.mylutece-database.installed', 'true'),
	('core.plugins.status.mylutece-database.pool', 'portal'),
	('core.plugins.status.mylutece-directory.installed', 'true'),
	('core.plugins.status.mylutece-directory.pool', 'portal'),
	('core.plugins.status.mylutece-notification.installed', 'true'),
	('core.plugins.status.mylutece-notification.pool', 'portal'),
	('core.plugins.status.mylutece-oauth2.installed', 'true'),
	('core.plugins.status.mylutece-openam.installed', 'true'),
	('core.plugins.status.mylutece.installed', 'true'),
	('core.plugins.status.mylutece.pool', 'portal'),
	('core.plugins.status.myluteceuser-gu.installed', 'true'),
	('core.plugins.status.myluteceuser-gu.pool', 'portal'),
	('core.plugins.status.myluteceusergu-crm.installed', 'true'),
	('core.plugins.status.newsletter-document.installed', 'true'),
	('core.plugins.status.newsletter-document.pool', 'portal'),
	('core.plugins.status.newsletter.installed', 'true'),
	('core.plugins.status.newsletter.pool', 'portal'),
	('core.plugins.status.notifygru-appointment.installed', 'true'),
	('core.plugins.status.notifygru-appointment.pool', 'portal'),
	('core.plugins.status.oauth2.installed', 'true'),
	('core.plugins.status.openam-identity-client.installed', 'true'),
	('core.plugins.status.openam-identity-client.pool', 'portal'),
	('core.plugins.status.piwik.installed', 'true'),
	('core.plugins.status.pluginwizard.installed', 'true'),
	('core.plugins.status.pluginwizard.pool', 'portal'),
	('core.plugins.status.profiles.installed', 'true'),
	('core.plugins.status.profiles.pool', 'portal'),
	('core.plugins.status.quiz-exportdirectory.installed', 'true'),
	('core.plugins.status.quiz-exportdirectory.pool', 'portal'),
	('core.plugins.status.quiz.installed', 'true'),
	('core.plugins.status.quiz.pool', 'portal'),
	('core.plugins.status.referencelist.installed', 'true'),
	('core.plugins.status.referencelist.pool', 'portal'),
	('core.plugins.status.regularexpression.installed', 'true'),
	('core.plugins.status.regularexpression.pool', 'portal'),
	('core.plugins.status.resource-adminuser.installed', 'true'),
	('core.plugins.status.resource-extendableresource.installed', 'true'),
	('core.plugins.status.resource-mylutece.installed', 'true'),
	('core.plugins.status.resource.installed', 'true'),
	('core.plugins.status.resource.pool', 'portal'),
	('core.plugins.status.rest.installed', 'true'),
	('core.plugins.status.rest.pool', 'portal'),
	('core.plugins.status.shoppingcart.installed', 'true'),
	('core.plugins.status.shoppingcart.pool', 'portal'),
	('core.plugins.status.sitelabels.installed', 'true'),
	('core.plugins.status.solr.installed', 'true'),
	('core.plugins.status.solr.pool', 'portal'),
	('core.plugins.status.solrserver.installed', 'true'),
	('core.plugins.status.subscribe-mydashboard.installed', 'true'),
	('core.plugins.status.subscribe-mydashboard.pool', 'portal'),
	('core.plugins.status.subscribe.installed', 'true'),
	('core.plugins.status.subscribe.pool', 'portal'),
	('core.plugins.status.swaggerui.installed', 'true'),
	('core.plugins.status.swaggerui.pool', 'portal'),
	('core.plugins.status.systeminfo.installed', 'true'),
	('core.plugins.status.theme_city.installed', 'true'),
	('core.plugins.status.theme.installed', 'true'),
	('core.plugins.status.theme.pool', 'portal'),
	('core.plugins.status.themecity.installed', 'true'),
	('core.plugins.status.unittree-profiles.installed', 'true'),
	('core.plugins.status.unittree-profiles.pool', 'portal'),
	('core.plugins.status.unittree-sira.installed', 'true'),
	('core.plugins.status.unittree-sira.pool', 'portal'),
	('core.plugins.status.unittree.installed', 'true'),
	('core.plugins.status.unittree.pool', 'portal'),
	('core.plugins.status.workflow-alert.installed', 'true'),
	('core.plugins.status.workflow-alert.pool', 'portal'),
	('core.plugins.status.workflow-alertgru.installed', 'true'),
	('core.plugins.status.workflow-alertgru.pool', 'portal'),
	('core.plugins.status.workflow-appointment.installed', 'true'),
	('core.plugins.status.workflow-appointment.pool', 'portal'),
	('core.plugins.status.workflow-automatic-assignment.installed', 'true'),
	('core.plugins.status.workflow-automatic-assignment.pool', 'portal'),
	('core.plugins.status.workflow-automaticassignment.installed', 'true'),
	('core.plugins.status.workflow-automaticassignment.pool', 'portal'),
	('core.plugins.status.workflow-createpdf.installed', 'true'),
	('core.plugins.status.workflow-createpdf.pool', 'portal'),
	('core.plugins.status.workflow-editrecord.installed', 'true'),
	('core.plugins.status.workflow-editrecord.pool', 'portal'),
	('core.plugins.status.workflow-evaluation.installed', 'true'),
	('core.plugins.status.workflow-evaluation.pool', 'portal'),
	('core.plugins.status.workflow-fillingdirectory.installed', 'true'),
	('core.plugins.status.workflow-fillingdirectory.pool', 'portal'),
	('core.plugins.status.workflow-mappings.installed', 'true'),
	('core.plugins.status.workflow-mappings.pool', 'portal'),
	('core.plugins.status.workflow-notifycrm.installed', 'true'),
	('core.plugins.status.workflow-notifycrm.pool', 'portal'),
	('core.plugins.status.workflow-notifydirectory.installed', 'true'),
	('core.plugins.status.workflow-notifydirectory.pool', 'portal'),
	('core.plugins.status.workflow-notifyesirius.installed', 'true'),
	('core.plugins.status.workflow-notifyesirius.pool', 'portal'),
	('core.plugins.status.workflow-notifygru.installed', 'true'),
	('core.plugins.status.workflow-notifygru.pool', 'portal'),
	('core.plugins.status.workflow-reassignment.installed', 'true'),
	('core.plugins.status.workflow-reassignment.pool', 'portal'),
	('core.plugins.status.workflow-usergu.installed', 'true'),
	('core.plugins.status.workflow-usergu.pool', 'portal'),
	('core.plugins.status.workflow.installed', 'true'),
	('core.plugins.status.workflow.pool', 'portal'),
	('core.plugins.status.workflowtest.installed', 'true'),
	('core.plugins.status.workflowtest.pool', 'portal'),
	('core.startup.time', '11 mars 2022 à 11:16:10'),
	('core.templates.currentCommonsInclude', 'Boostrap5Tabler'),
	('leaflet.icon.icons.default.installed', 'true'),
	('leaflet.icon.icons.green.installed', 'true'),
	('leaflet.icon.icons.red.installed', 'true'),
	('leaflet.icon.icons.yellow.installed', 'true'),
	('matomo.site_property.server.http.url', 'https://mtmdsin.rec.apps.paris.fr/matomo/'),
	('matomo.site_property.server.https.url', 'https://mtmdsin.rec.apps.paris.fr/matomo/'),
	('matomo.site_property.site.id', '446'),
	('matomo.site_property.widget.auth.token', 'fa72556f171fbb3ba1137f11b9b8d47c'),
	('mylutece.security.public_url.mylutece.url.createAccount.page', 'jsp/site/Portal.jsp?page=mylutece&action=createAccount'),
	('mylutece.security.public_url.mylutece.url.doActionsAll', 'jsp/site/plugins/mylutece/Do*'),
	('mylutece.security.public_url.mylutece.url.doLogin', 'jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp'),
	('mylutece.security.public_url.mylutece.url.doLogout', 'jsp/site/plugins/mylutece/DoMyLuteceLogout.jsp'),
	('mylutece.security.public_url.mylutece.url.login.page', 'jsp/site/Portal.jsp?page=mylutece&action=login'),
	('mylutece.security.public_url.mylutece.url.lostLogin.page', 'jsp/site/Portal.jsp?page=mylutecedatabase&action=lostLogin'),
	('mylutece.security.public_url.mylutece.url.lostPassword.page', 'jsp/site/Portal.jsp?page=mylutece&action=lostPassword'),
	('mylutece.security.public_url.mylutece.url.modifyAccount.page', 'jsp/site/Portal.jsp?page=mylutece&action=modifyAccount'),
	('mylutece.site_property.default_role_keys', 'front_role'),
	('openamidentityclient.site_property.autologin_after_reinit_password', 'true'),
	('openamidentityclient.site_property.jcaptcha_enable', 'true'),
	('openamidentityclient.site_property.lost_password.notification_recipients_bcc', ''),
	('openamidentityclient.site_property.lost_password.notification_recipients_cc', ''),
	('openamidentityclient.site_property.lost_password.notification_sender_name', 'noreply@paris.fr'),
	('openamidentityclient.site_property.lost_password.notification_subject', 'Votre nouveau mot de passe'),
	('openamidentityclient.site_property.lost_password.notification_template.textblock', '<p>Bonjour ${account.login},</p><p>Vous avez perdu votre mot de passe ? Pour en g├⌐n├⌐rer un nouveau, cliquer sur ${url} </p><p>Cordialement.</p><p>L\'├⌐quipe Paris.fr.</p><p>Ce message a ├⌐t├⌐ envoy├⌐ automatiquement. Nous vous remercions de ne pas r├⌐pondre.</p>'),
	('openamidentityclient.site_property.lutece_user_validate_attribute_key', 'user.validated'),
	('openamidentityclient.site_property.max_notification', '10'),
	('openamidentityclient.site_property.validate_account.notification_recipients_bcc', ''),
	('openamidentityclient.site_property.validate_account.notification_recipients_cc', ''),
	('openamidentityclient.site_property.validate_account.notification_sender_name', 'noreply@paris.fr'),
	('openamidentityclient.site_property.validate_account.notification_subject', 'Valider mon compte'),
	('openamidentityclient.site_property.validate_account.notification_template.textblock', '<p>Bonjour ${account.login},</p><p>Votre compte a bien ├⌐t├⌐ cr├⌐├⌐,pour valider d├⌐finitivement votre inscription, veuillez suivre le lien suivant ${url} </p><p>Cordialement.</p><p>L\'├⌐quipe Paris.fr.</p><p>Ce message a ├⌐t├⌐ envoy├⌐ automatiquement. Nous vous remercions de ne pas r├⌐pondre.</p>'),
	('piwik.site_property.server.http.url', ''),
	('piwik.site_property.server.https.url', ''),
	('piwik.site_property.site.id', '0'),
	('piwik.site_property.widget.auth.token', ''),
	('portal.site.site_property.admin_home_url', 'jsp/admin/AdminMenu.jsp'),
	('portal.site.site_property.avatar_default', 'images/admin/skin/unknown.png'),
	('portal.site.site_property.back_images', '\'images/admin/skin/bg_login1.svg\' , \'images/admin/skin/bg_login2.svg\' , \'images/admin/skin/bg_login3.svg\' , \'images/admin/skin/bg_login4.svg\''),
	('portal.site.site_property.email', '<webmaster email>'),
	('portal.site.site_property.home_url', 'jsp/site/Portal.jsp'),
	('portal.site.site_property.locale.default', 'fr'),
	('portal.site.site_property.logo_url', 'images/logo-bo.svg'),
	('portal.site.site_property.meta.author', '<author>'),
	('portal.site.site_property.meta.copyright', '<copyright>'),
	('portal.site.site_property.meta.description', '<description>'),
	('portal.site.site_property.meta.keywords', '<keywords>'),
	('portal.site.site_property.name', 'AGENDA by LUTECE'),
	('portal.site.site_property.noreply_email', 'no-reply@paris.fr'),
	('portal.site.site_property.popup_credits.textblock', '&lt;credits text&gt;'),
	('portal.site.site_property.popup_legal_info.copyright.textblock', '&lt;copyright text&gt;'),
	('portal.site.site_property.popup_legal_info.privacy.textblock', '&lt;privacy text&gt;'),
	('portal.site.site_property.portlet.title.maxlength', '75'),
	('sitelabels.site_property.moncompte.url', 'https://moncompte.rec.apps.paris.mdp'),
	('sitelabels.site_property.nom_site', 'RDVQJ'),
	('sitelabels.site_property.nom_site_xs', 'Rendez-Vous Quartier Jeunes'),
	('sitelabels.site_property.siteformtitle', 'Rendez-Vous Quartier Jeunes'),
	('sitelabels.site_property.sitetitle', 'Rendez-Vous Quartier Jeunes'),
	('themecity.site_property.banner.buttonLabel', 'Demo'),
	('themecity.site_property.banner.buttonUrl', 'jsp/site/Portal.jsp?page=appointment&view=getViewAppointmentCalendar&id_form=5#current_step'),
	('themecity.site_property.banner.image', 'images/schedule.png'),
	('themecity.site_property.banner.text', 'Use Agenda City Packs in order to set appointements for any needs'),
	('themecity.site_property.banner.title', 'Appointments made easy !'),
	('themecity.site_property.bannerMessage.CloseButton.checkbox', '1'),
	('themecity.site_property.bannerMessage.Duration', '5000'),
	('themecity.site_property.bannerMessage.htmlblock', ''),
	('themecity.site_property.bannerMessage.Position', 'bottom-right'),
	('themecity.site_property.bannerMessage.Title', ''),
	('themecity.site_property.bannerMessage.Type', 'info'),
	('themecity.site_property.footer.about', 'Lutece is made for cities, by cities, upon open source principals.'),
	('themecity.site_property.footer.cookieLabel', 'Cookies management'),
	('themecity.site_property.footer.cookieLink', '#cookiecitypack'),
	('themecity.site_property.footer.links', '[{"Our wiki","https://lutece.paris.fr/support/wiki/home.html"},{"Read our Terms & Conditions","https://lutece.paris.fr/support/wiki/home.html"},]'),
	('themecity.site_property.robotIndex.checkbox', '1');
/*!40000 ALTER TABLE `core_datastore` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_feature_group`;
CREATE TABLE IF NOT EXISTS `core_feature_group` (
  `id_feature_group` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feature_group_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feature_group_label` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feature_group_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_feature_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_feature_group` DISABLE KEYS */;
INSERT INTO `core_feature_group` (`id_feature_group`, `feature_group_description`, `feature_group_label`, `feature_group_order`) VALUES
	('APPLICATIONS', 'portal.features.group.applications.description', 'portal.features.group.applications.label', 3),
	('CONTENT', 'portal.features.group.content.description', 'portal.features.group.content.label', 1),
	('MANAGERS', 'portal.features.group.managers.description', 'portal.features.group.managers.label', 5),
	('SITE', 'portal.features.group.site.description', 'portal.features.group.site.label', 2),
	('STYLE', 'portal.features.group.charter.description', 'portal.features.group.charter.label', 6),
	('SYSTEM', 'portal.features.group.system.description', 'portal.features.group.system.label', 7),
	('USERS', 'portal.features.group.users.description', 'portal.features.group.users.label', 4);
/*!40000 ALTER TABLE `core_feature_group` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_file`;
CREATE TABLE IF NOT EXISTS `core_file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_physical_file` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_file` DISABLE KEYS */;
INSERT INTO `core_file` (`id_file`, `title`, `id_physical_file`, `file_size`, `mime_type`, `date_creation`) VALUES
	(125, 'export_users_csv.xml', 125, 2523, 'application/xml', '2005-10-10 10:10:10'),
	(126, 'export_users_xml.xml', 126, 259, 'application/xml', '2005-10-10 10:10:10'),
	(180, 'post_it_yellow.png', 205, 118118, 'image/png', '2021-01-20 09:37:13');
/*!40000 ALTER TABLE `core_file` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_id_generator`;
CREATE TABLE IF NOT EXISTS `core_id_generator` (
  `class_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `current_value` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_id_generator` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_id_generator` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_indexer_action`;
CREATE TABLE IF NOT EXISTS `core_indexer_action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `id_document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `indexer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB AUTO_INCREMENT=1437 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_indexer_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_indexer_action` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_level_right`;
CREATE TABLE IF NOT EXISTS `core_level_right` (
  `id_level` smallint(6) NOT NULL DEFAULT 0,
  `name` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_level_right` DISABLE KEYS */;
INSERT INTO `core_level_right` (`id_level`, `name`) VALUES
	(0, 'Niveau 0 - Administrateurs techniques (r├⌐serv├⌐ DSIN)'),
	(1, 'Niveau 1 - Administrateur Fonctionnel (SRU)'),
	(2, 'Niveau 2 - Utilisateur m├⌐tier avec gestion d\'utilisateurs'),
	(3, 'Niveau 3 - Tout utilisateur m├⌐tier');
/*!40000 ALTER TABLE `core_level_right` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_mail_item`;
CREATE TABLE IF NOT EXISTS `core_mail_item` (
  `id_mail_queue` int(11) NOT NULL DEFAULT 0,
  `mail_item` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_mail_queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_mail_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mail_item` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_mail_queue`;
CREATE TABLE IF NOT EXISTS `core_mail_queue` (
  `id_mail_queue` int(11) NOT NULL AUTO_INCREMENT,
  `is_locked` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_mail_queue`),
  KEY `is_locked_core_mail_queue` (`is_locked`)
) ENGINE=InnoDB AUTO_INCREMENT=435 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_mail_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mail_queue` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_mode`;
CREATE TABLE IF NOT EXISTS `core_mode` (
  `id_mode` int(11) NOT NULL DEFAULT 0,
  `description_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `output_xsl_method` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `output_xsl_version` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `output_xsl_media_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `output_xsl_encoding` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `output_xsl_indent` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `output_xsl_omit_xml_dec` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `output_xsl_standalone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_mode` DISABLE KEYS */;
INSERT INTO `core_mode` (`id_mode`, `description_mode`, `path`, `output_xsl_method`, `output_xsl_version`, `output_xsl_media_type`, `output_xsl_encoding`, `output_xsl_indent`, `output_xsl_omit_xml_dec`, `output_xsl_standalone`) VALUES
	(0, 'Normal', 'normal/', 'xml', '1.0', 'text/xml', 'UTF-8', 'yes', 'yes', NULL),
	(1, 'Administration', 'admin/', 'xml', '1.0', 'text/xml', 'UTF-8', 'yes', 'yes', NULL),
	(2, 'Wap', 'wml/', 'xml', '1.0', 'text/xml', 'UTF-8', 'yes', 'yes', NULL);
/*!40000 ALTER TABLE `core_mode` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_page`;
CREATE TABLE IF NOT EXISTS `core_page` (
  `id_page` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) DEFAULT 0,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` smallint(6) DEFAULT NULL,
  `page_order` int(11) DEFAULT 0,
  `id_template` int(11) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_theme` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `node_status` smallint(6) NOT NULL DEFAULT 1,
  `image_content` mediumblob DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'NULL',
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_authorization_node` int(11) DEFAULT NULL,
  `display_date_update` smallint(6) NOT NULL DEFAULT 0,
  `is_manual_date_update` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_page`),
  KEY `index_page` (`id_template`,`id_parent`),
  KEY `index_childpage` (`id_parent`,`page_order`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_page` DISABLE KEYS */;
INSERT INTO `core_page` (`id_page`, `id_parent`, `name`, `description`, `date_update`, `status`, `page_order`, `id_template`, `date_creation`, `role`, `code_theme`, `node_status`, `image_content`, `mime_type`, `meta_keywords`, `meta_description`, `id_authorization_node`, `display_date_update`, `is_manual_date_update`) VALUES
	(1, 0, 'Home', 'Home Page', '2014-06-08 17:20:44', 1, 1, 4, '2003-09-09 00:38:01', 'none', 'default', 0, _binary '', 'application/octet-stream', NULL, NULL, 1, 0, 0);
/*!40000 ALTER TABLE `core_page` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_page_template`;
CREATE TABLE IF NOT EXISTS `core_page_template` (
  `id_template` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_template`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_page_template` DISABLE KEYS */;
INSERT INTO `core_page_template` (`id_template`, `description`, `file_name`, `picture`) VALUES
	(1, 'One column', 'skin/site/page_template1.html', 'page_template1.gif'),
	(2, 'Two columns', 'skin/site/page_template2.html', 'page_template2.gif'),
	(3, 'Three columns', 'skin/site/page_template3.html', 'page_template3.gif'),
	(4, '1 + 2 columns', 'skin/site/page_template4.html', 'page_template4.gif'),
	(5, 'Two equal columns', 'skin/site/page_template5.html', 'page_template5.gif'),
	(6, 'Three unequal columns', 'skin/site/page_template6.html', 'page_template6.gif');
/*!40000 ALTER TABLE `core_page_template` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_physical_file`;
CREATE TABLE IF NOT EXISTS `core_physical_file` (
  `id_physical_file` int(11) NOT NULL AUTO_INCREMENT,
  `file_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_physical_file`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_physical_file` DISABLE KEYS */;
INSERT INTO `core_physical_file` (`id_physical_file`, `file_value`) VALUES
	(125, _binary 0x3C3F786D6C2076657273696F6E3D22312E30223F3E0D0A3C78736C3A7374796C6573686565742076657273696F6E3D22312E302220786D6C6E733A78736C3D22687474703A2F2F7777772E77332E6F72672F313939392F58534C2F5472616E73666F726D223E0D0A093C78736C3A6F7574707574206D6574686F643D2274657874222F3E0D0A090D0A093C78736C3A74656D706C617465206D617463683D227573657273223E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D227573657222202F3E0D0A093C2F78736C3A74656D706C6174653E0D0A090D0A093C78736C3A74656D706C617465206D617463683D2275736572223E0D0A09093C78736C3A746578743E223C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D226163636573735F636F646522202F3E0D0A09093C78736C3A746578743E223B223C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D226C6173745F6E616D6522202F3E0D0A09093C78736C3A746578743E223B223C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D2266697273745F6E616D6522202F3E0D0A09093C78736C3A746578743E223B223C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D22656D61696C22202F3E0D0A09093C78736C3A746578743E223B223C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D2273746174757322202F3E0D0A09093C78736C3A746578743E223B223C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D226C6F63616C6522202F3E0D0A09093C78736C3A746578743E223B223C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D226C6576656C22202F3E0D0A09093C78736C3A746578743E223B223C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D226D7573745F6368616E67655F70617373776F726422202F3E0D0A09093C78736C3A746578743E223B223C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D226163636573736962696C6974795F6D6F646522202F3E0D0A09093C78736C3A746578743E223B223C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D2270617373776F72645F6D61785F76616C69645F6461746522202F3E0D0A09093C78736C3A746578743E223B223C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D226163636F756E745F6D61785F76616C69645F6461746522202F3E0D0A09093C78736C3A746578743E223B223C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D22646174655F6C6173745F6C6F67696E22202F3E0D0A09093C78736C3A746578743E223C2F78736C3A746578743E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D22726F6C657322202F3E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D2272696768747322202F3E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D22776F726B67726F75707322202F3E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D226174747269627574657322202F3E0D0A09093C78736C3A746578743E262331303B3C2F78736C3A746578743E0D0A093C2F78736C3A74656D706C6174653E0D0A090D0A093C78736C3A74656D706C617465206D617463683D22726F6C6573223E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D22726F6C6522202F3E0D0A093C2F78736C3A74656D706C6174653E0D0A090D0A093C78736C3A74656D706C617465206D617463683D22726F6C65223E0D0A09093C78736C3A746578743E3B22726F6C653A3C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D2263757272656E74282922202F3E0D0A09093C78736C3A746578743E223C2F78736C3A746578743E0D0A093C2F78736C3A74656D706C6174653E0D0A090D0A093C78736C3A74656D706C617465206D617463683D22726967687473223E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D22726967687422202F3E0D0A093C2F78736C3A74656D706C6174653E0D0A090D0A093C78736C3A74656D706C617465206D617463683D227269676874223E0D0A09093C78736C3A746578743E3B2272696768743A3C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D2263757272656E74282922202F3E0D0A09093C78736C3A746578743E223C2F78736C3A746578743E0D0A093C2F78736C3A74656D706C6174653E0D0A090D0A093C78736C3A74656D706C617465206D617463683D22776F726B67726F757073223E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D22776F726B67726F757022202F3E0D0A093C2F78736C3A74656D706C6174653E0D0A090D0A093C78736C3A74656D706C617465206D617463683D22776F726B67726F7570223E0D0A09093C78736C3A746578743E3B22776F726B67726F75703A3C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D2263757272656E74282922202F3E0D0A09093C78736C3A746578743E223C2F78736C3A746578743E0D0A093C2F78736C3A74656D706C6174653E0D0A090D0A093C78736C3A74656D706C617465206D617463683D2261747472696275746573223E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D2261747472696275746522202F3E0D0A093C2F78736C3A74656D706C6174653E0D0A090D0A093C78736C3A74656D706C617465206D617463683D22617474726962757465223E0D0A09093C78736C3A746578743E3B223C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D226174747269627574652D696422202F3E0D0A09093C78736C3A746578743E3A3C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D226174747269627574652D6669656C642D696422202F3E0D0A09093C78736C3A746578743E3A3C2F78736C3A746578743E0D0A09093C78736C3A76616C75652D6F662073656C6563743D226174747269627574652D76616C756522202F3E0D0A09093C78736C3A746578743E223C2F78736C3A746578743E0D0A093C2F78736C3A74656D706C6174653E0D0A090D0A3C2F78736C3A7374796C6573686565743E),
	(126, _binary 0x3C3F786D6C2076657273696F6E3D22312E3022203F3E0D0A3C78736C3A7374796C6573686565742076657273696F6E3D22312E302220786D6C6E733A78736C3D22687474703A2F2F7777772E77332E6F72672F313939392F58534C2F5472616E73666F726D223E0D0A093C78736C3A74656D706C617465206D617463683D222F207C20402A207C206E6F64652829223E0D0A09093C78736C3A636F70793E0D0A0909093C78736C3A6170706C792D74656D706C617465732073656C6563743D22402A207C206E6F6465282922202F3E0D0A09093C2F78736C3A636F70793E0D0A093C2F78736C3A74656D706C6174653E0D0A3C2F78736C3A7374796C6573686565743E),
	(205, _binary 0xC3AB504E470D0A1A0A0000000D494844520000032000000324080600000040C39F447E000000017352474200C2ABE295AC1CCE9800000006624B474400C2A000C2A000C2A0C3A1E2959CC2BAC3B4000000097048597300000B1300000B130100C39CC2A3180000000774494D4507E29688050E161325C2AB52E28CA0180000001D69545874436F6D6D656E7400000000004372656174656420776974682047494D50642E6507000020004944415478E2948CE2889EE2959C6BC3892CCE98C2A5E29593E289887BE296A06F665DE29591E2889AE296842F3373E295ACC396E2959746E28988C2A51969C3B1C3B2607705E295971B047801CF80E289A1CF86C3A21D0E201C61C3A7C2B2C3A03044C3BF5816C3BB050C1802C2A20F44E295AAC2B503E2959E10E29690080813613BE2889EC3ACE296916359C3A277110BC2BDE2959C48E29693E295A8C3A9245608E2968C46C39CE2889AE295A0E295A37477CF83E2889AE296A0C2B2C39F7D332BC2BDE29591C2B7C2A3CEB573C2B7C2A3C396C3A6E2969047C2ACCE98E295995559C396595559C2A5C2A027C692C2A0E289A47FC3A1C3B3C3B3C3B3C3B3C3B3CE9308C2B0E295A9C3855CCEB1E295A63F72C39F1DE294823FC2A0E289A40B0FE289A4E294822F3C523FC3BFC3A8C3A8C3A8C3A87719C39CC2B71654545454541C090EE295A5C39F0FC2A0C3B71DE28CA0C3B9E282A7E296846E2EE29590C39C66E2948CE2948CC3B131E295A1C3ACE28C90051A570AC387E28CA16B70E296841D52C3B948C2A5E2959975C3ABE294BC7E6271C3BA63C2B1E289A5C3A9CEB537C3B717E2968C4FC2A0C2B5E28CA178E29597E2968C1102C2BB1F4B4545454525201515151515E29680C2A2C38903C3A733C3897FCF8411E29590E295A25B3BE29599C39CE295ACC2A2E2959564CE93C3B3CEB102CE930CE296910DE295A046CF84C2A508E2889E49E2968434CF844D13C2BB05C2B1726BE2959D3C0FE2959DC3B7E289A1E29480E296907CE288A913CF865B5FC2B757C3AFE294BCCF860851652015151515E288A9E294ACE29599497D0B2A2A2A2A2A36C39FC6927CE2889E14127CCE93336F1D78E2889ECF843F76C3ADE295A3E29593C2AAE28899E28C90C389C2B5663AC3B2E29480E295A3463A3F11C3B94CE29591C3A4CE9822CEA6C3B3CEB1C3A93B671D1F0848C3AD0CE295A4E2968CE289881C6EE29591E289A4C2AAE2949CC2BDE29594E28CA14A4CE2959DE2959DE288A9E2959D722BC39157E28988E296845F15E296A0C3863B6FE29684C3AEE2889EE2959C196DE28988E295AB6F4D6FE296A0E29598175FE29684C2BFC3AEE281BFC2A1E28988C2A502CEB10FE296A0C3AFE29596CEA9C3A757515151C2B10E4655402A2A2A2A2A0EE294BC61C2B7E294AC56CEB1C3A9C3ABC2BAC3870FE294A4CE93E28C9049E296916BC3ACCE98C3A6465C36E29599290535C3AA0667C3A9E29599382A2D58C2BFC2BCE29598C3BCC3A47B023AC2A34572165D52E29596C3B9E281BFE2959324CE98C3ACE2968CCEA62FE288A939E29680E2969073E2959B2EC2B1E2959246E281BFE295A6C3AFC3AC7F09786DCF804EE295924B6A15151515E288A90AE295983FE295AB15151515152BC2B0E281BF274EC3BCE29480E29482C2A0CEA3E29590C3B2E2889A3FC2B2E295A453E29599E2959FC2B5E2959076087615C2B1E296A0607CC3A1C3B27FE29691313DE29592C3BF1E0ECE93C3B3C3ABE295A319C3BF29E296883DE281BF364CE2959E015F3ECEB1093AC3A7C2B2CEA3C2B2CF86C3ACE295ACC2B2C3B2C2B2E2948037E28988125FE2968C4B7C69E295ABE28CA1C3A01BC3AB7FE295A1C692E295A5E295A63716E2968CC2A25F7A7D71E289A44F7C6D6F4511E288997BE295A76725CEA3E29680C2B26C55422A2A2A2AE29690C3ABC2BF0A4845454545E294BC015EE29691C384E28988C3AF6616E28CA018E295A5275BE28899E2959F2641E295A73541C385E295A2C3ACCF86C3BF692E310126E2959CE2959D71CEB1E289A5C3BB36C2BC5CCF833FE2959B7C4EE29494C39605C3BF04E2949CC2A51DE29684C2BA5DE289A50B3722E288A9E2959711C2B2C3B44DE289A56F09C2A0E289A50DE28988E295A7CEB54AC2A0E29680E295A369E289A445E295AA7B6575C2A03D1BE295982B2A2A2A2AE29690C3A6C2BF7FC3AD2B2A2A2A2A00C2B0E295A0274E03E289A1C2B17FE29591543EE296A0E295A70FE295A7E2948CC2BD5BCF86C3A0E28C90CE98C3AB53C2A13DE29597E29592E295AAC2BA5AE29599E289A4C3ACCE98C396E2959E34691AC3ADC3A1E28CA1E294824AE29692C3A74B20341EC2A5352620CEB5CEB1651EC3BBC3A2C2B77FC2B0CEA6E29684CEA3C389C38673C3BA736E25CF8466E289A5E294BCC2A1E294803776C3BA7FE296A056CE93E29482E295963AC2A0E28CA1E295963AC2A0E289A5C2A1C3B6E2959BE2889A6217E29680E281BFC3BAE29490796B30C2A1E2889AE29680C2B043E289A1777EC3BC3FE28CA0C391C2BB03E289A1E29596E2959B563FCF80C3A8C3A8C3A8C3A87702C2AC02525151515151E2959AC3A2565AC3B3E296A0E2948209E2948C6EE2889EE295A4E28C90CE98C3A033C2A1C2B2CEB5796BE295A76DE295A1E29591E295A5C3BFC2A5E295A6C3A8C3A732C39FE289A1321D4BCEB437032BC3B477E295AB15C389423EE289A104E29594C3B9374FE295A6E2959FE295A572E2889969C3876062C39CE295986E3B576E053F7B33E289A5C3BCE295AB49C692C3AECE9373E28C90E295992FE29590C3BA3E077CC2B2E29494CEB4C2ACC3A2E296932A2A2A2AE2969059C2BAC2A2C2B716545454547C7FCF80E295993F7816C3871FC2B7C3B2E295ABC3A7E2889AE296A0E29690E29482E29688E2959927CF84C39FE2959469E295A8274E05C2B2E289A14E633F360D7A6AE296906ACE98E288A9E2959A04E294805D0233642642C387604BE289A511E295A9E295A7C2B129E2959F1D52211A29C2B57FE2959F72CEB41FC3AF094FC396C2A3E29595CF80E29595C3B440E29594613FC3A6E29592C389CEA6E2959D15C2B2C2B7E28CA1CEA65FE29591E295A4C3917F74C3BAE289A45FE2949873C2A0E2889E2B5DC2B7E2948C5FC2A0CEB5E295901BC6927D69C3B27AE281BFC3B94FC2B55DC2B0E295A6E29490553FE289A4C3A8C3A8C3A8C3A8E29596135501E28C90C2BFC2BFC2BFC2B07EE2959F5AE2959DE2959FC2A0C3B7E2889E7C7AC2ACE29592E289A4E294B4E28CA023E29688C3ACC2B2E29480E2959DE296920F6F353A3DE29692CE93C2BCCEA6C3B917104226184DC387C2AA59E29690C3A9CF83E2959F42E2959A64C3B16FE2949C7232E294B4CEA66F31C2B55B577EC2AAC3BFC3ABC3AAE295A94F62661DC3B618121C13E294A4125B0613636B6EE2959D37E295953DC3AEE2889A7331C2AA5FC2A34AC692E296A0E29596E295AC4DC2A0CE98675FE2948C7B7DCF8375E295934B6E15151515C3B2C3875454545454E2959D7DC2B07F3E7E06C3871FC2B7E295A0E296934EC2A0C2BDE295A7C2A36E1EC396CEB4C396C3ABC2B1E28C90CF86E2959E7E6C1EE28CA0C3A2E29482C3A1CF8636082B24E294ACC3A063C3A542104D23350DE294A40DE294A42DE294A4C3B4E289A5E288A94244C2BC10C3B675E28CA1C3BA271E3142E295ABE294B4C3B3E295A63F63E29480E295970E14C3A6E295914C5C62C3B6274729C2A243E295A0C2B15679175A64383BE29597C3BCC2A5E295ACC2B2424213E2959466136BCE93C6927FC2BB7FCEB5C3AF37E289885FE2889AE294986FE295A8E294B452E28899C2B0CE984BC3B910E289A1675E7AE28C901E0415151515C3B2C3875454545454E2959D5DC2B0E295971F3E3DE2968869797F237DCEA94CC3BAE29680E29490E29592CEA6E2889953C3AC6D4F2D0778004BE29592C3BA09C3A070E294A430C3966CE29595E295A10709483F7637C3ACC3AA477F5B2CE295A9C2A1E281BFE296881660C3A92EE295967B29462011C2B7E28CA0E289A4E295A5C2A1153D2FE295A21344E29494C2AAC2A1E28899E289A4C3B4C3BFE295ACE29591CEB4E294AC436D73E295A1E2968CC3B75FC2B05916E29680C2BFC6926E45454545252015151515156F137ECEB5E288991D04E281BFE295AA67E2969058E295A3C2A0E289A54C575BC2B1E29688C2BAC2AA1FC2A5053D3B37C2A5C39C1A042BE295904FE2959CE295AB23040DE29480633A3D786B2730692034E295A6C3B7C2BDC3BC7CC3AE0848E29680C3B3E29592E295967159005BC3A11C24C3A9C3B9C6925257C3BF4F442961E282A7CEA302C3B4E29597C387CEB130E295900C4909C2B5E29594E28CA1E296A0CF86606D72E2948CC3A1C3B7E295903FE289A4E294A4E28899E29596C2ABE289A4E2968CE29490E296A0C2A5E2959C05E29494C6922DE295A9E2959FC2BAE295A9CEB4E296A0E294BC7A485454545454025251515151C2B1CEB1E289A1E295AB3EE294A41D2EE29596E2959130093C3737C2B2E29480E29598C2B06D73E29599E28C90E295A3C3ACE295A53464C39618E28CA0E295A9E2959F403E6630C692E2949C6C0EE29482294CC2AAE295A3C2B2E295A942C3BB26C2A332C3A06A34E2968CC2ACE29490E295A7050A600E01C3A1C389C3B2423CE289A504C2A1721B257BE2959A1D030C1112C3B1E2889EC3A0E2959F04C3B420E295A2C389203DE295A460C3AD73E295A1175B7B686BE296887E0EC3B7562664C3AB3A20C2BDC3B3C3B3C3B3C3B312C389C3A8C3A8C3A8C3A8C3A8E2889AC384E29680E2889AE29498CEB42BE294903F3509671AE295990F4CC3B14F6C053D370B3AE296800AC3A94645E2959154C2AA5CC3ACE2959D1EC3B429E295A066C396C3A44C0BE2889968C39C4C2A00C385C39670C2BFE289887C0CE2959EE289A4C3A609E2959C1FE2949CCEB4C2B234E29680427442C3A2523E4BE295A367E296A0C3B351E2959EC3ADC3AAC3BFC2A24C09536E110BC386E29596C3871B725713034F6C25E294ACC3B3E294B41AE281BFE294BCC692E2959D7A6AE288A9E289A42FE294BC577F6EC2A06607E289A10FC2A0E289A447E289A4C2B7E296A0E29597C2BBE295ABC3A2C3B3C3B3C3B3C3B3C3B312C389C3A8C3A8C3A8C3A8C3A807C3A0E28C90E28CA04823C2B2C2AB46C2B7E295A4C2A5C3A1E29482E2968841C3BF322FE296915CE295A71765C3B3E289887E34C3966C4C0BE28899CEA6C3AB07E295A9CEA3C3B3CEB4C3ABE294BC68E2959D6E4AE295A6C3A6E29597E29594476AE2959A380B64C3B2C389CEA351E2959B21E2898858E295A1C2BD11CEA972E296911431C3AB2027C3A6C3B2C38944264EC2A1C3ABC396C3BA330DE295AB0C7EE29691E289A474CEB4E295A0563AE289A4C3ADC3A7CE93E295A7C2A0E29684E295ABE2889916003F7C2EC2BBC2AB12C389C3A8C3A8C3A8C3A84A402A2A2A2A2A4E1EC2A0E2889AC3A72F03E289A107E2959BE289A15D00E296A0E2948CE2889A43E29595E295AA4EE295AC4C02E295A74CE294BC0B13C2B1C3BCC3AB69C2BDE295A121E295ACE2959DC3A4C3964BC3BFC39F65E294A4C2ABC39C623E6F5AE296912607C3B94747E28C905B12C3AB1451371EC2BBE29688CF847AC3B1651BE2959332C3B210796EC3BAE295A9E29490C2B7E295A53342E29690E281BFE29693552B1555E294BCC3A639C2B520C3B2C3BB2CCF8366C2A120E289884C42E295A8E295A0E2969245CEB1E295A4C3ABC2B143E2968841C3B1C3AB7DE289A447C2BAC3B7C2B53FE295AA4BE295ABE28CA11F7C1EC387C2A0CE93C2B129E29595E289A457C2A0E28CA17E3D482A2A2A2A2A01E28C90C2BFC2BFC2BFC2BF3851C3AEC386E295ACC2BB6E4DE295961BE2889EE2949CC3ACC2B1E294AC76E295A813E289A4C3A11DE2968449C3AB216C507DC2AC796F120FE29590720AC3BB2913C3A87EC3A955C692C2B1E295A4C2A1C385E295ABC3AC78513FE2959D573D32E295A12879C3A5C391E295AB6BC2A3C3B3E2969053C3A1E282A7E29691CEB179191BE28C90220EE295A821E28988E2889E0BC3A613E29684C3ABE295A9E2959766C3A9E2959E44C2A208E289A4604FC692E289A5E29598CF8627E2889AE2959E471FC39C2CE296901FC2B237E296A0E2889A6FCEB5E2959CE29594724B1515151515C3B2C3875454545454C2A3247ACF83C3BAE2959FC3A4C2B55CC3893F2778C2AB352E35C391CEB54FC384C3B97A5F074CC39F16C3A8E2959F437872E289A12EC2A2E2949CC3B4C3B9C3B7C2BD0EE288A932E28899E289A1C386CF86C39F5D24C3B2C3B72AE288A9E29592C3ACE296932DE29594E2949472E2959EC3AAC3A56DE28CA0E29480275303255FE295A26521C3B13C214BE294B4C3A61B66C38479E295A94444603ECEA3E294A47B001AC3ADE295A3C3ADC3A0CE98C3AB59E289A1E296807676C3B3C2A2E29482E29480E295A6E294943F03C2B0C2BD5FE2968803CEB1E28988C2A33FC385E29597E289A47FE29490C3B75A3D582A2A2A2A2A01E28C90C2BFC2BFC2BFC2BF3869C3BFC3A7E295A6E294B4E295A5471D3DC3AF3437C3ABE294AC3D72E28CA13E281223E289A561C3967CE295A825485D26093D415874C2B0E296A0025F2C48C3AFC384E295AA75E29480184931C39FE282A7C3B20CE288A95BC2BBE29598C3B4C3ABCF83E29590E295A0300B5830E295A00CC396C389C3AC020CC3A7CE9859C2B24C2C6132C386795141C3A4C2B7E295A22DC3BBC3B34A23C3BF07E295A4E295A3C2AAE289A4CEA32FE2889EE295951117CE98C2BDC2A0C3B7257BE28899C6925F4FC2BB7CC2B1560E2AE295A0C3A4C2BFE2959EC391575454545402525151515171C3B3C2B06FC2AB5DE296924B5BE2968CE28C90E2959E16E295AB5ACE981913E295ABC3A164E281BF01C2AB3CC3872A4FE295A9E29590C3A803E29693E281BFE295990BC39FCEA622521AE2948CC2ABE2959DC3AFC2B0E296A0C3A9E294A4E294903FC389C3852E4662E295A0C2ACC3A7C385E2959447E295A7104645E29490E2959A0424C3AE08E2959AC3BFC3AACEA3C3BFC3854274C3A575CEA33E2BE295A3654FC3AA7A6925131C1332C3A7203131C3BF06E295AB3CCEA9E295A022C2B00777132F5CC2A537E296803DE2968CE289A5E294982FE29690E2948C7F05CEB1C2A07AE28CA1E295927A70545454545402525151515171E295A5E2959572E296A0E2959EE2959D154F04CE983D53E29599CF83C3AB083923E295A8495AC3ACCEB4C3A1C692C387C3A02D3D1E311622405635E2959148E2948C5F10E289881774C3AF055D17C3AB29C3A6C3A8CF8463E294BC5FE29692E295946CC39FC38470C3B33B5D4A58E2889EE29594482621E294B4C3AE100CCEB46702E2889A78555AC3861109E288A9C3B2C3B2253F21E2959AE2968C1C5AC3ADC2A546383A7533CEA9E29596C2A56A6CE295ABE29692172113C389C3A8C3A8C3A8C3A8C3A84A402A2A2A2A2A4E007FE289A4E295A33300E281BFC39FE295A7CF83CEA3E289A449602BC3AAC2BA24E282A76EE294BCCE98C3A15CE2949827E295AB60E289884EC3B6E295ACC2AC65C3ABC692E29688C2A252C3B77920E295A67EC384C3BF485DC3B1E29688E29688C2BA5B74745D47C3B912E28C90271EE2959B3A3EE295966FE2959C5AC692C3A9352C2BC3A6004BC3AB64C3A5252305E2949C3D13C3A6E296923F7DE29498C3A6C391C39F67E2969046E28899C3B92FE29590CEA6C3AD6FE294BC32CEA64CE29482C396CE98C2B23BE294B4E29690E29480E28CA12B1FE296803AE289A4E295A1E295A7E29684E29684E295A301E2968074C3877FE288A9E295A52500E296A0C3B9C386C3BF5E5151515151094845454545E294BCE29692CEB12BE295A94363C39C0BE29690C3A2E28CA0C3B6E294806CE296915968E294BC6641CEA9C3AF7B1FC3A6C38558C3BF09094F4ECEA93AE295912EE2969318291F3EE289A561E29691E295A453C39F6BE289886BE2959912594571277922C391C2BCC3A96412C386150EE28988E2959D6F112FE2889ACEA903E2959F11C3A07C78261F41E295A84A44412BE294ACE295A2CE987C0C3CC3B412E295A7E2959C7076C2A05B1F38E28CA1E295A9E29490C2B0E29688E29680C39FC2A17AC2BC545454545402525151515171C385C2B0E2949CC6927B73CF8377C3AD6D13C3850257C3BCE295A22FC2B0C3B417E282A7C3A6633D30C3A7E295AAC385E295954D69653CC2AB03293AC3AF2E13C38531E2889970E28988E294B4587E28211AC385E294AC5A7FE294A4C2BC23C2A0C2A2C3A6C3A7E29480C2B1CEB1E294981752E2948CC2BC06C38654E2959AC384E2959A13E295A10C30E28988C2BC7EE29595E2959808C386E296845BE294B4E29480E295A85610095DE296904BCE98E29498E294822DE29680C39C07E2889A2E640252C3B2C385C3A8C3A8C3A8C3A84A402A2A2A2A2A4E100E3BC3A9C3A7C387C3AF0EC2A1C3B956C2BDC3ADCF86E295A9E2889A5471C3B25CE294B4E296846A652E1472E294B4E29680E2889A35165DC3B1C3AF111F2B1F273A492A13C3B2C3B61CE28988C3A4E29599C2BD1A1AC2B0C389C2B7695AC3BAE28C905A39C389E29691E294A466E29594E295A64F4826660C137DC2BA373A3DE295971DE2889E35C3ADE2968000E296A0753D3A2A2A2A2ACEB53FC2BCE2959B0515151515E288A95222C2B141481F3CE2969073E296A0C2B26BC3AD71CF84C2BCCEB1C2A3C3BA53E2959415125EC3AAC3A7137D4942C3B3434CE282A76FE295A4C3AB2911637FE295A6C2AC471773E2959E471AE28CA178E28CA12460C2BC64C2BCC3B36FC386E2948CC3AE75E28CA164C2BCC387E28CA0E29688E295AC26E28988CF83E2959ACEB17EC3B1C2BBC2A1E2968CE294ACE2959AC2A0E295A4186AC3A02626C2B541E295A0C3AC6616E28CA0C2B0E2959DE295A407C2B50DC3857D60767156C385C2ACC3A8C3A8C3A8C3A8E2889AC385C2ACC38754545454E2959DC2BD59E2959AE295A417C2B2C3B44FE295A7C39CC3A7C2BA762EC39F171CC2A572C3BF24E29691542C19E294BCE2949851E29598100DC3A40477C3A92752E295A9E2959E6E07E29591CEA3E2948014C2B1CEA3E295A670E294B4C3BC5CE29684C2BAC3B95AE2959A4C4A2052262AE294BCE29494C3B3425CC2BC1F7FCF8323C692C3AB51E295A515E294B40D3C012626C3A5E2959003E2959945CE934A727FE29680C3855FE2959DE28899C3B2C38577E289A4C2BBE296A0CF86176FE2968CC2BF075645454545252015151515E296807748E29490CEB40CCEB510E296A0E296A01B1B1FE295AB17C385E29596E2959BC2B0E2948C6E681FE2948C3EC3B4C2A373E29494C3BB3B21E295A31305CEA9C3ABC3A7C3AFCEA6C396686830C692CF847842231B43E296847D5046E2959ECEA363E2959CE28CA1CEA95E5BE29692E29593C6923F565452E289A54C3EE29684C3A5E294B45A39064448C384E28CA10A4CC39F68E294B4C3A8693D4112E282A77026425B06E29692E295A4C396E2959CCEA3E288A939E29599E289A5E2969059CEB125CEB106E294947FE281BFCEA3360EE281BFC3855FC2A17CC3B1C3B3C3B3C3B3CE9324515BE296912A2A2A2AE29690C3AD58E295A217C2A50CE296A0E295A9C2BDC3B1C2B23DE295A252CEA35472C2B5E296904FC385725FE295A25CC2A1E29684C3BB4463794BE28899E296A043E29688C2BD1EE295A03BCF80C3BAC2B24B6578E29691C2B7C2B1E29597E294BC1F326EE294B40AC3AAC3A17C6B040D626262C2BA11C2BAC3A926E289A4C3A127E295A21B3D73E29591E295924E3DE289A52A2A2A2ACEB52FC2AC0252515151C2B136CF80E295961EE295A63FC692E281BFE2948CE295A720C2B2E295A0707FC2B0E28899C391E289A5C39FE288A9C3A0CEB5C39FC2A126360AC3AD6DC39CE295A8340DC3AC1A0F04C2A3C3BBE29480444643CEB4E294B41B0B5853C3AE18E295A4C2A155E2959F56E29482E28988E295926F7767E29490E289A5E2968CCEB5E2959C7B7BCE9851C2A3C2A1E2959813C3853CE2959916432323E29591135D590119793028C39FCF84CF80C387413DE29691776A3CC3A0E295A6E294B4E29592C2A02BCF8410C3BB45CEA3432E21E295930B34451141E294BCC3AE2EC3BF4824C3A218E2959DC2A5185767E2959EC3B4E2889AC2AB33C2B2E29593E296A046553E2A2A2A2A2A01E28C90C2BFC2BFC2BFC2B05E446F59E295952DE295A2C2A2167106CE982C701E711E382FCF84E2959DC2A2E295ACE295A8E295AAC384C2A2E295A208E295A0086AE2968CC2BC41C3862C24C3A9C3B7C2B170E289A4CE93C396E295A8E2889E463BE28988E295A5C2A2E2968CCF80E295AB6FC3B1535D4A74CEB558E29498E295A229676A18E295A6C3B7C2BD58E2959ECEB1C3A5C386E2959F212FC3B27EC2B1C3A5E2959D1D186FE2959371E281BF40CEB457261EC3966C2C1F0BE2889909E29595205A3E014E10C2A1E295994CE29480C391E28C90E29595E2959170E295ACE2949CE295A2CEB1C3A5E295AB23E29482C3B3C3B3C3B3C3B312C389C3A8C3A8C3A8C3A8E288A909E281BF0F1FE2959045E289A57FE29693750DE295AC3EC3A7E296A0C385C6922BC3B2E289A4E295A700E289A10FC387C385C2B2C3B7C2A5693BE296924968C3BFC39CCE9874C3862EE2959474E295A3311E52E296914B04E2959748E295A805C3B1C3AF32C2A541E2948C21680BE29599E295A04D13C3960226E29594CEA334E295A2C3A10937C2A2E28C90C391C2A1E295A337E294823DE29680E2959BE2959BCEB4E294821845E29480C3AB09C3B90973E29598C3A6C3AFE28988C2A324CEB54BC3B3C39F09C391C2A3442EE29490E295991CC2BDE2889A47E295980E10C3893E27646D6F44C2B1E282A7C385E296A0E2968CE29596E294A4E288993217C3A464E295A826E294ACE294803837352EE288A9E294B4E28899CF841FCE98E295A23FE2889A6D6E702CC3AF7F4545454545252015151515E288A95048E295962F6DE295A7C2A5C3AD013D0A3C2978E2948CC391E2959F08E2959122E29482C3A71574C396E2959E7668E29598106CC3A934416A3105E295A01AE295A04C2623C3B6C3A65012E294A4C3BBC3BF36E295A4C3A97BE29597C3AF26C2A10714C2A2CEA6E295A82102C3A1CEA3C3BF3911E295A479C2B15214237A6EE294B4022B657E4E195F4EC6927A3BC39FCEA3E28C90566EE295A67DCE98E29680E296907E20C3BB462404E29693213DC3B6C3A4E28CA0E2959EC2A506E295ABE2959814C2B5E294B4E295ACE288A92BC2A5C2A0E2959A3CC2A5C3965C65E288A957E2959BE29594C3B31EC2A115151515C3B2C38754545454E2959D6BC2B1CE9817E295A240E289A143E294907A13C387C2A0C3B66F00E29680CEB1CF8057CEB16F3E726A7A5669E2959B6DE2959B33C2A5C3A447436B1FE29691C3A1E289882BE289A15E4CC38521E29597C3AECE9802E295A54C1AC3B9E296A05AE29690C2B7C3A64F3EC2B737CF83E28988C3BCE281BF084CE29595442C136963C39F44C2B5E295A8C39FC3BF17CEB55208C3AAC3B97874E29596E29684E282A7E295924FC3BF1AC2AA54CE9801E29599C3893529E29480E295A6E296A0C3B135E294ACC39FC2BDE288A94E2121E294983712C3874678E295A91921C39C18E295A0C3AECF865BE295ACC3A00B41CF843F3C09C2BBC2A00AE2969212C389C3A8C3A8C3A8C3A84A402A2A2A2AE29690E2968CE295AA247CE281BFC3BCC3961A737FC3B369CF86C3A26DE295A6E289A4C3ADE29692E28988C3A0604FC2BFE295A42535E2889E60C39C23C2A2225A24E295A9CEA62AC3AAC387C39151E29592C2A1E295A4E288A9C3966860C3A92E414C78CF84747B1D5DC3B948E282A713E2959013E29498CF84C3ADC3B36EC3BFC3A123E295965FE28CA14A4D4802E295A6C2BD46206355C2B7707F5BC3AAE2959AC2B0E2959C4CE295AC40C39C18513318E28C901FCF83C2A133E2969302C3860A2109C3967CE295A819C3ADC3ABC2A3E29680E2959E2E21E2959B09E29692E29591E295A82B2A2A2A2A01E28C90C2BFC2BFC2BF78E28988C39F332F6CC3BCE2949CE2959F7FCF86C2B570E296805FE28899E29691E2949847C2AAC3B4E2959439E29482C2A50B213C39C3B43E320D7C3404E2959C60C2AAC2BA64C2A3E295A7E2959D62CEA3E295A2CEA6E29688C3ADC3A5E294B44EC2ABC3BC68E28CA0C3B2764F3EE2959E2424C2AAC2A3E29690E295AB39E2959B48784CE294983B2129C3B3C2A3E288A9514848CF84E294ACC2A3E294B4C3AAC384C3B4C391C3A652C39F6B54E2889E7B4F521E30C2B158E295ACE294ACE295A50A19CE9827731D5040C2B7E29596E2959FC3B95E1013C3BFC3AF20C2BA11E294A4C3A9C3AB111ACE98E281BF4CE29591C3A4594D45C2BBC2BFC2BFC2BFC2BF04C3B1C3B3C3B3C3B3CE935DC3AEE295A11A7D2AE295A2E295ACE2959AE282A739C2A1E289A1E29594C396CE98C3BA3B41E295A7E295A241E295ABC2BCE295A42913E289A4C3ADC2ACC384C391CE93C3B9C2BB15C2B7E2959B1CE28988C3B6460AE2959A78390166C391252BC3AD084D74C3A9CF84562CC3B948C3AACEA6C3B34CC2BFE294BC1C6272E295A0400924C3A764E2959A3CC2BD22C391C389E295A7E2959B0B2DC2BDE281BFE2959605C2A2060167E29593E29598E288A9C3BB4B6514C2BB1705E294800773E29591E28C902820E295A30DC3AF201A43CF8427E29498E289A13FC2A1076D45454545252015151515E288A92AE281BFCEA94776E29494C2A5C385C2B2E2948CE29693C3B4CF8417E282A7C692E294A4536B2EE29596E295A5E29599C2BAC3A25EE295AA36C2B2C384C396C2B17C6B3C1EE294A46C150272E295A1C3AE670BC3A7C3A8CE93C3BCC389C3A830CE9365C2AAC2BC4AE295A33D0460E28CA0E29690C3AA4C5ECEA339E281BF4209C39C044D593C29C3B40FE2959A6AC387702C3966E295A9C2A55CC3A2E29692E2968831E28988C3AD2D4BE282A7C6926B6BCEA3CF80C3BCCF84C3A968E28C900C0DC3BBC3B935C3A2C2A0E295AA2E23E295AB520121E29490C69256C3AA4879E288A9E29590E29480CE98C3AB7456E295A8E2959323E29595C3B3C3B3C3B3C3B312C389C3A8C3A8C3A8C3A87717C3A8E295A5E295A8CF806F3F4713C3B1E28988E295A0C391C385E295A7E295907E7C4BC2B7E289A1CE98465766E2959E79C3ADC3B32CE28CA0CF86506B6AE2959EE29595E29596C3AA423EE2959E7D467DC3ADE2968CE295A7E2959A456BE29482721D39E294A4E29690C2A0C39F17E295A3C2B22A2FCEA3C3914017E2959BE295A5C3A9E295A10CE28988E289A44278C3BBE295A325C2AB074A376EC2A04633E289A5CEB1C2BBE288A955793F5554C389410161CE980F29E28C90CE9816E295A85623CF86C387E295ABE289A46345454545252015151515E288A90EE281BFCEA9E289A43B48E289A1E294AC6F5C1FCEB5E2889AE2959F1FE2948CC39634C3BBE2969063CE93C3A766E295A5C2BAC2AAE2959EE288A96CC3AC6BC3ACC3BB53C391C386C3B4473931E2959A0B52210EC391C692082CC385E29480456BE28988E295A60FC3847D1A2AC2B1E295A01A3C397B0B67E29596137B29E295A801414218C3A604C391E294BCE295A94A2AC2B760CEA61ECF83C3A9C2BFE295AA41E296930F5EE28CA0E295A3C3A4C3B6E2959F29E29597C2A040312265CEB5070948C2A056E28CA049E288A9CEA9E2949C167B1252C2BC32126662E2948CE294941C14CEA9C3A65C51713CC3B1E294BC5FE295A07F2BE2948CC6925CE2959C44E29691C2B0C3AFE28899E29597E29595767F452520151515151527C3A5E2959212C2B01F7E687B6EE294B4C6926FE295A4C2BA26E295A5E2949031337D6027CEA6E2889EE29480E29480C3B3782EC3A562C3BFC39117433E4AE281BFCEB449465A2317C3A0C3AE2C37391A51C2BDE295A4CEB5382CE29591E294804BE29596122FCEB5C3A8371762C39FC3BC366423E295A227C3AAC3A0602865CEB4E2959A1038C3BF3CE29596632527E29599152319C3B11200C2B0E294945BC2BBC384E289A5C3B7C2BBE296A063E295AA372BE29490652FC3AA0632525AE296926430316962E295A6E295AAC389C3A8C3A8C3A8635E0BE295AAE281BFE2959CC2BCE295A3E282A715C3B2C38754545454C2A3387EE28CA123E2968820C2B1E296925F5F2A1FE29490E281BF035B6D1378E29490493F1AE29480C38506CE981341E295A0421952E295A1E2959A45E29490CF84C3ABE295A3C386C3B2C3873CE29684E289A4702B1FC3A60FC3BB5D5625E295A47B550929C3AE64E29595C692C39132123BCF84C3ACE2959CE29480776E465EE2969013E295960828C387E295A6E2959AE294AC4BC69225C386E2959450E289A1C2BCC3A40CCEA94602595645E295A0E29482C3A63DE295A3C3B44A1E48E296907C71C3AEC3B642437A3B29C3ABC3854C29CF8375787E7F545AE295A7340A561C6E5905E29692E289A10ECE93531515E289881BC3A72917E2959F2620CF83E28899E295947F0675C3B44919C3A6E295A455CF83C3BAC3B312C389C3A8C3A8C3A8C3A8E2889A57E289A5C2AB54C2A1C2A0C2B0E2949C5BE29688E294B4E28CA0C3A660C2B7E295A4207E7FC3893E60E2959EE295A011E2889AE282A727CF804A790C6EC396E29691C2A2075639C3A412C3BF67CEA9333A34E29591C3A17F58C3B6C2B7E295912124C3BAC3AFE295ACE295A6E2889AE295AC376E46E2959B7D33E289A55A67C2BF752646E282A7C3A9C3A0C3A6C3B6C2A511CEB53EC2B040E29693276454C2A33B58E295A95D625110E2959A0464202A7AC3A7C2B041E294A4241FE2948CE28CA0E294B4C3B607E2959EC3BBC3963E4A25086FE294A432C39FE29596C3B3CE93E2889AC2B5E288A9E295ABE2959441017844E29691CEB4E289A1E2968C135F7D45252015151515E29680E288A9C2B0E28CA1CF847700C2B0CEA6E2959AE289A4C2B10FC692E296800E13E28CA0C3AEE29480E288A934C2B03113E295A723E2948C3259E295ABE289883D0FE295A36A72252CE2898871C389796E6D0AC3A074587944E2959C59E2959DE281BF576B65435F356B54C387C3B4CEB1E29590C3A0E289A4C2A1C2A2C3AB6FE296804C5C5F38C2A53B534F184E1244C3A4C3B974412FC2BDE294A44236E29598C2BA13E294AC604E37C3A7CEB14E4CE282A7E29688E29596E29684C2B15E0561E28C907CE29684E28988E29593C2BCE28CA10D68432535C3B7CE93E295A6C3B97E16566353002C4F16CEB5C3A9E295A4E28CA16EC2A3C3A8C3A877245958E281BFE295A37C78E295967FCEA944E2959367C3A272C2B1E29680C3B36E6F32E289A1C3B7CEA30DE295ACC3B1C2A0C2BD327CE294BCCEA3C3ACCF80C3B4E281BF65C3B90BE295A140C2BDE281BFE2959CC3A62FE281BF31CEB171CEB15F02C2BB02C3AFC2B7E28C905554025251515171C6926A61C3877FE28CA0E281BFC3B75603E288A9C3B2C2B1CF8041E281BF3EC3A20FC3B40750E2969228E29480C3A2C3B60D07C2B2697DCEA6E295A262C3B664514CE29690C3ADC3A405C3B71EC3A6310939E29691137DE2948CE282A7C3ABCEA3707D3FC2B1C2A55BE295AC576F245EE29498771A13C2BA55C3BFC3AB473A6F4866C3BF0C2C40E295A92A48C6927AC3842D3D203664C3A0383165E288A9484AC3AB08E2959A6C6443E295A4E29688E281BF21C2B0C39FE295A0470C64C38411C3ACCEB4E28C9057107B41E29684E295A93CE29692C3B3CE93E2889A0D2900C385C3B6E295A60E0978E2959AC39FC39CE289A109C2BF2BE296800B010F01E295ABC38750CEB57B08CF841A797C75145C00C2AAE29494E2968015E281BF5A252015C3B2C38754545454C2A3107ECF80E295A333007CCEA3E294826FC2BCE296843F15E295AB247EE2959AE29480C2BA4C3C0BC39C3BC3893CE29597231C49E295A9E288991C2AC386C3A2C3ACE281BF1AC3BACEB1C3A832C2B16A492EE29598C385C3B71DE295A0CF84E295A62A5BC2B2E295AAC2ACE295A5E2959F75C3BAC3A2E288A9E2889E3AE29680E2948C4DE2959DE29591E288A9E2889E2538E29599406BE2969120CF83C2A23B72C3BAC3B221CF83562C7767C39F23E295A160CEA3C2B23020792637313951E28899E296A0E296900B32C2ABE2889AE288A9E2889A54C2BC4DC3A8E2959FE295AAE2889AE294B4E29595E2959C4A0778C3ABE295935AE29498C3B623176FC3BFE281BFE295914357C385E289A1C3A813CF84E2959AC3AF3FC3B9E2949057C3B47B532E7ACF83E2949CC2B24F4317265EC38463256B704DE295A9C3B96EC3BF4AC2A5150B26E2949CC69216E29598CEB14C24E28CA1E2959EE29692CEA6602CC3B7C2BB004FC3896D6051CEA6C2ACE29480CF80C3A04CC3AE09E2959A15C3ADE2959F4B1D19C3BC2BE2949405E2959E7FC3A232E282A72E24C391C3B3C3B312C389C3A8C3A8C3A8C3A813292658E2959CE2959AE296A0C39667E295A2C3A24D754EC2B0E29482123F61CE9363123307E29591E295A129E295A3E295A4C3B925C3A9173F457F1D7EE29595E28899CEB1C2A21E4CCF845648C3AA0DE28899C3A2C2B2C3A243C391C3AC03E295971DE2959DE294A4C3B9C2B0E289A5E29590E2948077E28988724BE295AB761073C3A260C3A034CEB1E2889EC2AA1C74182CCEA3C3BBC2BCE295AAC3A64A32C2B7E295A8E29693CEA35EE2948CC2AB545AE295A2E289A52D0031E28CA1E2889AC386C3A20A6DE29598C3A8E28CA1C3A1E295A4C3852C16E295A6E2959DC38675C2A0E295A038307EE29595C2BA6FE294B41231E2959AE2968032783DE295922BE295A215E28988CEB4C2BBE2959E491272C2BA217B2DC2BCE295A0E2959A7BE29480C39FC2AC72E29690682C5F57232B165759E2959ECEB13CC3AEE295954A512CC3BBC3B6E294B4CF84E29494E2959368C3A4E294800CE295AAE295AC5F0F1CE2959D68C3BACEA9E288A92F04C3A5E294987A2869E28899E295A12AC3AB15C3B2C38754545454C2A3243EC2B7E295A355CF83C3A2E295A3E295ACE29591E281BF074CC2B7E294B420E282A7072E2772E295A65557C3A8CEB1506AC39F0843E29692C2BCC3AD08C3B7CF83E2889EE295AB15CF8363E28C9078E28CA024C3B10F39E295A0C3A8E2959AE29693C39108C3A75BE295947969E29680E28899E29593C2ABE289A4C2A53DCF8446C3A4CF8600E289A4202646263138C2A527CEA3292B19C3ACC39F0A24C3A0423CCE93403EC3A92B5733CF83C3BBE295A92DC3B7E2968C5EE28C904F48E295A72AC3AA7B2EE29693E29593C2BA60C2A5E295AA74C2BC0DE295A9C3A806CF8363E28C90E2968430C39C72351E513C32E29592E29597CF80C3B6CE98E2949C20C3B3C3ABE295AB4CE2959D22E28988E2959C7AC3A47F7F232DE296A05CC3960CE28CA1C2BA4E6CC2A56A7F3AC2BB3BC2B25929C2AC1DE2959BE294A4492D4EE2959776C389E295A6C391E2959EC3AD2D5F1A575EC2AA55C692C391E29498E2889935CEB1E29692C2BC53C38640E295ABE2959AC3A8452BCEA6E289A51719035D55C3B764E28CA004CEA32AE295ACE28899C39FE295A7E2959E5274C3A0C3A6E295974C1BE295913C57E2959B49C3BA4973CF831BC3B9E295AB202FE295AB47E29598316EC384C2BC792015C3B2C38754545454C2A32C5C5C75C2B17B1AC2B13B5A713602E2959672C3ADCEB55EE2948CC2BC722B563EC3BC27E29693017C6D1DC3BA6958E294ACE295A1C39CC2BC672C65112B35E2949438E296A063C3A6C2A357E28988C2A52FE2968048E2959DE29595E288A9740EE2948200E289A40053E295A6C3B9310D31C3A61371C39C14CE9814CEA668C389090B39C389E29691E289A4C391172400515EE2959AC3A706E289A511E295A925E295AB58C3BB4B643F0852E29498E2959607E28C90C3A03822651234221F2B01E289A5CF833FE2949CE288A9C3BBC396CEB1CEB1E295A3C3BC14E29480E295A641E296A06232E29680C2A14774E294BCC2B2C3A25A72E29688527FC3AE3ECE937045E295A32ECEB45BC2A502E289A17059C2AB3FC2A31F415CE294B409CF834FE2959A1CE295AAE289A565E295A6E295921CE295AAC3B7CF8365C3AFE296A02B50C3B60DC3BBE295A6C3ACE2959BE282A7E295A66644C2A15CC2A058271E77C2B00AC2AB6414C3B2CF842746CF86C3AECEB5E288A9C389617915C3B2C38754545454E2959DE29688E289A1E295A6E295A7E282A746C3AA4F7E3E2B20E29490E281BFE296A0536AC2AA7EE2948CC3AEE28988213E29C2B0C389E2949C2C3A7429C6927D7341CEB5E29498C2AAC3ADE2959B085EE28CA12B78E28C9038C3BBC3A8074306C3AAE28988E2889E64CF864C1F46E288991F7B095E5F38E29680E2969075E2959BE295A1CF84E2959D19C2A57910E289A420C2AAC3BB2FC3ABC3B7637F0322E2959133C2B148C3B9220B0764E294A4E29593C3A1C389E289A11449E295A473E29597C3B2CF8416E29693E296920A12060524E2959667E294BCE2948032C386E295A86C68731A2EC389C38414C3A6E295975642E295A9E289A47CE2949CE289A456333D56E289A43DC3A56D49205BC384E296804D2E2FE288A96DE295A9E29480702FC3AA571AE288994BC3AB5415C38977CEB4C3A0C387C2B2C692E2959E25C2BCC2B233E28988E294A41E1B291F29E296A00529E294BC7628E295A0536AE2968CE2959C197D5BC3AF7D4BC2A16BE28C9064E2959AE295A674280D0A65CF84E295A8E295A8C2B128E289A1E295AA68E282A7E2968C35C3ABE2959FE29494E296885CE29691C2BD2B7F0EC2AB091E1BC3B2C3B7C385CE93C2A35DE289885A0C09375AE296A03519E295A7C3863EC2BF580C4B795153E295A14EE295A5E2959F7F6B36E2959FC3ACC384E29498C3A4C3BBC2A017634965CE93700AE295AA05E2969149553E2A2A01E28C90C2BFC2BFC2BFE295952B1C287FCF84C3AFE29482097DC3B135E2889AE294B4463CC3A6607B37CF83C3AB57E29692C3B1C3A0273132C3B6CF84C3BBE28C90117728C2BAE289A4E2959BC2A5E29591E294A46AE28899C39C1744E295A61AE294ACC3A740E2959C7EC3B2E295AC1B0BC2B0E289A5C2A14C3E6E39E294A4C3BBE29594E2959FE295A0C3B6C3ABC3A8C3BBE2889A2FCF83E295A2C2ACE295A3473AE288A9E295AA4BC3A6141A2C04020D1EE295973CC39FE295A921CE9303C2B1CEA652E2959BE28CA06ACEA94DCE982AE29599E296921CC391C2BCCEB4082761E295A3E295AAE29490E295A7C3B93B55724B48C2BDE29480E2949C4A25C3B11CE289A1C3AA59261FC2B250CF80E2959B4F4B256F2526C2BA4B7EE295A6C2A55726C3AB5752E28CA0C2B27AC3B1E294904B0908C2A378CEA9C3A46042C3B75AE28CA0E295955254C3AF7E0A54C2BB583C526EE2949C72C3AA47C3A86211C3B9C3B914E295AA02E295A246CEB4E296886255C3AD58572EC2B71DE294985A7FC2A1E2948CC2B077491BE295A5C3A93605CE9370C3A739E29498E29591E2889AE295A7203FE2889AC2A3CEB1C396E29598C2B2E288995DE295A3C2ABC2BDC2B213350FC3B1C3B312C389C3A8C3A8C3A8C3A8E29597E294B4273FC2A0C2B5E2948CE29498560FE295A3C2B0C3A4CF801F11E2959108E29691E288A9E295ACE294ACC2B1CEA3CEB1CF8372C3A1C3B2C3ABE28899E295A6743C563C1EC2B224C2A2E296915E30C2BC5E631D14C3B6E29690E294B4E29690E295A3E289A45672E2959BE29482E288A97C730F5ECF86E29693197C56E2948CC2ABE2948C210B4303E2889910E295A8E2959AC3962BE295A411E295A3C39622E295A402291852C3A262C3A2E29684C2B1E295AA11E295A665E29688C2AB545BC3ADE295A701297E141B676BC3B17E4C4EE295A953E29597E295A056C2ABC2BA6AC3A2376478E295A1CEB4E295A9E2959AC39CE295AB6345E2889918E295965AC3B24CC3B4E29690C2A3C692C3ACE289A125E2948051E294ACE295A0E289A5242FCF8361E2959E06C3910F2E65C3A9C3A97B1ECEA3CF83C2BB29C2B1E295A9743FE2959D7EE289A4C2BDE2969212C389074518167F3AE29596E2889A4DE296A0E2889EC3ABC2BC6F63C3B333E296800000200049444154E2959D1EC3857F52E282A7C2BC2D3C534AE294A4E282A7C3ACE29688CF835BC391E29684E295A028C3BBE295A945E2959BE29691E296802A2B1CE295A44543E2889E1E031E2DE295AB02043CC2B5E295A5C3BA5A12C389C2ABE2959854C3850A3D3AE2948CC2A547C3BC33CEB4E28CA1E2959DE2959327E29596C2A1E2889AC391462462E28CA1E29597E295A87FCF867BC2BBE294BCC2BFE2949869C3A0641C58E2949C463EE29692C2B7CEA3E2949CE295ABE29482C2B7E295953653C3AC0D4B7A2650C3B9CEA33AC3AC74C3A21A4858510948454545E294BCE2959CCF80C2A0E2959CC3B77C70C2A0E289A563C3893E19C2A51FCEA6E29480746CE295984ECF80336E5FE29591C3AE48C3A7E2959E1EC3850DCF806357C2AB5AE29591C3A5C2BDE281BF61E2949842E294B4C2A2C2A5E289A45B7BE295AC37C3B7C2A337637ECE9356033363E28C907CC2B06A4BE295A57079E29592E29693E294AC71232DC3AAE295A44861C3A5E295A068E2968848E29494714FC3B1C3B65BE29692E2959162C3B30F6463E29591C3B2E29494E294ACE2959B193D7B5AE295A9CEB44939C2A330C2BD253950CEA3CEA3E29598C389C3B37A0C29E2889E650217E295A644732B44E2959FE295A030E295A6C2B5C3B94CC3A52C7B6B3CCF83E294803412C3ACCEA65ACF80E28CA12EC2B16D37E2959CE281BFC3AB7FC3B7E2959EE28CA17A643F58E29684E2959FE294986933CEB1C3AD22281AE294984FC2B130C3A203C3AA586AC3AD2BCEB10F2FE2959FE295A971C3A0C2BC64283FE295ABE29596C3A4E295A246E29590C3A65BC3A9C2A1C3A6E295AB22C2A2E294ACE295A466E294BC42C2BDE29680E29597E2949C58E294B4211A05475F40E28988E28CA0E2959C3A4C4FE295A3C2A2E28CA1C3BB3F6709E29692C385CEA608751A6F45252015151515E2959FE2959E375EE295AA41E29494E295925FE295A6E28CA1CE98C2BA3F747612E2889EE295961EC38678C385C3B1E28988395CCEB53C5734E295A311092567E29592483EC3AEE29598E29590E295A2E295A4381A77CEB42ACF806FC3B9C396C2B543E295A6E29593C2B0E295AB7E52E29593E294ACC2A5C2A209E2959BE2948270E2959BE2959BCF84E2959DE2959DC3874E30E296924C3EC2AAC2AAE29592E29480E288A9350262E295A9C3A462C2B5C3ABC2A1E294A4202663E2968027E2959505C2BC69311C4FC3964225773AC2A350C2AA62C3A0C3860B1212E294807E3BE2949CE295A9E295A6CEB43572E29691C3AD19462A2D63E295A2E295A36CE2948CC3B1C3AEC3AE7EE288A9E29592C3A6C3AD14E289A5C2BC7CC2BFE28988C3ADC3B6E294BC6DC3A07C14E28CA123C3B6C389452B0D6BC39657C3B21C7830E295A4E295A1CE93E29688C2A5C2B1354F7AE295A11ECE98472C306FC2B25426E295A25B7FE296A0E29690E2959AE2959FE2959AC2BDC3A6E29591C69231E296841B29C3857CE289A4C3B65AE295A337E295A6C3A543E2968433136F5D3EE295983072E295A1C386E2948C650EC3AE3A444BCEA371E294B435E28988E282A720E289A1381A02E28CA07AC2BB450B3C26742D7FE288995C65E295A353C389E29490C3B4C2BDE29593E2889E55E294BCCE93C38706CEB10745C3A0C386CEA6E2948274696873E295A32EE2959E0FC38508C3BCE294A4E295A2E29684CF86C3B2C385E295923DE29591E2968C72E295913D7D5879E281BFE295ACE295A9E2959F063AE29598CE936CE2959733E2959C75C2B256E295A1C6925754025251515171C2BB50E294827B06C2B15C63C3B721C3B4C2A5CEB4C3B4E295AC3B2F13C3BA7AE288A9E2959FCEA6E289A5C2BAC3854EE2968C71191DC384C3B956C2AA0DC3ACE29688E28899392315C3BAC2BB476E44C2B0C2B5E2959BE289A4C2A17DCF84C3B22E07576C5B6EE2959C6A0AC2BB1913C3857563765F2234E29494292262E294B41B7141C3B650E295996452C3890AC3B2C3A85D19274C2121CEA30959262C657BC3A0C2A3C391E294B4E29597C3AEE288997273424AE29595E2949464C3910F46E295966DE294BCE295914DE29594C2A2C2BB4FE28988CEA3C3BAE289887C6844E29693E295A97AC3A2190AC3ADC3A4E282A718C3A4507652C396147569C3BFCEB1C3B2C2A3C2AB115FC2A2C3A82FE295A3E288991BE28CA1E2959A3ECEA9C2BAC39F27C2AB5CC2BF28160CC3A80257E295A6E288A963E294BCC3B3C69220E295A15C2E675AC3AEC3B2C3AC7254E296930D3E1FCF86CF83E295A2C3BB0A45C2A07534E289A57DE289A451C3ACE2959B3D2EE295970F171EC38450C3AAE2968051E295A138C3AD77CEB5E295A2E2949073CF84C2B23CC39FE2968C2902CEB559CEB1194FE296A0C3ACC3B95FE2959BE28899223517C3B1C3B312C389C3A8C3A8C3A8C3A8CF80C39FE2948CC2BBC2A176C2B50471E29690C39F07C387E2898805E295AACEB5E2959AC3ACCEB11D784224E295A7E29482E289A107E294ACE294B452E2959CCEA6E2959C184B6FE2959F686CE2959801E295A70743CEB54728C2AAE289A1C2A2115E59CEA3E295A2C2BDC3B93A67E295A74533C2B03E3458C2A1E2889A76C3B1E2959262E28C90E281BF26C3B2CEA9E29590E294985202C385E2889EC2BA057BE29594C389C2AA101A423B19CEA9344F5E666A6625E294801021CF83C2B7E2959B2706C2BD454ECE9841E294825CC2ACE29591C2BAC2BC4EE29595C3844F423CC3ACC3B60F2FC2A5E2889A59E288993034783F4CE294ACC3A9C3ADE295A8C3A12664CE9361C396C3AACEA3C391C2A5CEA3C3913C72E2959FE289A4CF86C2A1005FE282A7C3AB7F0E7130C2B07CC39FC3A21F04CEB1E2949C5FE281BFCE93E289880661E29595E2889953E29498C3B933C2A00B27E296933E1BC2A1275DC2A049C3B4E29598CEA30F4872E294825639E2949C62C3A1E29680CEB52EC3A175680A5B440C5EC3AF0E69424A4F0057E294824645103CC38474E295A1C389C3ABE296906B31011E17E295914AC384E2949831E2948013E29494C3B7E295A8C2B5E2959572E295956FE295A2391C542E46E282A7C3BA224A660BE2959330E294906DE28CA0C2BC4D1EC3AF4D06C3856134C3B63832C3BC39C2AC62C39F1C7CE29692475DE295A7C2B0C2B13B0DE296843DE2959BE289A5315A6A0BE2959504C2A3CE9816E296922A2015C3B2C38754545454E296842B02E29591E294A470E29690C3B9C2A3E2959FC3B468E295A62857C3B36BE289A144E28CA0E29590C39F2B2766570E0F1CC2B1C3843E6470C2A37C2EE288A92F17C2B53BC2A2E295A532E295A1CF84E289A1CEA9E294AC7971C3A6E29594E2959F6E2AE29599C2AB02E294A465E295A0CEB57212E29598E2969326C386564BC3847E5306C396E2959DC38938C2A5C3B7E2959519E294BC5E6A48C3AD21E294A4CF8610E282A7C2BF0E3C46C386C2BAC3AD12E2889EC2A262700DE295ABC2A3E295A15E2F25C3ACC386C2A07C4442C3BBC3B4C2AC5CC2BDE2959027CEB40D2EE2959CCF8463C3BF72C3A0C3B9C3BBC2BD423A4431C2A25B261E6D0B4DC3B409484F421C62E295AB113DC3B7E296A0112F09CEB5E2968035E288991726217EC3AD51E295963A61E29494C2BD67C3B768E2889EC3A539CE93722109C3ACCEB1C39CE2949C252D236F7ACE937015E295955CCEB50B2C15C384E296A0C3ACE29690262B117DE294BCE2959D0DE295A0E295A13A1D6A55E29692E2959AC3A7E295ACE2959326E28C9061E295993D7EC3A402C2B7E289A145E29480C3A2E28CA151CEB43EC2A147E2959FC2B770E288A9613FC2B7E295A7E295A0C2A2E295A27A402A2A01E28C90C2BFC2BFC2BFE29595E2889A5ACEB4775ECEB1C2B75B7B3B5FC3A8CE9861C3AB27C3B4E289A470CF841EC2B7E28CA0E29691C3B6C3A7412D47CEA6C384C3A81EE28CA16CE2949457150FE29680CEA615597A424C223AE2889EC3B4C3ACC2B5E296805E382F2DC2A35B2917E29680E289A400335BC384CF83E295A151CEB1E29690E295A5C69251C3A8E2889A0D174D73533D6C790769C692145B3A1366016B3514CE93621F4F59C3A031C2A34569C39657E295A923C2BF5414C38561E2959EE289A1E2959ACF8032E294A4E295ACC3B9E29480E28CA03CE295A1C2ACE28CA0E295AA4B43CE93E294944AC3ABC2BAC2B1E294A4C2BDE2959256C2BD15E2959243C3A505E2949CC39CC387E2948C3613C389E282A7C3A45819E294901BC3B4E2959F452426C3A427E295A0E2959C33E281BFE29597C3A92F05E28899571EE296A0E294BCCEB42FC3843FCF8477C3A8E289A5C39FE29596E296A0787E2BC2B57FCE98E296904AE295A8C3A657235DC2A02953C3B7507809C3A7695D34456572340C2A6E1D35E295A623C386E295A2C3A4CF83E28CA1C3A6C3BFC2A5E29597E295A7CEA33C093C02CEA94DE2968C4FC2AC0FE295A873E295A7E294ACC3A13405E282A728E28988E28988E295A63DC3BCE294A47528E294981BC384C3AFC2B1C39FC2ACE29592CF80E295967FC6924A4FE29690E295A567C39F1B0DE296803A50C3A4E2889A5A4DCEB545C2A5E295A4C3A50DE288996DC3A8E28899C3BAE28C900347230927E28C9058E29684C2B234C2BDE2959725442BE289A4CEA93C773AE29690E29595E296927FE295971555C2AA5F094845454545E294BCCF86E289A1E295A75FE2959C31CEB4C3B1C3A75DE2959166E295A515C3A7C2A5C2B21238C3BF463E0FE28988E28CA1C3A5C3AC6567C3B2580EE28CA01C2F3FE281BFC2AB3CCEB5E29593C3AFE296923AE2889A4BC2A3E295963ACF84C3910E5E5C3837C386C3BF04312BC3BA7673E295A97951185835C2BCC2BB2B1FCEB467E296A05EC391C396E295A9C3BC0EE288A96EE296922FE2959F2773141AE294AC24E295ABE28C902EC3A705C3B114CE987A3FC3A53C2B1F09645909E295941B1FC2A268E289A40FC3BAE288A9E295A9E295A9C385C39152C2A02EC3AF4F1FC2B7E2959FE295A1E281BFE295A1E288A9E295AAE29594E294806AE289A17A640212E295A0E2969110E29691C2AAC3BC490BCF86644940E2948C26E295A632E295A4C2B1E294A4E2959AC69249C3AE284502E28C906BC39F732EE296A0E29692E295A8E29596E29690E295A4C3B1E28988CEA3CEB4E294826DCEB1CE93C3AA083C5A7E171AE2959D1653E29693427129C2A0CEB50DE29498C2BF7DE28C907C247DC2ABC3A0E295A3E295AA11E295A04753C3B17A2543C3BA432C7050C39FE295AAC3BF6B71E29597794C07C3845E69E28CA10BC2AAE28CA13AE2898828E288A9E2968CC3A25636C38443464EC3A8E29598E29684E295A67AC3847FE29480C3B724E29592C2A51823CE98CEB45F7F53C3A730E295A2C3A84A402A2A2A2A2A0EC2A34A5F2867E295905FE295A63F6FCF832BE295A257245D35CE986CCF84E29498C2A3E2968CE295A3C3B9E29684C3853C4767E28C90C3A968793A0652E2968063C2AB3C1B27C2BCE2959240E29690CF840EC3B9E2959F0D114BE295A5E28899C2BD1DE2959DE2959D70E29690C3A8E295A3E29482CE98C3B6E294B4E29684E289A5C3916B63197038784C5806E28CA0C2A15FE295A81DE295A5C3ACE295A6E296A059E29594E295ACC3BFC3864871C69260C3B34B2DC3BF11C3A8293DC386E289A56BCEA9320949E294BCC3B4E29693CEA6E295ABC3967CE295947A7AC3B267E295AAC2AA0A09CE98C3AB47E29680C396E295A1C2A362E295A1E296922C29C3A4E295A9E2959E3F7BCE936159E28CA1E29691C2AA41C3B409E28CA0E295965EC2B268C39CC386E289A5E29692C387C3B6C3B118E2969214C2B1C3B6304FE2968069CEA3E29490CEB5E289A55F4DC3ABC3B9E2889AE29590E2959CC2B1CF80C2BA00CF84E295A02FE29684E2968C345EE29490E28CA1E2959F3331E29688C2B7E295A62753C3A8C384C3B6C385E28CA0C2B51F35354DCF806613C3B1C3A1C3A2E296927BE28899C38971352EE295A1E294986341180C34E295A8C39FC39CCF80E296A014CEA661C3BBC2A1514F0A7FC3B1E2959DC2A011E28C90E2949CC396014F4A3CC2A309C3AA1AC2A3C2BA10E29482C2B1665DCEB4E29498E29498E2959C00C39F1BC2BBE29597E29482C3BBE289A4CE9345C2ACC389E2959EE295A3E2948C07E2959C0C07E295A5E29595E295A13AE295965A4340E295AC7115C3AFC2B1E2949075C2A2227EC2A5CF83E29684C3AFE289A57112E282A7C384E2949CE295A2CE98C3A7E2959D46E2968C61C2A2E2968461C2A54779C3AC07C3BB6BC3BC1D77C2B5376E2EC384E29482C3ADC3A84A402A2A2A2AE2959BE2968019E2959A7A1DC3A12DE294806312C385000D5A667EC3B1C2B1E2949019E294985675E29691E296841912E295ACC3A7E295A4E2959D1A48E29594C3A1C3B62817C2B0E2889AE295ACE295A87AE28CA166E295A045C2B0E295A0E2948044C2BCC386C3853B4CE2959CE29591CF866CC2A332E296924BCEA3E295A4E2959DC3B4E295952076E2959724C3A2E295984E49E2959320C2A2C386C3A9487BE294ACE295970529463A4FE2949C3AE2959EC2ACE294BCE295A9C3AF2F77C384C2A2C2B07B15042D471EC3ACE295A6E29590E295927D2BC3BA75C3BCE295A8CF847B340DC3AD69E2969149E295974A3E26C3B4C2BCC3A9C3A4C389C692E2959DCEA6E289A1E2959507E2968CC3A9262E08E29690C391E295ACCF804BE295A4E29599CF8403CE9833E282A7C3B7E29490E296917BCEB4C2B5C2A2275906E2968CE2959F2A6A065C2B1EC3AF733D2F193DE29690C3B2651E06C2ABC3B2E29688E28899E289A5582C143720CF8600E29482C3A6E2959AE295A253E282A7E295AB57C2B7C3845614C3AF7EE2948CE29598C3AE3B54C3A62BCF8652E295A572C3A4E296931F0CE296843B76E2968C7EC3B12FCEA6E29692CEA6E2968CE2898849E295907BC2A3E28C9058273AE295A2CEB41CCE933D321EC3966F35C39F360CE29691C3B312C389C3A8C3A8C3A8C3A8C3A8C3B253E28CA0C2BBC2BBE296A06EE2959EE295A2CF8454CEA3C3A7C3A6373E221CE28C9057307CE295A10DC2BD4F01CEA6C2BBE28899C384CF84CE98E28CA05EC385E295A8C3B4C389E289A5E29595C3B1E2959D3EC3A75DC3A7373ACF84E295A1E295ACE2949875E2969253C3A906C2A2523DC384C3B2C3854DE29594CE98E296911CC3B43BE2959114E2959078C2BBC2B77F09C2BAE294B4C3A64714E28988C3AA512CC39C400C0D490D51E295A347C2BA1F31E2889E29C38648E294BC1732E2948C4EE2968078231FC3B311E2959E691EC2AB7EC386E29592CEB1E289A5E2959A3F4757E29598C3A7E295932B196622E28CA0E295A947E29599CEA3E2968864C386E29594E2959F6CC3A84FC2BAE295A84EE2969307C3B169E289A40BCE983AC3AA49740BE294A4E295AA477101E28C907B23C3A63EC6923CC2B272E289A1CEB5374FC2B2E295A5E29590CF83CEA65D77E295ACE296846360CE9358E29692E289A1CEB47FE2968410C3ACC3B97C09196D29E2889E475BE2948070E295A12EC3A07C044840C2BDE2889EE2959C187B2DC2B5E295953F0E3CC39FE289A1C3B6CEB152E2959319320129C6927A0466C3AAE2959F044F004F216FE2959E13C3AD7CE2959815C2BAC2B1C2BACE936BC385E2959758551406CF83E295ACC3B94114C2A2CEA6C2A1C2BB4CC3BB5A51E2968056E29690286DE295AA2336C2ABE288A9E289A1E29591E28CA128C3A8E294BCCF86CEB5E29490C2A54270277FE294BCE2968C30C2BFC3B4E289A5741CC3A044E29494E2968C4DE294BCCE932E5ECF8061C2BBE295A6CF84C3AA4B0E6716C3AF64777861C2A23654494A252015151515150041E2959B1D5DE295AB1C7F28E29591C39C71E289A5795F73E2889AE295AA0B323AC3B4C3B7E2959671E28988E2959AC2B0E296A040E29680C3A9C3B2C3AF794CE2889E27CF84E28CA1E295AC79E295A17376C3AFE29490C3B3C3B2C3BF58C39674E29592C3B4102DE29590CF84CF8002537728C2A536C3BB3F120167CEA91D747BE2889E0B16CF86C3B6E295AA4CC3AB6D4BC386E295A45920E2948C1E69E29692E294945324C2AA58E2959D2D655DE2959471E29599E295A9CEB4CEB4E2968CE295A0C2AA1C6838C3893A69C3B11469C3BFC3A82509C3B240E294B410C3AEC2AA783DC2BC6D33E295A4C3BF4C603AC3A0CE982CC2A0C2A34C2034C3A2E289A5E294B47E077BE29597687F17E288A9C3B7C3ABE2968C227A17E29490C384C2BAC6920FE29593C2B27CE289A1C2B26FE28988E2889AE289A12FC2A0C2BAC2A0C389C2BD2FE296A0C3A6C3A2C3B9C2B0E288A90DC2BAE2959A0A4447C3B7543CE295A9C2AC2211E295940AE2949C35C2A3E289A4CEA6CEB1725AC3A86B4D316CE288A9CEA3C2A24FC3AF62352EE295A55279C2A2E29596E2959ACEA945E29482C2BC05573FE28988E2949CC39CC387563AC3AEC2A3E2949C38E2959E1112E295A3E2968029E295A1CF806145E2889A51C3A8E288A9E2889AE28CA13AE28CA0C387C69277C2BAE28CA1E29684C2BBE28CA1C2B50CE29599C3B63CE2959CE289A5E295A90DE2968CC3A564C3AAC3A2C3BBE295A33AE295A2E2959612C389C3A8C3A8C3A8C3A8C3A8C39F14CEB4E2889EC3873FCE93CEA662E294ACE2949C72E2889EC2ABCEA31B4CCEA6E295A6E296886804C2BF43CEA913E295A8E295AB1EE29596E295A42D796EE294907A2BE294B4E28CA1C3B6C3A20EE2968832C384E295ABE29593E295A5090EC2A20E7468C3ABC3A1C3A255C391E295A97A72C2BD13E294A424C3B61668C39F04C2A3E295ACC3AE145A5213CEA6346121CEA64CC396C3A444CF8311E2959623C3A0E2959FE2968C074FE295A640E2969344261F1AC2BA29683970374B1E43C39C79E296914C3C4208C3A4E295A2E29590CEA36352E2959AE2959F64C3A84F2730C2A5C3AD76C3863D1FE2959ACE983AE294A458C3AAE2959C5D74CEB416E2889EE288A9C39FC3AFC2B2CEB4E28C90CEB4E296A0755A74E29490C3B3E29595C2A0CE98CE982FE2968CE281BFE29684E29595787FC2B70FC2B2E2889EE296936A7ACEB4C385C3BF4268316B5D32C39FCEB4CF83C386CF84307835422DE295A8482AE295A9C3A53BC2BF2B09E295A84F0BE294902458C387C2B5E29494E29599CEA331E294A4E2959C5AE295A415C3B350140D16CEA356C2BFC2BAE29594C2B2E289A4C2B250C2ACE295A4C2BFCE9352C2A12DE2889AC2A3C3A5C2A1C2AB6A124B23E289A1E295AA21C3AD433D15CEB4CF866FCEB4C386E2949828C3A05BC3A7E296921236C2AC6F2BC2A0C3B70DC3856D3C42C2B20EE294901FE295A2E281BF510ACEB4CF807A43CEB170C3A0CEA32875E289A5E2959C4CC3ADE29591C3B4C2BACF804E6CE289A17E4EE294BCE29591E295997A68C3BC2D77C2AAE29596763BE29597E2949C0EC3AB0714E2968858510948454545E294BCE295970AE295ACC3AE7FC2B5C2A32A6D0567530E051F5AC391C2B733CEA9CEB1C2A0E295A8C2B5E28C90587D61573AC3B6563C215E7C2456C2B5C2A54677E29591CEA37423E29693E295A5E295967B595976C2BF48E295A124101CE296923C192FC3B142101A44E296884FC2A202C39C14E295A462C385C387CF80CF86142653621B58C3A429E2889A21E29691E2969140E2959658CEB171414CE296920FC2B01BC3AA55E289A5C2A30AE29680E295AAC3A81F7D201FE29498E2949022244326146C45E28CA168C39CC389C2B21E63E2959263325DC2AC1EC3B4E295A2647D382C1670CEB416E29684E295950137C2ABCF80E295966EE29494C3ACC2A27BE29684E2948CE2889AC3A85DE29490E28CA1E29490C2AAC2BBE29680E281BFE2889ACE98457E43E29596C2BA6AE296880E57C3B2C2B216673818CE98C386C3B20BC2B1C3AAE2949C5539E295AB70E295AC1662C386E295A9E295911BC3AB1DE29693C3B3E295A477E29498E28CA1E296900B46730A1AE294800ECEB533C3BBE29599C3B3E2948CCF8307E29596C39630CEA6E29595E295A1CE93C3A2C3ADCF84E29684E2959C627012E295A1CF84492916E2959F694F3ACEB57AE29680E295ACE28CA1CEA6C3BCCEB5C385C3B11DE2949CC6920EC2AA47266D08C3A72CE2959DC3ABC3A4406DE29490C2AC04C3B1C3B3C3B3C3B3C3B3C3B3CEB163E29482E295A3E295A5E296A029CEB1E294A47B2E24E29599E29591E295A5510AE288A9E29480C389C2BF4C1AC3B9C389CEB5C2BD75C3BAC3BBE295A420E295A3C3AD3F675C64CE93E294B4403CE294A4463E7AE29482E29597CEA3C3A0C3A4CEA3CF86C3967C700CE2949C6830CEA97AE2959C3A10C2AA516A7AE28C907E73CEA6C39F4819C2B144C3B41C5F14C2A1E2959F20E295A113E2948C1068E29592E296912FE295AA37E295A42D44C3A81DC3B1C3AA7B22C3BB57CEB51B6A4C1FC2B573C3ACE29594C3A741E2959A37C3A0C38715CE9311C39C1CC3A8485B4CC2B5E29599093EC396E294AC74C3A9C39C326A3725E295AAE2968047E29597E29597CE93C2B775E295957903C3B76E40E2948CE29490C39F13E2959CE2889EE289A4E29498E295ABE2889E4317E2959B3AE2889A134FE2959BC3867EC2B0CE98E29599E2968CE294BCC2BD5BE2959EC3ACE28C90C3B7C3B7E29688E2959D3BE295A9C2ACC3A4E2889A36CEB54F004F024F3A5C280927E295A6C385E295A4C3ABC3AA6DE294B463384F22E282A71ACEA642C3962A26E28899CEA6CF83C38474095F7A5DC3BBC692E295A75A760A6538C396C3A2CEA3C2A2C3BAE2959DE295A1C2AB4C6CE2959B4AC2ABE28CA159E2959AC3A7E2959375E28988C2BF3C1C5BE2889938C2ACC3B9C3A223CEB5E288A961CEB43CCEB5CEB43ECEA97A4E4AE2889938CEB570C2BFE29688C2A1CF844E0AE29594492B1FC2A23D265E260F28630B71666F6FE28C90C3874807C3A5C3B1E2968C4909E28C9064C3B112C389C3A8C3A8C3A8C3A8E288A94FC2B0E288A9E29597E29684E2889EE2959CE295A1386D3775E2948CC3B44F1DE289A1E294A4542FC2B7E295A6CF80C3ABE29590E2959B0F38CEA3E295A55E5132C2B7295856084757E295ACE29494E295A4332168E295A96939C3B264C2BBCEA64B03E29591C3ACC2AA67E28CA10A43E289A5C3913FC3A403CF8639C2BDE28CA1613FCEB53714CE93114AC2ABE2959AE29691C2BBE2959C61382558E2889E2377E2948CE295AA316D277868C3ABC3B4C3A5C2B226E29691E295AB36E2889E770BE295914547C3A85D36C2BFE2889A5238480E29C3AB68E28899E296937FC3BAE2968472CF8332C389210BC3B1C386CEB441E29599C3A1C2AA416DC3AFE2948C66493EC2B75BE29599CEA317E295924548E2889AE29691E29490C387E2959C5B70E289A426E2959DE28CA116E2959BE295961BC2B1C2B2CEB46CC3A06FE289A4C2B0C3A0E29680E29598E29482C3857CC3AFC3855E792E3D7ECEB5C2B2E29690E295AAE282A716C2BBE295A7701E03C2A567757059C3A2E294A44DC2B15AC2BF28182B4C4DC3A2C391651BE29692E2959078C2ACC2B1C3BCE295A54E1BC2A2E29688C2A523E29598C3BAE289884DE2959238696FE2949CC3A2E28CA07CE29684C3AFC2BACF807EC2BCCF84C2BFE288A9E295A771CEB5E29490E295ABE28CA1C2A34CC3A1CEB1C3AB7D62E29594E2959957E2959BE289A54AC2A0C3A7E2949466E29482C3BB5BE2959616C3A77D20E295ACE28988E295A778E296934A402A2A2A2AE2959B0F70E2959667E2968C7C22E2889E6213E295904F591E61E2948C0E5EC3A7E2959BE29592E2959AC3B9E289A44BE2889AE2889AE294984046C3A5E2889A4657C3A47D0309CE98582A22C3AC44536ACEB1CEA6E295A9E295A4E294AC14E295A1045632377C48201FC3A0C2ABC3B9C3ACC384C3BA3946C2A058092EE294A4036FE29598C2BFC3AE76C3A714E295A422214F04E2969337C3A4C2AA65E2948C18530BE2889EC2A2E295AA37C3BACEB4C3AE183B52E295A9E295A6C3B70CE28C90C3B911541206254318561410E29482C3875B2059E29494C2A1E294B42DCEB1C3ADE2959463752D0CC3AE493142E2889E204658E2889EE2949CE296906E2620E2889AE2959760E2889A704AE295ACCE98C2A505574ECF86CEB413C385CF86C2B1E296926B73E29680C39C7C10E295990525C38524E2968001E282A7E295ACE289A5E29594E295A56B314EE29680CEB53F2631C39CCF86E294A4C3ABE295A0E2889910C2BAE2969371C2ACE29599C3A80A22E296807030C384C69272E295A5E29599C3ADCEB535E28988CE930EC385C2BB47C3A6E28CA00AE2959FC3A6C3B60FE29595E29482E294AC701442705209CF8327C3AD7CE29684CE98E28CA1E294B4E295942A16E2959F4D4CE2949017CF83CF804E7F56E295A6E29692C2A155C3A2C3853BE29590E29482E295A73E7C0A781908E295966E2DE295A51D3EE2959A4A422A01E28C90C2BFC2BFC2BFC2B0E282A7C3BCE296801321CE9852C3BACEA35B0673C2A3664571582319E2959CC2A06365E2949CE2959B4644E294A47AC3BBCF866312C3866BE289A1760CC3B90C2904C3A03CC39CE29596C692E2959D3514E294AC62C391CF86452322E2969232C2B1CEA608C2BA751D76C2BA33323C3BE28C90CEB4C3AAE2959473E2959B46E29599326D5B6621CEB1C2A111E29688C3BB450AE2889E770DC3AFC3BFCEA66224E2959EE2889E0DE295A450CEA6CF84C2A024C3AE28E2949CE295A90C2FC3B4E29691E289A5E294904EE294981F62E282A7430E15E295974C6616E2889AC3A00C75E29498E289A4E29692E295960BE2889A7BE29691E295AAE2959F674257E295A2C39FC2B133E2959E7B2FCEB5E289A1E295AAE2949847E295A3E2959D73C39CE28899240A4EC3B47C56E29595634B1F3FC3B3E29592E29594641BE295A6E295A215C385C2A04A2FE294985DE295986D6F576D75E295A51E0D6D261FE28988C2B2C39CE294943BE28CA15AE294BC51E295AB7352C3A8E294BC3B41E28899E29595E289A41740CE93E29684473F7ACF833D7FE2889EC385C2B2E289A1E29690E29680E288993BC692E29490C2B1E295906FE2959BE295A377073679E29597E296802B2A01E28C90C2BFC2BFC2BF78474327E294A45C3E01E2959E14C386E2889A5C794A5118C6925D3319596BC3A2C3B3E288A9CE98C2B135CF83CF802059E2959453C3847C081F1CC2BB673CC396C2AC5731E2959ECEA364E2959C08E2959A0DE29593CF80E289A4C3B7C2A5E2949CE29680C2B76D68E29599E295A35EC2BD57E29691E2959C1FE29596C3B61231254811C3AFC3A6C38922CF86C3B1E294BCE2948C6668C3915AC3BF58E29480E294807E1431193126E29684E29599C3A12A48C39670C3A4E289A533C3B40F1525267B4FC3B662C3A6C3A212E294803E2E3EC39F2942C3A839C3BBC2A508E2959904E29688015DC2A33BE288A9E2959CC3AAE296907BE295A478E29680CF8319C3B9E295A267243FE2959662E2959319E29490E282A73EC391450713525673537CCF83E29692E28CA1C3B35B2BC3B673E29599C2A27D2705CE933E7B34C384E2959C5D1DC39F5BC2B1C3A1C3B6C385E296882D7FC3B6E28988E2889A76C2BB6BE2959C31CEB5CF86523EC384C2BD58C3AA7BE28988C3BF1C57E28899E295954BE29680C384E295AAC39CE295A7E29688C3A7E282A7C2B2E289A123E29680E281BFE295A353C2A062C3B9C3A213E294946F4736C2AC17C3B112C389C3A8C3A8C3A8C3A8E288A9397272CEA3C2AC6B11635844C6920333C3B4C3A7E28CA12BC2B57EC3A41BE29684E2959E13CE93E295A67AE2949037C2A2E28988CF8070E2889A1A2EC3B6E295912E3AE29480046E6BC3AE6643C2A171E29688CEB4C3B4C2A26AC3B4E295A4C3B7E295931F5F59576955C3A8CEB543227AC3B93AE2948C4560E295A504C39C10C3BF5840417813486E74E29594C3AB29C3A6C386C3B47C69C2ACCEA6E289A44CC3A9C2A3C3A5E29480E29598C2A5494C34442C09CEB40A19E289A1C3B6E29590C2B55DC3B9E289882600E296880DC2A3C692E294B443E2968870E28CA1345C3905574EE2949CE294BC6D38355DC3AFC3B1E29490E2968C1BC39FE2959F3C74CEB5663D47E2968CE295ACE29597E295A0C3BA71E29680C3B2C385C3B4E289A1741C45C2ACC2B75E533E74C692C2A07C1EC3A6E295A2247C6FE29596C3AFC2BBE294907EE295A6E28988E28988CF80E29595E296887339E29684C39F70237A251DC3B2C38754545454E2959D2B48E294BC51CEB53FE2889E72CF84C39F0424E295A34567424EE28C90E295AC311CE2959B365EC3B9C2B1142C563C21C2A208E2959F38197DE2959C5CE295A5CEA6E288993DE2968869E294A42420C3AF6248E28988C3B3E29494C2BC5EE28C905F3AC391C391E2959224CEB403351BC3A75CE295AB1C28E2948C5AE294ACE295A1E29593E295A522E29684492915C3A27922C3A00E62C38726306DC39CC386C39FC3A6E2959FCEB426413223792120E2949CC3A42F07CF83E28CA1374A4C4CE294A4E294B4314BE2959A4A66C3AA584EC3AF52C396CE98E29597E29592CEB1CF84C2B570CF83347AE28CA02C3C790E1E3E254EE295A7C3A10DC396C391E294BCE29480E295A91BC3B10DE295A31677E295A061E295AA74281DE295AB5B71E2959722E2889938CEB4E295A35FE29599C3ADC384E2959AE295940FE295A6C2B178CEB1E295A9E2959FE2968C7A3A38643BE29684CF8376CEB5C3B1C3A1E29494E295942B161C713D77E289A5C3BFE29684C3AFE289A5712C25C39109E294B4E295A2E295A2E29596C2BAE2948210C2BCE288A90EE295A1E295A16B32C2AC24C3B112C389C3A8C3A8C3A8C3A87723C384E296884F70C2BC7943654E6BE282A754E29688E295A75A3DC3B16858E2959400C2B1E295903EC3A6C3ADE2889EE28CA1E2949C07E2968027E2959A53E2969252E29690E294ACE295984AE29598C3A03B7B0E71C2A1696A1C6A380E26746DC2AB19E288A9C3A8E29690C2A1CF83E29599E28CA166E289A5E296A0752CC3B31353643F26C3B7E29591486B4613C3AEE2959E4AE29597C3B219C3B46058E295A840C3B4E289A524E2948C42E29596C3A9E29691E2959E50100AE288994CCF83C2A1E294B4C2BCE295946AE2959FE28C9009C2A3C2A5E294B4E2949839C2A3C2A5C3AD737338E2959705C2BA66E2969133E29594E295A6596E111BC391E28CA1E2968CC2B5451DE28CA1E2969139C2ACE289A571C2BB6FE289A5C2B2543E74E295A0C2BBE29599495F417FE295973C227A40C2BBE28988412B1627C391E294A4E29684E29680E295A7E2949C4C67E295ACC2A3E282A73DE28CA1E282A7C2BA2E7CCEB4E2889EC396E29498C3AFC2B2E2968C2B574BC3BBE28988C391E29688E29691C2BFC3A84A402A2A2A2AE29690761CC2BA62E2959DE2959919E28899C38467E29593C3B6C3A2033DE295A7C2ACE295A528E294BC62732933CEA33D70E296915D7ECF83E296A012483814C3B76BC3AFC2B768E29480CEB5E29480444CE295AC22E294B422E294B47ECEA90303E2889AE295A6C3ABCF80CEA3712FC2AA73E2968CE295A32B68E2949C7E1D785D3E523E341A2E3B364F40513712E295A4C3AD4BC3ABC3A04463C3B33531690C6B02660D6D19E289883BE2959A48C2B2E295A7C2AAE294B4E295A74DCEB1E28CA014C692E29596300DE295A81AE295A05B383DC3BC7373E29595E294A4C3ACE295AC6FCF837FE288A94C61E2948CC3A9CF832C102F21291A5FC3ABE29680C389CEA67D3867E2959CE29680E29690C3A83BC2A1CF845EC2BA5E711FE295ABE29596CE9865E2959D533C1FE29684CF83764FC2ACE295AA5EC2BBC3910FE29688CF84C3B4502C0EE2889AC2BC1E74E295A5E28899E295A4E295932369C2BD6DC2A24BE296885BE29599E29482C3B43634C3BA27E28CA1C3A4CF80E2969158777F002CE2959CC3B312C389C3A8C3A8C3A8C3A823C3B40ECF84C2B0C2B22E476EE29596E2948CE289A13C5FCEB129C2B540E289A54E39CF867A6545CF80C384C391E29692E29693E29692E295947E70583E081CE2889E58C385255AC2A2C3864EE2969015E2969311E2968CE295A3C3B2E2959DC2BF0AC2B2E295955DE2968CE2959BC2A1CEA918E28CA1E29592C3AD6FCEB51D3CCF862AE2889AE2948CE295ABC3ADE295A41DC385C3846328417068E2968CC2B154E289A5E281BFC2B711E2959CE28C90185B4E37E289A1E29690E289A4E289A1E282A7C3AFE289A1E295A84E2618C389E2959030C2A1E294B42464C3B263E2948CE29494C3B1C3BC26E28CA0E295A067E2949CC2A27D12E295A9E2959FC2A50E473FCE93C39FE28CA03D5633E28CA163E296884ECEA35AE294B451C3B97FE295973C1DE28988E2889AC39CE29594492916E288A92CCF83637CC2BC787216C3AFC3B1C2B245CEA9E289A44E7B05E29480382422C2BAC3B312C389C3A8C3A8C3A8C3A8772A1139E295A9C3967DC2A52B50C3867837C3A6C39C4D6445C387E29490C2B7C2A51BE296923D3BE29688736CE2968020E29498C2AAC3B26BC2A330E2959B6CE294B45A59E295A31F4640C3A817E29480E295AB3C2343E294AC79561D1AC3A1E294BCCE985CE2889EC3913C2D6AC3B33CC2AC362FE2959B4C4217E29684E29498667FE2959A08E2948C3BE29490E29482C3BAC3B1757A1FE2959FCEA64DE29599325FC3B1C69276C3B2E288A9E295A6E29599C2A1C3AAE282A727587971E295A624C3A745E294801BCEB1C3A61D78C2A04578E2889E1CC39C4FC3B9E288A9C3BBC3B9295C5EE29598C2A5E296A0164BC6925AE29498E2959378C2A0E296907EE294BC02CEB52E77CF807E4FC3A73AC2B5C2B77CE289A4CF847FE289A1E28988CF804EC3B23AE295ACCEB439C384C2BACF805E15C3B6E29597C2A57A75C2BAE295A7C3B75EE2959D210F3ACE98C2A3E29688E2889EE28988E295A4C3ABC3ABC3A2E2959FCEA369E29692C3AAE2969075E2969237C3A1E29688E2948CE295A1C3BF780809E295A3E295990758510948454545E294BC7D271A47E295A34FE295962112E294A4C2A149C3A9C2B2C2B2E294A4C3AB07240EC3B75224C387C3857CE29498C2BBC2A0C3BAE29594C2A1E295AB66E288A969E29680E294A459E295971FC3B6C2BBE289A5E28988636FE295A1C3BCE28CA1C3B1E295A133CF84C3BFC3AEC3AEC3B2C386C39FC3A76FE295AC08E29594E295A71DC3B3E289A1C3BFC3B60716E295A4E295A3CF835918C38960C2AC4C3CC2B7C39FE29693494BC2BAC2BA747869E29595E28C907364E295AAE295A20EC3B9C3845659E2968CE2948C7BCEB16026C39CCE93E28899C3BF06310D622227C3B10ECEB4C3B2C385C2B1E2959E4AC2BBC3965BC38462E288A97D21034101E295AA14E2949472C2BCE2949CCE98412A1627C391E294A41CC2A21DE29690CF83E296A01F717D6FC2BDE289A571C3B6E28CA1E282A7C3B6C3A9E294AC7D7AC2A577731DC3A01378C2B2E28988C3A9E295977FE29490E29684E2968CE295972EE28899E296A07EE28CA0145D6BE295AB6E74E2959AC692C3B64A382A01E28C90C2BFC2BFC2BF78E29688E295ACE295A532E295A6C3A07EC3AE7EE29597E295A9615303C3B7C2AA4BC3A15A2CC2B74AC3BBC2B5477EC2B0C3A676360DE295A2E29597E29688E28899CF834BE289A470CF83C3A6CF8676320DC3A8E295945974C3ABE295AA25C2A57BCE934C7CC3B7C3B40FC2BAE289887DE288993BC2BACF845FC2B0E295ACCF83C2B5E295A6C2BBCF86C2B0CEB4E2889A163B2F617F5E32346EE29680E29688E295924FE2959F425A12C3B4312119C3B60F3FC3A1C39CC2BC1207C2BA512637E2889A29E28988C3A4E2968CC3A8C2B2254561564208E2889A295D5A231CE294BC53C3B32330E29595C3A2C2A155C3BAE2959FE296843732E2959D5EE28899085AC386C38559C3B409E2959AC3B14F704C31C2A2E29480CE98C2A1255A55344AE295A6C3A5162927C2A5271F2659CE98E294945EC2B7216FC2B7E29688C2A158E29494CF86C2BB24E2889A11E2949022E28988CE9349C39FC3AACEB4E29597C3AC5271E2889EE2959DC385C3BACEB5C2A0E2959C2A1FE2959F555C3822C3ABE295A3E295ABE28C90577E07E295A574E29490C386E295AC4F22E288A9CF807EE2889963E29598C3A5C3A1C2A17662330BE296934308E2959AC2AA6B38773AC3BF2B2A01E28C90C2BFC2BFC2BFE2959523C384C3B474363C76C2B5E28CA044CEB5E295ACCEB46FE2889E1F66C2A2E29595CEB4E29490C3BC7FE289A13F7AC2A0C391C2A5C2A130E2959CC2B1E295935EE295917265CF84E2889E430F6F5F695AC2A2E294BCCEA329254FCEB5C2B0E295ACE29498E29594CE983367C2AA0FC3A0C2BAE295A24FC2BA1FE29595E294A4157FC39F5FE2959C377EC2B71BC2BACF802BE29597C3912DCEA960C3ACE29691E295A56ECF83C3A764C3A9C2B06A60213A484AE295AAE289A1C2A3615CC3AEE296931212E2968CE29498C3ACE288997956E295A0C2B1135B26C3ADE2889AC2AA324607C2BAC3B7C2AB1AE2968037E2889A5B36C2B21CC2BD1F39E295A603E2948C1068E29590C3BF06C3BA15E294A472C39CC3BF30C385E295A355E295A9C3B9E294B4CEA92B07414905CEA6E29597E29693C38477E29595E2959DC3B414C3AFE29596E295A61B72E2959653C2BB4E5AE2889938C2BC28E2959BE2959FCF86C692C3AAE289A571C2BBC692CF8651E29596E2959F09CF86E28988E2968C2CE28988E295AC42083AE2959CE295A1E2968C3E7EC3B7E2889EE281BFC3ADE29498C2BC69E29593C2BB59E296916A481F3F76C3867FE288A92B2A01E28C90C2BFC2BF78C38778E29688E295AC4CC3B436CF843D74C2A51F760239C386C2B1E289A1E295A1E295ABE289881CC3A16DC39CE289A15FC2A057C69208E2948259E295A86BC2BBCF8671E28899C39F59E295957469E2948CC3A96BE2898856E29598E296A07E647FC3A6C3BF4C4233C2A5354DE295AB25E29688E2968CC3AC0AC2AA3069C2A115584CE295ACE29590C2A231CF86CF8645E282A779C2B5E2889ECF832BC3856C3F61E2959E7CE29692E29680E294BCE29498C2BCE295A3E29595E295A1E295923E61C2AACF8604C2A5E29597471CC692E295A0C39CC3AF6DE295A813C39CE29596E29688E29591E2959DC2A5E28CA0E295AAC396E29599C3B7E28899C3B9E295A216C2BBE288A911C38663E2959C6B434B1BC3A436C3B63E5EE29693E296937DC2BC701CE295A55EC692E295A9C3A2077AE294804AE29592E29690E295A7E295AB6A73C3A43A7B29C385CF83E2959CC391C3911AE295994FE296880FC3A2C2ABE296936417E2959CC386E29693E28C9075E295A90FC2BD3DE2889AC69223CF8343E28CA06D68C39610C3A032C2B16A12C3AEC3ABC3ABC3AB41C3A263E28C9024C39CC2BA44CEA90B53C3ACE29594E295A82A537374C2A212C3B741281647E28CA1C3A5C2A354E29690E2959F267A77C3B611E294ACE28988717D03CF80E29592C2ACC39FE281BFE295AA53C2BBE29595E295907EE29684C3AC62712F5EC2A57B493A3FE2889E333ECEB57EE29680CE98C2B0C387C3B4E28988C3A5CEA6C3A44E1D77E289885EC39669E29690E295A2C39FCE937416E295ACC3A460C39F1002C3B3E29688C2A30B6A4B562520151515E288A932E29684C3ACE2959CC2B04470E28899E289A55CE29597E29597C3A6C3B95FE294984D77E29692C38507CEB55B74C2A5C2A0E29480E288A97EE281BF72E29688E295AACEA3E295936EC3A867E295ACE29688E28899C2A16DE29597C3A8E2889AC2BC5B78C3A831794CC3ABE295A8C3A4734D1BC2ABE29591E2889AC3B1CEB43C0671E2959B097605C3BFE295A3CF84C3AD4CC391E2889A672671E295A9C2A5C389C386E29597E29480E295984C3B4033C3B6E2949C2EC3A969C2ACE294800EC2AAC3A569CEB43A3D6DE294AC761BC39CE2959368E2959138C3AE73E294987426352DC2A5C3B2CEB4E295ABE289A5E281BFC3892959E2949C7D5A5D6EE2959DC3A8C2B16542E2949C6910CEB5E295ACC3ACC3BFE2959A2DE29593E29498E29680390D5A0EE296885F533A36C3BB637EE289A1005951407CE28CA17EC3B6C2BA703523C2BB4763C3B3C3AD10C6922E123D27C692C2A23B265F5D6731E29494E29597C3A21265321678C3BA1C24C2BF3BE295A1C3A4E29490C2A5C3A8E294BC49C2B57DC2A344E296A0C3A4E29680E29490C2BBC3B77D4BC384E2959EE29598E2959700002000494441543AE2949057E294BCCE93C2A53615CEB438E2889A7DC2A3C2B27CE295A8791F277C12725272E288A962CF8429E2959EE294A46E424F6C6EE2949C7A0007764525201515E29680E29597E295A8E2959765C2A0425049E295A1E2959B2D6939C2BCC3BCE2889900E2959BC2B1E295901B0E70CE98CE932CE281BFE28C90C692E281BF4833C69207CF86E288A9277FE2889EE295A4CF8670E28899E295A5E2959D691AC3B4E29597E2959DE29490C3891A1A4268E29598C3842EE29691064FE294A45DC3B91CCEA30F3FE294A4C2B2E295A8C3B776E2889AC3B6E295A83426E288A942E295A6434DE2949CC3B4CEB56CE295964DC3A829594A0964E2959164E294B4E282A774E2898859E29688782774E295944C57E2959817E289A4E2949CE29590473FE295A615E28988C3B2E295A4581A2E02C2BAC3B65F760AC3A5C2B52D766A42336BE2959DE2968C4F34E2889A49630FE2959AE295A50B313AC3BAC2B76D78E295ABC3A5C3BBC2BD32E295A7697372E29591E28988676C0D4B0539E295A4E294BCC3B3C3AEC3B36D7A25C3B14427C3A55244C39C1FE28CA0C3A51CE295A267E295A60F7ACEA3E28CA1504F7A7AC3B24534E295A9191FC2A119C2A1194164C3A279C3AEC3B1E29690CEB451C3B6C3AD50E294AC087BCE93245FC2ABE295A67D58146F026A6C7540CF843D793ACEB5E28CA075E2959D1BE294BCCE9328E296883BE295A97AC3843B25CEA976E2889AE288A927E29691E2959B43C3BB3BE29692E2959DC385C3BAE2959B3FE28988CEA9CE9838CEB574E29692CF805EE295A6E295A4313FC3A7E28CA1E2959F37CF86E295A7C2B2E289A1C3A51CCF8335E29690697FCEB5CF867426114C363353E2968847C3B9727B0FE2959AC2AA6B2447C2B232545402525151E294B4E29688C2BF401C771B17E295AC4FE29498E2968CC3ACE2959DE28899E29593E294ACE288A9C39F351DE294944B2FE288A9E289A56FE296A0E29690E2959F2EE29596C2A135317A3CE295A1E295995EC3BFE295ACE2889EC2AC64537745200AE29494E29595C387E281BF2AC3B3053AC3AD0B26C2ABC3BC2640E29480C39639C2A37208C3A1CEA330E2959FC2B2C3B63BC3ACE29594521F25C3BC6B06E2889E38C3A412E294823DE289A4CEA3C3A2C3857928CE930B01195AC2A57C4940E2959D2CCEA32EC3861C73C39FE294B470C2A33009C3A4E2948253C39C335326373B5AE294BC3C02E295AB0FC2A000E2959EE2959C05E29596E29597C3ADC3BA25C2BAC385E288A9E28988C3B322C3BFC2A3E2959E33C3ABE2959D59C3B6C389C3AAC3BF0731E29482E296930F76E2889AC3BAE294ACE288A9E289A1E28C90E28988C2ACC384E28CA1C3B12364E295A5E295A4C2BFE294A466C39148C3B952C3BBC3BF5262E2959DE295A3C3BCC2B0C3B675E295952F277405C2B7C3A4774812E2959306E294AC24CEA305E288A9E28C90E2889E78E295A80AE2959471E295937337CEB43A7173E289A111E296A0C3A9E2968CC2BBE2959DC3857B512CCEB5C2B57D7CC38953C2BBE2969029E29690C38977E2959EE28CA1E29693106C7B36CF80E29692CF86CF86E29594CF83CE9834346B1FE296907A18C3ADE29593E2959AC3A753C3AB4725201515E288A942CEA67B7DC2A0421029C2B2C2A0E2889EE2959C59C3852D4BC39C25E294A43E3377E29680E289A4C384E2889944E29480C396E295A71DE289A5E29690C2A273E29593C389C3B25559E295925DC2A55DE2959255E2968C6AC389C2BFC3A50750C3AF1740E289A1C3A9E29480E29680C39FC3A0C692E2949413C3A040484808C3ADC3A5E29596C2ACC2AAC391163439E29680E2959DE289A474C3A518C3B7E29690CEB5C3B7C2B1CEB1C3B4E288993CC396E2889AE2969071E295AC76294EC2A3C3AACF86616E3EC396E29498C2B7E29593E29596E2959B15CE980ACEA90EE29598C396C2B23EE2889AE281BFC3BB01CEB1E2968CE295960FCEA37FE289A45F7FE2959F520AE28CA0CE93E294BC0AC3851FE29590CEA3CF83CF83E29598C39C4C2C5852E289A17AC3BAE296915A7934C2A54839C2A2492B4C11C3B9C3BBC389520A2B5CC2A16C5CCF8311112ECEB54D2E6753CEB419116C66E2959552E295A5C39110E28CA0C3AEC3AA260C72E294B441C3BB12C2B105C3AAE282A701707C00C3A90B22E295911F5EC2AAC3AAE2969208C2B525E29490C2AC5432481671C2B741C3A05762E289A5C2A5E295A3C2B2CEB4C3BA594870C3A90501C389E2889A7314C2B20F6AE295AAC38600C3A423C3BCE2949C09E294807244C3BAE295A7C2BBC39F20C3AAC2B523E294BC7E70E296922221CE98C3B247C3A0CEB43ECEA3011124C396C389E295A8E28CA0C385E295AA674254E29494C3A4C3A4E2959B7CC3A801580416C387E29590E296A0E29494E288A903090AC2A5470AC385C3A2E29691E294AC5750E295AC37E295987948C3A8190F2BE28CA0116105E295ABE289A4C3A13C050EC3A4C2B522E289A5C2A0CEB1C3A13C70C2BCC3BCE295A4C2BBC3A224C2A0481B29CEB15912C3846341C3A52958C3A062E28CA03E341D55CF86C3B6CF86470D5FE29597E2959BC2A5E294B4E295A3CEA3CF84C2ACC2AC5725E295A7C2BA71E29490C3852EE28988E295A1E2959075693AE28CA036E2959C0F45C384CEA64D18C3AFE29693E295A777E295A7CE98E2959D18E29597C2B7C3BA184941C386CEA3E2948071CEA3E295A5E29693C3B14801C3ACC3B3C3A213E295A975C3A97B5DE2959A1EC387E2889EE29596C2B2E295A2E29599E29688E295A21808C3B421E28C90E295A55CC386E2949C430757572E6E6F3D55301B36E2948C5E7E45E28CA0E288A9C2B2E2959927CF8420E2959AE28CA1E295A955C3A7C3A7C3B7CE98642AE288A903CEA330C3B4E2959F0C056648C3AB5321713F184B3C21CEA64448C2B120622C40C3AD54614AC3A4C3A016CE98C39CC2B03FC3B40540E294BCC39C6CC39C00E296A07E3E5CC3A1096BCF83C3B1125AC3AA0028C3A4E294942B041C40C2B03B4EC3B15AC3A0C69233C3A74C08C2BAE295A5E29691C386CEB1230624C39FC39C2B741C276024C3ADC38426C3A1CF8308634B601C7A6FC3A4C3A143E29599392035E29599C3BB2A1A58E289A406097FC391E2969206C3ABC2AC5829C2B2C3AAC2ABE2959010E29480C3A1CEB10FE295ABE295A907690AC3A4C3AC20C3AEC391E29494C3AA18C3BBC3AA13E29595C3A8C3B9401CC2A13765C3B1E289A4E289A153C2AB64C38946E294BC4A61E295900AE295A9633007E295A047E289A17742E29597C38422482763E289A501C3A6E282A7001E695304E294B41D59E289A1260EC2BCC3A6E28CA01DE295ACC3AB0CE2959D365DC2AC50E28CA1CF83CF80415B1A4EC2ACE2948CE29688E295A2E2968047E2969042E2959BE2889E7ECF864AE29592C2BDC2AA7FE2898866301F39E29596341C64E2959955C2BBE295A5E2949C645E11E2959B3DE295AAE295AA03C389C2B2E295A2E29680767164E29688E295A3E296A015E295A22B4464C3BCE295A86450CF83C3B3E29498E28CA1E295A62F570CC387E296907A3AE29596E296A0E2949CE29490796A0901E295951ECF80C2B26F1DE295A9E2959FC385661220E29591E2959CE28CA1C3A114C3A20818C385C3911CC3ACC39115E295A507E29482C3962567335B7AE282A7E289A54044C3B9CF84E29599E2889AE29599C3ABE28CA114C387C2A1C3B6CF865916E2968CC3B9163D0563E295A04CC2AB0F2E40447C49C3A46740C3893225CEA6520871E295A4E28CA0E2969372E294ACE296882134E29684235DE2898810E29480E295A43832E2889E4E02C38524E29494E295A8C3BC49E28CA073E2959A7C147DC2AB38E295A63868C6921311C3B150C389C3BBC3A4E2969325E29684C3A211C2BCCF8308C3BB23C39F08E294945661141FE295A82B61CF83E29590C3B1C3ABC3895EE29592C2B7C3B9E289A41CE2959839C39F1B12C3BCC389E2959A79C2A341E2948011E2889AE29692563113E294AC60E2969120C3AEC3A94E52CEA6E294B41179C3A0CEA62E1B14C3B15BE28899E2948C0D19001011744631E2949CE28CA1143C4F412915E2968437C3B7C2BB55E2949468E296915E4429CE93C2AB42C2A54BE29684C3BB0D40C3A6C38737E295A2C39FE295901D606CE2959FCEB5C3A8C391C2BB0A55E2959D2E55E295A007E295AB6C0715CF86C3B6E28CA1E28C902D53E295A8E295A16A53E2968CE295A7C3A7E289A5E2889AC2BFC3BACE98C2BFCEA97F176D48E29599CEB4E295AB55E29688E295A5E2959EC3ADE2959DCEA6E281BFE288A916E289A4C3AD052F48C2BB7CE294B40CC3B75402C387C3AA1C0052C3A426E2898840640F40C3B7E296887E6B31120D0F4E4C265B73E2949CE2959BC3B9E295903AC3BFE295A76D5C5DE295A3E289A13C56E28C900850C3B96BE295A9C3B96713E2889A3FE2889A4FE296803DC3A760E29692E29498283E3E1EC6924D27C3B7C3912FE281BFC3A2E295A60C450009C3AF4EC391C3B1E2889AE289A153E288A93D21CEA64C4AE295910C18090F3E6331471CC3B1C3B7190CC3A564C692E29592086610C39C021AE2948241C3BFE29593CEB43669CEB4194A000F7DC2B10FCEA3E2889A6624590B6DE2968038E295920A4A71C3B1C2B108E29490140755C3BB22E29494127F4FE29596152EC39CE2949CC3B7C3AA181CC387102505E2969118C3BC17235F0F220923004E280ECF84C3A9C3A7C3A6E289A56754E295ACE288993CC2A103E295A4C2BBC3A1E295A5C2ABC385E296A01426E295A9E2959404C3AC4A0AE294B4C3A96F5AE2959AE295A0E289A104E294B4C3B2C3A4C3A62028E289A5E295ABE288997E695EC3B7C3960D0AC38747E2959A760844C3AEC3A7CEB4E2889940E2949C537E652B15C3BFE2959433E2889AE2949443C3A4C3A1C3A9CF8073C3B350E289A1E295ACE2959B016318C3B7E29598E2949CC6921E333C4970670EE2959862024C1D08E2959FE295A911E289A13761244C55E2948232CE98CF80E296926DC2B5C3BAC2B579E2889EC2B23E7AE295910F433128E29597E289A57C51CE93E295A230C3A1E2959BE296A0C2B7E2959E0B1F1A214828E294BC4DE295A9C2B1E29690C3B2E29494C2B57EE2968803C389C2B2C3A53D03616CC2B54F31174DE295A7271A4C5FE2959DE295AA0000E2959CE28CA16C61C2B2E29590E29490C2A0584AC3AFCEB179C3AE77E296905AE2959AC3AFC3AFC3ABC3B6C386E2959A7519CEB4E295A1C3A9CEB4292CC3B9E295A2C2A3E295A72DE295A6E289A400E295AB651AC385C3911CC385C3911444E29480E295A07CE29597E289A53CE2968812CE93E29498E29599E28899C2B2E294BCE296847E0A407AC3A8C3B225E294BC0329E294BC332272C3AAE2969141E2959A5C08E29684275F6B21017844745F083AC2BB736654CF803272405410CE981EE2968428041FE29591E2959EC3B239E2959877CEA640C3A4294A3952E294BCE28C9055C39FE288A93D15C2A0E29690C385E295A0076CC3BCC3B7E294820E54E295A5C3B2E29692E281BFE2959B5302E295A8C2B0C2B17B15180F1278C2B5C387C3BB23C2BFC3960D39C386C3BFC2BC14E29593C3A8E296926160C3BACE983F744DC3AA6EE295AA1DC39CE289A1254008274148C2B7E29693E294BC402CE2959352CEA3C2BACF865322C2A348014050206C62C39FC3AA1FC3841431C3AFC3A9202D4B04E2889A32E2949C47C2BC41E295ACC3B907C3A5C2BA7CE289A11102100A38131131233150C3AEE295A7C3B4C3BA7B4CC2A3041FC39FCE986EC3BFC3AD04E294B4C2A2C385C387C3A2316862E2889A55E296913C4EC3AB61C2B7C2BF4255E294A45F59E295A1C3B33AC2B1C3B2E295A21AC3ACE295A2CF84C3A7C3A5CF86CEA91F37613EE29595CF8050E29688E29596E2968047553BC2AAC3BFC3853400C3BAC3A8E295A2C39C320D6D18C3B6E2968C603E32CF860754C2BB20E29693E29490E28CA1CEB5CE98E28CA0E288A9E296A0E296A0C3BA1100C3AD147BE2959A4FE294BC6A125CE296846F7B00E29693E2968076746B1AE2959C37E295A3C2B06F1BC3A8C3B3C3847DC2BA3E424FE29482C396452F5FE2959140CEA3E295ABE296846D107CC2A0CF86E2949CCE98E29490E281BFC385E29680E2959110C3A94829C2B5E289A4E289A4E29594E29498746A5D10E294B4E289A53C56E295A0E296A0CEB16C3B7466597401C3896026C3BBC386E295ACC3A4C3A10BC2B0E28C904F5EE29595C3BB23E294ACC3B6C3AA1600E2959A17C2A0E295A4C3AEC3AAC2B501E295A8E295A8C3BF0B4CC39F6B30E294ACC3BC7C5AE296A0CEA674E29594E295AB466DE289A11103C3BF18C3A444E29494C3A2CF80E28CA0C39FC3AAE295A4503A4BC3ADE2969219E294B477E295A74B0314E295AC00C385742A57E296930F6951E29591022B0609C387C2AA36C2BCE2949C31C2B06402E2889AE288992D16E29680C2BCCEB1791EC2AB7CC3A07BC2AB103D0ACEB4CF83C387C3A6E28CA0250F4BE29690C2AAC396C3A1E28CA014C2A36713E295A03A00E295A5E29593C384027E352FC387C39F2960C2A15D474F32C3B6227844E289A104CEB10AC3A9E295A6C38754C3ADE29593C3A2C3A26A611CE296911BC3ADE295ACC3A222E295A228C3A60E062DCF832AC2BC6CC3915DC3A210C3A450E289A110C2BC3C0545046F39C3A93C1A43C3AE2C08C3B31EC3A5C2BBC2AAC39C0E32E29598C384E29594C3ADC3B20D0CE29590451FE28988E29594E295A8C3BFE295A5747469E2959FE29598E28CA1CEA9C2A2E28899E295912BCF86E295986DE29680E2949056C3BB2DC3BB7FC2B257E288A93FE28899E28CA16FE282A7E29680E281BFE29680C2A0C2B5C3BAC2BDCEB4CEB44DC39607E2959A7EE2968803C389C2B2E295A2C3BA6FC2B05D1BC3BC4CE295906CE295A1E295A379C3B36C25C3AD1A00C2BA506BC2B1E289A5C391E295A600CEA6E29690E29498E2959AE296A0C2BA7FE28CA140E2959BC2A0E29690E295A53A3D190B29C3AA3C2F4EC6920FE29599511C4758CF80E29692E294A4C3BB4B5BE295ACC2AAC3BB64066D5CC3A0C2A21BE295AB1DC385C3B17CE28988C2A5C3A2C3A7074BCF847118017246CE93C3AD6DC3ABE2959F001CC39138E295985A0821C2B140087ACE93E295AB602216020FC3AACEA6C2BCE2969065C2BF1BC3B20B2BC3BB50E294945C5445E29594C3A827E281BFE2959AC2BFE295977041C389073EE295A551674E1C2E0D0E6210CE93C2A0E29680E289A442C2A107275810E295A7C3AFE294B4473EE289A1E2959A6A40CE9312E2959DE29594E2959F4029C3A5CF8401640B58C384C3A4E2959670CEB1C2A54E617F7DC3A2CE98E295A1C3AFE28CA1C2A107C3A7082BE29680E29490E295A817C2A500C3A63379CE93E28CA0C2AC40482ACEB4C396E295A3181072504638E2959DC3BF141D3F58CEA6CEB4E2948CC389C3A151E294BC0C17E2959B223C323C140C0F04C38501C3B9091BCF83CEB43FC3AA113937C3A51E2052C3A455E294A410C3915CC3A0E2948C141D5C44E2948CC3B640E281BF2F280B4214E2889AC39C251602E29690E295A404E29593E2959404CEA3E2959A0C18E295A0C2ABC3ACE2959756C3ADC2AC331C147D6EC3B32AC3BBE28C90E296A0E295AB3DC692E29598E29597E295A0053E1FE2959EE281BF3ECEA9C2B76654E295A15727C3BB65C386E28899CEA6CEA93F52C3A7E28C90C2ACCEB4E29692E295A427633100E289A4C3A6E2948CC3B114C3B4E295A6E295A6CF83CE981FE281BFE294B4E2949CCF83C2A0E28988E289A4E295A7C2BBC2BBC2BB37407E35C2BC3AC2A5E2968C6F7B00E29693E296805AE295A014E296880027433210E294BCC2BDE295AC767D6E7A4C06C387CE98E294801257E295AB2E216609E294ACE295A7E2959C2EC3A2E295AA7C46C3B77FE28CA1C692E2949073C2B1E289A1C39FE281BFE296A07462C2A50224C3B262152FC3BFCEB1114158E295A238E295A16C71695B745F083A0541C3A923C3B7C3A4C3AA68C2B56B2D280CC3AEE295A710682F64C389C2B01234193219C39FE295A3E29590C39C4519E2889AC3AAE296A0E295A1E294ACC3A4E295A3E2889A26E2959C37C3A92534E2959F0BCEB4E29691546C5AE2898811E296931D5EE2959A6EC3A4E2948C0F157F0F59C38524E295A8CEB1147BC3860620CE98E296A0E29480657F01E294940A4C2CE2959DC3ABC3ACE29592E288991CE28CA0CF830DC2A34FC2AB602BE2959EC3AA08E29596447ECE98E2968854C3A6E29688C2AC04CF84E2959D6AE29482696621C2BC24C3B2CEB421C3866AC3AAE294A4C2B254CEA9E295A4C3A1C2B05905C3A2C39F053BC3A062755731C2BC4043122A4523C3ADE29591E29593790EE295A13204085DCF8041615EC3A0E288A9C3871EC3A93046C2A3E2959ECF84C3A211C3A5C2BD18E295AB2EE294944260723CC3BC38C396E288990044714FE2949CC2B52E56E294BCCEA93B7EE294A44DC2B5C3BACE981851763FC3A5723AE288A95B63E29693C2BD5AC3A1E282A7C6924BC3A5725DCF83E29690E296906C3CC391386F68E295A003247BE29494E296920720776EC3BA7DC2A07A19C2B1E2948CC2B567561E3FE294BC58141553E295A70349C2B7C2A0C3BA7DC2ABC2AB5D00E29494E295992733CF84273F3E15C2ABE295A6CEA329E2959E5B4FCF84E289A5CE9362226DC3AF40CEA30777C3A0202CC3BBC3BB35C2A55851CEA6753CC3BBC3BBCF804819E282A7E29599E29592E295A1CEB4E295ACC2AAC3BBE28CA1CEB5E29688E289A4E295A6C3BAC3BAE295A4E29482C2B1583EE29482C3B1E295950FE29494CE93E295A8E295A6E294AC5FE29598E295A344C38942C3A84B21CEA6C396107826041D74E295972DE295A30B7703C3AE457CE28899E281BF4039E295966CC2BA18E29596E2959EC3BCE295983ACEB1233B63C391E294980E5DC2A0C39F7B7C04C3A96806C3B6C3B90420E296A0673AE289A1CEB1C2A3E28CA02D1DC387C3B1C396C389643F00C3875CC3A5CF84325CE2959FE294ACE29590E295940C74720D7BE289A5356CC3AF3051022B666C3CE2959C146F40C384C391E295AC3FE288A94A725E4032E295A93CE295A4E295A443E295AC05634EE2968406E2959316C2B208E28CA11CE295A83926C3845E182FE295A5E295A3C2B0E295ABE295A423C2A04B12C3A9E29693E29597E2959BC2BD2325C3A8E28CA03244043EC38915C3BF6BE29490C2BAC3A137027AC2B7C3BBE295A7C2AB6C4078250568CE93607A3AC3A2733AE28CA1E2959C5642E29599C3BB4AC2B5C3BACEA95DCE98E295A96C54E295A1E2959255C3BAE295A4E294A4C2A01DC2B243E295A2E2959E7CE294A4E28899E2959D2EE29482E295A4C3915AE295AA501AC3B42A4D4755E289A1C2BF0B635175E2959DE2959BC3BFC385643FC3AB204723CE982C16235B0A51C3B62AC2A5C384E29599E2889E41E2959A1EC387E29684E295A36D171808E2948C72C2A25D46C3BFE295A2E2889E45E29498E29680C3B2E295A5C2BFE29599C3ABC3B1C2BD6B0FE295A8740D30E2949458E281BFE28CA027E289880EC2A0E295A6C2A0CE93E2968C33E295A755500AE28CA0C2B0C2B1E28CA07CE295A3E29691E295A70048E294BCE2889EE29692C3A912026234C3BBCF84E295A22DCEB5C3A07F27C391E2959527C3A43827C3A90C0046C3BF513225E294ACC3A9C3AA16CEA3577E1271E29691C2A2E294ACE295A1E282A700457E17C3AF6EC38570572662C3AA1AE28CA0E29598E28899154D180242E295997E64741F0C56C2A3623BE294ACC2A0234AC3B2E295A97EC2ABC2BA6225E28CA123655E20615743C39FE29595E29597C2B1E29594C2AB0D0838C39C0067534C0FE2959F705EC2ABE29692E295955570C39671C2BDC3874DE294940810E294BCE29591105DC2BFC2A150520D2B75E29684CEA3E29591C3BCC3AD27E295A3C391E28CA11FC2BC61C3B6E294A4C2BF3DC2ACC3B61579C3BB2042E295AC143015C2AC00CF84C2B0CE9856C3B1311EC3BC2B3AE2959FC3AE47C2B75CE281BF73C3B148C2BCC2AB7FC3AB0019C2A1C391E294946A62E294B43EC39C607CE29692E29494E28CA06CC2B5E29597C3A1C3A74EC3A8E2959EC2AC50CF866255C2BC6DE294BCC3A652CEB1635BE2959FE2968039C2B5C3BA0808E2889E7A75C2A16D1FC3856A5D56E295A612C3AFE295A6E289A4E28899C3B4E288A97FE28988CE93CF80E28899E29684E28899E28CA0C3AF2FC2BB147CC3AC621E0342E295AAC3A2C3853D00794DE29690C389E295ABCF83384D18C3AA2EC39F0DC2AC084DC3B2692DCEA914C3A8E295A7C3A4E2889902E289A1C3BCE29596E282A7E29590C2A31F7CE288A9506E367E15C391674F67E289A5E29690E2959CC3A624223FE29596E296806348C3AF70723CC386E29482C39625E295AB6B451B57E295A47C66E295A6CE98E29480124A31791ECF80C2B7E2959E75C3850E1DCEB47BE296803D7A7478603F0CE29599E295AA2713E28899E295AAE29692E294BC43062C56E2889E05C3AEC3A06559CE93C3A6C389E28CA030E2959DC3A942E295A82321E29480E29692C396E29688CF805BCEB405E282A70B541EE29590C2AC171DCEB4E2959E7CE2959849E28C90C3911ACF86544700C3AB7216E28CA0C396C692E2948222E29599342848301FE295A95FC6922A5601CEB1C3AAE29599C2AC3C0FC3BC3705C2BAE2949407721810C3B25B052B0F14E294BCE295A7E29591E289A5C3A0CEB5C3BB00260EC2A3C3BA09E295936733C3AE5FC2A131E2889AE289A516C2A2C3ACE294AC4B415871E2889EE294BC112EC2B0E289A4E294A41EC396C2AC58C2A32C4C4454CEA317C386CEA92B28E28CA1C3A7E28C90CEB44D14311FC3A8E28CA11BC3BA1D584BC38652E28C9043E29594C38931E295A44ACEB4CEA960C3A4E29599E29494C3A2637F11E296804DC2A5C3B4E29592E294B41870C3B2E294ACE2948CC3BB50E2959F53E2959AC3AF0546C2BA33C3AE1723C692C386514D1DE29692CEB4E2959EC3A1E2948C6A3AE295A8E296923F75E296882D6AE295A610E289A41119E294826CC3AFE2889930CF83CF8051755DC2A2683EC39C044BC2B7C2ABC3A84530E2959F58E28CA0C3912169E295ABC2AB1034C2A5E29590C2A3E29599E29599E29599CE98723CE295A2C3A800E2959FE295A2E295A8E294987EE296880310CF80E295A0E294BCE295A800C3A1E288A97EE2959801205521E288A9E29591E295A302E295A142CF84C3BAC3A6C3A1E296885B05E29480E29592C3ADE294ACC2B23C64E295A6CEB471E29592E295A0E2889A0FC2A0E28CA0CEA3C2B05FE296A027E295A74E371B0241C3A8274F26CF84E295A6C3A075E295A9C38754C3A83D665642C3891C4FC2BC73E296881667E2889ECF842209E2959FC386CF8452E295A519CE934C1005E29490E29593C2B0C2A3E2959AE295AB4D30C3A204E28899E29592C3AD385EC3B3055AE2968C50C3B411757766C3B7C3A6CEB52BE2948CE295AAE295966BC2AB19C2B5C3A2E295A3E29690C3B20AE2959C3EE295A5CE9850E29692E282A723E296A0E29490CF84E294BCCEB123C2A1E28899E289A17FC692C3B976C3B253E294AC376456E295A502E288A9E295A809317C78C3A2C3A0E29591C2BA18C3A910C3AAE295A44778E28CA1E289A10074CF8062C3B76AC3ACE28899156342C3A4C3B2C2B5C2B7E2959039E294822C514EC38441C3A8C2B108C38549C3B65DE282A7E29692E295A230C39F5455C2BCE29480C3B4C2BA6B36E294AC6B19C3A907E2959C2FE2889EC3A204CEA378E29691C3A4E2889A4B6DCF86C2ACC3BF320CC3AA08E295A6E289A5722AC3A9C3A62E4D4C3E185CC2BB14E2959DC396C3A47C78C387E29594E294822338C3AF51E2959D73CF80384BE29688677B685FC3A6E295A2E2949CE29591E294B4C3B75E1BC2B5C3BA28E282A735743CE295A45455C2BCE29597C2B5E28988E295A4E295955DE29593E2959E73E295A959E29596E2889E41E2959F1EC387E2889EE2959EC3B43AE295A84868CE93C2B06D2C5DE2889AC2A3C3ACE2948C02C38926E2959FC3AB66E29688007CC3AA470FC2BAC3B7E29597E288A9E295A0E294BC7AC3BA4808E294AC5B4F67E289A5E281BF6C2C40513A0C5B16E295A4E294B4C3BC2D27134BE29591C2AB3F00E29590CF84E295A2C2A34CC3B17CE2889972CF801E1F39C3B7E288A9C2B2E289A1E289A1C2B1E295A4C3A6E289A44029526021C2BA53C2B1E295AAE295A2E294BC03C387C391627800E2959700E29498C3BB2D1E4B490F43C3A121C3A0782C041D363BE295A1CEA92859E2889E6BC3A6E29690C3960B305F7E14C2BD1DE289A451375A35E294A46B6E51644E071CC3B65ACEB464E294BCC2B5C39FE295A7C3B649E2959F4AC3A20F2400435270C3844CC2ACC3B2C2A0C391CE93CEA95805C39C0FE2959C3A16C389E2949CC387C387E294825721CEA60F0906295FC3AE7E75E295A3C387E28CA172C3A0E28899272F31E2959BE2948C60E296920136C3AEE294943B236041E28CA0C2BDC3B157E294B44A1317C2A32EE29592E295A6112FE294B445E295A70BCF84237BE295932E3869CEB143C39151C385E2959327C2AA107469C3AE4902C3A410C3AA0111C2B07BC3B13520C3B17DE295A7C3BA51093E13E2969351C3AE570A10631BE2959F4FC384307F760C7B6A47397859CF86C389CE982A5475E29688E28C90E289A479C3B4E296A0C3BF620AE2948C6A2E52206470E2959047E2959275E2889EE2968801E2959BCEB5E2968075656CC39C6A3ACEB5C3A9E2959979CF8476C396C3963DE295A7535C6240C3AA162FCF837EE2968803C38941E2949445E29599C389E2959AC38900C3B1E295ACE295A74D18E282A72621E289A1E2948CCF84391A09E296925A2518C3AF704BE2889A5BC389C3B7E2889AE295A917C2A01FE296A0E29498E29498E28899E29490C2B00F1EE282A7C2BC561E4B29E29480E29596E2969059C2A31F1EE295AAC2BAE295A0C3A1C3A14AC3B6272559CF80C3AB0CC3BF0B520009E2959F11CF84C3BB45C2BA613B42604E44E2959968E28899410819C3AE70C3A4C3B7E295AB3A44730A590A7F693FE288A97E7B4D44E29599C2B7C2AC403CE29598C2B1CEB4E294A4E29688C2A529E295ABC2BD4C450ECF8448C3A8E295907570C39F03C385CEB1C2BD107C24C2A0E295A7C3AEE295A0C2A0E289A40048E294807E707629C3897E22E294AC7E7BE282A7E294AC660D784260733CC3A073E29692E29494E29590E294984B382B0F272FE2959310E295A9E294BC1AE29494C39CC2B2C2AC582AC3A411297F1046523FE282A767E29680C3BF7E460979C3AE48E29693E29482197D48043EC3864C477A0061C2B01DCEA3545A55E295A0C3AA306454E295A8374FE2959F424816E28988CF84E295A0C3864C30E2969102C39FC39165617C38E294BCE281BFCF86631CE2959C75CEA303C389C3AEE288996051C3B17917C2AC62757DE295A7C3A5623EE2948CC2AAE295A5E28988717CE2959EE29691C39C0E1363E296A0E295A855E296925E3BC2B5235A6328E294BCCEB566CF80E29692CF84714216C3B9E29482E282A72154E29597C3A2CEB5E295963D00313AC3B352E295A651200F7EE29599E29494CF844015C3BA09373CE29490C2AA3938E295A1C387E295AC6AC39108003D7830E295A2C6923CE282A709E295A76558C3BBE29494CF8047537972E2889E4829C3AB19C3AEE29590C3A52104E295A4E29594E296922367334BC2BCE295ABC3A8C3B6625A2C6C39194BC3AD18CEA379C3AE172FE29593CEB5E2959C7B63CF840F7FC2A0CEA3E29594C2B1E2969273CE9879C2BCC3AA602DC2B5E29593CF80C3A623E288A933E294820844E29684C2AB10645B163D11C3861E003E00E296922C7A2C042D4DE296840A0E42E295AA315B51277A557E2963C2A1455DC3AC46E2959928C3A6C3ABC2B2C2A21EE294906D0DC2B7E2959D6316C2B7C3BCE2948000C3A2C2BDC385C3A616C2A5E2959FC3AE47E289A1730E28E295A44148CEA6E28899C39F0BE295A8C3A601280900C38648E29597E295A97A7F70E281BF3C693F27C2BBC3ADE289A57C0D03E29498026262CF80C2B578C3A957C3B90B2C572EC2B5C2AB02E295971E5EE29494C385E28CA0C3A7C2BC43E2959A2250E29594E29591C3AE322028C2A0E295A1C2AAC3AAC692C3AB11C3A7E296A033312767CF86C3A13CE296915F45C3BF526DC3A02DE2959E6DE29691060E1300C3A4094CE2959BE28C90211117030F4DE289A4C3A6490153C3AEC3B22DE29692391863C2B760C3ABE294BCC3BA032CCEB5E295902009C3A6C3B7233F4BE2959A6415C2AC3ACF86E29598C3AB1771E29590CE98E2959A1453E295A8E296913DC2AB380FCEA9E295A9E2959D74E28CA1E29590687A7DC2BDCEB56B5BC2BAE289A436C2B231C391CE98E295952B7E1FE2968CE2948C2522E295A6E29693CEA36434E296931C2148343C58E2959203E29595E29680C3B700C3B176E282A748C2A24577E2968CE295A7C3A56220C39CC3A5C3BCCEB4C2AB0673C385C39F38C3A9E295936B0564C2BD4279E2959AC2BBCEA6C396E2959364CEA64CC3A5E281BFE29498C692C692E282A7C2A0E289A47F76C2A068750B35722CCEB4E2968C776617074BE2889A1804E289A5142BC391E295AAC3B4C386E2889EE28899E295A03E776C71E294ACE295A00A20CE9838CE93E294ACE29693E294803108C3A9E294B41E184C0421C3A458C2B0E295A005337C4DE294BC5C10C2AA1CE28CA1C3A75450E2959033603428C2BC2A35E288A9377AE2959957E28CA06ACEB1E2959D6DCF8038E295A36E14C3895AE2959D663A282C1E2AE296930BE296A0E28CA0774E7CCE98CF8374C3B4C2BCC3A74A7C16CEA942C3862958C2A32CCF83C2A2037AE289A5C2B7C3BB3BE2949405C2A02862E29680C3B64F4A6C66237CE289A4C2B010E295A553585EC2BBE2969258E2959738C3A55F06E295AA0BE2959D36E294AC74265D0312C3A0E28899C2BF6470CE931CE29691C3A5624155E2948C353DC2A502C2B50BE294BCC3B4E295A77FC2BC0D09C3AD070144C3BCE282A723066221C3AA12C3BCE2898807053045E29482E294A4E295A0683EC3B3C3B7E29494587B0A57E295AB2EC2B0E295AAE294ACC2B0C2A5131C7DCF841EC2AAC2BA5358E295A2043C55432CE294A46B55E29692C2B71CC3B40CE295964734E289A158644AE29599E295A4C3B6413139C2B5767570E288A973E295ACE295AAC2B5E29593CEB13E04C3B94A4AE29692582C47C385E295ACCEB52D4EC2BA5347C2BBE2948C5DE295A23EE2968403C3AE3D006905C3A7C2BDE29690E29494C2AAC3B3CF84E295916FE288A9500C04350C65C3AD0600290CE295A7C2BCE295AB3E7371C2A0E296A0E295AAE2959B7F3116C2A20DE2949CE29693C3AA1E3CC3BFE2959AC3BA434700E2959B0FE294ACE2959E55E29691C3B11047E2959FC384C3BF4D2DC39F79C3A800C3B3E294984CE295A9C3A623E294BCE289A4171BE288A9E296A0CF83E295AAE28899C3B43F3E797272E2889EC2A37B1E2941642D16E2959353E2959F11170CC692E29692606657081A39E295A27C2C255D0640475AC3BB7822042DE289A5C2BB4EE295970136662EC3AAE2948C45E29490C3B3080BE29592C3AF4A5645C2A5E29595CE936FE28C90C2B563E2968037E289A4E295A4E28CA0C2B07526E295AC6E55E2969262CF8647E289A5735FE2959DC2A3C2A54B385035E2959FC3A1C3A234E289A1C3AD0104C3B26640C389321D44C3A811E295A458C385E295A8274405E296A0172100E295A40049C2AA4FE28C90E2959BCF845D1766E2968017C3A4C3A0E294ACE2959EE29692CEB1C2A5E295A731E29591E2968CCEB1CEA9E295995770C2AB3658786BE29595E282A7C3A715075E1BC3A8C3A102E295A478E2959D40CF84C3A13011E295920CE2959D723DE2949447E28899E2959B0F2A70681714C2B55FC2AAE295A96F05C3B3C3B6480B1256E295A30AE294BCCF84E295A4C2ACC3BCC3BAC2B7C396C3ADE29490C3A76E34C3BFE29590C692E289A1C2BBE28CA1C2A1025E10E294B459C38471E296A0E296A029E295AC3E38E294BCCEA360C3B6E289A4E281BF34791E5173CEA6CF86E295A54EE2959934E28CA0C2ABE2959B1755CF8655300FCE9867E295A2E29693CEA955C2A5CF8075E295A31F6D351D40E29597E294BC7E596CE294A40D2BC384C3A9E29692E294A44AE2949CE2959934E296A07857E281BF3EC39C03272169CE93C3AEC2BCC3B4CE98E295A0593AC384E295982F20CF8641E2959A1EC387C3BF062354003AC3A8CEA9E295985105C389287A30CEB4E2959BE28C906DC2A5E295A1C2BDC38753CEB5E29680E295AA36C3ABE29590C3A5E289A4C3BFC3AA747528C3B17E2F523F13CE93CEA9C3BBE295AC5FE281BFC3BAE29482E289A4E29490C2B0E29498E28899E295A4E29592C3B2C2BAE2959E13697FE289A1E29690CE93E281BFE289A1E295A83E6205E289A55CC3913CC385C3B265097BE295A3E294A42FC2A3C3A63C0AC2A3E295A3C2A1C3A6232F2CC3AFC384E294ACCEB42F25E29590C3A0C3A169C389E28C9021C3A4C3AA7C2D224D2BE288994C46E294946C04E295A613C3BC793BE289A1E295A436C386E295A5C3A0E28C90CEA6C3BAC2AAE2889ACEB4E294AC7C0C5515C3AF321FC391590824C3BF0F5DC692C3A6C2BAC2B2CEB1C3AEE2959647E29690E288A933CEB5CF84C3A6E29593C3A2735CE29592CF80CF84C3A04B3CE296A0C389E29482E295A2E289883C055E316C47E294AC5AC384707B36E2959FC3A7170B1CE29684E2959538E2969078C3891B0F2B0578E2889EE289A408E282A7E289A55DE29592C3B43AC3AB223D45E295931FC3A4C3AFC3BB4BC39C737A04C3842859C3B756E29596E296A00AE295A60323623E28E2959BC3B714332222C2BF7E15E29591C39613E29693C2AAC3A261E2959714C3B2E289A5C3B344CEB5C3B2C2BBCF86015C57C39F560AE296841E4E307D74C3A4E289A40FE295AC70E28899E295AC31E2959E533B603FE2948C3EE289884357E294BC6A73E2959D3EE2959E38E29599E295A047E2949CE2959A766F63C2BCE28C90E29692E29693CF8075CEB47DC2BCE2968C39C3AC46E29490CF86C2B7E2949CE29595C2BAC3B6E289A534117A7A3D270AE2959347E2889A6D0F401AE2949069C3B60316E289A57EE295AB06C387C3AAC3BBC2B26DC2A2545B377C4500CEB1E2889A58405CC2A3C385C2A5E2948253476C360CE29688217A7039160707E295A2E295A758C2B0115CE295A26D41E2959F47E295A21C4FC3B1E295AA6CC3BF08C3A1C3A2035B4C2652E295952EC3B4CEB432E2959BE2889966CF803D7D321D07E295A0E294BCE2959CE29590C3A53D21697478603F1EC385E294BCE295A35220CF83E2969262C3A52725C3AC4623E28899E29480E29693CEA63CE289A1E295A3E296912D4B3C1132106D73E29596C3AB2EE295A9CEA9674AC3A02BC2A21602C3AFE289A5E2959CE28C90E281BFE2969376C2A108C3A2C3BBCF865545C2B1E2948C44E29692C2B7643E50E295A5E2949061C2AC62E28899E295A0076517CEB55C21C2A14E55E2959C4A6B3FC3A8E2959B540133C386E2968CC3B9532957C2A3012049C2AAC3A272E282A7C2B0C2BCE288A90D33E294BC4EE2889E24E289A1C3B2C3B6C2B04AE2948C38C3BB16E2959B2D0426C3A9E29691E294A47C11E2959172091EE2948256E295A1C3A8E294A4C2BA27545F5002741414C2BD4AE29690E295A43CE289A4E294ACCEA677313A08E295A602E2959F2702C2BF40C2BD110DC2ACC3B60621217B15683A345F1311386EC3A555C2BBE2949461152FC2B21CC2B2CEB4E2959B51E29494C2A1E2959FE289A1C2AA36E2959E4FC38471C2B0E294B4194EE296803AE294ACE294B4E294982C347509E295915577E295A467C39CE2969268E295A54EC3B92A5CC2AAC396C3A902C2B5C3BAE29482E2968047E29599E289A442E2949CE289A4E28C90C39C234C39C2A5E2949CE289A17D48C385C2BD7D6A43CEB5C2AAE2968047E2959425C3B942C3892DC3A4E29691E295A17846C3A609C39F7EE29688031023E29494C3A44AC3874815E28CA1560654C3A8425145E28CA151C3AFE294AC1CE295940B6311E295A32E0349E2959004235B0D4AE295AB56CEA6E2959EE2959E3ACEB431C2B7E2959F7F7EE288A9CE93E295A77E7A7A7075CF867AE289A4C3A0CF837CE2889AC2B2E28899E28899C39FC3BC7D18446715337BE295A22DC2A3E294BCE294ACE2959BE296911D71C2BF142B21E2959AE282A7C3AECF83E295A36DC3ABE2949C60E295ACE289A12B5E12492968210426E294B47A4A0A19682DE294A4346DE294902A2D16443441E2889ECEB13DE295A624C3A7E29596E294ACC3BF7D30167D544619E29693E294ACE295A010E295A4C3B15DC2ABE29691C386C2B23FCF8418CF8471E294B4C3B339C3BAC2B240E2959BC3B723061D3AE295A6C3AD524C48C2ACE2959115730178C3ADC3AEE288992051C3A6C3B7237FE295A56506C3B124E2959AE2949420CF80CEA9E295921AE29490C2B7E28CA0067FE28988CEB41B2C3FE29498CEB1E29592C3A8E289A1E282A7C389E295952F3CE295A0444869C3A54C03E288996965C3AAC3A0CE9811CEA64879C385C3A40C06152C5DC3A846E294823CC3BB0528C2AB7DCE981B27124470C2BBE294AC12E2959744496F0F1100252FE281BF2CC2B0226DE294A454E289A1E29599E2959C14E281BFE2889A75C2BDC387C2BB37C3AECE9872C3AEE289887FE281BF006FC2A0E29594231CC2A34E3B3EC3847D3016436A43C2B7620AC3890219E29688C3A8C2A3E288A96255C2BCC2ABC39C0E36703FE29680C3BFC2AC57E29594E295A1C3B214E29482E29594E2959A7AE294A4C2A3C3854EE2959F232BE294A448E295A5190FE295AC5937CEB501E295941EC38734E282A709E295A94C66C2BF04C3AAC3A1CE93E288A9C39CC3A4C3BBE295A91EE29684E294AC5124E289A1C2BA10E28988CEB539E289A5CEA6E295A811C2ABE295A618C3AC04E295ACE288A9C3ACCEA3626E0B462C700D7D2DE2959E23213DE295A7C2BB1A35C2A249695B427CE289A47CCF80E2959BC2B2E295937CE289A5673F3D7D7272E2889EC2A3E295912E7BC3BB45C3BAC3BA43CEB4E295946824CEB5050B0F05E2959E464AC39C38C384782A2DE29591CF843316CEA338E295A27822244DC386E2959CCF8646E29590C3A7C3A071C3A8E295A112E28C90E29490CF84E2959825C3AC79C3A812C2B5C3BA0EE2949C507740CEB5C2BDE294AC4C51E28CA0C2AC0919E2959334C3A8E29592E2959646C3B168C3866DE2949CCEB1C3B64524C3AFE2949447E296A0E28CA1E295A8C3A2E29691E295A47EC3B6555C274048C3BCC3B723533AC3B9E289A4E28CA01FC2A3653812C3841EE295A3E288A905E295A5C3A9E2889EC3B3C3AD22C2A2C38445E296912CC3BCE296885B175F7C71C3AF5FE281BFC3B715E296A0E29590C3A7E295ABE29691E294905C0316C3BC2DC3BC43C3AFE2969220C3A043CF832FE295A923653853E2959837E2959CE289A5C3BBCEB5E2889AC3A6E28988C3A471CE98C3AA167AC39C50C3A90009E29680CF83E295A8343014C384E2959F25C3BCC2B27F0569E295A0C3AEE2959EC38944E294944313C2AACEB46FC3A6E295A8E295AAC3B2E295A8CEA3E295A863E2949465E2959EE2959E63C2BC2D09753CE2949CE2898830C2B10000200049444154E294B4E2889EC2A1633CC2B7E295A4051E7DE2889A14C3B4C39613E29595E282A71769C3A7C39C4468CEB446E295A2E295A4704C32CF83E28988E295A434E294ACE29684E294A4E2959CC3A9C2B2C3AEE288997DE295981D1FC3A5C2ACC3A8452DC692C3A6E295A2C2BC78C2A57EC3B9E295A1533567E2889EC386E2968047C2B2204CC2A13B106A3CC3912029CEA36C34C3864BE295A612451EC2A128593FCEB575207B0052E28899C3A4C3BBE296921D55E294B438E29598001DC3B644E2959244C2ABC3B9602CE295A5E295A044C2B7E288A95C0D790349C2A145C2B077C3BAE29490E281BFE29498E29498E288991FC2B2C39FE295A4E294B4C2BD2BE295A73B3CE2969147E29680E296A0CEB1CEB1E281BFCEB1E294943E501EE2949C53C2BC3CC385E2959CC3A623E2959EE295A603E2889AE2968471E29480C3AD52E289A1C3B1C3873DC396E2959A73E29688C3B343062922084BE295A5C3A904C3ACC3A2023852E295A9C3AAC396E295A8E294A4162429642CC3BFC396C3AA041126CF860A7EE294A4C3AB7AE29592C3BF10E2959A54E29598C2AC6FE29596E29688212BE295A0E294A4E295A3CEB5E29688C3A84A520FC2B2E28C905953C3B320C2B22AE295944420C2BDCF86CEB13CC2B523E288993DE28C900141C384E295A747E295AA4E7EC2B755E29595CEA66F17602608412022E2959D7CE295A3E294B42F7FC2B1021FE296A0CEA9256E5F6EE289A1E295902DCF80C2A012E29494C2A12D604FC3870F2470622BE295A00520E29593005CC3A852E295A074E29494C3B2C3BF695369E281BF29E2889AC384E29684273ACF865EE282A7C3BFC39FE2949CC3A856C3BCC39660C3BFCE93151A09C3A522735DC2A0CF863BC3B1E2889AE2949440056DC3AA541FE28CA12CC692C389E295A151E2889E0FC2BCE295961BE2959E37E295961E46CF84133CC2B7E2959443E2959DC2B2E2959F0F71E28899C3B71116E295A6C3A6C692C3A0C3ADCEA9E29480E29482E2948CE2959B1F6D18C386C2ABC2B269E29599E2959F6D47E295914D6B4476E29592CE987CC2BF7EE294902EE295A0474F1B433D7F7ECEB4066B2F0841146842046246C3A40A02E295A57C774F7CE29490C396022075E2959D30E295A54042C3B17E276A02C3B6E2959DE296914AE294A4E295A3C3BCC3ADE29590E29498E28C9023160B4BE295952EE2949C7104C2A5C2A53A7236E2948228282DE295A7E282A7E2959FCEA338444747C38418C38504C2A1E295AB4AC389205A2E2C311E49C3AD14E2949CE28CA118E295A7C692E29597CEB5E2889AE288A9E29590C2BAC2A0CEB14F4FE282A71C1F3927CEB4C3ACE289A56C5B4CC384C385C2A327CF80E296923C0D163E0A0C575A3419C385E294805369E295A42933C3A9C2AC51E28CA044481A271CE294B45A2ECEA902E295906CC3AB0B7755E28CA02AE28899793EE289A4C3A613E295A1E29594653E38134D4D1A1AC3B6E28CA1C2BD6DE282A76DE29592E294946D2ACEA956E295963D5351C2BCE29591E295A0074AC3845F27C2AC57E29592E294902ECF8079C386E288990817C2B14439E295A773C2B5743921E281BFE29593E29599E295A232E2959B1F400178CEB15CE29490101DC2BCCEA66D2AE29590615BC2A0E2889A3838E29684E295A02F42083FC2B20A00562B0F5F7DE295A1E294ACC2BB7FC2B212C6927E740575E29482E294B4E295A963E281BFE295A9055811C2B5420023E2959EE288A95BE294943C604222E295A8C3BAC38755C2BFE2949066E2968CC3AF2315E29692C2B5E281BF255176CE984C0963E2959FE2889E2B10C2B0750420E2948057C3A5E2959EE2959649C3A40573394EE28C90E295A90ECEA3C2A3E2959A374D3FE294ACC39FC2B2E2968828E2959E4A08E295950B0B474F0EC2B1E295934F1ECEB1E2968C1F3FE29494C2B1E2959C19E2959A12C387C2BD6B6BE295A2E294BC58E2959819C3B1E2889A703A37E296845E254162E2948C69E2959CE29594C2B0E295A8E2959FE295AAC385C3A5E28988C3AE0C3D474DE2949875537346E29599E29692E2959CE295A6C2B7E296846C352DE295A5C3A05DE295A020C3A978C2B7CEA368E281BFE28988C2A0C2B7630700056375E295A4C2B7C3856B4CE282A7E2889ACF860D032055C3A1C3BACEA62B64C2B1494A1241E29591537A444CE2959771532AE29595C2BA57C3B40AE28988C692E281BFE2889EE295A7E295A7E295AC7FC2B0C3A2C3A2E28899C2BD571B7572E2889EC3AEE2959BE289A4C2A5CF83E28899C39FC3BCE2959C08190BC39158C3AC47727474E2889EC2A3C3851CE29692E289A17CC2A1E294BC6836C3A6CF84C3BB2DC3BB60CE93E29494E29691C3BF49E29494E29693242DC3A4C3A131332B102C29E294804208C3AEC396E295A17E122C41E294A420E294AC187EC2B5C3A91402CF8061C3BA173DCF84E29498521FE295A1E296844D47E29594C3A56E6FC2A2E295A4C2BAE2959BE294A42B3D55E294BCE295A969362B38CF84040BC3ADC2BA6121C3A66EC3B2E29593C3A2C3B1351E1CC3B2E2968C65C3A44268E295ACC3B175E2959259C2BA31CF84C69267E2959D6026E295AAE295A2E294947ACF83C39FC2BDC2BB57C2B0CEA3CF806B7CC2B7E2959435E282A77FE2959CC3A9E289A518127ECEA9E295A5CF841EE289A17FE2969002374AC387E2959FE29494E2889A167066331642E294B45E03C3BB0BE2959DE289A1E29592CEB1C3A120C3B7C3B9C3B728E295A43D42C3AAE295A9C3A0CEA63A0BC3AD0FC39CE295A460E295A9CE9841C39662E2959672E295ACC2B544003E43C3B31F46255C3F38E295A4E2968000E28988C39F76C3BAE289A1CE936603E2889A64C3A5073FE29591E294803B7FE28CA0106FC2B2CEB102CF840F16701C1938E282A7C3B9E2959CC2BD433016C2AAC3BFC3BBC2AAE2889AE2959661631BE294A447E296886463E2959631C3B7E289883547C39CE29598C3A560E29494E289A4E294AC6EE295A21F5C22E29688C3BBE295A6E29490E296A0C2BDE289881FC2A0CEA9E295ABE29680E29684E281BFE29490C2A0CEB5E289A4C2BDC2A2C2A2E29590C2AAC2B5E294B4E2898869587B00E295A51A7C44E2889A3223041FE289A5E281BFE282A763E295A7CF84C3BBE295AA6C14E2959E2349C2BAC2BAC38435C396480AC3BAC3BFE282A7E2959F6459246633E295A6E296932D213DE294BCE2969124E295A47C6E0929C3ABE282A7E29490E295AA78E29680E288996031E2889AE29482C692E282A73C393A72C384371BE295A119C385E29480E28CA0E28CA074E28CA0643412274AC3BCC3B26205E29494E295A12CC39C4D26E289A5C3AB65E295A431333642E295A8E29480E29692E294BC5321E295944115E29594E295A8CEA33D53E296A0545ECF864B51C3B9E2969240E2949CCEA615E295A82CCE931FE296A058C3B9E28899CEA6C2BD767AE2968C6853E296801566C3A8C3B358C2BFE29595C3855511E294803A1AC3A636C39CC3842616374DE295ACC3BAE2959B6FC3AAE295AC7C6418C3A0C2A369C3A2E295A31E282E031B45CF83741959617B5147E295A5E296A01BE295A069E29494C3A6C2A0C3AEC3B4E289A153C3B46E6F3D7CC2B7E29594353EE296A0C2B00AE295A7E2949059CF80C3B7E29593C3A2C38904C3AFC3871101E29596C3A8C2B1E289A40DE294B4656044021E08E294906F2B2C093850014BC39FE28899E29592C2BA6E55C3A1E281BF50CE98E29597E29494C3AB52E2959DE294B4C3B2C3ABC2A5E295A775E295A13A53E289A54CC396C3BA32E29597C2B1001CE2959619C3B2CEA90DC396E28C90C2A301E296884FE2959C4AC3BBE29593C3A00658E281BF68C3AE6FE295A218483AE29691C3A6046F3EE294ACE295A4CF8003E2959DC2B2C3B4C3A778E288A9C3851FCE93E289A5E2959401C2A3E295A303E295950AE2889ECF8355E2959C1AC386E2969268E296935FE29498CF84C2AAC3BFC396E29591C3AFE2959B6DE288997DE28CA0CF86C2A2E295A475E2889E47C3AF7E37C2B1446AE2948C4E1F4ECF84E29688603EE295A0E295962FC391C3BF3C7C7870C3B7473F7EE281BFE295946F7FE2889AE28CA1E29590E29590E2959026E288A9C2AACF8369C3ABE28988CEB1630F402A47471202CEA338C3A96E6FC3B2E295AC56C2BCC3ADC3B2C3840F1EC2AAE294983FC2A067E289884EE296907F6FE2959B78C2B1E294ACE28CA1E295AC4EC2A5E2959407E288A92FE295A7170B6B11C3870FCF8379C2BC4623393D3C70E295AC1D5B2CC3B6E289A5E294BCE29684E29599C396756E5BE294A460E2949423C3A9E294A42CE2969214C3A4C3A61F4BC3A4252D5A08C3B3E29692561D4A11E294B416C3A916246804C3A522C3A92504C2A3E2968CC3AA60377DE294907AE295ACE29482C391E2959BC3B3567D44E29490C3A5C2BC45E2968067E28CA0701BCF86C39675C2B14DC3870F2E0BE2959E5266E295A41F3321C2A310C3A5C2BAE29599C3913847E29599C3A6760AE295ABC2A02EE29598C39CCEA6E2959FCF80E29598C39CC2A1C2AB0CC3A4C3A9153BE294B40FC389E2959D78E29692E2959E6F7EE289A40AC6927C7CC3A2E29590C3A54144C3A6CF84C3AA006011CEB132E289A1C3A047C2B057E29596C3A46F3CE2959E0BC3A7C2B1E2959B20E2968467C3A073E294B41803784EC3A4C2BB111AE288997154E295A516E295A0705933E289A46B3172245CE29599E2949C74C2BD54752B045E1FE295A079C3A93C2E6E33C2AC78056C5CE2959E5A29E296847AE29494E28CA0E296900C6F7DC2A01C6FC2A0E294B47D7CE2889AC3851FCE93E294B4E2968847184DCF8620E29596C2ABCF8673E2959CC3AC6A567D321F26E295AAE288A9E295A27E1F7DE295A059E2968818E2889AE288A952E29490E2968050C2B5236748725DCF83E29690E296906E3C15455132E2948CC3852A71C2B77E7B030148C2A130C2BD52E29494CF86C2A1E294AC6422E29480E294BCE28899E2959AE296A0C3B7070BCF84E29597E296805E4C6633E295A6E295A3E2959CE28CA1CEA6CEA9E2948CE2949C575F6DC2B0E2889AE296805B2C7FE281BF07C3A7E295A7160BCEB478E2959C52CEB5782C662727C3BAC2BAC38423C38443C2B5C3A919E282A76DE295A47C32E29692E282A758161DE29693C3A92B244D1D473C11C386E2889EE294AC404BC3A2172AE295A658E294A4C3AB18E29480E2959F69E2959F7CE28CA0C39FCE935B336AC3B27661267DE28CA1E2959A15E295A047C3B9E2959DE29690E295A2E295A42FE295997E1F65E2948CC3B23AE29592C2BCC2ACE2948CE2889EC3B3116912C2A56A5BC3B22B6FE29680E2959155C2BBC3A8C3870847C3AFE2948CE281BFE289A5E295A7C2A3021FC2B1C2BB594BC2A5E295A9C2B77570C3AD2748CE936A71E282A7C2BB47E296A0E289A4C3BFE28CA0E28CA1485EE288A9C389E29498E295A403E2959442C2B0E295A0E295A0E28CA1E295A1C3A7C2BBE2959BE29591E294BCE2959F1F5DC39FE295A62F6FC39F7A0C12024A297020E29593E295A201E2959AC387E2968CC2B0E295A307E29684C38700E2968802E29688E29494C2B1C3BF71C3853DE2959AE295A1077BE2949CE29494C39C215CC3A545E2959B63C2B04AE28899257123E2968CC3AEC2B518C3B3C3B3E29482CE93020D4B3110E295A441C3AA4AE295A0E289A15C22E294AC4BC3BB28565A3F54E294947C78C3A9C3A11C1BC3B7E295AAE2959EC2B13BE2959F78C2A0E295A7E282A7CEB1E2959C1FE29680E2959FC3BAE29596C385305AC3847CC2B563C3BA6220E295AB69C3AEC387C3ADE29692C2AA6D3B43C3857179E2949C4113C2B5C3BA69152D53C3AEC3A0CE98CEB4E295A56C2ECEB576E2959D2ECF84E29680750E400FCF866CE29597C2B2483B2A1C47E2948CE29482C3966309414D2AC2A5C2B57D563DE29494E288A9E29596E295AB06C387543D14C3ABE28899CEB4E2889AE296805DE2948CC2A0E295A4E29490E2959538E281BFE2959FC2A0CEA6E2889EE2959C27C385277F3972CEA33B4AE294B4550CC3851533111C296949C3A431331408E295A225E294BCC3A9C3AAE2959E1CC2BB1E1411E29498C3BC53E289880811C3B401E29597E294A417C3AC4BE295ABC3B7193518222A66C3AAE2969220E29599E295A41F5379E295A26DC3BA35C2BB0B5351CF843AE2949CE295A873C3A40AE289A151E295A43E23C3B93CE295A737E296A04B010914C39605C3BB797A681A10C2B5E29598E2959BC3B60B5CC2ACC38748E295A4790A41183902E29596E295961EE2959BC2B772C3A0E295A73EE29597E294B4E295AB5FC2BB7075E295A1094A067346C3BF4100E2959A53502ECF80C3A0C3B6C2B0E2959064C3AE7BCF84233CE2959C1861E2889E6D30E2889ACEA325C384E2959BE295A3E294B4E2959AE2968860C3AD14E2959B61E294AC0B22E2959D0470C3BA7CC3B1103AC3A6E29597C3AA2AC2B04230CEB125E295A5E2969362C38424CF86C3BF1EE2948220E2959138C2A54151115E2E346F4AE296805AC391C3915EE295A3E282A7E294AC6ACF8641490131E295A171E281BFC2B000E295A77E74C3ABE295967E78C3BC777E78C3847BC3850E301A5B15E295A0471FC39CC3842ECF86E28CA03137E28CA034E2959E51C69255E294A4767DE2889EE288A9C2BDE2968043E295A1E29482CF86E295A3643BCF86E29688C3BB5CE29684E29490583EE296A0E296A0772F3FE296A0E29688C2A0C2B1E296807EC3B7E2959257E295AB1E00C3AB2C13525707E296936746E296903000C38637C386674205E29680C2B7E29593E295A0E296A0E294B4E28988C3B967C3B917C3BA1F2C17C3B7E2968048C3AFE282A746C3A8E295A9E294AC4049C2B267E29594672E0022C2AAC2B7E295A4C385E2889E7E59E2959EE294AC64E294A4E294BC44E28CA0C2BA6EC3B6C3AD61E29598C3A553E2889A111704C3A2E29591E28CA0E2968844E282A76DE296801566E2948C56E2959CCEA9E295A6E288A9C3BAE28C90C2AAC3BA6EC3A0156A793FE289A5C2B75613E2948052E296A0E28899C2B56B3434C38750C39FC3875EE2959AC3A9684046E288A927CF84C2B064CEA3C3BCC3856435264A6942184210C3A424C2BC561E3EE2889AE2889E1AC6927D7AC3A2C2BD2B17C2A2E295A14AC2AA7205C384CEB144C38724C3A9CF8310C2AA23607638C3A575E295A3E29494C2B7E295941CE295A7C692E295A0E289A162E29482C3A5CF83484C1DC3ABC3917D03CF846A03E295A655E2969136610A17CF80C3BB086B05C2BC19E295AAE29494C2A0C3A8351FC2B109284A3116E289A119281574484FE294BCC3A8E29599E295A5E29595C2BF5640C3B31C6F385C3002E29490C3B200042922E289A1E295AAC3A9E29482186171E295A3E29494CF80E288A9C2A5CF80E2889A3F7BC3A5E29596E2959B770F276753E2959AC3AB55C3A2E28899CEA653E29599E295A4E294A4C2A5C2AA4EE2889EC2AAC2A3E294B46BC3847145CEA6E295A377E294900FCEB536E295AB7466E28C90C2BDC2ABCF86C2AB31364DC2B5C387E295A22061E295ABC396C385E281BF430A2126C3AFE28899CEA6E2889EE29690E2959CE28899E294B468641501C3A8262879E295A77CE2959D610024C2B2E29480C2B5C2A154E2959D77E29680E282A7C3ACCEB55FC3841F39C384780260C2AC3BE29498CF833F467D02E29498E2959BC3B35F26341D2619C386C2ABE295A0475FC3B241E295A2E294B454C3BFE289A50F31193D341D7DC3B3E282A7E295ACC3BAC3ADE2968007CF84C2BBC3ABC3A8C38746E29688E28988C3B90B5CC2B022E29593435B2DC2BA4BC3B716C2B27D1DC2B5E2949C4FE2959C1220023CC3B9C2B1CE93E294BC06E29490E2889ACEA61AC6927F710BE295A70DE295A11F7E1FE281BFE289A46628E29680C2A314E295AC48CEB1E289A1E295A8E294B4E28899E294BC0C170F66E2959578E294A4E29480C2B2E289A409C2B5C3A723E29684280FC6922F47C3BF5CE295A031E2889ACEA605E2889E4F5FC39FCEB1C3AF6BC3AE5FC2A1E2969260C3A0C3B9005E10C39FC3B2006E1470E2949C0029E29490E294ACC3BB60E29494E29592173E1CC3AFE295936347E28CA1C2B0E2898851796368E2948C0DE29480C3A12D77084EC2A1E29597C3B66278C2ABC3A9CEB4313600E2959E0723C2A33E3EE29494C3A2E289884EC2B1C3B70F2FE289A1C2B0C3A2535C3C3DE29480C39FCE9804E295A511C3AA6AE281BF56C2AC577655E29599613E02E29684C2A0C3BF60C3B3E2959C21C2B23E76C3ACE28899CEA63AE28988CF86E294ACE29482E295A2E29590CF84C2BCE2959EE295A4E281BFE295A3215BC3B62F0B42C3B726C3A47B00E295A56AE28CA1E2949C0707C3BB3D19E295A65329CEA6047EC3ADC3B6CE9328015745C2ACE29693283D663EC39C46C3ADE2948C46E294824C693AC3A5E289A5E2959068E2949C7C700EE289A4C3BC16C2B231C3A6676B2AC3A85735E295A8C3BB39C3BA0FC39FE28988E295A4C3A079CE98E295A54E1347E28CA0C3A9760A59E29693E295A2E295A4E2959CCE93E28988C3A539E296807AC38573E2959D2EE289A5C3B4C389E29693E2898823E29680C3BC3BC385E28899E289A17D3FC3BFC3BCCEB41B175F7FE2959CE294AC67C6925ECF80C2A2C2BB57E289A13C0512007BC2B151C3B124E295AA366132E295A27070CEB1CEB1E296A0C2B239E2969079E28988000F1FE2959071E288A9E2969014E289A4C3A0036109C2BC18E29595C39CC385707330C3BC371F613E73307624C2B55FE2968C6074E29482E294B4C2B056E294B476151CC3B971CF8301C38462E29684C3A4C3AE087CC2BB0DC3B90157E28899CE98596169E2968CE296911A5574C3AFC3BF137730743BC385E29599E28C90E29693E2959B21C2BCE2968C63E29680E29684C389C2B2CEA95FC38405E296881670E2959E16C3841E2EC2B1E2889E07CF84C2B0E29593E288A95DCE93C3A23FE2959DC385E289A4474B0819E2959D4BC3A8357FC3BF5DE295AB7454C3AC156DC2A5E294B4CEB4C3845935C396C385C2ACC3B6C2BDE29593E295A0475556E295A6E295A87356E295ABC387C3AE69C3AC49E295ABE289A46A736E66C2B238CEA9C2A5C3A7C3AB7B50761C7F38510AE282A7CF8429E294BCE2969201611908E28C907351E28988E296881B0840E295A942C3B1CEA379C38944E294AC2222E294983C59E295A10FE2959E62C3AA76E295A2E28C90CE986811E295A121E29599E295A4C2A55D603EC2B7E2959EE295934344C692E2959130166DE2948CC3AD0EE295ABC3BAE29688E295A14956E294824AE294B4C3A5C2BF2A565C1DC3AF333A0F5D4342C396C2AC58E29590C2B7C3BF5FE288995108C3A965116E6F3D7CC2B2E295920AC6927FCEB56B3F5EE2959C5AE2959FC2ABE2889E7ECF833E283066730BE28988E295AC26E29595E29595C2A3CE93C39FE2949C392E2F6711E289A1E296916D01372C454B7E49E29680E29590E294B418E295AB6309E288A978C3A8C2A2E295A625C2A32FC2ABC39F7C7EC3A0E295A4175738C2B7E289A51ACF80C3B96BE295A03CC3A05B66C2BC04C39F4600E295AB0AE295950905CEB4012871392E33CEA6C3BC7DC2BD61C2B5E295A0C3B6E29590C3BCC2A13A51E2959AC3AA501421222D4FE295A6C2BB46C2BF7CC3A63901C3BAE295A3C3A2C3BAE289A4194E1F1FCEB1E289A55B2778E289A1E295AC311EE2959D73C3AEE29482C3A70B1CC2A54E212C516359E296916BE295A047C69201E295936D3BC2A5E28988757C53E2889EE2959529C2BAE289A45DE29598C3BF6CE289A41ECEB5CEB55CE295A9E295A0E2889E79E295A973371EC3A7C3A5E29692C2BF6642C2B77E51E28988E296881D052054E289A1C3A1C3AA57C2BB3C5E6FC2B04629E29684E294942FE294BCE2968832E2948CE295A8356AE295A16BE295A4C3BBC2AB51C3A8C3BB1A0BE2959CC39C15C3BA06E289A4E29692C2A1E295A928C2AA6BE295A4E29596C2A1C3B3E29592244A645223E295A5C3BBE2969218501BC3B3E295A71B7AE29592E294A4E29480E29591C3B3E2889942C3A213CEB123E288A93BC3B954E29490C3B316E295A35ECF83C39C17E2959CE295951011707BCF80CE93E294824FC2BBC2B1E2889967E295ABE295957AE295A1E294B426E295A836080108293026C692E28899383D1DCF80CE98E2948225E282A73C5DCEB1E29594C3B405C384C384E2959F18C385E281BFE2959119C2BDE295A1C3AFE295904A01C3AD3EE29480C38650E295A2E29480CF86E29598E294B4C2B56002793AE2959FC2B0CEB41BE295A03E7D09CF84CF801770C2AA36C2BC2FC2BBC39F5C6DE29691592BE295950CE29684780A2F5DE2959EC3B2E295A6E29595C3B718E29596C3A8E296922660E2949CE296A0C3B9E295A6C387E295A604170CC385091EE2889A60E29480C3A20F24E2959DC3A15EE295A3E2959FE296A0E288A9E294AC6A56C3AEE295AACF8044C389E28CA0C3AB0C02E295AA12C3A1E29692C3A0CF83E2959C192EE2968039E2959EC3B4E288A9C2A3C39FC2A51F5ECEB1E296A0E29688E2959F383AC2A540C3AE7CC2A107E2959DC3B1C2B5C2B56E301FE2968472C2BCC2BB3B6FE28CA130E2959E652CC3B3E29595622A1BE295A9E288A9C3BACEB4C2A3E29592E29592CE981CC3A5C2B52218C39CE2889AE2948C30167D31145C71E2959BC2B2321FC2B1C3BA4BE295A5E29693E29480E295AA762C3BC2BFC3A9C3916F02E294BCE28C9058E2959D07217B005277C3B4E29490C2B7E29592E28CA1C2B7CF80C3856F3E5AE295A0CF836FC2BA537923CF83E295A2E2968464C3A740C2B77D68237AE29598C3A56CC2A5E28899681AC2B2CEA92BC39CE295A22DC3A566C2A2C3AE45C2A2C2B20A16CE98E29598E28CA11D4B09E294BC33C3B2E29693E295A9E294A41F254F16C2BA4BC2B1E295A2E295A4E2959DC2B07F27C3A9C3A1E2959BCEB432E2959BE296A066C3AC5FE296A0E289A5257EE28988C39F3556370AE295A90314331C4760E295A3E294A4717232E2959ECF83CF83141717335C5CE295AC707C3CE2959E6C6E414AC692E28CA15001C2BD10C69239E294B4530CC3B718E2959D516041C3A1E28C90037724717330E2959EC2B77209C2B1E295930DCEA357E295ABE29691E2959BE2959DC3A9C2B2E28CA12DE29598C3AF15C2A3C3B96BE295AAE295AB1BC3AEC2BBE29593C3BF5CE295A3586F181E1136006EC39FC2BA67C2A111C387C3A6C3870971C39F0313E2968030300024C3ADC2AB4301C2AB52E2959BC2BFE2968412C389631BC3BAE295A3C3A2C2B172C3A4E29594C2B104C3AFC3AF19C3841F2E71E289A5CEA60067C385C3BB38E2959BC3BFCF80CEB174C3A8CE9862CEA3E294821EE295A00DE2959F483234E295930EE294BCC3A10C31C2BA74C3ACC2BC775DC2A2E2959C6E7E1FC2AACF84C3845D3BC2BB5DE2968028376865E2949862E2959B3C183FE29595773E3F1D4F2C0BE294BC22E28CA0E2959DC2BB3DC2B0E295AA03C3895A3338C2B2CEA9E295ABE295ABCEB52F7E71E28CA1E294BCE2949C07CF80E295A7E28899E295AA59671FC692E295A2C3AE0560E2959E37C3BA6DE294A4C39169E2959862E295AB2A7134653E4CE28CA1C2BA4DC3A0C396C2ABC3B256E2959144E2889AE2948C321F6D35225D190B53E2948CC389C2ACE289A4E295A6392671C3ACCEB45D7D4F3805227410C386E296880A351DC39CC39CC3AC11C3ADE288A907006C5CC3A0CEB46B17E296807CE29482E2959ECF86C3ACC3A7E29594E295AAC3A96DC3AB38CF83CEA9E29690180F1FE29590C2B1E2889EE294981267E28988C2AA582C1CE295AAE295A2E28CA053C3BF3C3FC3B22914E28C90C3B456E296A0E282A7C396C3AD02C3B7C3872C016B2CC39FC3841CC2BFE294BC187436C3A2587B705EC2AB30C2B2E289A515CEA317E295ABC3895F5C437C7503E28899CE9316C3BA6F56183FE29490C3A0E29596C3B709C2B50D03370123E2969352E296924664E2949C0C57E288994CC3AA1BE296931E61C2B75560E282A7CEA60250C3BB04E2959E16E2889ECF8308E29482C3B42916CF84732CE288A9E295A771C2B7CEA310C3B9E288A91ECF80CEA3E294B402E295A6CF8029CEB148E2949453C3A60908E29597E295942A57CF86C396C3853ACE98E2968C4332285DE294A40BE296847D2CCE93C39CE289A40FCF832DC3B3E29498E295A85838C3A46FC3A5691DC2AAE28C90E295A3C3BACEB4E29684E295ABC3B7E29684C2B7603EC2BF2208E295AA17E289A4C3A66C574A31194FE2889EE29599E28899E294AC39706C29E295A9E29593C389C2BB111AE296886F060148C2A150E294826D13C3AC46420A41322A38E2968019E288996FC2BDC3BB7BE2968CE2959BE29592C3AC4EE295A1C3AC7619605032CE983175C2BBCF832E39C384E294906EE296A02143301675E29688E28C90024BE29598C3A1C2A5C2B741C3A2E29494643C032AE294ACE28CA0C2BAE2968427C386C2A2E2959D46CF86026821C3B4CE93E295A30C290807070E08C3876D09E295AAE295A2E29494682C7170CEA6CEB1E2889EE296900447E2959F231C1CC3AE301E590008C2A2C3ACC3A9523ECEB4116B5C74E289A111E296A0E2959EC2BB5CC391C3BFE29692E294987850E295A010362003E295A437C38405C2B060047E7800E2959B71C3BC576B382F56E296915EC2AB307AE295A3C3A9E295915EC3A2572EE2959D5B0FCEB45B0FCEB4C3B2C3AFE29590E295A9E2949C7AC3BAE29691E29498C2B0C2B54B21E289A1E289A1086029005BC3A94612626C41C3846DE2959AE28C90033973602D1D4CC38426C3BFC692E29590303D1AE2949CC396E288994CE2959AE2889E70C3AEC2B1E295A0062CE295A4CE93E294986E3366C2A21A6BE29596E28CA1E282A71BC3B7E29688C3A13EC2B7E295910315187BC396C3AF4DE289886717342677652BC6924BC3BFC3965929CF8379C2BC54E2889EC3B31A7E09342BE2949CE29597E29680E296903000523BE295A7CF8376C391C2B0C2B7E2948C733DC38537717DE295A0360F72E295ABE2959DE29680E295A22FC2B036E281BF3EC39CCEA31837753ACF84C2A3681957683E60E2959B3FC2A12BE295A0C3BF764E1FC386E2889918E29693C39C55E29688761A3E4B54C2BAC2A5C3B3E2889AE295AC06C2B55E0A1E5DE295AC6F262A20E295981D6CC3A520623CE2969270797FC3A5C3B4C3B4312663C3ABE29594E29598E294AC7C666371CEB1CEB1CEB17004E2959FC3A60000E295A7636C362A21C2BCE28988E295ABC389C3B6003651E28CA12DC3B3C2BF7CC2BBE29597C2B105CF86E295A563C3892DE294B4C3BBC3871A59E289A12616E295AA16000162C3BA206F5CE295AAE295961BE295A8CF860674E29482015FC2A1C3ADC2AB36E289A1C2AB5D78E295AB1B6C6E5CE295952B17CEB5E2959E2FC2A2C2BDCEB1E294821E4AC3890F3EE2959E16CEA3E29480C3A5C2A339E296911723C3AE0EE2959E182D4770C3BB234C0E47C3BF1D4F41C3B460C2AC50C3AA0D565CC39155E29596C2ACE29482361E52E295A75735C3A5E29593C2A1C2B5E2959857152DE295981BC3AF1A3BC2A56F6BC3AE353D56E288A9E295A55C5C3546C3B6E28899C3BF34C2A547CEB4C3AEC3B226E29593CEA3655AC396E2959BC3A9C3A7E29594C3B709104464492249E29594E294BC475D47E28CA036C3B3E2948CC2B2C3B7C39C00C3893240C3B33F30E289A57FE2889AE29680E29490E2948CE281BFC2B2E294907EE296A0E295A4C2A0E289A1E29680C2A0E295A4C3A7C3851E4E6EC2B741E295AAC2AAC3B36DC3A5C3B354C2A1C3BA2D7D44C2A272E296912235E295A3C3BBC2AAC2BB4F53C3ACE2959ECEB4CEA6C2A3E296907735C2BD2ECF86342129C2A2E294A4E2959942C2A24369C2B5C3A2C3A9E294BCE29591C2A05DC2A0C2BC7CC2B15B65CEB558E296902F0E3412E295A07E2AE29593E294B4E295A5E294B4280019E295A22DC3A92FC3A965094849E289A13CC692CE9808190FC2B57666E295921CE29595E296A071007C5CE295AB771CC3B9C3A8212C015B0AE295A8E294ACC3BC5CC3AE601320C39641C2AB07E2969078501B05E295A1C2B1E29590C2A0C3B6CF84C3A2C39610307248314901610BC3892D41C3BBC3A47424C3B16341C38424C3B123201D0B34E295A5C3A817122AE295A5C3BCC3A5C2AC42E295A12D76E2968444C2A05BE295AC05347430C2B0C2AB320477E294BCE2949CCEA90D5F7C5A6236C2A5E295AA0FC3B9E295A6E295A4CE98786CC3A0E295ACCF84C2A37A79E29599C384CEA675CEA9CEA3E288A9E295963710C387CEA3C3A527C3A4C387500AC2A26FE282A77BE295A77FE28CA1C2A2C2A2E295A77FE288A947C3A7CEB4E289A1C396094AE295A5CF8438C3BF77C3AC5AE29592C3ACE295A20DCF83E28988E295A424E2948C6240E29599C3A6E296A07F5DC3A2781AE295913248E29599E2889AE29688E28CA07AE295A2E28C90C3A05F37C3A865C3A9E28899CEA6C2BDC39C155AE295A253CF801DE29594E281BFC396E295ACC2AAE29592653ECEA92FE29598C2BFCEB1E294942108093F230A7F5F74E29490E29688CE98C38542C2AA223631E28CA05FC3B4CE98E295A0E294ACE289A5E29494C3BCC3B6146943C3BF39603C184A25590F5D13E294B45C65E2959E17C2A04D5C1EC3B923E289A43F30C3A1C3B1C3A96D0B28474239121859102309690908CE985FE29596E295A85CC3891056E29482E289A5E296881441E29594E2968028E295A74D5FE295AAC2B5C3B21FE289A418E2889E79C39CE295964AE295A0E295AA10351DC2BDE295A4610CCF86E295A54E5B76E2959DC385E296A0E295AB18E295971A331FC2AAE295ACC2BDCF86185B06CEB5C3A7663E4C38C2BB37C2A5C3AFC3AF3CC3B1C39C00C3B421C2B23EC2ACC2B51B53E2959FE29594E295A2E295A7E294B4004852C389CF83C3AAE29498646C2F6D5F03C386E2959BC3AA4D10E289A5E282A70DE2949803C389E29598E29599C39FE295A76D713579052222C39628E29599693C6AE295A16DC2B563C3AA7CE29598C3BBE28899E29591E29598366AE295A1E29590E295A920433315E29688623E4C55E2948242C3A7765AE295A9E29482C2BF7E3B545221371465471A104D00E282A7C2B22A6640285127C3A072C3851FC2AA39E295A139C2A0E296910DE294BCE2959BC3BF22C2BC6615E28899C38770C396C3AB62C39F38E28C9009E295A529C3875EE294B4C2A0C3AB72E295A70320E29691E289A5E29599E2959DE295931B5F7CCEB5790C69E28899C3A1C3AAC3A408E2959B1304E2889955E2959DC3A4C3A15864C3B438C3ADE2959878E294941537C2BD35E29691CEB473E295A0C2ABE296884EC2A2CF806DC2BD3DE28CA0C3B1E28899CEA6634CE2959D6B4ECF845DE29688E29498E2889A7D187EE296A0CEA9C39C10CEB52B61CF860148290CC3B7E2968C25E281BFE2949459C2B0C3894812241463032DE2968CE294986CE29598C2AC6E3B7D475BC2BFCF8476E295A8C2A1C2A528C3A816E281BF53E29688CE98E2959D4D746D48C2AAC3B3C2BDC2B5C3BA4E14C2BD2FC2B5E2949CC3A436C3B1CEA65E55E295A153151943C38645E295A6633E4A58347FE294B44FC3A00BE289A1E2889EC3A4C2AB311B3517C2A31910C3A9E289A1C3BF696773E29593E29593E29592C3B617C2A50BE2948C492FC2B0E295994CC3AAC2BBE295A4C2BF0217E28899CEB1C3913EE295A8E2959413CEA3E2959F6025605D5CCF833BC2A32BC3A5CF84122CCE98C2BAC3BC492901CE98531F24092C082A0478416428C39FCF80C3B3E2968C374AC3B25526E2968CCF84C391E29599C3BFE2968C1763E295A4C3B1C2A52E7344E295A7CF8675663EC2B7E29593E294B4C39666E2959FCEB4E295ACE294BC43794FC391E2959FCEA3E2959B7D4CE29591C384CF86E2968868E29596CEB55AC3AD40E2889AC3A612E29494E296922F470F770853C2ABCEA92C36C2BFCE93E2959ECEB501E295A9C3846FC3B3CF84C3B713C3A5C3A45757CEB56AE295A1521FE295A32E7FE2949CE295A05EC2B1335535E2949455E296927426C3AF27C3BFE2959AE294BC27C3BFE295A6CE9847E2889A76E29595C2BBC2BF15E28988705E43311564C2B0E295A3CEA6E289A439424FE295A7750316C3A101E289A45177C3AD5DE295A200C385E2959B470BCF84E294A42920153020E29598CEA958C2A1C2AA5F6EC2B57B58E282A7E295A244E294BC4BE29691C3A92A6044E2948C7CE295A6E295A8C2A3C39F194AE294BCC2B7152FE295A8C3A6CEA6C384CF8649E28988E28899E28CA0C3A9C2BDCEB458E29684E2959873C391E288A9E29692E29490493B6DE2969021C3A211C2B5E29693C3866FE2959CC385494DE2959E2CCEB5C3AD5F7DC3ACC3ADC2AAC2B74D03C692E29680C2ABE295A25B774E29C2A01B6656E295A7C692E29680C3A53EC2BF14C3BF12C2AAE2949004C3B722C2A23D00E28C90C2B1C3B726E29693C3AAE28CA127CF86CEA9E2948C73576BE28CA1C3A0CEB4E289A567E295A058E2959203E295965CE29692E2959A4DE288A957C3B779E2959224E294B42551C3A2E29693E296A050E295A6E296A0E295986DC3A76AC3B73DE295920E5310E295A30EE294BCC2BA45C3B45C51E29490C3AFC2B7E2949CC2BFC692675BCF84E2959DE295AAE295A8E28CA16CE295995E55142BE288A96FE289A51669657D28E2948C1F15E2889A3569C2BAC2BFE2968065CF86C3A1E295913FC3AECEA9006FC3BFC2AB43E29594E29490C3852A3BE295A1E2959A61C384351DE29498C3B6C3B150CEB4C3A614C2AA536A7FCEA3C2AA2ECF835DC3BAC3892921E295A5591B4E7CE294BCC2B2C3B348E2959FC3ADCEB442E28CA0E295A2C2BFE2959EE294ACC3A6C2BF0BE289A1E295903EC2BAE296A0CF83C2BA0428C3AE1DCF800320C3B3C386C3B3C2B024C2B02802515DE2959ECE93366EC39F7DC3ACC2B2CEA638C3A5E294A4CF867FE2968CC3B70AE282A7E29592E289A1410F6F56E28CA0CEB173E2949CE295A3C3BACE9818E2968876E295A0C2BC3BC2BAE29596056C45C2B2214363E2959CE28C9039E29597CEB532C2ACE29594C2A3E295A5151CC3BF6EE29596E295ACC2A352751C0611E29594E2889AE289880F46006C00C3B114C2BA0107615FC386770F406AC2ABE2948C51E294A4C3B3213FCF844A1220C3A61127E28CA01D6DCEB43AE29594C2A2C3847EE294A46DC2BA65E29598C3A8C39C447F4CE282A77F1F4C011B6EE295A7CEA3E28CA1E288A9CEB4C2B0E29598437FC2BFC3A7CF843AE28899E295963A4351E281BF58726E25C2BD7CE2968C072552C389C3A83420E294B458C3B44D25C3B3C386E295AB022D03E295A7C2A1E29680C391E2889EC2AB54E2969306E29592E295A7E29490E281BFC2B750243C4FE282A777E282A7E282A7C3A43B3C3BE29597E294AC58503FE28988C3BA73C2A04DC3AC2143C3AC497DE295A07DC2AAE2969360C3A5662CC2B760E28CA1C3A77A1EC3A5E29690E29591E28899043AE295A25CE281BFE28CA15FE2959CE28988E289A15BE296803A3B1DC3ACC2BCC2AC142CE2948C03C386E295AB67CEB44BC3A4E282A71B72623FE29592E295A765E296911B5B2637E29594E2948244E2949CC2B24CC3BCC3A42EE295A1E295A0CEB4E29595C2B076E29590E294824D7D5ECEA3E2898811C2B2C39C6A5EC3BBE2959BE289A56C4DE29597E295920ECF86E2959E5B57E289A451E294A47FE296803E1E4DC3A80614E294A4C3B4C2BDCE98E2959AE294982F5D24C3AF7540410917E289A43CC38911CEA94362613834717932CF864A085FCEA61D0AE295A8C3A0C3A1CEB1CF846455C2AA58C3A14E2046C3B332C3BBC2AB4709E2959EC3B144C692E28CA0E294A4E29692643FCEB42DC3B1E295A5CF86E294BCE295ABC3A46AC38536C3B6032EE295A5E289A42D51E29594E2959D1C7E232A2953C2A3C2BC66E295927E11684AE29599E295A4E28988E295AA3FC3B6E29680474BE2959045654C6828E29590475F637FE29599E295A3C3BF6BE295A253E295962266C2A539C3ADC2ACC69275E2948CCE98CEA9C396E29592E294A4C2A1E29591CF860FCE98745EE29482C2A0E294B46EC3BB25264F1F1FC2A5C2B2E295944FE282A77CC2B7E2949867C2BB56C2BDC3B25B44C2A2500110E294986B3DCEB5CEA636C3B6060400CEA6CF834B77757DCF867EE294A45EC2BDE2968031CF8076C2B068C2A2E295942845E29680C3B2410C45CE9868CEA6CEA6E295A7C2AB33157D45E29692C2B77AC384C2B738C385260EC2B526C2B75D46E29490E2889AC692C2BAE294B446CEB517E295A5E295A47E1FC3B664C3B3C2A039CEB10529C2AA25E2889A7A50E288996B53E28899E295ACCF83C391E296912459C3B9E2889EE28988E29595342F45C3A121E296A0E29688E2889E39250149E296907946E28C9058C391CE9824CE9805551F7AE295A22118C3AF3EE2959F7EE295996C7BC3A2C3B76A517026C396175315C2B0E295A2E29594100CE29594C389E2968415C2B563E2959AC3B7E296881FC3AF01763DC391E295936B4F71E29593113DE2959076E29598E29594C2A5E2968833237764E294827A6E5FC3A7E294ACE28CA0E289A5C391E295977E75CF837E71E29691E294A43ECF8009C2BBC2AC7203E2959045E29594C39C56E2959C6A1AE295A1CEA6E2959A58C3BFC2ACC3AB5FC2A2E28899681BC2B269E2948CE288A9E295A203E2959769C2AAC3B36934C2BC4E74C2A1495FE2948C38C2A5370175C2AAC2BD6BCF83E2889E4B7518C386C3B3E2959A7CE28899C2B2C384C2BD55C39117E29599C2BCC3B2CEA3E29590031F04C39138E294BCC3AEC3B1E296A03658C389C3A7E295A2213103C3866444E28CA0C386E2959DC3B6E295A85164E2959C3CC2ACE295AC2FC2B23761CF83C2A124CEA648E2959619C3B9042C4F3DE29599E29599E2948CE296932024E2889E52E295993432C3B3E2959111C2B5C2AB6371E29592E295AA66E2948CCEB4092DE2959E1C13C2B2C2BB793C634ECF845DC3BFC385213DC2BC4C56E2959CC2AC0322C39C3E475D59C2B2E295A2E295ABE29692695BE29597E295A57EE296886BC3A6C2B06B61E2968852C384E2959FC3BB14C3B65BC386370FC3A4E29691C3ADE2959ACF847EE29688CE9366C38601C39FC2AC512DE295983AE29593CF84C2B2C3A7C3847EE295926967E2959AC2BF5EC3A7E294B4C3A9C2B7C3AA5AE28CA1E295926F1EC3A1E2959CC2ABE295A4C3ADC3ADE289A5E295A2774163E295A5C3A521293E46367BC3AB0BC692C2BA325D03322C40E281BFE295A310C3B1E2969221E28C90E2949007021FC3AEE294941FC3A2E295A540205B4E37E2968CCF84CEA302E2959C3C05392FE294BCC2BDC2B0E29684E295A5C387C3B3E29690577CE2959BE2959BE295A707C3A608C3B1C2B7547DC2BA093D3EE2889A43C3AEE294987DE29693CF80E29688C2ACC3B305E28CA0CF84747E572A39C3B735E295A2C396C2A363E29595E2959FE289A4CEA9E2889A7EE28988E295A47E57113B60E29688727EC2A072E28899E289A1E2889AE29680E2959C3CC2A54EC2A5E294A421C39F5EC3AAE296A01A6F7D32207AE295A32402E2949452124941C3A9280D7CC2B7C3A8E295A2E295A1653EC2B7C3AA22E295A139C2BBC39CE295A4C3BFE296846EE29593653E06E28CA01F69E2889E74E29690C3B2E28C90681A0DC2BD7BE29680C2BDE282A7E29692C2AA0C52C2B77CE289A4C2B757766FE2948C3AC2A5C3B9E288997DCEA3544D03CF832CC3BBE29595E289A5C39C14E296922259C6920E1D54CEA64C46CEA6CEA34D50E28C90E296800BC39FCEB436E281BFE295A94E2A532C28E296842F7BE2959BC2BC694EC3861E253A2821CEA90614C396C3AFE2959F2A1D08E294BCC3B2C2BCC2ACC3BFC385E29598E295A7C3B33C7DC2A12908E295A4C2B245C3A8005AE2959777C2BDCEB523E2889AE29592090000200049444154C3BFE2968C3560E296922B7E1F5CCF80144C3AC2A5E288A9E29595E28988E29598CEB13AE295A0C2AB63725DC2BAE289883DE289A4E295A4E2959DC2B264C3B24529E294BCE28CA06039E295A3777EE2959B3C1CC385C2A13C00E2969307217B00E295A5695300E295AAE295A20942C38624220B20E295A46C01C2BA7F66E2948CCE98E29684C3B6C3AF6FE295ABC3BCE295A2C3ACE2889A2AC3B274C3B20C1FC2BBE295A931E2959CE29590E288996FE2949CC396C2A3E295A45FE29592C2BD21C3BA7A4DE29688E28C90C3A85C51E29594E2959F55E295A047E2948277E29693E295AA643BE2889A3C45CE9854021051CE98E295AA1074241DE295A4435DC3AAE29690C38530E2959CC3A8C396734CC2AA29E295A4C3852C391BC2AA6A51C3AD5E240B3A38E294BCE2969150CF83E295A1C3AA52E294BC4AC396C385E294A406C3A41205C3A8E289A4E295A615530258105501CEB43EE2959EE2948C3E1CE295A9C3A7C2A323E29591E295A2E295AB0209761EC3B4C3A518E2889AE2889A1C27E29597E295A035C2AA1CE295A44DC692CF80E282A7E288992869E295990F137125CEB1284AE29590E2948CC2BA5DCF860148CEB52812C3AC24E282A7E2959FE295A97379C2A114C2BB7D507257C3BF0FE29599E295A4C3BFC2AA51C3AEC3A9CF80716A3FCE93C3A9E295A6E295A4C391E2968075E281BF3ECEA946C3A64C55646953E28CA1C2ACE295AC22E2959CC2ACE2959CC2AC73C2AC5BC3A0C2AC6D552CC3A2C39CC384E29684C2AC57C3ADE2969023CF84C396C2ACE28CA12CCE98C3AFE296A064C3B2C39138C3A15BCEA3C3AA4E0128C39FC2A3C3A044E295A016E294807A0FE294900A560842420DC3AAE295A7C3AA24C3961322C387E294B4E296A0CE93C2A3636647C2BBE2959BC3B25F25C3AF13C2B24C56E29482C2ACE289886EE2959FE2959FCEB1E295A535C2BFC2BF12CEB1CF84C3B1C391C39101C3BA2E644FC2BAE28C90015450CE93C3B972E295A7C2BDC3BFE28899E295AA3663617AC3846043C2B2C2BB39E2959E15555333C2B5746E72E295AC6A5279E29691CF865CC3AEC3A87660C2BFE296807D3AE2959CE295965DE29480E288A93AE289A4C3BCC39CE295A754C3A7601901606266C3B75C4F31E2889A1347E282A70161E295A1C3AD53C2B10DE2948CC3A2C3B41DE2968CC2B7C2BFC3A955CEA30B223EE281BFE2968CCF86C2B7C3B44F57E29490E29597E295A351E2949065E2959E4DE29482CF847668E29590E2959F36341D1DE2948CC3ADE2969301C2AB4D7FC3B77E1FE2949C44C692C3A5E295951FE29598CE933942C3A232E29590E28CA1C385515CE29590E295A26261C3892A272B42E2968C03C3ABC3AAE28CA110C3A92210C386494BE295A9E28C900DC3B23633E29598015212705001C3B441E295A30BC2B7C2BC06240451E29594C2AC5771E28CA12B0AC2A3E29690C3AF18C385C3B17625E29598E2969344C39CC3BB541A5612E29598CE987E29E2959852C2A0E296924B0ECF837D69345E47E29490C38521C2B5C2BC366375E295ABE289A41CE295A55BCE982EC2BC5DCE984E1FC3AFE294B4E2889E794A6D361E2BC391C2BF00C39F54C3BC11E2948CE289A5C3A0E294986F2DE295A2E2959B3520C3ABE295A4CEB5E295ABE29490E295A3E29498E281BFE281BF17E295ABC6923F7E34C2B234CE98C3A4E29690E2959837C3BA2D12375DCE9864C2BF0A1BE28C90C2A0C3B9321FC2A313C2A1E296905614E29594545E72E2959909C3916B7E725E79E295A53AE295A0C3A729E2959EC3B30B4352764D4AE281BF3EC3A13BC39653C3A8E28899C3A1C3A94B5FE2889EC3A9C2A2C3AEC2B0E29482E295A220C384C3A252CE98E294BC72C2BCE2968CE295A87C3CE294ACE28CA02AC3B741C3A420683A10681A10E2968CE29498C2A220044769533EE2949CE294945051C3B352757EE29596E282A746CF83C2A04C39C2BC0017C3845D45E2948CC3A66CC39660E295A9E28C90E289A5C3A04C4A5908E2959162C38915C3AFCEB5CEB4E2969127E29594E2889AE294824D4DE2959FC2AB331F3DE288997DCEA355E29482E295A943CF80E2959EE281BF3EE295A23567355DE2889A356524C3A5603ECEA9C2AA79E295A1392F137E1C43311FC2AAC2B244E289A5C2BB2B11C3A46509E2959FE295A2C3A04D44C3B3CEB1004DE28CA11F7BC2B5CF800D0220456F042376E295A124E2968826E295AA0E49C3B3E294A4137AE2968C177B08E29590E2959FE295A2351D0DE2889A4D6DC2B76DCEA9E281BF4DC2B52F77E295A3CEB57D68534CC2A3E295A7C38951E2959CC2AC0050C3A036C3A4E289A5E296A0E29680E294A4E29680E2968CE295A121E29692C2B5E2949C0711CE98E295A718C387E29598404252701E03C38648E289A411C2BCE289A41400E294B4E2889EC2BA6AC3913C3AC3BF197ECEB1C3ACE295A1C3B62C3D55C3AE33E28C9064E295A36BE2959E5C4644071E493346C3A60023E294982A573AE289A42144C3B7E29482E294807E35E294A42331E296914AC3A2E294BC2E635BC3B4E29692041DE282A7C385E2959B341F7D783EE29598E281BF1B22736D19C39627E2889AE295A558E28CA07D2F4C693EE295A2755EE29597E295936EE29680E2959FC3ADE29480C2ACE295A4E29693CEA37C7930E295A37F7EE29692381EC385CF86E295A809E2968C2A011D45E2948CC3853DCEA67803014855E294AC7BC3B6C386E295A1E2949830C2BB57E295A9550C37C2A041E28C90E289A5E29590C2BFC3A842E295A17DE296927644E2959951E295923F4EC2B2E2959BC386E2889918E2948CCF86E2959334E289A4E296922B55E294A4C3A8C3B735E29590580CCEA6E28988E295A4C3BFE2889968C3B331C3ABE2889A16C2AA31CF8339C3ACE2959FCEB4E29691E2889EE2889908C39FC3A2C3A90C1B403E01186A3D62413A12C2ABCEB47A3FE294ACE296802B1508E29598553028512C500FC38507CE935421E29688E2959DCF840835E295AC21E288997BC2A5C2B10074E29593C3A912296459C3BB230942E28CA034E29482C3BF0129C2ABC3BBC3B2006F2956270942C3A5E295A574E294A469C2BAE295907176E295A0CE98E2959D0A7C30574C65C2AA7575C2AAC2B5C2BCC2AB7E1F75E2889A6DC3B33FE2959D03CF84E2959265E2968C52C3B252E2968C27E289A4E295A465E2968C550ECEA9C3B1C3B1E295947462C6922DC3B9CF8003E2959FC3A622076434311B6CE289A4CEB1E288A9E295963B0C40CEA90212C2B73FE296A0E29592C3B9C2BD5FE296A0CEA9CEA977E29680E2889ACEB5E289A5E2949C27C3852737E29597C3A0E28CA0E2889AC3AAE296A0E28CA0E29480E294A450E295AB7EC2A2C2AC3062C3B3C39CE295985DC2BCC3B35567E281BF6BE295915FE29680E2959F2BC3BF506A311F6DE295AA15C2ABE295924EE295910AC3B2E2959BC2BB2F344FE296A06D243047E2959D70574C5175C2BC34E289A4C39F03C3B2E295952FC2BC00C3AAC3BF3D5109C3AD7B083EE295A50B154E55E294B4420658CE986B4A7DE29680C3B16160E295A5E295A43DE2959064CEA37DCF837FC3A542C2A14811E289A4C3A60541C3B6E29482E296A0250DC3AA0CE294BC480CE294BCC3A1E28CA03DC2BA7439C385C2AAE2889AE28CA139E295AB0CC3A61D606A0C7F53C396C385C3AD36E2959955C2BBE289A5E296886300C3A85979E282A76215C3AFE295A8510144C3B72579E2898800C3B114C3A42466712120C3B6E294ACC2B7E2949CE29680E2968C3EC2A0E295906F6F3EE28899E2959C1F1DC2ABE2948C3FE294945D2B6CE28CA01DC2B2691AE295A16B19E295A16AE294807CC3BFC2BF6655E29592E295ACE295A2C3BFC38521C3B3C3B955C3AF70E29599C3AE45E295A77E1F454ECF84C3A5C3BFC385184414E29680C3A2E295AAC3A7C3BACEA6E29690CEA602CEA9C3BF015120C38960C3AACEB173E295943EC3BAC3B4663ECE93E294BCE295A136E29498117C06C3A40346041CC3BCC389E29691C2AC5636C3AF342BE29690E295AC4BE295974A5B39CEA6C2BC42022800E28C9014C2BD2CE2949408191129E2949CE29680C3AB0C23525FE28988C3BCE295A07C5EE29680E288A963E295AB341D6878C2A32EC384E2959306E295ACC3A26BC384CF84C3B6E28988C2ABE295932922E295A5E295AB5CE289A4E29591301F43C69257C3B40AC3A84DC3BB534563E29591094D091AC384C2B166E295A6110731114944C386E296930003393F57454FE28988E296881B0E4032C3B4E295A1663AC2AAC3BF0B2B650DC3AACEA6E2889AC3A8E296A034C3ABE2948CCF866274E2959F64C3B6C2BFE295A768E2948CE29690E288A9C3BA5EE294A4C2AC067B3130E289A4E294B4E2968474E281BFC3A1E295AA545000C3A9291475C2B0E2949443C3A42958C3AECE93E2959AE2959B1FE2968CE28988E29599E295917C2D48E28CA0E295A3E289A5C3AFE28CA03218C2BCC3B2C2B54DC3BBCEA345CE93E2898845CF805CE295AA5FC2B2E29684332C452500E295A4C3BC47167C24E295AAC3A602E2968CC3A7E295ACE29591CEA665C3AEE289A4E295AC673B5AC3AE21E2948CCE98E29591E29490C39F31C384C3A56669C3A5E2959333C39CC2A3C385E288A9C3A9C3A7E295925073E2959436E29688E288A9C69260C389C3BBC3BF4DC2BAE295ACC3A2E2949CC3A2C2B1E295946864C2BAC3AC08E289A423287BC3B7630F402A56E2948C110BE294AC0C785E54E295995238C38410C2B7E29693C3A7E294980F151231C3967D01E29596C39FE28988E295A4246AE295ABE295A5E288A9237D0CE2948C5665C3892E1558C2B7603ECEA96A2CCEA9C2B50553457F4D31160356E295A7E295A9C2B07DE29691E29593C2BC39C2B5C3BA6C3F2A28C2A3C389E288A9C3AE1E6B1474E2959C04C38700C3A4043A10C3ADE29597C384C2BAE288A97B3CC2BACE98CEB1430743C3ADC6920873C2BF0DE29594162CC3B3C2A3E29680677A4AC2B7C3B33EE2969051C3B1C2AC5FE294BCE295910E24C2AC5A09C3BC087CCEA62044E295A9E289A1674D2B52C389E2959BC3B22E2FC2A3745CE295A71FC3B4E296933614E295975EE295900A35E296906D137300E2948CC3AC71C3ACC2A5E295ACCEB41EE29490C2A17F49E2959931C2AB4B3B75C2B5CE9321E2969307CEA9E29691E296A04DC2B5C387E295916BC384C2AC0AC3A8C2AAE294B4E2959FC2ABC2B77DC3B65F7F0ECEA657C386C3A96C47E295A0C2BA1367CE983832E2959D21C3AD187D5FE28CA16A0F405AC2A1C3B7E295996FC3A10AE28988C2B10D7CE295942A06E29595433AC2A577C2BC42E295922AC39CE295A5C3AD1DC2ACE29688E29593E295A8E295A047E2969075E29684C3A5737A5FE2889AC396C3AA22E29593E2959CE296903074E29680E295A8E289A539CEA94BE289A451E289885DE295A6CEB5C3B428E29594C2BD57E2959D02404C3EE29480CEB1E2889E73C2BAC3AFE29599432DC3A77EC2A35837C3A9CEA317E294BCC3AFE2959AE28CA032C39178E28C9044E295916D4904CEA6E2969315C2BBC389613EE294ACC2A027C396C385C3B1E289A13C5D012BE29590C387CEA6E282A72575C3A9CF864426E282A7E29482C2AA63E295A2C3AB76E2948CC2BC35C3A5E295986874653E60784CC3B3C3BCE2968841C3A731E295A6E294A44E71E2959AE289A47AC2A5361AE2959D2D06E289A1E289A5CF83C2A107E2949403E2949441E29494C2BAC38406640F3EC3B700C3B1E289A1C3964A7F41293033E29593E2948CC2B04CE29590C3B35F7BE29490C385E29480CF84E294A40BE295A0475EE296A0E289A5E295A2C2A5E29599CEB4E29684CF802EE2959F07E295A2CF80E28988E295A4C3B3C2A5E29684C2AC57C3AAE2949CC3B7C3914ECF8475C692E2949862C2B5232E67C3AFE29480E295A7E28CA117E2949CC2A332C2B50B341CCEA3E294821F403A35C3A873C3BAE296A0CE98342DE2959C7256C3BFE2959E15C3BC16E29590383DE29591C2AC5405E2889928E2889973C3A8C2B1280220451AC389E281BFE294A42BC2A0E2959DC3A00048C3A150745E6B697027C396C385366376E29688C3B75031E2959ECF830D354DC3BFC385C2AAE294B42FC3B41AC3A82663C2B510E295A047C6923AE294BC2E5AC3A136CF846762315F35C2BAC3BF020BE2949CC2B07DC3B1C2BB3125E289A541C2B26F67C2BA733B58C3B9C38636E282A7CF84C3BC0F205F27E295A5CEA3C391E2948C6FC2BB31002954E294905EE2968078C2BDE28CA15A7DCEA3E295AACE93E295A310C3BF13C3A61C36E295A5E295A5346AE295AB242AE29593C3A236C3A4E2948C46C3A6CEA95C03186867C3AA685AE295ABC2AC5C7519C39C36E2959F3771E2969043E294A44339E2949CE295A109E2959EC3B3493BE29598CEB17D4C1E5BC3AAC2B0E289884A51C389C3A8450147C3A65CE296881111C3B6CE93040342CEA3C3A216C2A545097FC384C3BFC38540C3A11EC2AB2319E294B43EE289A17522C3B27745E29597C2AAE294980A5548CE983E02E28CA1C391C3B14CC3AB5DC2A0770252C3A8C3AA19C3AB19C3856C15C2BCCEA3C2B1E29693C2ABCEB44970E295A464C3AD350463E295A4C2AA1D1351C2B2C2AB7300E295924377E2959EE2959E4C181C23E29595E2959F7E75CF86E295A7E295A2E295A1217DC2BC3776E29692E2968CE2959BC385E29599444BE294AC701C39C2A027C2A0CEA3E2959C073FC2A0CF83C3B9E295AB1F7FE281BFCE9376E2959CC3B736E28C9006423774C3B2E289A4E2889AE28CA0C3A1E295A207216F3800290A0FE295A8CF86C2A1E2959659C2BBE29592CF84CEB5587D6AC3B4E29691C3AB30351BC3B2CEA62B6A5717CF86E28988C3B10D31E295AC7CE29598E2959C3E5D7D34E2948CE29591C2B7E295A2C2A1E2968C5E070F77E295A4C3AACEA67FE29680136361C2ACC2A54EE295A007E295ABC3AACEA9E295926307E28C9024CF83C3AF28E295944CE294805AC389E2889E02514FE294900A05CF8322C3BFC3A958C3A4C3A1C3A90A7D2D42E295A811C2A01C331F4AE294BCC2B7C385C3BF1909E29490E295AB051F48C3AAE294947540C3B6663E746FC3852C03C386041F11C3A21231234879C3A4C3B1C3BC0EC3A157E29597E295A5E2889AE2959E39C3B2C396C2B7653E4CE28899C3BC7461E2959FE2889A6A0FE295940725E2889A3020C3A2C3843BC3ACC3AB75E2959FC3B7E295A273E295A4C2AB301F6DC692E2959FC2AB73461F0ECEB52618C3A4E29597E2889EE2898851E295A45EE289A16BE29688C386E29599E29596E296903AE2959BE28988E29599C6923EC2B2E281BF6FC2A0C3B7E296807EE295A25E7BC2A37311CEA9C3A8E295A7E289886CE2959A1B0840CEA970C2BF6C49E294B4440812082A43C2B23DC3A1E289A53651E295976D57C3AD1A2AC2B763E2948CC3A6E2959D6BC3A4655BE296A02175C3840F43E295A747E29680CF8674613EC2BFC3A777C3AC4A17C2B1456B390011CEB4C3AD1447C2A0E295AB37152CC2AB436FC3896CE29688492D490836E28CA0CEA9583AC2B0E2959A54E2959BCE93C386251125C3AC0775E2949454C2B570C2AB0BE295A4C3B41AC389586C2E42E2959E4410C3AA44E295A9353D5BC39FC2ACE2889EE2959CE28CA0E294B4E29498C2AB311643E29691E295927DE295A157E289A1E296911A1FC3AFC3A5C39C234C5EC3B96D30167BC2BAE289A4C3B7E2959FC3ADC2A1E295A1E2959F60C3B73C56CEB546E28C90E296913A38E29693C3AE47E29498C3B1E295A1673EE29690600052C3BBE28CA0C692C2B0220203E289A1E29494E2889E250D08E2959156C3B3CEB1C3BBE2889AE2889E4AE28CA1C2BF305A56E295AB45E29596C2BBE295A9205DC3BA724DC3A21343E295AB6EC2BBC2AC30C3B47EC3B1E288A920E289A45174CF8632C3B9C2BF7D352B53E288A9C39C5ECEB5365B652AE296803F24E295A5C387C3AAE29598E29691E2949C1A1211493F0F22C384E29684E294947D10E294ACC3A61F48083E28E2949CC387CEA6257ECF80E296A0C2B5E29490C3BB59E289A1117EE295A72BE29597C2A2C2BCC3A515C3B9E29684E2959219C385C3B11624C2A11D41E295A9C3B6E29691E2959DC38658E296901012C3A8E289A5C3B4C3AEE295A4C389C3AEC3A0E28C9076E2959AE289A11CE295A831C387E2959135C2B5E2949CE29598C2A3C3A5C3A5636AE2959931E29680E29598C2A3655AC2BAE29498E29592E288A9C3BAE295A7023AC2BB19E289A4C3A63953224B0ACE9838521065C387C3A0CE98C39CE29598E2889A6D0736E295A463E2968845375B3C7FE2969259E29680E29690781FE295A32E7FE2959AC3AE1BE289A4C3A7C2AB7A5E097726E296934D64CEA6E2959DC2A2E28CA0C2BAE29590E2889A4E1D1EC3AB360BC3A036111B36E28CA06CCF86E295A8E289A451E296880F24E288A9596ACEB425422DE2968035E295A9C39672E289A517E28CA16951757231C38544CEA33F5DC39C36C39FC2A521CF8012E295A2E296A0C3B948C2B21C7F5956E29498CF8422511EE29596E281BF0BE28C90E294904B7FCF83E295A12D12E2959F10C3A920C3A0C3871042C2BD7825402432C3A9C3B7E2889E575A1BE295A5C2B5593235C3A53619C3B460704C22E2949C635C1FE295A20326757026E2959EC2BC3E22CEB5E29684C39FE29591E295A219CEB44DE295A71926E288A9E29680C2AB6DE29597E294B47CC3A4E28988E295A0E29693E294BCE281BFE294B4C3A2CF83C3A2E288A97FE28988E289A564367502E295A6E295AA5C20421513E295A67EE2959723C2A22906C3B1C2BCC387E29595E296A04500CEA6E28899E289A4E29590C2B7C2B7E2948CC2B26C3EE295963E1DC3ACE29480C2ACE2968473C2AAE295A6C39FE2889AC38412E28CA1E295A07CC3A439E2889AC3A0C3BCC3A4C3ADC2BD74C396C2ABE294A4E295A5E29598E2959FC3BA6914C2BD2E4353CF843A36C2A1665516E294BCC3B3E282A7E29688493D4BE295A47F39CF83E28988E294B435226C6623E2968869CF846D3DE294BC29E29594C3A47022C39C1F7E16CEB52F442844C385E29490477D50C3A430C2A0C3A8382826C2BB09E29599C3ADC2B2E2889E1F273C7EE296845E3A0D4BE295ABC2BF543320C2B7E294ACE29490C3BFC2B128C2ACC3A515C2B24C29C3ACC3A7E2959AE295A2C3B4E295A76E64E29599E29692E294AC734DE29680C3856AC2B563E295ABC2AC59E28CA1CF83E28988E295A4E29693E2959CE295A9E28CA1E28CA110E295A0470FE2969053E2959EC2B5CE93E2959B19C3AF3AC2B234C39FE28988E295A437435474E2959B77E29498CE98E2959D597BC3BB14E29599E2949CC3A2E29594E2959CE295A6E295A6CF83C39F686CCF831912160110C2B2E294823DE295A6C2B10602C389C2ACC2BA5E4FCEB1C3A41414E296A04E0D1B51E2948C35E2959007554C5C43E29591E295AAE295A2E28C900CE289A53A54E295A4327DE281BFC3ADC3B3C3A635E29498C3AF4E4EE295AB7DE2889A7DCEA60BC39F38E2968C29C385E28CA0C3BAC3B64379682A08CEA62044E296883FE294945A4A371014C38750C387CF84E294BC5AC389107430C3A755E29482E294ACC692E2959900C3A410E2889AC3A5E294807D48C2BB33E289A4C3A4CEA63A53C3A6C2ABC387C3B2CEB4074201E295AAE2959AC3B16CCE987FC2A2C2AB7A55C2AB0349E28988E29596E296907D45CF84E2889AE2948CCF8678C2AACF84C387E282A7C2B243C3AA7A18C3A74CE295903526E296883139C2B5E2969055E294900FE2959EE2968CE295927EE28CA0CE9874E29690C2A1E2959C70C3AA0343CEA3000D4EC3BC0DCEA300C389C2B2E295A20720CF836FC2AB6D13C3A4204104C3AB5C117A1F7E1F26C3BA2DC3A52B7A54321F54114D331DC2B26AC2A21E34C3A446C3BA4E14E295A674E294A4E29692CEA97CE295A551E295A2E296932856C692CF8620C692E28899001BC3B7E2889A68E29482C692E2959B304F33212120E2959A6717E295A5CEB1C3A2287DC2A5345FC389C3B6270869C2B5C3A9211BCE931B0F72E294800AC2B0E2949427E2889973127C143120C3B6C3AC1914C3A9101456E294B44A00C3A612C2BAE28CA074E295A1C2BDE2889E3344397D4AE2969348E29688672CC39C1C0F2DC384E295ABE295A1C2A035C38567E295A0CE98C2A307C39C6BC2BFC2BAE296921A2DC3845775E2968C77E29594E288A9C3BA2E3B6FC39CE2889930E28C90C2B2CEA6C3AFE28899CEA6E295A9E295AA64C384E295A64AE29692CF84E295914A297F101628C3B7E281BF400100E29498E29482206F3800297A63C3BA15C3A265112CC3AFC3A410246333C39CC2ABE29592764C45E294BCC3A5C2BC42C3B21F02301FC2B2CE98C3AFE28C9018E29591C3A856C2A2CF84645BE295A0E2959F36E2948C29603E1AE2889A7D50E289A4CF8065E2948C69E289883E1355C3A2C385244B121F332CE29590C2BD33223AC3AAE289A12F4558CF86C3A822113AE29482E295ACC3B6CEA6CE9857C2A3E281BF7BC3A1260049C3A8E295A4E2949CE2959BCE984022E295946A044ECE98220FC38714331F617A5712C38914C2BB79E295A603E28CA0437B26E2968C25E29490C385C386C3B77A7539E2968075C2BBC2BA5DC6926BC2A2E295AC2D7DE2959029E296886EE29596E295ACE295AAE2959CE295907E5378C3A75829C3B73C4FE28C9064E295916829CF8041392F785FC3B6E296907EE295970300C3B17214E295AAE29595E295A0C3A8E2969261600D40E2968C1DC2B5E2949C443B5C1134CE933BE2889EE28988E295A4477B4DC3B35843E295ABE29593E295AB27E295A221C2BD62CF835CC2BA4EE295A007E295ABC3AA62C396C3AC6C1705C3A8CF80C3ABC3A7724147C2BCE29498C3A11413122EE28CA0634D485CE294B42A48C3AD52000B06385972E295AB674728C39F0112321E310829E295AB7FE29480CF8440E295A35A10E2968C07E29480E288A967E295A5485050E2959B5624E296A0E295976CE2948C55E29693CF86C3B1E2959E23CF86E289884119E29688C3A83C0D48E28988E2889AE2948C7CE29684E2969035E294900FC2AB710A5CC3AECEB51A3BC2A50FE29480E29693E28988E2959E7CE29494E289A1C2B1C2B7CEA6E2959649E2959EC3B36E05E294BCC2AAE288A9E2949C50E295A0C3A7C3ABC3B7E2889A615408242C296CE29688C3BBC3AB3258C3AAE295A6C2B1C3A8C2A3E2968055E296921E7B46CEA30D052045E29594CE93CE93E295961FE296906C3EC2B2E281BFC3B7CF80E29498E295A0C2B7703AE296923A54E294B41AC3A9E28899CEA6CEB160E29690643FCEA9E29482E2968043C2B773E28CA0E295A45EC2A228E29593CEB4E295A97C54146BE295AA69E29490C3852EE2959FCF800C2829C39C4CE29599E295A0C3A7CEB5CF84C3AD54C389C3A8C3B2603C3867C2A050E289A4116B3FE295A5C2B5C3A4E28CA10148C3A8E2959040E295A9E295945C20CF8370E282A70620E29594E29490E295AB4146E296901AE29595E2968CE2889A024363CE98CEB4CE93E2898861E2948CCF83E2959D6E1FC3A5C3BFE294824C2CE29480C2A2C3AEE295A4C2AA18C3AFE295A2C3BC6DCEA9CE98E2959D30E29494E29597E295A1E295A6CF86C2A26254E281BFC3A1C38965E295A6E29498E294B4C39FE28CA0E296A0E2959C7BC3AFC3B4E295A4E295AAC386050F71284ECF84C3BC2EE296907EE29597C3BA00C3B1CEA60D16E29490C2B0CF83E29592C2B5CF843FE29490C2B7E2889ECE93E29690CEA3E29599C3BA23C2BCCE93716517C396C3851E2AC3AE706A3F6ACF80E295A4E295A8264A5637CEA9E29593572DC2B721C2AC68C396E29598C3AAC3B61DE2968064352B54E28CA0C2BACEA378C2BC7D4639E295A754CF8667E28C90CEB5E2959754E28988E2959CC2BC77E2959D22076E2AC2BF20C2BC57E295A92A1A2FC3AAC38640226434E295A52024061FE294B43E48C2AA5DC3A0E295AB5B67526A4DE295A6394ECEA60940C3BCC2B0E289A46C49E2968CE281BFE288A93A63C3867FC2B2C2ACE29593E294BCE29594CEB45CE2959C7ECEB55BE295997157E281BF3E6A7A3275C3B7E2889A186AE295AC6A3AC3B737E2959CE2959E5D59C2B1E29693E294BCE2959BC3ABC2AC585D352D2616E289884339C2A5E2949CE295A83DC2AB5A5374E295A060097EE294A4C3B1C3BF4EC2BAE295ACE29498E294B47272CEA6E295AAC3BB2C385051552C1313E294987E7BC3AC0148C2B030E29691CF80081EC3AC2409417116452FE295A4E2959521C3B34D1DE2948CC3AD6DE28988E295974D74E2959F6415C2A12651E2959DC3ADC396C3853AE295A0571F13544BC3A5C3B1341865C3B3C39CE2959210E29592E29482E29693C692C3A73AC3ACE295955A16C391E295937BC3ADE29594C3A15FE294BC4A17E295A1CEB4CE98543AE295AA4802C3B6E281BFC2BBCEA6E29590600AC387091055E294B4C3B3C3B3650DC3A0E2959C4C543BE29593C3960EE295A5E295AC23E28C9005E295A419C3B6CE930A573A70E295A8C3BCC3BFE295AC08C391E295A128CF83E295A7C3B710C39CC3843EE29688195233E2959336C2A263C2BF7CE2889A6DC2BAE2959BC2A262E294BC4D54E289A4E2948C6B3EC3A579064D6877430D08075B2EC2B7E29599E29599E29691E2959D1250C3B33F087BE289A1E29692072039E29691E295AB7FE295A53C2278E28CA11E12E29599C3B24EC3A5E289A5E2959048C2B2C6920BE2948C095118572D20C3A7C2ACC2A56E2A2FE29498747B6DC3BAC3A7C2AAC384E296804735C2BDC3A8C2AC5645515C5D084DCE98670931C3BA58CEA9E28988E295A4C2B55DCEA927E29693C2A52D1A441100E2959A0AE295A7532D05C2B707212851C2A12A7B1FE28CA0C386E29490E288990C0973E289A520E295A47E0D4A53531A08043F24E295A11BE288990C0872004AC3A6C3B743E294904EE2969258C6920BC2AB63E295A57FE294BC4CE29494E29691E28C9056C3A20DE294A4E294824DE29490C3854A0110E29591CEB4E295A8C3A51EE2889AE296882E544D3AE294A4C3B91DE29680E295981C54E28988E281BFE2959132575D16E289A47D3AC2A577C2B113315D51C2BC70CEA3242212240A590FC2AC7173E29599E295A40C361445E295AA6F771CC387C3A4C2A2C2B05FE296A0E295ABE295A7E295ABE29490C2B2E2968CE28CA147C2A0E2968C7FE2889A071F5EC2A34F6ECEB43F1243576AE28C901B6DE29498C3A0C2BF555FE295A1E29599E2889ACEA6C2A0C38955E295A3E2959144E295A4E2959146CF80C2B7C3AA40C391E2959E664A2FC3A9C3A5662CE295A8CE93C2A5C3B1C3A5C2B241E294A4C3AAC2AAC3A8E2968421E2959C6A56E296930FE29594C3A07BE29692C3B7031900CE93E2959F06085C63E29692C3BF6640124024E294B462642B5BE294BCE2959970C39C0D41C2AB2B7C1928CEB43646C39CE295A574347DE288A961C2BFC2A1C2ABE288A955E29594E28CA1C3A13E7507E2959738C3B7C2A2CEA977C3B2C2AAC3BAC3AF4E71C2A2CF84E295A1E295A65BC692E288A908196F474A31C2A24EE2889EE295A6CF83627C321A6534206566C3A465E282A7207BE29691E296920720C3ABE28CA1C3BCE29595E2959C55C2A2E29490E2889AE2889AC3B9E295A77FC2B2C2A2CEB44F3E787F71C2BD2D3038E295AAC3ABCEA93DE294947DCF84E294821BE295A9E29482E29590E295A6E2949CCF84C2A376C3AA06CEB5E289885079E295947DE295A1E295ABE2959875E295964A235275E281BFE29693C3ABE294A4E295AC7368C3872129653E38E294BC7CE2959879C3BBC2B7E295A0E294BC6F5E15C2BDC2BCE2968CE2959DE28CA0C3BAE2959DE295A94F69E29490C389E294A4E2949047E2959578E295A7032109CEB1C3A6E288994E3507E295A3E2889EE2959CE2959345CF84311809E2949073E28C90C3875DE29490163AC3876A323E34633E4C315F65E288A9664F4C452BC2AAC2BB6AE2889E6E52E28CA1C2ACCF86E28899E2889EC2B7E295AAC385C3A5C2B26EC2BDCE98C2BFE2959778E2968CC3A0E289A46AE295916DE2949CCE98E2959D0BE2949CE295A537E289A441E2959475C69214644B6B39C2A5E2948CC3A7E295A22DCEA93AC3AD17C3ADE2948CE28CA064E2949007226F1800E295943C044460E295A622E295A1E29498C2B07145E295A7031320E29597C3BAE289A521C3BA7AC3A5C3B32D7BE294900FE2949CE295AB7528C2B563204D4755C2A2E295A1C3BFC385366ECEA94DE2968831E294BCE294A4C3B6E29680133D2611C3B9C389450A7CCEA3312454E29595000AC2BD60E28899E2948C112AE289A1C2B7C2BFC2AB7E550E3EE29693C2ABCEA6C39F7E593FC3856C7A555A17C3866472E295A520E2959FCEA3E295AA66C3864536C2B1E29690E295A27C4F3ACF8633C3A4E29680E2959FC2ABC2B7660C31C2B53669C2BAC38539E2949CE2959833E28899E29591E29596E296802FE289A4C3A6E2959BC2A554C385E2968C284AE29599CE932D5EC2B0C2B2E295A24300240342C3BFC3BC107C0020E295A622E294B41C0BC3A8E29693E295A0C3A7E28C904A27C3A5C3B361C3ACC3B34D55C2BB41C38436CEA3C3ACC3B7E2889A30E295A45E57C2B5C3A04A225226351D4DC2AC67551CC2BB36E289A45176E295AC26E2969011747C2653C2A1E29691E2959BC2BF46027CC3A47E207A45C2BC2CC2B0C3A1E295A0754CC3A2C3AEE289A173E29680C2A223E28CA0C2B2E2959A071BE294BCCEB1C3A20A404876E294903CE2949CE294945844C385E295A0CF843178610DE294805041E29490E29693E295ACE289A5E296A0E295A77D315F65E28988C2BB292BE29593CEA35DE288A9C2B75CE295931C137AE289A4E2889AC387C39F31E29688E28CA0E295AA5FE28988E2959BC3A6C3ADC2B1C3AD6FE2959FE28CA0266EE29684C3AEC39FC3BFC385E29597CEB1E28988E295A4642C68E296804EE294A4CEB50BC39C550C154AE29593C389E288A9C2A05104424C4545C3B7E296881D07205CE296913A4B3C10CEB4E295A15AE295A32E7FC3B15C7E4102732212C2B523286D18C386E295AB296AE2959237E2948260E29591E295A94CC692E295A4E282A72E4ECEB47D195975381EE295A1C3AB52E28CA1E2959458E294A469C2BA5D7F740FC385624F103D1DC3AF0A3413790275E2959CE2948C14C3B9682DC2ACE28CA128C2B77E49E2959E2606256906240B64C2BF10C3B111E295927DC2ABCEB4C3841143693A76C3AD3A55C3ACC3B768482D47E2959931E29688C3B647C3B2E28C90E289A46B5AC3A0C2AC6F1DE29690E295A8E28988CF86756E7F40E289A5C387C3965FE2959B5CC3A005C3A8C3AA08C3A91902C3872A0022E2889A6D0F404A5779C2A3135EC3A1E29592E295A95B6F36CEA953E295ABC3ADC3852D12C385C3AA306D1EE2968C6912C2B269E295915FE29592715B56E2959CE295A9C2AB540C44C2A1CEA94423E2889A7606E2968015C2A0C389E295A21AC3A6E29693CF80C2A2C2AC7AE29592E29693C2A53CCF8647C2A3E29684E295AA42E289A40143E288A9127A7927C2BDC2A3E29597E2949CC3A84FE29591E2959460C2B0E2889AC3BFC2B1C2BF5345C3AF35C2A505654C0EC2BD17E2889954320416C3BC0A1DE289A1506EC39661C2B23ACEA3CE984FC3BFC3AFC2A3CF83E29599E295A0C3A759C2A1C384C396CF84C2BFE29590E29597E29690C3B7E295A344C3A2CEB40003E295A047E295ABC2AC5775E2959FE2889E3A6D0DE295907C70C3A2CF84E2949CC3B6E295997BE296800ECEB52658C3ABE29693E29692E29690E28CA0CE93E29690E294A4E2959979E29690E29693C2ABC2BDC3A5C3B11CE29598C38920717C3CE29692CEB1C2BACF841373E294ACE28CA13C0F7C50C3A2C3AFE29692E296805E7300E295A5E28CA05511E28C90C3A7C2BDC3A7C2BFE295AB0E300D64C2BFC2A5E2959311C3A85D653EE2948CE295986E1FE295A569E2968C2063E295A4E295A31DC2ACE289A1C2B0CEA6C38623E2959CE296887E2045CF8624E29599C2AC62E29680103DE295A1E28C905E7FC3AF4C0DE28C90C3A6005DC69217C2BD18C3ACE294A4C2AA23CE98E289A4415ACE98E29684C3B1783EC2BBC2A17EE2968067C3B4C39CC384E2959BC3BFC385E29597CE9374C38416E288A963E295AB39E294ACC3B6C2BD7CE29680C2B231C3B23DE295A81630E2959D0E7E1FE29597E295AA6F6A741B1C47E295ACE296A0E289A52FE2959B75C2A0E29680C2B2E281BFE289A4C2A22FE29490E29595596D36E282A70B644048E29690004E2D06C2BCC2B2C3B70601C389E294805B1EC2AAE281BF055F5C3F2A510568C3A7C2ABC2A5E282A7E2948CE29596E295A8CE98C2A3E294A45DE295A3CEB1E2959C34CE98C3B75A374AE294A44DC2B5C3BAC3AC7F086A1EE294904EE29592C2BDC2ACC3BCE296930BE289A451575F51E295A54E69E295922B6ACEA674E295ACCEA6C3B945E2889EC2BB1DC2A5E28899E295A8C3BC45C39CE2969208E29599C39CE295A57E2045C3A0E28CA1C3A802E29688E295A0E288996BE295A42A217AE295A14B3B27C2B5E295A6C3B128E2959C58E29599C38657E28CA12BE29498E29680E29591C39C0F18E295916F6DE2948C69E289A5CEB5C39C7AE282A76AE295A2E295A67D3BC2A5C2A2E28CA0E2959018C3A92118E295913F5DCF843EE295990ECEB577C3BCE28899E295956B7E1F75E2948C61E295AAC3BBC2A3E2959BE289A4E295ACCE98E288993FC2B0E29599E29596E2959BE281BFC692E296A0CF84C2A0CF84E289A4E29590E2959E53C2BF763D4F0BE295A4E2898820CEA30D0720C2A313E2948C48E2959D25E295AB37E296906AE295A1561FC3ACE2959FCE934369C39F140853E2969176E29498E288A9C3BA4174C3A7E2959144054CC2B0C385C3BFC384E295A9C3966C6FE288A9E2898851E294901DE295A92104CEB52663E295A4C2BAE2959E244E574AC2A0C6927241056BCE983644354D06E28C907AC2A15A0C3EE289A5172442C3B6C6925F563BE295A564C3AEE2889EE289A5E2959BE28988553970E2959A7E351CE29490E295A2E295AC7CC3BFC3BFE294824C2C6EC3A7E2889E4FC2A2E295A378E288A974E29690E296807106C2AC7A5538E2959733C3B652E2889E7A2AE295A77AE28C90C2BF0C6F1E08E294986F6F3000E295945B31E296933E73E2959D7ACF83C2A16E6EE2959C4FC2BA53E28899E29692CF80CEB1037351C2BBE295A2E295A4C3A2E282A7C3B33B19CEB16F2A3F162DE29688E2949855C2B5C3BAC38476C3BA4EC39C54E29599CF84C2BF0D43E295A5C3B6E2889928E295A5C3A21468436A39C2A5C3BA26E289A4E295A4CEA3E29684E295A2E294984E35C2BDC3966442E289A53513C39FCF84E29692503DC2A5E29690C3A448E2959DE282A7E29592C3A55005CEB1C391C386356A55E28CA0C3A6130C492CC3A1C38553E2959EE28CA07432C2B27CC3A8C3BFC3AC7CC2B56338C2A1C384E28C90E2889AE2948CE296A0E2968C45E2949C3129E295A1C2A0E295AC301FC2AAE28CA07C75C2BB4BE29592E289A431547FE29591E295ACE294BC4D17E295957D6948E295A2E295907CE2889EC3A9E29680070CE295A1432448084B0A2AC3A8CF83205F03E2969317C2AAE29680E296924DE28CA000346A7F16C3B6E295A54CC39160E2959259E281BF11CEA945C3B1C2BDE282A7E294BCE29591CF8634C39628E2889AC3A8C384C396CEA94FE296880855E29599CEA9387D3106E29598C2B1711CE29591C39C153AE29684E295963CE29490C385E295917DC2BFE295A5CEA6C3B27D4E2DC3B76BE289A54C50C3A777E295A249E294802DC2AB32C3B2CF84721E2FE281BFE29482E289A4C3BBCEB53CE29690C3B7E29690C2AA5DE295A0C2B2227FE294BC1AC3A63443535C796BE2959AE296926FC2BF76E2948CE2968C5F336352CE9805373426C3B73546C3BF18E295A6C3A5CEA60F77E29595E282A7E29598E2959979CEB5C396C385C2B763E28CA0007D0C1E11E2968816E29482C3A70F0E2FE29490E28988C2A5E295A6C3B4E29594E29480E295943324E295983B2BE29691371BE2959DE29482E2968836342031C2B71144C3A9200333422A7F6077E29498E288A923C3AEC3BB55E294A4436DC3BA312DE2889AE29482E295A1CEA9545DC2BB6BE2968C2A566DC2AC6CC3B6E288997D54E295A3C2B0E295A2E28C906655C2BA3F450B2CCF86E289A4C3A4E29680C3A7C3B7E2948269CF84CF84E295ACE288A91A6AE29690E2949C6EE288A96C5145C2BDC2BCC3BB23E29593C3A4C3B6C2BA32C3B24FC3B659C2AAC3A40BC692617D5FE2959CE294AC56E29592C2B0C3BBC3B9E29690C3B2657CC386C2B2C2AB663E76C2A5E288996A5B1DE295A9CEA3C3BFC3B6E289A460E29592C3B7E28899CEA66BC3AECF863A47C3BF5AC2BCC39CC2AB66E29592757CE295AA35C2BAE289A42AE2959C61C3B9E295A2CEB4E295A015E29597CEA3E28988E295A4E295A17AC3BBC2A0E28988E295A2C3B6C3B4C3B4C3BACE98E2959CC3A70F0E0FE2959F232B0D40C3A8E295A5C2ABE295A906CF843D3079430148695D3EE295A6220841124456E2959CC2BA7CC3B9E294A421C2BFC384C2BF0DCEB50762327FE295A34BE2959BCF8610E295ACCE9845CF86E295936D7FE295ABC3B3C3A625E28899E29693E29598C3A7C2AAC3BAE29594E294824403E2959D6BC2B2E2889AC3A5CEA3E295A11356E29595E295A90717C2B742E29490CEB5E28CA1210D7CCEA32F16E2969302772E394EC3B9CEB4E295AAE295AB18E295914DC2BAE289A45DC3B70FCE9832E2959EC39C6CC3A7E295A2784E6DE2889A33C3B6E29599E28899CEB4CEB1C3B2E29692CEB4CF84405DC2A0E29684E295A7E294B42222C3B342277414E281BFE282A7505D477FE29490E2959C0100C3B168E29592187BE289883258296CC3BF79C3A25CC2AC60E296882EE2959B35C3BA565C10C2A1C2AAE29598CF84E2959837135375E296907D45C2BBC2BFE295946D07C3AE38C2BA171DC385E295A42D1FE295A3CEA9E295957DC2B7C3BCC3B1E282A725C3A85FC3B6E2889EC3AD4CE2959D2375C2ABE29592503A2C33E2959F2BC2BB0A15C2A03F59E2959137E296A0E295A0C2A03BE2959CE295A06F61E281BFC3B1CEA319E295A8E296884B03C39622C2AA23C2A0E2959DC2ACC2BD5BE295A1E2959C1FE2968866E2959B4CE2959CC2A22DE29688CF80C3A8E289A4C3A1C2AA7347E295AB31E295A2CEA9E282A77665E2959FE29688562EC2ACE29597E295AA34E28C90C2BB33795E68C2B0E281BFC3BF5A7CC2A2044E752A28E295A2394EE296807E1FCF86C2ABE29692E294902E64CF837AC3A8C3B2CE93E28CA0E295906FC2BDE289A4E295AAC3A2C3861DE29684E29480C387E2959F4AE29490C3A6CE93CF804F6E575F7FE29482E2889968E2959CC2B50FC39671E295993DE294ACE29592CEA3E295A3E2889E29E296934D64C2AA1DC3BF6A0725E294B4C3A92EE2959F357D5DC3A7E29684E29490CEB5C3876ECE93E2889968E295945850E29498E294826D4AE29599E295A4CF835AC39C3AE282A7092D4AE2968831C3B34C50CEB5E288A9176A47C3865F1CC3AAE29688C2A07FC3B7E29690CEB5E2959FC3BB25E295A60F5A2B33E28988E29690E295A177C2A53A55CF84C2A37BE288A939CF84764F774F774F4FE289880CCF80C2B1E2959F7CE295AAE295AA1E7BC39C6110C3AA576B0412E294ACC2A004E2959DC38700C2B1E294AC0B0F483C20E2889A6500C3BCC2B07AE2969146C387057806C3A4C3AE6461793C7E40C387E29688E294A4E2889AC3B7E2959CCF847E75E295A7C2A5CEB5E2889A71E2959B6AE288A9E295A0E294BC43CF865DC3B2C3B2C3B2C3A6E296922262C2A1E2959AE2959AE296841152E2968C73C2BD76CEB5152B3E3222E29593C2B7E294BC5AE29490E2949CCF84C2AACF84C3A55C7C6D540603E2968059E295AB775A626DC389C384E28CA1E2948071E2959338CF84E295AA0F1018C2BB18C2A34112C3A7CEA6C3893554475DE295903600002000494441544A6FCE9879C2AA75C2B5C2A3E289A55956C2ACC385C3916248C3AAC39CC2AAE29498CF86764D43371EC3AD3E4B1407C3AEC3861CC3AE3EC3BC32660C087EC2A0E2889A2FE295A2E288A9E296A0E289A1CF83E2959F6F3E5A7D40E28988C39F55386261E289A446C396163C4F6F53E288A9E295ABE29595E2959AC3A704C3AFC2A14DC38456762814CEB557E28C901CC3B7362F75E295ABE2949C63CEB46FCEB578E294A4CF83E29591E289A1C3BC18C389C385C3B7E29482C2BCC2BC572E63E295A97D47E295917DC391C3ACC389E2959AE2959E10C3BFC2AB54C396E2969367E2968CE2959C1625E294BCE28CA00D77CEA3E289881124C39CC3890E3B02CF80E29688C38510695CE295A1C2B5C3BCC2BA3C67C2AA73E295AB354E6AC3AC755DE2889A6330C2A543E294941A792C7C1FC386E2959E2037C3A2CE9314E288993EE295A0CF8644442CE295A6C3B32AE295A6C3B304E29595C3B2E295A3C3A2C2A2E28CA12AC2BACF803D7203C3A4C3A02D1705405915C3AA05C3B3C2B21DC386C3A8C3ADE289A1C2A1E2959FC3B2CE985CC2A2CF86553AC2AA42C3B4C3B9433BE29596E2959B042F48CEA6CF84E295A5E2959A0739E289A57DE29595E295A0C391C3B6623A42CEA308E28CA077C2BA3E745AC3A7C2B0C2B2C3AAC2BFE295A166E294BCC384C3AFC3B4C2AB6F247928C3ACE29690C389E2959F7363C2BCC2B2E2948CE28CA165E2959B0FE2959C322FE2959B0FE29599565E55CF83CE98E28899E28899C2B7CE98C3B427E289881FE282A7C2A3E2968409423765E2959C321929E295A31CC3AD01623B2D120040E2968C003444C3A734E2959D0E2FE282A716C3AF2F17E288993031C2A5773E472DE288A90F57C3844B4CC3A056C3AE06E2959F3322C3A0C3B6E295952ECEB1C3AD3C28CF860DE295A5272B1604221F73C3A8CE98C387407D786B443FE289A541166EC385C389E295A1C2AA5FE288A92E12E2949CCF84C2B100157DE28CA0E2959EE2959215E2959C54C386CF84C3AE7CE29595C3B74F6AE2959D1952E2969211E29692E28CA106C3BF06E29680C3A74B26452DCF80632CE2959B0F2539E2889A70C385E296932A36C2BAE28988566F5D3C58C692C2BB5615E294AC701A5EC3B4C2B1E295A4E296A04E4641122D316240E2959AE296911A147FCF840F3EE2959BE281BFC385C2A0C3B4E288A97FE289A1CE9867E2968867701D03CE93C2B7524AE2968C57C3B7E28CA06CC3BAC3853E2EE28CA1E28899E295A2E29680E295AB43152BC2B542E295A9E295A62355E2949036E289A561610FE29490CF80E29597C3AB11E29599C39FE2949CE28988C3AD11E295991122E2959FCF831D4921562546C3AEE294BCC3BFC2A34963E289A47DE295AA44C2BAE29494E2898831E29593E2948C1F7ACEA6E28CA1CF83E2889AE295A8C3AA0DC3A6E296902352C3860B11E2959E550228C389C3BBC3A237E296A01902E2948CE289A4E29480C39616E295A402E295A0E295ABE296933807C2A55C1228E2959268C2BB0042C2B1CE98C2BAE29688E295A6E29680C2A0C3A2C3853F7BC2A0C2B2C3B91F7CE289A4CEB4C2BAC2BBE2889EE295A2C2ACE29593E2959C7729CEA3C3BAE295A1E29594C3AB787F5CE28CA1C385E29590E28988C39F7B5F782CE296A01210C3B63334E29490180809E295A13FCEB4C39653CE934CCF84E2968CC2B75CCEA34CC3BC5FE294AC6FC3AC305FC3ACE295A56D17CE93E294A4E29693C3AFC3A0E295A6C3ABE29590E289886169C38518E29680C3A7CEA35A23E295A3C3B74B38652410C3AF5039E28C90E289A17D40CEB1E2959D00E295A7E28988170D6BE29596E294805827C3A97CE28CA02FC3857B4F010DE294BC780C1921434132191149C3B1E29480E295ACC3A9450057E296921FC3AFE294BC4DE29592E295975DE29599E29494C2A534E2959D29E29692C2B0767EE29490E28CA1E295A15418E294AC7DE2959C35CEA6E288995E4AE295A243E295A5E295A6383106E2889A412752C2ACC3AAC3A05C162A197D20317DC3B110C2A2186B5B48C3B72945667271793E7364C2BC2C5FE296921DE294A41849E288A9E295A3201FE29692E295ACE29691E28C9032C2A5CEB4E295A9E28C90E295A962E29482E294982CC692C2A3E296803F79E29595E2889E2722E2889E13C38651C3AC09C3BB516240C39C06E289A1E289A5E289A526E2889E63E29692284AE29595C3A0E29490CF866F035EE2959709E2959FC3B7E296931AE2959D28E2959CE2889EE29598C2A37AC391CEB5E29498E29591E2959327E2959056C2BDC3B245C3AF22E295984F1E726CE2968061C3A10B04037309C3A4C3BFE295AC53E289A46C1FE294823E365D52E295902EE2959E59772230C3B4C3AFE289A17D0C75E2949074C2B23E6BE294A4CEA3E2948CE288A97A70C38411E29599C3ADE295A367E29595E295A26B0A59C2BB0064C3BFE295ACC2BAC3A97C1C085AE28988E294A4E2969165C3BCE295A6E2969338E2949077E295913C5F2DC3AC31205C2324E2959FC3876403E29480386B0900C3A12C1100C3AD0CE28988E29598E2948064C2B1C3B2E295A944CE93C3B419C3A45BC692E294A4E296A031E2948272E295A3CEA9CEB15A7F6C56C39FC384E2959618E29597C3A72069C2AA730CCEA6C3AFE295AA59C2BF5CE29690C3A6E2959559E29692C2A3E2959FE295926B4DE289A56DE29490CEB4E2948CC2AAC3A6E295904AC2A2E295AB47684D4254E295982FE294BCE295A15F722D0DE295A42776362FC3AC393675E28899E28C9065E29597E29693E2959A69E295A4343D7F7E5903400DE2889A6B594450005CC2A0E28CA02DE2959505E28CA067E2959FE295A946483640CEB5C2A33A6F72CF8611E2889E6EC3B70A4DCEA3E2949CE2949C1B491639CEA6CEB4E295A172C2B12249220B63E295A6CF807AC3B4C3B1E2959C68E29684760C5D21CF8332C2A5C2A23CE296925C142D2642CEB1C3AFE294A40CC3ACC3ADC3B14739C2AA3EE282A76BE29480C2BCE29693C3AF49202D5AE295A733E2959F45C3AEE288A9432A0E6DC2BCE295A11F02E295ABE295A510E2959C35E2898820E295AB7649231FC386E296921F73473E78E288A9E2889EE28CA1E295A3C2BB752A3C3B5B55C3A7736AC3AF4BE28C904B3EE295AA6770E28CA03D0BC3A54EE29590E2959EE2959448C39118C3ADE295AC3B6FE29688C2BD57E28CA1CF836EE295AB7CE295AA34E28CA0395137256F62311618C2A2CF86551ACEA90DC3A64701C2B21FCE93CF86C3A6E295AC2E16C3B4CE98E2959DE289A4E2889EC2A16BC2BBE2959B310412E296921A2964C3AD4A4DC69263E2959A4215434EE2959AE289A4E294AC59E294A4E2959DC3BFE295AC63CEB53563E29480C3A5E29480C3AECE98C3A108CF802DE2968C3F73C3A6C6925AE295A0C3A75B592EC2BDE29599E288A9E296A0C2B5E295A73D7DE28CA068E289A4E29691C2ACC3A8E295A5600DE295A2E295A4C3892166E28CA05CE2969301E295A5E294902AE2959C7C596FE295965BC2B7E29595C2ABCE98032278E294BC3FE28CA00E5DE2889A3B18E295A264C2B132E294A4C692CEB4640CC2AAE2959BC2BB51CEB46B78C2A5E29597E2948CC2BB3E29E2959C6D7239E2969016C3843CE28CA0E2889E7FC2A23CC2ABE296A021C2B21CE295A50ECEA6E2959A21437D6878C2ABC2BAE288A9E29688E2959AE2959FC2A11BC2ABE295AAE289A47DE2969318C3A936C385E28CA1E295A85CCF80E295A049C2A23E5D5D52E295A5C3A7CF807D234B3F0EC2BC116C43E2968C36274168C3AC185BC3844FE2959C2EE289A4E29494E295A5C2A0045DE2948CE28899E29688C3A508E295A4E29592E295A7E295A16142E282A77BC3AEE29480C39C24E295A3C3B773E296804714E295A5E2968877C2A1CF83C3B7C3BA54E295977CE295A7C3ADE2948CE289A56D7B0978E29598E294B45D337D75C3BBE295936BCEB11D23C3876A516C7EE296A05B6F3DE296A0C3ACE29490E281BFC3AC07CEB4E28CA1E294AC64C38760CF841C2BC3B25526C3B908C3914A41092CE295A8C3A9CF83E294BCE289A1C389E2959530C2A5C2BA141BCE93E29688560DE288A9C3AE2423E295A3C3AF5CCE98C2B1CEB1C3B13C0CE289A1221ACF8452480C416AC3AECE9873C3AAE29692C3896A3F78E295A9C3A6C3A8CE98C389E295A5477CCF83C3A7E289A1606EE29599E2959F63E29480C2AAC2B0E2959E7468CF8621CEB1E2969166C3AC15E295994120174FC3A1394FC2BA241F23E295AC1D5D19E295901521485B400157E29480E29592435EE29480C3ADCEB4591479E289A5CEA3C386C2BF0172C3B4C3BBE289886AC2AC305CC3AFE295A559C3ADE2959ECE93E2889AC38962E295903D36E2959BC385E2949471E28CA16EC3A74D4E7B2325E2949CE295AB5A75C3B7C3A5C3B9E29480E295A07A44C3892EC3850728CEB4637BE295ABE2959E6A7F6CE2959E78CE98E2889E6252E296923DE282A7CF86211A3644C3A9E288993EE294A4783342E295AB7E6EE29680E2959EC3A8C69273E2968CE2889AC3B1C2ABC3964D29C2B5E2949CE295A2CF8448E2959221E29594113344C2BDC39FC2B77EE289A4E28CA12A10010BE2889E1A1905E295AAC2BB3148E289A40ECEA3C3B350625DE294B4CEA9E29597E29597703D615EE2959B6C5EE288A9E295A2E28CA0615DE2949C33C38736237A6CE29593CEB1E282A7E29680E294987C1FE2959B0BCE9854E29482E295A0C3AEE29590E28988E294B43DC3AA49E29596E2949C454E6BE294B41E6CE2959114E29482C3B7E295AAC3AECE985AC2B770CF84E29598E295AA7C2852E2959D195A5C4612E288A966CE937C1FCEA94CCF844AE29684526A6B79C3AE1813C2A1E2959C2FCEA3C389C2BDE295A3E289884DC3AD68E295A71DE28C9035E2948C34C3B104E295A64579C2B7335F3E7FE289A54BE29490E289A1E28CA0E294B47AE2959C38201F6DC3AD45CF8427E2959FC3BC4CC2BCE2948040406C186BC2B1E294BCE289A4E2968CCF83CEB4E295ABE29590C3A72727E28CA001117CE29688E2968CE29688024CC2BBC3AC65011B443EE2959A62E296914B78E2948CE295A1C3BFE294B47D331CC391E295A0E28988615B6C2533E295A0E295AAC2A3284CCEA3CF80704002687964E2889A5EC3A6E296923DE2968863CEA9E2949CE2968C58CF84E295A9C2A2C3ADC2A1E295966FC2A0E2948CE295932C5F6670E295AB35C3ADE289A4E281BF68E2959AE2959F58E2959D1952C396C3AF7CE29593E289A110E294A43E741EE29498C3B7E2959AE295A8C3A2774CCEA3C3A2C2A24131E29480081B07E29692C389C3A673E28CA17955C3B2C2A2371EC2A53EE296A0E295A9E295A75C3C38E295A32124E2889EE294826C385EC3BCC3AE761CE28C900162354810C387C3B7E29498C2BB6AE29595C3B247E295A4E2959E2BC3BAC3B6E295A61EC3A7C2B5C2AB14E29490C3A4E294A4E2898842E295A5CEB43417E2959BC38558E296923AC2AAE29680710014C3BBCEA3E2959018C2A2E2959F630E311D527262E294BC62E29480C3AACE98E295A8E29684E29596C3A0C3A650E28CA1C3BF0FE28C9058C2A5E295A8E2898850C2ACE288A97D03E294BC43E295AB6CC3A9E28CA0E294825EE294BC72C39C63C3B3E289A5E295A5CEB10DE295A3E295917DC3A0455960E296924FE295A46B33363420C3B75C6666C3871C56C3ADCEB415E28C905A145814500240C3AF111D1DC2BC6B252FCE931DCEA343C3A8CF8635E295986320C3A0141C3BE2968007E295961DE2968CC3AC7320C3A5C3A9E29590742ECE98191EC3B4E2959FE2949C36E29596336F46583FC2AAE2959E18E288A93B3EC3A6C389C3A751C389C38518E2959D195CC2BBE29482CEB4E295956AC3BAE28CA100E281BFE294947CC3B9E2889923C3A050C3AEC3AC7CC3B1E29494E2898801E294AC7350461F2268CEA9C3A5C39C5D4D4D43E29596E295A5C3AC7232E29480E28CA0E294BCC3A46414CEA3E2959A0C101A5825C2BB0DC389E2969344E29494020B2CE2969144CEA3E295A0E295AC31E2959D7FE28C90E29692E2959CE2959178C2A57CC3A50DC3A0E29688110B79E2969279E296886278C2A0C3A5C3BFE295AC5DC2B5522CE294802246562CE289A178676364C39FC3A8E294BC3C1F7BE295904A35062D26E289A510E29597E296A018CEA678C3AEE28CA1560AC2A1C6921AE29599E288991CC389C385E29598C2B7E295AA5F0E11515D37E28CA1765B37E29598E29684C396C385E2968C6C5843E2959E49363EC384E295980031C2A56A6FE295A44DE288A96A22E29591E295917EE295A1C3A2E295976409C3A1CEB5C2B223C3AFCF86C3A4E296923CCF86C2AB5EE29490C3894C2B1CE295A320E29598C384584CCEB4E29494E295AAE289A134E29693620DCEA6E296901B3F442077E2959F1C04E2969011E295ACE295A1C3AA63E295A042C3B2C386C2A3E2959818CF80C39163241CC692274B5F44473EE294A4E295A871E28C90C2BDC3ADE295A57BC3A7E28CA0E29690E2959FC2A5E2959919E28899CEB1C38541C2BCC2BC575C74E29690C2A17DC3AA501405566559C3B6E295AB2CCE98C2B2E2959EC3A529E289A13C07C3B3275EC3A811CEB43EE295A0E295A5CE93C3A20F5F6E3FE2889A6CE2889AC39FC3B7E2969379C692CEA6C389052BE294805315C389E295A405E295A13600CE980C335AC3964DE2959EE295A0E295A9C3B25A362B721C33341CC3A938631BE294ACC3A4CEB523274656C2BCE28C9064C3AD42257D22C2A159E2889EE295A753E295900E15E295A80E76E295932BC391C2B7C2A5E2969047CE98E295A1E2948C775FC386E29598C3A722E295A14BCEB41C19E289A47CC3A8C3ABE295A6E2959E74CEA3E295A85510C2B7E294BCE294BCC2B5C2B1CF80E2959F670F56C2BDC2ACE2889E583AC3A0E294B4E295AA283CE2959C60E295A3C3AE505220222CE2959BE28988E2959C2FE295A2E288A9E2959CE28988E289A5E2949CC3AFE289A4CF83E2889AC2BAC2BAE289A12AC39CE28988C385E2959107E2959ECEB57D7DE2889E1C24E2959FE2959B67E295A6C3A6C2BAE295941F22C3AC7C48212FC2ABC2B2CF862AC3A71CC2B5523BC2BD1A31E288993E6C73766CE29480E294AC37E2959E24E289A466C3B1C3A258C2B0CEB5E2959F13413E7AE29482E295A669E295A167C2BC3834CEB51CE289A51957E28C903D4BC2AC5DC2ABCF802775C387C3B9C386E295A6E29590C3A1CEA653576A59C2BBE295956B14732EE288A9E28988E295A5C2AC2A36E28988E295AC56C3851F3CE296843C58E2969064E294B4CE932221430A64E2949CCEA3480DC389E29690E295995D5922C3B605E2959FC3A625C3B219C3A5E289A4E29592E295A8C3BF05E2968833E295A5E28988C3B9E295A16334E2959EE295A032CF80E295A5C38563E29480CEA960CF847F7D6303C3B1622C52623A4F390BC3B2E295A71CE29592E295A02E16E2969346C3AEE294BC741E3346C3BA250F71C3A4754832735E4AE2969211E2959B0CCEB531E294827911CEA620085A7263C3B6E29598E296935E49C3853B763D0F2E1656E29680C3B22C0A58C3BF72C396E2959501627CE29599E295A612E28C9028C3A610E295A34CCEA6C2AB167CCF84C2A0E288A938E29480E295A3E2959AC3A7C2BD3EE2948C311A73433E52E29590C3A835E295A806CEA9C2A2E2948C34C389E28CA12A066F0639E28CA069C2B5E2959070CEB457E296807A40C2BF1F7DE295930C4DE296A0155FC2B2E295A1C3890FCEB57C1F2BE282A7E295A7550E772EC3B3CF84E29595E29591C2BCC3AD31E2969379E29498E2948C177AE295A8E29592C3860B03CF86346550C3B6403E24C2B5C384C3B11C1F767BE295AC35E2959BE294B4010BC39F2DE2959AC3A5E2959AC3AA25C3AB18C389E29490C2B23F7D78E28899C692C2B2173FE281BFE289A1E28899E289A4E29591E2949CC3A4CEB532C3B93CCEB5E295A1C3B77E4DE2889AE296A0E294A4E28CA0C3A9C2BA19E289A4C3ADE294BC5C2E51C2A0E295AAE28988C3B2E295A43CC3B9E29691E289880FE282A775C2AA1AE29599212527466C08CF8473697DC3B1E29593C3AAC389E2889AE29598C2BF58E2968048E289A5C2A3C396E295AC25C3A8563C5F4A4CCF8412725CCF80CF84E294A4C3B7C3B6E29692CF836AE295AB131277C2AA2D476E2E5755E29692E294986CC3BBC385E295A7E288A9C6925CC2BCC3BBE2959221CEB415E28CA17CE294B4E2959E7EE282A7C3A2E295A4E294820162E282A775E288A97FE289A1CEA9E289A577C2A0E289A41F7EE289A5E295A4E2959FC2BB5A41CEA6004440447D2B190D1C26E29692E289A4E295A3E295946BE295997ACEB5C2B757E296841BE289A1E295AA4AC2A54A010BC2ACC2BA3EE295937672E2959D576D7926E28899E295A2C2B74148E282A774C2B2C2ABCF861E5A643972C2B7C2AA20CEB5C3A6E29693E282A7E295A3E295981E3AE2948016C3866CC39C4BE2948058E295A0E29692674E70C2B7C3A82CE28CA1E294980C33C2ABE296902172E2959573C3872B071CCF83E29494E29494E282A716C2AC4FCEA61AC39F32C2AB5CC3A21B05E2959E23C3863CC3A97EE295A2E289A4E2949C1A4DE294A4C385E295A1CEA95BE29482E294B4612D0B5D635DCF841106CEA6C3BAE29692E295AB48E2959A21C3AFE295A4E294AC7512E28899CEA63DC3BB5CCEB5E2959560405DE2968435E2959AE29593E2959F31CEA3E29595E294A4C2BBC2A039222422202C0B5CC2A52C2ECEB5E2968C5B3D582E7BC396E295A8C3BC69C387703D4BE295A31CC3B40152C3BB08C2A24D79E2959C72CF86E295A2540340713B6057E29688E2889A27CE9845E295A5E28CA018E29480422A7CE2959C5863E295982FC3A635C3AEE29688E29490C3A5E29680E2959CC3A6C3853964C3ADC386C386C3B44216C2AC106F61E295A9C3AA454CCE936045226267CEA3433AC3AF1777E29590E295A558E2889A21705E4F0DE29592E295AB3C13E2959E72C3A4C3B4E29693CEB538733937C384C39F02E2969268C2B1E2949C154CC3A2C3BA10543017C391326A16C2BCE295912678C2B1C3B3E2959B36C3A2E295A60A4B0068CEB5E2959BE295971AC3A75BC692C3A0547A2EE295971E4051591E2ACEB4C2BA5DE29490CF86730AE29598C2BAE2959CE295A3E29595C2AA6F0E390470CEB50D63C3B17760C2AC72C3B10E37E29692E28CA149E2959C1FE295A1CEA30D1822C2AC6BC2BCE295981A31E2959EC39FE2948C65E295A7E295A5C39CC2A0527B2446CEB5272DE288991A41CEB5780472E289A126E281BFC3AFC2BFE29498E29680C3A43165E2959C32793FE2948C64C3A0E2968CC2BD18E295A31CC3A601E295A517E295947627E28CA1E294ACCF83657359E295ABE28CA05159E295A517C3AAE2959541E2889E2234C2ABE294B45168E295A8C3A9C2B7373234792F6C07515B6610E29688C2B53614E29494C3AAE2959D03E29691C3AA3CE295AB76C3A163C2B2C3ADC2B268CEB407E29688E288A902C2B7E295AAE294AC480EE295943AE295A8240B07E2959BC3AA1E7DCEB422072D73E2959A57C384C3B63EC2A3E29692C3B7E295A4E2959F61C3ACE289A15AE295A55CC2B5127ACEA9CF8022073DE2889A31E28CA01DC3BBC3B6674B7B6D0A3AE2959FE29494C2B1E295935EE2948242CF8421C3B96835E2959EE282A7C3A002C2B748E295A1E295A6C391E294905149C2ABC2BB33E29494656E48C2A175CE98E295A941E296846701E294AC2B23C3A408CEA6E28899E289A4E295ABC3A7C2B00F440424E29591E289A4CF83E294AC20C3891BC2B0C3B9E295A608C3914849C396C3B92FCEB4CF8676E296887C58E295ABE28CA03EE29494C3BC0F44CE93CEA951376018E2968CE2959B6EC2BC6FE2959AE2889A237555C3AF53C2BBE294A43C0CCEB4E2968068C2B228C3ABC3A1E29595C3B155E294BCC39FE29482283BC3912530C6920BCE9803C3B9CF847CE28CA0C3BBE295A5E2959FE295ABE295A6C3A5427353C3AFC3A42B645C7DCEA3C3A45C234AC3B27850621CE294A4E2959F15C3B2CEA9755DE295A663CE98C2A1E295927ECF867EC3AE79C2B22D231F22721070E2948259C3BB0050025C1B1F434CCEA62E4648363EC384E295980031442A5DE29590C3ADE2968871C3A7E2968458004310E29592754DE295981310C3AE3DC39C70C3A9E296917ACEA3783FE2959F0D441C4BE282A729C2BFC3AE0CE295A70D05E29592C3A7E295986FE29597C3B769C3B4E2949CE295A4E294904FE295AC61C38460C2BDC2B7CEB55CE2948C7F7047E295A1E2959B31E29494C3BC3A6DE295A7C3BCE294BCE2889A1452C692C385E29690E29684776448C384E295A6E295AAC2B7CEA933E28CA04EC2B0E28CA0C385CEB41A617B076DE295A6C3B1CEB4E29597E2889EE295A5C385C2A37738547F477977C3A9E295A6E29597E2968CE296800D3AC3B96A0F38E295AC6BE28C90E295A1E2968065E29597E28CA01D0749E2959C5DE295ABE2889EC38976C3A0C384C3B944C2A0E29597E295A96FC2BB2DE2959B41CF84E2968435732A726CE2959E4747E295ACE2959BE295A6C3BBE295A66AE289A4C2A2E29490E2889973C385E288A9E296803FE295A3C2BFC2ACCE9310C3AE5E58C3AEC389C3AE786403E294806945E29490E282A71708E2968C3D27E29480CF803FC3A47C687B7FC3B1C3A6C3A014CF83C3BC40E29490C3A07AE28CA142E2959DC3A2E29684C3B7CEB1E2968C0350C3896EE295A23AE295A1100B6DE2959C5DE28CA1C2B13D10E29480E29591E295990E426B04E289881DE28CA05CE29688E29480C38916E28C907AC3A0CF83E29692C3A2E295A8E295A1C3A6C3B9586BE29490CEB4E2948CC3A523CE983D35CEA32306E29693C386C3A60FC2BBCF80C692C39FCF80CF83E29693E29684E281BFE294AC771E3FE296A0E29590E29490C2B7E2959007CEB4E28CA1C3B330583B6D2BE29691C3AA306173112855023A5C4FC3A957C2BBCEB4E295A6E2968CC3843EC2AC1B78E29490207803113677CF84C3BBE295A7E29684C2AAC3BBE29596C2BC55CF861DE2969252E289885A35CEB5E2959F6AE2968CE29596E295A1E295A1C3BAC2B2E295A354C3AE08E28988001D21C2AAC3A2E295927F5DC386E294B4E2959CC2BCE295A2116BC3AEC2B218E289A5C3B7C3B11A1B12531FE29688E2969320C3910F38E2959B631ACF86070F39C2AB77C2B143624342E29690E28C90E295A8C2BD767B7964613A272E13E29591567BE2959E58E2889A396B24E29596E2959B1872C3B1E2948C15C2B73EC38521C692E2959757720FCF8063E2959E6AC387C3893EE29684CF8471C3A1560444341D5EC3A5C2B03F0AE2959A41CF84E29594C3BBC3B16240E282A73FC2BB5FE29490E29690361FE295980D3D23C38757625E2B36E289A521CF83C3A6C3B9C3B77EE294BCE295916FE2889ECEA97DC3BBE295915FE288A93A1EC2ABE28CA1C3A0E28CA05FE295A777E2959465C3AE5C3645C3B9366B212D63CEB403C3A6E28CA001E295A7E296A0C3AB1DE2959911C3B3E289880848C3A0E295AA1AE295AB5AE2959731463A56C2A171C3ACC3AC7CC2B0221619E28899085FC38534CEA3C3B4E29691C38429CEA6CF80E2959B5610101011E294B4E289A13DE295912112E294AC313A2BC3B92919204D4300043500E2889EE289A12A7D1A78E2968C7BE2959B7325C3A6E289A479E2889A39E295AC011218C2B70CE2959431E294BC4A48E29690E2968806CEB1E2968C7B2521C2B26CC2B2251DC2A262C2BDE295A737E2959ECF83700FE2959C3D570C311F07C396E2959EE295A3141AE29599CEB173C2A03644C384E29590E29688C391E28C90C385E295A746183BC2B545333606C3A4E28CA0C3B7C3A6E2949C251173E29592C3AFE28C90C2BA2DC2B5E2949C4838E2959A6DC385443FE29688E2959EC3B204E2959EE295A6775C41687E70E2959348CF867669E2959E7C48E2959437197026125C17C396E2959B7167E295A2E289A4E294A46BE2968843CF80CEB15CE295935603E2968034102C16CF83C2B5E295A66F5F3CE296A0E294BCE288A93C79707272CEB40A5601E281BF18C3897CE28CA12A1B20E2949CC3912C10C3A8020AE29684673B10E289A45AE2968CC39672E2959BE296901FE28C907BE295A2C3ADE296901A0D791AE29690C3B1E295AAC3AA4548C3AE09736C7BCF8412E29595E295A74967E2968C43CF84C3A1E295A7E295AAE29480E295ACC3A8C3B21A622159C692C2BD3EE28C90212D1ACF8037E289A1E2959D1AC2B1C3A156763110CEB567E29590353205CEA343E295917FE294A4E28CA1C3B6E295AACF84E2959EC389370E6221E29599E2959B2BE2968C1755E295A379E289A4C3AC7B4FE2959BC2B7C3B2C3A70F4E56553708E2959C3BE295AA05C3BF634010C2B0E295A0CE98E295A3442829E29480C3875CC2A2E29490C3AF0542C3BC58224275E2889AE29480E295ABE28988C3B2E282A7E2889AE29591E2959EC3BF0EE296917C3EE29593C2B2581779CEB1204F3A07E2959D54C3AEC3AA491FCF86C2B1E29691CE98E2968079E295A2572C37C2B5634CE296900CE28C90C3BF0F60C3B7C3914B4CE2959F10E29591C3861A1F0A04E2959AC3ABE29594E2898821290702C2B541E29494C39C44E295A220542DE2959BC385E29692E295A3E282A742E295A24BC3B9355242C384447F73E29593E296A0C389E296A0C3ABE294BC23E295A5E295921FC3A0CF83C3BAE289A11ACF867FE289A14FC3A73704C3A802E296922CE295A6C3B344E294803EE296A0C385666063713130E296932172C3A406487BC2B0C3AB086AE29591E29591C3A5E294BCE289A1E295A558C2B50FC3A520163EE295A7713F0F7DE29690E295ABE29599C387427A4AE295A10723C3ACC3A7CF86CEB140C3AEE295A3CEA3C2AC3B08E28CA1C3BCC2BB4117C3B30F09E295A02DE28C9039C2ACE2968CC38552E29498E2959DC2B5E2959E186F3B50E2889AC3847BE295A9E2969062C3AC351322CE98C3A742E289A40523E28CA1E2959636E2949CE2889954E295A7C3860447E295A6E2898861CEB5C3B4C2AA6EC39C66E29596C2BDE289886120E2959C4646C69255C3A2C3BBC3A0C3893C36E2959B5C6660C387E28CA0C39CE2959E3FC2B7E295A4C2BDCF86E289A4CF84E29688C3854EE29593E294BCE2889A4B2A5EE2948CE2959C3636CEA3C3BA75C3B9E2949077E296A0E2959FC3B7E294A4E29597221FC386C3AEC2AC21CF86E2969179C2BD62C3B7C3BAC385E28988E295A7C3B17FC2BA4E6AE295946CE2959F736017450B613A07E295A6CF846322165CE288A9C2A2C385CF843F24C2A2E2959954C3A6C3BBC389E295A3E29590452C42CF83E295AAE2959E25140D0DE295A066C3A04AE28CA1C3AF327DE295972024E29684C2A1E295A4E295A2464AC2A1E295A1E2968435E2959877C385CE93E2959317C3A87C48233431E28CA0C3B9E2948CCF84C3B4432C2C6D70C3B44304E29598E2959854E288A9764DE2959910C3ADE294B40039202136C386E294AC6C642454E2959EC3AA0131C2A3E296A0C3A1C2B07FE29490E28988E28899C3B7C3A2C3855E7E70E28899E295917E0FC3875EE289A55FE294801EE2959B0F643CE295AB7BE289A1E295A5E2959567E295A6C2B1E2959348C2B5CEA977C2B17649E2959F7268C3B763682E7BCEB55CCEA93B00E295A36C465C1D34622C4048C69210393E73560AE29692E295A8E295937B2E59E2969242E295A654623EC3B1C2B73115E2959B0F697D7CCF801DE295A1E2948C157B5E4AE294A42535E2968C27E2959AE2898831E2889EC3A2E29494C3B3E29480C3B328E29691405E162C74C3BFE281BF390664E29480C3864A0C0802003435E29494C3ACC3BCE295A6E289A1C38907231F52E295A3E29684E295A31EC3A050C2BB1306E2959A75C2B11249E2959EC3AA482116C386E29690E2959AC384CEB5E295983536C2BFE28CA155C692E295A314C3AF374313E29692CEB178E2969252C39F3119C39CC2A2E295A239C3B3111B024A7238CF8025C3AC1468E294BCC3AD0D1822007BC3A404C2BBE29693E295A7E28C90E295983F45E2959B0FC3ABE295A14F3A4E10C3A4E2948CCF83134362E2968843240EE295A45CE2959B0FE28CA0C389C3961A4FC3A7C3B61CE28C9058C3B6C2B221E295A12A371717CEB4E295961E3F39E2959758C2A1C2ACCEB5E295A6C3AF03C3A5C3AAE29594E29591E295A648483640CEB5E295AC582C0A402C70C3BFE2959A726022C3BAE29593C2B269CE987BC391E2959BE28988767DCF83C2B72E00C3AD3122C3AD311DC386727CC2B5C3862936C3A402C2B7406A4E720EE29596C386C2B774CEB4C2A24A6C0478E295A9E294B4E29480CEA3E295951A5AE295A5C2B213E295912641CEB15AC3B35D7F2A7BC3A46F7CC3AD544CE2959F58CF86C3861E674DE28899E28C9067E2959CE294ACC3A4CEA304E294A4C3850E0648E2969239E29597E294907AE281BFE2959EC3BAE29599C3AFE2959249E295926542E2959665E29597CEA9E2889A1B652324C3AC32761AE296905B49E29597C2A0E295AC1F7C74E28899E295967EE288A9C3A20F5FE2959BC2BCE2968027C3A9C3B9666FC3A7E29594CE93E29690C3AF23E2959DC2B7E295A33335E295A1783CC3B173E295A4E296885EE2948C507E0E533BC3B1C2B03E5C72CE93E2889AE28CA0E29596C2BD1C5BC384C3B7E295A2E295ABE295A1E294BCE2898841E295A8C3964B5D074ACEA9E2959D19213C1653CEB1E29590C3AAC2A1772C392E6BC3BBE295A61A4301E295A70BC2A17136E2959BC3856BE29692E294A4473FC3B1E295951124E288993E24E295932CC3AAE294A4C3B769E295A1C3AFE29597E295A14BE289A47D68726670E28CA0E2949C40C2B26D6B742A3C1D5272E295A863CEB5C3BF56042AC387C3AEE295ABC2AC0A184643E289A575C2BD6CC3870CC2ABC3AAC2B0E2959C7FE289A5E28899CEB4C2A0E289A13FC2B77F3EE28899C2B11FE29490CEA9E29480C38768CF84E29593CF84787F246334C3B1E288A9116BCEA366E28988E28C903F56E295975D623EC384C39637630AE295A0CEB431E2969350E294BCC3A8CE98C389C3863306C2A044E2889E35CEB5E289A1676EE2889EC3A7741C5CE2889E3D426AE295904DC3B2E2949C4A7BE281BF62E295A60DE29498CF8442C3844129E28CA0456AE29692280044E294A4C2A061C2B17BE295AA1AC3B4C3ACC389444AE2889E2B58E2959C6F5B5922C2BCE295AB257EC2B1E294BCC38400002EE29596E29590CEB5C3B7E29482C2A3E295AAC385E295931F7AE288A9CE98E2959FE2959A0CCE937A2FE29598E28988E29690C2AB74162DCE98C2B7E29597E295A7C3A0E2959E74C387C2BA1CE2959935C3B2C2B2E28988C2BFE28CA179E296805C42C3B4C3B9C3A83BE295A243E2959EC3896456C2BCE296927933C2AAC3B3E28988E295AA725CE29690E295A4C389581DE295ACE29597CEB41BE29482C3A903E288A9E29690C3873C5BE295932B6E562C6B1C5CE295A02C64E2948C311F523C1E73CE93E2889A30E29594C3B2C2B5CF80CEA6E2959323217FC2AB3C1DC39C312D005555C2BC4F37E295A6E29596E295ACE288A9C2BB2F56C2BDE29693E288A90A565FCF83E295A2C2BC0BE295A31CC3AD01E295A55BCEA9C39CCEB1C3AF2F76E295ABC3B4635115E29592E289A14409CF8368C389E29591672BCF8621E295A8CE930F71E2959C2FE282A73AE2968007CF8477C692E29597E288A9E29480C3BF4BC3A5E288A979C385E295A169534D35E2959E62C2AC7A1FC3AF1CE28C9035E2959AE28CA17BC384E295A761E295A03BE2889A1AC2B2C2A11D1B3116C3A7C3B2E28CA03CC2A26AE295A047C3AE2215C3A53057E29690C389E2959CE294A4E296932856CEB4CF83E294BCE29498E29498E29594E294BC725921C3BFE288A979E29498C2AB5CC3ADCF84E294B428C3B9C3961A20E29598E2889A265E4DC3AFE289A5C2B721E294ACE29688E2889E0B08C2B2E289A426C3AACE98E29684C2B5C2B2C39F665732E29590CEB458E295A0CE98E2959BE296904BE29594C2B7E2959FE295AC656FC2B156E29498C3BFE295ACE28C90E288A9C389143B0B554CE29480C3A963E294801D2362C3AD35C2ABC386E29498E295A15CE29482C3A949212EE295A0CF84C2A3C3A60F5FE28CA0766AE2959AC3A776762D49E2959E74C3B943C39136E296800777E288A905C3917AC3B1C389C385E2959BC3A44C53432C74C3A6C3856BE29593412CC2AB7666447CE2889972E29688E29494E282A7E288991CC2BBC38755C2A2CF836D0A4637C6923F73390A03C3A4C3A1C2A0C2ABE295ACC39FE29490C3ACE28CA1CF83E29596E295ACCEB45432C3A2E29480624E0FE2959056255D7FC2BCC3AE2EC2AB77C2A5C3ABE29692C2BBC3B1C3BBC3A04A0BE296924855E288A9E295A3E295A919C2A2795D5BE282A7651F47CF86C2BC5C53413EC3B1E289881A29C3B619C3A4E29688C3A013C3A62B390763E29594C2A237E289A57167E295A622C3A1E29592C2ACE295910E36271A3436C2B7C2AB69092C60E295A348C3BB2245C39176355D360D7C4444E295A7C3ABC38710011101E29597E29482C2B17A6E0D66E2959C0AE295900CE294ACE29590C2B544C384E28CA1C2B764C2BCE29692E295A1C3A2C2A2456BC2BCC2B7E295A1CF83CEB1E2949478E294947EE282A7E294944DCEB12B1EE296935EE295A1CF8411E294A4C3AA2C09E2959EE295A6423524C3A7402E0BC3B42D466FC2BC6C561272E2959EE295ACE295A5CF83E2889AC2A3C3B11C10E29598C6927BE2959210CF86E29498C2ABCEB57CCEB5E29597E2959EE2959ECEA947CE986C4E216BC692E29598E282A7E294BCE28C90E295A735031204E295AC1FE29680E296A0C3B939C39FE296906D337AE2959343E282A76B14E295960FC2B52067583ECEB5E295A6C3ADE29688C3B9E295A672E289A4577ECF801B6FC2A1E295ABE29592455962E294B4E295AA2C01E2889E297973E295940648E2959F00E2949836C3B9754D1F340D3C03C387C3B9C39F195AC3B1E294985EE2959F623AE295AB62CF80C3AC5DE29490E294A4C2A300E295A7E282A717E289A5E294B4C3B2C2BBE294B4C3BF0E0172E29595632DC3963D6B2C3952CF80C2ACC2A5C3BC6F2CE2959E742D7926716333C2A56BC3ACC3A7580745E29690E29482E2959EE295ACC2B50542CF86E295A82C19E2889918C2BAC692C2B7E295A662596E7EC2B117C6923EE296A0CEB577E29490E28CA170E2959C5EC3BB70E28988C3BBE295A0617214420B462EE295A9C3914A51E28C90C3B344E2948C4FC2ABC2B5E2959369080D5747CEB5642BC386667B25E295A6414D2A46433BC2B5E294ACE28CA14EC2BA0663E2959D463BC2B7C2B7C2BDC3A7CE98E2959D5BE2968CE28CA1E295AB0EC2BCE295A61639E2959CC2A26C0A4CE296805360281FC3B4317EE2959AC3BF4B25C2A255C3AAE29690C3ADE288A9E29691C3B13CE2968812CF801AE289A43166E295A2C2BDC3BFE296921131E28988C2BC3118E29684C391E294825EC391E295A9744EE295A0E295A1E294BC673F0EC3B203C3ABCEA6CF80271F01C3A14028E295A90211E29590E29593C2AB2920E2959CCEA6182CE29498E29494E2959A06487F290BC3A4E29593C3B1E294B43B73E2959E79CEA94CC2A5CE981C476AC3A7743F6AE294A4C3BAE288A9E295971C64C3BB23C3B93CC2B7C3875BE29680E2969233C3B6E2959FC3BB03C3ABE295964B4AE288A9E295A8CF8453634EC3B96EC385C3B778C2B0C2ABCF83E29692C3B7C2BCE295A074E282A7E296A0C2A3C384C3AD1709C38479C2A37120006808C2BF69C3AACEA666736E1B167DE2959E47E29680E288A9E294980849C3B1C3AE75056BE289A14EE29594CEB4E295A6C2B5E29693C2ABCE98C3BAC2AAC3BC1E46E28CA076E2889E07385EC2A074E2959C67E295A6E2959C1F2B7DE2968056C3AF41E29684E295A17EE2959970E294BC6230E29596E29592E29680773FE29596C3AC7C74623A0EE2889EE295A9E295AAE28C900F71C3873B4623C3A54033C2AA4332C3B7612E72C2B7C2B53877C3AC08C3AB0DC2B1E295A3C3AF1FC3B33779C2BC21E294ACE289A56CE296921FE295AC311FC386CF860148333642631EC3A0C2BCE295943118E2968443E2889A4DC3A8CE981C6038C2B5E2949CC3B9055C22E2959EE294ACE295A267E29595C2AB09C386C2BCC2B1C2BF30E29593C3A57EE296887FE2959D5CC3B6CEB42FE294907DE296A0C2B577E2959BC2B2CEA3E281BFCEA3C3B12A7A06C389E29688E295A81CC2A071CEA306E2959ACEB1C2BCE296A0CE93C3AFC2B772E29597C3910FC39CC3A5E296900368192077C2AAC3ACE295A73D61C3B4E295AB4633C2AA2245793EE295A7C3A7E295932FE294BCCE93CEB4C3861E11E288A91EC387E2959DE2959D39E295A559C2BF40E296913E0DC3A5E289A539E295940959235CCEB40B7DC3B9C3910E58E2959BE28CA10AE295A653633A0F65C2B7E295935A5B5DE295ABE29684E29692633AC2AA10E289A411433E40E29591E2959A0777E295A7C3BFC39C3E5C3DC2BB2CC389E294BCC3B3E296843C7EE289A4E2889EE29594E295ABE29490C3B7E289A1C39FC2B764E295A477C391C2AC7BCF83E295A9666D654364CEA3C386CEA315C2BCC2AA216A08764470E2949CC3AAE29690C384C2A0E29691E289A57D48E2968C0FE295A21D20E295A1C3BFE295ACE295A32FE2959CCEB4E2959C69CEB5C3BC58C39CE294BCE295AB747F17C3A4E2959EC3BAC2BBC384E29593E2948244C2A1C39166C3AAE288A9E2949C162C62E295993DC3A0C3BF0E10C389CF80E296882E2D39E2959BE2959D1963E2959EC2ACE29595E29690E294BC4FC3ACE288A9E2949CCF83E295ACE2959724E295993929E295A167C3AEE295A15FC3B33ECE98C3BF0E5F7D5DE2948C1572E295AAE29592C38429E295A4C3AEE28899E29691CF861942E296843A41E295942634E28CA0E295A5C3ABE28899CEA6E28899E2959D284AC2BCC2ACC2AC2CC2B13A0C64E289A16A55E2889AE29482C2ABE294B4E295A5354848C3A141E295A34CE295A800CE98C39665C387085022420908C2BFC3B9E28C90483BC2AA2256C3AEC3A534733977E289A4E289A465300F1D0FE29680E2969225E295A7CF8462E289A56674CEB4C3AFE29590503EE29593E29597C2B53B77C2AA12E289A4125B6F6DC2B22DE29680E2949CE29692CE93E295A85259E2889A63E29592173B0E506AE2969048E288A955217AC2BA7AE29690C3B6CEA3E2959F23483FCEB4E29592E296915C22C3A1E29591C2AA66E29596C2BDC2A2034721E289A1C3A14DE295ACE295A12BC3B9E2889AE295A1E295A3E295A0E2959A00690F3A5D1920C3AA45012522C3BBE295A8C3843C0F423E5CE2959DC2BF5CE288A9C3AF44661317791A59E295A3C2B7E282A7274FE288A9C389C2BB57E295A7C3A4C3BF70E2959C55C2A5E288A951CEB4731CC3BF03E2889EC2BC57E295A231C3BF4B162AE296807AC2AAC3A8584865E295A70221E2959C35CEA3C3A4E295A9E294823C2FE295AC74C2ABC3BC7C6864170B3D084A6706E28CA0E2968CC3A240E296915D217262211FCEA639E2968042E28CA0490DE29692C38700391259C2BB7CCF8312354D53E295ABE29597C3A55A06E2959AC39FE2968003E294AC61E295A9C3A965335872397203C3B135E29590C3AA10C3AD06C3A17A7FE289882AE295A8E2889ACF83CEB40DC3B44616E294A4C3890A6979E295A5C3AAC3A0C3B637E295A5E28CA0197934E295940521C39F5C5FC3BF7A162AE28C907AC2AAC3A8584C357B1604E2959BE29599E294AC59C2BAE29598C3BFE295AC53E295A72E163A5FE294A4320CE295913AE29692E2959E2E31111CC3ACC2A20873462CE2959EE295AC70C3A558201645C3ABC3A71B585DC2BDE29592647CC3A1C39FE295A3E295AAC3A2C39CE295A6140CC3891FC2A0C2B1CEB4CF86E295A6C3B9E28CA1E2959FE295A665C2B141E295A1C3875777CF84E28C90740CC3BC3452C39FE295A6E2898821C3AC2C48E295A1E2959FE295933E2DC2BB5E00E2968007E295A2E282A7E2959F56C3A5E282A7C3B1E288993EE2959EC3AEE294BC00C3BC7AC2AAC3A958C3AE1DE29599E294B479E29596E2959ECEB1CEB5E2889AE2948CC2BD0000200049444154E2959FE289A159C3B4C3AE5EC3B1C3844122C3ABCEA3C2B0C2BCC2B221CF80CEA97248C3A8E294BCE2898811E29591076140E29490E295972401E295A4CEB52FE29680C3A2E2959C10C2BBC3AC317BC3B4E295A6E282A7C39C1A62C3A61AE289A5E296923FC2BC2EC3A8E28CA1E28899E294BCC2B7E29590E29596E296903A3B5F2E5959E296916CE2959A48E2889AE289886C64C3AE5052E295A0C3A9C3A0C2A0C2B07B5F6C3FE296A0E295A4CF8307C3B95B7AC385085E387EC2A5CE9845C3A8E295944CCEB5E295920D02CF86C3896AC3856D21C3B6E2959A66C391CEA3214670C3B61B58E296802CCEA3C38970C2A06864CE98C3A8C3BC584865E295A71A4BC38464C3B723CF86350EC3A4CF83E294BCE295A92E26E29692C3BBC3A5C2BCE28CA15A7B5068E2959752C3A62B6528E294BC3E06E2959051C384C2BAE29684C2B2CF83E281BF45556ECEB5C692C6923C79E28CA0E2959ECE98E2949CE29592C2AC2C7B5EC3B33ECF80C3B3C387C2A2C3AE586878E2889938297C735128492220C3AAE295A8664267786F42E2959D486330C3B43B66C3BF51673A0F6D4FC2BF570F0DCF8061E289A55675E282A7C391C3BBC2A336327BCEB46B68506F080168E29596C3AFC3A2C389E295AAE2959D3B53E2959442054AC2B74C05E29692E295A86244E289887947E295A3E288A97064CEA3E2949C16E2889AC3ADE2959E74E295AC452CE29494714DC386E2959A06E2959E35CEA925E29593C2B7E295A8351B1CCF8463CEA6E29690C3BAE28CA1E2959BC3A4C3840B0AE295A673C3A6CEB4E29482C2BAC2B0C2ABE295A4E2959B7DE28C90E294B43EE288A92F17111011C2ABE296A07BE29597C3BA3864C3A2C2AB06463644C384E295A800C3ADE28CA14909E295A60562C3BCC3A7E295977E5AC39641526726C385C2A5456BE2889EC3BFC384C389C2B1CE980B30E289886144E295A7E2959D193A72E2959EC384E296920061E2959C25626C28404F50E295A5E295A6E294823F506B4FC385C3B2C3A04AC2ACE2959B58E29498C2BC62CF8641E2948C7B4FC2BCE29482E2969014C2B03EC2B5E295A9C3BF2E27C3B908C3AA1A20E295951BC3A46E3230C3AA697CE28CA059CF86E288995AE29593111A20E294BC7FC2A03FE2959BE294903D3B2D3FC2B7C2A5E29680E28899CEA907C2A2E29599CEA9C3B2E29498E29597E2949CE295A3672DC3BC5468CF83C3891F3BC3AFC3BB447B42C2B03E306C3C4C311D0714CEA30EE289A5E294B4CF83E2889ACEB1E2959EC3A5703F1FC2A237434B0E67C3A2C692126221356EE29684C3AC1605E29690E28CA1C3895813C385352179E2959B0FCE9858C2A5580841E2889EE295AAC3A6E29692C3A60FE29688E282A7C3ADC3A07C4867E2959CE289A5C3A6C3B92A6211C3B4E288A9E2949C5D6E5515CEB4E2959066E28899E2959EC2B2E2889A2717C2A518C389C2ABE29691C3AD6B55E2968CE294906523231B20E2959656C3B3CE93E288A9C2B2C2B24F2EC2A0E29690E29680C2A0CEA3E29592777FCEB4E295947B0F1E2C5FC2B073196879C3ABE294A4CEA3C3ACC3B245E295A6E295963D52C3AA45486C48E28988C2BDE2959BE2959AC3A7E295902102E282A763C3B60AE289A4E2959134C2BBC3AA76E2889A41E29691C2B229C3841B08E2959CCEB4C3ADE28CA104E295A22379E2959B0F50C38613E29591C3A5C3B4C3891CE28C903D486A2FC3BCC3A6CF84C2A1E295A63EC3B4C3A8CEB5E28C90221669C3AC39C3BB4571E296935E3E3C3B3B79E296915CC3BB250C130BC39CC3AE0F007B4015E2959FC3A2C3B4E295A6C3AE0C1002005C2C104E3715E296A0E28CA0E295992D01005C5E365B6805E295A95F277F46C3BAE2889AC3AC79C3871AC2A2CE985CC39CE295A1760CC2AAE28CA110E2959B0F2EE289A531E294A459CF805D75E295AAE2959AC3A7C3BBC3B92A05E29480624CC2AA6F4DC3A4640A313620E295982EE295ACE295971ECEA9E295A3E295AB463EC3A4C396E2959347CEB46FE295AC5A29C3A6C3A0E295A957E295AC180CCEB53EC3A7E2959AE29692E2889948E294A4E296935EC3A0E295A94B01E296924833CEB4E29592E2968C735FC3BC000065C3BC65CEB408E295AA7DCE98C3A710C3853E4305202321476DC3875CC2BBE29691E296882DE294B4E294B4C2B00000585445393C31E2959EE2959B1F1B0BE2889918E296885BC3B232E29680472A77C2B153442C34E28CA1C3B7E28CA1E2959BCF83E295AA18E2949803C3BFE29598E281BF766C07E2959E426830E29692E296A0C3B7E2968C6BE294A4CEA3E294806670C3B9E296905362C2A3E2889A52C38425E295AC7C1F4E7D45000D41E29482C69236C2A3CEB4564346487BC3BCE295A046E2959AC3A61A207D26330000E295980D6DC3ABCEB163227A09006B3BE289A53156C3AEC3A5E294A43C49E288A9C3914BC2B2C3AD0CCF83E2959BC2B26D323E6C7C1FC2A5C2BC57E29596E296A036E294A4E29594E295A3C2B56EC6922B6FE2959E54623A381BC2B014C3A60F0DC2AB20E29688E2959EE295A7E2968C6BE295A1C3890FC3AC2C5E29221FE29692E2969359E294BCE295AC2625E294BC04E288A9E29591C3B9E28899E29593132A5F32C3AF566AC3AAC3A0662CC3A86D0DCE93E295A6CF86E282A7E2889AC3AAC3AA5EE2959DE2959D6C0EC3A2C3AE084874C2BA1107E296A00FCEA6314272E29591E2968C444A4A3C207776E294807AE295AB5CE2959375E289A47EE29599E295A8E29597006D3E10CF86E29684CEA9CEB1C2B0E2959DE294A43C70C3B607C3A8E28CA1C3A2473FE29591E2959E74C2B064E294ACE29693C2B17DE29480E295A0E294AC3455E296900C126AE29490E288A95CC3B2E289A1C386C391C38758C2B0E289A14F6873054160C2A00E201FC2BFE296922649C2A1CF86E2959B727CE295ABC3A0583C1E18E28C905DE2948C0567500F6639C39FE2959FE29597102D71E2969228C2BBE288993D3AE2959E47C692E294B40103C3A5482E476CC38758E2968C7074E2949C0742C2B25FC2BAC3BCE295A344C2A5CF84C3A50E626D39E29684CF8425CF837136CF83E2959BC3B7C38743C2B2E295A5C2B2CEA32A073D3E6F231F783BE2959B03E28988E295A761E295A7CF844372CEB5CEA6E296906D170E786D387D40E282A7726CE282A77FE2889EE28C9027C3B13EE29688E294B425446FC3AB7E22E2959E7EC39FE29599C38520341ECEB1E294986EC3B9C2B1C389C386CF84E295AAC2BB44573F26C3A2CF80E295ACCF84C2ABCF80E295907D5EC3B3E29490433E7759E289A463C2BCC3AD2EE289A4C3A6E295992E6EE2889A7CE295A76B36E295A352C3A5C3B4E294A4E296A064E295AA33C389393FE295A36B143AE2959A725D33E295A1CF83C2B0E295AC3D4FE295A3E2889A2E5A2CE295A6C3B4E29490E28CA017E29490E296A0465515CF8445C3BCC3A76C5805E28CA0737E00E295AAC2BB606543CEA3480D10C2BDE29692C3AFE295AB4CC3BBC3AAE289A4453E62E289A4CE936879E29688C2AAC3A47C4C35C2A21508E29593177AE2968C44E296933ECE980C70C3AD7225CF834832746BE2959A63C2ABE29480C3BA221F2038E295A752403E42E295ABCE93E295A0746EC69217C396E288A923C2AB1CC2A177CEB576592DC2BDE29590C692C2B7C391C2BA4F7ECEB4E29596E2959BE28CA160E294825920E29599E2948C41E2949C4BC3A4E294981819C2BB24494478C2B0C692E295A6E295A6C2B5E29693E28C90C39F632AC39F0328CEB14D00E295AAE296843CC3B3C3A61944C3AFC3B9233436C3A05BE29490CEB4C3A9CE93735FE295A3C2BBC2A05DE2948259E2949832C3B674E282A7C391E2959321C2BFC2B21976C3BFE295A8E295A4C3B2E2959FC3A2E295A607E294AC65421F3BE2959E622AE29692281C39E295A279C2A55A56E2969158E296920A1AE289A5E2948C19CF8352C385E2889970CF866FC3AA54C38544362BE295AC1ACEB5C39CC3BCC389E2959CE2968CC3A90EE29680E2959F584CCF8463E289A47D70CF80097DCF8460C3A8311FC3A6E296936921625916E294BCC3B32A116F2F54E295A24074005E60500E48C38554C38646405EE2959D682E773B7AE2949069CEB15DC3B36E0CC3AAE295A6013CE29592180D093D25E2959D793ECF86C2B5E296A0C2ABC3A410C3AA211FC39C1EE289A563422C52CF80E29590C3AAE295A4C2AB18E296920A3EE289A452E295A8C3ABC3B944E295A0C3A7E29480E2948C2AE29593211017E29692C389E296903342E289883CE28C907EE29599C389C2BB35C3B719E288994847E296A0C3B2E295A0E29591C3AD6657E295AB44E295AB1EC3A6E29690C3ABE29593CF8449C3A875E29595E295A965C3A906E2959ACF862C58351135700900C3B9702BC3BAC3BCE28CA0E2959C5FCE98E2889AE295A2C2ABE28988C3B901E281BFCEB54177E29680C3B2CEB5E289A4E295A5E296922CCEA628670869CEA67E3E14C2BD71403AE2948C311FE2889AE29680096E6ECF8471CF83E2969163434C73492BE2959E4232C2AA433216C3A02C7AE29597E2959A49C2A15D1AE296923AE294941C57E295AC1A22E2959CE2959EE28899E29690E29490C38411E289A4615BE29680246362C3B1620EC3B1623A38E28988C3B725E289880CE28C90E295AA18C2BA2D5D582E27C3843024C38441525E48C2BCC3A5C3B6C2A3C3BF311F12E289A57BE2959B4700C3AFC2AC3CE28899E295A5E29599E289A437E29490C2B2C2A127CF8427C2BD45E294B4583CC3A52CCF866C646403C3B17F072A0A4440C2BFCEB1CEA9C2AC18C3A579E295A462E2948068C2B07A066278C69200646259E29595E296904AE295ABC2B0C38414100B1FE28899C3ADE2959D1920581FC384C3A177C3AE7E4C09C3ABC3A6446C34E2948243E294BC76E289A149C3BAE294B4E295A57262C2A535E294A4100BCF863D437BE288A9E295A4E2889EE288A95875C3AB1E6F46C3B63345CEA303C2ABC386E295A000E294B46251E282A73E7ECEB4E296A0C3B46FE281BFE2889E1B0F4FE29593C3AF43E29591E2968CC3ADC3AE5705E295AA59C3AC71CEA34E3BE295A952C391C2BCE2968462C3BCC387C3AA2500C3BBE295964CCEB1CEA6E295A3E28CA15DE28899332472E2959403E289A16353E29494C2B179E295ABE2889AE295A9E2959BE2959D192E312E3D7D472D39E295AAE289A41C72CF8440686CC3AAE29594E2889A64E2968808E2889A38C38462E2948074E295AAE28CA0C3BBCEB1E29597CEB1E28CA023E28988E289A4E295AA3C1EE2959B77C2B1E295A1C2B0507CE2959324C39F35E295AC16E2889AC3AD1AE289A4C3A66AC3AEC3ACE295A6C39CE288A932C3857CC3B718C3AC76C3A0E2959A09CF863710C3BBC6920AE29680C3A7C3A47346C3B4357E0A311FC3BB16201455552C16C3AFE296932CE289A10E1158E2968820CE98532EC2BAC39FE29590060853E295A312CE986A3211C2B1160529565BC384E295ABE2959445E282A7CF8640C2BDE294BCC2A3E295AC65E29599E2959EE294947EE28CA1413E7C3CE295A5E29480C3AAC2B260E295A9C2B17A4EC39CCE98C2A24BE2969317E29693C39649E2959419C2A2315E4A4EC3AE1813E295A4CF8636E289A51A07E2949CC3A548707B53442225E295ABE29684587B4CCEA967276D6422664630093934CE93E289885DE28988E29691E29692E2889AE295A6E295A502026A1AC2ACCEB4E2959169C3AAC2BFE2968C411C26744EE29690E289A45CC384E295A000CE981DE28CA04F3FE296886EE29596E29688C2B7CF80CF83C2ACC2B000005EC39627E295A346661009C2BBC3B6C2BD7726342BE295ABE295AAE2889EE295975CCEA3E2949CE295A51F26CEA3CF80C39CE288A9C3BA7B48CE9366E29482322DE294945CC3A4E29480C3B71D57C3857CE296807A17C386C2A1C3AB33174318E29599C391E296935971E2889AC3A72BC3A77330C3ABE294B4CEB10E02E28CA149E2959463C2AB71E295AC59C2BBE2949471CF86C39C2AE289A521C3ACC3A8C3A7C2ABE295A1C3A1E29684C2ABE295A843C3B11632C39FE29693CF84C2B0E2959AC3B9E295A5E2968826073D75CEA3C2ABE2959C3E63E282A72AE289A561C2B23E353535E295975D4344E294804DE2959CE295A6E29594C3BBC3B211C3A6E2959A25E295922C580800E289A14FE2959BC2A0E29498C3B7C2BAC6925E3EC2BDCEB4C2B5C3A730E2959AC3A42E7D3F3656C3AEC3A574562ECEB5E289A4520CC2B5E296846705E2969362C3ACE295A974E295ACC3B24F4272240E0AC386E2959D19C386E296922AC2ABC2B23376562CE289A1C3B6C3B41AE2968007E294821DE295AC59C2BB7CE295ABE2959154E29482C3AFE295A3E29593C3B96A4CC3A7E29598E296901332C2BB261A6BC38954C3BB29C39CE295AAC3BF6BE295ACE29592C2A2E2959BE2949402107110E29592E296915DE294823211156623246249C2B70AE29593CF83654375E29599344450C3A2C3A609C2A5E289A422E29480CE93E2889AE289A17D1963211FE2959B5EE2959C2EE29693E295A4C2B2E282A72FE289A5E295A4C3A663443E7CE288993E4CE28CA1E2948C1012C3B4E296902E311D215E22C2A2E295AB4C13E2969218C3B4374333E2959E0214E28CA1060539526BC2A327E29693C39FE295A0E28988C3ADC3BC7CC3A142E29490C3A41C045DC2B03E62E294BC74485D31C3B4C2B5E2889A40C39FE296A007E295A6E2948CC2A52AE289A5C39F232B74E295A0E295A1E288993840582E57E288A9C2B2C3ADE295A12A4EE295ACE295A7E295ABC385E296907ACEB4E29690C2B2CF83E296932A7A06C3BC13E2898861335C48E289A125E295A665420608E295A1261A160516C3AAC2AB48C3AC744CC3A056C3AEC3A5E294A43CE29680C3B770110B14C38603E29494E2959B6EE29594423E2860E295A05CCF83C2B0E2959E7468E294BC58C2B0C389E282A7E295A3E295A26B4A727CE295ABC3AAE28C90CEA61D32E29490C3A73E46C391C2B7E2959FC384E2959201CF83E28899122BC2AA634AE295ABE29599C2B1E2959A65C2BA123B12C3BAE295A722E2959EC3B6E2889EE2959762E296922837CF84CF84274FE2969078E289A4E29690E2949CE29592E295942D03C3B1E295A7C3A1382858E29494E29590C3ACC6923E23C3A0C3B46B3EC3B9233040C2AB27E29494E288A9C2A0C2BB1F6D1FE29490E295A3E281BFC2B05FC2B0CF86C3B40F4FE29593C3A718C389212FC3AFE29590C3B3C3BB62C2BD1D2BC3AFC3BB467B5CC3890FC3ABE295AAC389E282A767E288A9C3AA3D5CE29597E2948C7F40E2889AC2B75122C2A2C3B2C3AFE2959F5522C2AAE2949C24E2959F7648C3962AC3A2E28899C2A3623A5CE288993E10CEA3E294824445E295ACC3B315E295A074CEB533C2ABC3A134C2AB2EC3A72F6D14E29498751E01631D71CF867709E294AC47CEB5C3AD51C2A2CE98E2968457E288A958E2959AC3A7C3AF03C2A5E29597C2BAC3AEC3AC7C68E2959F0F31E28CA146402CE29691280A2CE29691E2968073723038E29591E29498E296916CE2969221E295A3442E29E2959FC38714C2A0E2949CE29680E296A0E289A1E289A55FE28899E295ABC2A0E295A7C692E281BFCEA3C2BAE295971F02C39F0BE294987BE2959C26433854CEB5184CCF84E2959BCF86C3A6403E6231C2A5C3A2C692C2A3CEA3C2B03EE2959E664C3FC3A52C5452311D202427257E0ECE98352EC3BB7E316323E29595E288A951C3AEE295AAC389E295AACF864AE295A164C2AAE289A4C2B1CEA3E29480C386E295A6C3B64F0044E2959810510377C396E295A8E2889A5E501C6121E29594C3A051C386444056C2BD022EE295ACC3B9E289A1C2B1C3855E1100E29494CF8365E29599E2949CC3A4C2ABC3966126E29598E2968822C2A545E295A617E28899C3AAC2A5E29590C2AC5BE29490250B15E295A1CEA3E294A4E2959979E29680C2B75A4CE2959BC385C3ADE2889AE294BCC39C59C2BF5C16CEA314100B573EC3B6C38977E2959336E2959663204412CF80C2ACC3B2256A2A7C1F636517E29599760E68C2A1E28CA1E295A267C391E295A3C2AA5CE295A6E29598C2B03E62231F2EC38429C3AC6C525A7C1C2828E296802FC2AAC3B1C2BCC3A8C3B4E295907AE28899E2959EC2B2E29482C3B4E289A4560C487751CEB1201E43E2969221E28899E2948CE29592E296921A20C2BB5F37E289A1C2B1C3856E6E5C551556700BC2A1C3A6E295AC3014E295A9E2898801E295A9E289A55C1603E29688E288A95AE29498C2BC42E295990CE295A20F403E311DC39CE2969221CEB1E28C900F17E29498C3AAE294B40722C3AB58E29480C3AE310141E2959C7DC2B729645C25E295930CC2A1350EC3A50D11E295A1711A6B5C7DE295AB52C2A1E295A1E282A71B33C3BB1AC385C3ABE295A67EC3A6E29591E281BF3923165AE2969219C39C311F3CE288994559C3B627C2A2CF83C3BAE2889AE28988E295AB0F56C2BDC3A8E2949CC3A4C38460C3B7C39C0DC2B1C3A5E29595782272C396C3AF01E295A52D65C3ABE295A83640CEA6E294943EC3A2E2959E142E0EE296900C1FE288A955E2889E2C5A52480E5A5E72C3B4C3B932C3B637C3BAE289A4E2959D29C2AACF80C387C3A9E29684413E7CC3A6C3BBC3ADC3B77317E281BF1859C2BFC3B1E294826BC3ACC3AC58C3A4202DE29692635A7C36421478E295AB6366E295A4E295A97C1FC39F6BE294A44DC384C385E29692C384C38472C3B1E28CA00939E2889EE2959ECE93E2889AC389C3862FC3B2C3914B3BE296885708C3B310C3B4E288A94342E2959BC692E29684C2A2735FC3BCC3870045C3BCCF83C2BD57E2959706E295A0E2959AC3A7E2959418CE981A2DC2AB1EE295996CC3AE1CC3B401521448E2949CC3A23E16523176162DE28C906C56C3AD7D46C39F7560E2889E6C56E2959BCEB4E295A918080125C2AAC385C3AF176B4AE296923A1A6B0AC3AEC3B1E29490CF837B183B5B542ACF800A01C2B7C2B02016E2959BE289A421231F7AE289A5CF84C3845868C2A5C3A635CF8412E295A3E28CA11501340D3565C3AB43CE9875E2889A3C53CF866C58211B6F2E1267E2889A2928E295A3E29688353B22C2B7C3A4C3AAE295A24404E295952FC2B22F71E296882B4E166BC2A2E2889AE295A3C3AF3CE2968822CF80C2BD1F476E57E2959BE295944B63C2BD172D1E19CEA9E2959AC3A9C3BCC2B7C2BFC2BA3EE2889EE288992A5DC2B1C387E295A81E19E294B43E39C2A304167D19E28899E295A8E295A8C692E29598E2948259C3BA59E29680E296903E31E28CA1390C7CE295ACC3B2E29599454848401F043B4242C3A9E28CA149E294A4C692E289A42EE29595E295A9C39FE295A0234EE295975CE2968075E29688E2959D75CF864FE295A6E289A444573F26C3A9E294B43BC692E2889AE295A01F086CC385C3B61C62CEA617C3B30F06C3AEC2BAE295981E14E295A52E02C2A0185C62C2ABE28CA1C3ADE289A55151E2959BC3A43C0939C386E288A91867E295A7C389180BC3B9E295A1E295AAE295AB50E2959E41E2959CC2BBE295A77DE2889AC385C3B9E295A672C2B217E296A0E281BFE295ABE2969000C387E289A4C3B3E2949402C2B7C39FC2B2C3B3E29599C38902E296843841625860E294980049E294A42000E29494CEB4E295ABE29590E295A26ECEA63D227807005EE29591E29490C2BFE2959BE295A0CEB1C2ABE289A550CEA625C3AECF8349CE93CEA9C3840E7263E29690E294BCE28988C2B1E2948CC3AEE29590C3BF3EC3A51CE295AB14E28C90C39CE28CA1C3AC1D1B1232C385C2AAC389C2B2E29594E289A5E2959D33E29599E295A330E295997A70C2AA3ECE98C2B1C3895CE2949C43E2969362C3AD72E2959762E2889E27C39C75E29590E295A31C73E295932B7F4366E295A1C2BC36E29490E281BFE295A66F3FE28899CF867FE296A05B0FE295ABCEB4E294BCC39F5A55E2968019E2959618E2969176E295950B4D363E144AC2AC57E296916EE29590E295A9E295ABC2BBCEB4E295A6C2AAC2AA6754E295A80FE29692E294800700E29691E295A27B25E29494CE9355CE937C2EC2A5754AC3AFE288A9E2949C16E2959721E29590E28988E295A47EE29593C2AA471FE296804727CEB4E29592E28CA1C692C3A7623A60E294942BCF80E295943FE294ACE282A717217C2073E2959A42C3911963C3ADC396C3A0C3A8E295A63FCE93C39C3DE295A0CF83CEB1C2BC15E2968810C2A2CE98C2A302E295AB30E28C9076E295977ECEB5C2BD0F67C3ACC389C38913C3A2E294B43D44C38476E295A00758E295937869C2AA73E295AB43E295A164E295A2C2BBE29598E288993E7CE2959346C3ACE295A3C3AA5CE295927051C3B2CF836A5515E294BCE29590C3AC18C3B4C3A6E295A4C3A0E2959DC3A7784272C3AB54524440CEB5C2BCE289A1C2BB5FE29592C3B94DE2968C7C4404E295A7C387E289A155C2B7E2959AC3A736E29680C3A7CEB4223047E2959B0FE295A8E295A427393963E289A4C3A5703661C69271C3A8C3BC5868E295A023C3AB76E295A711E2889908CF83E29590E289A1C3B21372E29691C3A8E294B4CF80C3BCC3A6E29688C3915562211FE2959FE2959E74E282A77AC692C3A6E289A57860C3AA6AE294A4C2BDC2A266E29597C2A11BE29591E295AC6C33787F7CE2959A38C3ABE29592C3ADE295A3246EC387E2968429750344C3A4C3B944E295A8E2949C07CE931353C39F7AE29490E2948C7610C3B6C384CF83E29691E2968C3346E295A7C2B77DCF837063280CE2969221C3A4E29596335B1D720A1CCE93E2959F0EE296921FE2889EC3BF0EC2ABC3A7E294BC14C2BD62C3A80D195AC3B95C620C6C5E24E29594180B4E4C0740E29684C3BF0EE29680180B2EC3A962E29597C3AFC2BB19C2BDE294ACE29592C3A7E29597E29692C2BA1EE289A4C39F13E295A6420ACF8676C2B2E29684571FCEB51AE295A969E2949044C2A32077E295A70008C3AF27CEB1E295A9C3B2C3A8E29594E295A8E295A5C692E294942D0EC3893B0EE2959B72384643E2959A5CE2959EC387E295A3CF803AE2898824CF8306E2959EC3B610E294946251C2A3E2959DC2B2E28CA0E281BFE295A4E295967ECEB5C2B1C2B2E295926A51C387C2A50704E29494C2A37237C3BA1FE29498003128C3ABC3AA004509C3AA156FC386487BC2A5E294A4C3890F694F540CE2959B0FC2A2C3BAC387C3ABC2ABC3A1C2BB17672C4F7B4AC3AAC3A0C3AFE295AB4A220B5508215AE295A9E296923A18411FC692793927CEA30304E2959F433BC2AAE294B475E288A9C389E295AA33C3B1E29688C3AD11C2BDC3B1C2A1E29597763DE28C9066E2959C4A49C384767B05CF83E295A5C3B2E294B4E296935854C2BA4F1FC6923FC2B2C2B537E296907CE295953E31E2959EC387E28CA005C3B3C2A22CE295A3C3BF014EE295A3407A31207DC3B9E296A0C3AD2C0BE294ACE294B4C3AB1CC386C3AF1D203CE29596E2959CCF86CEB1CE981AE295A6617B717D19E295A943CF8338E289A56650CEB410E29598E296A00CE296880B49E2889AC38764CEB4C2BAC3AD76E28899E289A146E29595E289A1C3A8E295AA36E295A9C3BF31161AE2959D213E311D5A31162ECF8602C2B53BC3A8E295A9C2B7C387E2959F1ACE93E289A5E28899E29598633EE29494716D05CF837AE29595E2959EE29591241FC3AE4BC2A32008CEA6CF8673C384C3A815E289A4C3A62AE296800730E2898804C692E294801EE2959B4E252D3E0EE295AC1AC3AA02734927560511C3A845552C56E295A6C2AC2A0AE294A4211A43C2B1207DE295A7CF8314E2959D4768C387E28CA0E2959BE294B4C3AF0532CF84C2BFE29593C3B23E69C2B5742DC2AA7557C39652721CE2959D59CEA6E2889A6E4B31C2A573CF83C3A4E295AC0917E28899E295A5E2959D1924C3B13708CEA62DE29498C385217243C2B5C3A7C2AA3E4AE289A550C2A2E289882426C2BBC38444C3ABE294BCCF80C3ADE295A16768CF86251E6BC2B064CEA949E29592C3AB1D7AE2959BE295923E1F4F24C2A21601E295920DE29592E295975DE2968C3444C2AB07301B59612E476EC3875CC3B9C3B34028C2ABCEA62F0BE29494C3B7CEA3E295A8E295A94E653B706933C2BAE2889A7AE2959642E2959D343E0801530E51CEB46B7D4CCF843EC2B7C2B030C2A5E2889A32E295950FCE98C3BB2262E294B431E295AC6264C3AD32C3AC2DCF84E2968C1A332B56C692E2959B31E2948243E295A3E295A91B68C3A711E28899C38708E28CA1C3A720041AE29480C3A21AC3AA0538E295AC6BE295AB353D74E296A0E29595CEA629E29692C2BAC3AE5D4F6816C2A150C3A4C3A83B7F7DC3A6050C58137DE29593E2959AC3B6CEA3E29690E28C90C3A0C39CC3A5C39CE2959126E295915ECF84CEB51A12E295A2C2BC58C2AAC2BD5BE295A36403C3B135C3BA0AC3A11B0A1A5FE288A9C3B2C3BBE295963606E29599E295A316E281BF6AC2BDE2959FCF84C2B7C3AB4D0E04E294A46B6C39E2968C43E295ABE29684100B2DE295A7E295A2E288A9E289A4E28C9079E2948C53433E623BCEB452CF80E29592C3ABE295922E141E2F54E295983D75E295A330E289A51CC384C2A1C692246241131C6FE2959CC2B145C3A47D02E29690E29690C3A1525BE295932BC3A4C39F3BE295AB5CC2BB4D2E7336405EE294906E76E295971D7D5256E28CA0CF8002E289A1E295A1C2B245E28CA0E29590CE982E715FE295AA346F43E282A777C3ACCE98E296912D00E295A9E2959D19E29598C386C3A23D72E295A854C692C2BB3E3E311D5C1E13E29688E29684C389442C6CE29498C2BCE2959E4608E29595E29690E29596E29598793C7C637538E288A9C2AB546C0353E282A72DC3B7035D3DE294B45AE281BF25202447CEA9E2959B3C57C692C3ADE295A12F05E2959B0F2D3E0EE29590C3BFC385C3ADE295A13935E2959BC3851024E294BCC3BB516FC2BCE295AAC385E28C90E289A5C3AA740EC2BB55717276C2A0CEA3E295A41B6FE29690E29597E294905CC3BBC3A06110E29597464617C2B1CEB1E289A1C387CEA3C3BF10C391C3867216C2BCCEB401C2A0E289A1C3BAC3B9C2BB3FC2A07CE2889AE296906E473F20C3A917C2B2E289A42366762A29E296A010E295AC4B2BC3A661E2959ECF84E29597CEA6C3A10FC3BAE288A9C2A5E294825E4966C3AD0A6DC2A0587AC3B4C3A93E20C3B10F24C3A1C385E28CA0E29595C384E294B4742E2CC385C2A5E28CA12A25E296A012E29590C2B1E295A8CE93C2B1C3BF2BE2968047C2BC724C7C1FE28C90E28988E29498E294807844C3B7E2898860C2AC45E295A3393F5F3F79CF80E295907BC3854EC2B7E2948260C3ADE294B422E294A465C39C316DE29494E28899E294BC152EC3B44040E296A0E295A6C2A0CEA9C2A5CF86C3B775E289A4E2889EE295967FE2889ACE980F57C2BDCE93C3A0E2968CCEB410C3A93CE28CA07D47C39CE295A3E2968417E28899C38942684C0B5060C3AEC3A009E288993840C3B1C2AAC2BC5846C2BBC3A60F62E294B4C3ABCE9820667DC2AAC3B74B2316C386E2969221C2AA43C3A6C2BD1C0D7D40511FE295ACC2AB25391EE295A548C3BCC3BA67E2959239CEB415671C5C1226E29480E295A0C3A8252547C3A879E2968C0521C3BCE294947671E295AB7669C2AA73E28C90E2949CE28C90E295A2175F6BE295A7C3B6C38663E29688275CE295ABE2959374E2948252CE98E2959E6FE2968CC3B2C38500051658C3B265E295A4C3AB0D1EE2889EC3B1C3ADC2BD59E295A8E289A4E28988C3AD43534645024BCEA93C200800E294BC7FE28988E295967EE29595C2B26BC2A0E2948CE29680C2B2E281BFE28899E295A6E2968C33007811CEB5E2959CC386504B03E29594C3AAC389C3A0E295A9E2889AE29597E282A7E282A77FCEA3C38451C2BFE295AB2676C3B72429E29480421369C3ABE29594C3BFE282A73A62C3BCC3A6CEA9E29599420A2CE289A5C2A3E288993E7CE29680132DE2959BC3BFE295A87EE295A41A075FCEA3630C1EC2BF14CF83E2959E3E2E6439CF80E295A6C3B27EC3B9E2889A6513201141E2968C34E2959874E295A23A72504EC39C753117C3A7C3863402727656E294B4E2949C072BC2B0C39FE29597E295A7010060E295976D5EE294B435E295A02671E296805622E2949C09471E063CE288A912E2959911CEA9E294BCE2969279490CC3AAC3A011E28899E29494C384E2959AE29692100BE295ABC3BF0E5F64C3A2E29688C3853639366FC3B9146FC3A554C3AEC3AB1662E294B43920C3ACE294BCC3A7C3A901C2B773E29593C389587C1F20E281BFC2A364562CC3AB43C386E295A6E281BF400739437B500CE2959B0FE28C90E295AA09CF86C2BC57E29684E2959C2B767FE29480C386C3A2201B07273526E2948CE2959AC3A7C3A5E281BFE295ACC39FE295A12C4E36CEB4CF83C3BAE2889A6727E2898817E295A67228C2BD4C3BE29688C3B22920E2968C141BC386E295A6E296921A20C6927FE2959BC3A22FE2959BE295AA5DC2A05E165D2674CE98E2889AC2B51A1EC3AF10CEA303C3B2CEB4E28CA1C3A6E2949C5C5059E2959A0705C3AEC396C2BD1CE29594E2889E592E7AC2B0E2959AC3ABC3AD4FE28988E295A8C3B21A6F464AC2B2C2BF79000B7C5EC3ACE288A923E28CA1E2889E62C3AD725168E2959BE29480C2B5E2889A18C3BAC2BB522F19E28899E289A137E295A0C2BA3AC38508C3A8C2AC2837E29592E289A5E295A4E28899C2B2C3B4C3A7C2BD6555C3A9C396E2968CE281BF605CE28CA0E294BCC3ABC389E294B44869C2A03D5FE295A13A3203CEA37AE29494CE98E295A2C3A20101C3A16C7D76E294BC28C3BCC3A47E19664C2FC3AF2F7F08E295ABC2A2E29480453E5C623A241014E2959F18C3AF3BE295921FC2AB5D516BE289A1E295A801E28899C389462CC3B1E2969367E28CA1C3ACC3AB0662C39FE2949C3C2E755F3824E2959E04401EE29692CEB164C3AD42C389C39FE2889AE289A1413E12E295A6C3B315E295A0740EC3AEE28899E2959EE295A44FE2889A1EE295A3CEB4E289A4C386311D31CEA3E29595C2BCCF861AC3A75D6DC2AA73E29680E2949CCEA9E29598C3890FC3B9E296881553C3ACE295901847E288A9C2A2731F22204059165D26E28CA0CEB5C3B9392CCEA6CEA6CEB131E2959ACEA6E2959AE295A00DC389E296A037C2A5707FE29591C3B2C3B7E295916978E2969224C3A60FE296802C54E295A559E29692E2959A5E0772CEA3E2959E462CC3B1C3891610E295A5E2959F77E2959BC3AEE29594CF80C39F13682BE2968C7E1F39C2BF34C2ABE2948C7BC38634E29680E2959F58C2B7C3ACE2959053CE93C2AC3746C3BBCF80E29597474CC3914CC3BCCE98E281BFC3BFC3890FC3B93D2075E2959CC2BB48C3ACC3ABC2BF213A783BC39FC389C384E295AB745FE29597C2B25C3160C3A40C6DE295A21911392203CEA3E295913444E29688C3A5CEB1E2959F487409004BE294806EC389C3BCCF86C3871EE295A6C3AFC391C3A07CE29595202E212CE2959BC3BB2C54E295987A0E5B7FE29595E28CA13513281503E2969208654CE28988E28CA1C3B7E295A0C3B2E2959FE2949C17E2969248212BC3BFC3A4C2A3C389354428C3AFC3BB18E296800705E2959D0321CF86E29592E2959A06E2959EE28C90C385C2BDE29596C2BBC3A63D35CEA32356E295932B29C2B253453EE294A4626762E294BC664864E29599E295A5E295A57BE295957FE289A176E2959E2B20027AC2B27AE295ABC387C396E295A4E2959D7BE2959CC2ACC2BB5332C2AC314229C2AAC3B16C5DE295996553E29599336ACEB11D00131FC3AAE295A67CC3A8E295901F62E289A40AE295A3221FC3A120E2959FC3AD0DE295AA770072E2968CE295A8E294A4C2B03E52C3AA45C3A1C3A4E28CA1C3A618C385E295A8E294A4E295A8C386E28CA169E29594095D4340784D6AE2959C6FCEA6234FCF80E2889918C2B222350EC2AB6BE2959CC3B61CE28C903D427B0FC39CC3A9E281BF392316C39CE295ACE28CA1C3ABC2B17DE29595E294A40CE295A475C3BCCEA6E29597C3B3C3A0C3A63B2D1B205352767FE289886F4700E29688C2A2096463CEA926C2B5E295A6E29599E296A041C3AFE2959D766CC3862DC3AF130EE2959ACF8643075D6323E29591C69213E294823E72E295A8E29490E29688E281BF36E289A54137C2A04F70754DCEB5C2B77334C3AE0319E28CA0CE985B175CE282A7C3A2C3BCE28CA1C3A0C2BD0FC3B7C3AE1BC3A7E29592E2959375CEB5C3BFCEA3E28CA0E28CA13F5AC2B5C386C3853EE295A20DC3A81CE28CA1C3BB6A3FCF84390E7714570EE28988734EE2889A5CC2B7C3BCE295A3C3AD135DC2B2C3BF0CC384E2949CCF84E2889E354EC2BD3D31E2889A45E295913EC3841C08683FCF843DCEA3C2BCC2B2C2ABE288A9E29482C385E281BFC38903C2BFC3B1E296A0E294805CE2949CE295A3C2B2C3A8C3BC72C3A5C3B7175F39E295A2E288A9C3A4C384E295A1E295A6E2948CCF8423572BC3A22D53E29490C2B263E295A64579E289A5CEB4E29490C3B7E295A14700707FC385C384E295AA52C2B1C3966240E295A87026E295AC46483640CEB100E2959CC3B2E2889A1FC3B6E289883AE288997A0D7CE2959D3D3EC3AAE294BC584CCF84E2949CC3A2CE935EC6924B3FE2959FE295AC7A04427252CEA3C2B170C2B162C391C3A45848E2959DC2BBE295A5446853CF83E2889AE295A86E4FC2ACE2959AC3A7E29590E294B429C3ABC3A567CEA34347E296A05C19E295ACE295A1E28CA1C39CC2B7E2889979C2B0C2A55BC2ABC2ACE29590C692E296A0CF832F3FC2B2C2A1E288A9E296A0E281BFE2949CE2959066E294984DE295966B3342C2B72CE295A9E294ACE296931064C3A244C2BF4C2A0664E295976D7644E28CA06300E281BF1800E2969002C3874D18E29599380C3CE295ABE289887729C2B5722E03E295976B4C07E295961D261D1DE29482505D231F5DE295A54157E2959B0F177D7C623A5CE28CA1E29692214D7D63C3B3E29590CF8021E28C904F6CE296900CC3AC2C5410C3A1E29596E295A6E28988E295A1C3BFE294B463E289A47D3832C2A1C3AFE2959F58E295A0C3A6CE98C2A3E29482E295A2C3851D53102BC2AA444A7FC2A1E296A030E294BC09C384E294B4443F55C2AA73C2ABE2949C2C6E562D442856E295A6E296935AC2BB17657175176B28CF80C3B22D1B56E295ABE295A8180A3005E2959A697AC3A2E295A9C3B110C389C3B92F76C3B9E29598E295A87B40E28CA0030078CEB56EC3B64A2325E29692E2959D3DC386311DC3ADC2B127E29692E296931EC391E295ACE28988C3894A562C5739E2959F1EC2BD03C3A8E288A969C3AAC3BAE295A0E289A5E2959D33E289A521C3AEE2959D04E2959F46C3A4CEA9CF83C2BDC38516E29599E2889918732AE29592E2959C4A5BC2A0E295A3231653443E28C2A5E296A025C3A1CF86C2ABE28C902F2F6B6AE2968C466D1B1645CEB4C2BAE2889A52E2898865E2949C322D00E295A31CE2948201E29693E296881111E294B46B006831C3B3775FC3A8C3897BE295AC43E296900D6E2CC3A74FC3AE0858E2959D3DE29684E295AA105B7DE29494E29598E29490CF806DE29595E296A07327C3B7CF80C2B7CEB43410E289A4C39F72C385E295AB35C2B5432BE2959EE29480CEA31CC3ADC3BCE295A366E289A5E29593E29494C38737E2959F1663C3A91037E2959E02C3BCC692C39F64E295A0E295AAC3BF3E07C3BBCEB4E2959C67747CE295AB4362201CE29593245B4CE2959FC2A5C3BF10E295ABE295AAC3A8E295AA311D52E2969211E2948C3126E2959B311FE295A5E28988CEB163E2959F7C682558C3A6E295A83F44E282A729C3A5E29480757CE29595E29692282E63221DC2A201C3AE355B622EE295A31AE289A471E28CA0C2BBC2AC62E28CA1E28CA0E29594E29498E2949C6F7ECF80C3ACE29482E29592C2AC2C2CC2A246E294B4E289A1C3BFE295A3783772391603C3B12810CEB1CEA9E2948C58CF833FC2B0E295A5E2959AC3A956C3AEC3AAC3AF7E52E29498E294822C7518E294BCE2959140E295A553432C24E2959EE295A9E294BC6BC3B62262C3A6626CE2959AC3BFE296903F5BE2959C31C389C3A858E28CA16B210D52CF86C3B444C3A1C2B77EC692C2B7C3B2E288A9E28C90E289A4C3AA68E28CA1E294BCC2A3CEA3C387CF845EC3B4C3B3E296900EC2B7E29599C3B24366E296922C4FC6923EE2959CC2A0E28CA0C2A2E296807CCF80C39F7AE2959CCEA6633BE288A93342C2B7CEB5CE9315035666363E14E295A9C3B16240C2ACC2AC00442C00E29691E2889EE29490C385E294943DC3B6C3A0E289A56DE295AAE282A7C3B4663A47C3AD76E295AAE28CA0E288A9E2959869CEA3E2889A4046E289884CC3ABE2959FC3A2E2949CC3A4E295ACC3A6E295993726C39CE2959D19C2AAC3A41FE28C90E289A56F68E289A1C3857063346C6BC3A06B0C45CEA3C3BFC3856B35E294A4C2B03E24633AE295A8C2B13DE28CA03DC3A168E29480C3BF0CC2A1E294BC12E289A4C3AA5B5FC2AC311F5AC2B74BE29594C3B4C3A821C3A6C3AE45E295A4C2B5E2959018C3A2CE981C15C2B5C386C2BDE296A057E296802B10E295A6E294BCC3B35CC2A5C2A354C3AF62E288A9C391CEB5C2B11EE295AACE93425CC3BFE295A873112A534040C2ABE29680E29690E294BCC3B304797852E295994BC3B612E2968007C2B7CEB42AE295A53D53442C24CF83E29480C3AECE98C3BF426C48C3AA1C54C2A37721E289A469E295A9E2959AC3A7544CE2959FE295AA71125AE281BF1B31CEB5CE98CF8004CEA3E2959EC2BCCF84E295AA18E295A921713D53C3AFC3BCE294ACC3A2E288A9C2AA69CEA9C2AAE29690CF86C39CC2AA21CEA9C2A2C3B643CEA3C3A22EE2959E0742E295ACC3A9255A26C3A0C387E2959D78E29692E29688E2959235C2B2E29595C2ACCEA663007CCF83C38440E295AA0E68E2959BE289A5C3B118E295A9E29597E295A7C3BCC3871CC2ABC3B9C3AD07E28899CEA67A5BE288A934C3B4CEB4C2B21B0BE29692C389E295A9C3A8E294BC592853E295A9422525472AC2A2C3B96B162ACF86C2BC58CEB1C2B10EC3A2CF84CF84E282A7C3AA41E28988E2968CCE9322246AE295A0CF862932C2A57BE28CA0C2BDE295AB1AE294B441C2BDE294B4713E72E289881E70E2889E2F69E295A3E2948CE28CA1C3B1C39CE28CA12A54C3840BC3B3C3BB2AE29599E295A376362D29C2B2C3ABC39CC3A5CEA9E295916EC3AAC2B7CF80CF84C389E288990303C3A54BE295AC74C39150261503E289A5CEB57BC6925F3E7F7EE288995E5D373F20CEA9634277E28CA1E295ACE295957A6F52C39FE2889A40C3913A063EE2959FE29692E288A9CE93C2BAC3AA58C2B0E2959AC3964B56E2969129E2959FCEA968E2959E48E29595E295A9C3AFCF864CC2A20BE29680C3A766E294906A6520E29598C389134B6EE295A07AE29693C3A239C2A17EC2A240C3B7370C5AE296914DC3BCCF8408E288994AC3BB6A491D01E295A365753635515D375B02E29595C3A45BC3BC46C2ABE281BF1C5CE288A9C3AC64C3AEC3AA0BE289A521C3A0CEB1E295AAE2959D0C4CE288A953C2A2CE98E2959D7B25CEB4CEB530C3BC3D75766CE294804222E2959EC3A40CE282A72074E289A11AE294BCC3A8CE98C389C3840D014139123C1EE2959BE282A7CF86217D42E28CA1E28988441EE29480633F52453E24E288993E24E28CA00146C2A049E2948009E29591C2AB6D12E296906A09E295A3E29692CEB449C3A0C2BA432B3647C38637430BC3AD4801E28899707FC2BAE295A9C2AC3CE295A37F7FC2B2E289A1C3AC37CEB5C2A52DC3B95577E289A443C2AA41614347320272C3A406E2959AC2A17271E29692C3A4C2ACE2948012C2A159E2969152403EC3A5161FE28C90E295AA10E2968877E2959443C2A0531320E2959200002000494441542139210BE29692E288A93B1C5B1F17E295A73E79C384E295A3CEB4731CE295955E4B0E28E295A9097D7734E2959C6BC2BF2C0F2DC3A5C3A574E295975247E2959B42E2948CE2959F5DE296803432106AE295962D25E295A363E2959233E295A27EE2959FE295A5E295ACC3ABE29590C3BAC2B2C3B7E2959758C3B6C2A2E289A4C3AFE29590E29599E295961EE296807F787272270B561FCF8079C2A21FE2948014C2A3E2969067E294A4CEA372E295A006E2959A3FC2B0E2949C4F7617E28988177FE281BFC2A17BE295A6C3851700C2BBCF865EC3AF58E2959AC3A7046211CE936DC3B4603AC3A71B4673C3A1E29593E295AB5A72C389C2BD0FE295ABCEB4613BCEB1C39CE2948CE294BC69E294906D7123C3BC7EC2A35A162A3D2F541CE294804222E289A4C3A80FE289A5C3BCC3BCE289A57AC2B5C2A538E295993939E295AC7BE28C90E2889E62E29692C396E295AC61CEB1C2A545C389C3AFCE98E295A8C3B7C2B04B2314E2948C72C391CEB4E295A4462CC3B16236C3B1CEA3E295AAC3B709C3ABE2949C3B252E57076141C3A4C3B32CE29692C2ACE295A9C3B32CE289A1C38470C3A9C39FC38773C3B4C2B1C3A64B36406EE295A7E295A57FE289A4E29680E296A0475B00C2B0E29594C385C692C2B2E295A177E29593CEB4CEA9E28899E289A14B3306E289A5C39F5BE2949034C3850779CEA9E296807E143BC3A548C2AC5E2529C3A4E2948057C384266231C3B1C3A7E295A21CE29594C2B1E295A8C3B6C3BA7DC2A01CCF80E2959A4B1EE28899C387E2959ACF80C3BCC3BCE288A92F773D45C3AD3A7249774F4841C384E295930D1E52C39CC3B91461E2959BE295A6E2959A27C3A9C2BD20E28CA0C3A5C39C4E0C3AE28CA118190076C3A4E2949C25777E2E733740E295ACE295A717E289A1E29590C2BBC692E294B41FE296A0E295A4C6920000E29494C2ABC2AAC3B90050E29688C2A16A572F56C2BC18C3A6483C1E5C7D7AC2BD6FE29692C2A2C2A2E2969362E2968C59C2BC42623A38C3A51B19CEA9E289A4457E7CCF83E28CA0C3ACE2968C14E296935071C396E295AC5D52C2B2E2959E402C24112414E295933F15CEA3E2949CE295A256C3B116C2BD016EC2B2C2B55DC692460642C3B9E288991CC2A2E288A943C2B7E289A11CC3AFE288A92335E29480425AC384067A2B3DC3B9E294A4C2A30AE29591E29692255559C2BC36CEB4E294BCC3A2E2889A67C2BDE29482E294BCE29693E2889E76E294A4091AE295A25DE2959642E295A6C3B1E295A746E2959AE296921820C6927DE295A2C3A0C2A0CEB4C2A0E296A0CE98E28CA1C3872F1745797B62487BE2969234C3A612C2A10C2B52E2959A47E2889AC2A0E295A33126215EC38531623A4848C384C385E295962BE294BCE29597C2B036E29480C3A5C3A4E28CA1C3ADC387E28899C3B3E295A4E296A011CF83E28C90211F20E296841E2DE2959C42E2959353C3ACE295A136E289A47DE29480C2BB07E294821C6FE288993421E295A33AC2B2525445E295A129576F5EC2A3C2BB1FE282A7C2BCC2AC430CE2959A50236C1E35E295ACE2959CE29598C3AEC3A51CC3AF014204E289A1C2B775E29599E29690E294820F014400C38740E294A4E295A7E295A7C3A46DC3A86E172FC3BB06E289A5E294B4E28C90E29680E295A2396AC2B1661CE296A0C3AEC2A5C2BBC3BFC3BFE295ACE2959FE295AC42E294BC59E2959D42623AE2959572E2948CC692C385E29594C2A2113B0BC3B2E295A6C3A5C386121FC3A86FE2889A15C38902E29693181C62E2959AE2959F58E2959D1921E289A40706E29593502EE2969321E29692E2959372624362E2959F2670E2889A772A7C1FC3ADE289A5C2AA2647624CE2959ECEB1E2889AC389446C40C3915F0EC3B11FC3AA05420150C3BB45E295A1E2968CE2959304E29596C3A2E295A86D0BE2959010C2A047E289886F19E28899102EE294BCC3A47547790FC3AC14E289A5C3BC72E2959012E295991F3DC2BDE295A7E2959D1969E2959401E289A1633AE295ABC2A3C38553645EE28988C396C3B9C3A9E282A73B4447E28CA043C2A2E2949024C3B1E29490343CE2959CE2959B311D1ACEB465C3A87C1F1041C2ABE295A2E296A019E28899484B7EC3AE1827E295A5C3A64904E29590550C0831172A5336C2BCE295AA0B5D3640C2AA56CEA9C3A57600E289A1270454135C211F57C2BF483B4660E2959AE295916E1BE2948234E2969119773FCF843CE295A7E28C90E29680E295A200E295AAE296902157C2B23BE2969006E296933827C2ABE294BCCE930D0748C692C2A33B4E04CEA9E281BF0CE2959CE29596E2968CCEA3140CE2959C07C692CEB4E289A4C2BF48E29594CE981B5B53420DC2ABE295ABC3A723E2959FC3B6E294940306E282A7CF80CEA9E2949CC3964B7DE2969030E29599C2A373E29592C3A75BE29680E295A846461EC2B2CEA6C3BA3F04E2959AE29482E2889E5B74E295A179E296901824E295A5E28CA1733ECF843C07E295A0C2B1CEB17EE29680576F74E295987BCEA6E288A9C2A335E29688E294A446E295AAE2948C05E295A03D45CEA9E295A82825575A7F62C2ABE2959C3679E29480E2968433E295957262CE9823C2B24E61E294943BC2BA2DE295AB75E288A90AC2A2C2BDC3AA7075CEB5230020C3A4E294BCC3B35CC2B2E295A9C692E2889AE295A9430038E29688E29680C386C39F6C7EC2AA54E2959D05C3A4CF83CF86E295AC65C2AB06E2959A76E295AB5C3644E288A911E294B43B40E289A152E29593C3AF15CE93E29594C3B9E289A5C3B349222852284DC2ACE282A76D54E295935B42E295ACC3BFC3AAC3A04D1FC3BFCEA6E295954AE2959BE29490C39C4CCF8412CF803906E289A531C3A5E2949C2F24C2AAE2949C770E4C19E28899C3AA351619E2889948CF800C3A75E2959B0FE2968CE296935A56C2BA7FC3B7E295A77CE28899CE9877C2A0CEA9E295A73DE2948C6CC3BB25E28CA0E29680E294902CC3A13F056F613052E2959E5C10675FC2AAC386C3A5E29596E295A6C3AAE2959BC391C3A5E282A711CE933BC3AA700100CEB4C39FC3A25E28C3AF30270BC3B2066BC2ABE288A9666AE289A1C2B55BE2948259CF86C69243C3B44EE295A5E281BF2312E29692212131045272C2B7C2B540C2BF1CC2AB11C3ADC3A6C3A04AC3AF79C2A573E29494C2B1E295903E65CEB4C69244E288993E54633E6CCF8641C389E295A642CF831A0B1012E29599C39FE2949CE28988C3BCC3846BCF86583105E2959B7B42C2AC311FC3ADE296922AE296843D634C267A04E2949818C2A358C3AECEA3C39C725DE289882EC3BCC39C0A2C56C2BDE294BCCE93E28CA074551505C3B7C2B1C3BCE28CA0191868313838E296921FE2949830C2B12CC3B44440C39C1A2EC2A21A3EC3A406E282A701E29494C3AFC2B1E2959C4F297AE295A4423947C2AAC3A858E295A03136242662E294B435C38753E295985BCEA9C2A5E28CA1C3B2E2959F787FE295AAE296921FC3ADE2959A47E2959A7B161B21C3A6E295A96218C3A9C3894C05E28899C3BFE29693E281BFE29598E295AC695339376ACEA9E28C901D531D2F66C2A20868E29596C2A1CEB4E295ABC2BB776D46C38921C2ABC3852E51616131425C384372C396C2BD0102040D10E2959D22C387C3B9702BCF80C3BC6B2CE2959FE295A866E2959877E29490E2948C765FE29498C2B53D32E29592CF801AE29599E294B4C3AB3161E2959A4100E29494E2949CE29490CF86E295AA10E29688E2959CCF84C389180B4E6CC3AAC2BB1CE2959978C3A7E295A9C3A6C3A869E289A1C3B2CF80CF80E294BC4A21C2AAE2949CCF83E294942AC2A1370AE28988E29597E295A6C2A577CEA6C3ABCF86E29595E295975B02E295A3E2948014E29595E294807CC2B0C3846BC3AA1CE295AB76C3BFE2959348CF86E295AA107458E294827D620A7CCF83C3A4E295A90F39206AE294BC7CC38740E2949072E295AC7FC2ABC2B10F52CF86C3B4E295A8E2959F75C2A1E29592C3AEE29599C386C3A81FC386E2959BE29593E295A9C2BD675115C2BDE2959FC385E288A93FC2B0C2B7E295ABE29680E29595E29596E2959D4AE2959FE29688E295ABC396E295A2C3AB646344E295A757E29692C384E2969000014040C2BFE289A1CEA90A19C3B71FE289A535C2B03E7CCF83C39110E29599C39F2BE2959F25E29494C39C5B1F08CE98C2A5CF83E296841DC3B9E28C9066C3AD4AC3A6E288A90305E29690E295ABE2949CC692E295A4C3A2E289A4C3A25BC6920462C3A632E289A5C3AD191BC386C3A6C38538E289A5CF845CC2AA1AC2A23175E28899C3A7CF86E288A9CEA9C2ACCEB462596EE296907EE2889AE281BFCE98E295967ECEB5C2A147C2A2E28CA1E29693007E06C3BBCEB5CF8445042B2A17C3BF4E0CC3AACF84E29480C3B9622E37E2959C50C3ADE2889EE29597C2ABCF8630E29592E29594CEA3E2889AE2959566376FCEB4E295933924E29692CEA9CEB4C3B7C3BC546C486A3126C3AD7C20E295A2E296A0C39FE295A9C3ABE29590C2A2C3BC13E295ABC2A2E289A4E282A7E28899CEA965795EC2A3CE98E29684CF83E295AC3DC3A94C6C08C2BAE296A014E288993E10E281BFE288A9C2B7C2BA125360732A48E295A6C3B9E295A5C692E2889A7C68C3AE0578C38413E2959F001D6B3CE294A4633E62C2B17D68E29594CF84E28CA153C3BC582EC3B9E295926AE2959C5E2CC3B73120E295A2E295950DE2959975C2BDC3B7E288A90762E2949C5C144A71C2A3E29590C38475E295A755C39CCE98E29684E295A10EC3B9CEA9CF84C3AE10C3AEE28C90C3855456C2BCC2BCE29596E295A0C2B073CEA30966C2A552CF84E2889A706DE295A7581C453E3235624334E29688357564CE93581CE29591E28C9067E2959CE295A9E2959AC3A7E2959713CF80C3A80DC3B169C39C7AE295966BC39C0347C3ADCF80C3B36BE29693C2B7C384E28CA0C2A3C2BC5F26C3ABC38760C3BCC3AA080500C3B637C3B4E2959EC3A0E28899E29684C3B7E295A30462C39FC38615C3AFE289A4E289A57A200D77C2AC3F74C3B2C3ABC2A5391069490EE2969270E28CA1C3B3E295AAE28CA0CE987B265656C2BCE29598E2969350692216124CCF8412C2B73BE2959AE29482E294BC7324E2949C74CEB5C2A25D4CE295A6332EC2A5E295902AC3B6315D02E295A409C3A6C3BAC3AC7C68CEB46FE2948CE2959FC3B13340E2959E663AE295AB66E282A7CF84C2BC41E2959B732946362D4DE28899E295A2765C3F464D434D5D374DE295A7723C140B32146CE29690E289882F5A0E41C3962DC2A5592669E294981578CF8658247FCEB45B3346E2948005E28899C3AA10E29599C39FE295980C1FE295A7E295A2466CC3AAC2BD1CE28C90C3AC12C3B2CF83C3AEC3A058C3B1C2ACE29596C3BB1C10C39C6736C2BAC396CEA3E2959E2DC3ACC3B668E289A16668E2959D735A7A4F39C2AB21E2959F64CEA6C2BBE28CA163E295A6E29692194EE28C90C3B7CF8058C2B75BE2968841E29494E295A7C2B06332360AE295951D03CE93C39CE2959B3717C3A7324904CEA3E28CA1CEB47A47047F02007F0C00C2BBE2968CE2959C12213122C2A3C3BF0EC2A1C3BF06C2AA1CCEA91A1FE29598E289A4E295A121E2959B0FC3843E29E289A16F70100BC3ABC2B120CEA6E295A7C3890503E295A74EC3BC3763C2BCE295AA10E295AC4625C3AB7CE29595222E0E6BC3AB2DC2B5CF80E29591C3A8E295AA7C1FE2959AC3BF47436B5B0CE2959BC385107DC3B1CEA3C2B0E295A20B40C3BBC38523C3BBC2BA5D5A7F69E2948022E29592E295AAC2A3587C1F5A732916322169E289A1E29595E295A1C3BAC2BCC3A8E29592E29498E29498E29594C3A247C3854EE295A7C3BBE295A6E29693606C06CF86180F1CC3BF385A2CE29593475F26C3ABC387E281BFCEA6E2959FC3B9E29688E295ABC2BBCEA659E29599CEB13B00C2B05C7EE2889E43393438735320C2AAE2949C2607E2889A0E40C3867A43E294AC7220C3863ECEB12967C2AB7C1F63E2959FCEA9C3A4E295AC27C384E2959DC3B6C389C38518C396C2A26279C38453E2959AC3A825E2968C77C39CC2B205C3ABCEA97F6C0CCF83E28C90C385374E5C7FC3AFE281BF3DCEB5E296925814C2BA170FE295934F1F3F3E7B7872E2969328E294B4E295A0C3ADE295A87715C2BDE295A7E295A52C40CEB52A472E3D65C38608E2959AE29680C2B23F7E7479E295915E3CE2889AC2B5E29596E295ACE29690292B7CC39F1FE295A6C39FCEB445332DCEB12EE29690E2959AC389E2889E51E295A82FE2959F14E29599714041CEB5201FC39C59C2BF5040C38444C2A0C387616D71E295A4E2959FC3BBE29590C3ABE29494C2A5713B3662C3A612E295993B67E2959D24C3A60FC3847127C3A43C74C3A610E2948C3FC3A75AE28CA14BE2948074C3A4200DC2A3710B596BC391CEA3E29595C2AB355C235BE294ACE29482E295AC19E29596E295A332C2A573E295ABCEA6E295AA7234C396CF84E295A1E2969346E29498C2AB42E2959FC3AAE29594E295A8E295ACC2AC656E07221665C3ABC3AF6A51545820E295ABE2968863C2B77DE2959A48C3BCE282A7E2959EC2B5CE935126C3ABC387E281BF1BC2A0E295933FE295AAC2B2E295A5C2BBC2B2E2969067C2BB5EE295ABE288A911E28CA131C3AD4B787B34CE93365CC2BC7B21E29480CE93CEA6C389C385E29598C2B027C384C2A5E288A9632C2FC2AAC3A55737741DC3A6E2889E0329E295A7E296A0E29692201F53C39FE2889AE295A82EE2959FE29480740E1369E29680C3B6C396E295AC63C3AE3B4F3E1151E29599505DE295AB74E2959AC3A9E294BCC2B27217C2B170354232C2B7710C06E2959AE294BCE294BC12C2A0CF837FC2B1E295A6E295ABC3A2E2959CE2968C362F00C3A1E2959B3B1742E29498634DE295A0CF805CC3B75D70C2A3C2BD36C3A56EC2ABE296A03D4CCF8407CEA3C3A2E2969155E2959C16E29599E295A314E289A4E29595E29594E29599C39FE2949C60E295AC615ECF84CEA9E2959061CEA6E295A279C692526028C3B96268E28988C3A6637A275CC3BFE295A629CEB1791FC2B5E28CA0E282A70DE2968CE2959E747E2DC3BBC3B7CEA607E295967EE295ACC39C0410C3B959E29684C3A7E295A3C39C2BE2959FE295965DE29684E296A0C3BCC3A6E2948CE294BC39184AE295A00BE295AB7AC3B1E28CA0E29596CF8619E29692C396E294BCE295A1CF834830E295A76B31C2A5C38539C3B924C396E2948C6DE2959EE2959FE29691E281BFC2AC2C56CEB4C3B4E294BCE294BCE29498E2959CE29592E2959CE294BCC3B3E294A465C2AC1A0A441F3242C384E294B4E295A5E295AC06485FE28899E2889EE295994BC2B0E29680E296A0E28988C385C2AB2755516005E296A0E2948017C3A8E282A7C3B1C3A6E288993EC2A3CEA3C2B07A1F626673C386C3B6C3B47933E295A5C38623CF865D1B09E28899E2949414CEB5596B2009C39CE282A74B146EC3B9E28CA05A1C6BC384E294BC2E7824C2B71D3BE29680E2959F1CC2B511E29680E295AA2BC2ACE296933A3D5DE2959C7571E2959B7E74E29693C2AC4ACEB133C3ADE29597221EE2949808112AC3B4C3A8016908CEB1E28899C3AFE2968CE28CA1E288A9CF830D1FE2959AE29592543DE29691E295A760E2898834201523E295A5E28988770DE2959B0FC384C2A321E2959BC385E295ACCF84E2889EC3BFC385107DC387C2BBC2BBE289A4735D7D52614CE288A9C2A20353CF83E295901843C384E295A746CEA31A6B637BE288A9C2B7E29690C39FC3BC7937C3B6E28CA10AC3A6C3A6150B3DE2948C05C3AEE2898823654670290673293E1009C3A258C3B4C2A04143E2959BC3B6E296A0E28C9031C3AFC2BA1ECF80E2949C196F49E294982E593953E29599E296802FC2BDE29593E29590E295A3C2BB402810C2ACC2AC5C1445E295A45D2C4CE295A8E29594C39FE2898802C2AB6EE29599C3BF10C3857CE295924AC3AD4CC39CC39FE29692C2BCC389E2889EC3B462C3A87C1FE282A772CEB57C14E2949CE2889AC2BAE29590073216E295A502C3ABCEA97D2C72E294A4E2959E0564C69273663AC3B93A54C2B0C2BC5F63201F520CC2B529E294A42BC3B9E289A13D33C3B7E281BF4B414EE295A04233C2ACE2959FE2949C3826006AC2BFE29590C3A43E74C3B20ACEB16EE29593C2BD3E25E2969301C3B354C2AC29E294905D44E2969123C3A94F00680700152204221FE2959B7C1F36C2BBC3ABE29594E295910FE295A01E35E2959AE28988C3BC16C2AAE289A4C3AD175D320BE2959218C3AA45C2BFE296901C0EC3A0E29692783352423E50E296917F7CE295A37B5CCEA91D5A522CE295A7E29498C3890D67C2AA734EE295975C3F4F11E28899C3AAC3ABCEA64832C2A56BE289A47DC3A41A55E29692E28CA1C6922B621103E28899CEB1724B49E2959AE29592C2A34B63E289A17DE295AAE295ABC389E29688375E0808C3AA2E2FCEB406C2B711C389C3ADE29598E2959D68303CC2B70CC386C2A3C2B24AC3A14C1A01E29498E29592E29590C3BBC387E2969023C3871F00E294944B392FC384CEB43DCE9329211F7362C2B7C384E28C903708CEA94D23C3B7C3BAC2B578E29480C3AE79E295A41E5F5BE295A119E28899C3AAC3BAC385546CC3AA76C2A252C3A6C2BD5D4F463EE295A5C3B23F73E2959B0F077BC2AA69C2BFC2A2C3A0C2AAE295974115C2A1E289A46F775217E29494E295A664C38951C3A6633640C2ABC3A136780D00C2BB00E29691C3B7E295A77023C3B2412524C2A2C3B2C3A2C2A3CEB4CEA9E29688E2959AE2959F3E23E295A7E295A8CF84E296901E1DCF866C56E2959BE29498E294824CCEB4C38756C3B7C2BC6EC2A27CE2948247C3BCC3A71CE29599024D23E29594C3ABC2A5C391C3AFE29692CEB4C3AAE2959ACEB438E2959F6CE29498C2ABCEB57C3EE294A436C3A1C39FE2968CC3AAC3B23D4A331BC38646362B02E295A36C5FE2959B59C389E29494E29693E295A239C2A3C3A8E295AA7B46CEB1CE984B547FCE986C62E295A2E295A1E295AB352B19C384C2BCC3854DE2959BE29480E2948CC2B5E29693E295A2C3B3E294AC5CE295A5C2AC4727C2BDE295936251C2ABE296A0E295A0C692E296A0E295A50300E29595E295963FCF8072C2AB3B0CC2B26B333AE296931172C3AE06085C5DE295A3C2AC0060C39FE29680C3BBE29692C396E295AC7D7540E295A62B20C39F19E29593C3AACE98C387C3877E0CC3A63FC2BA2C546332C3BFC2BA1A1B122BE29593043CC3890F4DC3B7C3B7E295986223622016C396CE983CE2959BE296A019E2889948577E463EE2948CC3B7E295A972556DE296A0E29684C692C2B2E295A9E29599E29680C2B0C3AC6F3C3AE2968C2C0B0068C3BF15C2A262436CE28988475D3C1CE295A3E294A44A3565CF8311700700C69200E294B4C38501C39F31006EC2B7CF8407CF845EE295A36F362BE29599CF84C39C4CE296807D4CCF8460C3ABE2889970E2959066C39111E29599617AE29690370BC3B27276E29692E29690E28CA129C3A06C56E2968476E294BCC386CF801AE289A4E294AC39E295AA4864C3A70AC3A667313EE295AA311FCEA658E2949046E295A0C3A7466CC3A4564CC3A7CF861D4FC3ACE294B43DE28CA0E29691C3B23AE2959979C2BF3CCE98C2B101E295A6E282A731C3B738C3B4E2959FE2948C0601E288A95E6CC2AA73E295943EE295A5C3A65F1458C2AB37C3AFCF83C2B2E29482C3B4C2AC28C2BB61CE9802C2A3C3A1E288A941CF80C3B14B5CC3B2C3AF67C396340252205C4203E288A901E294943F05C3872FCEA32CE288A9183C1EE2959B3A68C2B1C3BC64C3A5E289A52C4742C3840D6901CF83E28899C3A6C3BBC3AF44C3B7E28899C3B66223E294A4E28CA10EE28C90E289A4C3BFE29482201D13E289A50113E295A427231F31CF831351E29482E2968CE29593E2959757C2BB7657C3B9E28CA0E288997732E2889ACE933F6C64C3A5E295A31CC2BD01C3A9C3870D00E2959D04C3A90E237A77C384E295AA18E295A95DE288A9E295A37250E295A3000673C3B41C3A64E295A23AE296912B77E282A7CEB455E295A627560503E28CA1E295A2E2968CE295A7C3B26628CF84CEA61D22C2BA6F0EC3BFE2959D363EE289885A4318E29599E294B4CE9345C386C3894320171BCE937AE2959FE2968847C2A0C3AD77C3B913C3BA01C3B7E295AA0F56E295A0C3A76BC2B200CEB54CE29680E29692632352C3ABCE98C3896670CF84E295AC1FCF84CF8010E295AAE295A46009766A00C396E295AAE282A7E29598C2B7E29592E294A4E2898862603FC386E289A5386B33C3A06BE2959A4DC2A2CE98C2A35BC2ACE296935CE2959CE28CA1C2B5E29498E294BCE295A77ECF86E295A4CE987255E28CA1211F43311D43E29498E29691C3B13C24E295A3E295A0E294B400E295A33AC3A643095757E29594E295A86D4EC3A1E2959FCF84125E2301E29480C3B3C2A5CE98E295A9C396E288A943E294ACE294824D01E288A961461ACEA3E2959FC3BA6F5C622316E28C90E289A47DC3A4C2BC0BE2948C1EE2959CE295AAE2959D191A63C3A6424C47E295A97BE2959BC3B7E295AA60E2948077E295ACE28988707B6C45733EE295A5E29480E28CA15768075D39C384C3BBE295A672E289A4CF832F5D3CC2B2C3B7E295A73F7EE294A459E29680C3A801CE98332E4CC3AA47E28988E29482C3ADC6925C7CC3ACE294BC19E294A4C3AD6C4D14C2B5C3BCE295A0C3B20FE29480C3B7622AE289A466504B4EC2A2CE98E29684C2A2E288A923366F466CC3A572C39F18C2A2E294B40D3E266FC3A5CF863960E295A2E295A645C384C2A12F38311D63E289A57DE29595E289A1700C30C3961B633FE29595C2B7C2BAE2959AC2A2E294B4CE98C69254633A40E28C905D52C3A7306D7EC3AB58E295A0E2968CE28C90E28CA0C2BDE29594331EE295A9E289882135E295AC1CC3A7C2A516E2968047CEA9311FE295A9CF86E29595E295A126231405C3BBC2BD5575E29693E296902CC3BBE2889A1810CEA61820C2AAE294B41ACE9307713136E2969351E294AC2CE295994EE2949CE295A6E282A71CE2959BE2959AC3A7C3B6572FC3B10E5FCEA363E295A02C54C39CE29498E294823262316EE2889AE295A35E2BCF864CC3A011CF8361CEA91C1331E296934269E295ABC3A711E2959F3A66C39632E289A531E2898832E29592E295AAC3AEE28C90E295A657C2BC070108C389CEA9C3A5CEA97AE295966703E295A35BCE98E295A81D3E0E7B3A081829E295A3E29494E2948011C389E2968CC384C3B74CCEA6E289A1630078653FE295AAE288997A237D37E29599C3896C4E30C3877C6047642AC3AAE294BC503FC3A064C3AD024F7D24E294826BE28CA179C3A052412CC3B1E2948250C3A0201621C2B2E29480C2A1E2959F47E282A745E2959B33E289A511C3A9CEA370E29688E29599E28988C2A3CEB4E295970C6EC2B2CEB1E294A4E295A221E294804576421C14C2ABC3A7C3ADE295A84C45C2AB7BC385C2BD7CCE98C2B1E295924208E294A4100B08C3B623E294985FE295A2E2959C46235B1442CEA9E29498C2BFE29598E29688E295A45DC3B4C2BBC2A5E29693444D434DE2968C1011C3A66D72C39C10C38502C2ABCE93C3A8E295A462E29595CEA3125026C3ACC3877CE296A0E28899C3B7E29693C2ABCE985DE29591E295A9C3A9E28CA13CE295A03B24E294BC07E294ACC3B2CEB4CEB1211EC2BC5E0A69C39F2EE2889E53C3ACC3ADC3896A57CEA9C2B2C3BA1DE295992171C3BFC3A63CE295A828C3BBE295A4C3A60F2D3456E295910D53E295A53BE2948CCEA3C3ABE295AAC3841419E2948C29C39F76CE930CC2B5E2959814CF836BE295AB73E295A678E296935A1F1DE2949C022CE2959EC3A529323F1B240165E295A508E2959ACF83CEB4C3A5C2BFC3BC5700E289A112C2ABE2948260E294983CE29688362FC3B32F1FC3AA206FE2959EC2A5CEA90F163E751E0DC3ABCE9850E295A87BE289A1391C51C38454E2959708646214E294A47833E2959E402C38E289A4C3AA232726E29680C3A72D360704E288993EC387E288992EE2959EC3AAE2969270E294982F63E2959FC3B3E295AAE2959364E29688E2959115E29688E29482CEB5E295991F1ACF84152DCEA30347CEA9E295ABE29598C2B047E2949473E282A749186FE29599CEA3C39F50C2BBC2BA0FC2A1E2959EC2A2E295A1C2AA2CC3AFCF83E29498E29498E29594E294BCE2949CC3A7C2BAE28988C3BBC3AFC386E295A6E29592E295A467C3A414C3A5E29490353DE29680E295907C201E65E295A508485515C387080BE29595E2949CC3A4C2ABE29590E294BC11C3BA0E14E29693E2948273C3B7C2BFE294A4CF83E295A01DE29692C3AACF83C2B21A531FE2959078C3B62939E295AA62E2959FC3A5C3B1E29690E2959F731CE2959731E2948CC692C3A6C38569E295A6C38554C3B7597C17C3AFE289A5E28CA0CE9362E289A4CEA3E29594C3B4E2889A0F4FE29593C3AF1278E295A37DE29692E2959F6332E294801532E294A4116754C3A47BC3A5C692E29693E289A53F7CE28988C3AFC2B7CE937CC2B127CF84C3AFE295921F4301C2BBC3A7E2959C26C2A3C3BF0EC3ACE2889E491C39C2A5C3BFC3846BCF80C3BAC385CE981C07C2AB615164E2959C397224C3890FCE98C2B1E289A1C3AC0DC3963A622115C3AF62C2B73E06E2959AC2B1442AC2A3E296934EE28CA1E2959AE2948265E295A112673AE2898879676DE28CA14A6403E289A459037DE28CA0192BC2BD52C2BCC2BC515A72C3916334E294A4C3A6C385C3B6100B541AC385C389C2BC5CE295A56BC2BBC3A4C2B1C3AD315723E294A4C3BAE294827623625155E294BC6AE2969228174531C3BFC2ABE295A814443EC3B66E170D06E295A650076774E294805026C3ACC387E281BF73C2A0E295A5C2A0E296937BCF8067E296A0C2A23FE295A3E29684363D312052311D5A0CCF8303E28CA1C3ADCE98CF83C3A811E29599C39FE29693C389C387503FE2959EC389132B3604C3B6CF83700E23C39C7AC3855552E295A0C3B3C3A009E28CA00526E29593E28988E28C9067E29482C39CC2B7E28CA1CF8663623A3F7647E289A5E294807838C386C2BF07C38700C2BF696857E295AB4D43C3ACE295A4E289A128C387E2959F68E29498353EE2959AE289A17C463E3CE295A92411C3897FE28CA1777E161A02E281BFC2BBC2A0E296881F1000E2949476E295AB3C5F43E295A3CEB4E28988C39C70633AE2959519661478334C311D0714CEA30EE289A5C3ADC3B2C3A0E295A92505CEB414100BE28C90E295AAC389E2959BE295A364E289A5E295ACC2BAC3AA58C2B066C3AD72C39F3171C3A663C2A2331248C3A627E289A5C3A60CE29680C3A7346F462C0F7468362F2D7D24E295933E1F67C38716E289A5211DE29688C3B40A6221E295923ECE98C2B1E295A8C3A81DE289A5593343CF84524C3E11E294B47AC2BC6BE289A555294B5CC2AB4F16CF84E289884E57C2BAC3AF4561321A08E2889E4847261FE295A006E2959AE2968CE289A53FC2A0E296A007007433E28C900A2CE295A9E296A059E28C90C3B221E295A95607C3A0E295ABC3BC5C39E2959BE28CA1E294BCE289A5520DCE98CEB4E289A4C2A3E294A41C17E2959C431666745CE281BFE295A1E2959F47026922C3BFE29690C2B2CEA329E289A47D70E2889A25654FC3B75859E2969262E289A5714C650EC391385F08E295A5CF840CC3A9C3AA63C2A5C3AF6B29C2BD72717AC2BB78E281BFCEB162E289A4CEA6CEA3645140E2949047E29482E29688C39F3860E28CA171C3AEC3857CE29592CEA9580CC3894F3E79E2968C1DC2B70200C3A8E2949CE2968438C3B15F43E2959DE294BCE2948C67E289A1C2AB70624322E289A46638211F52E2969218433AC3A0E295A9C3ABC3AC5868202DE295A2C3A2E2949458C3AA0508E29594C3AB1D3BC3B3E295920FE295A5E2959AC3A730E295997A72E2959D193111C3AFE29598E2948C1572E295AAC2A22AE296800728E295941B1BE29692E295A8C2B5E2889AE295A818C3A7C3AB67C3BA7236C3B3C3B1E294825EE2968CE296A0E281BFC2B7E29480C3A40542C3BC502DE295A9455D37003759C2BDE295A870CEA66B1B1AE2968CC2BD593664C3A406C3AEC3896C495A4A31C3BAE295A2C3A1E2889A63C3865E67C692E295AA100D6EC38610E295A7360574E29596E295A6C39F1814E2959E0013C2A14F6A1AE2959732C3B64BE294B4E2889EC3BFC3B7CEB42C210FE2959FC384C3BA48C3AC37233643E2889A18CF86C3A9E29480C2B72ACF8377C3A6E29597C2B54CE28CA048307BE295A347382F08C3A169C2BFE29498CF86C39CE2959EE2969131C39CC2BCE2968C6EC2B75D53007A61C3A6C3A6C3ACC385633140106147003F25222022E294947DE296927B6968E294943BC387C2A1E295A709C2B01E79C3B4E28988C3A0CEB57A01C2ABC2A0C3AEC2A12B57C2A1E295A7C2BBE294BC59CEA30CE29593E295ABE28988E296A0C3BFCEA3E28CA0793525CEA374E2889AE2959F554E773C4C1EC3B2C2AB1C0CE295987B28131F18C2B5C386E295945942034E17C3841C307C3EE29598E29680363910C3A1E295A7501210E2889ECE98CEB46E3FE28CA0E29594CF80E295936BC2B77CCEB15D27E29591C2B741E2889EE28988C3B1E2968CE28899C2A306E2969069E295995C24E2959FC2B10066E29597E294B432C385E29494C3AD5FC3B1E28CA0E295A46AC3B96D0DE28CA1E2968CE29688C391CEA31073CF86C3B23EC3A2C3A4E295A9E29596CF86615C79E294805C337DCF83E295AAC2B5E295A3C3AF1CE29594C2B120CF837146C3A7E295A124E294A41EC3ACE2959B71E29594741B76E295AA33C2A1E2949837CF84E2959B2B7D1655E29692E281BF53E29490E28CA0C3910B00E29595E295963FCEB452C38521C3BCC3A50DE29680C3BB054BE2969151E2949800C396E2959101724944E295A708CEB11D0078CF83CEB569E295A86041E28988CEA3E2889AE289A1E2959347C39C313C153919E29692C3AACF846DE289A441C3857D794C62790125C3A6C385E29692C2B03EE2959E6028E2959E04E2948CC3B2E289A5E2959B3E07C2ABC3BBE295A3CEA9C3BBE295A7C3A2E2959D3D67C3A8CEA913C2BBC3AB04E296915A55C2A25FE28899C3B2C2BB3CC2B24B7FC2B1CEB4C38536C2A2650977E2959CC384362364CEA66F535E04C38629E295924CE2948CE2969205C3876700E289A103003803C387C3B4616FE295A7587C1FE2889AE295A7C3AE7C1F1D3E101CC2A2372376362BC39FE2889E6222E29498E29482C2B7E2959317574674E295ACC2B714330BC3B276C2BC0A30CF84C3B644E295A0C3A8C3917EC2B5C2B26179E2959BC385E2969278335CE296934269CEA6CF801BE289A402C3BCCF86C2B5E2959B6FE28C90E2959E7C70C2A50063E289A47DC3B1C3BB6D4D6B3C34E29482C2A27133294A191B31E294825E09E2959EC3BBE2969139C39C0C1F1758E282A7E282A72E571717CEB445596237E289A4C3B2CE981A41E2889A1A56C2A2E28CA1E2968404E294BCCF84125066C3BCC387E295983BE2948C22C39FE2889A08E289A12E00E2959DE289A1C2A2C2B05A19E294827CC396E295AC63231F63C2B16FC387E296931CC3AAC2BCE2959656C3A6421A52E28CA132E295ACE29594333B65E296900C29E294802246E295A0E295A6E295AA730113C39C7363CEA6C2A579437249E295961051737959E288A95EE2959CE2948C364D43643944C396C3BFE295A8E2889A2659C384E289A4E2959A06486BC3B335E295A820E294944B04E281BF02017657085CE2959AC2B269C2A275E295A7E2959CC3A7E29680C3A673C2B2E295A136E289A5413D623BC692E29482E28CA1716D1706E295A9C3A6C3A8E2969230794C5C634308CE93E29480C3B3E29595E29480740CC2A15DC3AD3111E2968C76C3A0E2959E56C3A1C3A91C18CEA607C2ABE2959DE2959BE295A72DE28CA1E28988E294BC7C0CE296841F76C38541707D3E34C3A5E294AC36C3B96C77C2B563CEA6033DE288A96268C3AEC3AB6F4C0177CF86CF84E295A9E29592C3A84DE295A4E295A57F2A3135E2959BE296924BE295A23D4C2AE2959E07C3A0C2B551CEA6C39CC396523DC3ADC2B17956E295A6E294B4E2959D76636B6DE29596C3B6C2AC2CC3BB6FE2959B79E288A9E281BF2B5F79E29595592EC2BD0278E295AB2738C2B12143E295A7CF83726C06E2959A7EC384C3BB7075C391C2BC50432C34E2959D4FC3AA42C2B768307D4B65E294BCE295A5E289A16AC39118E29599617B7E0EC3AAC3A054C2ABC2A029782D31C3BC3EE282A7137B78C3AE76E294BCC2AB634AC2B7C2BAE28CA0C2ABE295A4C3A4E2948CC3B2E294825E4DC2ACE2889ECF86C692CF83E296933AC2B2E289A5C3B92EE282A77ECF84E296884F1E6D36C3AFC3B7752A530C081A5EE294AC3EE2959374C2A12C014755C2B51203E295A5C39C38E295AAC39C115A4CE29680E295A2C3A0C3A4793FE29592E2959AE28988C39FC3BAC385266FC3A5C2A11F42623A40516F6966755BC2A0C389E2949CC2A3C3AFE29590601E1A63CE93E294ACE2959601E294ACC2B260C3B4676B0730783E6C73E2968C35C3B7C3BCE2959746C3A4E289A56648194BE2959FE295ACCEB1CEB5E2948C6FE2948CE2889EE29598E28C90E289A17D68E289A4744022CF80C2BC19533217E2959BC38511623E06CF80E28CA1C3A5E28CA12C0A2C4F4EC2ACE28CA1CE98CE987255C3BB05C3A7E29498E29595E2889A2F17C2B1E2959A46C3AA67297217E295957AC3AD50410E46C3860342CF86C386E289A1624D01E2969218736DC3ABC3AC584867E29482C3A9C3ABE28988C2A2E295987A31C3A5C2A3E29598E2948CE294BC1DC6921C0BC389E295A733791C72C3A618370402C3A1C2AAC3ADE29591C2ABC2A2C3A5C3AAE295A1C3960D19297DE2898857C3A7CEB560CF84E294AC28E29592C3AEE2948C72E2959A5A701DC2A0C3BCE295ACE2969048C2A2E28988E2949C66CF831BCEA3504B0EC3B7E2959A3132C2A5E2959FE295ACE295A515C3A8586831E2959EC3A766E294820A45E2959B6CC2B22329670CE29480E294ACE295ABE29482C2A1C3875438210F0E4CCF84E295AB5FC2B1E295902A15C3B4CE983B064200C384CF86C3A5C3AACF8677691704E295A9C39FE2959AC3B9E295ACC3A9C3B1E28C907F6AE295A0CE93E295A5E2959AC3A9692F483DE295971967E295900CC2A54B6331C2A5C2BAC3A97CE29684C3B2E2968834E29598E29598355127660407162C13CF80791F023214E2959536C2B17CE2959FC2B10ECF867331787BCEB5CE9849E294BC7FE295AA3E63E295A9E294B421392159C2BF34E295AAE2968CE295A110C386E28C902216C39CE29690E2949831E288993724E295A549C384E29498C692E2948CCF80CEB5E295975E68E2959A4939331B4E6CE2889EC2B5C3A15B6CE2959CC38505C3ADE295A94E6CE2968CE295A13FE282A7C386E295ABC3A07768E294AC1E03C3B3007E60E2889E10E29490482E3D651608E2959A6E4B3535E289A15328CEB127C38770C3ABE2889EC3A2C2A5326FC3A509E28899381822C3A27C1F1C7D62E2959F74E295AAE2948CE295A759E29480397A4BE2959FCEA9C3BFCE93E294BC5CE2959D5FE295A2E29684CF86E28C90E289A46FE29595E2959A19C3AFE288A9E2949CCF8310E295A8C2B1E2959D077BE295A4E295A8306752CEA3E29590CEB1E28CA04FC3A8311D127C1F5A31313E6B42C3AA7C69C2B253432CE294A4CF83C387E295A53868232BC3867C1F63E2959EC3BB08C3AEC3BC16E289A5E29692E295ABE295962CC3AFCF83E2959C7B27CF840F1E6C4EC3B9C3AFE296931DC3A4E295AC311C4CCE9802C3A7C38910E29688C3A5C3A651C3A64EC3960502E289A5E28899CF84E28CA176E29597E2949C6744E289A103007C1EC3B7C3A928E289A16FE294A4C3A60FE294A4E29594C3962A623105E29690C3AE63C3B923C3A0E294A4C3B1E295A80FE2948CE289A44EC3B37F347833C3B1E2948C143BC2AA23E289A47D4C57E288A91CC2A2C3B4E295A6C3A4E295A93E0BE2959362516E1E3CE295AA3C7DE289A5CEA3E281BFC39FE295947AE295A435404CE294B4CEA3E294BCC3871557C38719E2949828E289A504772FE294824040E296907BC3B7CEA9E289A5E2889EE29690E29594E29482E2889A17E294BC3B25E295A873E2889AC3A9E2889EE2959460E295ACC3B263443E7CC396E295AC6DE28CA1C384C3AC58E29595E295933714E29599E295A4E28988E295A3CF86002D14C2BD23C3BB156B0A311DC39C59E2959542E28CA1E288A91B0B6DC2AA734EC2A0E295953CCF84CEA9E2889907C3A51C0907C3A02B62C3AD1DE2959922CF867809C3ACC2A5C3AAC3B24D4B4AC2A063433E246364C3A5C3B7222D044DE29693C384C3AB66E2959252433E3A6F16625955E294BC6AE295A12CC3B965510CE2959CC3877D04C3A4E295A218C389C3A241E29599C3B9292B5BE29690E2959F64C387E281BFCF83E29680C2B7E2959C1A003E7DC2B2E294985FC2A06159CE930BE282A737C3AAC3B4C3B2C3ACE294ACCEA33833C2A54B2C1CE2959A3430C3B110416E7DE2959B726006727CC6922348C3A2C3AF2264033BE2959EE295A137CF83E295AA08C3AEC2BC37E295AC641CC38565E295ACE294B411E2959AE29594CF8318E295A93E0BE29593C2ABC2ABC2A27A1F0562E2969334397F07E2949CCF8443E2959EC3AECEA341221B20E295944D30C2B74FE28988C3BBCEB55F0700C387C2AA69E2959B002877C39FE2969211C2AAE2949CC3B445E295AC1DC3A6C3A76B57E2959879746AC3AA45C2BF1CE29680C3BF0ECEA6E28C900F15E28CA0C2B1453E52E295A64225C3A0E294A4C2B0201F12E29692043679127C1FE2959B1ECEB53179335C0E5FE29692E2948270C3BCC389C2A3E29692633F40C2BFC2A06DC2B7E2959718C3BC3EE289A5C2B5C3A97C482351E2969262C3A7387B42463ECEB5C2BCE295ABC2AAE295A7034A59CEB1E289A5CEA36471C2A0E28CA074E295A1E28C9016C391296D6E3728C3A7C3B40D0B070CC3B65CC384E294BC0039181E37E294906375774248210DE282A772C38923E295AB1569C3ABC3BCC38970C3AE1A09CEA3436C36405CCEA323C3B2C3BF0EE295ABC3874614C38633C2B7E29688C692C3AA0CC384C3A639C391E2959BC3B6C3A845C3965236C2BBE28C90E295905BCF8639C3B911C3AF5CC2AA5FE295A945E295A3E2959557C3BB4F1E5CC2A33E5AC6922C4ACEA60F42E288A9432CE295917F3B503CC3BFCEB5C3AC23E295AAE289A4E29599CF84323703C3B17F32617163505F410FC3AAC3A43CCEB4E29690330B1519E282A7E29597E28CA1CEB410E29599E288995C100B25E2959EC2B0CEA64CCEA6E2959B0841E29680413E5616C2ACC3BF726C631421C3AF5630E29680C3A72BE2959939E28988E2969125E29590C2A211C3A87CE29595E29480C3B3C3B1E2959A503E56E295A222E28C9043E294A4060FC3A5C3A4E2959DE29598110B6939C2AAE295A11F02CF8373CE931713CF84C39F18C3BA1E15CEA3C3A20ECE93C3B7CF84E2959B02C3AD42582CE295A636133ACF845EE2969129E2889A55C3A6C2A16BE29498323326741C68E29599C3BFE2959D191AE28988E28C90C2BAE29480C2A241E2948C632EC2B05C6A72C2AACEB5C3AC4C31CEB4550A7DC3BCC3ABE29592C3A7337C7752C39C13C2BF38C3A7CF84C3AA5864E2959F711AC2B2C3BA540F5134E28CA1E28C90C3ADC2B5C3A50AE29480CE986C6CE295A6C3B6C3A0C3ABE2949044E29594C3B9592120445003E294944FC3B716307E5AE295A75300002000494441542202E29690E28CA14CE28CA0E2959015E295A72C54E29684C3BF0E1CC2ACE295A747C692E29598110BC2A26E2E72E2948C6317C3AF0FE294BCCEA3E294BC0A452CC3B178436CE2959EC2A554362B2DCEA3E2949CE294BCC2BDC2AAE294BCE28988E294B4453EE2959ECEA3E29590CEB1E2959DE29688E29692E294825971E295ABC3AAE28C90221FE28C90E295A9C6924AE294904A233BC3A1340EC3ADE289A55DE2948CC3B9280F47C2BC7AE295AA68E295A1C3AEE29690E2968C731F11E295A8765BE29688E295A8C385CEB54BC3A8C3BBE2949021E289A103E295A4E29597C69267CEB4E2959165CF83E29590C2AAE295984D73E2949810E2959C4B00C2A014005EE295912D0AE29692110B14C3862355C3B110C3AF63E295A7E294943255E2959B0FE29590E28899C3B6C3B3E2959DC3897759C2BD1DE28C90C2B17DC3B1C3BBE295900B2732E2959E31CF83C2BA52E289A5C3962AC3B9140B0201E294B476E2968810E289A152CF86E2948C10C385C2AB1152183EE288A90B6CE295A7C39153C2B5C3A0C3875CE29498E2948C2F11CEB13900E29598C3B74D41380B1502E28CA0E2959EC3A5C3A16F162E177DC2B764C3A0E2959E50E295AA0EE294A4E29692E2948250C396E282A7C3B9404820603CE2948CE28CA1C3AEC3AB58C3A4CEA60DE295A07AE294A4E28CA0C385E29590E28988C39FE2959AE294A41E1569E289A11D575FE2959C25E296880511E2948C1572C3BF1FC3AFCE985C3AC3BB612EC3AAC3A036E29680C3A7C3B738E295957256C3A0E295A22167E2959C7233C2B7091655E295A3E281BF677EC2B1E29594C2B23FC2B747E288A9C2A5E294AC0D7FC3A7CE98C3AF43C3A5C3A4CE98E29680C3AD4D265BC2B50365663120C38708E2969100C38725C2A06DC2B1412C627915356255CEB148CEA34C496F4AC2BCC2B23421C2B2E2959FC2A31F2923043118E2948CC2BAC3B7C384C2AAE29684E2959E5C72E2959445E294A4E2889E31C385E29592C2ACE2948CE281BFCEA9C2BB7EE28CA1CE983FE2889A17E2959BC3B768E2948259C3BF0C10C3B9CEB455C2A360E28CA0E2959DC2BF304A35E2948209E2959603C387C69202E294942700E289A118004E55E288993EC2ABCF803BE2959A6C0E0DE2959431E2959327C3AB58C2B0E2959AE295A4E295AC4265C3B413C3A858E295952224E2959BCF866FE295A64E05E2969270C3B213C386C2A5E295A9577FC2A25CC3AFC3B9E295A019E2889908C39F2FC3ABE29594C2A2C39FE29688E294905AC2B748E2959EC2ACC3AEC2A505491BE28899E295A8E295A55F1B69E289A1C3B2C3B47A2C0A58E29593E296A0E29598624A5C0CC2B5E29480C3A6C385E294B4E2948210C3AA67E2959CE29693CE98571458E282A7E2968C5BC2A53C7A74E29591E2968467E2949C6A37E295A2E29597E295A8753BE2959CC387E296A058C389C2ABC3AD627AE28C90C2B5E2889EC2A50B2EE294824240C39CC39CE295A248C2B02E027C1F00E2959BC389CF80E2959030E281BF3F0AE29594C2B1E29593476A41C3AF2167C2AC3126E29692C3AAE295A742E28CA0C2AA11E2889AC2B118C3AF066F466AC2B7E295A0C3B2E2959F630E5C2D29E2959AE295942517175BC3BC46C2BCC39CCEA6E289A5E29693C2AB5FE2959BE29684C3B765E2949CE296931160C396E296935E15C2A1E289A4E29482E2959008E295947120C3A532C2BB18C389061A04C2B002013F07C3A11DCF86E2959F1FC3ACE2969015E29599CE93E2889EC3AA7C20320CE289A539C2B178E29480E295AC42C3B21A63E2959D4F362BC2AB1131261F083AC384C3B96BE2959C00CE98231F63C2B166E29595E289A136E29480E295A8473B2B16383EC3B93AE289A521C2A5E294BC69C2AB3C1D524860C2BC71C3AA3DC385387B4ECE93E2959A47CEA3C2BC5736C2B2E295A6E29693583C7A74E288A9E2889E67E2959BE281BF70E289A4C3A7C2A0E289A1E29498C2BA00C3B97DC3AF655F30E295A7E295A835C2BCC3AD58C3891CE2889AE294B42CE289A4C3A801E29498E295A7E29596E2959C61C3A07248E2949C00E289A5C39FC3ACC3A9E295952EC3AE637208E295A009E29692C3872C476CC3A2C2A35B49C3AC3723E29593E2948CC3B3E295A43F531EE2968814E29690E29599E29598E2889AC39612C3B4C3B44B2E3D53C3AF00C3BBE295A6CEA9E28CA0E295A65F7EE289A1C3B777E2959BE289A4E28CA0E295A466E29482E2889E6344C2BA0103C3BA6DC3BF1460473430C2B11737E28C903243267428C2BB260A220679297AC3890F1C623AE288A9E29482E2889EC39178336C567FE2889EC2BC581CC2AB035FE2959C35100B5F7E11E2959BC3B9C391C2A073173E10E289A1C38923C391C38574C3AEE294801CC389C385E296927933E2949471E29590C3A8E29594CF80C3BC20C385E2889E487BCEA663E2959E1870E29593784C446F09E294800205E2959F59E295A9CEB1E295A5E295ACC2AA252D57622D4D4CE2959B7AE295932BE29490E295A1E2959B28E296915AC2BBC3B9CEB4E294827BC2BD555559634038E29498C2BB4C7FE295A646C3A763C396170242E295ABC3B4C3ADC389C3960C5259C2BFC3B132CE98C3B1E295A9564C017232E295A5E29494E29680E28CA05268E295AB1C4B6AE2959D19E2959FE296902E3CCE9339C3B64B2EE295A308E29490C3B9E29598344D53E295AB4DE2959913C3A832C3B64EE29596E295A7E2969120E2949CE289A4E2949800C2B128E294824240C3A8026AE29595E29594C3A9E28CA15A0D2138E294807FE295A8E296A017E28CA0E28CA1C39CE295AAC2BC7A29E29480E294ACE295A269E295AC1DE29692C389C3A8C3ACC39FE28CA041C2AC3C1ECEB1C2BFE295A758E295A0CE985D750FC2B15526CEA3E2949C36C2BAC391C3890F6904E294BCE28988E29691C2ACC3AC58C38752C2A0C387E296805A2B6EC3876B6610E295A5C2BF672CE282A70ECE98E2889E78E2959BE289A4E295AAE29596C2A55341E295A87CE295ABE2948CC3A4CEA327C3A77CE2968451C385C39CC3A5C39CE2959121CEA9094207CEA6E295A75665232A3465E29494E2969331C3ADCF84E295A53EE29482E295A7E28C903127C2BDE289A53520E2959D0B574CCEA6E295A72968C3BACF842CC2A352C3AA456C0EC3BCC3AE58287B5C46C2AB6FC3A86B5FE295A94CCF8453C2B5E29590C3BF2AC3A27B2EE289A4E2889EE295997C2EE295A625C2B7E2968427226AC39CC3A5E2959A30C2B24CC2BF465B50017CE282A7C3895CC3BF655608E2959ACE93C3B16CC3A1C2AA1700E289A10500E2889E0E330BC2A156E296936151C3B1C3BBE29596037BC2B52A72E2959C22E28C90E289A466E29595E2959AC39672362F1B6BC2A10B23E29595E28C90E288A952CF84C2B1E29691E295A14BC3AF39E2968C22C385C2A539E294BC1559C3BF2A6FC3A504623134E2959FE2959E6270E289881D2FC69203C2AB641624705CCF8052CF80E2889A180BE29692E295A8CE93E29590C3BF2AC385C3AACEB41A2F6D444E09E2889908E29592C2A0CEA9E289A4E29693E29480CF83CE98CE98CEA9E296A0E294BCE294BC7AE2948258C3B61C746208E29498CEA61A217DE29480C3A5E294980861C3BB79E294BCC38734C3A47BC3BA6AE295A43F093060E295ACE2959FE2959B4F3D57E2959BC385E28C9032C2A56BCEA913C2A2E2959FC3A212E295A87FE295A0C2B13976E29690C3AEE2959818E29684C385C39FE2959C4F75E2959CE295ACCF83E295950A1DC2A5E296A0E29592C3B3E296843C78E2969179E2889AE29594C3B4E289A447CEB4E28CA1C3B32F0BC3BBE295945AC2B5E29480C3A4E294A4C2A046C3A5CF847331C3ACE29590C2A31A53E288A9C2BF06C3874FC3AF127F02085BE294A47A190C1674C2BBE29599C3A56E0C1153562CCF8026C3A1E29590C2A2C39F2A470BE29692CEB17B2574110B5FE2959E78C2ABE295964B13E29692CEB118750871C3BFE295AC43CEA331E2968811E2889E4543E2949C18C2AAE2959AC2A22125E2959F17E28899E289A56D3F3AE295AC1BC692C3B7C3A01EC2A3E295A1E294821569E294BCE28CA048E289A47D68E29594716D676CC2B5E28899E28C902068E29684E295A156C3B32EC391772D1AE289A511C2BFC2A0E296A0CEB40562E295A1C2BFE295A9C3B4E29592C2AC5A75C3BFE295A8E29688C3A968E29494C3AAE2969129C3BC16C3A223E2959FC3A418E295A9C2BC10C389CEA9E2889E77CEB4CEA9E2889E773FE29498E29592E294A467420F7CE295A4E295A8E289887025CF83E295A3C3A8C39FC2A5C3B6422C72362B3D3934CE9378686CE2959D1AC2B749C3B74FE295A97327764C47C2B5E2889AC3AAC2BB770A72C2AA52E289A5E295A32E17C2BDE2959CE29598E295984DE29482C2BD774DE2968CC3BF19E29498390BC3B36BE295915D1BC3B372E28CA0C391C39CE2959F04E2889AE28988C3B706E28988E29592E29490E29597E29591E28899E2959DC2ACE295A9C2A17943E29693E294807C74CF803DCEB530C2A5E295A7C2A537033CE28CA0C3ABC3A6E295902BC3B2C2BC58046EE282A77EE295AC012955C2AA73E295942C5AE2959677C3A0E29688E288A91278E289A17D70E2889AE2959FCF83390DE29690C3AEC389C3A2C3AD2F6221E294BC6322CF8345C2A53AE29680C3A7E288A93C7035E2959E53433EE2959EC386CF80CEB4E2948048C396CE98C2A3C3B4415162C2AB2A212CC3BA221FE296A0C2B7C3B9252E4E4E1667C2A2E2959062535545C39FC2B0C3867303E295904D19E29693C3A5C3A1C2B0C3BAE29596E282A7677205CEB4E29680E2968CC2A07B65C38714C3AAC3917D764AC3AC3F0A2D1C5C391A7A6739CF80C3B9E29598C3BFE295ACC385E295A459C3B4726C44E2889EC3AE7AC396E288A9CF80C2B0E29690E2889A5C72C3965F2917CF83E289A5C2BC2CE282A73C7CE2959579E294A43E591CC3A9E2959EE295A35EE29480C3ADE29598E295970759430649C3A5CEA6C2B56EC38720C3B7E2968CC3B2E294ACCE93E2959E30E2959F2BE2959E0E24E2889EE295A1C3B3E29498C3AB4DC2AAE2959EC2A2112A2767E294BC32C3851DC3B9CE98C2A3C3B4C3A0E295A925C2AA0304CEA3E29595E28CA06DC3AE2C5AE29494CEB1E2889AE289A1E28CA1C3A5C3ACE29594C2A2C39FE289A57D6DE29480E294AC25C2AA23E289A47DE29684E29592E29680E294BC08E28CA0C3A63717CEA3436BC2A3C2BAE295A0E28988E294B4E29590C3A1C3BFC3A60F49C2B20FC2A31FC3AA0542C3A0E296915C54C2BDE2959CC2AC0D631121E29691E289A47FE28CA01925E2949813CEB150C3A879360BE295A4E29684E295A231E2948259E294BCC384CE9808C3A6030A72C2B5C3B6156BE295A0E2889E62C2ABC3A723CE9832E295A1C2BC5752E288A9E289A554E28CA1E29593CEB12EC3A9C396E29590C3BCE295AA3A67CEA323C3B95C626E594D43E28CA1CF83CF83CEB5C3877E1CE2889E25C2AB0141E294946746E295A70609E2948254736C1422E2959800E289A159E295A630E2959F5EC385032BC2A2151AC2AA50C3A8C3AA05E2959F4B10C3B47F2415E29480E294ACC3B931E282A70CCEB44D68162A1FE2969010C3ABE295AA1000E2959CC2BC5731C2B03E42C3891C60CEA62F196321191BC3BC11E28CA1E282A70AE289A511C3B4E288A943E294ACCF802EE2968CC2BBC3AD7A4DC2A5E295AB45C38677C3916FC2A1C385153BC3B155C3B912C692C3AA3AE295A7C3A7C2A3E296A0C3AAE29596C3A277E295A6C2AC587CE2889AE29688C385E295A7E296A0C39F1FE2959CE295960100E29684E2959912E2948C623CC2B7100FE295ACE29490E294986BE2949428E294824440C3A8122F09CEB11901E2959D0B00C2BBC2B2277E0A7C1F6366C3AD4AC39FC2B7CE93C2A310C3AF31E28CA11EE29597E29690E29598E295ABE29684C3B6E296934269201638C3BA7730C2B5E2959DE294AC09E295ACE295AB314BE2959BE289A53ECEB47120C39CE282A7E296A074E28CA1E294825A55C2A25FC2A0E29592C2BB3EC2B2E289A4E29490E296A0E2959247C2A2E29590351F0819C3AE0DE29599E295A7E294B46829CEB1C3A51DE2959CE295A708E29594C3AA08C3BAE295A01201290AE2968412E295A4E2889AC3AAC2B00E00E2968403C387E29592E289A1224EC2A15F7B6243700AC3AA45C3AE2C54CEB1E295A8E296A0C3ADE295903216622115C2BD23C3A058E29480C3AACE98E296917D3E46162D49E2959B0FE289A5C3BFE2968831E2969342C3ACE294BCE28988C3ADC2A1E28988E29692E2948002E29480C386C6926AE29490C3A5223BC2A3E295A120C3A071E295A8CE9373C39FCEA96F5BE2898843CEA9C3A8E29494E28988714BC2BCE29598595AC3AF1BCEA676290BC2BCCEB5C692C2BBE295AB6FE2959C79E295A2C2ACE295A9E289A539E29494E29593CF83CF83CEA606C2A377C2BBE2889967E2949CE294ACCF84C2BC3EE2959F4621E29494E295A2007CC3A500E288A900E294947377C385C38614623177E288A92437C2A1CEB114E2948C75E295A0311DE295A5C2B230763B524331C2BAC2AC77463E72E2959425C3B97914226A2E2F77E29597172F2FCEB4C3A5C2A3C3ADC2A33EC3B1C3BA6DC3AA20CEA63157E295ACE295A2E295A03306C3A4E29691E296901B1EC69203E29494C384C3B707C3B3CEB4C3BF2313E295997977C2ABCEB15411C3AFE29598E29693507137E2889A54E29482C3AFE29498CEA3E294A43FC38519E2959961E29599E2959FC391E295A7C3B6E2969368C3ABE289A47DC3A1E2949C5CC38664C2B706C2B53BE28C90C3AC7CC3A1C3861CC3AAE295A8C2ABC389C2B2782CC2AA73E295945803E29594E289A4E29594E295AAC3AAE294BCC3B6E2948252E295A1E29680C385503E1757C2B2C391E29688CEB1E2969356E294824FCEA9C3846B7662C2B71BE2959B5FC3BBE294BCCE93C39FC3A2E295997B5F7AE2889A62E2959C583CE2889A14C2B01E52E29688E295A12CC387C39F2B56391DC2BBC3ADE295A0340BE29593E295A155E2948CC39F03E294B4C387E295A17F0EE28988E2969353E2959A4225C3914F6A08490A7A5340C2A0CF800CC3B9C38714E29680E294B4107D30C386C2A3E28C90C3846BE295933BC3B95C72CE98E29498C2B50860E295A35CC2A3E296A0E295A0E295A73C7CE2889A177EC39FCF8647C2BAC2A2CF83210604062C46E294A418227DC2A269373624E2959FC3BC0CC3B66AE2959E730E714F6D7E17E28899E29494E29688C2B11E627C1F73CF84E2959030E2959CC2BD3E5EE29593C3BF7C2812C3AECE98C39CE29498C2BC5C633A42E2948253E295A3E295ACC3A2E2959BE295A72DE295A7E2898821E29684E295ACE2959A4748E295932BCE986C5614E295AAE29490E29494C389C69222C385E2959F5CE294822069CEB4C2BBE29590E29599C39F3A3E53E29594E282A7157B1E6919C3A8C2AA0CC3A81275682307E29684353B55C2B2E2889ACF83170556CEB4E28CA17273C2A0E296A0E29594E29591C2ACC3A821C3B1C3A9C2A2E28CA16ACEA6E295A33EE295A3CEB1C2B0E29498E2889E4B711CE295901C423EC3B1E2959DC3A830C3A9C2A3E295AA7D37C2BAC3BFC384E28C9066E29482C39CE29691E289A4C3A428C3AD7520E295A17EC2A312C385476AC2B2730C7A1FC2A2E2959934E2968058E295946BE295A27C6BC39CC3A5C39CE295916E1AC3B35EC2AA73C3B4C3BC51C387391F7F17C2B1C3A1237F71C2A5E295A94C1110E2948C1B5778C3BF184004C387E2959CE2959A071D686906C2B03E4CC3A7C38763402CE2959EC3AACE98E296912116127A4BE2959EC3A5E295AA3E77413E40480EE295AB5BC2ACC3A47CE295AAE2959D64C3AAC3847328C389693D59E2959B0FC3B97752322BC3BBE288A91AC39FE2948CC2ABE295986232C3A50EE2959112311AE28C90210D53CF84E2889A0025E295A3E29692C2B5E295A404C3BFE295ACE295A36B374E08E295A3CE98C3963B7445C384E29690E29598355DC3B4C3B10F7CC3BCE29494E295A007E295A577E295A10A0CE2949067C2BBE294AC40C3966D0C08E29690E295A24C5BC2A001E295A64BCEB13A4F622128CEB131C2BA63231653C3A8CE98C3BFC3A91CCE9818C3AC63E289A12AC2AA10C692C391E295A4C3BB14E295A8E295AB63E282A73763E295A64BC2A164C3A422C3B9E28C904D59C3B3C2AAC3ADC2AA69C2BF217E76C3A6CEB5C3A4E2949075C2ABE2889E3C5FC387762EC39FC396C3B2C39622205803E294946700E289A15300E29595C3B13DE29591C3BC56CEA343C3A237CF8018100B5BE2889A43E28CA1CEB53E2FE294BCE28988C39F2BC3A7E295990712C3AA0578CEA6CF801A230101E289A52CE2959A43C692E2959FE295A03BCEB4C3B26676E296926E3DE29692E288993E34E28CA171455040E295A35DE2959B07E29688581ECEB4E29692C396E295AC41E295A3C2B2E2959FE2959EE28988212DE295ABE295A11EC3ABE2959146403E44633F62211F34787E2AE295A962E295A3E294982CE295A7E295ACE295A7E295ABC2A2455516E295A86FC3A4E28CA01113767F37E294BCC3A274C692E294B4E295ACE294ACE296885DC387C385E29690C3A8C6922902C3A95B007C06C387E288A900CEB173E289A44219E295A6C2BD18C2A2432064E29482C6923B623165CEB5037517C3A66C7BC3BAE296901FE282A72AE29680C3A7C2AA3E63C3B3C2BBC3B4E294982B20C3B95C72C3967F592CE295A9E29590C3A207C2A2E29596C6923E397FE294A45E2F0EE29480C3A9E295A2C3A0E295A5C3B6E295A3C2AC1DC2A0E295A4E2959FC3AA5EE29494706C492E305304C3B1C2AB710B00E288A91725E2959C0308E295A7E2968CC3A60FE2959926C3B232E289A4784AE2959D1934C386E296901C3912E281BF1BC2AAE288A9E2889A64E294BCE29693E295A14DC3A2CE98E29684CF83E289A1E295A96CC3A773E2889EC3A72BE294ACCEA3C3AF7CE29480421A38CF80C2AAC3914FE295A0C2BC58E2948CE2959A472CC3A56ACF86E295AAC38654793AC3B1CEA3C3B1E295A9E289883176E2889E1032E2889AE29680E295962D19E2889970C2AB67C2A071C3BC582DC3B9E295926675E296933829C2BBE2969360C3A6E2949CC3ADE2949C34C3AD6CE28C907A33CEA9315066C3ABC38754677FC3BAC2ABE295ACE296A0E2959E4F7675E289A40E003D37273A08E294985852C3B6C3BAE295A371C3A7E295983727C3B10566C2ACE295A754E296883125E296900C0D7DC384352BE29593E296844B1EC2A25C72C3A62C44E295A8E2959875E29482C2BDCEB4C2AAC2AAC3A57C5EE294802134C3B1E295A7E295AAE2949401C2BD3517C3BF190242E28CA0E288A9E2889E0DC3B77F1F0000C39CC3A53E03E29494E2968C1D2BC3961DE289A4C39F6A6DE295977AE296A053CF83E29590C389C3893355E2959EC2B018C3AA05C3A757C3A46BE29598E294BC405C06CEA3C3AB30C2A5E2959730E29595E295A70121C3AAC396C3916B2AE2969209E295A2E28CA16E6A7C1FC2ABC3A5C3A4366FE2959A5872E2959EC39C47C2AAC2B0E2959BE28C9020682E6BE29490E2889A49E296846DE295904E4C7FC2BAE2959CC3B7C2B56F65C3ABC3AFE29592C2AC3AE2968CC2BC17275555E2948C36E2948C6EE2889EE2959E100BE29591E2959038E29594E294BC5066C3A5C3876CE289883F5765E296922CC3A85B6977C3BA7832CF84101BC3A6E2948259C39129473AC2BDE29498C3B6C396E29599C2BAC3A41068CEA633252EC3AD6328C396E288A923E296A0C39CC3BB4B1E677E29C2BD72797676E289A5E28CA0C39FC3A24D3B06E29480CEA3C39F42C3AF2764281B563642C3BF65560808CE937F70E29688E295912AE2969100C3A1CE933A0F34CF86C3BA3FE289A160E2948CE2959FE295AC42E294BC6555E295A259E289881A484B0CE296900C2DE2959E7809C2AA73E296917C2EC3BC5870E2948262C3A032C2A5E2889AE2959ACF80C3B7E29590C39FCF8058E2959A470AE2959D19C2A37EC3AFE29590CF8021C3BCE294A4E29595E2889EC3ACE29692E288993EC3B10FC2B5E28C90E289A47DE295A04D4EC2BC71E295A8C3BB0BC3BBC2B25003E28899E29691CF8635E28C90231F5A6BC3A0E29590C3BFCE981FC3AF6BE295A5C385E296934044C3A4CF83C2AC5AC3B9CF83C2A118C3893EE295ACC3853E04C3B16D600C71C3A464CF80C3A25966E295ACC3A44EC3AE36C384C39FCF83C3B6E295A8272304E289A4C3B6C3B4E2889908C2AAE289A40EC384C3ADE295A7C3B6784C52C69223735C6772E2959425C3B9C3AD232111351644C3A50C566D617871C3A7E295A5E289A402CEA30C58E2959E52E295907CC2AB1DC2B040C3B7C3A57D1FE289A5710CE2959D19C3867AC2BA20473A5627C3B60FC3A4C3A2C3894833C2AA3363346230C2A5C2BD231FC2A3C3B76BE289A166C3A41C0CE295A1100B086CE29490CEB4C3BCE2898858E29693154D3D56430AE294B4C3B4CEA9C2BA58E289A5E2959FC2B5E2889AC3893420C3B2E2969346E28CA1C39143C385C3A57C68E289A4C3ADE295AAE295ABE295A2E29688CF843E0422C3A1E2968CC2AB21E295A6E295A6E295995D486D5E1E17042467E2949CE2948CC3B9792320045B007817007E0000C2BB6EC2BB2353E28CA14EC384E29594E28988C3A6C3A91CE28C902275CF8323250F684A311A63C3AC25461873E28C9071C2A52AE2959979C2B5E2889AE2959AE2959A472EE295993E1B1DC2B1E28899C3B9C3875E5FCEB50EC2B11F68E29691E295977C3712C3B421E295A5E29596411FC2B2E295A65FE295A07BE282A74143005FE29494150AE29693CF8359CEB407CF80E294A4C2B23334CF8408E295A05702E29688E29680CF84E2959867C39CE295A62639E2959AE29598E29688C3BBCF86081DCEB41B534EE29680E29482E2968CCF8450481FC3B41CCEA6E2959A19E29591266A4B2BE296901DE29482C3ADC2B768C3A1C2A17DC2B7C3A7E295A933C3AD42E295ABC2ABC3911BC2BB19E295A4E29592E295A7E28CA1E2968034CEA927E295A7C2B1007043CF80E2959A617FE289A1190770E295A8E29688E295A25FE295A3E294A47F68C2A1C2B1E295A4E29688C391C69238077114C3B64BE295A035E295AB75C2A343CF8371E2959FC3A72B27E294A41FE295A36BC2AAE288A97810736D77C3B2C2BBC2A1E29596C2BDE296A02050C3A7E295A6E2948CE2959F3432E2948C6B727BE2959C36C2A1CF8029CE98E295A75E335CE2959EC3A9C3A1C2BCC3A8E294BCE29596E2959BE28899C2B01E006C00001D6D31E294A4181AE295A234E2959CE295A31CC3AF01E296931FE289A10A001640E2889AE295A2C3B3C385C3A6C2A202E295A672C3840DC396C2AAC2A319E289A47D24CF8345C2A2526C0446E282A7C385E2959FE2889EC2A1E295A73155E295A3CEA3C386E295A6C3AC7DE296935A55C2A25FC2A0E295A1C2BBE2959CC2B2C2BDE29490E289A5E2959247CEB4E28CA1C3B3C3A4E296A06C5843C3BB7DE2889A6F45CF841CCF86CEA9413ACEA932CEB4181004C2BC01CEB17300C2B014E29691C3ACC38764E296900C39E2959CE2959FE295986768C39141C389E295A7C2ABE29592E289884C686CC3AAC2A14FC391E288993E3CCF83E29498CEB509C2BDE2959E7CE29480CEA3E29590C389C3AEC3ACC3AA19E29599C3A63AE2959939E289883D4E35C2B54332E2959E42637CC3B1C2B731E28CA1C3BF0F6DE2959CE2959FE295A5C692E2948256C3A5C3AA1D70204DC386E288A9E2949C7FE295ACC3B9052E2E1E6C364FE282A7C2A3C692E281BFCF80E288A97DE281BFCE93CF83E295A62D27C2A565E29680E295A10B00E289A4E295920757C3A2CF8028CF8042C2B5C384C3876CC3BCCEB13D00C2B03E007C71E28CA1E294ACC3A6E2949C24E282A713E295A672C3BB334DE2959C25CEA9C39109E295A2E2949CCF843DE289A47D073574E294BCE29480CEA3E29494C3A4CF84E29494E29692CEA6C2A34BC3BFC3ADC389C3AFE295A3C2A228C385E2959F4D5734C3B9C2BB77E29597C3B92FE2959675E2959950C6922768C3AA6CE29691001EE294AC51C387C2A5E2959DE289A1CEA6E295A6E2959D1110E294801A083E07C3A94F01C39FC386C3893A5BE29599E29692E289A566E295A04D1FE295ACE294B423643C5C11C3AF50E2959BC385C3ADC2B7C3B1C2B0436CC692E2889932C2A50FE29594E2959968C38576562CCE98C2B76C73782CE2959BC38558E2959AC3A7CEB4E2948C32C3BBE281BFE28C902116CEB1E28C9017401C3EC384E29598794462CE986F1B2B25E2959BC385E296A003C386C3A9E296A01A6321C2A255C2BD2CE29692E29591E29595E295AAC2A33E797276E2969358C3B636CEA3E294B414C2BC05E295A0E29490C3ADE2959F4B7C3465CEB559E2969110E295A8E2959A5829E29691CEB14FE29592E295A6E28C90C396C3A02A33C2BBE2959FC2A14F521E29E295A9C3AFE29498E282A731E295A4E2959FE295AA311D53E29688E2959770CE93E289A573E2959425C3B9C3ABE282A707010860E295A3C2BC365FE28899E295A9C3A2C2BAE29490C2B00B4F1F6D36E295A6430CE2959AC389C2B16162C2A32CC387E295A703327455CEB468E295A6C2BC11104000022810E28C900400E2959D0240E2969167E2959A336F46C39C312FE2969219E295996DE296921373CF84E2889A683F2EE294B4E28988C39F723044C385C3B748E294BC58C3A41C5CE295A1625162E2959FE294A4C38752C2A0E29480E289A5C3AA4BC3ACE288A954110B08C3B6C3B43AC2BBE295A6E29598C2B5C3A6E288A95E1B50E295ABC2BF4CCF84E2948C7C1F12E289A5C2BBE29593E295A0C3B3E29480E294BCCE986679E288A9CE9362E2959C6620207D0609E2949470E2968447E2968073E295A3E28CA0C3B6E295A3C2BAC39F45042801C3A1C3B17EE295A6E2949C73CF80482136644CE29690C3AE29211673C3AE69C39633E2968047C3AE71E295907C1FCE98C3846B2EE295A31F73E2959445E28CA160480D5153E295ABE2959810C3A6CEB44BE295926644CF841821C3B65F6073C396770C08514D00C69201CEB14F11607B33E28CA0E2959B3104C2AA4340C2BC6C563E72C3A5E2948C26C396C3A04A03E29692E29691E29594C3A666C3AE372124E2959B1EE28899084845C3AEC2BC53CEA94CCF84C2ABCF86C3A6C3A8E2969270E294980FE2959EC38445C3AB1DE2959912E295915FC384C2A545484AE296A05C10C3AFC3BF1E7E49E295A3E29692CF84E295A4E295A81E20CF8338E295A5420EE295956B76C2ACC2B7E2959FCE981F02C3A1C2AAC3ADC2AA690EC3B747E295A804CF845CE29482CEA9E2889A6EE295ACE282A700734740082EC3BCCEB15D04C2B0E296A0E282A7C389E295A8E2969301E29480E295A9E2959513E2889A5E7A0A59C389E289A1C3AAE28CA0E29593E2959847E2968C6CE288A97DC3A6C386E295936F127D39C391C3AE7AE2959F3A5E29E295967F2AC2B2C3BFE295A755E295A3C3B17F306C1AC2ACCEB4C39C1A30C2A220C2A345E2949816C2A37E38631706E2949CCF83CEA6CF8040C2B51D03E295A540C3A200C6924301C69222E294AC2500CEB5C2B21B63C2B15D48E29594C3A6C2B5E29590C3896817474E2CE29480E294AC476F0DC385E2959D6B6C08043C2F21E295A7C3A0E288A9C3A26B3C4AE289A57D0CC3ACE295ABC3BF7C1FE295A277604AE2959A47CEA9E29692006059532150E288A950236F2A7C2CE28C9067C391C39CCEA93CCE931A65C3A9E282A7C2B2E2959B35E2889AE29494C3876E5DE294827DE2959F4209E295A351C3A67FE2889AE2889A455954C2A2E29590E289A5E29690C2B2E2889A27CEB46A5116C3BB45C2A37A0C0C6E50E295A3291604C39675E295ACE2959BE295A01A01410024C387055CC2B214E29596C38538E2959FC3877C482DC389C2AB0B452CE2959C41486F4840E288A904E2969016C3B2C3AC3646C2B263E289A57DC387CE933B3F552EC3ADE28C90E29590E2968839E2959BE295A7E295A3CEA332CF83C3B377065F54E29592CE98C3A207C2A2E29596C6923E3D7F63E294825E1670370B56C69211E295A4C2B2CE98E295A6C2ABE2948CE2898877321824E295A3E29494E295A01110E29591C39C58C69203E294946700E296913DC3BFC3BB68E295A1CEA953412CC2AAE295A9C2A261C2BD772CE29480420AE296926AE28988E295A7184805E2959F0814403ECEB5E2968423E29690C2A2E28CA0C2BC71E295A8CE932FC3A6CEB1E29590CEB11C34E2959FC3BB3355CEA303C3A4CF830EE29592C3B412E295993928E295965FC3A9E295A7640A7C1F53C2A547C2ABC2B2C2ABE29480E28988211AE2889A110BE28899E295A8C38443E296887FC692C3B70848C3BCE295927259C2A5C2ABE295ABE295A6C3B4E296932A7060E2959934192126E2949CC3B1E295A7E2959A70313AC384E295AC38C396350252C2A3E296A0E295905D71C2B7377F0C08C2A01FE2889E6340E295A869E2959D6367E295A209796E0AE282A7C2A063CEA3E2889A48E2968C5B34C3B7E2948C18C2A237630A7327231F79C2BBE295AC257C6DE295A625C3B9E2959B1945E29590C2A0E295A7E29690C2A23549C38624CE9861C692E295917B5C79545566555777E28CA131E295AB02C3AFE2968CC2A5592E16CEB1CEB50E29E2959DC3A414E289A5C2BBE289A1010F102145E29494C3A71501E2959AC391C387423CC2BC4070C2A1C387E294900822CEA35FE29494760F66E29591E29591C2BACF84E294AC2CE29591E29591CEB4E2959A0C573E44446554C3B1E29597E29688C3916A6EC2B56E265BE29688C3B419C3A6CEA96AC3A7C2BDC396CEA967C2AC5FE29597CF83E29688CF866DE29597CF83C3BB7D3CE289A4C3ADC2BD59E2959FE29490C2BDC3A1E2959FE295A538C3AB364904C3B17DE288993FE288A91CC389E29590C2A073C3AA00E281BF16E29494E295905D44E2949435CEA9C3A60262C3A66B152A44E295937BCEA9E2959AC3A70BC692C3A5453FC2BCC3BA6843E289A4CEA6C3B3C2BA2FE29680C3A744152AC2A2C2B10B651EC3B9C386C3B47BE295ACC3A7E28CA07E1B2B27606CC3B1415B4EC2AC393E535B47367AC2BAE295A9E289883126E289A521E294BCE28988E295A42FE29596C2ACC2ACE294BC7255C692C2A137C3AF7573C3A7C387E2959556C2BD3255E29597CEA9434A78E29494C3A6C396C2A5E295963D4904C3B1633554E288A9C39CCEA3E29598C2B040340D6EE2959AE289A472E295A9CE98E2959A4D4E0A6F490EE295A7C2BAE29480C2B53C56C2AB0AE29590600D4E75E289882976C2AAE294A4E295A5526D4D532D2F2FE29593E295A7C2ABC2BBE295AC1F6F36C3AF430EC3AAC3AFC3BAC39F4A4238C3A4C3A5C3B62A58C3B4E29688020EE2959AE2959F5D44C3A102C3ADC3B37D54C38779E29596E295AAC3AA0E21C3A9E295AAE29592C2A342CF83C3B152C3A02AC3BBE296902639C3B12CCF8478E281BF24C2B0404CE295A776C3A6E295ABC2BAC692C3AD1FE296904CCF8443E295A7E29596195338C3B75B22C3A7E294ACC2B540C3B91AC3A2792EE295A309C2AAC3A273C2AC7C1FE28C90210DE28C90E29594C396C2B73AE295A5CE93E2889ACEB1403B3E243A16E29599E295A3CF86E29690153A46E29692C2AC6ACF86E294827E0FC2BCC3A2754D54C3A2E29593C2BD66E294823F03E29693C3A0C387C3AD43C3AFC2A11352C386E295A84F5A35C3AF5E120840C2B276CEB53BC3B941E295A9E295A452C3ABE288A969E2959AE295A4C2BCE282A7C3B22BE289A51113E29591E295967DC2AB34733A477969C2B2E2959F3867CEA323C2B5E2948C2AC2A120C2BCE28C90E29498C387C386E289A431C385791EE29490E295A12D6F5FE2959CE29591E29498625F056BE294946F1BE289A5CEA9E2889AC2AB5FE295A4E2949421C2BA3822737240C3BF69E295A6C3A1C2BBE288996D1CC3A9C3AA40E294A4E2889AC3AB2DE2959D6E32E281BFE2969024C2BACEB47B3672C2B7103F6DE2959CE2889AE282A7E2959F3DE29680CEB4C3AF6EC389CF80E289A47CCEA3747DE295ABE295A15FE295A27218C2B2052FC3A5E2959BE2959F0363E288A923C2BBE295A74632C3AEE281BF46E295A07735CE93C385CEB4E29480E2949005034F3FE295967DE2959B4DE294904CE288A9001CE2959FE295974B2F0A1C37177D4CC2B2C3B7C3B203E2949CC2B0E295AAE28CA00BC3BBE29680E28988E2968C0B5DE295AB45E2959A01E2959AE2959FE2959EE295A3E295A933C2A14F5F39E295A2CEB44F5A0E79E295A971C3B22FE295A1C3844C32C3B1E295AB1145C3864F1E6BE295A6E2959E4F1DE29693E29498C3AD7DC389E295A215E29691E294A40F526BE294A4E2889AE288A969E29680765CCEA63B3EC3891FE281BFCEB1E2959C73001B00E29480E29684CEB440E295AA5CE2949C42E295A7774D07E29692CE93C387E295A020E2959A7503CEB13908C6920378E29599E294900652E2959A0DE295A4C3AEC3B6E29590E28C900A55C2ABE29592E294BCC2B56EC2A272E295A9E28899E295A8C2BF6655026379E2959C5F25CF84C3BAE294A4E295A5E294ACC2A3E282A7111EE29594C3AEE29592C2AC39E2889AE294823FC2B2E296A0C3A77FE288A9C385E29490E289A478E2948259E29598CEA6E295AC05E2969271420E67CE986AE29494E2949CCEA97242660FE2898835E289A458CE937403CEB139013F01CF801CE29480E295A6E2889A6BC3A1E289A166E2959A3C6F4C3952C2B2E29693C3B2733CE288A921E289885A35CF831DE2959BCEB5C2A2E289A411E29597C3A8C3B9C2BB1CC3ACE2968408E296881CC3B6C2A319E2968473633AC3B9C2AB523576C2ABC3A554CEB5C386E2959838E294BCC3861F2B5765E2889EC2B11178E2959E64C3BFE295AC23C2B17D58CEA95F57E294A4787C7D76C2B1C2B1E2959FC38536C2A0E296A0C2BB7FC2B1E289A5CF83E295A61B5335C2BCCF80C2A0C39CC2B03EC3A550C3B653E295A3E294826DE294824040C3AA7143C3AEE295A7E294B4C2B00908E296800C2FE29593C3ADC3B922C2BA7BCEB1C3910A555E7224CF83E29590E29590C2AA5164C396E28C90E29498C3A431E2959F2937C2A50B62515A69C39101E295A0685FE29490E29498E29690E2959B7C79E294826D5BE295A2E2959C77E29498CF837074E29692C3AD77CF83C387E28CA0392EE294826DE294824040086801E296A01AC3A4E2968002E28CA0C3A5E28988CEB4C3BC0A6F06E295A5423EE294A4C2BD5949E295906BE295AB7742C38902C3A53FC386CEB111C2A5C3A8C3847CC2B0E289A566E29595E2959AC3A662E29494C3A5E2949C5AC38662701F1AC3B954C2B03E60E29498E29490E28C9032C2A56B201629E295A7736E3C22E29692E28CA077CF8647E29494330AE29680C3A7C2ACE29684E29591C2AAC2B5C39FC3A2E28CA1C2B5E2959CE289882EE295ABC3AFC2AA3E36C2B52EE2959D207D55C2ABE2959AE294ACC2BF0FE29594C2A545C2A24B0E0840C2BFE2949454C3A26D5779C2AB6CE2948045C384C3AEC2A3090726C3BF23E294907C29E29594C3A6E295A5C3AD2016C391E288A9C391C3B2565A7EE2889AE29680CEB53FE295A66573C3B7C2A5E288A95C3FE2889AE295A40FC6923D3E3F5F1E72407C0CE295A550C3867905E29597C2BCC2B75956E2959E6A66E29693CE93760BC3BC40E29684192F28E2959D19CF80E295A9C3BCE29691C2A3C3AD2A5421E289A4E295A91D01C384C3ADE29591E288A9C2AA31C3AFE294941F62C3A8C386E28C90231FE2948C7C20C2AB07E2959354733A4C36225664E2968C75E29684C3B11CC3A558390163C2B1C2BF68337DC2BAC3847C68CEB43DC3BBE296A00A7C22C3A0E288A943792D31E29494C3A4C2ACC2AAE294BCE294BCE294BCCEA9E289A5CEA9CEA96CE2948258E29598CEA3E28C90C3890DE2959151C3B3293DC2A12A4320C2B1E294ACC2AA56E295A3272739527C20E295A347E2948CC2BA56452BC2BAE28899E2959A35C2BA63CEA976E295A1E294A4CE98E295A2E294ACE2898851C2B563E281BF2EE295962DE295966DE295A66F5D3AE2959F0347E295ABE295A1C2A1E295A970C2ABC2AA62CEA6CEB55A33C3BAE2959B12E294943B3674E2969067C387C389E29594C3A21EC2B77DE295A02A54CEA3604062220D12723419CF80E2889AE2959BE288A9C3AFC3891C7FCEB5C3A8C389C389C3893C1B27C38402C3BA685AE2959A0759C2AB0FC3B41CC6927724664EC3A7C3AFE29690E296917CE282A76BE29490C3B10EC3B7E28C90E29684C3914FC3ACCE983C745C7DC396E2959BE295A1E28CA0192BC2BA44E295A9C2B11CE29597C2ACC3BB403FC3B3211FE29692E295A84C2DCEA3434C7F6E5B6EE296882DE29680E295A320C3B72F2F773814436CCF8443CEA330C2AA674CE295A2E295900901E28C9000E295980C103AE295A5E295A7C2B236C384C2A36AE2889A6B200D73442C52C2BB7A357615C2A118E289A4C39C1AE29599796CE2959CE2959FE295A21F73E29598E29597042C4B2B6D1AC3AC0EE296A01C73E295A6CF86766BCF837FE28CA0E2968CE294821BCE93C2A0C2BF2C1CC38652056BE289A5C3ACE28C9005E289A10DC387C2A004CEB1C3A50FCF83E29482E29482C2BF4235C3B153C2ACE2959D19E295A35517332124E2959FE29490C3B4CEA3E2889AE29691390C3B56E2959C12C39FE2889AE289A13950E29597C3AEC38554C38445E2959AE294B4E295A8C3B9E288A943C3B37AC3BBE2959078E2889AC3B7E295A737E296932EE2968C0F08E295A04BC3AAE2969026E296884223E295A671757072E29590E29590E2959A1541C3AFE295AAC38551C3A60F6D642245E288993B5B5E55E29598C2BC37C3AFE29482E295A6E295A6E295927AE295A454E295A2C3AA03756C0443C2A320266464E29593E295A4C3847920204C37607A0EE295A84F68CF84C3AAC38706CF843C27E2959BC385E28C90E295A931212DE295A3C3B77F522F56CEB1E2959DC2AA3007C3B6E295A4E295975C5AE29692C69231E29680CE98E295A54AC2A2CEB5E29690E295A158E29598675757671F3E7BC3B7E289A1C2B166E29482C2BCE295A85F056BE2959AC39638454368CEB1C2BC4DE282A70EE2959464E296883C10C3896D7503CEB173E29598CF864FC3BFCEA6C2A23B1F78E295A0E29684C3A710C3B121E289886A56E29692733A5CE28CA00EE28C90E29593641AE29688E2959A55E294A4E29598E288993E5CE2959F2766552804CEA67DC2B73CC692C2A3C3843E39C2AAE28CA1C3BB4A552508C3ACE29490C2BBE289A43A55CEA32317E2959B0F28E295944D1D41C3AF38E296A005E288991847E296A0E296A0CEB45545C3AFE29592C2ACE295A3E295AAC2A32DE295A7C39C4555E28CA1186AE294AC3001210D382918705CC3A516E289A16CC3B300E289A46042E29490C2B0E295AB5BE29591C2B0E295ABE2949066E294AC67E29595C3A7C38714CEA343464EC2ABC3AAE294BC54C3A910E29598E29490E294B4C391C2AC5F166329C3B2E295995150C38938CF8052C389C38579E295A2C3A9E29684C3B6C2B5C3B75A32C3BFE29688C3BB6FE29596E2968876E295A66DE295A8C2A557CEA93857C692C2B5C3A50CC3A614E295AC1611C3963402E294AC2FC2A001C3BFC3BCCEA9E2889EE29680E2889EC2BAC39CC2A023016FC2B02E090471C2BD50C391E295A9C2A261C386C3B4321FE295A9C3BFE295A33A5D7F2F5DE28CA12A17E2959B0F5B673425E2959B0FE295993B10C3BA0AC3B96BC2A04AE295A1221D79E28C9031C2AAE2949C627D6AE295A0732A393829C2A1E29599637BC3A1C3A4CEB1C2BF221F26E29688C2A32AC692C3AA22E29693E294AC4045542F16E28CA166E2959C5AC2BCCEA9E295971C10C3A57FCE93E2968C50CEB547E295A376E29592E295A426C3ACC3873018203E5E25E28CA13011C3ADCEA3E295A6C2BAE28CA1E29596C3B12027366251C2B03EE295A5C3B227C2B17C4EE294A41F52C3AA456A7B08652273E295A9E288A94169C391C3B2C3BB1312E295922CCEA9E29592C3A2E295A6E28CA1E29482CEB4CEB4E289A4E2959FC2A2E28CA122E294BC14E29691C3A90000200049444154C3A409C2B270C3BBCEB52321E2889E4B50C6927DC2A23402526DE296A0CEA95EC3BF6157C3A2C3B9E289885C20CEB17D2D2C7A77C3AC6954C3ADC3A9C39FE289A4C3B6793324E28CA0C3A5C3B3E29690E2959BC3AECEA626390AE295A0CEA3E29593511DE295AAE295944BC386E288A9E2949C752DE294BCC2B5E2889AC389C38613C386E2959931564EE294B454CEA3CF84C3A93448233B4874E282A72750C3ACE295A9CE98E288A9C3A0E288993EC2B02834C2ACE295A9E289A461E295A62D25315669C2B5C3B6E289A1E2959BCEA62EE295923551C3AC6AE2959C6EE295AC4EC3BFE295A8C3A726E2959C4F39E29693C2B0E2968CE295A87767E2959407323726740250E296802DC69218E28988E295973510C3AFE295A821C389C3AA6ACEA3C3A85814CEA343265AC3B22BE29680C3A7C3B6C2A3E29692E289A5E2959DE294A4E28899C3A072433EC2B5E2969165C3B2565A695AC3AC192622C389C3ADC2A3C3AC2E07C3BACEA9E28899C384CE98E29597E29494E295A010C386665E0BC3AC5B105E1CC2B5C3B9C2B04005CE935BC3A0C2ACE288A9403075E29690C3AEE29692E28CA036E29594C3A666C3AEE288A9CF8003313D5BC3A93FC3A4C3A7CF8365E2949CE2898821513DE295A6666E63221631C2B040C3B1CF83E295AA38C3AD39E289A434C3AEC3AC3468E295A6E2959405C3ADE295A8C3861B5B7FCEB5390BC2B550E28CA1E295A9E294A4CEB552E29590E29590E295A8C2ABC2AAE28CA17678CE98C2A13C2630336FE29596E295A0C3BB071118C2A31132382A64E295AAC3A467554D616E08E2959A1B003F05E289A11F00E2959DE295A273767DC3BA53E29692C3BAC39153CEB1E2959060457D62E289883F177912C3A7C2BD54E28CA0C3AEC2B10E4EE28C90E294AC5D6AE289A4C3B2E295A95AE294B444CF8438E295A2C2A128C2A1E294A40CE2969079267EE28CA1C2B7C2AAE294BC3E07CEA3E295AC41197C21E2889AC2A30D0C7C0FC3BBE29680290EE2959A141B032D037F03CEB13FCEB5C2A3C3A663524B3678C39FC2BA4512C3A53EE29596C3B2E29599E295960E4FCF83E28CA039E295A47DE295A723E295A6E28CA16D2BE2959F576FC3B41CC2A202112EC2B7704FE289A1C3BC1DCEA3747DC3852DE295AB42E295ABE29680E295AA7CC3850D72C385E282A7E295A77C775FC2B0C2B0E295ACE289A1C39F7FE29680E2889A7CCEA6E288997D63E2959AC3A5E2889908CF86E29596692DE29498CEA661E295A5E295AB46C6922E3943C2B7E29494E294B4060CCE9863E295992FE29599E294B434540E7BE2948C3AC3AB4D3F447EC692E29690C2AB7B397BE2948C68C3B9E28CA1C2BA21476A3EC3B1CEA3E29693CF84E29690C3B4C3A8E296A0E295A2C2B210CEB5E295A7C3A1E295900ECF8643E29680E2969015E2948C07E295ABE2959C4C627EC3AD30E2959FE288A9CEA95FE2959255E289A4E2959CE288A93E3E03E296910640E295A046E295957CE2959AE289A1C2B0E29691C3B3E2968824C2A5160764222EE288A962C2A0C2BBCEA9C692CEB418E295A4E295A529200D53422C4A55E282A7CE98E28CA0C2A222C2BB0FE295A9782DE295A8E295A0E295AB59E29594E29692E2959AC2BD15C3A4C391E295A0E29482CEB123C3BFE296925AE29592673FE296A0E29482E288A93FE2889AC3BA3FC2B7C2B0E295951AC3BBCE987E78E29680E2968CE2959D63E296A0C3856367C3BAC3A91B62320BE2949C34C2BD1C10105A00E29680027801CEB1E295A27BC2B214E29690C3AE7E39E295A5391630E2959DE295A63672347375E2959A71E2959BC384E2959F51C3BF6F4324CF842334C3B945C3BAE29680E295A507E2949C31C2BD6BE29498E2959DE295A6520CCEB5E28C903354C2BAE295AC74E282A74AE28CA12C16C386136B1E725F4723E28CA063C3B6C2AC57E295A3E289A47D68E29590C2B1C2B256E295ABE29592CE93E29594C3B4C3AFE295A6E288A97ECF84C2B7E2889EE29482E295A77EE28CA1CEA9CF83C2BD1BE296886A582E68C3A74B2EE2959A6CE2948CC2BC101002E2968C10CEA667003E05E289A1E295A1E2968842C6920243791AE294822013CF8328E2959A475A51C2ACC2A3E295953152C2BDC3A8C3B2E2948CC2B0C3B1E281BFC2A3C3A958C3B6565A5AE295A23FE289A4E282A730C2B0E29590C2A2E29688E29688C3B92F6FE295A2E29684323B76E29690C2AA046F413C7AE2948CC2BC1010026D01E281BF16E29494C2BB01E2959DC39FC2B23AC3B3E294ACC2A261E29498C6923EC2A542C396E296904D075A691EC38510267413C3A2E2889954C3A60FC692E2959AE29693C3AB31E2968C652DE294B4C2B17BE28C9055E294BCC39C4B15C3B1E295A3E289A17DC3A446C2B5E295A1C3A6E29494E28C9032C2A56752C2B2CF86C2B01CC2BD56E28CA12A16E289A5C3A627E29680C3A7CF86E296805715E29592C3B917CEB4E29590C3B4E2959FCF84C2BDC2AAE28C905DC2BB3800C2B2E295944FC387C39625C2B2E28CA06F4A15C2BC19E28CA0E28899CEB53EE282A771E29591E2959FC2BC66C3A008E295A7334535C2AAC3A858C3B6486A6CE289883F2D1D52C2B5CE93C3AAE28CA1C3AEE28C90E295A777CE986769C391C3B2367CE29684592ECEB4E29482E288A97CCF84C2B7C3A21FC2B2CEA6E2949CE2959FCF84CF844B5B467413E289A561C3A278E295A0E29690783433CEB4E288A92119C2BF46271561C39FE29590E289A1C3AC22CEA6CEA6C3BAE29590C3A4CEB51255E28CA1C3ABE2959348E289A1C3A71C7F6CC3A27C40E288A9E28899E2959335CF837DC2B0406C0F74E2959B1171E289A5E2959807C3BB7242E29680E295A1E294ACE29599C3A1C2BD77CEA93C1D527C1305411BE295A11FC3B4473EE289A5C39FE2889AE296917AE2959FC3BF50E295ABE29592CE93E289A572E28CA1CEB1C2B1E28CA1E28899E2949862CE98E295A0C3AAE29690CF8478E295AA5CE295A6CEA9CEB4C2B06CE2948C1C11C3897AE288A978C3A6E281BFC3B3E282A72A47C387E295A7C2B53156E29490C2AA125448C3A6CE98C2A3135DC38514CE981D1D7A264DE2889E5DE282A7720CC2ACE295A04D69C391C3B276CEA3C3A7E294A4E29684E295A22DE29482CF801667C3AF7254CEA62EE2959C3B7B24C3B1C396E29498426B017C03E289A17F0270E29599C3A0C3BC744743C3A57EC69233E29599E28988406460E289A160CF83C3A8E281BF48C3ACC38574C2AB4E1F4242C3BBCF8060E295A56B48C2AA41E282A775CF8314576441C39CE294B41C1E72E2959E603A674B072236E29599E295A3E295A77CE288993AC3ADE2948C55C3A424E28CA14F0DE29692E295A8C3BB133A2FE296927233E294A4CEA3E2959EE295935F587E14CEA3E2949CE294A44E52473EE2959EE295987FE289A1E29498E2968432E29596E29688C3BBE295A32705C2A52D5E5653CE9339596C3EE294826BE289A442401837E295A0C2B029C387E2949006E289A1C3A926E294BCC3841CE289A5E294ACC385E28C90776AC2B7C3AEC2B2E29684E296926D5128E295A453E295A07E4CC3B2CE983CC3A775C39CC2A2E2969025074D6A13C2A5E295A961C3A1E294A4320F3BE29490C389E295A36DE295A3E2968C6EE29688C3BBC2A1C3A860E2968C632D06E2889EC389C3AE3E34E2948045E2959EC3B1E2948CE2959D10C389C3BBE2959600E296A00615C2B206C3A4E295ABC2B25110C2A2C3ACC3B3E289A166C3BFE29490C3B95B75315BC2B2C385CF84E296805415E295A636E295A939C3877C5847E295A46860C2A5C2AAC3875868221FE295A2C3B25AE295AA52E295ACE295A85AE295A5CEB1E2889A30C2A149296750E2889A2E7DC2BFE296A0E295A3201663E29594C2B1793F34E29593C3A6C3B62335766E49603FC3B3221F217BC3ACC2BBE281BF1CE288993E6CE295ABE295A56EE2889EC2ACC2AC6AE29593C2BDE294BCE29498E294BCE288996AE295923415E294B40E2E376DC3BF43C2A5E294A431C39CE29482E289A1C38967E2959FC3A44E3BC2BACEB42D133A0FE2959B04E28C9055CEB5C396E29597C2A3C3891CC3B4E29598C3A60AC2A1C2A30F0AE295AAC3B6C3B47DC3AC23C2BC47C3A86C1372C3B45BE2889EE29690E2959DC2B5C3BAE294A4E295A5C2AA684718C3AF457576757DE296A0E2889EE29498C3A70FC692C2A3C2A52D2BE295A6E2949C7FE295ABC2AAE295A8E295A1C3AB54C3A573360D6CE2959AC3B4371673C2BDC3A9756042C2A0C3A5C3BC5B7AE295A600527833E294ACE28CA0E295A4E295A0CE98301912E29594CEA962E29598237BCEA6C39C5848E29592C2BD23E2968C45C2B03EC3A5C2A30C0D1E0FE29680C2AC582107315FE2948042C3A837C3B1E289A17DC3A4E2949838CF86C2B1C3BF1BE289A501C39179C384E29594E2949CC3ADE295A34EC3B2C2B761423EC2B73E0FCEA9C3A236320165E28899E29692C3A615E2949C1CE288A97F5D55E2959262E295A16A2EE295A7E295A75667E29590C3B3C2ABC3B7CF84443E721C5CE295A8C3AA2E254CE295ABC2A1C384E289A445C3A55EC3AEE29594C3AD22E289A462423FC2A0C2BD5B3AC2A0C2BDC2BB40C2B0E28988047A6177C389C3B6C3B7E29595C2BA2E67CEA94CCF8425C3862433E29490E295A5C2B7C389E289A5E295975CC2B03EE2959E5B6745E295ACE28CA05BE29594E2959428E289A431C3A91D21C387E294B4E29684E295A27CE29597E2968CE295A20726E28CA0C389C2BFE295A731CE93716AE296844BE296A0E2959F49C2A20502E294AC2FC2A0E294B46EC3A537C2A066E2898833E295A4C2BB01E2959D266630681FC3A1C3AAE294B4C2A2C3AD5D152B05E2948062C2BCC2A30EC3AB71CEA30147C3A81CE2959B6BC39C2B09E2959B0FC69268520C1E0FE29599C2A3C3A43260E2949CC39F1DC389E295A9CE98E295A8CEB1E2889AC389E2969135C39CCF80E288A9C2ACE29490E288A9C3BC7BCEA9E2959AC3A7341215C3AF415D3BC2BA444B7FCF837EE28CA0CF8373100D7F2EE29593C3A7C2B04CC39FC3B4433E4E445444E28CA16251C2BB57C2BD6659E295ABC3B20FE295A570E2959141C39CC2AC611532E294AC7DC2BD66E296846F02C2BFC3A7C3AA30C386E28988C2A162785DCF83C3AEC3AB58E29691C3B3E29690E295A3E2959DE295AB31E28CA1CEA3E29480E28CA1C3B41C4B29C3A444C3AFE288A9C3BA30C2A5C3856BE28988C2AAE294A4CEB54B2BC2A134E29680E28988E295A259E29598C2BDE295A6C3AFE28CA1E29482CEB4CEB4E289A4E2959FC2A2C3ACC3A6091D0607CE93140DE296924946C692C2A143320B04CEA3C3877CE2959DC2B2C396E289880BC3A2C2B0E296916278E288A9C3AE50E29596076D5ACEA3C38651E29590E295A320161A391DC2ABCF80CEA6E2949CE28988615BC3AB2406E29680C3A72BE289A512CE93E29598C3A02224C386117129E29480E294ACC3B2E288A92465C2AAE289A4C3BF7C1F12E2959AE295905C100B6939E295A27B516A3925E2948CC2B7471EC2A0C3A2C3AC56453E4CE295A2C39614CF84417A2D5172737C60C2B2C3A1E29591C2AAC2AC46E2959C5E2FE295ACCEB4C39C4C08E2959A10E2948C017433C2A5E29599C387612908E2959A2CC2A564427DE29596E295A0C3B108C3AD52607DE29593C3B6C3B44215C2ACE294ACE28988C3ADE295AB524248E294A4110B12E295A527E295A13540337D0F0A6231E2959B2D48497EE2889ECF84C3B6E28899E295AC7D1EE29595CF83C3B7CF83E295A6C2A22DC3B708C3AAC3912F49305FC2BDCEA9E295A60DC396C2B235C2A166C3BBC2BB1A33C3A2E289A1CF86615EC3AB0F77E2969234C2BD500D6DC3BBE295A3E289A5661CE2959B1B3B17E294BC24E2959FC3910EE29595CF86E28988C391722FC3B1E288993E7C734E7C7833C3A5CEA374E29498554036C3862DC3A058C3A4CEA374C3A444CEA643CEA3C3A4C3AE5B4AE289A5C391E2959F3535E294802236C2BB4BC2BFE281BFE295AA3919E295A5C2B7471A7F53552BE295A1C2A3C385C2AB7D363A5378C3B36B290C6D277A0B5F014CC2BF2AC2AC3EE296A0C2B06AE289A4C2A0E296A07F3F5901E295AAC39108E295A645434EC2BB64150404E289A445406EE29494C2B002E29494C3B9006EE295A06B28CEA3C3A02AC3AA455CE2959CCF83174BE2948CE289A5623E7F6873E295AB582F1AC3AA0529E2959CCF84E2959A785E7358E29596E288996D32C391C3B2565A06C3AC77C2A06FE295A36AE295ACE296A0C3AF3FE2889AE296A0E294823FE281BFE295A4C3A74FE29593CEB4E294BCC3AD1C6FE2959AE29498E2948CE295961AE295936C5A33E29599E28CA17603E294ACCF8404E281BF04E2949406C3A147E2959700436CC2AA6FE29599C2B5C3B23A6F06C3A4CEA348CF84E2959EC2A3E289A577E29691CF84E289884DE295A71DC386C2A1E29594E2898811E29494E294A46EC3A058C2B0E289A566E29480403E42E29690491739C2AAE295A12DE294BCE29490C3861BE29599E295A3744EE294945410C3AFE28C90E289A1E2959148CF8464C3AEE2959074E282A753E295922BE29599E295914BC2A5C38523C3BBE296A052737CE28CA07D06CEA9E295915AE2959BE28988E28CA0E289A5E294B40FE2959BC2A0CEA3E2889EC2BA3FC2B2E29590C2BD57C2BB6E421010E296886A587D7F5FC3BFE295A8C2BAE2948CC3AAE28899C3A5E29494E295A701E296A00C40CE937C20E29692C692C3B96B15C2AC39CEA36848196C203C595C73E296A034100BC2A16A56C3BA5B33C3B6C3BBC3BAC2B24CE2949856C3B6565AE295A9CEB449291FC385E295A4E29690E2959DE29498E29690E2959B7C75E29599E295A2E295A0360EE2959ECE9859E29591C385C3A4E29691E294ACE289A1E295A1C2BCC2ACCF80E2959736C3844AC3B76DC3BB0808115A007F03E2959E6F4078E289A4C2ABE29680C2A312E2959977C2ACE2959D1936E295A4C3A5107D4CE295A708E29590C3AC09455CE295913E377CE29490E295A6C3A1C3ABE289A57D4820162E08092CE28CA17219E29680E29599E296A0482116C3863C1EC3AD117A78C2BC451BC2BA3256E295A12269E2959C5DE2959F555A4ECEA9E295A32850C3861B2B2703E295A9CF8012CE987DC3AA52E28CA1E295A9E294BCE295ACC3A5E295A9E295A7C2A54F447EC384E28C90C2ACCEA9E289A4C3AFE29592C2B7CEA9CEA96C51E295ABE295A1CF86CE93CF83C3B4C2A0C3B7CF8378E28CA025C3BBE295972221C3B4424766E295A9035201C2BF084455E28988E29597C3A66A4E47C3AA1C29E294804243E288A91418E29599CF84E2969042101256E295A8410AE2969228E2959AE2959F34E28CA12EE288A97D5EC2A1202CC391256AC2A0C3B74B73E295A36CE295ACE2959BE289A4E29594CF80677FC2B0C3BAC3851F5FC2A35BC2B1C3BCC3BF1CC3AEE2959B6A58C2BAC2A2501F7232E28899E29593E295A078C2B11E415F7CC2BFC3A76570784DE29690C3B7E2959879336CE2949017C2ACC38576C3840963C3BF4368CEA6C3A1CEA9C3AB7C7445E295A906E288993EE29591C3A92843E295A71FC2B7E2959B09E29692C389E295A00DC3A6C2BF0A15C2A279E2968426C3861EC2B7E2959DE295A80D3416E289A5215D4568C2AC3C1D635537C3A2C386E29684E29598E295AB51CEA37EC3AE56E28CA12A26E29680C3A7E2959E1A4DC385E288A9E2949C4A6F06C39CE295915A3E78E296917EE289A1CEA3E29594E294BCE2889972E29498543027C3851E0BC39F0E07E294ACCEA35C10C3A5C3B43927C6920B325726E28CA0E294941737466EE2959A54C396C3BC73C2BBC3A8C3B26AC3A4E2959F17E29692482D372436E289A43825327F63E295A6E295927E4E412C4A2BC2A1E2889E55CE98CEA9E295903BC3A9066E5BE29690C3B4535B09CEA67320C2B0CEA6C3AEE2968CC3A77AE28CA02121E295A2E295AC4CC3B7C2A1C396E288995B43E288A92C17E294ACC387E2949C3B67E29690C3AEE29692E28CA119724A42C3BFE295AC4D077209E2959BC3ACCF80C3857B501074C2A13DE29688CF840332E29592C2BC6CCF830C7DE295A7C2B539632316E295A248C3AFCEB426C2A27B15C3B154E288993E60695B62CF83C389CEA35AE2968C6C6CCEA32313E29690C2A23ECEA34334E289882316E289A5115241E295A4750E34E28CA1E289887D571DE295AB0EC3A2E29688E295A26DE29688C3BB5B30E2968818C3A1C2AB5CC3892EC2BAC3B3324CC2B0CEA30907E2889AE2948C5C111062C3A1E2959ECEB55F65E29490C3A64C31374443E295AC1C11C3AFE29692C2B72BC3A058E295AAE295A919C3BA5FE2948C28C3AAE29593E2889A4265E2968CC3BB7EC3BB565A79C3A7C3867A4EE29596C3AC66C387E29688C3BBE29596E29596E29596C2AA225846C39F263674130F48E2959401C39674636E09C2B016E2949437E295AA71C3A960E29690E2959D19E28C90CEB463C3A8C2BCE29595221F3E08C38923E289A5E295A815293BE295ACE28899782BE294ACC3A571E29684CF80E288995E512A4DC2AA73C3ABE295A375412CCEB129672E55C38962CEB43F55E282A70ECE98CEA966E295A5E289A4C389390F47C2BC7E4C12E28899C389E295A2E29498E295A3CEA96FE29596E295965444E295906AE295926CE295ACE295A7C3B9C2BDE29591E28C905C08E295A2C2B7C2A308E28CA074C3B10FC2B2CEA6C2B7C2A2C38603324107CEA306E295A05F604744C2B00D25C3A6E2959931C2AAE2949CC2A21AC385470EE288A95C6AE295A3123018E2949850E2889934E289A518E2959FCEA657E28C90E295A8C3B6E29680E2889A56C2B5C2AAE294A4E295A5C2AAE295A3E2959329C3B36CE2959E6251C2A55D5DC2A53DE2889AE289A1E29498E2949CE2959F67C2A2E2959655E29691E295AA51C389CF86E295922AC2A26A58C3B46FE289A44440E295A2E296885B00C692C3BAC2AB7F02C3B36FE295913DCE93C3ADE295A1C3BB3B6F466AC3AAC3A06FE28CA0E29480C3BBCE98C2A30CC692C2A2C3BFE295994DCF807124C3BA2BC38626E294AC742EC3AC584048C384545528C2A277E29590E294A4C3BB6C10C3865473135CE2959F4D3BE295943D55E2959B0FC3AC2A68C386CEB43855C3B14B4B6EC2ABE2959D3427C3B7C2B0E295984E47653AE295AB44336330C2A5C2BAC3847C18E295930EE288A97EC2ABC2AC6AE296925E2F1EC2A35FC2BCE295AC17E295A6C39C6057C3A5E289885430E2949C5CC384E28988E289A1E2968CE295A9726027E29688C2B5E29594C3A47EC2B16F6FCE98CE93E29680E296A01244C69202E28CA0E294AC6F23E29594353744E29599C387E2959ECEA9170BE2959A57C2ABE289A5436333E294B4C3B4CF84785246CEB4570A214939E289A154C2B03EC2AA29C2BAE294A4E289A1436A69E29599C2A3C3A711E2969031E2948C55E294B46A5BE296906EE295966DE295A62DE2889A6E227D7F73E2959A371ECE930BC3965D32C2B7C2BC10107EE288990FE2949400C2ACE29590E29490E294984F77E28CA11B06E29690C387E28988334E73CEB1E29590187AE295A46323162ECF803864C2A3C3B1E2959FE29599E294BCE288990C453EC2B76CC3B9C2A17E3110C3AF31C3BFE295AC4D6BE294B427C2BAE2949C67CF86C2B0386D21C2A268C39FE2889AC3BFC2AAC2A354E2959311C3A4E295ABE295A758E295A325C3BCC2B2CEA6433646613AE295AB0EE295AC70C3A56B4923CF8463406F062AC3B3E2959169C2ACE2959272E294982CCEA9E295911A3A3871C3A7E296937DC3AECEA6E2959FC38445E29592C2B1E29597C3AD7CC3A6E29594E295965921207C7F3DE295A4C2B2E2949877E295A313E282A72AE289A5E294B4C3BB0629157D62464352433E48E295953F73402C6CE2889A3F15E2959BC385C3BF77C3AD53C3A657C389C385E295A54A4BC2BD4DE2889A1D6816E28CA1CEA9E294B4CF83C2B7C3A2CEB4C2BDE289A4E2959FC2A2E29590E294ACC3BB097D68E296916C18C3896D2A624D77E295A0CF84E28CA0C2B754C2A2E29490CEA970E29494C3BF0EC3A746E29690C2A01F61C2A07FE289885EE2959DE28C90C2B166E295AA1A1C1E70E296A04DC2B2C386C2AC2E76E281BFE295A36DC2A07DE28CA1E29596C3ACE29591C3BA3B5226C3A87CE289A1E289A1E289A4C3A2C396E295A86DE29593C396E288A9C2B7191A3B5BE294804222C2BAE2949C05697171C2AA0BE29680C3A7C2A3E2969005E28899C3895D4731E28CA0E295AC69C2A5E282A7E295AACF807BCEA94B231FC2AA3C44CF86E29692E295A9C3BCE288A923E295935A1AE2959BCE98E294B4E2959DC2A274C2AC6BC2ACCEA9C2AC39E296882CE295AC17C3AF77C3BFE295A87D370BE29693C3AA24E294983819C3B4C2A1C3A53577267402C3BAE2959BC2A02EE29480C2BFC3A8C3B272E294A4C3BC13E2889E3F45E295A53FE295937C482325E2959B4CCEA6C2B15FE295A3E296A0C69235723A72C2B5E2889AE2959A09E28899484DC2BB5CE2889E70CEB501E295ACE295A0E295A745E295A019C2A1CE98E29692E282A7332FE28CA0C385C2B2E29593E295A1CF86751872C2B02E3B3A2AE29498E295A13933C3ADC3A2C3BC16C3A1C3B9C3A77926C387E294946460441FE289A5E29598E2889AE2959DC3B71CC2AC50C396C2A3E28CA0C2ABE288A9E2889A221610C38663E295A6747EC2B73D53E295922BE29688CEA6E29592E29494E28CA12B15CEA343C3A8E2959FE2949CE294BCC3BB4ACF8446C3A422162E391D1A7C1F12E288A9E295A2E295A61CC3B1C3847CC3A4CEA9C2A52AC3A9C3B3C3A044CF83C3A8C3A16933E294942BE28988E2949C16E29498206DC2B2E295A1E29680CE981CC2B03EE294A4E29593C3865FC3913AC3B3E29596E289A117E2949404666E7BC2BF084D07C396C3ADC3A7E2949854E294BCCEA9C2B76EC39F01C39670E2959701E289A13300C692C3A2E289A1C2B5E29690E29590C2BDC3B1C3BA04E28C9033C2A5E2968844CEA343CEA3C3AE3DE295AC1469E2959DE2959FCEB1C2B1CEB1E2959ACEB4E295A916E2969208E29594E295A7C3A8E294B4C2AAE282A743C2A27A34C3B4C3A8E282A7C391E29590C2BCC3B2E295A124391EE295A0CEB1C3B92F6FE295A2E295AACF84C38778C2B7C3B1E29598C39F1512C3A5C2BD60E28CA1C2B2C2B264E29688E295A01110E29690C3A9E289A11B02C2B20AE294944300E295A65DCEB1742EE2959D193E7A6B30E2959EE29597E295A9C2B1CF83E2889AC387CF83C2B0C39CC3B3573D55C2BBC384C396E295ACE29594C3A0E29490C3BA4F67C692C2A30EC3B9C2AC58E2948CE295A31126E2959C4FE2889AC2A1C3A61B625AE2968853C2A1C3A9C3B1C391E2949054E28CA03235040542C2B7C3AEE295A1C384E294A4E28CA0E295A2C2A5E29680E29480E288993ECEB5C3ABC3917BC2BA4E04C2A336E2889AE28988E296921CC3A60F58CEB555E28C90C2BC25E2949877C2BDC2ABC2BFE296A0E289A1E29498E2949C0DC3872500627656C2BFC2BD1AC3BB2B13E29591E2959055C2A1E2889EE295A4C3A6C38603022CE2949458E2959DC2A56CE295A57CE29598587252C2BF4235E295935D6A69442516E29680C3A72FE289A54223C3ACC3AFC2AAE2969021391DE295A3201F25E295AB603E5B4EE295ACC3ACE289A47E0E73594B49E295ACE29596E28CA078C389675719E295A65573C3B7CF801F7FC2A0E294981FE281BFE296A0074FE29593CEB4C2AAC3A9E295A31A561FC2BA47C692E2949CE295A4C3916035CEB1C3AA4CE295A2E295901A01E294982FC2BC5720E2959D0463E296887D5FE29680E2959F53C6922262E295A4E28CA1CEB548CF8474C3BFCEA3C3A454231B7AC2AB4DE295A13C5FE2959BC385E2959BE295A3E289A1453EC3B1C2AC62E294BCCEA30DC3A6422C5C723A4CC6924FE295A10A522CE28899C2AB36E295A4755DE294BC462C72CF8375190B41C3AFC2B21C01C2AAE289A4C3ADC387C3A65AE295922B49E2959BC385C3BF391FE2959A602D29CEA37D31E295A8E29598E29592E289A5C3A2E289881F3EC2B0E296887FE2889AC2B2E289A4CF845FE281BFE29590CEB457C2BB6EE29498C3A12CE28988E281BF6EC3AA6870CEA6E28988E2948269E294824640C3AAE28899C3A5E294943F03E289A45FC3A2E289A142C2AB12E29593C3BF726257C3ADC386E295A9CE98C389CE9329717DC2ABC2BAE2959DE295A4C3A60FC3A824674CE2959C7D72436C3FE28988CE98576C6EC3B6C3B6E2889EE295A76C76C3A0E295A0CEA3C3BB663F05E295A357C3BAC39CE295A95AE295A5E2959DE294AC15E2959BE295A73313E29490E295A369E29596C2BB5EE2968CE295A26DE295A6C2ABC3A80CC3A6101E3B1CE29592E29494E28899E29688E29480C3893E1963326B04C3A4C3872DC387C2A008E294AC2F01E2959D623AE282A7E2968C29E289A4664050C3844F64E29688550E79C384E29597CE98E295A3C2AA5CC3866371124CCF84E295A2E295A4E29691C389C2A30E1FCF843005E2959BC38518726CC2B73515CEA3433A27422B12CEB57BC2A07BCEB5E2959D2EE295A3C2ABC3BAC3AD7EE295AAE295AA6A5BE2969247C3B7E295952B372F2BE2959B0F6D3E0EE295997BC3B4C39CE296A0E295916BC6922AC2ACE295ACE295ACC3BBE295A6070F36074674E295AB01CEA301C3A7C3A97AC2A312C3B9E2949CE295AC64CEB511E295AC3B07C3A42A022ACEA92444C385C2B5684E01E2969270711242CF8340487FE295A7E2889948C3BBCE98C2A3465A773E7A6B54E294824A39C2AC36C3A5E281BFE29598CF8655CEA9C3B7E29482E294A4E29594C2BCC2A1C3A97C4C747EC3A06DCEA6E296A038E296925CE2959367E29680E28899CEA3C2B7E294981FE296A0CEA6C3BAE2959F17CF84C2BD504674C3B4E294AC36E29592E2969126E2968866E282A703420727C2BC0640E295981B15C3ABE294B4C2A221E294B4C3BF1EC2BD0AC3B229C2ACE294B427E295AC3A09E2959A191A4F08E295A63BC3ABC3860D6D68E2959430C2A5E29688222E6C7046C391E288993EC3A5E295933645C3B633E295962A4852E289A5E295A1736A5CCF8449C39C37443BE294AC5FE29593C3A6E295A31F36E295A25AE2959A09C3ABC3A57CE29691C387CF86C3ABE29594444E16E2889A7F6AC2B7C3A7C2ABE295900EC2B2C3B739200F1FC2AB1F3E7D7A71E296925A0D32C3B3E295972838546AE295ABC3B6C2A041C3A5E2949C60E295A2C3AAE2959AE29684C2BD6061E288A97C34C3B7C2BD56CF806E79C3AEC2BFE294B4580CCF835AE295A308E295A5097353613A4FC3ACE288A943E29597C39C556AE2959D31E29692E2889EE2959FC3BF7AC2BA20C2BAE294A4382D73C2AAE289A14930C2A517E2889931E28CA163C387C396E28988C2A0E2889EE295933FE294B4E295A0C2B1E295A475E28CA1C2ACCEB43B15E295912B62C3A6E294B4C396E29594E29693E29590C2A207C3A4E294B404E2959D64CEB11B026EE288A94F6BCEA9E2959D19E28C9032C3B64BE2959471CF83E2889A30212EC384E2959A475FC3B6C2BCC3B4E288A9E2949C64E295AAC2B5E29480E2898801E2949C3B2255E295902A06E2959979CEA6261A2B622DC2A17F2EE295A0CE93E295A3E289A17D48C2A1C3BAC3BF3919E2948C55E295A16C6C7FC3A1E2949C41E295A5E294BC43222337567BC3ABE294801C6BE289A47D48E289A4C3B628C2B57D31E295A8E295A2E296846EE295966D6BE289A1406C0F7E43657AE295A4CF8060C2A3E296A07DE295ABC3A5C3B97DC2A23702E294ACE2959501CF806700E296A01AE294940B1EC2A35DE29688E2959A656128C3B9C3B9CF80E289A5C2B2E2959872217CC692C6922BE29680C3A7CE987DC3A6C2AC6615C3A2CE985C6BE282A769C3A4E28CA1C3B6E2948C784CE2959CC3B2711B7DC3AEC2BFCEA364C3B1C3BA3F27C2BF77C2BB4D6EE29688E295A2E2968CCEB51C100E116E2216E2889E4B44C692C3AC21C396770E48C3AF2D03E2949041E294BCE2949004C39FE295926EE295A2C2BAE29494C2A2010F3912E29592C2BC5CC2A51229CEA3E2949C34E282A7E282A7E289A50E48070D54E294BC72C2AB7A3565E2959BC38521E2949CE282A71BE289A5C3A60B43E295A116E29599E295A3E2959378C3AEE29590E29599C3A61BE295A5E294BC23C2BCC3BA501B3F24E2968016C3917615E29680C3A27CC3AACF837EE29480443E422A284AE295AAE289A1E28C90C3BAE29692E2949C7B0B1135C2BD65E29482E296906CC3BBE295A6E29591C2AB6CC2BB31C2A376E29691E288A9E29494E295AACF83C3BF54034EE295A9C3B1E29688E2959D794076C2A01A0216E29597E29692C389C3AEC2A3C2AA16E29498E29593C3BBC3BA1DE294BCE289A1455C42E2959F43C2BD5F53CF80E2889A3045C3B272423E72E2968403C2B5C3A97CC3B1E282A7C3AF32C3A0E289A443C2B5E2959AE294B464C3890F2AC2B747E29596E28CA1C3AEE294BCC3B3E296905C5D5D3CE2889AE289A1E29498C3BA276767E295A643152CC3B77C4817CF8079E29592C39F6CC2A3C2B57DE295AA54E29684E29594E29690E295AAE295A03B07641716794DC3A1C3B900E295A2776E6B0CE296900C1353E29691C2A11CE29599E2898862E29594E294B4CEB14BE2968C1D18C389E2959AE28899E29691E2969201C3BBE295A7CF84C3B4671F47E295A77AE288A912C3A744C3B2E294A4C2B03E72453EC3B1C2B0407CE2889ACF8323E2959F55E2959BE29598E2969011C2A2CE983C35E2948022C3B2E28899E29593C2B55DC3ABE294BC4EC2A1C3A44CC3AAC2BBC2BD53E28CA163211F31E2959E47C2A2CE985C5AC2ABC3B77322E29490E2889A7B22E29595C2ACC3B3CF837AE29482787879E295A3E2959B582E1BE294AC5D195E7258E295A8C387C39650E289A1E28CA07704E2889A1CC38949CEA3C3A2E295A01A01E28C90E295ACC2A0CF836D75E296A02FE2949004C39F53002FE2959157C3BF1662C39F1B3D480DE288997065304FE295A13A5568E29693622A7C1FE295A3221F527C206345E2959262C2A1E29680E29684C3A960345139536C31E2959E46C2B1E295A054C389C385C3ABCEA91FE295A4E29593E288A959C2BFE29688C3BBE29596E296882D6F79E2959FC3A44E01C2A5E288A92BE296927B5A0DC2BDCEB46C5EC3AD54E294B4C39C5ECF80C3B9C2A0100CC3A1E2948CE281BFC3AFC3A2C39FC2B7C3A8C3BC57CEB1C2B2E295A0C3860F6FC3A514E29680C3A0C3A41CC2A2E295A735E28CA1E296927D47C391733E4C73E2959E27E288A9C2BB01E28899E2959AC386E288A92326E289A521E29594602EE294B40712E296934115E2959BC385C39FC2B1E295A715E29692E2959A3DE2959FE2959FE29592E2959EC391C2AAE29490CE982649C2ACE2959A47E2889EE288991DC39C6F2DC2AAE289A454C3A60FCF86E296921FC389E2949C0011554D532D17C3AF6A51CF8672407CC2AB5F7521217DC3A71B17C2BAC39154E294B4C39C60C2BCC2BAC3A20AE2968CE29592CEB4E295AC11E29692C3AA2907C389E295A7E295A460C391C3B2C3A119CF86C3964AC2ABC38416C3A2E295A32FE295A5C386E29693C3A0297C1FE29599C3A6535A727340C3962337657EC3B46A4D53C2A12F2F561F5C5FC6923F3EE296882C2AC2B031C3ADC2A2C2AB5B75C2A5E294BC67771EC69225024207CEA3CF802EC39C526357E296A0CEB1606A18E295A0C3A17B25E2969272CEB1E29590C3894450E294A4C2B70561C2B26DE28CA0CF86C2B0E2959B09E28899CEB1C384E295A744C3890FE296931C47E294943DC2BAE2949C562FC2A2C3AC36C3A45724666EC3AAE295A6C2B557C2B03E74E28CA04E55C384166F46C3AE75C3B179E295AACF80E2959AE289A5C3A07227C384C3A6C3AC2E3E2675C2AA73E29594E2949C361BE2889EC39C46E295922B09E295A3E295A57BC384E29593E29597CF8326C3A7E289883577E28C90E28C90E28C906EC2ACE294BCE294986671E295A43475CF83C2B0E29693E29691E294B419E296926145C6924D2B4CCEA67773E29680E296845F52C3A4C2B1E288A9CE93E2959F462CC3B1C2B0407CE2889A3F12737A413E22CEA6C3BAC3A61B22E2968C3F49E295A373CEA3E2889AC3BF1B6241C396E295A9C384E28899C2A3C2A3C3A6C38529E295A003E295905C6F3F39E295A0685FE2959B7CE29482E294BC1E01E296925C6E26CEB5C385E2949CE288A96B74CF84C3870C25C3B14F0EC3A5C2A2370FE2959AE2968CC2BC32E29691CF80010118041BCEA3C3A2E29590527BC3BA03E295A5E2959D19435114C2A3443E421106CE98C2A31749C2B23DC3BFE295ACC2A1C3BA6853473E6CC2A35149E2948002C3BB7252E295A64DC3AA2557E2889A3953473E4CCEB44F1AC3ADC389C2B5E2889AC3A108CEB448CF8039E295A9E2959A47C69213C3B3C3847C48E295ACC3A24B654429C2A2C3B603C3B4C2B7E29595E295A2C3A4C3AACEB5C2BFE295A8C39640C3A4CEA9CE98E29599072B00E295A6C2B2123325C3B91E3FC3AA07C2A3C3A8E2949CE288A92AE2949CC2B53B7944C3B12020E295977603E294AC1760E281BF02E29494C2A11BE289A5C3A65244C39CC3A0CEA3C3A4E28CA02B04E28C9018C3ADC3A856413E3C0C79C692610F1D1F125A473EE295A74B55C2ABC3B73C17CEA3E2949C5FE295A752C2A16834E28899E295A01318C69232E29490E29591E295A2E2959853E295ACE296A06AC3B772E295926C7EE281BF673F78C3B7777EE28988C3A2E2959FC2BD5573CEB10309E29498404D57C2BB4CC3A7C3BCE295943924050101E29494CEB15B00E295A709C2B00CE2949412C3AE477757E296914EE295AB514AE2959D19E295A2C3A744E295A2C2B07D4CC3B1E294BC3247E2949C5A7F21C2AAE289A4E294B44A57E295A2E295A4E282A7C3BFE2959AC3A7C3AB0FE29480E294BCE289A1C2B7CEA374C2B0CEA3C3A5E29595C2BCE29594C3ADC3ACC3B130C2A5E295A6E295AC73CEB5C3AAC3A0366FC3A536E289A5C3ADE2959033C3A629E29599E295A32DE2969341E295A3E289A4C3ADC2B0C2BC651F1BC2A11978E2959413E28899CEA613E29592E29598E28CA1E289A5E2949C0F1F3DC2B7E2959CE29680E2889ACEB1E289A5CF845FC2B2E29590C2A2E295ABC2BB6FE29498E295A4C2BFE2959554C2A172297337C3966A580501E29498E29590C2B50D01C69203C2B00CC3A117E2968CE295A6490B21C387C3891CE296802A5452E295A3215AC2B2C3A4CF8073C391E2959F5FC2BD3FC386E295A33A31C3BA5A6332C2BB17C2AAE289A4E28CA0CEA3E29590C2A1E2959154413EC2AAE2949026C3A8E296A0C39FC38479E296A0E295A2E282A7E294B47C73E29482E2959C7DC2B2CEA9C3B7E294940722350943C2A2CEA629C2A0E2959F18C3A5285A2B080800026FE294B4C2B02D40E2949002E289A1C39CE28988E289A44ACEA955C2BF5CE295ABE2969374152A4026374419E28C90E296917EC2AB27E29599E28899E2959CC6924DE289A54C7DE295A56630E29596C39F0309C3ABC3AAE29597E289A57DE295AA6C00E295A508494AE295A3003930C2A5E295A70DE29692C389CE93E29590E295A85E47E2948C7263CF83C3BB441AC69253C2A2C2A515E29680C3A7E29594664B3A10E29692C2B03E42E28CA04EE29597721E1155CEB4E28CA1627971E295A36AC2ACE29591C3A9CF83C2B56F3B3143C2BCCF847DE2959D20C3B44B422F080800E295A85BC2BAC3B4E295A0C3A7E28C90E2969223E294805A55C2BF52C2B5E2889A70192F69C2AA732DE294802AE29593E2959D6ACEB46D1B7DE295A5E295A57BE281BFE289A1455EE289A50B1FC3A5C2A0E29595C3B2E2959AE29595C2BCCF8677111BCEB4E2889E55724BE2959EE295A14909C3A1E29684E2889A25E296915C3467E29680E28899CEA3C2B7C3A23FE281BFE295A447C3852FE295AC573E3920260372E295A9C3A54EC384C38449C3B7C2A1202077C2BAE295A4C3A8C3BC6AC3B91160422C62C2B166E28CA0E2959C1DE29692E288993E6CE282A7677348C3BBC2B52BE29692C2BCC3B365E295A6E289884126C2B57453E289A143C2A2E294B4E29684C3912A562CE2959B0F1BE2948042C386113DC3915C00C3ACC2A3C38658392B53412CE295AAE289A5E29498E28C90211FC396E289A570583F27E296911F7D4CCF84C2A55B77C3A9C2B73BE296885A69C2A2C3A632E2968047C3A9391FE289884413C39CC2AA5A3E7AE294A479E28CA0E296A0E2889A0F2E57CEB4C2AA0A1038E29480C3AE6E222B24E295A76764E295A40A0262CF864DC2BA16E29498E29593C2B5E2889AC387C386E296905AE289A54CE295ACC3B3E29598C3A5C391E2968CC69254C3A60F0DE294802E67C3A4443BC2BAC3B1201569C3AE57C3AEE29494CF805472320AE2968047C3A63FC3A50D55E294A4E294BC0CC387E294B4C38447E2889A2114C3BA2FE29490C3A2063641C2A24A5959E295A2C3A9C387E296844DE28CA1E2968CCEA31E22C2B5E29598E29596E295A85DE288994052442C6256E295A772CF83E2889AE29691C3B267E29594746EE29590E2898861C3A8CE93C2A20CC2A366352B58E2959AC2B135E29494E295A5E295A328E2969158673E08C3AB4FC2A034720172423EE294A47255E2959E462C62C2B17168E295ACE29482C385E29590E294A4C3B2C6926955C2A1E295A4C396E295AC63E29590E29482C3BBE295904859E2959BE295A20DC3B2E29590C3856306E29596E295A0E296886DE296881E48E295A56DC3B260E2959FC3AAC3A52B337AE28C90C3A935E294B456E295991D3BCF83E294945A311DE2948C5D3754C2A1C2AC47E28C9054E295A7C3A821E295A7CE93E2889ACEA97C1F63E295A7C2BDE29598661C03E29692E289A461444F2752C3ADC2BD5FCEB515C3BB62CEB443C3A8E289A45022E29593C3BA3EC2BA201F13C3B2C692C2ACC3ACE29490C2BA0B6FE29596E29684E29690E29690E295A25B66E288A9CEA9417D24C3A47DE29490E288A9323E7D684AE295A91BC391552B08E2959AE295ACE295926500C2BB187849E294947667C2B078E29494E29482364507E294A4110B1BE295A31A7AE2949C51C3842DE29680C3A7C3B63C433FC3AEE2959A4768E295922BE28C90C2A30EE295995A48C396E288A9E2949CC3B1C2BB16E289A51123172006C385C3AAC3B6E281BFE29598E2959E55E295917AC3BBE28CA0784159CEB554C2AC5145C2B5E295A6E2959A16E2889970E294984B24024639E295940F5DC2A252C2BFCEB5E29691C3AC2442E295A15CE29593C2BDE2959066E29692C2BCCEB42A04C3BBC3ADE282A701E295A17142E2959A6100E294826B0501E2949819E295965B66E296A012E294944F017C33E2959DC3AAC2BAC38458683370E2959FC38647E2959FE289A4C2BD18CF86492DC2BA634CE2959C4DC2A2410CCEA32375765E2436E295A763E2959AC3ADC3A4CEA3CEA33C2713CEB5E2959F24C3BFE295ACC3AFE281BFE281BF6CE29688E294B4716434C3AFC2B7E2889ECEA9CEA9E281BFC3A267E295A71E3D3E3B5B1EC2AC60E29692CEB103C385C2A07B72E2889A66E289A1C2B7E29592645A414000C3A16D6F0878C384C2ACC2B70C442FC3A51D4C5B042147E29480E294ACE28CA1795248452873E295912FE2968047E295AB1811E295A02847E29680E289A401E29498C2A3C384E295AA7C1FC2AAE295A1C39C13E289A5C3A60AC3A9CEB1E2889A1CC3AEC2BC776AE2959D2150C3BBC3BA55C3B26AC2BC6A54E295A5CF8416CF83793455E2959CC3B3E29684C2B0506C2A284AE295AAC3A8C2A3C396E295AC5DE295AB6624E29688E295A2C2A0E29595C2ABC2ACCF8366E29482E295957A70E295A3E2959B5CC2ABC39C0A6165786DC2A3105BE28CA0C3BACEA3C3874CE28C90E295A4E28899E29490E29591C391E289A47FE28CA173103E05E289A1E294AC6ECF86E295A0C2A5E288A92303CEA34364CF800A1D4744C39C0FCF86C2BF514EE2959AC3A7E2959306C2BC197CC39C3AE29599792EC3AA45E295AC392531E29593E28C90C2A1E2949C13C3B37E616AC692C2AAE296A05AC3AAC3A0C3A9C2A37D39226E79E295976DE295A3CF83C3BB59CEB161E2959FC2A0C2ACC3BAE289A4E29596E28C906A5605E2889A7CC3A6C2BCE2948CC2BC11C389C3B7E296887FC3B90C280400002000494441540822C38736C2A062E29596E2948CC2BFC2B725C3BC5FE2968C77C3B1E295A111C3AFC3AD08C3A864E28CA1C2BCE29598C3890F18E2959E5308E2889970C2AB7A3514C2B2CE987AE296A0CE987C75E28CA1E2959F25C2BA2336E29680C3A740E29598E2959AC3A8313D07CEA303C3846B53CE9300C3B912E29599E295A376C2A025C2B72779E29595E29594E295A1C39C163C6DE29482C2BB7C25E296A0C3B93ECEA3432CE2898863E2889EC2AC60127C1CE29692C3890F693EC3A65C6C7DC3A7C2A35D01E295A2C2ACC2ABC2BD66E295A4547555C3A62BCEA93074E295AA19623B3F381CE29684C39FC2A3C3A16331772DE2959D6CE295A8C3A6C3A9C387C2BF78CE982955E295A7C3A82527CEA3E295A30AE295A0CE986A55C2BB5241E2959B52C3AF3EC3A0E289A1C39F245A033EE29591E2959CC3ADC3A4C2B539CF83C2B1E295A91DC3AD4879E288A91A53C2B252156CC39CC2B7CF8469CEB4C2A2C2AA5E5F5EC2AB3FE29595E2959B3E7FE2959DE294982C6DC3BFE295A8E28C9047E295A43EE296A0C385E29599E29680E289887DC385C3AD57C39162E29598366B04C3B13AE2889A17E288A9C2AB06C2AA1AC3A4CEA9CEB52ACEB12EE281BF42C2B51AC2BB165110C2A268C3A534E29482E2959124CF80E2959560C384E2959E6054E2949CCF80E2889962E2959AC3A72B7F0920E2949CC2A2C39F5A3DE295A6376A64E295A95501C2B7E288991DC2B73600493E10E296807EE28899E2959A71C3B22FE295A1C2B1C391E295A9742EE2968C7F29E294802237C3A442C2A2311EE282A7E295A259CEB470C39C3AE29680C3A7E28CA0E281BFC39CE29593C3A624423126E289A5311FE2959BC385E29599E296801D483FC2BFE28C90E28C906EC2ACCF83E29498E29498CEA972E295A3C2BCE29597C38905E295A2E295AA0C4F5F5232443E0E4EE2959A2CC3B34A05017977C39C0FE29592082C0EE2959FC3ADC3A53BC3BBC2A3C3B6C3A60F17E295A363231FC3ADE289A4C3AD3DE29690C3ADE289A4CEB11B7DC386CE9303492D1A16331AC2A23AE2968049C2BFC2A3C3B6C2BD5E15CEA343E2959EC3AD0C513F73C2B2E29592CF8461CEB5E2959AE2959FE295AAC2B2642D2568E29494CEB43BE29590C2A0C3BFC39CE295A40250C2AC60C2A52EE2948216CEB157603AE294941E24C2A2E2959961C3864342724C110329395AE295A326C3BBE295A0CE98624CCF84C2ABC2B2C386CE93E2889AE29691C2A1C384CF83E2969346526530377DE282A75215C3B129E289A17DE295956EE295A2E28C90C2B174CEA3E295A9E28988611AC2A0E29684C2B03EC3B10319062744C2A5E288A903E294ACCF806373E295A640C2B76A65C2ACE2959AC3A7E28CA0E2948C1CC2BA7A1611E2968CC3B2E2949C620233E2948C1E26745FC384C38421E296A0C385E2959BE288A94CC38611E2959C2020E288A9E295A25BC3873E07C39F4B00377E0638C391E2959AE295A2141FC3AA42C3844630737AE295A706C2AA1605E29594C3ACE288A9233506E289A45C72350AE29680475AC3AAE294BC64C3A97D19E29596E294ACE2898831C2AB7CE295A05CC2A071C2BD673133E294907C79E29482E294BC3E07E29480C2B1C2BF41C3A54DE29692C2BD3A56C3B9E295A43BC2ABC39CE294BCE294B4C2A54AC3B11504CEA3E2968C63CEB52DC3875F13E289A115E29494170016E2968C6B48C3BA0AE29592E295A80B27C3B25BC39FC3B3C2BB60C384C3A5E28CA1732DC2BD53E29692E294B40951433E5C11C3AFE295A86A562E154834C389C3BF50CEA3E2949C5415E295A6E294BC666ACF836614E2959BC385611B3435CEA32376352DCE98E2949C546CE2959B0FC39FE29684C386E29594E289A47D48E2959AC3B9C2AB4665E29482C3A566E2959AE289886129C2BA22C2ACC6923CE2959B581DE295ACC3A2E295A0E295AC03E29598C3B903E295A5C3A0C3A9E28CA0CF83C387C3BFC389101723C3B64C2B08E2959ACE9844326A0035C2B030E28C90E29692C2BD5041484EE2889EC3AAE2959C160260C2B1C2B251C396E295ACC3ADE295986FCE9868516CCEA323E29596E2889AE295A8C3A0E288A9635EE2959A47C39FE2889A185D7EC39FE2889AC3BFC2BFE296A019C2B17D18C2B217E2959E72E295926C7EE281BFCF801F7CE289A13BE29490E289A4E29690CF80E29592C2ACE29692E28C90C3A5CF836220C2B70CE2959E29CE93E294B4231919E295925610C389E29599C3B42CC39F06E294941B00CF862117241EC2A0C3A52952C3AD5DE29590E295A9450E2C1D7109CEA3E2949CC2B17E306955C2B132C3ACC3BC4F6EC3AAE2959470E2889A44C3BA42C2AC74E295A3045742C2AC62C3AC5D51656CCEA3636CE2959BC385C3A97CE2959AC2BB23445A473EE295A27964E28899E295A4C2B03EE294A4E2959EE2959FE28CA01CC3ABC3A2E29693764EC3A514E2948CC2ABC39177C3A9C3B2121968CEA97AE28CA1E295A44757573FC2B7C39F47C3B9E29490C2B7E29592C3AFC2A2E295ABC2BB6F5D60E2959A2EE2959FC39FC3BF55E2959C0FE2949820E295AAE2968C6B2E39205369E29480E2959521E2959ECF84003E03E295A4C3AFCEB5E28CA139551E0FCE981CC3AC08E2959AC3A7C2ACE2959DE29598C2AC50493D3FE295A1C2AC58E295A951C2BCE295A4CEA36A3F672E55C2AC34C2B5C3AD201FC3BAE295A92F7C1FC3ABCEA6C692C2ACE2969069554A6430E29680E296906EE29596C2BB5FE29680C3B725C3BAE2968828616230C2BBE295A4C2A5C2A031C3B617C3867D2B08E2959A3B76C3A6E29596007E0DE295A8E295A701E2959D3CE29684E294ACC3B364C396E2959F5DCF83E2949420271429C387E296913C433F4E37E29693E29596513458C3B7E2968815E2889970412C4C724CE289887C6D0DC2BA04C2BBC3AA0B62E294B4C3BBE29490E288A9E29688000AE29599E295A3E2889E7372673AE295ABC2B5E2959028E2959AC3A7C2B2C2B02BE289A1C3AB4CE282A7CE985CCE9339E29692C2AC51E29498CEB55D1459E288A9E29598C389C385E2889A55E2969256E295A6C2AA393B5B365555E288990EC3B7CE98C3BCC2BFC385C2BCE296912FE29693410AC3AF60E28CA05610C3897BE2949C51E294B4CEB5E295A9C3AAE28C9002C2A204E295A52021E2959FE295A1C39C55C2BCCEA950C2ABE29680C2BAE296A04DE29590E29594291078E2959BC2BFC2A3584CCF8463CEA953C3BFE295AC27E295957764380F05E2889918557E413E12E295A43F55E2959C13E2968833C3B734E29598E295A645E29482E28899CEA3C3B4CEB40FE296A0E294823FE281BFCEA6C2B7CE937C15C39C03621AE29595C2ABC3A473CEB57146E29693E29680540A027232E289880C54E294A4C3A2E2949CC3AAE29690C3ABC2BFC2BAE29480E29490C39F22E2959FC391C39CC3B22962105AE29592C3AF077EC3B7603AE288A97C0C3B1CE2959E5DC3B367C39C48432CC2AA73C3B92A5EE2959B391DE295A26BE29594C2AA5F21725CE2959E4D7233C3AC1D7177E295923B3539C2AAE294904B1DC3ADE295A8C3861BE29597C39CC3B4703FE29598C3A6C385E28C90E295AC432CE2959B0F1FE294A4E2968C65E288A9C2B1E2968CE2949C42E289880C61390C344DE295A1E29591E295913AE29597C2B7CEB1C3A2C3A70FE29593CEB4C2AAE29693307E2EC3A710E29693C3AE6CC3BF0E7259C2B5C3A91404CEA3E296A044E29593001A062A1E3CE294A4E295976EE295951A77C2B1C391C38916E2968843C3A0C2BDE296A00AE2959A03E294BCC3843EC391C3896323C2B13CE29680C2BFE295A458E29592E2959D62E2959DCEA9E295A3CEA95D783AC2B5E295962DCF83C2BC7E613AC692C2B53AC39C2A5A4EE2969216E28C90E29590E295A1C2ACC3AD6B39E29498E29596C3A9C387E2959DE295973C18E294946B002F09E295956527CEA3C3A21DE29593E282A7C2BB1CC3B97BC2B0363918E295A2C3A7CEA3E295A82A5AC2ABC3A77703E289A5611D45E29482C3ACC2AAC3B7E295927237E29590C2A2CF86CF8463201FE295A2E295A1CEA34D6CE288A9C3ADE2959D2070E2889E57C3AE5C00C3ACC2A30C2DC2B2C2BA5AC2A14AC3AF3763C2BCC2A312E28C90E2949CE295A658E29592C2A3C3A4C2B7110DE2889948C3A0CE983C17E2959B0FC3ABE29684C3860957E295971A780718CEB1E295A2CF8376E295976D5BE295A61CE28CA0C3AD03495F39E2968C21C384C385E2959446780A02E289A5C2ABC2B1E2959DC2BDC3A905E2959D7877E295A1C3B1C386E2959921CF83E29590C2BAE29480E28988615145C3AFC3A4C396E29599C2A5E2889AC3962BE289A5C3ADE294B463C3863342C38633E29599391539C3B4C2A20F4D6766CEA3CF8450E29594C3ACC396C2AAE281BFC396CF83093273E29597CF83CF8676E29688E295A23E65E296911C36E295A9E2949C0D1CC69264E28CA02C0D694140C3845BC3AF2DE29494E2949042C3A02F41787937E295A6E29692C2AC50E295A3E295A9E29692C3A61BE289A53C57E2959B0FC3AD2A5A07CEA3C3A26817313346E295A46CC2AC72393CE296803AE2948CCF80C2A2632175E295A737C3A4E288A9C3A23DC2B77F3AC3A5E295A208C3AB4FC2A03472016254E29599C386E295A57F6EE2959A47C3AE3BE28CA152CEB44843E288A9E29692792C02C692736CC3B4C2A16C36121DC2BA18CEB43316E29680C3A7C3B67C6D7DE2959FC2ABCEA337E2959D171251E295A158E29598E295A6E295926AE29692C2BFCEB4E295A9C2AA7CC3BF0DE2959DCEA6C3AFC3A4C2A37EC3B92DC692C3A6642B08E2959AC2B279C2BD79CF84C3BF55E289A555C2BF6C5E20CF86C2A30E69C3B122343A624B2AC2BF15C2A519C2A2E294B45ECEB4E29494C2A20A237A32E288A975CE93C2B7E28899E295AAC3A42227E29680E2889948615C0AE289A521E29482CF84C391C2AC3F6538E29690E28C90E2889E11C3A7E295A367344D7DC3B7CEA6CEA9E281BFC3A267E295A71E5DC692C2A52D0F55E29691E295AAE289A4E294BC26E2949CE288A9C3A51CC3846347671267E28988C3A9C387E2959D3BCF840CCEB116E29494E295907EC3A6CF86CF80E2959D5255C2BF4C1E3B2CCF83C2B0C2B574E29684E28CA148C3A5E288A92352152D23E289A521E2959037E295A527E288A974E281BFE29591C2B73BE2959827CE9828C3B66615C2ABC3ADE295A12AC3AB7CC3BFC38918CE98E295902F16E29680C3A7C2BBE296A005E28899E295A83D28C2AA5E4D2BE2959E3A35E294983E4127441CE28899E295A8E295A9E29594E295A8E295AC1DE29693E295A1E295A452E288A9C38716C692C3AAE28CA01E166A2335CEA3E295A83B1FE295AB75E295A13C3B5B5E3D7CE2959579E296915A36E2959F2CC2B512C3AFC3B34F5E1FCE933129C385E296912020E2959FCF864BE29684E295A5E288995F3E07C39F53002FE295A0E295A1E2959862CEA374E29480C3AA6C4B6DE29684E294AC55C2BBC3BFC3A0E28CA1C3B418C692E296926DE29494E295AA7A6B211FC391E294ACC3AEE2959C6D2972CE93E295A6C6924A2EC2BF723FE2959554C3BA1A5F7FC39C49C2A023CEA3C3B3E2889EE289A4E295A8C396E295A36D5B3E24C3ADE2889A1E36C3A51C0B327C5E0DE281BF4DE295A22F48414000E289A1E295A6C2A075376BC2A2E29490E29684C2B2C3B9E289A125C387C3B974E295A7E294B4E295AB462C5CC3BA1AE295A5E295A328527C1F43E289A503C2B03EE2959AC3A7E29680E2949CC2BA3F5D64C3912E391D2E0849E2959AE281BFC2A2E28CA032CE9833CF830A26E295A3C2B17DE295A00DE29692E2959ACE98E295ACE2959BC2AA5CCF86C2AC5AE295A9C2B2CEA6C2BD7A656DE2948253C2A2E29680E2959B71E295A7C396CE985C327F4E6A0F4B71E295A7CEA6C389E29482CEB46E55555553E295AB555D55CEA37AC3871BE295A9E2898818724EC2B73E7759C2BCE29594E29596C3A9C387E2889EC2BACEB4E2968C192366C389672C4703E2969248C2A5E288A9E2949CCF83C391E295ABCEB1E2889A284CCF84C39FCEB451306A34C3A8C2A3E295AA07E29595C2AB77E294822016CF80E295A1292014C3A0E288A943E29593E29593C2BA26E2949030C2A5CF84E2969267E2959DE29688164DE2959CE2959BE2959D58E2959C7F7D75E296A078E2948259E295980AC3AFC3B1E295A609E28C902C0F19C3A0093DE2898846677F7962C3A2C2BF264275771570CF84C3AFC389E2959264E2959F442C6CCF83E295AA566F0ACF83E2889AE289A1C2BCC3B3CF83E295A0E28988C39FC39CC2A212E295A95FE295A5E289883763E289A47DE28CA0E29594C2B1E295940D7109C2ACCEA3C3AA7CC3B11A71E295A70569C389CEB51F12C2A2C3A7587AE2949C60E2949C0AE29680C3A75BC2A0E295A1E28899447CC69263E2949C3917C3AFCE985C02E2889918132DE295ABE294A449C2B27B1FE288A94BCEB5525353E2959954C2BDE289A4E289A4CF83CF83E296933B0744E2949CE295A6CEB44B34E288A953E2959530C3AD4FE2959427E294B4C2AB1EE29482E294BC21E29596E288A9E295A753E295940DC3BCE289A1E2898852CE93E2889A18E295973F1A721059C38414633A46C38633C2AAE281BF14C3A6C385C3B64D6AC384E295A319C3A0E288A9E2949C2CC3BB26E294A446E295A6E281BFCEA9CEB53DC3B6E288A97C33E289A1E289A5CF83E2959076E288A9C387E29691CEB1E296933F381B55C385CF84E295ABC3B91BE295A5CF8421C3BB1CC389C2A31B1318C3AE37C3A769C3B1E29596C3B901E2889AC2B55C1BE2969270C3AC52E295AAC2B568E295AA46E2959F7CE28CA1E29596CEA3E2889A38E2968CE2959AC2A3C3A6C38550E296A0121B791255C2BF6C6C4328C2A0C3AAC2BD1C173EC389C3ADE296922CE2959AC3A7C3AECF861F1B69E295A8C3BB133A5E63211FC3A0E288A9CF801DC2A26C6DE29482E295A10EC3AFE28C90E295ACC3A26D2545CE9839E282A732E2968047C3B1C2AC57277A1111E2968CC2A1CE98E2968C29E289A1CEA9E295A4E29498627F6E2666E295A4CEA31D423FE295A3CEB1C38903E295A5E295A1E295AAE29595CF80E29482245B4140E29591E296882DC387C69203C2B035C387CF86E2959753C39C1A626113E2949866E2959FE29490C3B9C2B50FE29692C2B0E2959B2AE2968047487FE294A4C2BDC3AFC3A0E295A0C2BDC3B1C2A331C3B37405E28899E295A8E295926F4A7262E29594C2A5C3A87CCF8377C2A26822391FC39CE288A9C2B1E29684C3A6C38554E2889ACE98E29596472CC3B9E29590C2B5E295A7E296A0E2889EE2889A1F7CE288A9E29597C3851F2FC3B9E29590C3BC0FE29480CF84C3BCE2959FC3AAC3A7C2A1E29599E295A427C2BACEA3C3874CC2A131C2B006E29494CF84047C06CEB16F0378681F25C3ABC3AB58C3A4CEA3341C7FE295A726274002E2889938C3ABC386C2A53A1F62E2959AC3A72DE295997968C2ABC3AFC3AC7323C3AC7CE29595203170C3B6635AE29688C386C2A2422EE2959AC3A7C3BBE296A0E28C90210DE295A3CEA3C3B3E294805847E2959A681DC396C2B7C3A62BE29680C3A77420C2AAE295A61E33741128421EE2959AC3A7697CE289A4402C54CF8330C3BA69C2ACE2959227C6925C5FC2A0E295A41F7DE289A5CEB1E29596E29490C2B2C3B7376FE29690E29684E295915C21C3ADC384C3A061222774C2A1C3A5C3B25D2B0848E28988C2ACE295A325E294AC7360E2959F07CE9336CF8463336B2B2315E29482653A1F3BC39CC3B23AC38547026F6DC3BBC2B22855C2BBC2AA391FE28C90E2959C13E294AC6D127C1FC3916A5A1EC2B725C38677E2959ACEB1CF866DE29688E2959B7973E2889AC3BB1044E29594E289A11CC2A0E288A9E295A9E294ACE28899E2959AE29593681504C3B17336790BCEB13700C2B202E29494C2BDE295972BC387E29692100B08E29594C2B1E29590C3A6707D6ECEA9E2959AC3A774C2ABC384692C432AC389743DC3A7C3A15B15C2BD2F5863E294823642C396E295AC53473EC3B1C2BD084D15E29692E295A86222E295ABC39CC3A758CF80C2BFC2A1E29490C2BBC2A10E7438E29598E288993EC3B6C3A61BC2B1791ECE9306E29599E2959DE2969359C2B03E62CF86114444C3AF455DC2BBE295ABC3AFC2ACC2ACC2ACC3AD07C3866160E2889A1CC3AA3E34C3B1C3A9390F04E2959AE296911A5641400657E288A910E288A925391A09CF861C03CE98CEA954C3AD1B64C2ACE2959AC3A7E295A6E28CA1E28C9014C3B34CE29692793C72E295970F1D0BE28899C3890E324D1DE29692E2959A2DE2898823E289A4C2A3C3AEC3BFE289A5690AE2959A44C39FE2889AE295A8E295993BE295A14AC3ABE294B4E2959A070060E29692C2BF37C6927C72C2B2E296A01FE296A0CEA6C3BAE2959F17CF842BC3B91CC38921E295A7C2B7E28CA0E29482E29599E2959DC389C2AB5CC3A6E29599C2AC59C2BC3068515A414006C2A533C2ACE2889AE29590C2A10B6231CEA304E29597CEA3C3A548211FC2AA7BE295A24AE2959A07E295A4CEB57F5B231FE295A2E2898874257363C3B1C2BD50E28899446942793C6CE2889AE29592E28CA14CE29688E29684C3ADE29692C2AC5EC3ACC3AC7C4CC3ACE288A92334326FE295A9C3A24BE295A1CEA9E2959258E2959AC3A774647F24CEA343C2A3E288A9436B7C4CE295A7C3BCE289A5C2B06BE28CA161C3A87C1FE28C90724D31E29494C3A4C2AAE28C9056E295ABE295AB67E295AB1F7EC2B0CEA6E294B47AE29482C2BF60C692E29691E295986564E29591C386C3A4E29591C386E295AC6DE296A0E294981C34C3AF03C386C3B2E288A9C3AD1E35C3893AE2889EE295A3E2959AC2B1E295A47F4AE2959A070BE28CA07B2CC3A440C2A2E2959F2375E2959EE28CA05872E295A1C69233E28CA10A335A7DE295A0E2959C5251C3AE6715CEA3631E6B69CEA97C1F29734DC3A6E28CA06B403DE282A7110D74C387737538C3A80362E295A32678E294900008E2889AC3A13D00C3894FE294A446C3BA2AC3BB34E289A51139CF84E294AC3ACF8403C3A9E295A777C39FE2889A08E28C9042656BE289A15CC2AC6B49CEA63334C2AAC38655E296926257C3914A1DE28899C389E295933B75E282A70E29E2959BC3A5C3A97CC3AE2A7FE289A5E2959AC3A736E29680474850E295A877C2BBC3AAE29590E28988C3A61A47C3B6CEB5E29690E2949C00E295966DE296886EE29596E29684E296935B12E29591E29590E2959C6FC2A203C3A409CEA9E295A92E07C3B13820E2968C0BC3AC00E29598E294A427C2A3C3ADC3A1C3AC3E24E29693C2A1C396E295AA49C3A6CEA31DE28CA1CF80C2B0C2B7C3B2E295A1C3AD24E295A3CF8407E295A7C3A776E2959828C3BB3EE295A2E2959A47E295A94CCF84C2B741C3AAE294A4E28CA1C2BAE29480CEA3C3B1E29690E295A731E2889A4DC396E295A946C3A1C3B431C3B979287C1F69CF86190AC2BFE28CA1CEB518E294B46DE295A6E29688E29688E29688C2A1C2BD03E295A57520CE98E295914A5561C3B9573254CE98E295A974C2B22AC2BD561CC389E295AC732F33C38737005E0168E2898838C3AA4514E294BCE28CA0324A55E294BC3221005AE29592C3AD1CCF83E28CA131C2A5E29680E2889AE295A30F39220B7D42783CE29595E2959FC39FE2969265421FC3A2CE98C2A32D03233EE2959D211AC3AAC3A036E29680C3A7E2959846133BCE93CEB5C2AC776AE29592E29482E294A4C3A923E29692E288993832CF84C39FC389CEB5E2959FCEA64CCF84E295A3E295ACC3A2C3A55C4DCEA303027B586805E2959A5C50E289885D0E0811C2ACC2AAE28C9017C2BDE29592C3B3CE98E28C90C3A9CF83CEA9C3A4E29595381836CEA3C3A4E29498E295A15205C2BDE2968808E2968012E289A4E295A701E281BF0CE2949437761BCEA95855E29692C3B12214E295A2E295A0CE98E282A7C2B250E295A6C2B218C3B437437B1E62C3B73F17E2948022CF840A3354CEA3C3AE2EE29596C2BC557BE28CA10BE29599E28899E28CA0E28CA14FCF863D49157567344DE2959CE295A3E295913AE2889ACEB1E29498070F1FC692C6922D0F55E296913860C3A60C25C3A60FC3B2E29690CF86E295A615293920C3B4686D7BE2949CE2949473C2ACC2ACE295A7C3BFCEA60519C3BA28E2959B731F1AE2969277C3A6CEB4C3B3E29490E288A9C39FE29592C3877C5847E295A4E2959AE289A5C2B20D1DE2959F5006C2B0E295A828C3AC0F6261422E5C723A6C0A68E2948066E2949075E29692E2968C3E7AC3B7E29594772DE295A71C4BE288A9E28C90E295A9C2B1E295A1C3A6E28C90C2B1C3AAE29494E295A4E2959326E295A927120DE28899E295A8C2AC46E29592E28CA13E6B30C2A56BCEB42FE295A3CF84E28CA07DC69221E295A653CE93C39CE28988C3B219CEA9E295ACE295972B58755DC2A1E295ACE295AC56E295AB0F1FC2A53D58C2A116C3A7CEB4525A1EE295AAE294B409E29692C3ABE2959A64CEB4C3AD1604C3B1C2BDC2B237C2A0E281BFE295A23AC2A0CF845F00C2B0C3B6C387C2BB774B31266221C3ACC38968212E160735C386CE932321E29490CF84C2BDCF84CEA9C3A41A6BCE987564C2A2E29599414A7DE29598E2959D671D0B75C2AA04E28CA12EC3AECE98E289A5E289A4C3A6C3BAE281BF08E288A91A153EC3B669E295A64FC391CE935D4E79C3A9E294A473E2949C196DE29688C3A9E289883920C39C651DE2889AE295AAE295A7C2BDC3BC737B7646E295A3202047C2A1C2B2C3B77F01C3AA506DE296A07277E2959DC2A1C2ACC2BB08E281BFCEA96D70C3AAE2959E422CC3B1C396E295ACC3B2C2B043C2A3C3A60FC3B932E2948CC2BA117B1FE29480E294AC3557E2959F5415E295A6E295AB06E2889932C2A54BCF8374E29595202D2E4EC3BA16E296800704CF83E295916EC2BF63C2B17DE295A00DE28899E2959AC3B2CE983CE289A4C2AC5AC3BA231FE295A3E295A0430CC3A44B2A47E2949CE28CA13DC386CE93C2BCE289A57D573340E2968C1900515555555DE295AB554515E288991CE289A15CE2949047E282A74E4636E29592E29691C3A803E289A5E295ACC2BCE295A4CE98C386E295A2C2BC75C3A1E29594E295992121C3A711C2BBCEA9C3B2E288A96615C3AFE29490CEA3781C19C2B1C389C38510C2A2CF80E289A53D5374E28C90E289A17DE29480E2969326327AC2BA56CF86C2AC447DE295995A5BC38662C2BAC3A97CE295AAE2948CC3B7E29693C3BBC2AAE295A47FCF8679E29690C2B277E295A4E29598CEB4E295A6C3AFE29592E2889AE295AB5767E295AB67C2A2651D78E2959AE2959675120EC3AAE2959FE29593C3B3E289A4430CE29691E294BC0149E296A0E295A13AE2889AE295A653235613C3A20E4BC3A0E28988C3B479474523C3A058C2B07AE2889AE2959B4CCF84C3A6C2AC6839231FC2AB480E3AE2959BE288A95315E295A6E294A4C3AB49E295AB5CE28988613AE28988E28C90E282A7E29592E28CA1E295A0E294ACE28988C39FC3B7CEB515CEA343773E72CF83E2889AE295A8E295A91D32E28CA1C3BA201F76E289A420E2959074C2ABC3B253E295A5E29596E296806A31C2A54B715649CEB51963E294985A3BE295A3E295A0E29597C3BA1F3535354DE295A1E2959B385F3D5CC2A1C39CC3AD1C10E29599016A68E29482391DCEB10A6624CEA33819C2A5031DE282A7CE93C38724CF8359136A190757C3A9C2BA420B5910C2B5E2968870CE93E2889AC389C2B505C3A6CE9303C3AB1DC39109453E4C06E2959CE289A17DE2959AE2959C5331E2959EC3BA201F79CEA61DCEB45905E28CA1C3BFE295A75AC39C13E29599790AC2B738E295A925C3B254C3AFE2959BC2A3C3855307C3A20C0E492122C2A34A6310C3A2717337E2949C4C2E7FE2968CE2959CE295A24E3FC3B46044C3B9CE93E2889AC387C6923C2FE2959B0FC2A268C3864BC384C3AA497FC3A51D42E295A527472237E294ACC3B2E288A923766EC3AA4DC2A022E295985C57E2968CE2959DC3B1C3BA6773432CC2B5C3847CE295AAC2ABE295A6E29480E288993EC2B71C1135E282A7C385E29684C2B521C3B275146AC3B4C3B12B37C2AAE2959567CEA6C3B3CEB5447C77CF80C3A009E29684321BC3AA087DCEB5C3B4E29482E294B4E2959420E295A6E295A7E294826AC3910AE2959370E2959705C39F3908E294900070E295975BC3A22EE289A165CEA97C1FE295A2E295A7E29592CEB1E2889AE295A8CEB105C39FE2959ACF8022390FE2959BC2B7C3AEE294BCE28988C3ADC3AC7CE29480C2BC564409E29594C2A25BC3B2C2AC4910C2B7C3BB2662C2A2CF842C5FE29599E29498C3B4C3B63367E294A4E281BFCF864A685FE2959B7CE29482E294BCE282A707E29480E2949C57772114E2889E33C389C3A7E296841042C2A3E289A5C3BB2AC2A12020430BC3ACE2969205C39F17047C01E294AC06E29494254802E296923045295CE288A917C3A7E289A57D7856E295A412CF80E2889ACEB1C3BCC6927D100BE29688C2B1E296921DC3B9E295A868C3851462C39FE295A6E2898861E289A4E2889954730162E295944F755CC391C3A61D243A0F63CF8364681DE296A022C2B17DE29684132B7556C3ABE294BCE28988111ACEA6E296925D47E29692C2B03E42E282A7C3B21AE289A5C3A6E295974D3AC3A6E29597C6921A22540F1F6C16E2889AE289A433CF867244C2BC15CEA66341CF841EC2BAC3A47A26C3A930C3BCC3A8580501E2969219233E4A04CE9350C3A2C2BAE294BC53014CC3A2E288A9E2949CE295A2E296803EC2B261C39F71C3ABC3ADE29596C3851CE295AB7CC389C3B6C39C36E29680474C3E115FE2959C3003E2959C62E28CA0E29596E289A17DE294807136E2959EC2A3C3A7225F4F5EC2AC7BE2959EE295953669E295A36C367FC2B7C2BA3F78C2A0CF80C385C2BBC2ABC3B9C3AF3AC3B11AE29593E295A855C2AC0AE2898849094DE281BF1F34CEB17D160724E29490E2959E0C700BCE932DE294946D7774C39FCEB160E29693CF83C39FE295912F4A712A07030E2FC692E281BFCEB4E2889A7EC6925E7DE295A7CF86E29599C3BAC3A2E288A9C3A27BC3890FE2948C172F3E24C3B3C3B4C3A03CCF80C3AFE288A9E296881FE2959973C385E294AC1A4639261DE295A323C3B3431DE295A4E282A7C3ADE288A951C3A1C2A3E29599CEA6C386093573CE98C3B9CE98CEB1CEB5E295972948CE98195B3EE2949C4CC2A3CE985B34C3A93CE28CA0C386E295A5E2959FE294BCC2AA48E295900309E295A0E29482C2A1E29590E28CA0E296900BC3B6E2959EE294BCE28CA01CC38679E295ACE294B426C2A26C76C2ACC2B747C3B4C2BBE2959CC3845CE28988C38750791236E29598574EE296801EC3B2C2A24D7AE289883D6AC39C6AE28CA1E2959CE288A95E3FE296A0E2889A7FE281BFC2A5C3A76767E295A6504674E296887CC385E2959BC3A85859E29482C3BA1707643840744BE2949473003F01E289A1421661085D37C386E2968436E282A7E295A779CEB46068456742100BE28C90E28899C389C3A83EC3ACC3A07C48E289883157C2AA732DE28899E28C902117E28C90CF84C389CEA3E282A7E289A4C3A639E289A5C39F65E2948253E294821531CEA373C3A5CF8043C3ABCEA9480AE288A9E282A7C3BB0D27C2BDC391E29692E2968C727B73E2968832E29482E2948CE294ACCEA6E295A6CF86E29691E28C90C3A5C3B24D2B3920C3A2C2BDC387E29596007E09E295A873305EE289A57EE295A929E29595C39CC3B26DC384C3A5E2959440C386E294BCE2968049E289A1C3A7C2A3CEA374746D6AE2959FC6927BE289A47DE295AAE29684CEB4E295A1C2A16625595D2CE29480CEB1E2959154E29482E289A5C3B2631A53C3ABC39CE289A57D73C3866BC3B2C396E29692E28CA1C3BBE29591E295A7C2A34BE28CA12C2DE295A3E296927232E294A4E2959F2506E29599E295A2C3ACE295904E55C2A0E29692CEA34BC2AB23E28C901C0DC3B9E2959CE2959FE295ABC3BB4857C3874CE2959426C3A0E295942502CEA9C2AAC2ACC3BBE295A6E2959122E2959C10E2959B0B32E295A5E28CA1E2959C2CC2B0400A02625EE28C902D000611E2968819C3B1E29692C2AC624947E294906D22012C2B4FC3B13F3E08C3ABC2B5E2889A28C3B263CE93C3AF7CC3B11E1049352723C3BBE29690E28C902116E295A3221453C2ACC2AA4545C2A051CF84C396663EE294902956E295A74A03E2889900C387E294BCC3B3E294987CE289A5C2B1E28CA1E2889A3FC2B7E295A4E2959FE295AB17CF84CEB41ACEB557E29691E2959ACEB150E295AA381D26C3A724C3AFC3B1E295A7C3A9C387C3BF174A0DC3A1C2B53D0D080178E2959612E295935855E29692C3A50CC3A514E289A5301025CEB4221B14473EE294A4E2959E71284ACF80C2B7E2959B4A54E294821AC2B75BE295ABC2AC58E295A26B23C3B6E295A1E29593E295ABE295A2E294BCC3A8E294A44B574CC3962A4FE2959F58E29592E2959FC3A12437E28CA17564C3862F1CE2949857C2BB7A1519E295A3515FC692E29692E28CA10F7946E295A9C3AA45E295A915177DCF83CEB57840C39CC2AA5A3DE2959BE2959B78E281BFC2B147E295AB0F37C2A245057718E295A2E288A93AC3A2E29590E294903E27C2B5C2B0E28988E2959B4CE2889EE294BC0149C2BD5500E2959506C2BF21C3A1CE937B6B49C3A9595BC3B4C3ADC2A2E28CA0E296A0C3A528E289A5E289A4C385E2959FE28C90C2BB54C3AD34E289A4E2959DCEA3E29595C3A6E296931CC2A1CEB4C3A13158C3A07362C3894EC3AC0D38C2BA584E4E72E2959F78C384E289A533680AC3A67DE282A7E294945A4A55E288A9E29598C2B03EC386C2A1E294AC454444151109E2959C5336E2959AE2959EC2B1C3ADC3B6C2AAE2969378C3AF033268CEB40800E2968C007803C3A125C386C2B5C2B170C3B2CF805261E295A6E2959EE2949CE28988441E4E5FE2959160E2959B0FC2A2CF84E2968854E29482E289A5C3B2CF80135971E29594CE98E289A1614277C3B22355535EE2959706E2959DCF86E2948C0839C3A1483E67C2AC3C1DE2948CE2959D19E295A333C2A5E2959F46C3A5C3B6C3A60F67C384C2AAC3A6E28CA1373E0769C385E29490E295A4C2AAC3A5CEA3CF804DC3B2CE983C1734C3BBE295A36D79E29597E2968CE295A2C2AA2CE28CA010246228E29594E2959DC39CC387E295AB5C1C100B1B7EC3A21D09C39F67005EE295A8E29688E28899C3B7C3ABC3A1C385C389C3BA2122E288A9C2BFE294905DE295ABC2ABC3AE2F3CE295943D3F681C53433E48707EC3A1E29684C2BB5C730224E28CA14FE295A3267EC3A8E29693E294A4E2959FC2AC201FC3B7CE93C2BAC386E2959950E2959352E2948CE295A23E17CEA3C3A2C3A9E296A0C3B619E2959D6DE29688C3B776E296886EE295A3656DC391C384E29498E295AC4FC3A6C3890AE2949C77C2BB79C3B1C3A05E1C10C3A615E295A4620BCEB1175CC39F3908E29680CEB5663A24CF84E2949C37C2B7CE9313C2A111604EE288A9633AE288A9E2968CCEB16CC3BA551AE295A0CF86C3AEE2959DC3890F5BE29480C3B36F3C7DC2BD62E29498E28CA00B01725CCF834BE29498E2959E54C396E295ACC391E2889AC2BBE29592E295A7E29598C2BDC2A215CEA3E2949C4EE281BFE29598C3A60FE28C907564E2948C33E294A4E28CA10FE295A12105E2889918CF83C2A5E29690E294BC60E28C9069C2AC66E29692C2BFC2A2C2ACC2AC7CC3AC7A5F72CF84CE9861C3A10BC2B1E29691C2A1C3A945C3BB03511CC389C3A45B45C2A5E28988CEB56C23CF86E295A5C3A72EC3A8E28CA03DE29693733EC3A9E282A76F7A3FCF84C3877CE29480C2ABC3A8C3B271E28CA02909C2B253CE98C2A05C2ACE98C3AEE29592E288A909C3A1064479CEB45FE2959352441B32E294BC5C0D0D3D194D536F1E3D3A7BC2A0E29498E29482C3A7E295AB6767E295A643152CE29680CEA3C3B1C3AD64740C381E5D72C2AC135D18C3ABE29596CE93C38718C3B91B6FE28988C3B4E2948CC386311ACF80CEB4646A55C3A7E29693C3AC0058221F627C1F36E294B4C38714C2ACC3AFE294B4520E60E295ACE2959660C3AFC2B107E2889E1112CF865CC3AC04C3BA4F51E28CA1C6922A4F476CE29690C3AEE295A3C2B50E45CEB5C3A73AE289A531E295933C50C2B5CEB4481AE2889940C387E2959DE29598100BE2968814C3AB44C3B7E282A7C2B2C3B75BE295ABE29592CEA9E281BF7CE28CA1C2B0CEA9E295A4E29498C3BAE28CA1E2948CE28C900A161C367C1707CEA3CEB17CE29691E294B4E295A349C2AB151EC389C3ADC3B70637C2B04FC2B0C3A908C69211E289A1C3AC2EC385C3A7E288A9C3BCE29494E295ABCE98E295A2C3B6C3B92CE29599E295A3C3A5C2A3C3BFE289A4C3A1E294B4C3BFE282A772747D0A7C1F45E295ACE28CA0E2968804E2959EC3A06255C3BAE295A9791E72643AE295ABE295A82BC3913D436BE295ACCF83E289881E6670E295A62C41C3A03E54E28899C2AC1A50E2959B42E28988E29592C2BCC2BC5A4140E2959116E295ABE29596C2A0084C006DE296A01900E294A4E281BFC2B71F3D07E289A10DE289A47EC3A5492A626FE289A5E295A06DCEA3E29692C387E2968458E2959AC3A72DE29599E295A3C2A1E2959DCF800042C2BF1CC2A24D2A04E296923021172EC3AECE982417E29592CE985C3F12C3AECE98C3A0E288A963C39C7262E29590C3A2E295A25C57C2A2C39628C6924834CEA343C2BD1A55C2BC79E295A8E29593E29680C3B65B1262C2A24D1C51E2969239C3A2E294A4E28CA141CEB1C2A3CEB4E288A93D15C3ADC2ACC2BFC2AC68E289885EE29692C3A7C3A97DE296841D1870486C3EE295A7E295A909290E485F04CE985DE2949CE296900EE29490345AE281BF13C3863912301C6263CEA37CE295957C7FC2BCCEA962C2AB7262CEA374C3BF7E5FC2B03EE289A5CEB1E2889A48C3BC3724E295ABE29684C3A529C3AD350A7DC3AD29CEA364C3BFC3B728C3B67720295939CF83C3ADC3A6E295AAE296936CC39C6A7371E296927E7A757576E2959CE294982C6AE2959AE294B469C2AAE281BFC384C3AD1CC38953C2BAC3A451724032E2968C1E76E2959AE2959FC2B1C3B3C2BD41C3A1C3BAC3A112C3A2E29691C2A0E2949018E281BF13C3ADE289A50CE295A4C692E295A4C3890FC2A15C17C2A10A2721C3AAC3A00463E295910BE295A562E29482E294B4E29688C2BCE295A1E295A3542B2AE2959A471AE289A4C389E295A93AC3A9C3867C21C2A2E2948006C3842675CEA3C3BAE289A17DE295AAE288A94D126334C3A4E289A5E2889ACEA37EC3AEC3AB5868CF83C3ADCE98E2948C0CE29690E29680E29596C3B3C2AAC3B3E294BCC3B3E296905C5EC2BC1FC2AB57C3AF43CE93E29596E295A2CF84745A0DC2BDE295A769E29594CEA92A567140E2889EE2949C4BE28CA13BC3A0E295A4C2BC5FC3B6C3AEC3BFE295ACC3AB22CEA62051E29590C3A8110FE28899E29691C3B2C2BBC3A6E29599C3ADE296922147C3AA12E28C90E295A9E295927E4E413EE295A5C3865FC2B03E12E2948C07337F4ECEB5E2959A4D4AC2B2C69233CEA97E77087CE28899CEA9C2AAE2968C3B207CC2A0CE93C3AEE295A9CEB1C3BFC2AB66C2B1C387CF84551CC3891C1BC3A218E29494CF86C39F0C4C60CEA95E1EE295A548C3A0C3AC7C1779C3844CCF8449211F21CEA3C385C3ADE295A47069E29480E294ACE295A17A564E7C1FE2948C720BE289A5C3A6E2959E3C1704E29590E295A7C3A508211FE2959FE294B4C3B3C2AB534FC3B7E2959AC3A7E28CA03AE295A5423E5CE289A5E289A47C7427E295A67DE294AC56C384C3B62D09E2959227C2BAE2959CC3A70FC2BB14C2A576CF80CE9362E2959200C2BF0110E29482E28CA1C3A26CE288A9E2968053E29494CF84C2BAE296804DE295A5092955E29691E2889EE2948C2DC387C2BB00E281BF16C3A476C692C3ABCEB5CF8331C385171DE29691C3AAC2BC3BE295A3E288A9C386C2B2C3A6C2AB2EE2959E11E2959EE29590615CC2A5E2959BCF84222734E29693E282A765E296905ACE93C2B7C2BAC2AAC3B936221FC3BA724D19C692C39F4764C2ABE29490E2948CE282A7C3B9E29597E296A029E289A57D4857E29597E295A9E2959622CE9362E29498C2BCC2A0E28CA04F7EE289A1E28CA0E29498070FC2BB17C3AF3A3417E2948006E29594CEA63B10E295AA4C70C38657E29482C3A8036273C2A325E2959B65E289A173C3873F05C2B0C3A0E29498C3AD1CE295A9253AE295AC0FCEA9E295A617C3B3E282A7E288A9E29482CF83732DCF83C2B1C3ABE29599411D2578E29594453FE295ABE296A0E295AACEA6E288A9332ECEA3E28899CEB5C396E28CA026C3A2E29690CEA6E295A4C3AB7AE2959BC3A7E282A7E288A971C3854E7D512CE295A2CEA6CF80E295A8C3BFE29597E2959A71C3B22F65C2A0C3B1E28CA1E29596C2B27EC2BC71C3B2E295A5E2959FE295933648E295A7E29482C3B67C6DE295A3E29692E28CA157C3BB7FE29691E295A4C3A77FE295A0C3B3E2898840CE93E295900365E295A2C384C2B7CEA377CF864D3E63E295A5E29596E28988E29691C2BA1CCE983DE2949C57C692C2A3C3B7E282A701E295A3E295A05834E28CA1C2B7E2889AE296807BE289A5CEA34FE296A0CEA307C385E295ACE295A75643E295A320E2959B1DC3B1E282A7E2949CC3A229CF8423C2A23CC389CE93C387E295AAC2A1C3A95B023E07E289A119C38717E288A9C2ABE29594E29692C2B03E42513C1FE2959B0F4924E2959F44E295A5CF84E29498C385E294ACE289883172E28CA0296644C39632E295A53B777D72E295996FCEA9C2B74F6CC3A7556BE2948C374F38C39FC2B1486DE295A7E2959A75E288A9CE98E295A8C2A2000673E29688326FE29596CF86E295A4CF862BE2959245E295A8550DE295A6E29480C389E282A7742B3920362BC3BCE2889916C3A45FC3A2CE984B105EE289A5E29688353816E296804760152DCF84C2AC5726C2B2C391733A6C735D42E2959F051DE296801BC2ACC39FE282A723E2968047C2ABE295A300E29692CEA3E28988C2A141C3B45C6D165FC2A10A33E295A3E29590E29482E29598C3AD2CE289A4C2AC5AE295A2C2BF06E29590E294A42AC3BF51E2959BE295A2E296A021CF8064E2948217E29595E2959BE2889AC3B1E29691E2959E53C3B433561E1AC3B7E295A3E2949444555551E295995444E2949CE288A9C2A54FE29598E29693C3AF19C2B2C3BFC3A1E29691CEB4E29482E295990544C3A5E295ACC3AEE282A717521010E2889A35E29498C3A976E295920E763FC385C3A454481FE294A4C3AA045E4CCF86E296A0C3B1E2959A74E282A71BE2968047E295A0CEA6E295991CC396E29598CF84C3A9C3A1CEA3E282A733C3A67B4E0322727E50C3A61F557EE295A9C3B20D734163495FCEB5E296A038E2969358E29598CEB4C3853FE2959B7AC2B7C3BA1F7E747D7EE2959BC2ACC39F5FC384E295960FE294BC30C2B2C38406C3B6E2959002152908C3AACF860221E295980C34E28CA00E197ACEA97C1F5DCF847809E2959B0F5BC3BA24E294BC18C2BBE294BC74CEB512C3ADE29594C3ACE288A9C3BA201FC39F4E74E2959A061DE29597267EC2AB55E28C90C2AAC3A9C3A145CE93E2889AC3AAE295AC74E282A77855E29691C2BCCF834B211F105ECF80C2AAC2AC57C3AD1506C3A6CEA63B6D2B170013C39CC2AA5A3D797CE296A0CEA3C3B44FC2AB1FC2A5C2A52D2BC2B0210A2624CE9334E29596E29480C2AA3CC2BBCEB433C3A803C386C3B42F62E29596C38424C389C3A8107963E289A57D5830C2A1C3AFC3AEC3BAE294A4736F535A3037E2959BC3851835E295A473C3B64FC396E295AAC3B254C2B755C3B3E29592C3BA3E6B524CCF8445E2959BE2959BE2959B29C2B174CEA3E295A9E2898861C2B1565644554544E29693C3B212E29591C2AB55C2A5E296A05CC3ADE2889AE2948CC3B2E2959419496AE289A42B0EC3AAE29590E29692E28CA07475E2959C4D02E295A4CE93E2889A08C3B277E289A57D1EC3AFE288A9E2949CE295A13F2EE29680C3B4C3AA7CC3A4CEA97DE2889EE294A4E295AA46E294827CCEA348447772C3AF284BE295A6E295ABC2B5E295AB70E295A1C2B1E295A3E289A17DC3B675CEA36743C3B6C2B751C389C385C3A6CEA3E28988CF83076ACEA3C3A1C3A0E2889E63E295A942C2BBE295AA0000200049444154214CCF84E28C90E29688246DE295A3E295AC3731E295956DE295A3E2968C6EE29688C3B7E29494C3862ECEA6C3A40C1D166CC2A310C2A205561CC3893C5A05C3876BC3871A0015E2968CC2A25725C3B14245E296907EE289A4E29693C2AB7A2519CF86C38960C3AE776544E295ABE282A7C3A718E2959A0729E289882DE295A6CEA6E29599E2959A7AC2BA161DE295A0E295A1C3B3E29599542A5151CE98E2949CCEA6CF804333C692CF8014C2BD6769C3AE5D4CE29598E2959CC2A02BE295A0CEB176E296886E6F6FE29688E295A2CF832813E29688C3B9CF80C3A6CF83E28CA1C2BDCE93C387E295AAE295AC3E1303740BCEB10DC387C3BBC3ABC385665A10E28C90C389661AE288A963E2959025E295AB447461C2AAE28CA120CEA3E2949CC2AA7AC3BB6B24E294BC751EC384C2A5C692E29598C3890FE28C90E2889AE2959736727DE28CA0E289A47DC384E288A9C3A5C3B40BE295A5C3894BC3A019E295A0741D45CEB5C3A729C3A14AC3962137CEA9CEB43327C2B235100BCE983D23451B195B2EC2B7CF83E288A9C3845154E295AB55E2948258E295987555E28C903BC2BAE295A24E081CC2A5C389511DC3B6CE93C387E295AA6D065B005F11C39F39C3876F00E2948CC2A20B2DCEA343C3A635C2A54273395C7570412C241012CE986847C2ABE2959A47CEB5E289886E2951E2959C73457E525E4739CEA91F730AC2AA10E29498CF84E295A0E295ABC386C3A5E296A053452CC2B56023194D536F1E3D3A7FC2B7E294B4070FC2BBE295A736E295A643152CE28C90C3A032CEA360E28CA0391CC3A76B592DCEB5335812C2B7C2BDCEA9C3AEE29593C3A80362E29599E2948CCF860DC387CF84C2BFC2AC4F41E28CA0CE93E296A0E2889E49231F70C3B607E29597E295A74F3732E288A9C2AC57E295A3E289A47DE295AAE2959AC2B1C39F03490DE28899E289A1C3A6CF80E29591E295946847C2BC252BE295A348CEA92DC2A11746C386136BE2968438E2959975E2959827E2968074C3915A08E2889910C2BB7A150B39E295A8CE93CF80E2959A59C2A0E29598C2B03E72413E62E296883AC3A2E281BFC2B2E295935DE295ABE29592CEA9E281BF62E28CA1CEA3C2B7CEA9E281BFE295A466E29482C2BF030FE28CA164302615CEB5E289A47FE28CA0E2959C0855E2959F2261E2959513E29593E28C90E29596E294AC0362E294824CE29490E296A0C2B716C2A0CEB5E296807D0ECEB153005FE288A96634341958E29597E294BCE2959A1BC3BF22E29680C3A7CE98E289A41CC389C385C3B6E288993262CEB4C692CEA978C38942C2A052E295982FE28988C2B11DE295A4C2AAE2959954721A0AC3A8C2AAE29490C3A715C2AAE289A431CEA332C3A2E28988C2A04226E295A8C3A0CF84C3BACEA97036C2AC045E12C2BB5610C389C3ADE294BCE28CA1CF86C2A0061040C2A27FE295A2E2889AE28899E28CA17FC2B225C387C3B9E28988C3BA50C3ADE2959AC3A76D34E29590E289A5E2889A6CCE98CEA352C3AAE282A726CF843D25E2959BC3855004CEA928E2889EC39FE294BC60E282A733E289A53115C3A5CEA95411C3AF526126C2BB7564E295A53B55E2959BC385E29692C3A603CE98E28CA1C396C3B4E296A0E28C90E289A57DC3B16AC3AFE289A5E296927544C3A1C2B23F5F63483DC3AF6ECEA6E2948CE29592C2B1E29599C2B71CC3896413E295A7C3AF03CE931FC2BFE295AACEB5E29482E295953D2EC2B7C3A6E289A1E289882CE294904FC39C084D2CE2959B0FC2A1C2BF51C6923EC3867C2070C389C3B4E289A5E2959CE29688C3BFE295A458E295A9E294AC184C43E295ACC3BFE289A4C2A3C3BAE281BF184BC3AC26303E34C3BCE28899C2A50BE2968047CEA97629E294B46A5A0C344DE295A1E2959BE29595583FE2959CE295913AE29490E2948C6CC3BBC2BAC3A4C3BCE295A5037038C3B654E296916348E288A9C2B7C3AE477CC396C3A803CE933CCEB47BCEA3CF8068E2959235E295AAE29692C3B3E288A9677347044277E2948020C3845114E29599E295A66BC3AF3C1CE2959BCEB51A45E295A6C3A0E288A92306E289A5E294B401C2B2CEA90B66E295AA32C3AD4B4475C3B1CF834CC3ACE288A9E2949CE29592C2B5C2AAC3A558E295A0C2BFE294AC4CC386C2B74BC2B1E2949020E295A86623C2B1E28899E29590757DE2959E425852CF83E2889A70C3A6E2949CC3A57D34E29592C3A8C3AF32720FC2A31FE2959854E294A45CE2959867C3B917CEB447CEB4E28CA1C3B3E295A27040E2959A61410F0D7AE29592E289A4E28988C3A7E29684C385E29593CEB1E2959A00C3AB24C3B31707E29480E2959CE29592321101CF83E2889927CF86E296841412CEA9774AE2959A4768E294907CE2959F67C384E295A427E28CA1E289A14162C2B2C6923BE29680E2959F54C39CCE93C2B0E29599C3B6C2B556C2BDCEA915237FE2959BC386146D5BC3A863C3BB3AC385E2959A0E5820C3A96411E2969063E294A46328E28C90C2B53427C3B1E288A973CEB5C2B1C2AB4B15C2BC1C4D2A185BE29684C39F1DE2889AE2959758C3ADE29592C3AD7CC2A5CE93E295962E79E2898846C2AAC3847C4855E294BC4A0DE28899303D4F2A37E29480C2BA6F43CEB4C2BAE289A17DC3A4CEB43D37CEA323E296920A33E29594CEA6C2BB3CE296A0E295A4C3890FCF86C2B131E294985CCE98754479E295A0E288A96065E2959FE29684E288993E4C6B28E28CA14A796172CE98C389C2B1E296927F47C396E295A365E29498CF807CE295ABC3BCC3B3E295A7E294B4CEA64244C384E295A4C38964C2A50FC3A154E294B4727C3FCEA616C3A12F00E281BF1A07C3BFC3AFC2B73D63E29597C3B935C2BAC2A30FC2A2E288A96B57C38572C38550C3A4CE9813C386E2959961C2B77D2E55C389E294A423C384C3B6C3A1E296901A7252C2A3CF84C3BFCEB40819CEA9C2BB2CC6922822E289A551E289A53FCEA31CCF8431E28CA04EE2969252CE93E295A011E294983D23C2B7E295A6576FE295A2E2889A33210BE29490E295AC36E281BF1FC3A7E294827C35E2969311766E050171E289A53FCEA616C3AEC2BB08C2B019C38725E29494C3B9E288A92220260FE295972FC39C11E2959A747ECEA97CE295A016E28899C387E289A13CE28CA07DE295A7C3B6E29599614248E295A821676C7EC3AF5C791A0AE289A5C3A6E2959E3CCEA3E2959BC384E2959ECEA9070C365B6A7C4AE29592C2BD6EE288992E150C25E28CA0C3B7E295A101E28C90E289A57D48C384C39656C3913C451470E295A7C3AA7E76E295A2C2ACE29692E29597E282A74FE295A0E295ACC3AF73C3AA40C2BC2FC3ADE2959DE295A7E295947061731EE2959C150424E2948023E28CA1E2959BC384CEA9CF80C389E295A5E289A1C2B5352AE289A521C3A0C2B0483BCEA921E2959D22C39C7C1F29E289A45BC3AEC3BC7CC3B1341EE28C90211FC2B1E295A0591E72633F27773E14C3A1201F633D670E7C1FE294BC262D16E29590C2B74FE296A0E289A4E288A93F7DE289A5CEA3E289A5C2AC692A2942E294ACC2ABC2A076C3B2E296803555E2949C4AE295911507E29480E2889940E295A6E2959DC2A0E295963FE28CA0E28988CF83E28899E295AA2CE281BFE29599E29490E288A9C3B4473DE29680E288A971440E2AE2959B754C6CCF83053EE29490E289A4730939E295A2E288A912E2949CE29490C39CC3B2C3AFE2969064E295A8E2889A5817C3B9E2969272CE981B3AC3B3460C59074752C2ABE294A4E296A052E289A562E2959A210F3936E294B42C12E282A7070AC3BF6F2DE295A3E29692C692C3BA2CC2A060C2A245C3A2493636507B1E48691D69CE98E2968037E29490C2AB76E29498566F5F5B4219E29498E295A254C2B522C2AAE29690C3AEE294BCC3B35EC2A0CEB107E288A9E2959CE289885FE296A0C2B077C2AB2E2EE295933ECF83784DE2969159C3B9C3B4617BCF832A6927C3B138206EC2BBE294BC2D11E2959B04E289A153002FE29591E295AB6FC2BC280A09E295A60B79E2959B14E295A5E2949411E2959EE29590747823C391C2B1E295A7C3A06D56E29688664D1DE28899E2959A236A57C389C38504C2B74153416E725E4725CF84237F1B39E2959BE29690E295A0CEB1C3BBC39F4DC3AB1EE289A14274211EE29684C2B11952C2A3E29595C38603CE93E294A402C2B016E294945760C2B719083FE2959D1FC3BAE29691CF83E2889A18C3A8480C39E294AC7CE28CA01FE295A2E295AAE295AA34733E4278336CCF83C2B0C2B501E29595E289A5C2AB74E2959231E288A9E295A6E295A7E29691CF83E2889A30C3AC69E295A9E295A30012E29592E294A462CE982F2DE295A7777EE294A4CEB52FE295A7C2BDE294AC4C3AC2B70BE295A6C6920CE2968047C2BCE29684C386E295AAC2B7E2889AE2959BC2BB73E295A6E28899E295A8E296907B623874E289A5E295A2C3A9085411C2BC29E295A4031C10E289A574504E7FC3B9442E484140E29684E2968876C2A0C2BBE2968C4DC2A12359C3A1E29592C3B377C3AAE295A853C2BF3CE295ABC3B95E3337423A6AE29598E289887BC384E295AAC2A0C3BF7DE2959808E2969168E2959AC69272CF831442C39FCEA928CF806B3AC2A14C672EE294A41A67C2BF7F413E66E28CA14EE288A96FE294942C16E28CA1C2B7CF80C385C2ABE29690E2889AC39F0F3FE295913A3F5FE294981012C2B72C265BE29693E296932AC2BA737D4140E296845B0D420DC3A102E288A9570249E289A44CE28CA078E2889EC2BAE2959AC3A773144D0BE28899E295A8C38613C3AFCE98E29684C3A5CE98E2968CC3A0E288A96348E29680E28C90E29482E295906AE295A6E295AB663A0FE2968CC2B07D110BC2A16860E2959E1566C3B3C2BC53CF837E4CC3A5E288A92356552AC3B4C3AC4E457FC3B9E2959C2716E289A501CF837725C3B90A7331E296800542E2959954C2BD274F2EE282A77CE28988E29597E295AB57CF8467E295A6C6927A78E295A72EE29592E29693E2959ACEB1E295A1C39648094DC3A7E282A7CE93C38724E2889EE289A112CF864AC2A135E281BF36E2959CC2A27A56C3852BE2949CE295A2E29590E2948CCEB4703EC3B345705CC2B7232527E295A2E296905D077CC6920DC3A6C3A177154173E295AC736252C6922AE2948238652AC692321FC3B908E295A7C3960CE2968047C3A6C2BB6FC3AFC2B5E29494761E73E288A9515A473B1A06C2ACC2ACC2ACC2ABC2BDC39C48E288A90E56C692E2948271403CE295A21D0E47E289A5E296915271405C56E29494C2ABE2959BE289A416E294942D00661A722643C2B03EE295911C6E17CEA323340210C3A87C48C3AC4B68C3A426546F58E295A9197A26C3A4C2B7C3BF4B2E40CEA9E281BF12E2948C725CE29680E295A1E296927233C2B5E29591C384223D6734CEA32316323157E288993172602439C3A6C3B1E29595C2AAC2B5C3AEE295910FE2959A270218E29684E295A2E2959DE2959CE2968CE295A26D6BC3B9C3A0CEB57800E2889E65463F3820E29598E29482205DC2A3C38951E289A542C3A803CE93E294A4E281BFCEA6C3BBC3872F19C2B00F04E2959DCEA6C2AA0109C3ACE289A11BC2B03E54C3BA007DC3A67FC2A2E296A01C7FE295A744C38942CE933323C3BAE29596C3AF7366C3862519E2968CE295943DC2B74409E295A9E29592C389C3B4E2948C1C4709E295A6642E5FE288993951E289A43D0A32114F7EE295A9486241E2968CCF80E2959407183B0764E29597E295A1E28CA13FC2A31E747AC2BFE29691C2A176C3A01EC3A7E294BCE2959EC39F290E48C3865BCF86E295A2E2948C02C2B0392AE296A02908E29680C3BFE2959C6469C2AAC2B1C3B44D4DC3ACCE98E29684E295A13F4058C384C3A054144A4A6F17C3A4441AE28899E295A866C2A2C3A0E295A81CE295951ACEB4E28C90231F73E28C9030C3B47935C2ACE29692C2B751C389C385C3ABE29594C3B9582FC39CC3AA454A3669C3A9E2959AE2959FC3A63C02C2BFC2ACC2BF6ECEA9C2ACC2ACE2889EE296906BE29688E295A9415D0FCEB5CF80193111101E3B33E2959454E294B42A0EC3AAE2889A5224E2948CCF806E241A3920E2959F75281DE295A3C3AAC396E29599E294B4C3AA13C391C3ABC3B2C3AFC3B3C3BC7CCEA31A7D42CE937A4F154119731D651D562AC2B7C3853E3EC3B6C3ADE2889E587B58E295ACE295A22DC3B7E29690135B3E034C68C39C7AC2B2CEA6E295A4E29498E29599E289883F7878E2959C395B1EC2AC60C3A02CC3896347C3ADE295A6E29692C3A1C3BC7F30E281BF2E2923581C10774FC3BF77E295A177CE98E2959A0CE295A37ACEB1E295A57C1FE295A879E2959B511E20C3B4633116E29680C3A7490EE28CA16C380C7B22E2959E5422CE93E2948C72C3912BC385E295A00DE29692C3BF4B0E4EE2889E7514E295A31FC2AA2B1834733EC3B6CEA63C225ACEB43F04C3A6E282A7C2A24DE295A9E29590E2959359CEA9E295A700C3AA51E295ABE29592C2B7CE9362E28CA1E29690CF80CEB4E289A4C2BDE295906659230C5DCEA6E295A6E28988CEA67A61C3A5C3AA064DC3AEE2889E5A0CE295A84EC2A1E289A1C387E295952CE289882D6ECE980D7EE295AC3B26E28CA06F64364649E2959B0FC2A1CF84E296881C0A52C39FE2889A3019285F7DE2959A610C0AE29599E295A3C384E2959DE294AC063CE296903C68E295A61DCEB439C39C5D287C30CF80E2949821E29590E294821529C2BCC2B1E295986C524E7B4F1A36C396CF80E294903874CE9370E295AA24C3A11726E28CA0E2889E1CC385C3B97FE2959BC2A2E295A3E295903F650037E281BFC2B7E295A77FE295A9CEB117CEB17D095E322DE2949040CEA343C2BCCEA9552CE29690C3AEE29692C2B03EC2B7100B38CEA963E289A4E295ACC2B5C2A30BC38932E29599792E513DCE98E296A04161E282A725C2B7C2A27935C2AC7BE289A5C3B2C2B050E29598C2BD5E69E289A4E295A3E294805EC69214691D49CF84E295ACC3A0CEA6E2959019E2949824C2A1C2AC573954E29599E289A5732922C692E2889EE28C90E2949C03CEB4E2889A5D17C2AC527240E296937242E29690C2A5C2AB5BE29591C3BA40E2898858C3A50EE295A309245845E295A6CF84E2889941E2959D1931E288993E5CE294902B51E29590C2BDE295A60E48E29498134D7B15E2949C1EC2AA262FE295A1567233E2959EE295923F77E2959B0F2A6B34C2B773C2AAE295ACE289884119C2BBC3BAC3A6E289A5C3AA1868C39C6A7D71E2959B7EE288A9E295A4C3BAE289A4C2BDE295907A29E294BCC3A46E52CEA650C3A9773BCEB1C3A4C3A1E2959F31394D441FE2959021290EC3AAE295906C6FE296A069E295ABE2959555C3A73963E2969065C3B1E295995DE295AAE295A6E295A513C3B9463E02C396E29593E288A9C2B26F2DE296900C6974E29494C3B14F28E289A5E2949C70E295A73349E295A10A526EE289886FE2959F461AE294A4CF83C3B1C3A850C3AE1D71C385C3B213C387E29691CF8444CF80E2889A50E295A5E29680E2949846522272E295A1C6923357E2959BC3851C6CC386E295A2C2A1E296917B0EE288A978C39F407545E295A6457DE296A0CEB172C2B268E2948259C3BF722F7C17E2959F69CEB47A4E57CE93E28899C39F7B7D4E48E295ABC3AD27C39C33521C10E29680E294BCE294B4C2BF77E294BCE29691C3B7E28899CEA64CC3BCCEB43E06E289A5C39FE289A17C11E29690C3AEE295AA7C1FC2ABC3AAC3A06FE2949024C3BA2F53C2BD0CC386E29690C2BD3A4D39E29692CEA34E45E2959BE295A2C2B75342CE9828E289A4E288992D7C1F69E295AAE289A15CC2BD69393EC3A776677E22C3B3E295ABC2BB6F5AE2968455E294B4C38638C3AE1DC3BA1D7D07C3A1E2959B6A5826E288A979E28CA0561C10C692633033C3A2E296913D4CC3BA19E28899E295A8663A0F645AE288A974C3A9E2889AE296A05EC3A911E2968C161DE29691E28899E2959721C2BA2114E28899E2969149E29480C6924B15246DC2B253431A7241E2959162E295A645CE93CEB4E2959A755D091F64E29598E288993EC3B1E28CA1C3855DC3B22A75CEA34343E288A9E294ACE28988C3A6C2AAE29684E29691CF84101D4AC3ADCEB5C3A9E295A8E295A0E295A0C2BDE29592C3B3E294AC5D42E29595C38562E29598E29482C2BFE2889AC2A3105349E29690C3B1233CC3910AC3BB5FE29688C3A9C2B10B005FE29680E289A43D42360AC3B308E2959AC3A709E29692C389C2BC6625CF8368E2968854E2948009413E5CCF83CEA3507124C3B96A4D3E731DE29482C2A01A724AE295A6775DC3ACE2968CC3A75CE2959FC3A733C2A55F4E50E2959FE295982BC2B7CF832657CEB1390C2CC3BBE29590C2B7E288A9C2A0E2959CE288A9E2959C77E28CA1CEA6E2889EE29591E28C90C2BD0AE29591046E265EC389C3AD05C3B9C3AE312C0EC3AAC3B949CE935B267E0EE294ACC2BA00E2959B06E29688E295AC27E29498E29590E29490E295A12342C384CEB4E29594C3B7E2889A7DC391C3917DCEA3E2948030E2968436E288A9C2A264E29490C3B10DC3A1C2B5C2B5C2A3CEB4C3AD4B72E29482466272C3A823521C11E29680E28CA1C2BAC2A1E2949066E28899C2B51CCF8437CF8352E2959373E2959C16C39C621103E2959EC3B3E28C90E295AB7FCEB46F3D7DC2B75FC2B257E294907B7571E295A3764946E29596491EE288A9C2B76CCEA6E288A94CE295A0CEA6491C0EE295A9152CC69265497403E296903B20C3AEE2898840E295957CE2898820E29498C3B9E2968873E29591664D57E29482C3A5C2AB5E0D5D4772C2B2E296A0C2B1E295A75DC3916C5DC6922B6538E29595E2959F6108E2959227E294A45FCEA3E295A477E29688E288A94BC3B2CE980CE2959233C3BBE296A0527ACF842007C3A9E289A411731D69E2889E5D5AC2B7471A7F36CEA3CEB4C3AB5EE2959C22C3A0E28CA123E295A10E7CE28CA1C3B9E2959B2EE2949C42C3B74E4AE288A93E3953E296916DC2ABC3A777C2A1E295A11ACEB4C39CC2AAE2948CE29597C2B522E295956F315627C69255182EE29594E295A6E295A8C2BD28521CC389486D0BC3B35F02E28CA00508E29680E2948CC2BB1DCE98C3AA05097FC6922C7F766560E295ABC3A840E29480CEA617593846254AC3B6E282A7E2959DE295A324C692C3B97534C2ACE281BFE295997C3D35E2959C73463273C2A35FC2A12B4473E2969249C3AE5923E2959C2CE2959B68E295AACEB1581CC2A05CC39F3E0252E28CA1381FC3BA32C3B3C3B92B58E282A72BC3A9C3872D01E29596E2889A3A58E2889AC38758C3B9C3B4E29498C3A27C30E296805DE295A1CEA9E2959772E28CA1C3B7E28988E29684E29482E296A0C384E295AB0DE296883FC2A0E29690E289884D72C3A7CEA30CC2B26CCF8074E295973E2F441F3EE2889967E295996FE29599776DC39FE28CA02E39E29598E289A44C574B67233714C3B7C3B9E295937F4CE2959C73C3BBCF80E296937653C3891BE2889A39C2ABE295A2E295A5553C0F27C3BF1F7F1EC3B13F74E28CA0E295967E4ECEA6C2B744C3B1E28899C3B2E29591C2B52EC391E28988E28C90C2A310E29688266523E295A16DC2A1E295981E194BC2ABE289A15AE2948CC3AF592CCEA9E28CA1471F5E3DE28899C3A23FC2B0E289A1E295A4E28899E294BCC2ACC3A55D6515C6920EC2A33A2115E281BFC2AB70C3ACE29690C3A803CE93E296806AE2889E1024CEA90F2648CF847CE29595C2AB1FE29680C2A30F5B395AC3A016C3B1733A7CE2959E53E2889AE2968C2D11CEB471E28CA0E282A76838241BE295A3E29692C692C3BA24C2A018E2889920E29590C2A3C3AB18CF80C3BAC2B1C2A35C735634E28CA0E282A7231A4B33E29693153B3FC3BA69C2ACE295927BE288A95DE2959BE28988C2B2E288A93EE295A33A3F0B2224E294A4C2B1C3A5C2B712E295A8E295973AC3B4E295A0C3B2C2BDE2959956C2AB6005C2B0E295ACE28988630936E28988764DE28CA1C3B1E29692C385C3A1117AE29594E29593E288A93DC38564E282A7E288A92C47C3A80F24564EE2959F69C2A0C2B7CEB50DE28988C3ACE295921CE288A9E2968CE2959EE29598E2968047E282A7542E416A727CE29690011FE28899E2948CE295A32AE29692E282A73372E295AC4770E29498E2968CE295AAE289A4CEB16B6BE2959FE29593E29490E295A73E4BC389C2B7C3A0C3AEE2959F1C733EE294A4CEA3E2959FE29690734CCF8404E2969352C396C3AAC2BFC2ABC2ACE295916EC2ACC39C2AC38654C3A561C2AB70E2959217C3AC1DCE931019E2959C1507443DC2ACCEA373C2B0C3A1C3A6C692E288A92AC3A7C3B6E28CA1C3A5CF83E289A443CF83E29480C3AA1ACF837EE288A9C3BB3279E28988C2AA262777E295A3E29692C692C3B46BE295AC47E2889EC2B129E29480C3BF7ACF8051E289A5E295A8C2B5E29692CF84CEB12D0FE2959AE295A26DE29596E296886DE2968872E295AA6DE295922EE288A9C39C07C2A30DE29599E288A9C386C2A1E295945F1C10C2A06DC2BF06E295A8305011E2949075C3BCC3A7E295AB135B32C2A5C3B46B251ACE98C2AC4F43C6924B56E294BC72456CC3A5100BC3ABE296A0E28988212452E295A417CF86CEA6C3B4C3B1E295A46625C2B235C3A6C3A52956E2959C1AC2BD424B2EE2959AC3A7723FE29598C3A6C385E295AAE289A4106AE294825DE295A74EE29692E28CA0E28988E295A11F5A7B58413EE289A5E295A149E296907B28E295962DE29596E29688E2968876E295A6C3AD2E48E29490425DE295ACC3A4C3ABC3AEC3893BE2959BC3B9041B7A7140E281BFE29596C391E2959649CEA6C2B5C3A04BE28988E2968C17C2BA4DE295A6E295A1C2AC542842C3890AE289A521C3A0200DC2B26CC2A2402E614C3511C3A818C3BC0D0DC2B2E295A63DCEB4C396E294BC6E32553B16E289A5116BE281BF73473E28C39FC2B128E2959AE2959F4C6D12551555755D556F59E295A5CF80E2959C08E295A2E281BF1F36E295A321E294BC0149E29688C2B2E29494C3BBC3875F02C2B002E29494E29596C2B24BE2959012E28899E29691C384C3B3E295A3E296904DC3B6422CE294A4C389C38518391D4372C3A5E29690E2949CC2A3720162222BE2959BC2B717E2959BC38534C2B5417B7D6AC3854BC3B17E44433E62C2B16568CF84E2969068CEB41FE29591CF8448C385C3A7C3AB23C3A803E2959F2017E295983D47545F417F06C39CC2AA5A3F7CE2959579E288A9C2B2E289881F5CC2A5C2A52D2BE2889EC386E295A863441DC3A7E29693CF84C2BDC2B2E29490E295A2CF84E288A9477542C3A803CE93E29482C3AE5BE2968412CF80392A7C0AE294ACE295ABE29593C3A7C3A2CEA65134E28C90E29684082DCEA343C2B77921E2959A070D3822C2BCE295A8E2959FCEA3C3B33703E289A53961E2959CCF84C3BBE289A4E294B419C2BBC3BA316C5EC2BFE29595E295AA391FE295A3E29680E29599E295A74D7EC2ACC2BCCE980575E295A7463E0320465DE295ABCEB4E295A6E295A6E28CA17BC3851F5F5C6F364BC2A232E2959DE295A5E295A9E29688E2959810C2B5E2959A1B4B7140E29480E29688CEB4C3B7C3A55F6DC692E29599C3BACF83C2BA00E2959BCEB57DE295944D513267C2AA73E295AB284BE295A01C0BC692173AC3A4795DC3A9E29594C2A32DC3BA23C3A4C2B1E288A9E29680C38471E288A9C3BB04E282A73327CEA323E2959E3D68525847C3AAC3A1E29596E294A47CC3917E38E29688E2889E50C2B25D6DC3B9C3857C28E295A6C2BA4CCF834BE29498650A7C2F73C2BCE29494C3B93BE29693C3B366C2BD494054C69223E294B427C2A0E29597CEB47B07E29480633B7224C2BF38205AC2A1E29591C2B7E294900160E29688E2959BC2B7E289A4CF84047C6B1DC2A52169C2B572E29688E288A96BCF845848E2959C6714C2BF37793EC3B423C3B731C3B9CEA61050723E52C2A2C3855CE295AB51E2959EC2B2C3BF0CE289A5C3A6C2BDE296A039201FE28C90C2ABCF83C3A97CC3AE20C692C2A1E281BFC2A061E294BCE295AAE29482337DC3B1C3A4C3875D6E083AC2A3C2A3CE93C387C3B1E295A5C2B0CF83C6920360E295A8C2B5C2A0E2948CE288A94D740BC3A165E29690E295A71E591EE296847AC3A60FE29688685E6AE2959D19E296922AC385C2B054E289A43AE296A03B57CEA3E2949CCF831EE288A914E288993E42C3AE77413EE295A5C3BF07CE98CF84C3A5E295A9E29594E294A4C2ACC3BB38E289A531161F0AC3B6CF83C2BAE295A9CF8422C3B2C2BD22C396E289A4C386E295914D2AE2959AC3A7E295A6C3BAC39CC2AA5AC2A5C692C2BBE296807BE28CA0CEA6E281BFE295A4E296A00A562BE281BFE295A5C3B73915C2BAC3AAC3A72919C2B2E289A1372D4A0E48460E08E296805F73E294A467C3B47FE28988682E55154A2A3A34066F46CEA97ACF84C3A87C5838E2959549CEA95FC389C38534CF832373C2B2E295A6C2B0E295AAE295942FE295A3436E7B46E2969249E295997BC3B975C2BBC3B2525D57C2BDC2AAE295A378E289A16073E295A1E294982C2BC2B033C3ADE29597E294A4E2949C734C1C2026CE93E294ACCE93C387C3B1E29690C2ACE294827F7A32E2949C0430CEA903C2B7E294B4E295AA6121E294807CCEA3C3AF74E295A031E2889946C3A643C396E295ACE295A178336CE2889A61C2BD77486EC3AAC2A15E36E2959A47C2BF1CC3AB284B6EC3B241C2B5C39CC2BDC3A638C3B4E2898854C3A60929E2889926C3A4C3A234787562C384C38554CEB5502CC2B225733424C3B70CE296884AC3A863E288A91939C3A1CEB56333C2A5E295A6E2948C7CC2B51D711B110844C2BFC2BFC2ACC3AB48C3A2CF83C2B0C3BFE2949CC3BAE295A7C3AD30391C3677E295A8C3BA3926E294BC0109E29596C3A6E29688E29597CE98C3AF55E28CA14AC3A8CE981CC3BB72E2959EC2B5E2889A08E29590E2889960411B50C3B344CF80E2959AC2A25BC2AB465947CF800E7FC39F71C396E29593C2B7C69203E289A5E295A4CF83E29595C3912E7702E295A2CE93C2A52162E294A4E295A02DE295A6C2B110E295A5C38713C3A90107CEA3E28CA0335B44266A69E29690CE93C387C3A4C2BC37E294AC2DE294945FC3BCCEA66F003C30221FE295AC55C2BBC3B1C396E295AC4D707CC2AC7C1FE2959B080A59C384632EE2959A47E295A9E289A573411A24E2889A27E29692C3ABC2B57AC2BA3EC3BB7CCF83C2B157C2BB7A152BC2BA47C39C293C35C2B2E2959F463E24C3B70CE29599E29595CF8362C3B452473ECE93C3B3E2959C3BE295A5413AE295A219E281BFCEA9E29592E29590163A39164357E28C90C384C2A077656108680CC2BACF80E2959555E294BCC3AC085AC3A5E29596E295A0C2B012E294944F00E2959DE29595CF847C10596E5C367C32C2AA3518224F5AC384C3BBE29690CEA3282766E28CA0C39144C2BCCF80CEA93B76E29599E2959142C2BD7D353777E28899E295A9E295A7E29692E295A2E2949829C3857FCEB5CEB4537AE295A7C3A6E295935B1AE29692C3BFC2BD4DC3A8E295940D1463E29590E2959BC2B2C3A656E295A6C2AAE296937002E294A4C2A5C3863E34C3A44618C3B1CE93C387CEA64C3D31C3BF793052E2959EE2959DE2889AE28988767363C3A2C3B9E295ACC3BBC3A5C3AB3BE2959B4FC3BCE29680CF80C3BCE295A168C2B7E2959D4F7F56E29598071ECF80E29498C3B25BE2949CC3BBE288A960E295AB77E2959463C3AEC2AA2AE2968077E29590E295AA7E3F0539CEA3C2B1C2AB6AE2959C6B53C3B2E288A9C2B71C57E29692C2BA36E29498C2B173E2969233C3A2E288A9C2B7C3BCC2BACF86C2A2E29591E296A05ACEB43264E295A7E2959AE2949826E294BCC3B6C2BD612B48E289A15DE29691C2B07B06164DE29482C2B7CF80E29490E28988E2968C271717C2BDC2BDE29591C2AA18E29592C2AA4C391F36CF83774769E294BC01C3A6E28CA03EE29592C3A60FE29599E2948C7145084CE295A7C3B2C3844249CEB4CF80E294AC741E29C2B751CEA3271AE2959CE295A55AE295A6E28C90E28CA173C2ACE289A5C3B2C692C3BAC3847CE29480E2969343C3A43CE295A4472DC2B2531EC385E295A356E2959CC39CE295A9E29690E29684CF86C3BC2C16E28CA1C2B777C2A0E29593E2889A4FC2A0E29597C2A0C3B7E28988C2AB2E2F362ECF8378C391173A393822C3BA0C62E295940109C39671C2B52DC387C2BB40E28CA039C387E28988015CE2959BE29597165D733EE2959ECE93E2889ACEA6CF80E29590E296917DC384E288A9E2898842E28CA019CEA9C3B9CEB4C2B2E2968431CEB5E288A9E2948CC3AE5D2CC2AAE289A410E28899C39C2CE2959B53C2AB7AC39125E2959630C2A5C3A73D3616E295993912C692CF8429CEA6C2BBE295945925E294BCE2898841C3BF2EE29680E2959FC3BFE295A2780C6EC2AAC3BAC2BA574455E295A1E295A60E5172362A7457061872384C0E49E28CA03CC389C3A9C387C3A4E295A15B005F02C2B00F005ECEA6C2B57CE295AA7C5F12E28899E295A872E295A925E28CA009413E52E2959CE294903B46E28CA046E289A46A462AC2B2C6927B3523C39CE2959A18C3B6E2959AE296A038CF80C3B4C2BDE296A029CF842C14CEA323E295AC3B37E282A77C6EC396E29688C3BB5960C3AF1D721A2AE2949CCF8434E289A12277E2959CE295AAC3A4E2959AC3A5E295A23820612BC3A209E2959525CEB1C3A5C3B7E29692330602723EE29591CEB5E29592E2948C20047DC692E295973E572A3FE28C90C2BB42C2A3CEB4C2B25CC2A27BE296807DE2959AE2959F50E295ACC3A7E295A7C2B265E28C90E2889AE29597367263E2968CC3850DC2A563C3ABE2889AE295A2E28C90E28CA0C2A0E28CA07B31CF843BC3A5E2968454E295AB51CEA37EC3BF723BC3A9C2BB62C3ACC3B2C3B42135E295A7E29692E28CA16721C2B24D7AE29597C2B55700C2B2C3B2145DE2889EC39CC3A46DC3AFC396E29596C3B9C2A25CE2959077E294B4E295932FE295AA3F67C2A0C6926651C2A13EE281BFE289A1E295A4C3B43FC2B0C2B20FC2BBE295ACE295A75775E294940B43E282A70AE295A4E2959419E2968014C3AD1D2DE29591531CC389E289A155E295AAE2889EC2A0C3A6C2B27A0A453E7C19E29480E2959FE295A9E28899E289A17DE282A70B3222E294BCC3AB32C2BA28E295A4E295986BCE93C2BA3C5EE295A3E295A9C3ACC2B21C65E28899C2AC49C2B5C3BACEB5CF86C396CEA64F19CEA63D272E23E295AC4C6E4A6DE295ABE2959F4553C2BBC6923E7DE289A1E28CA0E2889AE296807FE288A9CEA9E281BF62CF83C3B403CE93C3B4C2BA311411C2AC2CE2959B37E295A9C2B55B724064C2A3E295951A4758E2959FC2B2C2A30FE296887BC2ABE295A27C17E295A5E2959D197DCEB430764E47E29680E295A7C2AB3C1EE295A2E29591C3A7E29693E29680E29591E29684E2968035E295903DC389E2959FC2B2E295AA54732C427351C3B1E289A4C2A35CC2A02E35E295A3E29692C692C3BA2C3F1AE29680C3A7E2959406C2AAE2959EC3B9C3A6E29597E296A0E28C90C2B17DC3BFC3B7C3AE50C2A562C2B536C3B12637C3B7733C724877CEB16A55E295AB55E2959C58E295987555C3A6CF86C3ADE295A6754269CEB13CE2948CC3A0C3A51C1311E282A7E294AC376378E29591E294BC01116A2D032D1D7C0FC3A6E2959AC3A02B633805E295A9C3A66ACEA3E296A0E294AC06CEB4E295ABE28CA1E29596C2BCC2B02EC3B2E2889AE2969223074D22CE98C391E29590E2959054E29593E295A4C2BFE289A5696C1BC3BFCEA97372E295927F0E4CCF8405E295924F7E7C7677C2B1E295A3E2968CE295A2CF86CF86CF86E295A2CF83C3BB2537C3B15367CF8334C3BCE281BF3837CEA3E28CA06FC3A7723FE295AACEB1C39F160724E294BCE2959E44E29596047C05CEB16700E2959BE28CA1E28988C2BCC391C3A6C385E295A8C2AC58E295A2E288A9C3AE74E28CA0E29594C3B73DCF83C3BCE28988C3A72117E294BC1A72C3AE24C2BDE289A1CEA3581924545E6AE29592E29482E294A4C2B5C391201FC3BAE295A91FC2A5CE983C1672C389E295A63AC386E295A55F4A6FE295A2E296845B62CEB51963201FC391CEA9C3B2C3A17C6E5BE296906EE295966DE295A6E295A02EC3A7C2B0C38972C2A3C2AA6A587DE295A719E295A10A56714042C3845F55E295A105E289A125C3BF7F02CEB145C2B06626C3A07C4058C384C2BBE2969030380230E2959D1712E288A9692EE289886E73C3AE6E31C2B517254C55E29490C3A97CE295AAC3ABC6920A6F0F15C2B2C3B47FE288A90BE289A53157C2A2441555555511C3AAE294A422C3B65DC384C3A5C2A10332CEA3E294A4447542C3A803127A022362627EE295A674E295A33BC386E29498E2969073E29592CE93C2B108C3B223C3BC7C48CF8374E295AACEA67D2AE295A737C3A8E29592E295ABC3851CCEB5E2968CE29591E2948CC2BBE294ACE28988C39FC3B7E2959CE29598C2B03EE294A4CF8366E295AC27C3B3C3847CE29480E282A7C3A750C2A23D15C2B2637356C3A0222863E295AAE294A4E29692CEA343596E06CF80E2949C405D57C2BDE295A6E295A6E29590E29592C3B427C3B90F37CEB4E294BCC3BCC2BB433AE295A968E295A6C2B1E295A4CF8470442FE295A35B1C10C3ACC3B41D333150C3A648E294A4470BE29692C3AAC3AC7C48CF8374C3B1E29494740ECEA62214C3B6E28C90E296A0C391E294ACE295A0E296844C5DE29690CEA9E2959944E2959EC692C3A8E296A06ACEB4327A0078CEA377C2ABC3A1C2B7C3B3E289A5190031C39CC2AAE296903C7870C3B7E294B4E29599E289881E3E3E3B5F4930C3AD33E29591CEB441C6923A13C3A744E289A42EE294BC2BE296844F501FE2959C1507246C53E2959705E295A457E294A4E2968C76CEA3C38748210C43E29680C3B9C2AB52151A3572E295903139C2B23B5BCEA363CEA62A574865151BE2959C53C3853E49232C392016C391E294ACC3AEE29684C2AAC2A34A6E49CEA9E2959AC3A75635C2AC58E289A4C389C2A2E296A05A48651FE29490C3A5C3B1E296A063CF83C692CF836ECEB462E288A9C2A508C6926B06C39CC2AA5A5F5EC2BCE29690E29490E2959B3E7F7C7EE295A2C3B67040C3A516E2959450CE985D5B546434E295A7E29597382021E29482E29680E281BFE288A90CCEB135E29490E28899E2959F3F61CEB1E294BCE2968CE2889EC38415CF86E29692E29590E29692E295A8C3A8166BCF84C2ACE28CA07DC2AA5DE28CA14AC3AF313CE295A92A4D545EE28C9030336FE2959C233DC3A772E295A7E29594C3AAE295A17E72E295983F45E29480424AC692C2A351E28988E28C90E295AA244FCF86CEA9C3A8C3BB4D7D7E79E295A37AE295955E2F341DC389E2959B03E295A569352C5BE296A0C385C386C3A4E282A743CF8037C2A00420062DE296A062C2A00BE2959B2160E29597C2A2461BC3A4C3BC035F26291EC385E295A8E29684C3AAE29599C692E295A1C2BD79E29498E289A57D48E295AB6E2F7C1FE296A0E289A50AE289A521E28988E295AC69E2959AC3B27AE296A0E2959AC2B23015C2A2C3ABC3A57CC3B13E0FE2948CC2B74BCF8368C3BFC3B71E57E29480E294ACE295A2C2A0C2ABE2889AE29693491F5FC2A22471CEB1E295AC3DC2BA24C2BB5B03C3A7C3A8574415C3BC085555354739CEA6E2948CC3A77B5BCF83C3A7C3BFE295A44B127A160E08C2B074C39CC39CE2968CE29480E295A5E296901CC3A0E289A57D684500E2959E463E42723A0AE29680E2959FE29595E295A729E2959AE2959F3CE295AB11321DC692587A17C2B2E289A4E294A44329C2BBE294B45C51E28988C3A9E2959EE2959B0D7610E294942D6FC385CE932214517113E295A3600560E29688E289A4E2968CC2BF684871403C5AE295A1E281BFC3AFC3B4292360E2959FC3A50E62C38769CF84C3BA1031E295A34545E294A478337CC6920321E2959C7D733A4C7C1F2639C3ADE2959A07E295A619C3917B3252473E42E28CA12EE2959A47E295AA3BC2BAE28CA12EE2889AE295A9491CE2889930211BC3B65B6E4CC692C2BC54E295ABC2BA66C384C3A5E29590E296804AE29498C2B7C3BF08E295A9C3894D4A1975C69232E289A5C39FC2A01C3A29E295A3E295A6607EC2B2C2B7C2AAE294BCCEB50A56E2959AC3BCE2969035E295A4C2BF2FE288A9C3A20CC692C3B22B5819E29596E295937EE2959448E289A466E29480C3840CE29480E295A9CE9820C3A7CEA650C39FE2889AE295A8E295995F42E288A9C3A97CCEA3E29592321DC692E2949C19C3877922CF80C3B47B1E002BCEA65BE295A8E295AA79E29498E295916C6F0DE295A8C3B3E28C90E29597C3BFE29594255EC3B3E29599C3A2100F3818433C20043B6E03C3B256C3AD34C3ABCF80E29498C3BBC3BC5F31E289A12DE295992E3DC3A418E28CA06EC3BCC3BCC3AD43355BC2BCE2949C633964C389637AE282A76D153657E2959CE29498511FCEA9C2B0E296842552473D724CC2B2CF80C384E289887548C3842FE295A9E2948070CF80010AC3B24F0EE295A7E2959619131FE2959CC391E28CA0C386CEB5C692E288A93CC3A0E296A0E2959CE295A27CCF86E296A0E29482E289A51E2435C3851DC38408E295A4E295AC11C39F1CE28CA0E29596E29692E295A11C2837CE93C2B0E28988CEB55DC3ADCF8041C384CF80E294B4C3A6E289880CC3ABE2949CC2BBCEA3C2A3C389E296932DC3B3C3AA6B49E29599C2B50BE28988C3A2C3BCE294BCC3B35AC2B2E2968CE29490E2889AC2A527CEB4E28CA1CE935155E295A42119C2A5055E5A5B2702CEA6C2BB7E65C2B74EC3B6561C10C3A6E295ABC3A96F19E281BF1CE294945F03786117E29592C386C3AACEA6E295AAC2BC2BC3AB430A393EE295A7C2B567E29688E295A76211E29480C3B22851E2948CCF80C39C0BC3B3C3A16DE2959F73C3B95FC39CC692C2A1C2A5E2889A784CE2968C266939E295941C696EC2AAE29693E2959ECEA3E2948CC3B369E295937FCF84773F78C2B73FE281BFE28988E294907FC2B2CEB17213C2BD1A16391E126D0DE29490E295A920C3B22B5812E29482E295AC740BCEB10B00C692017802E294ACE294BCE295972FE29490346FC3A5C2BBC2A3E295AA7C1FE2948CE29592C2BC42CEB5E288A90272C3AECE98E29691E2889E0721C385E2889AE29692C3B1203756C2ABC3A9CEB4E2898873E2959C53C6924BE295ACE295A9487C1F6FE294BCCF84E294ACE28988116AE294827DC2A04E5B7F78E2959BC2BBC2AB7BC3BCE288A9E2969013E295A91BCE93232737C384C3A15C39C2BC5CC2A53161C2A24AC3A1C2ACC2ACC2ACC2AAE28C902B473314421C63E295A9E2889900C3A5C3A6C3B4C2BFE295A3200501C3A609326CE294B4C2B005C387E295A7017C63E288A9C3A14A21165AE2959AC3A7C2BDE296903E1BE29690E295AAE2959A47E282A7E295A4155DE288993CC39FC3B955E2889AC2AC496E7AE2959FC386C2BBE281BFC2A3E2949CC3B22BE28CA1E289884C73C2B2CEA3E2959B3EC391E289881C691BC3B9CEA9E282A741C396E2959CE29599317332324659C3BFE295956DE295A3E2968CE29690E295A22DE295A60F4A5FC3A4E29482C3AFC2B1E2959DE295A6C39FC2BFCEB1766DC2BD3820CE981E69C3AA097443C3A137046A795704E295A6CE93C38767C2A263617B3F58C2B71E7A484EE2959F5064E294B4C3B6E289A4E295A477C2BBE295A24FC384E295A7C2B25D1BE294A4E295A5E28CA1E295A8C2AB79C2BB544BE2959BCF86E29680E28899CEA36CC2B0C3AEC2A1C2AAC2A3C2ABC2B1C386C3BF0728E295A7734EE289A55DC692CF802A76C692E29599E295A4CF8470C3AACF837C68CF8364E29595E295A9C3B93E07C2B0C2B56468C3854F5F7F49E29494E2959BC3A0E2959ACE98E295A621C2B1E2949833C3A56C1209E2968824495BE295ABCF847CE29480E295ACE29594C389C3862FC2A54F77227FC2A063E29482C2BF56E295A7E282A73D7AE281BF7BE29490E28988C39FC3BAE289A4E29482550DE28899E2959AE282A76D47C3844BE29596E29692C2BA00002000494441541D13C6920D5EE2959011290EC3AAE2968442C2BF71E2948007CE93164170E29590E29692083D2CC2B7463A7CE295A40BE29599E2959205C3A8E29692E2959323477172C2B5C3B9C3A1C3ABE295A94979E2959DC2AA2A5FE288993905E288994860CEB4E29599E295A57FCEA9C3AA45C38455C2BB38C3BAC2B11D775D2DC39C7AC2B2E296A0E29599C3A74F7FCF8477E282A75E5F5CC2BC5CC386E295A8430C6BE295AB35C2BDE2949C59E29680E2959FC3A2561DC2BCC3860322E2898862E295930035E295972D51C2A237CF80E28CA07B266321E29590E28988E295A4CF8434E29595CEA3E294A448E289A178C3A4E29690E29680C3B2E2959AC2B2C389CE93E29590E289A135C3A163E295ABC3A8C6921BE29680C3A7E29598E29597C2B5631334E28988C3A2E29480C396E295ACC3ACC385E29590C3A0CE983C566EC3854946E295A9C2B7C3A7CEA35848CF83E2889E48CF83C3B368E2948CC3B1C3BF7235E295ACC2AA63E29498CEA938CF804F4455E2968C54C3AFE294BCC3B3E28C90C2BD2A5AC2BCE2968004E295AB753927C2BAE295A85017E2889EC391CE93791607446E41E2949025C2A3E295A3730BC3B1793348E295AA00C3BFE28CA0E2969241CEA34272435C733E72E295944DE295A8C2B5E2889AE295A8C3895F6ACEB427664FC2AA621733E295AB3B67243347C2B253E295AC59C3BF2BE289A5116BE288A9C2A51677123373E29688E295A2E29688CF866DE29688E295A2E295A0CF802972C2A033C2A27BCEA61C63E289A5C3AF032233E2968CE29596007EE29594CEB1E295A709C2B0E295A27F0DE295AA20162EE2959AC3A776E294A4E2959F1421E29691453E4CE295A0CE93E295A24CCEA663E29693E29593E2948CC384C3ABE294A451C3B2C2AB0CC3861BE295A5C389C3A8C2A35CC2BD6969CEB41FE28C901F26C3A42379CEA323E29593C2B7E295A04DC2A0E2959810C3AF5872C3B1CF84445B6E0EC2BF7EC2BC3DE2948CE294A4E28988E2968C7DE296926D79E29597E2968CE295A22DE296803920C39C15266C58E295A7E2889AE2959B63CEB475C3A83A24E294BC01C3A630E2959C15E295A2047C41C3AEE295A7007C0DE296905DE294AC2272452C7CC3A60FE28C9068C3B9C3AF1C2DCEA3433BE2948C52C3B3443AE289A5C2B5E2959E59C3892B6B71C2BCCF8428E295A6C2BAE29684C3A60314C2B2C2A5C3B7C3AE29E295AAE295A2E2968450714DE295A3633C27E2959BE2959026C3B3C3A8C2AC774EC3A9C3AD1D1DC3A848E29688E281BFCEB432145DC69271C3AE434D714044C3BB1F3313E295A260E2948C12E29494E28988674DC3A8C2BA43C3AFE288A9E2949C24C2BA6BC2A5E29688CEA6CF80E295A9CF8061C2BD7BC2BC2856E2959AC2AAC6921AE29680C3A7266221C2A1C3B9E295A7C2AAC3A65B0DE281BF54C389C385E29480731A4CE2959A4770CEB547E2889E79E2969109E295A948E295A94D55C2A0E29684100B29E296A0C3A618E288A9C2A3365753C384686CCEA33C4006CEA9C2AA5A3D78E2969179E281BFE28CA0CE98C3A247C2A2E29590E29693423811C3AD0BC3ABC3A14DE288995D17CEA3C3BA382029E2889A20E29480C2BF785709C3AFE295AAE295956EE294A47343240EE295A821C2B7C2B0E295A9620563C3B673E28CA049537F4AE294A4C2A073E2959B671D275CC386E295A17CC39C4AE28CA13AE295A944C2ABC3B7730AE289A52123C692337C172662C3B43AE29596434653E295ABC2A2E295A6E295A6E29590E2889AE288A93DE295A37C7C761E54C3A5E29596E288A9C384E29591E295A701C3AC2CC2A3C38968C2A1382022CEB4C2A26F41E281BF4B6CCEB4CF8400E2959B75C2BB0A25C3961B62E29482C2AAE294A4CF83E295AAC2B574C3A432C3ADE29688CEA9C2A1E29590742E69E28CA06232C2A5E2889AE2959AE29599442C52E295A94529E2959AE2959FC2BFE289A527C3A77C483F2715CEA346E295A97EC3B1C3A858C2B0CEA6E29599E295A1E295AB69E2959C73E29598C39FC3A4C3B162CEB4623F670CE28899037BE29680C2AB42C2B0CEB50A16C3A666C3B36957C2BAE29597C2A3C3ACE29599E295A7E295917242C3A5C386E295A7E294BCC2A5C3B2CE93C38748C2B01FE29590C2A0E29594005EE289A5C2A27FE29693E295A601313AC3B15AE295A321E2959B0751E29688E28CA1E29590C3BB6BE29490E288A9E288A95C73C2A5C2B51C7DE295A5E295987FE295A9C3AA45413EE2959E7B0F34E294BC4F254A4AC396E295A76FE28C9052C3B2E295A8E29594C3BAE2959D0B29E295A6E296801112E295A2E296843243E2959B0AC3BBE28C90E296930F4EC2A310E28CA07C66C2A203C3B372E295A8290E48406BE29680E281BF63101168C2B17FE2889EC3B902E2959C06E295A8CEB52E614956E29482C3A8C3AB7CC389E294BCC2B523C396E29599E294B4C389472C426BE29594E2959746570879C2B17DC2B018CE98E294ACE28988C3A6C3A7E29684E295A0E2889944E29598C3A6C385E29692C2B537E295AB7514E29591CF8448E29688CEA658C3AA45C2BF3E5DE2889A5BE295A9C2BFE29595C2AAE2968429221F06E288990CE2959875E295A13A3B5F5E3F7CE2959579E295955E2F7C72407C14C2AB060E553634E289A1E295A412E295A8C3AF0312C2B7C2AC52CF8478124027332C55E295904A1AE2889918C2B7E29680C3ADE295A400C3A943E295A3E2959111C3B32F3944C3AB0AE29680475AE289A4C3A6C391C3B2C39CC2A3C3A62D6DC3AEE28CA1C3B4720E1A253866C2A3CE983BC2A57335C2ACE294A4CEA3574D55C2A117C2BDC3A70F1F6EC2ABE295A7364B4D26E28CA0530FE29591CEA978C3BB0DE28988E2959F104B7A21224CE295AC342FE296A0CE9374E2959108C3AEC39CE2949400635FC3ACC3B9761E49CF844B1E1BE28899E289A1CF83C2B130192BE29680C2A30EC3B4C2A3E295AAE2889EE29596E295A272E2959FC2BF595EC3BFE295AC65CF83E29480C39C076DE295A352E295A71FE295A31FE295A4C389C38558E289A43056E29592C2BDE295987356C3B1E28CA0E29593422CC3B1E28CA021C39F31E295A6E29594E29593E294BCE29693E29592E2948C36E295A74F7FE29690C3B47E10550422E2959855E295925455E28CA048C3A8E28C90146F65C3BFC2B028C3B2E29691C3A803223FCF867C1744480DE28899C387E294BCC3BCE2948CE28CA0C396E2959440E29498221F39E289A47DE29480E296931FC2A3C3A1E2969073C2BC30C3B4E289A43A42E282A7CF804353E29597C3A7E282A77BE29592C2BD18E2889AE295AC587A45C2A13C2A70C2BFE295AC3DC3856826E295A2C3841920C3A1656E5B56E29688E295A0E2889A7234C384C3A610C2A26A5826E295A7E295963820CE98C2A206E2959B05E289A10B002F00E29591203EE2959CC3AF25E295940712E289A542E2889AE289A178E295AA222436391DC2AA3EE2948066E29490E295A11DE29680E295AAE28988637D724BC2AAC3847C40CE98C2A5C3BF7AE29592C2BD4423CF80C2AACEA3E295A068E2959A47CEA9E295A31353633AC3B9C2AC7AC3A000E2959CE29591100B297D4275E29599C389C2BD6DCEB462E29594E295ABE295A27961C2B7E29680C2BD78E294BCCEB1376F6E5BC3A4E289A4C387E295AA1CE2889EC2B75EC3840AC2B5E29684C385E295993C10E28CA15615E2959641E29598446F19C2B002C3A1E295A7E2949478C2B12E0A3274C3A125C3BFC3A6C3A518E29592476C734342E288993E34C3BA23C3913248E2948CCF805A2AE295A0E294801903CF86CF8410E289A5C38468E2959E181FC3ACCF8450C2AACF80C69232E29680470E362347E2959CE2959FE295AA3BE29599C2BCE295A556E288A9C2AB6069E2968CE288A9341DE295A8C3A5C2AC61753921E295A45A714064172A03E294A405C39F16C3A4164CE2889AC391E294AC47CEB466E2959A7BE295A2C3ABE289A5E29693E2949C3AE29692795EC3B9E2959DE295996810E2949CC2A3E2959931C3A46EE289A1C3ABC2BCC2ABE289A5E295995D726CE2959FC3AD4F4ECEA6E2889AE294803DE295A40F29E29498C2AA7BE2949CE2959B73C3AC0079527AC396C2B5E295A5571F5311C385E29692CF84E294B4C3B7E288A934E295ABC3A6E295A63CC3AEE295980FC2B5C2B215057AE28988E29680E2959C69C39140E28CA023C3B73C40C2B039E28C90CEA6E288A9C2BDE2959669E295A770E2969223127BC3A5E28C902F3EC3B7E2959A471F5FC3A7C3B402E282A7C3AD65CEB462E29594777D4E02C2B733E295A834E29592E289A5E289887FC2A0E2949C2B000FE2969123C2BDE29593484677E28CA1E295A54C2F41714072E28CA040C3B70BC2BC7E77126DC3A6C3851811140AC2B0C2AB142AC3B3E29692E295936776E29490E29598395032C3B271E2959039CF84C3BA201FC2B26273C385C386C39C6C7B6EC2B74BE2959C0B1A391F73427573C2A1C2AA1573E288A9481B795A2CCEA9E295900F7FC2B0E295A4E2889AC2A0E29599C2A0C2B0E2949C270F1F6C0E0E484C43E2959F1EC692473138E294BC01C3A6C2A371C2AA5B62C2B725C3BFE282A7C3A2CE98E296881D20E294ACE29691C3AF627545697CE295ABC3A94DE28CA069CEA6C3A0CF80C3B47F430809C692E2959AE294A4E295A4E295970F21C2B1C3ABE2969349E2959ACE981BE295963EC2ABC69214C3A6C38550C3A4400B41C3A6462C4EC3A238E28C9046035DE282A7C2BD21474B7F45E28899E2959F48E2959A0121513DE295AAC391C3AE7CC3AEC2A1E294906F445F0BE2889908C3B223C3AC5848E288A93D2E322450346D5BC3B9E2949CC2A101CF8377C3AC013063E2969268E29593E29680E28899CEA3C2B1E2889A7FE281BFE2959FE296807B7CE28899605D0B78C3B2E295A2E295A0E295A4E29598E289A402C3967EC384E29593C3A80322E29597C2BA6DE294B4C2B002E294944F00E2959DE296913720E2959BE295A321E2959B512369E2959B0FE2959028E29592CEA66E6566E289A5C3910D6F2E51E29691E295A3CEA6394AC3A1C2AC34CEB4E28CA1C3B4CEB43C14CEA3633E362916C3A7E29592E296846DC3B76E0CC39CC2AA5A3D79E289A5CEB1E29594E28988E2959BE289A4CEA3E295A4E28899E294983ACEA30AC3BBE295A6E295A129E295A2344C55C3A71F201D31E2889E6DC3910AC3BBE2889ECEB4E29494006E00E2959D06E29691CF83C2B27C51E288A95AC3B4C2ACC3A865C2B7E282A76B35C2BD3EC3B124C3B6E288A9E2949CE28CA03C17C3BA16C3B4E288A943C3A9CE985CE29597C2AA3BCEB157C3A25EE29597CE93C3A86F3F35CEB4E28CA10F1D6C72C2BCC2A10FC39F75C3B1E295AA0FE29688C2AC56C3B64B55E2969150C2A21DE29688E29593E29498E2948C3C292EC2AAE29692C3BFE295ACE2889AC3B7E2948CE29598E29595C2AA4C36C3AB205BC3BC2FC2BA6A54E295A2E295AC4CE2948C36C2A2C3AAC2ACC2AAE28C9016E295A655E29599E2959835C3A6C3A9C3A9E295A2E282A73B39E281BFC2BD102157C3913820CE931E2FE2959278E295A6C3AACEB5CEA9E294B4C2BAE295A9E28988E295A42737C3A4E288A9C3BA54E2959CC386C2BBCE982E212FE29592C39CC2B0C391E294ACE295A078CEB454C2B13934C3B27BCE93E295A3E295A6C3B97AE2959EC2A3100B2A72E29482C39CC2BB71E28CA067C387E29688C3BBE29596E29596E29596CF86E295A265C384050DE28CA1E2968C55C2BDE295A85F256BCEA66A567140E295A5773FC3AA005404E295980C543479E2959BC38521392EE29680E289A4C2A1E295A3C2ABE29590E28988E294B402462966243F546E08C3AFC2BBC3B63E31E288993862221FE28C90E295A6577E4E324CCF84E2948CE2959A44C2ABE289A543C3A6C3BCE28C9022165A7B4F0CC2A20465E295A363E2968854C3ACE2959C59C396E28C90C2A5C3A227E295A7E28CA0E2959C63CF84031D4E48C3B9E2949CE295A4CF83C2BF7441705D4E4E714012E289A4C2A219E295952BE29494E296887FE29691C3AF193DE295A8CE93E2889A28E2959AC3A77F702245E295A3C3AEE2889954C3BF29E2959AE2959FC2BFE295A729E2959A4722E289A535E282A741C3ABE295ACE29688C2A36D12631A362FCF84C2AC60CEA94AC692E29693C3B3E2898855C3BC31392143E282A7E29596CEA604140744E289A51527E2969012E289A12B005F30E289A12DE28CA12E6AC3A55DCEB5C3A054E294A4273437E29480C3A408CEA3C3A87CC2A3E295ACC3A74454E295A6E28CA15021E29594744EE2959A17E2969218211A25223716320165E2889923E28CA1233BCEA3237764451AE28C90C3AAE295A1C3A7C3ACC3B2C3AF22E2959CE28988E29480E296917563CEA3C3ADE294BCE29691E2959252E295A7C3ABC2BC3F33E295966DE296886EE295962D2BE29680E29494CEA963311FE295A9E28CA140C3A70312C3AC27C3B13820C386C2A16A6F017E0EC2AB3E05CEA66BC2B5E2959C0B42C3B1357F0372E295A1C2B03E6CE296A03647CEA323C3A8C3AFC3A8E294AC743EE28CA1792EE29592E29680C2B5C3AD7FC2ABE2959A47CEA9733C47E2959BC385C3A91C4CE2968CE2959311E295A4CEB518C2BFC385E281BFC3B7E29592C2A23E24C3B2E29688E29598E2959FC385E295A2C3BFC3A803223AE289A41533C2B1164CE29596046AE295A3E28988001A3BE2948CE2959927E2968015E28899E29691E29594C3B2E2959A31CF8443E2949C20493F2B07C3B161C3AE0A2BC3AD7FC6927B4E46CE9315664C080765C3A8E29684C3AAC2BBE295A73E19E2948C68C2BC04C3A8C2A3126211C3A8E289A1E2948042C3A8346CC2AA5635C2A1546D7E6A6878C3A71C06CEA9E295915E5EC2A3C2BB1F3DE2959BE2959BE2959D5CC2BB1715CE935479614354E2949CC3A4C3AA44C2B15EC3AF0322E2948C6AC3875111E29595E2959EE2959C24E28CA021C3BA16E29591CEA6C39158E2959A7D11C3B6C3AD75C39C43E28CA0296661C3A8E29598C3B336E28C9055C39FC3A8310F39E295941DCEB4395ACEA95319C69241E2959C2953E2959CE2959FE2948CE2949C72E29482C3A6316D66C384C3B21C27E28CA04EE288A9C3A7C2AA69CEA9E29590C3A2C3A7671F3C7DC2A0C39FC3B4E289A4E289A4552C26741BC2BAE29480C3911A166B1C6CC3A80322C2B7E282A754E295971C10E29690CEB5734068E294900643C3A6061BCF8456534EC69241E2959A05E28899CEA633C39CC3B1205F3A0AC3B22A622115C396C385C3AB5048E296901FC3B7CF860FC3A4E2959E25C2B10A33CEA955C2BB6223507DE2969352473EC3B1E28CA1C6923AE29680C3A7E294A4C2A3C2A36D5D2CC2B263E28CA16304C2B21968C39C6A7D79E296927E7A7D75E296A0C2B0E281BF6CE295924470404C391F2EE29490670B27E29480E2959715074472E29593C2A23F6700E29680E289A5C2A2E29490C2B0C3B6C387C2BBE288A9C3BB626AE2959AC3A7C3AF1CE29599E29591E29482CF8303C39659E28CA0CF80C2A06FE288A9E2968C7A2449E29693E28CA0E29691E288A9C3BF47665755E288A9E2889E420449E2889E0A10E294A402E28CA1203D503F437A10E29494C2A04310233DC2BC40E296A001416FC386E29690053D484F1209CEB570666777C3ABCF86E282A7E282A7C396E2959B5FC2BDE29597C2ACC2BD322332CF807EE289A4C2A25D0E1F3C222B32E295A52FC2B51ECEB5C3A61159CF844315C2AC32E295A5E2949CE295A0E29684E29684E29684E2889E7CC3B7E2949839C2BAE29482C3B7C692C2AC6221795DE295AC6B1CC3ADC2B57B7E68C2B14F25CEA918C2A549E295A35DC2A1155DC3B2E2898814E29690E295A45379CF84CEA6E295A0E29688C385477827E295912BC69202C3913E7811E281BFCE934FC2A0E28CA0E294987FC3B73C3BC3A9E2959266C3A93FC2ACE295AA25E295AA5EE29482E29590785EC3A7C2A3C3B6E29592E295924AE2889AC3A0C387E294A461E2959EC3917F05C38741C3B9C2A0E29599C2B5034E70C3B91604CEB1E29590761F6DC2A03C78E282A76D2A043EE295975CC3A746E29482E289A5E2968CE295A138C3B273E29596E2959BE288993CE29591523EE2948CE29595C3A743E295A6CEB452E2969238255FC3B663C3BBE29688E294BCC3B3C3B7C3BF3E0D2DE28CA0E29599C3B4533EE2948CC2ABCF84E29692E296882FE288993EE295912DC2BACEB5C2A374C2ABC396E295ACE29688E28CA02D790CCF83C3BAE2889AE289A5C396E294B4C39619C2BF08440802E2959253C3A8E2959172E29494E29594E2889A1DC3AD7CE289881B78C3BFC3BFE289A1C2BF2C53097D686B28E295A83EE29692C3BAC3A763E294A46BE294BCC3A95A2AC2BA6E1DCF84E295951B76C384CF833F651F12E295942A5CE2959BC384C2A3C2B1E2959DE295AAE28C90C2B771C2BCE296A021C3AAC2A05017CF8349E2959B0F19474FE2959D7C66000C766C5BC3A8E294AC5B351955E28C9018E2889A06C2A27AC3A4417467280B0E1D0DC3B9E29490E2959D3FE29690C3AA2CC38711C3BFE295AB003E2402E2968C5FC3A4E29597523EE2948CE2959A07CE93E294826B70CEA9CF8477CEB4E28CA05BE295AB0B73573BC391C2BAC38937CEA37DE295A9E28988E295A4E29592733E76E2889A3B5272C384C3BBCE98E281BFC3BFE295A7E2898818E28CA1E295A8C3A6E2948C2FE288993EC384E295974654C3B2E29688C3B7337F2AC396E295ACC6924EE28899444CE2889A5360C386C39C43C3845F1DE2948CCEB1C2AC0CCEA60AE28899E2959F683AE289A4011105C3B1C2A225E295A9307005CEB14700C2BD6D38E295A2E2949C27C3A0E295A232C3BFC3BAE294B477C3851D12E288A95C773FC387E295993EE295AB2BE288993E04796B4BE29688E294BCE295A511E29482C2A50BE295AC73E29684E2959C6F7352E295ABE295A4E294A4E295AC7DCF867CC2B7CF832B455D564E1EE29480C3BA28E295A5C3B2E294AC1113100A01CE98E29684006503220D22E28988C3897C301ECEB5C3B717C3BB53305E76271DC3A5C692625134E282A778C2BBC2BCE2969372E295A95412E29680E2889A4241E29597E28C9025CF80C2BFC2BFE29684C2AACF8644C3A267E29598E28CA01EE289A5E295A9E29688572CC2B0E29494720E1DC3A2C38559E295ACE29692E282A743E2968C761D3AC3BBE295916AE294906FE28899E2959BCF80C2AC6EE295A1C2A3C2B23DC3BFC38974E2968C3FC2BFC3BF4BE29688E282A7C3B4E295ACC391C2B26DC3B2CF84E294824671C3A272C39CE295ACCF865DC2A11145E28988710E735DE294983DE294A4E294987E3C42C2A074E2968C7EC387197C3FE29592E28899C2AAE281BF2C03212E3FCEA63DC2A0CF84C2A0E281BFE29490C2B04700E296A014E29494361C2FE295ABE2889E24C2ACE29498C3AD45E295ACCF833EE288993F7C163D212027C3A800E289887C41E295917851E29688522FCEA97CE29596C3AFC2A5C2BD73E296807DCEA9E296931E513EE2948CE29680103AE294BC72C3855DE295A7C396E2889AC3BB1CC3917FE29591C2BFC3A7C384E28CA00EC2A36AE29598C2BDE2898835E29680E2959F39C2A1394546C2B2E295A3C3BB7F0AE295A7C3B271E295A40BE282A7C2B2E29596C2A0E295907FE296A0CF84C2A0E2949C7FC2A0E29680C2B2CF803FE2889AE29482CF845DCF8303C3AD06CEA323E295A7E2959A5305E281BFE29494C3A7C3BF78437C40E2959118010C0B600C701FC3A13F07E295A42FCEB5E294906474CEB1C3AF5427C2BBC3AAC3856FE2959ACEB5E295A145E28CA1CF864F146DC2A3E29680CF86E294ACC3A7C3B1C3AF727DCEB43AC3A07C1FC2BA5A4EE2968C67C3A523E289885BE2968C763DC3B27C1FC386CE98E281BFC39F386D332FE2959F31731BE295A159E295A7E295A3C2B5C2BC7A6CC6920FC692E28CA1E28CA15433C2A5C6924AC3B1E29490CF80C2AB055BE29592C3A9686FE29693C3B3C3A9E295A250C384C2A14FE28CA02EE29480E28C9073E295A8E2948C46E2889EE295AA1111E295A3E2959858636CE294A458C3A4E2959617E2959C20C2B0C3AF3FC2A0E29482CF84C3B9C3B9E2959CE28899C3A67668CEA9261C2CE29688C3ABC3A63C206701660BCEB10A443F02C2B0C2BB01E281BFE295996E19C2B2E296927C43E295AC31E29680C3A7281F4F671749E2959EE295A4E29594C3B92FE288993E3CE2948C2DE295A9C3A7E295A06DE288A973E29597E295A769E295ACE295ACE29692E295A3C39672321BE289A1E2968CE2968467E294A44B56E295A6C2B0461BC3B90601E28CA1CE93582FC2AAE29599E28CA16030C3BFE28CA117C3AF280A02450FE2959A4E7B37E295A91EC3A55C5EE2968CE295977942E289A5C3BF33774142C3A4C3877432E2889EC3AB01C3B10062640ECE98E29688E295A71B0CC2B7C2AAE295A4C2BCCEA9645E474939793B3845E295ABC2A542E295A2E294982EE295A66DE2959BE295A672C2B07C4267564EE295ABE2959769C3B37C3C6AE28899E288A94DC2AAE289A453576345E28899386E3975E295ABE282A7C2ABE2959E52E295AB11C2B0CEA6487352C2B2E2889A28562C0A7C3E28C2BAC2ABC2A5C2BBE29690E295A409E29597512E38532EC3AE75C3AB4EE29590C39CC396CF86C2AA360200636CC386242674E295A0C3BBC3AAC3B6E295A42EC3AB63E2959C76E2889EC2BC225261C3B6C2ABE2959FC3B4E28CA1446B6B02C391E295986A1DC3A7C3A2E294B46C7A7B3B5FE29690E296842EE2949CE295AB3FC385E295AB71C2BC1DC384770E39E288A94856C3A6E2959979E2969067C2A5C2A5C3851302E295A51DE289A4E29690C2B7C387C2BF7626013ACEB1E2948C4332C2A53FE28CA1E2968CC3B953E29684E2959C692B43E28899E28C90C3B2736EE295A7C39FC3BFCF805CC3B6C385E29599CEA61F3AE295997B10CF83CF80C2B259E2949CC384CF83E289A4716EE288A974E294B469C3AD42E294BCCE93E296A0E28988C3AEE29692C2B17215E2968058CEB4E294A45214C3A4613AC2A54CE29593C2B234E29592C3AB522A50C3A8141161365BE295A77E7A35E2889EC3A761C2AC2F2F2FC3A9C2BDC2BDCE98E2889EE295ABE29490E28899E295917F7535C3AC5F7C781938E295A6C2A324E2948C39661011C3AEE29692C2A324E2959ECE98E29598E29691E29593C3BBC3B4E29598E2959524E295A4C3AEC3B77CE29691E289A4E295ACE28988CF86336EE295A1E2959FC384E28C90C3B1E296A02A07752120674240C3A96C693E56C2AA731FE28CA16DC2A03A1FC6920EC2ABC2B0E2959DC3AB1F40C2A2E2949866E29597E295A062CEB47B0FC2BAC3BFE288A9CF8031E295A6E28C90C2B75E1B67CEA9C2A2E294A4C2A0E295A8CF847FE295ACC396E295AC5B28C2A0E29594CEA3E2889ACEA64AE28899C2BF1AC2A0C3B37CE295982BCF845005E28C906B25E295A9E2959FE29490E296932B6278CE93E295A3C3BCC3B7E295A967C2AAC3AC72017AC2BF50CEA3E295AAE29591C3B6E29490E295A451C2AB58E295AA4CE29692E2959ACEA3C3A67DE294BCE294AC11C3BCC3AEE295A249C2A3C3BFE295A1E29482E295ACE295A5062050E295954E56CF80CE9846E295A30854E296915CE2959EC2BDCEB4CEB4CE9824C3A852E2968CCEB4052A504420C3B3E29688E29688E28899CEA9C3AF2FE296804EC3BBE295A6E295AA7CE289A1E294B465E289A1C2B2E28988C3A2E295920F2F6F26E2959A4EE2959CE2889E1E65E295A9531CCEB5E296A02502C2B131C3B327572FCEA65559E295993BE295A6C3A52E04C3B1E29597E2959C036E67C2BC74E2969213E295A13FC2AAC384753EE28899C3BFE2959739CF84E295914BE29598E29593E295977E6ACF83081E6FC2A376E294987C7A22C2B2C2A01476E2949C45E2889938C3AC77C2ABCEB47C1FE2959F68C2A0E29692C3BA52C2B14352C3BFC2BA5CE2889E5CC2BAE295A1C3ACC3BBC2BD7860C2A1334A5110C2ABC3B4E2959464E296931AC3B1E2948C26C3BC0A02C391C3B602C387E2959474357DE28CA17A38C3AA63C2A12F2EC3A9CEB1E29590C2A2E29594E28CA0E295ABE29490E28899C2AA3F18E295A0C3B4171F7E10C2BFE29590512E63C2BC4B12E2949CC384C396C3AB00C2A133CF83E294AC39C3A7E29597E289A45759E2959C1C27E2948C39C3B9291C5A1B06E289A11CE29494E294823A0FC3A7E28899E295A4260B2E212279C2BCE29591E295ACE288997D212027E29691263B06E2959E04E28CA001C3A400554C1BC3A7C2B77454C3ACC3ACC2AAC396E295ACC39F595FE29599C2A5C3B2C2ABE29482E29590E282A7E289A5CEB5E295933132C3B6C6924A395DE28CA157C2A2C3AF7F57E295A9C3856FE28899E2959FE2948CE295903C75CF83CF80E29684C69243E295AB6AE2889EE28C902B1FC2BACEA927E295AAE295A25F601DC2A0E295A973C39CC3B4E29690E29590E28899E29590C3BA43CF836F50E295A8C3B7E295A7E2959B72616CC2BCE295A10DC396E2949812416DE29490C3B1C3ACC3ACE29599E29480C3A4E29688CEB4E294A4E295A271C2A3CEA6C389194C045AC2BBC3B4CF8364E29693E282A71ACEB4C2BC524A2D16C39FE29693E29680C6924ECF8058CEB45EE295A8532AE2959A08E2959AE29590E295907CE28899E28899176FC2AA61C3BFC3BFE295A6E295A65EE289A1E28CA137C2B2CF83C2BD57C3BA0900C3ACE2889AE2959FC389C3B743E295A7161D53C3B3E2959DCEB4C3AAC3A16AC386C3A8364265C2B72EC3A8CEA3E295A3E296884238CE93C384E294A410C3892EC3A16008E2959562E2959EC385042CE294B4E294BCE288A96CE294821DC3B143E2959EC3A7C2BBE289A5712A0AE29594E28C90CF866EC2A57AE29597CF83C2A3E28CA179E294A4E2889AE295A07D4BC3AAE282A7E295A8E2889AE29684753EC3BA7328C692CEA3E2968C3FC3AF39CF8054E289A565E29598512C76C2B50C06E294A4E295A2C39F6219E2968038E2959F462904CEB47532E282A74C5603C2A16D1A04C3B629170CC3AE27C2BDE29594C2BDE295ABC3BA41C39C5AE29688CEB429E28CA1C2B7E28CA178E289A5C2A2E29490E2889966301C2EE29599171F7E106C7D2BC3BFC3960944E2948C58C3B9E294805B65CE93E2968C1CC391E295A1C39F387EC2BA58C3B1E28C9061002FE295A8E29693C2A3E294807C72C3A2C3A64BE295AA7055E296A00FC2A2E289A45D212067020641132305CEB1185C2302E29593E296A02E4AE2959968565DCEA3E2889A3864C3B92D6FE2959DC69243E2959BC385C2AC3EC3B27C1FCF86C3BBE29599E28CA059C2A36AC3A4C39633C385C2AC7532E295A947C2A23BE295935DE295A019C385C391E2959E52C3AFE289A450C2A2CF866D5BC3A6E294B423C3B273E2889ECF845C352755C2BDE295A4E296A0E295A90515E29490E295973BE2959B166C2DC3AEE295A277E295A9C3A2316EC2BD58E295954D1DE2898815C3AFC3AEC3A8CEB14EE2969270E2889E4044C3A84831E294945BCF83E294AC5ACF84C3B65234C2A2C3A7E295A67E7F3A49126D7AE2959C4005012966C3A1E29680C6922FE29490C2B0E289A5CF8624C3A8E294A4E29597E2959D0CE29598175F5E2DE29680E2959DC396E2889E2A17E2959F522CE29595C391E294B453E28CA1C386545D4B352737E29680C3BC4B1544C39133C3B72B04C3B13B0A1230E295A8C3BACF86C2BDE29684C3A8C3A6E29592C3A06221E295A9E2959FE2959968E29596281FCF84E295A46E513EE29690C692C2B1736EE295A90A3DC2B177E289A55CC2B20D3B2E3F5707CEB177C3A8456AE295ABE295A6557CCF801C3BC391C3A156C2BD6434C2A5C3A503C3BAC2A15141161D0AE295A03C1AC2BBE2959EC2BB5FC3856FE294A4E296923608C3B6C2B7CE98C2BAC39FC2B0377FE289A4CF86603259CEB4171F5E066A13C38447C2BAC3BBC3B454E295976D20C2AC545BC3B924C39CC2A5E295A67C2FC3AAC3AAE29494CEB1E294A463CF8362433E4E29E2948023C3BAE29690E295AC71E2969035797FE295A6186E51E2959EE289A43C12E295A5C3B63C090139E289A57CCE9800C3AEC3ABE295A40710152B206DCEA3E2889AE289A1E2949835E28C90C2A2E288A9CF80E295A8E2968C1DE29680E289A4C2BBC2BAC39CE288A9C3BAC2BFC2B2C3AEC2B7E2959F2F7DC2B7E295A149E29680E2959B2FE295A9E2959F317D4AE29591C384C2A1C3850EE295A97FC3B1C2BF5A67C2BA7C74CF863B74CEA6C2A359E29596C2B26DE295A779C2BAC2AC58C2A3C3862F4A37E295A7C39FC3AD62E29692C2BD4CC389E2968026404E5E0B3616E2959EE29595706B7FE2889EC2B05A64E295A94566CEA6436B1BC391E28C90C3AB36E295A905C391E2948C4649C3B3E2949CC2BC2CC3B3CF832A5E4CC2AAC2BD694640C3AA66E2959970E295A41FE295A0C2BA696A4C2F5041102872E295A0E29595E2959BE282A72DE2959BC2B0CE93CF863449C3ACE29597E2959508CEA6E295994FE296802CC2BBE2889AE294820900C3A2E2959FE28CA1E295A1C2BF1AC2B05CC2B17B2A19C2BCE2959F262868C3AD2D3EE295ACC2B57924C3A42AC3AEE29594E2948C6D1102E295A505C2A0CEA6C2B2E295A5015873C2B7573F327871580EC385C2AC09E2959C2DE294BCCE935C33C2A51FC38555E295A23BE288A9C3AAE289A5715ACF834B5661697F5BCF86C2AAE28988E29691C385E29690E2959FC2BF5727C39C3366E2948254696D57E295A6557CE295A60C4700C2A156C2B168325DE296806451C3BA54102852C384C39647C3BAE29592CEA6E28CA1E295A7CF801B6BC3BF5540E28CA0E289A5CF83CF86CEA66F7EE2889ACF86E295907C11C39617E295A72FE29592361A544664C38734E29590C3B3406D7C2F40E29688E295A0E295A6E28C907171C2BC5DE2959EC2BACEB514C3AF0F71E29690E2959B16E2959F54487CC38458E295924910E295954B3418E295A3C3843BC3B2C3A44B7C40E295AC05C2BCC2A02A7BC3A917E29490E296843EE295910820C2A2E294BCCEA3E2968C5541E2948CE295AC507ECEA6C2AB515BCF833C7654C2ACC2AB23E295A010E295ACE29680CF84C3BA6AE296903BC3A072E29591E2959BE29680E29591E28CA176514EE295AB6B5AE2959FE288993EC2BFE2959077C2A1E295A6CF8450E29592E288A9C2BA1AC3BCE295A7E2959FC2AA68E29482E2968C75E2959FCF83E2889A123D2BE29490E29684E2889A392D36CF835645C39CE295A377C3A12557E2969260635CC3B6E295924030E2959E465AE29688C3AAC3A611C3AAE29590E295AC3F6F15C3AF6D63526DC3BA3431E295A436E295A7C3A02252E295A0CEB1CF832AE282A74FC2AACEB4E29498E2959377633A5DE295A707C2B2E28899546B63C3A25E16C2BFE2959339E2959F6FE296804ECF845F7C793D33E2959EE295915E4FE295A427E294907FE2959CE29595E2959C5D4CC2B14EE295A368C2AC5828E2959D6B77E29599E29594C3871A4C1E6DC3B40D6ECE98C2B72E26E295A07D63E29691CEA9C2B0C3B2E288A9C3AFE282A7CF8403E295A5C2B7C3B32504C3B15B13C3A107E29691C2AC56E29596C39C4CC3AE5D2816CF84C2BF7CC2A36BE295A2E29593536AE295AB39644CC3B9C2A5C2B2E2959F6DE296A0E2889A16E295A4CEA631CF84E295A0736AE29596C2BFCF83E295A1CF8445E295ACCE983606E295A534532CE295A21FC2AB56C2B1703A5DE296805ACEB44CC389E288995A04E295ACE296921B0EC3B9E2949CE295AB3F4F6EE2949831C3B422C2B7E296A0E2889AC2A2C39F6FC2A0C3B7E29597E29688CF832A362FE282A75F06E2968857354DC3ACE295A6C3B6C3AFC2BCC3A82435C2A324E2948CE29692E295A60849C2B5CF80E294B448CEB5C3B6C3AFE2889EE2959138E295A6E295A5C2B2614BC2BCC3ACC3BFE295A7E289A5C39168C3B4C2A1E29596E295A12BC3B44738504140E289A5080AC3B748451E4BC2BA63E2959DC3AA4240E2948C1CE2959C5BCF83CF80E2968CC39C4D00E28C90CF86C3BACF83E29590C2BD480F56E289A4C2AB14C3AFC2AAE288A9E295ABE295A3281FE2959F2AE29490491DC2BAC2AC58C2A37AE2959EE28CA0E2959FC3B729C3A67C1FC391C3A4CF8060E29680C385C2AB7D32E29591C2ABCF8458E295A947E29688E295A2E295A753572CE295A9E2889AC3AF197BC3A8E294BCE296A0CF8355792D366DE29597E295993BE29690E2959C006C2CE294A471C3ADE295A43634E2959EE2959EE2959D17C389C3BBC3AAC3AAC396E29498181B27E28C9009E29599E29480C3A4696A636666222252C3B1E295AAE296925B2CCF80E2889974E295A2E282A7C3BCC3AB41C3A1E29594643D1B0C663363C2A3CF86054A053DC391C2BC75E281BFE289A4C2A2E29594E281BFE295A62FC2BBC2BAE295AC31C3B6227CE28CA0C2B1C385E289A4E29594643D45163A35E295AACEB4E295A02E7C2DE29595C39FE294946BE29693C3A2E294BC0D76E2959DC384E28C9040C3A1CF83C2B70FE28C90C2BAC3AA7CCEA3C2B23FE288A93AC692C3B9C2BBE29592E29482CEA64240C384E2959DE28899E295A4CEB542CEB41B15CEB429CEB562E2959CC2BBE295A9C3A7E295ABC3A1C2ACE29498C2AB53E295ACC3BF2ECF80CEA651CEB47952E295A9077554E29593E296927C0124E29680E2959FCF80E29596C3AF1E4C795AE29688E28CA162190FC2B5E289A4C2BFE2949058446367C2A5E2968826E294B403C387C3AC7261E2959FCF80E29592CEA3C2BA57E2949CE294B467C692E294901D7CE281BFC2B1C2BD5118C2AAC3B7E294BCC3AFC3AF605B50C38666E295A4C3A1E295A2C3A0C2BAC3AB7671C3BBCF8422E295A6E29480C2A509164812C2B24EE296922020C384E295A103E289A12768162EE295A2302BC3B72366CEA9CEB5C3A8C3A037CF860B3ECEB1E2889AE2959F241F7904E2949CC3AD5C0D717BC3A4C3B23DC692C3A064423F7DCEB5E294B416C3A431C38708E29494E289A4C3A7697AC2BFE294ACC3A1E28CA03DC2BBE2889ECEB41B52E28CA15EC692E295A96E58E29688CF863CE294A4C2B26D12E294BC53522C1E33637AC2A572E295977AE29593C386E288A9CF80E2968CE295ABC384C3B2E288A9C3BACE981CE295ABC3B73B7DC2ACE295A3C3A7E2948CC2ABCF84E2959DE289A47DCEA3C2B5E294A4C3A1E29693E2889AE294981BC3BAC2A2C2A0E294905B7B19E295AC3867C3AEC3ACE29596E289A4C3B2E295A42EE295A07EE295AC166222E295A8C2A5C2BBC3A0E295A2E295A4E295A2C2BF343551C39CE2948C68CEB453C3ADC3AAC3B66376C2BD55E29693184F56E29599E29688E29688CF8378345A2EC2BC712ECEA6E2959C23204110286B2D5F5D4D17C6927DE296A066E289A5E295ABE29490C2B77AC3B3E295A15B20532C1EC2B04CE2889E4DC2BF7514C3AF434803C3ADE281BF784FC2A5C2A5E29691735520E29595E2959ECF84E29684C389C2BFE29598C3AC22CF83C3BA0055C3A60BE29596E289A4E295964C0D69E2948CC3A7C3AC273D2120C2A5121018305F11E295A44B10E296A072E294824BE295A432C3A63F242AC3BB281FE2959F29C2A05415C3AF537E1E32C3841EE295A11E513EE282A7E289A1337E6AC3A80523376541E294B4E295A5C3BF2666E295A35A27C3BACF8627C3AF457433C692C3A043E2959FE2889EC3B6C3B320504A59CF84E2889ECEB16671E2889AC3B7E2959064E294A4C3B21EE2959BE296A06670E289A4E28988C2A0C2B1CF8330C384E295A17BE296A0E281BF2220223033E295A5E29598E2959178C3BA4AC3B13BC3A8E294BCE295975729E295972E49C3ACC3AFC3B3E2959859E295A65B1FC3AF322656CF84E29684E289A4E2959C3DC3A9033AC2A51E692055394B375120C39C2CC3B675084013C3A2C2A5C39F7F3EE2959BCEA9C2B7C2B27A5D0101E294B41E0929222B4564E29480E2959FC3BCE295A3E29692412204C3B15B0AE294AC206820E295A6C3AAE282A7CF8307457EE295A5C69246E288A9745B51E296924E2DCE93E2959AE2969223E295A0E294A4E29498E296A073522CC387E29599E2959074C384C3BBE2959FC386CEA3E2889A683AC3A0E295A14348C384CF83E2889A513547E295A5C3ABC3B9E29688753DC385C3A158E29684E2959724C3852814CF84E295A1E295AA552EE295AA38E29593E2948CC3A5E2948CE295AAE295A81AC3B9E2889EE288A9E2889E64E2959B16606D6CC2A3C2AA36E289A4E295A1E295A82601CF80E295ACE295ABE294AC3967CF84E289A46836C2A24773E295A9C2AA511EC3ACC3B9E29599C2A2C2A2E294BCE2968439CF84C3A940E28C902050C3BC31E295ACE296A0E28CA0E2959968C3B7E28CA137C2B2E28899C3BB40E281BFC3B76FE29490C692C3A5613AE29688187279E295A9455152E295967DC6920C05C2A0C2A5E2949C2AE2949CE281BFC3BF51C3B3E2948C20144DE2959BE2959954C3BCE289A12509E29598C387C387E2889E3EE295ABE2959104C3AB3B2020553E1EE295970464C692C3AE141DE295A4CEA91C4240E29591E29680E295A509E296937EC3B759E294B41F232A16C2A55157E282A7CEB41078C3A8C3A8C3A0643AC3B9E2889AC389CF84E289A17E2E696D3E43C2ACE296A0C3AA3273294DE29590CEA9C2A5C2BB453CCF83C3AC62E29692E2959C6C431CE295A068E294A41AE2959C7A351AE281BFC2B1E2959937C3A24FE296A0E289A17AC3B353E2949CE295A7E282A75DC2AC5D1FC3A824316EE295A6C396C386E295AAE295952479CF84534144CEA3C3BF11E2959FC396C2ACE296922D3F49E295A0E29593E295ABE294ACC3A7C3A635CE98E29480535020C39C101ACEB5C3A11DC3A77EC2B5E2889A73E2949802E2968CC3A400C2B0E29598E295ABC3A424C3B25D5FC3B168000FC2B240E2889EC2B567E29597E288995BC2AAC3875465533FC2B0E295A30B01CE9872C2AC66E29693004F000C00E281BF39C3AA7EC39FE28988E29690534DC3B30CE294A4C3B409C2B2E295AAE294986F7DE295A63DE28CA1083355C2B2C2A018C3A845E295927A75E295A9E288993EE2948C1C4B5D2B1F671E55CEB468E288993EE295AC342AE295AAE295A4E281BF60C38515E28CA1CEA9E296A0677EC3A805CF80E29690E2959E3E15C3B4C3A5E295A0553AE29482E28CA0C2A571E295935A176F0BE295A459C3B6C2BF0477151231E29482E29599E2948CC3A55AE29688787B5629494DC3B1531B3318C3967041E295A93A67C3BBE295A6643EC396C2BC26E29596E29596E295A6E2959468E2959D5A3AE2959F1CE2889E387BE289887A4A696DCF86C2A237C3B4E288991F3F7D3BE28899E289887FC2B2E2959204E2949412E294BCC3A8E294BC6ECEB455E295AC1D51E29594E28988E289A514C3AA63392B77513EC3B90CC2A3363270E2889ACEA3C3B1CEA642C3BC60E295A709C3BA280257134250E289881E7C5E5EC2AB2020CEA3413EE296840EE28899E2959AE289A40B292332C2A5C3AE5B2120E2968C4E0306C3A12B10C2B208CEB1C69201C2B0C2BAE28CA177C3B2E2948CE289A5CE98CEA62A4A51E296880BC2B1E29692E295A9CF86E295911EE29594E28988E295A4E281BF7E59E2959EE295A463C3B24F4F29C3AFE2959644E2959C6AC2BAE2959DC3A832C3B7C2A5E294AC37C2BB70C386C39C7918C2AA632228CF84E295AAE29590CF84E295A4603E0F2760E2969152C3B154C2AA58CEA6E294B4607173753D1B07C3BC226BC2A3E2889AE281BFC3AFE2959637C2A0E289A1E295A44F63632D3FE2889ACEB1426DE2949CE295AA6E326DE2968828E295932E4DC3ACE29688E29595C3AEE2949063070472E295A01CE2959FE2959E4561CEA9367CC2B5E2949C1607063D12E2889A6CE29599E295AA3FE29598C3BF6EE2948CE282A7E2969350C2BB6D2A1075C3B2C3A7CF86CF84E295ACC3A20CCF837D5EE289887BE2889EE295A3C3BFC2B5C3A65B1FC3B265C3B9C3896CE29594E2959EC2ABC69248E296905FC2A243441CCEB5E2889AC38974623C0A01CE987629610009E296932858C2B5E2968CC3AAC2BBC3BA7CE294A4C39FE2959951766DC2A579E294A42BC3A0CE93E295AA1166E2948C6CE29490CEA3E2889A38E2889E59C2A35B342DE29680724E3CC2ACE29593C3BACF84E2889A38E29592C2BF515DE295A775CF86E2959853C2A15CCEA36CCEA6CF84E295915AE29684532CC3AEE295A12E01400C70C3BBE295ABE294ACC2B2E29490CF83E29490000020004944415425E295AA2811E29595C2BA58E2959524C3AFE29591E294802E4D6DC2B56BC3BC4C012145E295A95A67C2B5E289A468E2969358440B5244E295ACE296921BE296902EC2AAE29596E2949CCF83C3A939532E7A41C3A1C386E29598E2948CC3B92F6F27E296807E7733E29490E295950854C39C1AE28988E295ABE29490C2B77ACEA91CE295A7C2B1407A29E28CA1C3AD40C3A2CEB40E35E295A8E2959730E281BF7D7361C3B61DC385C2BF4B1CE29591C3B7C3BCCEB1C2A36BE296885220E295A9C2ABC2BD5212C3A816C3A532E294ACE294800DE282A70BE295AB1C1F4DC385C3BFCF831DC692721E04E29480CF86C3A6C3B2C2ACCEA658C38607CEA37C38E2959AE295930724E295A739C2A12DCF83031DC3B6E29599745308275E6EE295ABE28CA148E2959B0F19476758E296A051C3B35EC2A5CF80E294823857CF83E2949CC3BA2CE2948C21260CE29480C3ABE282A747C3A6E282A71051CEB1C2A333E289A45934C3BF2FC3B3290056C3A802C39154C3A1E295A14DE2889AC3A2E28899C3A1E296805F4CE295A247E282A73EE2889AE2889ECF86CEB177C692E2959D1A3BE2959FC2B0CEB1C3A2E282A7222238E2959FC3AA136DE29599E29480E29595C2A1C3A911E2959F7AC3B4C3963B2334C2A2CEB438C3A85217E2959FC2B7CEB5E29591E2959004E289A4270D1E2C371C086DC2B57F3864C3A9E28CA03554E295A3C391E295A77DE2959BE295ABC2AA02E294B40D0C7E5F43E2959DE295ACE29482E289A5C3AB44CF83505FC3BCC2BFE29591E295AC7757C3A56BC384C2BBC2B27C1EE2889AE29480E2949CC3A7C387E2889EC2AC20C2ABC387E29494080139276CE282A7C386C3B3C3AEC3A46CC3BB784673E294BCC3B3C2AB4FC3A76F7DC385C2A5E288A963E29490C2A1C2BA1E5BE2968067E29692C3B97C1FE28CA1E295A60544E2889978C2ACE295A9E2959FE295A3E2959DE29599E2968CC3B65BC2BC58504974C2BFC2A37AE289A57D2D76C3B60BE29690512E685B5FC2AA546C7C30E295A2E2959B17696A23C2A16DE29693C3BA58C3AE17E295A678E28C90E29693C692CF86CF86E2959072321C2DC3B9604005C3A87A3D1524C3ABE29593E296807F3FC2A37CC2A0E2949CCF86CE93CE9322504962E2889EE2959EE295AB62C3A6E29599315B15C3B3283337E288A97CE295A2C2A0E2959CE295A2E295ACC3A81E72C2A5E295A7C2ABC2B721C384E295993E06C387E295A7C3A9E295942DC3B7C3A0C2BBE29692E295AC7BCF86C2ABC2BD4034CF86E2959932CF80E29684E2959FE295ABE294AC37CEA36FC3B4C3AA5AE29597C3AD6FE296887A3E3EC3A46BC2A0CEA6551E71E2959AC3AFC38755C3BB27C3B1E295A91FCEA3C389712504CEA3E295AAE2889A70E294BC7BE294984D15C3AFC2AA1B2DE288A97B14C3B12EE296882FE288993EE282A77EE295A3E2959FC2AB47C3B6C385273DC3BBCEB54806E29592E29595C3B7E296A01411E2959F7A16E294BC7AE29591512EE28CA06C160E16C3AF68062828C39154C3A12848E295A149C2ABC2BBCF84C3A2E294B4E295907C7AE295A40BC3A92435C2B7E295994FE296800E7EC2A0C3A7C692274440C2BB17C2BF38E29593364D0D13111C33CE9348E296882435C3AE77E295A4C3ADCEB11C23C3AE52E29597C2BD586CE296A0C2B245C3ABE295A4E29498E294A4E2949C4F2DC2A003E29596E28CA03DE29680E288A9E29598315CCEB42A014DCEB5E29590C3B908C3B62DC3A80EE294BCC384E2889A54E295A41EC3B7C2BCC3852BE2959AE29480CEB538E28C90CEB46B41283FE296A0C3B6E289887DE29680E2959A57E29597C3A5C692C2BBE295A5E29692C2A0C2B22267E28CA0C2B2CF8055C2ABCEA3C2A00EE294BC47E295915A357CC3A4C38774E295971E3A00130003E295A9E281BF403C373EE2948CE289A5CE98CEB15677C2B1E2948C2FC2BACEB4083345E296A05EC386E288A9C3BAE2889A72C39CC2ABE294B4C2BAC3BB47CEA3E29692E29688E2968052E28899C385E282A7CE98E281BFE29684E29598E295A06DE29596E295A846E295A3E29494E2949C244ECEA34FCEA9CEB5E2889A5A586D2DC2BA001433C2BC3136E29684E281BFC2A3C3B24A20765BE294BCE294AC254450E2889EE295AA26E28C90C3ACC3AEE295A2E2959446342152C3B1C3AE717A360BE2959FE295A655E296930CC3B652E2959E5A7B73E2948218C38546C2BD15C3BCCEB5C3B6C3AF38E295A5C2B7E29597E288A96FE2959E3FE2959DE2959D5D7E70E294985361C3B6E2948CE29490E296A0E29592E29596636451C3B3E295A2E2959B1679C3A8455E47C3B945C3A76AE289A405CEB452C3BCC3A10675E288A90FE296912EE2969373E289A401E29680C39F0EE2948CE295A8C3A4CEA670453954E29599E29595C2BB43E296A0C2A3C2BAC3AD7128CE98CEA3C3A9E295A77CC2B2617C0873C3B2C3B479E295A473E29498C2BB232FCF84471E01E294983FC3BBC3B24742CEA912562120C38548400C0857E295A078096001E295AC57E29592CEB4CF86E2959B75CF86E2959951E28CA1CEB53CC39128396DE295965BE289A57D08E295AC65E295954AC2AAE289A4C3A2C2B53DC2AC51E28988C2ABC2BBC3A06344E29692C396E294BCE29692E282A729C3B3E282A7E29692C2A3E295AC67617FE295A3C3A867040229524AC3ADC3B92426E295A3E2959BE282A7E289886F6FC3B9E29482E296904510E29480E29692E295937FE281BFCF80C2A2E296A01F3F7D3B2505C2B7CEB132E289A4E295A1E29691E29593711C6BC3B9C2AAE29593C3A62270C2B55361C3B4E294806CC3857CC3BCC3AA60C2A54318C2AA36C3AB35C3B4E295A97C2F3227E289A57BE2959B163EE295ACE295A7E2889A13E282A7E288A9C2B1C3ADE29591C3A556E29599CEB4E2948C5425C39C18E29498E2959FE289A5C2A0382413E29596E295A7C39FC3AE2A2767C6927A7CE295ACC3A8E288A9C386E2968CE2959DC3BA4479E295970AE2889E617C53E294B4E29595C3BA3DC3B3C386CF84C2A252C39140C2B0C38453C2AB202854C3BA7D5CE289A5E2959DE289A5E294ACCEB5C3BBE295A123E288A90856E29690E2949065E295A3410E19CEB44240C384E294A42E3208291809011660300854E295A34B58C3B7795DE29680C3892EC3B35E1DE29591E289A1771D61C2AAE295A6C2BCE295A64F55E2969238C2AA6F063A184BC385C3B2C3A7CF8058E28CA1C2A3E29591E289A5C2B158E295A7C39FE296A0C2A3E294B4C3AE3DE294BCC3B3C2AC09E2889AE295A4C3ADCEA65E7F64E29490550033C2BCE295A2E2948C394EE296925124C3AE71C3ADE295A1CEB54EE295A3202272C384C2A1E295932634E2959EC39144C3B11CE294824DC3B4E2889E67C3912830E2959EC2AAE2959959385EC2A1E295A55510C2BF401BC2BD6F6E16CF80C2B178E295A122222845C2AC17C2BF20C3AEE295A5E28CA0E296886F6FE2959E3FE296A0345E3E7BE295930BC3BBE295A6E29480E281BFC3A75FE29680291640E2959B02E294B47B3FE288A9E29680C3BFE2948C230EC2ACE2949418E28CA035C387CEB438105719C3B4E2959BE2959E741305C3B3E295AC11C2A13A0AE29480216A45C2A5E29680710D02CE9313E29593E295A2C3AEC38754C3B25FE29592E296A02A5FC3BCC2AA4EC2B545E29480E295A8E295AB41E29591E295A0CE98E2959CE295AC78C2BF5220E295A9E2948CE294ACE289A10B0BE2889ECEB4E289A15E442E504216C3A85410C2AB201FE2968436E288991002720C3002001700E295987DE289A5E295A455C2AA73C3AB7A756CC3BB29CF83C2A3E2948CE289A4CEB127307174E29598C2A044CF847F0F4DE295A9C2BBC39158E2889EC2A53CE2948C281771C2BCC2BA7162C2B54A51E295A718C3B9E295A066617FE295A14AC2B5E2968864792AC3A120C3AB4D74753DCEB4C38546E295A6E28899E294BC45E295A80BE2949C34E28899C2B21FE29690E28CA03FE2889ACE936AE296900B1405C3BCC3B328E295A536E29592E2959E295270E295AC7118C2AA2E490DE29599E29593E295A1C2A3C3AAC2BC75E2959D0E53C2A224E2959E1101E295ACC2B1E29593CEA629C3AF0ECF8313E2968C27E288A91C6A5D47E29690C2AA3FE295ABE288995D174A40E295A4E295A3E28899E2959124C3A16EE2959C55E2968023C385E2889ACF80123255C39124C3B6E29692C2B03C67E289A5C2AAC3A6C2BB38E2959FE2959AC2AAC3863617E28CA109C3B2E28CA0C3B2C2BDE294983EC6927AC2ACE2959E5FE282A7024125E28988C2A5C2BA74C3A1CE93C396C2B0106DC2ABCEA63FC2AB20C3A045090A7DC3AA49CEB4CEA3430848E28988E2889EE2949CC3BC3001E295990D40E295A4E29597C2A1C2BAC2AAC396E295ACE29688C3A8E282A75527C39CC39F39C2B5E2889A285A6B71403D4F55E296923856E28CA028786CE281BFC3A1C391CF8441CEA6E295AC27C3BAC2A1C3B7E2889A7EE2949061E28899C385C2AB7CE295987BC2BAC2B23272E288A9C2B2C2A2C3BA5C64E295A90701C38461E295907DE294BC421B1BE29591E295A0E295ABCE93E295ACE2959377C3844DC3BBC3ADE296886922C3B34CE29692E29691C3ADE296922EC391E2959075C3A848696DC3B4CE982C1CC2A1E29593CE983A0854C3A153C3BA0737C3AFE295A47412C2AB491102452ACEA62915C2ABE29599CEA3C2A26F07CF8057C2BBE2959EC2BD67E295A72EC3A9E294983C32E29490E296A0E29590772300C2BD4D4377E289A4531445C3BCE2948C35E29690E295A9140BE296802CE29684757317C2B0CEA37E2832C3A5C2BDE295A9C2B1E2968C71C2AB1B39C2BFE28C90CF8039C3BAE282A772536420C2B72A103E0B7BE295922E7F55E2889A0ECE98C3AFE29591C3A4C2BDE28C90025135C3A654457BE289A519E2949C5C315EC2BDC3AEC3B722E294ACC3A41272C386E289887DCEB1E29691C3B1C384E2959BCEA9C3A80FE288992823253EE295A9C3A70F79160272127BC3BF17C2A0E2948203E2969172CE98C2A0E289A503C38745E296A0E29599C3867C1F67C2B774C391C2A327E288993CE282A7E289A17DE295A81945C3BAE2948CE2898830E289A151E295A2CEB5CF83E295A16044E29692C39624C3AB592A45C3BCE2959336E282A7E29590E29593C2B2E28CA13A59101129454A290ACE93E295AAC3A45757E29482E296A078E2959D5E5E5EE28CA0C3A9E295923A493EE28899C2B2E295A7E295AB5F7EE295925FE28CA07A0A1717E294B4C2A5C2BB4514C391566BE295A61BC6920AC38442CF86C386E2959838E294ACC384C2BBC3A075E2959D5A2736490C2B4564C3ACE296883A78E295ABC2B1E295A1E295AA2716C2ACE29480C389C2BF63E29595E29598E288995D1DC38640E289A1E296883DE2898809737A2C05E294AC27E2889A78E2968CC3BA305462E281BFCEB5E2898857C3961A53E295AB29E295A3CEA667C6921DE296A0C3B3637440E288990E7FE29599C3B7CF83C3A6E2889EC2AAE28988CF83E29599E2959B22C692C384E29591E2959B207919E295A8E28899E29494E28988C3AB3DCF84C3A2C2AAE2959FE2969218E2959247E29480E295AAC3A244E295A14638C3A4C3871C014EC2A015C3AA01E29591E281BF6536E29591C3BF22006EE29597E296A0E289A466E2889AC3A6CEB5C386C39117C3A6C3A5E29591E288993EC2ACE295A9792CCF83C3BA68C2AB3E5656C39FC2AA0652557F34CE98E29688E2898845E2889938C3BBE288A944E295997A1FE29597C2B2E2959FE295A914E2959B473E5A523EE289A5150BE295A969327911C3A1E295972851C39672C3A63AE2959F66130DE295A96C7C2DE28CA046E2968C20E2889E2817E29593E29693260239E2959F364D6D68C2BCE295994AC3A6E295A5E28C904D26E29482701CC2ABE2959930CEA629C3B226261D0CC2B5C3BACE986CE2959C56C3A84829C3917AC3BC52C2BD55C3867CC2B2E2959060E28CA0C2B5CF84E29498C2B7E29498E289A4C3AF603259C2BAE29490E28899CF86E289886300CEB41C2A54C3915CE294A4C3B2E295ABC3B3E295A020C2A1E2948CE296926F62C3B6E295AB2102656573E2949C17C3873DE295A9E28CA035E295A97CC2A3C3B9C2BDC3AE2A46E294827C107C403F00C3A72B1D75E281BF71C2AC0CE2889E3263E29598E2898839E28899281065E2898851C3B2670425E2959EE294826FE2968037552A5C0DC3865FCF8438C2A3E288A97B42E282A763C3A73D7E7F48E294A42BE295940372C3A87BC3BF4C0FC2B759E2968CC692E289A5E2948CE295A9E2898871C2ABE295A9E2959F31C692E2959E29C3BBE28988E2959B291FCF84CEB5C2A271C3AEC3B73F01E28CA1E28C90E295A2C2BBE294BC7E1733C3B3484FC386E29598C2BCC3B6C3B3E282A7E2959336C2A3E295A7C3B3CEB4304CC3B944C3B1C3B622054210453AE2959DE2959BC39C5F4FC2BAE295A4E289A5CE9332CEA62DC3B971E28CA0E295974F5E5F7FE289A4CF86E29590CE93E289A532504440186AC2BAE295A16552C3963211C3A5E28C904D33E294BCC3A9E295A2C3A8C3A031C3BB57CEB4E29598C2AAC3AB714A11C3AE7140C3BB38C3B74F0E586009C3A7650F6E1AC3BCE28C90CEA6E294822A63E295A7E2959FC3A1C2BFE289A43DC692C2B7C3A8221555E28CA15BE295A4E29692C2BB2A5F066A40C2B0C2ACC3AE53C692C2A5C2B7C2ACE2959D1165CF86E29688C3855A54CF8419E295A4E29690E2898808E2959247CE93C39C44C3B2E289A56D5F5D0562C2A0E295913A44C3BAC2AB525327C2A0C3AAE295A77B57463CC3A8C3AA2F7BE295A2C3A66BE295AC156563C2ABC3AA64E295A24A32C3A4C3871C7B39E2959BC2B0CF83E296A0E29599E295A67C41C38718E29494E294826C27E295A757E2889968E29693537A6AC396E295ACC385C396E288A9C3BA0DCF83C2B5292B1F55C3A56F17E295A947C2A2E2959B19C38519E28CA1CEA918E2959B25E2968CC2B5E2889ACEB14D0504E296802851E2889957E29680291F0EE29691E2959EC391E295ACE2969226C3A972E2898814C3AF4CC2A120C387C2BC63C2A1E295A1C3ABC2BC654D0ACEA3E2889E3BE294BC22E295993EC3AAC3AAC3A1E295A5E29598E29480C3B46938C3A8221D053D1524C3ABC3AB6F06C3AFE295A47C16C2A155C38929172AC3A160E29692C3AACF80C2BBE294901E0CE29680E2959BC2A5C3A72FE282A75F04E29596C3BA65C2B7E29688E29490C2B261C3AA4CE295A3E295AAC2AC10E2959B4AE2948003656313C3B3E295A2E295AC44516500E29592E29590C3AAE295A02D5DCF84E29688C2B52AE2949CC2ACCEA63846C3B45DCF843A06E295AA632810C3A7E2889EE289A1E2889A1CC2BD293B06C2B5C3B45FC3A93DE2889AE295A1C3AB6F4A5DC6920EE29680C3B755116D1F05E294ACE295ABE29680E294BCE295AB47C3A472CEA9C3B7511CE29595E294B438E289A55558CEA924C39FCEA306E288A9C2A5C2BD41E294947DE2959EC3AA10C38933E295AA20340CE2959B22E295A84B007F09CEB1E2949C772A084AC3AE7F5F65CF801CC3B2C385732BC2A0292B165DC2B577397765CF8309C2B0C3BB10E29592E295954DC2ACE2959BC2B27BE2959B160E51C3B1475AE29688E295A152E295984B5313E295ACC2AAE295A47518C3912B45C3B1E29693E2959D16C3B1E294AC305DE294907D3BCF86E295A7C2B5E295A4CEA9C3A20FC3A9E296907C1EC2BB3FC2B7E2968CCEB4E296A0E28988E296800FC3B9C3B9C3B93DCEA9E28CA1C3B622C387E294A4E295A3E289A4E295A1706AC3BA5CC2BCE295ABE29498E295A7C3A177E2959B16465B5EC2A112C2A2C3B1C3A5C3B22218CF86E295A2CEB4E294982F5A60C387E295A0C2A3E2959750373174003FE29680075F52CF80632CE2889AC3A555C2A1E295A9C2A05057C3BCE289A1314EE289A53250E29597C3A9E296801FC3B340E29598C3AB2CC3A00A32E29598C3A002411ECF86C2ACE289A57DE289A16D5FC3B22F087B4EC2AB0EE29592477DC2ACC3840A55E295A1C2BB2C0F481DCF84E289A44376C6927CE29690C385C2AA4715E295A3E2959E3CC3A4C3A977CEA3C389C2B77C085ECEB4444308E2959A2322E2968875C3B114CEB118C387E295A3E29688C3A2E28CA0E2948CE281BFC2BFE29482C3BA7FC3AAE295A7E2959F21CF83C2B0C3B64F67507E55E294901EE2948CC2B55328C2BA2B05C39F317C4AC384E28C90C2BC1CE295A6E29596CEA3E296A0CF84E29592E295A4C3AD72E2959A061545C3A8E295A9C3B6C3A56D58596B5CCE931CC2A23BCF8342E29597E295A83A6776CEA922CF84586B6D43E29596E28899E296843A36696A4267E294982A452A494D34C2A246C3BA38E295935110C2BF20C3A8753CCEA62F46E289A4451406C3BC52C3BC2252C3BC52E289A479147DE28899CF83E28CA1CEA6E295913FC3855E7C7811E28CA007C3AFC2B0E288A9E296A0CEB5C2BA11C38710E289881DE294ACE295A9C3B33FCF861B360F14C3841CCF83C3A94B26C3A4C2AAE29498C3AEC39F6164E29592C2A574C2BD0CC2BCE295A243E29690365120CEA92803755EC3AAC2AC30C2A155E295A7C3A83C0D765F325545E29480E2948C5620E295A9C2B7E296924E74C2BFE29693C3A0E295A437C3965F59E296803539C384040F024C35C3ACCEB1E295913E0A650B511345CE93C3894010E2959B465719C3ADC2BDE2948251C39FE2889AE2889AE29593E29482C2A30B01392DE28CA0E29691E2959407E295A54D1EC38573E29498E28C907D5FC3B2C385E296934DC3B2E2959F2AE2959F675D7C5FE282A7E289A4C396E2959C4F5440E289A5CEB511C3891D52E29693E289885D76C38437E295A945E29595512EE29593E2959969E295AAC38522E2959C56C3A8E29598E29593E29680220CE29599CF83E29592E28CA1E2889E7AE2959BC3AAE295ABC3B9C3B9416F36C3ACE295931FC2B2CEB5E28CA1E28CA1E295A6C3B9C3BAE29592E29482673DE294BC0CC3A4616AE295A176C39612612CC2BBE295ABE28C904DE295A16145E29480C39662014AE295A175C2BD6562E29599C3AC62C3A66AE295A6C2A239C2B14F1A2C76E2889A512CE295A2E29597C3A26EC3857CC3B62DCEA97577C2B20E3D1FE2968C243A541BCF86E295A633C3B7C3B777C3967DE281BF34C3A8CEB57D3F3B34C3B2E2889E3EE295950AC3A2E2968067C3A7E29680E295AB69E29591C2BF4FE295A97C19CEA9465FE295A96B5FE29498E295AC183CE2948CE29596E296803F6E67C2BC3BC3B61FE28CA1C3ADC3A9E288A91DC38678E295A7676CC3AD62E295A01E4246C3AFC2ABE28C90E2889AE296905525E29590C2BC1BC3ABC2AC0E613964E282A770E282A764E29591CEB5E281BFE2949864E295A169E2968C501002720C5BC3BCE2949801C3BF00740BCEB12F40E2968863026D643AE2898879C3B9C2ACE29690C3B2E295A2C3ACE29691E2959FE295A974E2969066E28899C3A4E29599501AE295912CC2BA0D05C39F31C3B2C3852EE2959FE295A561CF83172B17E294A4C3B9E295AB22CF84773BC2AAE295AA03E294BCC3A9E294986EE289A55768635CCEA61CE296883BC3A8415B5F0B173AE29690281BC3BB75C3862916263BE2959C44040225C3AB0967E2959970142726E2969064E29690C384C2B7C2B2E294BC68E295A3C3AEC3BA20501404C396E29597E294BC6C16C3A55F7EE295921F0E6E16E295A4C3AFCF84C3B9E294B4E29688C2BD59E281BFE28988C2A0C2B1C2BA2132CF8362E295ABE295A7627730E28C90C3A96E517BE295ABE295A4C38462513719E282A7E295A7E28CA1E2959B1166C2AC7EE295AC33C3B6C2A2C2B5C2BD400DCF80E296A0C389363631C2B77CC3B41336C3AB3A54C3B174C2B03E5FC6924CE295A43EE2959FC3A2C2AC0CCEB52AC692C3844315085FE295A5C3AAC3BB0869E29690C3A6E29596C3B33EC2B1E29594CEA94DCEA656C3BCE289A171E2959B6EC3B4C3871C4A38C2ACE282A7291D384714E295903BC3A712C3AF2EC3AAC3A810C389C3B404E2949C00E2959502C39F25C387C2A00AE294943F29E2968004CEB4E294ACC2BACF80E295A469E295AAC396C3B9E2968046E2889AC2B0E29480E295A9C3A6CF847CE28CA03ACEB5E2959A47C3ABC2BB05CF865DC2A229162EC3AEE295A5C3A6312E52C3A87A4962C3BBE2948269741DE2959F3A54C3A8E29598E29593E2968062E2959C4E166FC2BB67C2B2CF832A0D3FE295950CC3A9C2B1245CC2B2E2949C47C2BBC2B7C2BB5EC3ACE295ABE295A7E282A75DC2BF204B6B01C2A1C2A50BE2949CE295981A63592922C2A1C2A1E29688C2B75A10114865E2959D27E29592C3BBC3B9E295A6E295AAC3B169765DC39C1AC3A777E295A945E29498C2B10EC69238E295AA5B5FC3AF43C2A3E29482E295A6E295ACE29592E2889A187F55E28CA15439C3B6C3B92909796DE28C90C3BA40C2B0E295A2E2959055E2889E2AC2B018C38665E28CA1E2889A2A10750CE289A5E2959DE295A7C2BD7C0CC2AC1408C2ABE295AAC2A5C3BAC386E2889AE29594E2889AE282A7E29688E29688C3ACC2ACC2BD40C3A1C3A4C2BC5209C2B1E28C904336E2948CC3A84E56E295980E5F2204C385E296925F47C3BCE29494E29690E295AA3E34E295AA425D1F0AE29680C2A5E28C90433FC2BB730F6DC2B0E295A2C2A314C3A4C3871CE2959FC2A3616411E29691E29593000C6FE29482C3B7E295A2E282A7E2959FC3A2C39CE29596E2969170E29599C3A1CE9838E288A932C385E2959AE296A0E29684461DE295A1E2959749E29680E295A2C3913474CE98E289A4E295A855C2AAE289A473523EC3B76A6354281615E28988C2A2CF846B0164E295A9C3A0E2968C2A17E294A4C2BD5CC3BFC3ACE295A24100C3A6732EE29592E2948CC3A5C2A2CEB4C3B6754EC2BAE28C900DE29498E2969225452A49E28CA07A3AC3AF466962C38620504118C2AA61E294903F1FC2AB56697CC2BA5810E28C90E29594345C7FE296A0CF83E28CA170385A252F5E5C06C2BB5E4DE294AC7FC2B0CEA6E295920840C3A4C3A7E295A9445E5EC3AFE2959D0EE29690E294906EC2BD5C54CF86C3BFC2B72A1075C384151529103E755565E289A16EC386C3BC1A1EE2959E55C396C3AD5BC39140C2B0E29480E28988C2BBE2948CC39FC2BBCF80C3B45047C3BC285307E29595663F54E28CA1E294906FE2889AC3A82674E29680E281BF14750DE288A9C2AA61C3AF51C2B15CE289A5E282A75B1D7F04E29680E2968CE289A52AC3A9E294801EE295A70935CEA9C2B1754CE289887907CEB42E264DE282A779C2A5E29591E296885227E29591220F274744C3A4C3871CC3ACC3A220E295AAE28CA0775EE289A1E2889A0A63CEB4E296846FC2B27D6EE28988E2889A14E28CA1CEA9C2A3C3BA695555CEB41B1DCEA93E7171E2959EE2949830E295A543635CC2BC14E28CA1C386E295AA2C66E29482CEA63A494CC2BF14054AC3A62210C2A1E29593E29594CE93CEA97A76E295A10AE29599C2B0E289A522CEA6C3ACE2959ECEB4E294BC471FE2959CE295917EE289A4661A3E7F7E1118E295A61CC3A5C3AB3526E289A4E295A14853E295A6CEB47562E295A1764E29CE93E29590192C4A53E2949CC3AF65E2959DC3AC224549724FE2969268E29591E296913FE2959AC2BBE29691CF806BC39FE2949C041F5BC3BCC2BF22283ECF84E295A9C2BD3204E288A9E2949000CEA361E294A45719CE9375E289A41EC2B0E2889EE289A1C3B4CF84E289887CC69211E2949C3FE295977815C3ADE28C907A4E75E2948CE2959FC2BF3E374F15C3A4E28899C389E281BF0FE2959B63E29691C2A1CEA66475C3AC4FC3B77C466D19E295ACC2ABC3B16EE296802CC39F754800E295A144620ECE98C3A236C3AAE295A6C3B4C3A510C389CF8021E295AAE281BFE2968CE29688623DE29480CF84C3BAC3840D50677D68E2949C0F20E288A93EE29591E295AC74E29690C3B26253C2BA6F4F2D4FE2959F31C3BA5E75556EC2B1C2B2CF84C2B75AC389477FCEB511C3AF3DE294BC226666E295965526C3AE711167C396E295A3370AE294B456E296927021335B64E2959B1669C39C45C3AFE296931BE294900D4500CE93E29480C2BCC2BAE2948268C3BFC2AA260D0215C3A4CEB474E2968CE288A92FC3A5C39F3AC3ACC3A2E282A75241C389797CC38527CEB4E29592675F5E0FE2959FC3B475C2B7CE93E2889965E289A1E2949CE295A6C39FC2B7CF80C3855F0FC3A629C2BA5B05C3B348E29692E295AA3F0252C3B6E295ABC3B3CE98CEB57EE282A761E2959F25C3A5C3AEE288A92E7BE2959262E29680E29598E28899E295A1C3ABC3A269C2A57C174DE295ACC39FE288A91A61E2959BE29597E295A65CCF803955C3A0E295A1450DCE93533546C2ACC2B7C3A93CC3AE4DC3B720003E0671C2A5232F7949E28CA1E295A908E295A4210A4453C3BAE29599E295AB386FC2BD2EC692E288A9E29592C3ACE28CA056554E55E2968CC2BAC3B1401CC3AF20E2959DC3B9244408E2959A714100CEA6C39FC3A87D4826E28CA036C39C744ECF83765DE295A753572CE29591C3AE7A7502E295A4E294A4C2BFC2AC3DE28CA0E295A8E2959F62CF847367C2A309C3BAE28CA0E295935A4EC3B2C3B320C384E28CA17C36C3ACC2ABE29599E29598E294802AE295A6691100C3A4E295922AC3965F5DE295A7C2BBC3BA284D2E2EC3A9CEB176E29595C39C7FE28CA0C2B1CEB4CEB4C2BDCEB459E28CA0E2889EE2949845C3A132570BC3B1E28C9075CEB430E295A1E29593E29591C3AC0FC3A075C2BD5562C3AE71C38428632944C3A438316EE29692C3AAC2BCE29690281C71C2BCE29596E295A9E294BCC3A7C2BF17C3A0246F327125E2959FC3915062CEA61539C2A336C3ACE28CA15FCF8340E2968424CE98C396E288A94E41E2968C1DCF86E2959DCEB4C2A507E295A4C2BF523A7C140857713F5CE295A867E2959B3B26457937E289A5E2948CCF84C2BDE294805045C2A011E281BF14C3AA2AC3A0091EE29490C2BDC2A2CE98E2948C67E296933DC2AA02E294B407E2959853E2959267757D1ACEA9E29684E29482C385E29490E29594E296921408CEB5CEA6E2948CE2959F3064E282A72C39110272C3B6C3AD450EE2949414E294942DC387C3AA0ACF84C69226C396E295A87DC3AEE294A463E2889A661C4BE28899CEA62AE29680E2959FC3ADCF863EE29592CEA6595D47E2959CC2AC2EE295963AC2BB0555C38972E2948C73E2959CE29595E288A96B61C2A10BC3AC7131332C016AE289885A6664C3A8C3A575C3ADE295A436E295A5E2948CE294BC5BE29680C3AE6D74C2BF38E29593E295A6E294982C1A6A6375C3A154E296915A25E295A67E7F3EC3A842C2A5043D4541C3A1141168345E2F3FC2A0CE937A38C2A545CE98E289A46717E2959C6FE29490E2959C59C2B2CEB5E289886F6E0124E2959AC3B6E295ACE2968CE2959EC2BD1C43E2959D2CC2BBE294BCC3B773C3B2CF806BE295A4CEA36CE2959CC385C39F554604E29595617975C3AE0A1F43E29693E295A911E2968CE2959FE2959F031EC3A551E2968CC389E29595E2959B4AC3A76FE295A2675F45E2949479E2959DC2A36547C3AF7C14C3AA3A19C2BFC2BD7C41C3A816E2959B2A1F221F72E2948CC2AA22E289A15414C3AAC2AA4A425323E295954D07E2889E631BCEB1E288A9CF86312821204FC692C38718006F19C2B0C3BCC38705E295A207C2BFE28C90E295A0E29691E2889EE2948C37CEA3E296847C00E295916EC2A0E28C90C2B7C2ACE2959D2751C2BBC2BFCEA33D28E295A60BC3AB2DC2A07036C3A8E29590CF867AC3B20C16C3AFC2B0466BC2A2646AE294BCC3BBE295ABC3896266E295A10EE29599E29498CEB1667EC2B2E289A5E2959F51C2A0C3B44FE29690E29690E29690E29684C2ABCE9317E295A72FE29693C3AE7900C386E29598E29595E28CA1C2B74EE2969240C38618E295965C26E2959318E295A6C3BC524C2A2B31C384E295A1C2A22F62E29482C3AC2215C3A0C39C015C22E295A6E28CA1CF8073E28CA0E2959A2742C3B42D49C2ACE295966F3015C3A6072A310EC3AF0C4D1FCF80E29691CEA6E289883E0AC3A4C2BBC2BBC3A0E295A6E295A33F78E28CA061E2959251272A205C7562E2889EE2889A2A10C3A47225E294BCE2959F19E2959DE2889EC39615455322C3857AC2AC1408E29680CF8455C3B248E296912C3A595D67C2B5C2AAC3A4E2949CC3A708E294B4E289A4C2A538E29480CEB127E295A7E288A91D4A7A1EC2A200C3AA02211002722204C3A4C39628C3A0731100E289A470C3B72B523EE2948CE295A974E2969065E2959BC3AEE29693E28988E29596C2BDC2BCE295A45DCF83E2889A68525EE29592C2AACF802945E295A76AE29690670FC3B2C3AFC3B3CEA650CF83046257E2969230E29593E294BCE2959AE294ACE29691C386732E31E2959E45E295A0E296914474C2BA1858E295A6E28C90313664E296912322E2969376CF807BC39FE295AA22C3B42E14C3892917C3AF453C1C4FE294ACC2B1CF86E2959072C386E2948026CE98E28CA1C3B6026DE288994756C2B564E296935E7DE28899757FC2B0C2BD5F7F37C2B7CEB5E29597E295A404C39662E29692C2BB5014C2B2E2959D6FCEB1CF8667E288A956447711E295A1E295A9C3AEE296937DCF80E296916EE295ACC3A2320252C3B750E295A976E296937D08481305E294ACE295ABC3AA2AE29688C39FE295A7E289A46DE289A1696715C3A26FCEA96BC3BCC3A9C3B7C2B03ACEA3E2889AE28CA0C3B90F01E28C90E2948C053A54C3BCE289A135E29691CEB428714D0C6FE29598E295957F5F02CE9353E295ACC3AD6150C385C2A14074E28CA17D5120044240E295ACC39CC3A23007002E18C396736A7DC3B4E28899C3B6C3B2C385C2BA547E1BCF863B25E294BCC3A9E29591E295A3E2959F3AC384E2969039C3A8C3A0E295A136C3AC223DE295AAC3A4C3BA0DCE93584F16E289A4C2B07AC3BA5CE28CA0C3B6520A202C16C2B1CEA3E295913FE295974EE295A1E295A4171741E295A81F2C271F7DE28CA0C2B7CEA976E295954A5E3CE2949008C3AAC3AA1840C39C1A5EC2BB53E294825EC2BA76E2959C4EC2BC35E295A02AC3A16DC3A8E29597C3AE361121C384E295A1C2A52F223BC2A24516E288A914C3AF5DE2949CE295A027C69243E296904E31CF80E2959BC2BB05C3B7E2959A4915E2969228E2948CC39FCF840AC3A952E2959FC3896AE29693E2949C5FE29592E2959BE2959DE289A5C2A3C3A741E282A7C2BAE2948C3455207CC3B60ECEA318C2B565E2959B1645C3A6E282A77CE29688CF8443C3A4C2AC12C2A0C3B22535E289A4C3ACE296A0CF834350CEA918C3AAC3A7C389C387264669C2A20AC3A4C3857F47C3B47BE289A1E295907C7E6AE2959EE288992919C2B274CE93CF86130801395B3826C39C11E289A41040E295A0C2A2E28988C3AC0AE2968041E2968075E294A4CE983BE29690C3B2E289A571CEB5E288993E0E553E1E53E29692E295AAC3850E05E29690E29594C3BA5DC3B43C3CE2959D6E3F4AC3B6E295A12EE295A9C3B345E294B4CE93C3AD62E29494E295AC716AC3AE0BC3ACE29692C3A6365954E28C90C3ACC2BAC3A002C3A2C3BA58E295A7CF84E289A47864C2A1332A20E295A15C24C3AFE294B460314C12C2A5C3B77AC3BC0AC3A9C3AEC387E29684E296842CCF84C6927DC2B176E295955A27C2B5E29498E294820BE28CA1C3A73F5E2D3EC2B2E28CA07AC3AA77E295A9E294BC7E066EC3A0E281BFCEA650E29597E2959E6AC387C3A7C3A845E282A7E2969259451C0EE29590E282A7CEB4CEB4E295AA5A66C38902E28CA1E295A7E2959FE295ABE28CA1C3A0E289A13106C2BD12E294A45519C396E29684E296917DE2959BC3A675E295A9E2959A05795C5375E2889EE295A027E295915355542EE296801C1865C2A02F727A6F23E29693E295A831E2959447C3B4E28988C2BD2E21694BC2A1C39FC384CEB5C2A018C3A5E2959518E288990221204F1974C2B12F1DC38705C2BAC2A0C2B707022F24E29680E2959F536CE28988C39644E295A7223FE294ACC2B1E289A1E295ABE294985ACF861CCEB428E2959337CEB455E295A55F2EC3B45B635CE29591E28CA1E295A14066E295A4070CE289A16AC2A54C0737C3AFCEB41F7E18E28CA17FC2A0C3A7E29596E29596C3B449C3BFE2959D78711128C3B2C391E296804CCE93E295A0E295ABE294AC31E2948222CE9328E295936EE295A3C3AEC2A1E295A1E295AC29C391C3A154E29593C3BF304CCF866C1619E29482C3AB22E295A15A250EE294940778C2BA5CC3B6E29692E295A322E294BC62E2889A3BE29482C3B9E295A7C3B34AC3BCE295AAE2959072E2968424CF8441E29592C3B35F47C3BCE289A1E295902950E295A1E2949C51C2B5E295A0E2889EE29599E2959B2A03E2889AC38904C3A43E04CEB11003E29688E2959FC2B13CC385E2959ACEB5C384C2A1632A10E2959FE28CA00368E2949CE295A3E29597497CC2B026E295ABE29592E29594C3B7E2968C66E2959CE2959FE2959DC3B73116402127022120CF840AE29593C2A0664B40E295A2C2BBE289A41A20C2B2E295A8C39FC3BB3DCF84C3A0E29591E296A004C3A7C3BBCF805BCEB553E29594E289884135E295A93A35E294BC42CF86C3BF4804E2948CE294807F62CEB4601D47606610C3A6E294822EE295A2C3BB23667659C2ABC3A84C03E29691C3BB136B5DE2959A001340E29593E2959158673E196E13295631037162C2B5C3AF653CC2A3C3AEE2949CC39FE289A176354D53C3BA7BE2959C406D4D3115C38902E29494E2949CE295A46AE28899E2949817E295ABE29596C2A0E29680E29490C2B27AE28CA0C2B7E29592740240E288A975C3A8E295A9CE98E29480C3B32846E29597C3A8C3A5E294AC43CF83C3B3E28C90E294B45157C3BCE295AAE29490C2ABCEB5C3967FE296807654E295925BCF83505E37E29593E2959B6BE295AAE2959B3267E288A9E2959D365625C3A52BC2ACE29597C3AAC387542544E289A535E295AAC2BDE2959A47E295990CE2959875C3AB5817C39F5FE295A4CE9377C3844162C3A8085B1305C3B32D035A1408C3BC4008E2959AC3B4CEA66F55E2959D11E295A476E29598C2BD63282DC386E288A9CF80716E3BC385C3BFE295A8C38429C692C3AC27CEB438C3A8C3B3E294A4E295A70C470415457AE2959558247D6BC2A556C3A87AC3967336E289A462C3A60C6F6EC3B9E295ABE295933AC2BD02C391C2ABC2AB66C3BAC3853FE296A0E288997A3AC3ACE295A5172F2E7A0011C3A2C3A626E29593C2ABE2949C54C2BB56C3AB5D2E13CF84C2BC6315C2BFE29590E29494CF834D345BE289A13AE295986E3A0BCF8664125A64C3A8E294BC6503E2949C3CE288A9E2959AC3B4E294BCE29597CEA6504D0840C2A56344550400C2BFC3B9E295A8C2BB0B05C3B3C2BC1E2A31CE93CEB41000CF84E294B4CEA67D49055510C3ACE296937EC2A1E295A93F5245E2949408E296A0E2959FC2A5E2948C2400E2959BC3A5C2B5C3ADE2959FC2A51E4BC3BCCEA6E295A9E295956E33E29480CEB5E28C901AC2A06D2B10042135022120C3A93BCF83CF80CEB5030200C3A03B736D13590820E29490C3AECEA6C385C3B2E288A9CF80E2969233C2A5C69242E2959BC385E281BFCF84C3B4CF86E294ACE289A4C2B2CEA65065E295A6E294B43DE28CA1CEB4C2A5C2A5480A04E295ACC2A327C2A3CF80C3BF3706C3BBE294821C5BCEB42220E295A6E295A0E2959CC2B2C386752EE295A2C3A5C3BA2CE2959705C3A6352E36E2959E45C3AEC2A16241C3A8C39639C3AEE28CA06CE29692C3AAC3A7C384E294982945E294A4C3BFE2959FE29482C2A2E29688CF8350C2BAE29593E28CA07A4A053DC391C3BFC39F06C3A2E294BCE28CA0E294822FC2B7E2949C2431C3B7CE9322507FE28988E289883FE295ACE2959BC2B7CEA966C3AA4CE295A3E2959AE295A66351CEA36BE29692C2B279E295AB1FC3A236C3A845C396615166E29684390FE2949CE294A4E2889ECF842E7C2008E28CA176E289A5E295A67E5F47C3BCE289A131E295AAE29594CF80C2B73A04C3B1C2AB02E295A4E29598C3A1C2A1E295A9E294A4E2969066E29593696EC2B0C2A5632B103EE2959FC3AF7C42E2889952E2949CE295A21CC386055BE289A53F1C1F423E04424004C3A0E29597132516C2AC281FE2968CE295ABE2959955E29693E294BC1AC385C38772E294AC436DE296A06B2D47516CC2B7C396E295A34E1447CE98CF867219E28988C2A563C3BAC3AA02521430E29482C2A22FCE93C39FE29590E29590C2ACE288A918360848C2B2E281BF6676E2889AC2B1E2959FC2BB07C3AF45C3B35FE2959DE29595504444E295A04C51C3B1CF866AC2A55830C3BF147118C2AA6EE2969248C3AE73C384C3A240C2B1E2959EE295ABC3A957C2BDE294804C26C3ADE295A1C384C3ADC3AA6836C3852CC38767E2959AE29598C3AFC2A1C3A6E2889EC3B425312F22C38663E2959BE289887BE2968030C2A155E295A32DCEA946C3A76A43C3BCC2BFCF806C5D1526E29596C2AB0251E289886855E2968CE29480C3A4C3A72810E2959B59E2948CCEB4C2B732E295985120CEA964E2959DC2ABC2ACE294820DC3A2E29597CEA97DC39F03E295A6E28CA119C2BBC3A718C2BA6D1CC3AD3A7563597C20040221204F1F0CE295A2E2959A32C3B3C2BA002E37CF84E288A94B2CE29593E2959F563E7CC3ACE288A953553E70E295A75662C2AA4D2E0BC389777905C3A8E294BCE295A25C224500C3A21DE29482731C6DC2BBE295A2C38463675CE295A0C396C2B148C2A2C3AEE2959370C384C3BA4CE295A4E2959AE295A9E29692C384636B6C042202C3A2E2949C28C2A52CC3BBE29594080C2622E295A017E295A46478E294821C196B4DC2BB17C2BF40C3A672C384E28899CEA97A31E28899E2889EC3AFE296A0E295A85876E2959CE282A7C3B35FC2B2C3A7E288A9C2BAE296807D773B42C3BB6746CF86355ACF8675C3B3E295A931E289A17733710377E295A9056D73C3873409C2A0C39C470CCEA966E294B46E127DC3AB6AE295A2E295905711E28C9063C3B65525676BC3B4C38710C39C1DE29680C2B15120CEA9C3B74BE295A4C3AF5557E2959C68E295A5E288A9E29598C3B3C39F5DE2959FE295A3E2969047C3BC6863726C4A20C39C38E295A61FE295A60017235F2010022238E294AC546B41E2959502C39F0700C2A025C3870FE2948265CEB55CC3B6C38573E295AC747E48C3B2E295974AE294BC5E1F6FC2A3E2959BC2A173CEB438E295A4C3A26D2745C3ADE2959B592DE29599C3BC736C33CF83020133E2968462110DC3A5C3BA55C692414C50E28CA0C2B5CF86E28CA0C2B577C692E2959DE295A35EC2BB53E2889AE281BFE28899C3A05AC3A7E28C905BC2A1120B102B45E2959D5A256EE29692C3AA2C3B76414F3111C3BC1DE2959962C396C3BFE295942434C38419C3A808C3B469CEA6C3892916E2889AE29594E289A5E295A2066CC3B2C2BAE281BFE2959BE29692C3B625E295A07C473EE289A57AE2959AC3B95850C3A051CF83502FC3B9C3A0E289A460C2BF4D09E294943E31696AE2959D3631E29691E295A614C3AA26E2959E75C3A6E288A9455B6D2C7A51E29684C3BCC3A5665305E294AC27C2A048C2A5363539E294ACE295ABC2AA71E2968CE295A113E295A1281002C3BC4008E2959A7BE294B43FC3AA1DC387C3BFC3870820032E220DC386CE987CE28988E28988E29688684744E2959B15C2B53B6867E29680E295A76C5176E2889EC2A3CF80C2B0E295AC72711C39E2959FC2B1E2959ECEB1E2959B33E29690C2A5E29688C2B7601040046B5C64C2BCC3AFC2B1E295ACE295AB22606617467AE294A45C27C3BAC2A1E28C90E29595C3BFE294BCCF80C39F703DE29693E2959EE29498202015044A3966777D3D1F7FE296A0CF83E28CA1E295A839E296915201C2B2C2A0C2A0CEB5C2A2C2B10F3F0C6FC3A6395707E29595C2BB42E2889EC2B752E2889E1B65E2889A51C3B136E295A4C3AD08C2A2C3B1CF83790A02E294B4E288A9C2BF4DC2A5CEA64B3EE2959F5EC2AC1CC385CEB44645CEA9C386C387C3B665C3A12E33C3B37C15C3B9E295A5101100000C15494441541B1F03C2A050C2A0C386360CE295A75352207C2627C2AB41E29684C39CC2B57F782C27E2889E6EE29596E294BC0402C3BC4008E2959AC3B407657D4E1778100DCEB45C32C2A51FC3BAC3AFE2948CC2B0E295A9E2959BC2BDE29590E295ACE28C902B26586BE295AB716A06E296885F27E29692CE98C3A7CEB474602D3B22E28CA036E29480E294ACE295AC17717F345A0F40E2948044E29494CEB4C69267C3A24F3E7933C3AA226DC6923FE29490544A113133C2BBE295ABE28C905BC2AB12E295972D6FE2959C4EE2959072C39668671DC3B62204C3BC6206783EC385E2889E78E2959DE295ACE289A54F1061345A5B00E295A7E289881AC692CF84C3B4400FE2959FE295A03D03E295A601E296917C17E295AB0055E295A9C3A06F06CEA9E29591E29597CEB179061EE294B4E29680E295ABC3B32C01C2A3C2BB217AE2959ACEB5E2959B2FC3ABC2AC1B16E294A44CC3BC20E295984F425836C2B7CEB410C2BAC2AAE295A7E295AAC3A7C2BCE294A4C39140C2B0E29593574666E2948C24704FE29594C2B0C2BAC3BBE2948C24E295A4C3B90402C3BC10C389C3B435C2A1C3961CC38719C38721C387E2949000C39F17E288997640E2959975E2889A3432C2A5E289A4E295930A2622C2A0E295A1C2BB38C2BCE2889EC2ABE289A571C2BA5C6CC3BBE2959777E295A90578731D31C3A237C69247E2968842C2BCE295907C2F36E288992C5C18CEB4C39F7AC2A5C3AEE295A2252FC2B5C2B1683C0A47E295933A1B042A081429CEB4E295AAE2959CE2959CC39C0FE29490C2B0E296933FE29684C3A5E295A2C2B27FE296A0E296802F46C2BB5F4D47E29494C3A20CCEB10AE28899E295A4C3B3C3B70DE295A7E2959DE281BF17E2889AE295A9E294BCC3AD0A04E294B43F6F44C2A530E296934DC3AEE29599E29591C3A5605D05C3B32D0252766F6D19E296914DE29688E2959FE282A72F7E1D0252C2AAE29693C2B064083FC3A434E295985520C2BF41E29680E295966154C3AF02C2B1E296A0E2968CC3A740201002E289A52461E29494E2959502C39F25407F09CEB1C692C2A3117D3A42517B09C2BC73C2ABE29482E295932E536D6FE295A2464C14CE987EE29595E29593036666220AC3AA2870C384CF8672195FC3ACC2BAE295A4000C72E295A078E289A4E289A4E28CA0C2B70FC6925E0FE295A5E29598E295910F3E08E295987AC2A5E2948CE295923A351BC3A8E29480E295A64562CF84E289A4E295AA02E2889EC3A940412905CF841C66E289A458C385E2959E6BE294826DE29593CEB166E295A3552CCEA924162B5220E295A2E2959B1976E288A9E295AA54C3B2C2B15B6767E29688E295ABC3896DE2949CE28899E295A3C3A830CF8319CE933E2A4C5D12C38967E2889E3651207CC2B7CEB5C389E2959A4B6D2910C2AB2542E295AA16C2B1C2ACCEA9333EE289A1E2889A55C2B2774EE2959EE29693281002C3BC4008C3AAC3A1CF80C3B226E289A465C3AA005A01E295A8E2959DE2968CC39F3FE295AACF84C3BA1DE2969350C2BC5CC3897FE2889974C2A0E2889AE2889EE295AA3AE2959FE29594C2A5C391CEA338E29684C2B1E2959C2002C3AA01C3B92916C3AAE29680110D17E294984D54E28C90C2A5E2959D1636C3AEE28CA06D18C2AACF804DE281BF305EE295A0CF80C39F641CC384C2BC6556C3BC0A7A01296BE29498E2959DE295A3C39C0DE29490E281BF6A3002C3AAC2A363E296A0E29490E296A0E288A93F0EC2BBC2AB164314E2889A5A6C3FE296883F2AE294A4C2BB642800C3B114E294B439C3B735CEA9E289A514C3AAE2959119E29693C2A21AC2BA4D1D69C2BD0848C3B2C2B15CC2B5C38501142B1C6D46136A43C3BCC2BF6A5B5302E295A5C3A502E295A4E29598C3B9C3BC705CC3BAE2959C6B05CE93317254C2A31AC3A47C0804022120C3A9520428E29590C3AA7E52C3B6E28C9001E29596E29498512EC3BF612D2F536D6FC3A62560E294A471C2BCC2BBCE9358E29680E296842916C3A1E282A7754E2F16E29594E28CA164160D0245E294800CE28988CEA9E28CA1E28CA0C2B7C385C6925EE29680686DE2968CE289A4CF84174A514624C3BBC2BDE29480C2ABE29593C3ABE2968C66E296845E2C13E2948258E29480C3A51DE294825244414F313BE289A168E2959D36E2949CE295A4E295A912C3AAC3BF19E2949CC39F5ACF80E2959BC2BB451959084A0C51C3AFE295A039E2959CC2ACCF80C2AC42E295A6561910E2889A04C3872BCEA9E28C904350C3B715C3AAE29591E295A4C3B9E289A5C38478CF83E28C903F55CF863B24542E79C3B7C3ADE295A700E289885561E295A80221C2BCE289A43D3EE289A1E296A0E2948CE296A05E55C2A01DE2968850C2B576273731CEA30502C3BC4008E2959AE295990471463CC3A9C2A1C3964E7E567DE294B44AE295A3E295946B7127C3911C1626E28988E282A772E294B4E29691E295A01C6F4A65761C3273E2959D1149E295A2CEA9C3BCE295A6140DE29480E29498E295A7E295A0E29593663E194450C384E2949846C3A6E295A30D233D2602210B437B33C2A5466330E2959720504A29CEA969CF86E295A0C2A2E29596E289A4C2A2C2BBE2959BE2959C19E28CA17A0159CF80E29684C2A0E296A07F7E743B1CC2ABE2959F1B235CC39FE2959B2376515EC3AF5D03426DC3AAE29480C2ABE288A9C3A0E2948C28175D2B106D1010077F25C3ADC2BF7D55E295A945E29599E2968414E2959A211B75C3B4E29690E288991AC3B955C2AC52E295997AC2BF21C2B168C3B324C2B01C5DCEB4E295A5E295AA160542201008044240E2969057E289A13BCF80C3A2E295A849E295952A6AC2BA0806C2BCCF80C396E29692CEB51640E294940E364DE295A0C2A224E295A4E29596C2A2C2A5C2A0E29690E2959EE295AB225DC2ABC386E29596E289A479724BC3A4E294945AE295A2C2BB7FE282A7E2959BC2B2E281BFE289A4E296A0C2A1E295A1C3847B172A58C2A152E294825EC2BA46290233783EC385E295A062115B2272E2959C2CC2BB0519CF8030E282A7C2BCE28CA170E294A436C3A8E29693C3BA4DE29482596C70E29680E295ABC3A94A0C52E295A931E2889E7677CE98E29596E2959EE2959DE2968CE294A4E294900E01283318C2BDC384E295A4145D5FC3BBE2968C394FC3BC28521CC2AC14087810C2BFE295A2C2A5C2ABE28C90C3A9C2BCE28899446D6ACEA9C3B15DE28988753CC3B60474C3914074C3AD3C7461C2B0C692C3A902411DE29684C3B940201008C3A4C3873C1D10E294B4C2B1260A1603E295A4C2ABE29684E29691E2959C00C3A0161B034CE2889ACF831170E28988E296920173C3A46CC2BAE29680015803C3AA76C3A850E295A07000C2BBC396E29596C3A8E294BC56E294B4E29595E289A4E295A420003DCF8458E2959FE28C901924C3AB1D332370C384CF866AC3A6E29684E295A0CF84E295A4E295AA3A07220A0245C3BC314EC2A0E281BF667EE289A4E29592E29596E2949C712F5041C38618E28988E29490E296A06F7F37C3BFE295A7C3BAE295A4C2AAE2959D5D5FC3AF5D6562E29680E295AB22C385C3B66D150BE29690230D7577E29480C2A2CEB5E289A5E295AB5520C2AC14C3872AE2959FE289A12A03E295A0E2898808E29598C3AD06E29691C2BBC3B34235E2948C57C3B9C387E294A46DE28CA0C2B728475D1AE296885DE29592E28CA118C2ACE2959AC3ABCEB5CEB4080402C3BC4008C3AAC3A1C387C3BCE2949410E289A1C3BBC3BC1F002C0E5B3A1FE295AA71630003E295ACE282A7E28C9006CF801518C2B2C3AC291830E289A4C3A073C2A368635F69636E401458CF80E2889ECF86CF86C2B7CF84E288A9E2959B1FE2968C1ACF86C3891DC3A7E2969341C2A3184C67C3A6C2A52F12E2959FC384E295941847CF80C2B1E2948C4CC2BAC3A663C2B56D5E0B686DE295A41F2CE29590CEB166CE98141119CEB4E296915E271AE29494C3A7E282A7C3A528C3B218C3A40EC39662E295A4E29598C2B1E28988C3BF0AC3A4C2BBC3ADCEA37BE2959DE28C90E2959033E2889AE2959B51C2A2C2ACC2A3E2959FC3BCCEA904C3A575E29688782C1250E29596E295AC535720E29595C3B2E29498480C7AC3BC4020100801792F0808C3A210C3B4430420E295955BCE98C3ABC3BB0014C3BF2DC38735C39F2E1AE29598E29593E29490E294B40258C3BC380668C2BD70C2BCC38929193D101264E2948066E2959A400FE295A0C3A51DE29690E29693CF8021006C54C3AEE282A731562F57C2B1E29592CF86683122C391C3A9CF832A75C2A0CF80E29490C2B03F06E289A469E29591E296846BE28C90E2948CC3AEC3AC60E2959F00E296803AE295ACE288A91F73E2948CC2AC1C77C3B1C3A908C3A832C2BA71C3A7C2B50A441131C3A11A651565E2959A6E5BC3BC38C3A4C387E29598CE9807C2ACC2B1E2959C32125666C3BFE295AB4DE29691E295ABE295A1C3ADE296844659C2BAC2AA40E2959A3123C3BC4020100801111C11C3AE00E2949425C38717C2A24FC2B5005E6DE282A7450ACEB1470037E2959AC2A3E2949003E295A93EC38518C2B0C3A6C3871BC38777C2ABC3BAE294B4C2A5E295A40F6806C3AEE295A4C3BBE294A4E295A2C3AA22C3BAE2949C756A756AC3ADC3AC23631CC2A1E295AB29E29490E281BF71643EC2A0C2ACE288A9C2A363C39C4E63C3A42B63013CE29688211A0AE2898843E29598CEB57EE282A7CF84E29597E296936B1C3964C3AB00E2968C36C3B1C2BB2701CEB112431F0D0843C2A5CEA650E2959BE288991FC39C1AC3BB5D291038C3A1C3ACE2959F30C2A3E29597240CC3A4E2959F4D2E7768196D1249212502C3BC4020100222C2BF345C22006F01E281BF6A43347E66CEB17A4B4008780BC2B55D1FC3A800400CE294AC5B1046E29498E295A7C2BCCE98CE935FE2959C6DE294B4005200C3A95E4FE28CA1C3AA405AE295977DE2949CE2959E2752105518E295A85461001FCE93C692CEB173C2B2E296A03D50E29590E289A5E295A972321C62381611C2A5C2AB14C3AA3A062B57E294A4E295A16B43C2B2E2959814C3AA53C2A54B0402C3BC4020100222C2BFC3A4053005E289A17B002FC3A645794A01CEA61D4339E2968C5CE29596E295A1E296A008C396E29693C3A101181CE295A2E2889A4B397F61C2A1E29482E29595E288A9CEB4E296917F0DCF8418E289A42820173EE288991FC39CC3860AC2AB201AE2959B44E28C90C3AA00E29691074138E29598083C246FE2948021E295AB3731CEA9CEB464C2B23EC2AAC39FE29684C3A00221E2959FC3B30402C3BC4020381248E29591C3A17BE29691E296A03759675FE281BFE295A6C3BBE295A6C2B2E295AB00C2BFC2AC5C2AE28899C3B972C3AAE29594164547C2ABCEA9C3AEC2A54314C3AAE29591E2959F7DC2BFE294ACE29494C2BBE289A51D3934346AE2959277C384C2A140744110CEA60875080402C3BC402078CE931005CEA3280CC3B12BC2AC47752EE295AA25033E2AC3A82BC2BFC3874AE295A92E231075E281BF39C39CCEA3C2A5C2BF5216E2948CE28CA0CEB468E289A5E2959CE2959F5620E29595C39F00CF8016C2B7E294AC67CEB172E2949CE288A90AC39611080402C3BCCEB1E295A0200AE2959AE295997FE2959B5C401C68E288A9E29591C2B22358282120E29598C38708E29598C3AB5E55E295AB3825C385E289A5CEA91C5D631C7EE29480C2B51415086E3837C3AAC3A62F10080402C3BC4008C3AACEB1C3A1CF844B1EC3B1C3A94AC2ABE2959033E29598CEB418C2ACC385C3AD40E294A44D001E43C3BCCEA612E2968470E282A710722210080402C3BCC3A11602CE98C3A9E28988E282A7C389542524C2BDE2889AE288A97E196521777DC3AEE29498532220C3A7E29593210AC3A44020100804023148C3910BCEA379C3BAE281BFE2959A55E2959931E29599C2AA71E296A058E295A4C3B944C3BC10080402C3BC4020100222CEA6680C50E295A6CF80C2AA2D02E295A5C2AAE29599E29692281002C3BC402010080442400427C2B0E29684E2959718174DC3AEC2A0631AE296A0751508212502C3BC4020100804424004273E26E2959561C2B262E2889E0B0402C3BC402010C3AAE2969229C389C2B1E295A8393911E2968007C3BC402010080402C3BC402010080402C3BC4020100804E2959FC3A2286702C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC402010080402C3BC4020783FE289A1C692005CC3AC2727E2959B5E26E289A50000000049454E44C2AB4260C3A9);
/*!40000 ALTER TABLE `core_physical_file` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_portal_component`;
CREATE TABLE IF NOT EXISTS `core_portal_component` (
  `id_portal_component` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_portal_component`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_portal_component` DISABLE KEYS */;
INSERT INTO `core_portal_component` (`id_portal_component`, `name`) VALUES
	(0, 'Porlet'),
	(1, 'Article'),
	(2, 'Article List Portlet'),
	(3, 'Menu Init'),
	(4, 'Main Menu'),
	(5, 'Breadcrum'),
	(6, 'Site Map'),
	(7, 'Tree View'),
	(8, 'Site Map (Admin mode)');
/*!40000 ALTER TABLE `core_portal_component` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_portlet`;
CREATE TABLE IF NOT EXISTS `core_portlet` (
  `id_portlet` int(11) NOT NULL AUTO_INCREMENT,
  `id_portlet_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `name` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` smallint(6) NOT NULL DEFAULT 0,
  `portlet_order` int(11) DEFAULT NULL,
  `column_no` int(11) DEFAULT NULL,
  `id_style` int(11) DEFAULT NULL,
  `accept_alias` smallint(6) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `display_portlet_title` int(11) NOT NULL DEFAULT 0,
  `role` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_display_flags` int(11) NOT NULL DEFAULT 15,
  PRIMARY KEY (`id_portlet`),
  KEY `index_portlet` (`id_page`,`id_portlet_type`,`id_style`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_portlet` DISABLE KEYS */;
INSERT INTO `core_portlet` (`id_portlet`, `id_portlet_type`, `id_page`, `name`, `date_update`, `status`, `portlet_order`, `column_no`, `id_style`, `accept_alias`, `date_creation`, `display_portlet_title`, `role`, `device_display_flags`) VALUES
	(6, 'HTML_UNTRANSFORMED_PORTLET', 1, 'Intro', '2022-03-08 16:40:37', 0, 1, 1, 0, 0, '2022-02-17 09:36:30', 0, 'none', 4369),
	(4, 'HTML_UNTRANSFORMED_PORTLET', 1, 'Available Packs', '2022-03-08 16:14:30', 0, 2, 1, 0, 0, '2019-05-31 11:55:16', 1, 'none', 4369),
	(5, 'HTML_UNTRANSFORMED_PORTLET', 1, 'Other news', '2022-03-08 17:27:41', 0, 3, 1, 0, 0, '2019-05-31 15:01:47', 1, 'none', 4369);
/*!40000 ALTER TABLE `core_portlet` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_portlet_alias`;
CREATE TABLE IF NOT EXISTS `core_portlet_alias` (
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  `id_alias` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_portlet`,`id_alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_portlet_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_portlet_alias` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_portlet_type`;
CREATE TABLE IF NOT EXISTS `core_portlet_type` (
  `id_portlet_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_creation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_docreate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_script` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_specific` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_specific_form` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_domodify` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modify_script` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modify_specific` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modify_specific_form` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_portlet_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_portlet_type` DISABLE KEYS */;
INSERT INTO `core_portlet_type` (`id_portlet_type`, `name`, `url_creation`, `url_update`, `home_class`, `plugin_name`, `url_docreate`, `create_script`, `create_specific`, `create_specific_form`, `url_domodify`, `modify_script`, `modify_specific`, `modify_specific_form`) VALUES
	('ALIAS_PORTLET', 'portal.site.portletAlias.name', 'plugins/alias/CreatePortletAlias.jsp', 'plugins/alias/ModifyPortletAlias.jsp', 'fr.paris.lutece.portal.business.portlet.AliasPortletHome', 'alias', 'plugins/alias/DoCreatePortletAlias.jsp', '/admin/portlet/script_create_portlet.html', '/admin/portlet/alias/create_portlet_alias.html', '', 'plugins/alias/DoModifyPortletAlias.jsp', '/admin/portlet/script_modify_portlet.html', '/admin/portlet/alias/modify_portlet_alias.html', ''),
	('APPOINTMENT_FORM_LIST_PORTLET', 'appointment.portlet.appointmentFormListPortlet.name', 'plugins/appointment/CreatePortletAppointmentFormList.jsp', 'plugins/appointment/ModifyPortletAppointmentFormList.jsp', 'fr.paris.lutece.plugins.appointment.business.portlet.AppointmentFormListPortletHome', 'appointment', 'plugins/appointment/DoCreatePortletAppointmentFormList.jsp', '/admin/portlet/script_create_portlet.html', '/admin/plugins/appointment/portlet/create_portletappointmentformlist.html', '', 'plugins/appointment/DoModifyPortletAppointmentFormList.jsp', '/admin/portlet/script_modify_portlet.html', '/admin/plugins/appointment/portlet/modify_portletappointmentformlist.html', ''),
	('APPOINTMENT_FORM_PORTLET', 'appointment.appointmentForm.name', 'plugins/appointment/CreatePortletAppointmentForm.jsp', 'plugins/appointment/ModifyPortletAppointmentForm.jsp', 'fr.paris.lutece.plugins.appointment.business.portlet.AppointmentFormPortletHome', 'appointment', 'plugins/appointment/DoCreatePortletAppointmentForm.jsp', '/admin/portlet/script_create_portlet.html', '/admin/plugins/appointment/portlet/create_portletappointmentform.html', '', 'plugins/appointment/DoModifyPortletAppointmentForm.jsp', '/admin/portlet/script_modify_portlet.html', '/admin/plugins/appointment/portlet/modify_portletappointmentform.html', ''),
	('APPOINTMENT_PORTLET', 'appointment.portlet.appointmentAppointmentPortlet.name', 'plugins/appointment/CreatePortletAppointment.jsp', 'plugins/appointment/ModifyPortletAppointment.jsp', 'fr.paris.lutece.plugins.appointment.business.portlet.AppointmentPortletHome', 'appointment', 'plugins/appointment/DoCreatePortletAppointment.jsp', '/admin/portlet/script_create_portlet.html', '/admin/plugins/appointment/portlet/create_portletappointment.html', '', 'plugins/appointment/DoModifyPortletAppointment.jsp', '/admin/portlet/script_modify_portlet.html', '/admin/plugins/appointment/portlet/modify_portletappointment.html', ''),
	('HTML_PORTLET', 'html.portlet.name', 'plugins/html/CreatePortletHtml.jsp', 'plugins/html/ModifyPortletHtml.jsp', 'fr.paris.lutece.plugins.html.business.portlet.HtmlPortletHome', 'html', 'plugins/html/DoCreatePortletHtml.jsp', '/admin/portlet/script_create_portlet.html', '/admin/plugins/html/portlet_html.html', '', 'plugins/html/DoModifyPortletHtml.jsp', '/admin/portlet/script_modify_portlet.html', '/admin/plugins/html/portlet_html.html', ''),
	('HTML_UNTRANSFORMED_PORTLET', 'html.portlet.untransformed.name', 'plugins/html/CreatePortletHtml.jsp', 'plugins/html/ModifyPortletHtml.jsp', 'fr.paris.lutece.plugins.html.business.portlet.UntransformedHtmlPortletHome', 'html', 'plugins/html/DoCreatePortletHtml.jsp', '/admin/portlet/script_create_portlet.html', '/admin/plugins/html/portlet_html.html', '', 'plugins/html/DoModifyPortletHtml.jsp', '/admin/portlet/script_modify_portlet.html', '/admin/plugins/html/portlet_html.html', ''),
	('MYDASHBOARD_PORTLET', 'mydashboard.portlet.myDashboardPortlet.name', 'plugins/mydashboard/GetCreateMyDashboardPortlet.jsp', 'plugins/mydashboard/GetModifyMyDashboardPortlet.jsp', 'fr.paris.lutece.plugins.mydashboard.business.portlet.MyDashboardPortletHome', 'mydashboard', 'plugins/mydashboard/DoCreateMyDashboardPortlet.jsp', '/admin/portlet/script_create_portlet.html', '/admin/plugins/mydashboard/portlet/create_portlet_mydashboard.html', '', 'plugins/mydashboard/DoModifyMyDashboardPortlet.jsp', '/admin/portlet/script_modify_portlet.html', '/admin/plugins/mydashboard/portlet/modify_portlet_mydashboard.html', ''),
	('MYLUTECE_PORTLET', 'mylutece.portlet.name', 'plugins/mylutece/CreatePortletMyLutece.jsp', 'plugins/mylutece/ModifyPortletMyLutece.jsp', 'fr.paris.lutece.plugins.mylutece.business.portlet.MyLutecePortletHome', 'mylutece', 'plugins/mylutece/DoCreatePortletMyLutece.jsp', '/admin/portlet/script_create_portlet.html', '', '', 'plugins/mylutece/DoModifyPortletMyLutece.jsp', '/admin/portlet/script_modify_portlet.html', '', '');
/*!40000 ALTER TABLE `core_portlet_type` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_role`;
CREATE TABLE IF NOT EXISTS `core_role` (
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workgroup_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_role` DISABLE KEYS */;
INSERT INTO `core_role` (`role`, `role_description`, `workgroup_key`) VALUES
	('front_role', 'Accessible uniquement aux parisiens', 'all'),
	('restricted', 'Accessible ├á tous (parisiens et non-parisiens)', 'all');
/*!40000 ALTER TABLE `core_role` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_search_parameter`;
CREATE TABLE IF NOT EXISTS `core_search_parameter` (
  `parameter_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parameter_value` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`parameter_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_search_parameter` DISABLE KEYS */;
INSERT INTO `core_search_parameter` (`parameter_key`, `parameter_value`) VALUES
	('date_filter', '0'),
	('default_operator', 'OR'),
	('help_message', 'Message d aide pour la recherche'),
	('tag_filter', '0'),
	('taglist', NULL),
	('type_filter', 'none');
/*!40000 ALTER TABLE `core_search_parameter` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_style`;
CREATE TABLE IF NOT EXISTS `core_style` (
  `id_style` int(11) NOT NULL DEFAULT 0,
  `description_style` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_portlet_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_portal_component` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_style`),
  KEY `index_style` (`id_portlet_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_style` DISABLE KEYS */;
INSERT INTO `core_style` (`id_style`, `description_style`, `id_portlet_type`, `id_portal_component`) VALUES
	(3, 'Menu Init', '', 3),
	(4, 'Main Menu', '', 4),
	(5, 'Breadcrum', '', 5),
	(6, 'Site Map', '', 6),
	(7, 'Tree View', '', 7),
	(8, 'Site Map (Admin mode)', NULL, 8),
	(100, 'D├⌐faut', 'HTML_PORTLET', 0),
	(101, 'Fond color├⌐', 'HTML_PORTLET', 0),
	(200, 'D├⌐faut', 'MYLUTECE_PORTLET', 0);
/*!40000 ALTER TABLE `core_style` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_stylesheet`;
CREATE TABLE IF NOT EXISTS `core_stylesheet` (
  `id_stylesheet` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_stylesheet`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_stylesheet` DISABLE KEYS */;
INSERT INTO `core_stylesheet` (`id_stylesheet`, `description`, `file_name`, `source`) VALUES
	(10, 'Rubrique HTML - D├⌐faut', 'portlet_html.xsl', _binary 0x3C3F786D6C2076657273696F6E3D22312E30223F3E0D0A3C78736C3A7374796C6573686565742076657273696F6E3D22312E302220786D6C6E733A78736C3D22687474703A2F2F7777772E77332E6F72672F313939392F58534C2F5472616E73666F726D223E0D0A3C78736C3A6F7574707574206D6574686F643D2268746D6C2220696E64656E743D22796573222F3E0D0A0D0A3C78736C3A74656D706C617465206D617463683D22706F72746C6574223E0D0A3C78736C3A7661726961626C65206E616D653D226465766963655F636C617373223E0D0A3C78736C3A63686F6F73653E0D0A093C78736C3A7768656E20746573743D22737472696E6728646973706C61792D6F6E2D736D616C6C2D646576696365293D273027223E68696464656E2D70686F6E653C2F78736C3A7768656E3E0D0A093C78736C3A7768656E20746573743D22737472696E6728646973706C61792D6F6E2D6E6F726D616C2D646576696365293D273027223E68696464656E2D7461626C65743C2F78736C3A7768656E3E0D0A093C78736C3A7768656E20746573743D22737472696E6728646973706C61792D6F6E2D6C617267652D646576696365293D273027223E68696464656E2D6465736B746F703C2F78736C3A7768656E3E0D0A093C78736C3A6F74686572776973653E3C2F78736C3A6F74686572776973653E0D0A3C2F78736C3A63686F6F73653E0D0A3C2F78736C3A7661726961626C653E0D0A0D0A093C64697620636C6173733D22706F72746C6574207B246465766963655F636C6173737D223E0D0A093C78736C3A63686F6F73653E0D0A093C78736C3A7768656E20746573743D226E6F7428737472696E6728646973706C61792D706F72746C65742D7469746C65293D27312729223E0D0A093C68333E3C78736C3A76616C75652D6F662064697361626C652D6F75747075742D6573636170696E673D22796573222073656C6563743D22706F72746C65742D6E616D6522202F3E3C2F68333E0D0A093C78736C3A6170706C792D74656D706C617465732073656C6563743D2268746D6C2D706F72746C657422202F3E0D0A093C2F78736C3A7768656E3E0D0A093C78736C3A6F74686572776973653E0D0A093C78736C3A6170706C792D74656D706C617465732073656C6563743D2268746D6C2D706F72746C657422202F3E0D0A093C2F78736C3A6F74686572776973653E0D0A3C2F78736C3A63686F6F73653E0D0A3C2F6469763E0D0A3C2F78736C3A74656D706C6174653E0D0A090D0A3C78736C3A74656D706C617465206D617463683D2268746D6C2D706F72746C6574223E0D0A093C78736C3A6170706C792D74656D706C617465732073656C6563743D2268746D6C2D706F72746C65742D636F6E74656E7422202F3E0D0A3C2F78736C3A74656D706C6174653E0D0A090D0A3C78736C3A74656D706C617465206D617463683D2268746D6C2D706F72746C65742D636F6E74656E74223E0D0A093C78736C3A76616C75652D6F662064697361626C652D6F75747075742D6573636170696E673D22796573222073656C6563743D222E22202F3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A3C2F78736C3A7374796C6573686565743E0D0A0D0A0D0A0D0A0D0A),
	(211, 'Menu Init', 'menu_init.xsl', _binary 0x3C3F786D6C2076657273696F6E3D22312E30223F3E0D0A3C78736C3A7374796C6573686565742076657273696F6E3D22312E302220786D6C6E733A78736C3D22687474703A2F2F7777772E77332E6F72672F313939392F58534C2F5472616E73666F726D223E0D0A0D0A3C78736C3A706172616D206E616D653D22736974652D70617468222073656C6563743D22736974652D7061746822202F3E0D0A0D0A3C78736C3A74656D706C617465206D617463683D226D656E752D6C697374223E0D0A3C6272202F3E3C6272202F3E0D0A093C6469762069643D226D656E752D696E6974223E0D0A09093C6469762069643D226D656E752D696E69742D636F6E74656E74223E0D0A2020202020202020202020203C756C2069643D226D656E752D7665727469223E0D0A202020202020202020202020202020203C78736C3A6170706C792D74656D706C617465732073656C6563743D226D656E7522202F3E0D0A2020202020202020202020203C2F756C3E0D0A20202020202020203C2F6469763E0D0A20202020203C2F6469763E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D226D656E75223E0D0A202020203C78736C3A7661726961626C65206E616D653D22696E646578223E0D0A20202020093C78736C3A6E756D626572206C6576656C3D2273696E676C65222076616C75653D22706F736974696F6E282922202F3E0D0A202020203C2F78736C3A7661726961626C653E0D0A0D0A202020203C78736C3A696620746573743D2224696E646578202667743B2037223E0D0A20202020202020203C6C6920636C6173733D2266697273742D7665727469223E0D0A2020202020202020093C6120687265663D227B24736974652D706174687D3F706167655F69643D7B706167652D69647D22207461726765743D225F746F70223E0D0A2020202020202020202009093C78736C3A76616C75652D6F662073656C6563743D22706167652D6E616D6522202F3E0D0A0920202020202020203C2F613E0D0A2020202009202020203C78736C3A6170706C792D74656D706C617465732073656C6563743D227375626C6576656C2D6D656E752D6C69737422202F3E0D0A20202020202020203C2F6C693E0D0A2020203C2F78736C3A69663E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A3C78736C3A74656D706C617465206D617463683D227375626C6576656C2D6D656E752D6C69737422203E0D0A093C756C3E0D0A20202020093C6C6920636C6173733D226C6173742D7665727469223E0D0A090920093C78736C3A6170706C792D74656D706C617465732073656C6563743D227375626C6576656C2D6D656E7522202F3E0D0A2009202020203C2F6C693E0D0A202020203C2F756C3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A3C78736C3A74656D706C617465206D617463683D227375626C6576656C2D6D656E75223E0D0A2020203C78736C3A7661726961626C65206E616D653D22696E6465785F736F75735F6D656E75223E0D0A2020202020202020203C78736C3A6E756D626572206C6576656C3D2273696E676C65222076616C75653D22706F736974696F6E282922202F3E0D0A2020203C2F78736C3A7661726961626C653E0D0A0D0A2020203C6120687265663D227B24736974652D706174687D3F706167655F69643D7B706167652D69647D22207461726765743D225F746F70223E0D0A09093C7370616E3E3C78736C3A76616C75652D6F662073656C6563743D22706167652D6E616D6522202F3E3C2F7370616E3E0D0A2020203C2F613E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A3C2F78736C3A7374796C6573686565743E0D0A),
	(213, 'Main Menu', 'menu_main.xsl', _binary 0x3C3F786D6C2076657273696F6E3D22312E30223F3E0D0A3C78736C3A7374796C6573686565742076657273696F6E3D22312E30220D0A09786D6C6E733A78736C3D22687474703A2F2F7777772E77332E6F72672F313939392F58534C2F5472616E73666F726D223E0D0A0D0A093C78736C3A706172616D206E616D653D22736974652D70617468222073656C6563743D22736974652D7061746822202F3E0D0A0D0A093C78736C3A74656D706C617465206D617463683D226D656E752D6C697374223E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D226D656E7522202F3E0D0A093C2F78736C3A74656D706C6174653E0D0A0D0A093C78736C3A74656D706C617465206D617463683D226D656E75223E0D0A09093C6C693E0D0A0909093C6120687265663D227B24736974652D706174687D3F706167655F69643D7B706167652D69647D2220636C6173733D2266697273742D6C6576656C22207461726765743D225F746F70223E0D0A09090909093C78736C3A76616C75652D6F662073656C6563743D22706167652D6E616D6522202F3E0D0A0909093C2F613E0D0A09093C2F6C693E0D0A093C2F78736C3A74656D706C6174653E0D0A0D0A3C2F78736C3A7374796C6573686565743E0D0A0D0A),
	(215, 'Breadcrum', 'page_path.xsl', _binary 0x3C3F786D6C2076657273696F6E3D22312E30223F3E0D0A3C78736C3A7374796C6573686565742076657273696F6E3D22312E302220786D6C6E733A78736C3D22687474703A2F2F7777772E77332E6F72672F313939392F58534C2F5472616E73666F726D223E0D0A0D0A3C78736C3A706172616D206E616D653D22736974652D70617468222073656C6563743D22736974652D7061746822202F3E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D2270616765223E0D0A09093C78736C3A696620746573743D22706F736974696F6E2829213D6C61737428292D31223E0D0A0909093C6120687265663D227B24736974652D706174687D3F706167655F69643D7B706167652D69647D22207461726765743D225F746F70223E3C78736C3A76616C75652D6F662073656C6563743D22706167652D6E616D6522202F3E3C2F613E203E0D0A09093C2F78736C3A69663E0D0A09093C78736C3A696620746573743D22706F736974696F6E28293D6C61737428292D31223E0D0A0909093C78736C3A76616C75652D6F662073656C6563743D22706167652D6E616D6522202F3E0D0A09093C2F78736C3A69663E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D22706167655F6C696E6B223E0D0A09093C78736C3A696620746573743D22706F736974696F6E2829213D6C61737428292D31223E0D0A0909093C6120687265663D227B24736974652D706174687D3F7B706167652D75726C7D22207461726765743D225F746F70223E3C78736C3A76616C75652D6F662073656C6563743D22706167652D6E616D6522202F3E3C2F613E203E0D0A09093C2F78736C3A69663E0D0A09093C78736C3A696620746573743D22706F736974696F6E28293D6C61737428292D31223E0D0A0909093C78736C3A76616C75652D6F662073656C6563743D22706167652D6E616D6522202F3E0D0A09093C2F78736C3A69663E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C2F78736C3A7374796C6573686565743E),
	(217, 'Site Map', 'site_map.xsl', _binary 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D2249534F2D383835392D31223F3E0D0A3C78736C3A7374796C6573686565742076657273696F6E3D22312E302220786D6C6E733A78736C3D22687474703A2F2F7777772E77332E6F72672F313939392F58534C2F5472616E73666F726D223E0D0A0D0A3C78736C3A706172616D206E616D653D22736974652D70617468222073656C6563743D22736974652D7061746822202F3E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D22706167655B706167652D6C6576656C3D305D223E0D0A093C64697620636C6173733D227370616E2D31352070726570656E642D3120617070656E642D3120617070656E642D626F74746F6D223E0D0A09093C64697620636C6173733D22706F72746C6574202D6C75746563652D626F726465722D726164697573223E0D0A0909093C78736C3A6170706C792D74656D706C617465732073656C6563743D226368696C642D70616765732D6C69737422202F3E0D0A09093C2F6469763E0D0A093C2F6469763E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D22706167655B706167652D6C6576656C3D315D22203E0D0A3C756C20636C6173733D22736974652D6D61702D6C6576656C2D6F6E65223E0D0A093C6C693E0D0A09093C6120687265663D227B24736974652D706174687D3F706167655F69643D7B706167652D69647D22207461726765743D225F746F70223E0D0A0909093C78736C3A76616C75652D6F662073656C6563743D22706167652D6E616D6522202F3E0D0A09093C2F613E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D22706167652D6465736372697074696F6E22202F3E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D22706167652D696D61676522202F3E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D226368696C642D70616765732D6C69737422202F3E0D0A09202020203C78736C3A746578742064697361626C652D6F75747075742D6573636170696E673D22796573223E0D0A0909202020203C215B43444154415B3C64697620636C6173733D22636C656172223E26233136303B3C2F6469763E5D5D3E0D0A09202020203C2F78736C3A746578743E0D0A093C2F6C693E0D0A3C2F756C3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D22706167655B706167652D6C6576656C3D325D22203E0D0A3C756C20636C6173733D22736974652D6D61702D6C6576656C2D74776F223E0D0A093C6C693E0D0A09093C6120687265663D227B24736974652D706174687D3F706167655F69643D7B706167652D69647D22207461726765743D225F746F70223E0D0A0909093C78736C3A76616C75652D6F662073656C6563743D22706167652D6E616D6522202F3E0D0A09093C2F613E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D22706167652D6465736372697074696F6E22202F3E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D226368696C642D70616765732D6C69737422202F3E0D0A093C2F6C693E0D0A3C2F756C3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D22706167655B706167652D6C6576656C3E325D22203E0D0A3C756C20636C6173733D22736974652D6D61702D6C6576656C2D68696768657374223E0D0A093C6C693E0D0A09093C6120687265663D227B24736974652D706174687D3F706167655F69643D7B706167652D69647D22207461726765743D225F746F70223E0D0A0909093C78736C3A76616C75652D6F662073656C6563743D22706167652D6E616D6522202F3E0D0A09093C2F613E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D22706167652D6465736372697074696F6E22202F3E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D226368696C642D70616765732D6C69737422202F3E0D0A093C2F6C693E0D0A3C2F756C3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D22706167652D6465736372697074696F6E223E0D0A093C6272202F3E3C78736C3A76616C75652D6F662073656C6563743D222E22202F3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D226368696C642D70616765732D6C6973745B706167652D6C6576656C3D305D223E0D0A093C78736C3A696620746573743D22636F756E742870616765293E3022203E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D227061676522202F3E0D0A202020203C2F78736C3A69663E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D226368696C642D70616765732D6C6973745B706167652D6C6576656C3D315D223E0D0A093C78736C3A696620746573743D22636F756E742870616765293E3022203E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D227061676522202F3E0D0A202020203C2F78736C3A69663E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D226368696C642D70616765732D6C6973745B706167652D6C6576656C3D325D223E0D0A093C78736C3A696620746573743D22636F756E742870616765293E3022203E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D227061676522202F3E0D0A202020203C2F78736C3A69663E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A3C78736C3A74656D706C617465206D617463683D226368696C642D70616765732D6C6973745B706167652D6C6576656C3E325D223E0D0A093C78736C3A696620746573743D22636F756E742870616765293E3022203E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D227061676522202F3E0D0A202020203C2F78736C3A69663E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D22706167652D696D616765223E0D0A093C64697620636C6173733D226C6576656C2D6F6E652D696D616765223E0D0A20202020093C64697620636C6173733D22706F6C61726F6964223E0D0A09093C696D672020626F726465723D2230222077696474683D22383022206865696768743D22383022207372633D22696D616765732F6C6F63616C2F646174612F70616765732F7B2E7D2220616C743D2222202F3E0D0A2020202020202020203C2F6469763E0D0A093C2F646976203E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C2F78736C3A7374796C6573686565743E0D0A),
	(253, 'Child Pages - Tree View', 'menu_tree.xsl', _binary 0x3C3F786D6C2076657273696F6E3D22312E30223F3E0D0A3C78736C3A7374796C6573686565742076657273696F6E3D22312E302220786D6C6E733A78736C3D22687474703A2F2F7777772E77332E6F72672F313939392F58534C2F5472616E73666F726D223E0D0A0D0A3C78736C3A706172616D206E616D653D22736974652D70617468222073656C6563743D22736974652D7061746822202F3E0D0A0D0A3C78736C3A74656D706C617465206D617463683D226D656E752D6C697374223E0D0A093C78736C3A7661726961626C65206E616D653D226D656E752D6C697374222073656C6563743D226D656E7522202F3E0D0A0D0A093C73637269707420747970653D22746578742F6A617661736372697074223E0D0A09092428646F63756D656E74292E72656164792866756E6374696F6E28297B0D0A090909242822237472656522292E7472656576696577287B0D0A09090909616E696D617465643A202266617374222C0D0A09090909636F6C6C61707365643A2066616C73652C0D0A09090909756E697175653A20747275652C0D0A09090909706572736973743A2022636F6F6B6965220D0A0909097D293B0D0A09090D0A09097D293B0D0A093C2F7363726970743E202020200D0A090D0A093C212D2D204D656E752054726565202D2D3E2020202020200D0A093C78736C3A696620746573743D226E6F7428737472696E67286D656E75293D272729223E0D0A09202020203C78736C3A746578742064697361626C652D6F75747075742D6573636170696E673D22796573223E0909202020200D0A2020202020202020202020203C64697620636C6173733D227472656534223E09090D0A0909093C68323E26233136303B3C2F68323E0D0A0909093C756C2069643D22747265652220636C6173733D227472656534223E0D0A202020202020202020202020202020203C78736C3A6170706C792D74656D706C617465732073656C6563743D226D656E7522202F3E20202020202020200D0A0909093C2F756C3E090D0A0909093C2F6469763E0D0A09092009203C6272202F3E0D0A09093C2F78736C3A746578743E200D0A093C2F78736C3A69663E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D226D656E75223E0D0A202020203C78736C3A7661726961626C65206E616D653D22696E646578223E0D0A20202020093C78736C3A6E756D626572206C6576656C3D2273696E676C65222076616C75653D22706F736974696F6E282922202F3E0D0A202020203C2F78736C3A7661726961626C653E0D0A09093C6C693E0D0A202020203C212D2D3C78736C3A696620746573743D2224696E64657820266C743B2037223E2D2D3E20202020202020200D0A202020202020202020203C6120687265663D227B24736974652D706174687D3F706167655F69643D7B706167652D69647D22207461726765743D225F746F7022203E0D0A2020202020202020202020202020203C78736C3A76616C75652D6F662073656C6563743D22706167652D6E616D6522202F3E0D0A20202020202020202020203C2F613E092020200D0A09092020203C6272202F3E0D0A09092020203C78736C3A76616C75652D6F662073656C6563743D22706167652D6465736372697074696F6E22202F3E0D0A09092020203C212D2D3C78736C3A76616C75652D6F662073656C6563743D22706167652D6465736372697074696F6E22202F3E3C6272202F3E2D2D3E09092020200909090D0A0909093C78736C3A6170706C792D74656D706C617465732073656C6563743D227375626C6576656C2D6D656E752D6C69737422202F3E200D0A0909090D0A09093C2F6C693E20090D0A202020203C212D2D3C2F78736C3A69663E2D2D3E0D0A09090D0A3C2F78736C3A74656D706C6174653E0D0A0D0A3C78736C3A74656D706C617465206D617463683D227375626C6576656C2D6D656E752D6C69737422203E200D0A090D0A093C78736C3A6170706C792D74656D706C617465732073656C6563743D227375626C6576656C2D6D656E7522202F3E200920202020090D0A0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D227375626C6576656C2D6D656E75223E0D0A2020203C78736C3A7661726961626C65206E616D653D22696E6465785F736F75735F6D656E75223E0D0A2020202020202020203C78736C3A6E756D626572206C6576656C3D2273696E676C65222076616C75653D22706F736974696F6E282922202F3E0D0A2020203C2F78736C3A7661726961626C653E0D0A0909203C756C203E0D0A0909093C6C693E0D0A3C212D2D093C7370616E3E202D2D3E0D0A090909093C6120687265663D227B24736974652D706174687D3F706167655F69643D7B706167652D69647D22207461726765743D225F746F70223E0D0A09090909093C78736C3A76616C75652D6F662073656C6563743D22706167652D6E616D6522202F3E0D0A090909093C2F613E0D0A0909093C2F6C693E0909090D0A09093C2F756C3E0D0A093C212D2D3C2F7370616E3E092D2D3E0D0A09090D0A2020200D0A3C2F78736C3A74656D706C6174653E0D0A0D0A3C2F78736C3A7374796C6573686565743E0D0A),
	(279, 'Site Map (Admin mode)', 'admin_site_map_admin.xsl', _binary 0x3C3F786D6C2076657273696F6E3D22312E30223F3E0D0A3C78736C3A7374796C6573686565742076657273696F6E3D22312E302220786D6C6E733A78736C3D22687474703A2F2F7777772E77332E6F72672F313939392F58534C2F5472616E73666F726D223E0D0A3C78736C3A706172616D206E616D653D22736974652D70617468222073656C6563743D22736974652D7061746822202F3E0D0A3C78736C3A7661726961626C65206E616D653D2263757272656E742D706167652D6964222073656C6563743D2263757272656E742D706167652D696422202F3E0D0A0D0A3C78736C3A74656D706C617465206D617463683D22706167655B706167652D6C6576656C3D305D223E200D0A093C6469762069643D22747265652220636C6173733D226A73747265652D64656661756C74223E0D0A09093C6120687265663D227B24736974652D706174687D3F706167655F69643D7B706167652D69647D22207469746C653D227B706167652D6465736372697074696F6E7D22203E0D0A0909093C78736C3A76616C75652D6F662073656C6563743D22706167652D6E616D6522202F3E0D0A0909093C78736C3A696620746573743D226E6F7428737472696E6728706167652D726F6C65293D276E6F6E652729223E200D0A090909093C7374726F6E673E3C78736C3A746578742064697361626C652D6F75747075742D6573636170696E673D22796573223E2D20236931386E7B706F7274616C2E736974652E61646D696E5F706167652E74616241646D696E4D6170526F6C6552657365727665647D3C2F78736C3A746578743E0D0A090909093C78736C3A76616C75652D6F662073656C6563743D22706167652D726F6C6522202F3E3C2F7374726F6E673E0D0A0909093C2F78736C3A69663E2020202020202020202020200D0A09093C2F613E0D0A09093C756C3E0D0A0909093C78736C3A6170706C792D74656D706C617465732073656C6563743D226368696C642D70616765732D6C69737422202F3E0D0A09093C2F756C3E0D0A093C2F6469763E0D0A3C2F78736C3A74656D706C6174653E0D0A202020200D0A3C78736C3A74656D706C617465206D617463683D22706167655B706167652D6C6576656C3E305D22203E0D0A093C78736C3A7661726961626C65206E616D653D22696E646578222073656C6563743D22706167652D696422202F3E0D0A093C78736C3A7661726961626C65206E616D653D226465736372697074696F6E222073656C6563743D22706167652D6465736372697074696F6E22202F3E0D0A090D0A093C6C692069643D226E6F64652D7B24696E6465787D223E0D0A09093C6120687265663D227B24736974652D706174687D3F706167655F69643D7B706167652D69647D22207469746C653D227B246465736372697074696F6E7D223E0D0A09093C78736C3A76616C75652D6F662073656C6563743D22706167652D6E616D6522202F3E0D0A0909093C78736C3A696620746573743D226E6F7428737472696E6728706167652D726F6C65293D276E6F6E652729223E0D0A090909093C7374726F6E673E0D0A0909090920203C78736C3A746578742064697361626C652D6F75747075742D6573636170696E673D22796573223E236931386E7B706F7274616C2E736974652E61646D696E5F706167652E74616241646D696E4D6170526F6C6552657365727665647D3C2F78736C3A746578743E3C78736C3A76616C75652D6F662073656C6563743D22706167652D726F6C6522202F3E0D0A090909093C2F7374726F6E673E0D0A0909093C2F78736C3A69663E0D0A09093C2F613E0D0A09093C78736C3A63686F6F73653E0D0A0909093C78736C3A7768656E20746573743D22636F756E74286368696C642D70616765732D6C6973742F2A293E30223E0D0A090909093C756C3E0D0A090909092020203C78736C3A6170706C792D74656D706C617465732073656C6563743D226368696C642D70616765732D6C69737422202F3E0D0A090909093C2F756C3E0D0A0909093C2F78736C3A7768656E3E0D0A09092020203C78736C3A6F74686572776973653E0D0A090909093C78736C3A6170706C792D74656D706C617465732073656C6563743D226368696C642D70616765732D6C69737422202F3E0D0A09092020203C2F78736C3A6F74686572776973653E0D0A09093C2F78736C3A63686F6F73653E0D0A093C2F6C693E0D0A3C2F78736C3A74656D706C6174653E0D0A202020200D0A3C78736C3A74656D706C617465206D617463683D226368696C642D70616765732D6C697374223E0D0A093C78736C3A6170706C792D74656D706C617465732073656C6563743D227061676522202F3E0D0A3C2F78736C3A74656D706C6174653E0D0A202020200D0A3C2F78736C3A7374796C6573686565743E0D0A),
	(285, 'Rubrique HTML - Fond color├⌐', 'portlet_html_background.xsl', _binary 0x3C3F786D6C2076657273696F6E3D22312E30223F3E0D0A3C78736C3A7374796C6573686565742076657273696F6E3D22312E302220786D6C6E733A78736C3D22687474703A2F2F7777772E77332E6F72672F313939392F58534C2F5472616E73666F726D223E0D0A0D0A3C78736C3A6F7574707574206D6574686F643D2268746D6C2220696E64656E743D22796573222F3E0D0A0D0A3C78736C3A74656D706C617465206D617463683D22706F72746C6574223E0D0A0D0A093C78736C3A7661726961626C65206E616D653D226465766963655F636C617373223E0D0A093C78736C3A63686F6F73653E0D0A09093C78736C3A7768656E20746573743D22737472696E6728646973706C61792D6F6E2D736D616C6C2D646576696365293D273027223E68696464656E2D70686F6E653C2F78736C3A7768656E3E0D0A09093C78736C3A7768656E20746573743D22737472696E6728646973706C61792D6F6E2D6E6F726D616C2D646576696365293D273027223E68696464656E2D7461626C65743C2F78736C3A7768656E3E0D0A09093C78736C3A7768656E20746573743D22737472696E6728646973706C61792D6F6E2D6C617267652D646576696365293D273027223E68696464656E2D6465736B746F703C2F78736C3A7768656E3E0D0A09093C78736C3A6F74686572776973653E3C2F78736C3A6F74686572776973653E0D0A093C2F78736C3A63686F6F73653E0D0A093C2F78736C3A7661726961626C653E0D0A090D0A093C64697620636C6173733D22706F72746C6574207B246465766963655F636C6173737D223E0D0A09093C64697620636C6173733D2277656C6C223E0D0A09093C78736C3A63686F6F73653E0D0A0909093C78736C3A7768656E20746573743D226E6F7428737472696E6728646973706C61792D706F72746C65742D7469746C65293D27312729223E0D0A090909093C68323E0D0A09090909093C78736C3A76616C75652D6F662064697361626C652D6F75747075742D6573636170696E673D22796573222073656C6563743D22706F72746C65742D6E616D6522202F3E0D0A090909093C2F68323E0D0A090909093C64697620636C6173733D22706F72746C65742D6261636B67726F756E642D636F6E74656E74202D6C75746563652D626F726465722D7261646975732D626F74746F6D223E0D0A09090909093C78736C3A6170706C792D74656D706C617465732073656C6563743D2268746D6C2D706F72746C657422202F3E0D0A090909093C2F6469763E0D0A0909093C2F78736C3A7768656E3E0D0A0909093C78736C3A6F74686572776973653E0D0A090909093C64697620636C6173733D22706F72746C65742D6261636B67726F756E642D636F6E74656E74202D6C75746563652D626F726465722D726164697573223E0D0A09090909093C78736C3A6170706C792D74656D706C617465732073656C6563743D2268746D6C2D706F72746C657422202F3E0D0A090909093C2F6469763E0D0A0909093C2F78736C3A6F74686572776973653E0D0A09093C2F78736C3A63686F6F73653E0D0A09093C2F6469763E0D0A202020203C2F6469763E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A3C78736C3A74656D706C617465206D617463683D2268746D6C2D706F72746C6574223E0D0A093C78736C3A6170706C792D74656D706C617465732073656C6563743D2268746D6C2D706F72746C65742D636F6E74656E7422202F3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A3C78736C3A74656D706C617465206D617463683D2268746D6C2D706F72746C65742D636F6E74656E74223E0D0A093C78736C3A76616C75652D6F662064697361626C652D6F75747075742D6573636170696E673D22796573222073656C6563743D222E22202F3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A3C2F78736C3A7374796C6573686565743E),
	(310, 'Rubrique MyLutece - D├⌐faut', 'portlet_mylutece.xsl', _binary 0x3C3F786D6C2076657273696F6E3D22312E30223F3E0D0A3C78736C3A7374796C6573686565742076657273696F6E3D22312E302220786D6C6E733A78736C3D22687474703A2F2F7777772E77332E6F72672F313939392F58534C2F5472616E73666F726D223E0D0A0D0A3C78736C3A74656D706C617465206D617463683D22706F72746C6574223E0D0A0D0A093C78736C3A7661726961626C65206E616D653D226465766963655F636C617373223E0D0A093C78736C3A63686F6F73653E0D0A09093C78736C3A7768656E20746573743D22737472696E6728646973706C61792D6F6E2D736D616C6C2D646576696365293D273027223E68696464656E2D70686F6E653C2F78736C3A7768656E3E0D0A09093C78736C3A7768656E20746573743D22737472696E6728646973706C61792D6F6E2D6E6F726D616C2D646576696365293D273027223E68696464656E2D7461626C65743C2F78736C3A7768656E3E0D0A09093C78736C3A7768656E20746573743D22737472696E6728646973706C61792D6F6E2D6C617267652D646576696365293D273027223E68696464656E2D6465736B746F703C2F78736C3A7768656E3E0D0A09093C78736C3A6F74686572776973653E3C2F78736C3A6F74686572776973653E0D0A093C2F78736C3A63686F6F73653E0D0A093C2F78736C3A7661726961626C653E0D0A0D0A093C64697620636C6173733D22706F72746C6574207B246465766963655F636C6173737D223E0D0A09093C64697620636C6173733D2277656C6C223E0D0A0909093C78736C3A63686F6F73653E0D0A0920202020202020203C78736C3A7768656E20746573743D226E6F7428737472696E6728646973706C61792D706F72746C65742D7469746C65293D27312729223E0D0A090909093C68333E3C78736C3A76616C75652D6F662064697361626C652D6F75747075742D6573636170696E673D22796573222073656C6563743D22706F72746C65742D6E616D6522202F3E3C2F68333E0D0A090909093C78736C3A6170706C792D74656D706C617465732073656C6563743D226D796C75746563652D706F72746C657422202F3E0D0A0920202020202020203C2F78736C3A7768656E3E0D0A0920202020202020203C78736C3A6F74686572776973653E0D0A090909093C78736C3A6170706C792D74656D706C617465732073656C6563743D226D796C75746563652D706F72746C657422202F3E0D0A0920202020202020203C2F78736C3A6F74686572776973653E0D0A0909093C2F78736C3A63686F6F73653E0D0A0909093C64697620636C6173733D22636C656172666978223E26233136303B3C2F6469763E0D0A09093C2F6469763E0D0A093C2F6469763E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D226D796C75746563652D706F72746C6574223E0D0A093C78736C3A6170706C792D74656D706C617465732073656C6563743D22757365722D6E6F742D7369676E656422202F3E0D0A093C78736C3A6170706C792D74656D706C617465732073656C6563743D226C75746563652D7573657222202F3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D22757365722D6E6F742D7369676E6564223E0D0A093C666F726D20636C6173733D22666F726D2220616374696F6E3D226A73702F736974652F706C7567696E732F6D796C75746563652F446F4D794C75746563654C6F67696E2E6A737022206D6574686F643D22706F7374223E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D226C75746563652D757365722D61757468656E7469636174696F6E2D736572766963655B4064656C6567617465643D2774727565275D22202F3E0D0A09093C78736C3A6170706C792D74656D706C617465732073656C6563743D226C75746563652D757365722D61757468656E7469636174696F6E2D736572766963655B406C6F67696E70617373776F72642D72657175697265643D2774727565275D22202F3E0D0A09093C78736C3A696620746573743D22636F756E74286C75746563652D757365722D61757468656E7469636174696F6E2D736572766963655B406C6F67696E70617373776F72642D72657175697265643D2774727565275D29202667743B3D2031223E0D0A0909093C6C6162656C20666F723D22757365726E616D65223E436F646520642761636326233233323B73203A3C2F6C6162656C3E0D0A0909093C696E707574206E616D653D22757365726E616D652220636C6173733D22696E7075742D6E6F726D616C222069643D22757365726E616D6522206175746F636F6D706C6574653D226F66662220746162696E6465783D22312220747970653D2274657874222F3E3C6272202F3E0D0A0909093C6C6162656C20666F723D2270617373776F7264223E4D6F74206465207061737365203A3C2F6C6162656C3E0D0A0909093C696E707574206E616D653D2270617373776F72642220636C6173733D22696E7075742D6E6F726D616C222069643D2270617373776F726422206175746F636F6D706C6574653D226F66662220746162696E6465783D22322220747970653D2270617373776F726422202F3E0D0A0909093C627574746F6E20636C6173733D2262746E2062746E2D736D616C6C2220746162696E6465783D22332220747970653D227375626D6974223E3C6920636C6173733D2269636F6E2D75736572223E26233136303B3C2F693E26233136303B436F6E6E6578696F6E3C2F627574746F6E3E0D0A09093C2F78736C3A69663E0D0A093C2F666F726D3E0D0A093C78736C3A6170706C792D74656D706C617465732073656C6563743D226C75746563652D757365722D6E65772D6163636F756E742D75726C22202F3E0D0A093C78736C3A6170706C792D74656D706C617465732073656C6563743D226C75746563652D757365722D6C6F73742D70617373776F72642D75726C22202F3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A3C78736C3A74656D706C617465206D617463683D226C75746563652D757365722D61757468656E7469636174696F6E2D736572766963655B406C6F67696E70617373776F72642D72657175697265643D2774727565275D223E0D0A093C6C6162656C20636C6173733D22726164696F2220666F723D22617574685F70726F766964657222203E0D0A09093C696E70757420747970653D22726164696F22206E616D653D22617574685F70726F7669646572222076616C75653D227B6E616D657D2220636865636B65643D22636865636B656422202F3E0D0A09093C78736C3A76616C75652D6F662073656C6563743D22646973706C61792D6E616D6522202F3E0D0A093C2F6C6162656C3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A3C78736C3A74656D706C617465206D617463683D226C75746563652D757365722D61757468656E7469636174696F6E2D736572766963655B4064656C6567617465643D2774727565275D223E0D0A093C6120687265663D227B75726C7D3F617574685F70726F76696465723D7B6E616D657D223E0D0A09093C696D67207372633D227B69636F6E2D75726C7D2220616C743D227B646973706C61792D6E616D657D22207469746C653D227B646973706C61792D6E616D657D222F3E0D0A093C2F613E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D226C75746563652D75736572223E0D0A202020203C703E0D0A093C7374726F6E673E4269656E76656E756526233136303B0D0A09093C78736C3A76616C75652D6F662064697361626C652D6F75747075742D6573636170696E673D22796573222073656C6563743D226C75746563652D757365722D6E616D652D676976656E22202F3E26233136303B0D0A09093C78736C3A76616C75652D6F662064697361626C652D6F75747075742D6573636170696E673D22796573222073656C6563743D226C75746563652D757365722D6E616D652D66616D696C7922202F3E0D0A093C2F7374726F6E673E0D0A093C2F703E0D0A202020203C78736C3A6170706C792D74656D706C617465732073656C6563743D226C75746563652D757365722D6C6F676F75742D75726C22202F3E0D0A202020203C78736C3A6170706C792D74656D706C617465732073656C6563743D226C75746563652D757365722D766965772D6163636F756E742D75726C22202F3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D226C75746563652D757365722D6C6F676F75742D75726C223E0D0A2020203C666F726D20636C6173733D22666F726D2D696E6C696E652070756C6C2D6C65667422206E616D653D226C6F676F75742220616374696F6E3D227B2E7D22206D6574686F643D22706F7374223E0D0A202020093C627574746F6E20747970653D227375626D69742220636C6173733D2262746E223E3C6920636C6173733D2269636F6E2D6F6666223E26233136303B3C2F693E26233136303B4426233233333B636F6E6E6578696F6E3C2F627574746F6E3E26233136303B0D0A2020203C2F666F726D3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D226C75746563652D757365722D6E65772D6163636F756E742D75726C223E0D0A093C666F726D20636C6173733D22666F726D2D696E6C696E652070756C6C2D6C65667422206E616D653D226C6F676F75742220616374696F6E3D227B2E7D22206D6574686F643D22706F7374223E0D0A09093C627574746F6E20747970653D227375626D69742220636C6173733D2262746E223E3C6920636C6173733D2269636F6E2D706C7573223E26233136303B3C2F693E26233136303B437226233233333B657220756E20636F6D7074653C2F627574746F6E3E26233136303B0D0A202020203C2F666F726D3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A0D0A3C78736C3A74656D706C617465206D617463683D226C75746563652D757365722D6C6F73742D70617373776F72642D75726C223E0D0A093C666F726D20636C6173733D22666F726D2D696E6C696E652070756C6C2D6C65667422206E616D653D226C6F676F75742220616374696F6E3D227B2E7D22206D6574686F643D22706F7374223E0D0A09202020093C627574746F6E20747970653D227375626D69742220636C6173733D2262746E223E3C6920636C6173733D2269636F6E2D6C6F636B223E26233136303B3C2F693E26233136303B4D6F742064652070617373652070657264753C2F627574746F6E3E26233136303B0D0A2020203C2F666F726D3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A3C78736C3A74656D706C617465206D617463683D226C75746563652D757365722D766965772D6163636F756E742D75726C223E0D0A093C666F726D20636C6173733D22666F726D2D696E6C696E652070756C6C2D6C65667422206E616D653D226C6F676F75742220616374696F6E3D227B2E7D22206D6574686F643D22706F7374223E0D0A09202020093C627574746F6E20747970653D227375626D69742220636C6173733D2262746E223E3C6920636C6173733D2269636F6E2D65646974223E26233136303B3C2F693E26233136303B566F6972206D6F6E20636F6D7074653C2F627574746F6E3E26233136303B0D0A093C2F666F726D3E0D0A3C2F78736C3A74656D706C6174653E0D0A0D0A3C2F78736C3A7374796C6573686565743E0D0A0D0A);
/*!40000 ALTER TABLE `core_stylesheet` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_style_mode_stylesheet`;
CREATE TABLE IF NOT EXISTS `core_style_mode_stylesheet` (
  `id_style` int(11) NOT NULL DEFAULT 0,
  `id_mode` int(11) NOT NULL DEFAULT 0,
  `id_stylesheet` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_style`,`id_mode`,`id_stylesheet`),
  KEY `index_style_mode_stylesheet` (`id_stylesheet`,`id_mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_style_mode_stylesheet` DISABLE KEYS */;
INSERT INTO `core_style_mode_stylesheet` (`id_style`, `id_mode`, `id_stylesheet`) VALUES
	(3, 0, 211),
	(4, 0, 213),
	(5, 0, 215),
	(6, 0, 217),
	(7, 0, 253),
	(8, 1, 279),
	(100, 0, 10),
	(101, 0, 285),
	(200, 0, 310);
/*!40000 ALTER TABLE `core_style_mode_stylesheet` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_template`;
CREATE TABLE IF NOT EXISTS `core_template` (
  `template_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `template_value` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_template` DISABLE KEYS */;
INSERT INTO `core_template` (`template_name`, `template_value`) VALUES
	('core_account_reactivated_mail', 'Bonjour ${first_name} ! Votre compte utilisateur a bien ├⌐t├⌐ r├⌐activ├⌐. Il est d├⌐sormais valable jusqu\'au ${date_valid}.'),
	('core_expiration_mail', 'Bonjour ${first_name} ! Votre compte a expir├⌐. Vous ne pourrez plus vous connecter avec, et les donn├⌐es vous concernant ont ├⌐t├⌐ anonymis├⌐es'),
	('core_first_alert_mail', 'Bonjour ${first_name} ! Votre compte utilisateur arrive ├á expiration. Pour prolonger sa validit├⌐, veuillez <a href="${url}">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera d├⌐sactiv├⌐.'),
	('core_other_alert_mail', 'Bonjour ${first_name} ! Votre compte utilisateur arrive ├á expiration. Pour prolonger sa validit├⌐, veuillez <a href="${url}">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera d├⌐sactiv├⌐.'),
	('core_password_expired', 'Bonjour ! Votre mot de passe a expir├⌐. Lors de votre prochaine connexion, vous pourrez le changer.');
/*!40000 ALTER TABLE `core_template` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_text_editor`;
CREATE TABLE IF NOT EXISTS `core_text_editor` (
  `editor_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `editor_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `backOffice` smallint(6) NOT NULL,
  PRIMARY KEY (`editor_name`,`backOffice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_text_editor` DISABLE KEYS */;
INSERT INTO `core_text_editor` (`editor_name`, `editor_description`, `backOffice`) VALUES
	('', 'portal.admindashboard.editors.labelFrontNoEditor', 0),
	('', 'portal.admindashboard.editors.labelBackNoEditor', 1),
	('markitupbbcode', 'portal.admindashboard.editors.labelFrontMarkitupBBCode', 0),
	('tinymce', 'portal.admindashboard.editors.labelBackTinyMCE', 1);
/*!40000 ALTER TABLE `core_text_editor` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_user_password_history`;
CREATE TABLE IF NOT EXISTS `core_user_password_history` (
  `id_user` int(11) NOT NULL,
  `password` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date_password_change` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_user`,`date_password_change`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_user_password_history` DISABLE KEYS */;
INSERT INTO `core_user_password_history` (`id_user`, `password`, `date_password_change`) VALUES
	(1, 'PBKDF2WITHHMACSHA512:40000:453079100ff4d8d07eed3a7a85c025c9:913e4f870e5fe95dff24341a11f5f7cdb8314ac983e4ea6fa2c00d80ae70bfb8700ce9ea80f8d0fb23c75a276e94e10d58ee165e797c5498015dd8bec56353f36f7fefe505f4a15d9b6eabe676ee757c4efc4ca1f180669fc3fd13981dc35ebc0a76930a3a22b65aadcd95d3970f46a7ab15622cb3895a06121f44b68e747986', '2020-11-13 14:07:25'),
	(1, 'PBKDF2WITHHMACSHA512:40000:0ef18c08a4f10534fc516d8e3a5ecb7c:b5c51a942366278ed207df9011cd6eef4e1dddf27137b6ce95b63078d0bcb66b3e9e2a2ec4d8452eb0522ab82669813cf82cea01e4ceb8004905c461cd3f5d1a4cb106d14d1330285b74e5bd4d57122cfd42d324d7788c83e648398665e0a8ef4dba44b25d04605dc380374ba4b880f0138b7dd6a7ccdc4960d506b0e0fdc2fe', '2021-10-29 17:54:06'),
	(1, 'PBKDF2WITHHMACSHA512:40000:a7698aee8e8301dcf7e01451a7ceccaa:5312265041ea9f479b972de8e94910037e5ae140ed176fe90c30e58ee6f576dcd6058b26e0af5442b5c93355de82176f33343b821dfd117bf67da8e62983e1786fbe2a8f9f5854ed7c4c0d9b459576f1dd3c110b3dc4161df6fb358c2d1fb7f4b54cce1f4fdacab2bef81f5234d323ce5493b38ce6ad3d6bac3a8edabd435ade', '2022-03-03 12:33:42'),
	(1, 'PBKDF2WITHHMACSHA512:40000:6244ea1f0ba167d83c3ce6df3db308ec:87da8233548e2b51ffc803a90749f9bc5ff1b7b255dcf7952e08185d8eb19965a58d5a01eccb84cd8d30a58799ac32895bc7bf18cf0ead5027eece7d999b65fd80f7933e6559b6cd933fdbb7ea48b957631b2e4f5790756cb297773986818ca879de106aa7369953b0cd3c9d0027a8d214b374c9b1e341425160f8f0923c8acf', '2022-03-03 12:34:00'),
	(13, 'PBKDF2WITHHMACSHA512:40000:475a1403b563c6bbb6e2e2df1242e849:6b69f203303b2c0bf2ff1ac36732b5dbdfbbe7427d2fd2666692b93ff718eb03e5cc3c0a5c42ee505319ea3fd49a0db26e23633fa9ff2c6d16fad4d3e58af805e805e1cd518c9ba790121ab46468b9028934dc9847857982059164df0460c49cdb7c1cefc708607655d34feb5f048e42157f364c2930756f63da7bba02a49a99', '2021-11-23 11:05:15'),
	(19, 'PBKDF2WITHHMACSHA512:40000:728eb31b4d020a6f65de8ec20f381779:683a43c47c669ba2a10e51665a062f232a2667536b75edfefe24d8c30d5396775508164b7a6baca322052813fae280c5d51f55a1a88b363b4eb4626c59aaa7ac9100d8afaf30b52e4db8d1a4381cc3ca105f6dae1e36b6c6a8ea588ca3c1187436814f3ba3819be0f425a796916ff720b561169a1ef034b6c99aa56b7466902d', '2021-01-05 14:28:58'),
	(57, 'PBKDF2WITHHMACSHA512:40000:230772a6d7556c4e38bd9c2c5f94e95a:f2c95299dda690117df6bb417ab2a5c7995259f644894a98325fd1cffa25cf6dae144532a50fb9ba5f4ae6e75bd3456f649404b2371e25256a97762de35ef83328d17c04a52d6a43b0599bd06e5ea03b8118d22d750031609e399b146d14712a14ba03f3ad49bfd1fc71b1209a8e75dece806c30759f0407f4fc35bbb1ff3e37', '2021-11-25 09:32:22');
/*!40000 ALTER TABLE `core_user_password_history` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_user_preferences`;
CREATE TABLE IF NOT EXISTS `core_user_preferences` (
  `id_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pref_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pref_value` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`,`pref_key`),
  KEY `index_user_preferences` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_user_preferences` DISABLE KEYS */;
INSERT INTO `core_user_preferences` (`id_user`, `pref_key`, `pref_value`) VALUES
	('1f407a85-de92-441e-a57d-df2d0d810687', 'mydashboard.dashboardConfigId', '2-260549');
/*!40000 ALTER TABLE `core_user_preferences` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_user_right`;
CREATE TABLE IF NOT EXISTS `core_user_right` (
  `id_right` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_right`,`id_user`),
  KEY `index_user_right` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_user_right` DISABLE KEYS */;
INSERT INTO `core_user_right` (`id_right`, `id_user`) VALUES
	('APPOINTMENT_CATEGORY_MANAGEMENT', 1),
	('APPOINTMENT_COMMENT_MANAGEMENT', 1),
	('APPOINTMENT_FORM_MANAGEMENT', 1),
	('CORE_ADMIN_SITE', 1),
	('CORE_ADMINDASHBOARD_MANAGEMENT', 1),
	('CORE_CACHE_MANAGEMENT', 1),
	('CORE_DAEMONS_MANAGEMENT', 1),
	('CORE_DASHBOARD_MANAGEMENT', 1),
	('CORE_EDITORS_MANAGEMENT', 1),
	('CORE_FEATURES_MANAGEMENT', 1),
	('CORE_LEVEL_RIGHT_MANAGEMENT', 1),
	('CORE_LINK_SERVICE_MANAGEMENT', 1),
	('CORE_LOGS_VISUALISATION', 1),
	('CORE_MAILINGLISTS_MANAGEMENT', 1),
	('CORE_MODES_MANAGEMENT', 1),
	('CORE_PAGE_TEMPLATE_MANAGEMENT', 1),
	('CORE_PLUGINS_MANAGEMENT', 1),
	('CORE_PROPERTIES_MANAGEMENT', 1),
	('CORE_RBAC_MANAGEMENT', 1),
	('CORE_RIGHT_MANAGEMENT', 1),
	('CORE_ROLES_MANAGEMENT', 1),
	('CORE_SEARCH_INDEXATION', 1),
	('CORE_SEARCH_MANAGEMENT', 1),
	('CORE_STYLES_MANAGEMENT', 1),
	('CORE_STYLESHEET_MANAGEMENT', 1),
	('CORE_TEMPLATES_AUTO_INCLUDES_MANAGEMENT', 1),
	('CORE_USERS_MANAGEMENT', 1),
	('CORE_WORKGROUPS_MANAGEMENT', 1),
	('CORE_XSL_EXPORT_MANAGEMENT', 1),
	('ENTRY_TYPE_MANAGEMENT', 1),
	('HTMLPAGE_MANAGEMENT', 1),
	('MULTIVIEW_APPOINTMENT', 1),
	('MYDASHBOARD_PANEL_MANAGEMENT', 1),
	('MYLUTECE_MANAGE_AUTHENTICATION_FILTER', 1),
	('MYLUTECE_MANAGEMENT', 1),
	('PROFILES_MANAGEMENT', 1),
	('PROFILES_VIEWS_MANAGEMENT', 1),
	('REGULAR_EXPRESSION_MANAGEMENT', 1),
	('RESOURCE_MANAGE_RESOURCES', 1),
	('SITELABELS_MANAGEMENT', 1),
	('SOLR_CONFIGURATION_MANAGEMENT', 1),
	('SOLR_FIELDS_MANAGEMENT', 1),
	('SOLR_INDEX_MANAGEMENT', 1),
	('SYSTEMINFO_MANAGEMENT', 1),
	('VIEW_TEMP_FILES', 1),
	('WORKFLOW_MANAGEMENT', 1);
/*!40000 ALTER TABLE `core_user_right` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_user_role`;
CREATE TABLE IF NOT EXISTS `core_user_role` (
  `role_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`role_key`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_user_role` DISABLE KEYS */;
INSERT INTO `core_user_role` (`role_key`, `id_user`) VALUES
	('all_site_manager', 1),
	('APP_OVERBOOK', 13),
	('APP_OVERBOOK', 57),
	('APP_OVERBOOK', 58),
	('assign_groups', 1),
	('assign_groups', 13),
	('assign_roles', 1),
	('assign_roles', 13),
	('COMMENT_ADD', 1),
	('COMMENT_ADD', 13),
	('COMMENT_ADD', 57),
	('COMMENT_ADD', 58),
	('COMMENT_MODERATE', 1),
	('COMMENT_MODERATE', 13),
	('COMMENT_MODERATE', 57),
	('COMMENT_MODERATE', 58),
	('CONSULTATION_KIBANA', 1),
	('CONSULTATION_KIBANA', 13),
	('CONSULTATION_KIBANA', 57),
	('CONSULTATION_KIBANA', 58),
	('kibana_dashboards_manager', 1),
	('LISTE_DIFF', 13),
	('LISTE_DIFF', 57),
	('LISTE_DIFF', 58),
	('mylutece_manager', 1),
	('profiles_manager', 1),
	('profiles_manager', 13),
	('profiles_manager', 57),
	('profiles_manager', 58),
	('profiles_views_manager', 1),
	('RDV_ADMIN', 13),
	('RDV_ADMIN', 57),
	('RDV_ADMIN', 58),
	('rdv_agentAccueil', 13),
	('rdv_agentAccueil', 19),
	('rdv_agentAccueil', 57),
	('rdv_agentAccueil', 58),
	('rdv_planificateur', 13),
	('rdv_planificateur', 57),
	('rdv_planificateur', 58),
	('super_admin', 1),
	('workflow_manager', 1),
	('workflow_manager', 13),
	('workflow_manager', 57),
	('workflow_manager', 58);
/*!40000 ALTER TABLE `core_user_role` ENABLE KEYS */;

DROP TABLE IF EXISTS `core_xsl_export`;
CREATE TABLE IF NOT EXISTS `core_xsl_export` (
  `id_xsl_export` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id_xsl_export`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `core_xsl_export` DISABLE KEYS */;
INSERT INTO `core_xsl_export` (`id_xsl_export`, `title`, `description`, `extension`, `id_file`, `plugin`) VALUES
	(125, 'Core - Export users to a CSV file', 'Export back office users to a CSV file', 'csv', 125, 'core'),
	(126, 'Core - Export users to a XML file', 'Export back office users to a XML file', 'xml', 126, 'core');
/*!40000 ALTER TABLE `core_xsl_export` ENABLE KEYS */;

DROP TABLE IF EXISTS `crm_client_crm_item`;
CREATE TABLE IF NOT EXISTS `crm_client_crm_item` (
  `id_crm_queue` int(11) NOT NULL DEFAULT 0,
  `crm_item` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_crm_queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `crm_client_crm_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_client_crm_item` ENABLE KEYS */;

DROP TABLE IF EXISTS `crm_client_crm_queue`;
CREATE TABLE IF NOT EXISTS `crm_client_crm_queue` (
  `id_crm_queue` int(11) NOT NULL DEFAULT 0,
  `is_locked` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_crm_queue`),
  KEY `is_locked_crm_client_crm_queue` (`is_locked`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `crm_client_crm_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_client_crm_queue` ENABLE KEYS */;

DROP TABLE IF EXISTS `elasticdata_appointment_data_history`;
CREATE TABLE IF NOT EXISTS `elasticdata_appointment_data_history` (
  `id_data_history` int(11) NOT NULL AUTO_INCREMENT,
  `data_type` mediumtext NOT NULL,
  `time_until_availability` bigint(20) DEFAULT 0,
  `time_until_category_availability` bigint(20) DEFAULT 0,
  `id_ressource` int(11) NOT NULL,
  `sum_nbPlaces_before_appointment` int(11) DEFAULT 0,
  `sum_category_nbPlaces_before_appointment` int(11) DEFAULT 0,
  PRIMARY KEY (`id_data_history`),
  KEY `fk_elasticdata_appointment_data_history_idx` (`id_ressource`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `elasticdata_appointment_data_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `elasticdata_appointment_data_history` ENABLE KEYS */;

DROP TABLE IF EXISTS `elasticdata_indexer_action`;
CREATE TABLE IF NOT EXISTS `elasticdata_indexer_action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` varchar(255) NOT NULL,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_datasource` varchar(255) NOT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `elasticdata_indexer_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `elasticdata_indexer_action` ENABLE KEYS */;

DROP TABLE IF EXISTS `filegen_temporary_file`;
CREATE TABLE IF NOT EXISTS `filegen_temporary_file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL DEFAULT 0,
  `title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_physical_file` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `filegen_temporary_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `filegen_temporary_file` ENABLE KEYS */;

DROP TABLE IF EXISTS `genatt_entry`;
CREATE TABLE IF NOT EXISTS `genatt_entry` (
  `id_entry` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_type` int(11) NOT NULL DEFAULT 0,
  `id_parent` int(11) DEFAULT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `help_message` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `mandatory` smallint(6) DEFAULT NULL,
  `fields_in_line` smallint(6) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `id_field_depend` int(11) DEFAULT NULL,
  `field_unique` smallint(6) DEFAULT NULL,
  `css_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pos_conditional` int(11) DEFAULT 0,
  `error_message` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_only_display_back` smallint(6) DEFAULT 0,
  `is_editable_back` smallint(6) DEFAULT 0,
  `is_indexed` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_entry`),
  KEY `index_genatt_entry_resource` (`id_resource`),
  KEY `index_genatt_entry_parent` (`id_parent`),
  KEY `index_genatt_code` (`code`),
  KEY `fk_genatt_entry_type` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `genatt_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `genatt_entry` ENABLE KEYS */;

DROP TABLE IF EXISTS `genatt_entry_type`;
CREATE TABLE IF NOT EXISTS `genatt_entry_type` (
  `id_type` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_group` smallint(6) DEFAULT NULL,
  `is_comment` int(11) DEFAULT NULL,
  `is_mylutece_user` smallint(6) DEFAULT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int(11) DEFAULT 0,
  `inactive` int(11) DEFAULT 0,
  PRIMARY KEY (`id_type`),
  KEY `index_genatt_entry_type_plugin` (`plugin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `genatt_entry_type` DISABLE KEYS */;
INSERT INTO `genatt_entry_type` (`id_type`, `title`, `is_group`, `is_comment`, `is_mylutece_user`, `class_name`, `icon_name`, `plugin`, `display_order`, `inactive`) VALUES
	(101, 'Bouton radio', 0, 0, 0, 'appointment.entryTypeRadioButton', NULL, 'appointment', 0, 0),
	(102, 'Case ├á cocher', 0, 0, 0, 'appointment.entryTypeCheckBox', NULL, 'appointment', 0, 0),
	(103, 'Commentaire', 0, 1, 0, 'appointment.entryTypeComment', NULL, 'appointment', 0, 0),
	(104, 'Date', 0, 0, 0, 'appointment.entryTypeDate', NULL, 'appointment', 0, 0),
	(105, 'Liste d├⌐roulante', 0, 0, 0, 'appointment.entryTypeSelect', NULL, 'appointment', 0, 0),
	(106, 'Zone de texte court', 0, 0, 0, 'appointment.entryTypeText', NULL, 'appointment', 0, 0),
	(107, 'Zone de texte long', 0, 0, 0, 'appointment.entryTypeTextArea', NULL, 'appointment', 0, 0),
	(108, 'Num├⌐rotation', 0, 0, 0, 'appointment.entryTypeNumbering', NULL, 'appointment', 0, 0),
	(109, 'Regroupement', 1, 0, 0, 'appointment.entryTypeGroup', NULL, 'appointment', 0, 0),
	(110, 'Liste d├⌐roulante SQL', 0, 0, 0, 'appointment.entryTypeSelectSQL', NULL, 'appointment', 0, 0),
	(111, 'G├⌐olocalisation', 0, 0, 0, 'appointment.entryTypeGeolocation', NULL, 'appointment', 0, 0),
	(112, 'Session', 0, 0, 0, 'appointment.entryTypeSession', NULL, 'appointment', 0, 0),
	(113, 'Utilisateur MyLutece', 0, 0, 1, 'appointment.entryTypeMyLuteceUser', NULL, 'appointment', 0, 0),
	(114, 'Image', 0, 0, 0, 'appointment.entryTypeImage', NULL, 'appointment', 0, 0),
	(115, 'Fichier', 0, 0, 0, 'appointment.entryTypeFile', NULL, 'appointment', 0, 0),
	(116, 'Num├⌐ro de t├⌐l├⌐phone', 0, 0, 0, 'appointment.entryTypePhone', NULL, 'appointment', 0, 0);
/*!40000 ALTER TABLE `genatt_entry_type` ENABLE KEYS */;

DROP TABLE IF EXISTS `genatt_field`;
CREATE TABLE IF NOT EXISTS `genatt_field` (
  `id_field` int(11) NOT NULL AUTO_INCREMENT,
  `id_entry` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `default_value` smallint(6) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `value_type_date` date DEFAULT NULL,
  `no_display_title` smallint(6) DEFAULT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_field`),
  KEY `index_genatt_field_entry` (`id_entry`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `genatt_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `genatt_field` ENABLE KEYS */;

DROP TABLE IF EXISTS `genatt_referenceitem_field`;
CREATE TABLE IF NOT EXISTS `genatt_referenceitem_field` (
  `id_field` int(11) NOT NULL DEFAULT 0,
  `id_item` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `genatt_referenceitem_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `genatt_referenceitem_field` ENABLE KEYS */;

DROP TABLE IF EXISTS `genatt_response`;
CREATE TABLE IF NOT EXISTS `genatt_response` (
  `id_response` int(11) NOT NULL AUTO_INCREMENT,
  `response_value` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_entry` int(11) DEFAULT NULL,
  `iteration_number` int(11) DEFAULT -1,
  `id_field` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT 1,
  PRIMARY KEY (`id_response`),
  KEY `index_genatt_response_entry` (`id_entry`)
) ENGINE=InnoDB AUTO_INCREMENT=1334 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `genatt_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `genatt_response` ENABLE KEYS */;

DROP TABLE IF EXISTS `genatt_verify_by`;
CREATE TABLE IF NOT EXISTS `genatt_verify_by` (
  `id_field` int(11) NOT NULL DEFAULT 0,
  `id_expression` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_field`,`id_expression`),
  KEY `index_genatt_verify_by_field` (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `genatt_verify_by` DISABLE KEYS */;
/*!40000 ALTER TABLE `genatt_verify_by` ENABLE KEYS */;

DROP TABLE IF EXISTS `gfa_appointment`;
CREATE TABLE IF NOT EXISTS `gfa_appointment` (
  `id_resource` int(11) NOT NULL AUTO_INCREMENT,
  `id_appointment` int(11) NOT NULL DEFAULT 0,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `action` int(11) NOT NULL,
  `date_appointment` date DEFAULT NULL,
  `description` varchar(255) DEFAULT '',
  `status` varchar(50) NOT NULL DEFAULT '',
  `number_relaunch` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_resource`),
  KEY `fk_id_form` (`id_form`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `gfa_appointment` DISABLE KEYS */;
INSERT INTO `gfa_appointment` (`id_resource`, `id_appointment`, `id_form`, `action`, `date_appointment`, `description`, `status`, `number_relaunch`) VALUES
	(14, 658, 4, 198, '2021-04-02', 'TAKE_APPOINTMENT: rafik t test1 modifier Email: rafik.yahiaoui@paris.fr', 'KO', 6),
	(15, 660, 4, 198, '2021-03-26', 'TAKE_APPOINTMENT: rafik t test1 modifier Email: ryahia46@gmail.com', 'KO', 6);
/*!40000 ALTER TABLE `gfa_appointment` ENABLE KEYS */;

DROP TABLE IF EXISTS `gfa_config`;
CREATE TABLE IF NOT EXISTS `gfa_config` (
  `id_workflow` int(11) NOT NULL DEFAULT 0,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `gfa_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `gfa_config` ENABLE KEYS */;

DROP TABLE IF EXISTS `gfa_error`;
CREATE TABLE IF NOT EXISTS `gfa_error` (
  `id_error` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `date_error` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `error` mediumtext DEFAULT NULL,
  `action` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_error`),
  KEY `fk_id_resource` (`id_resource`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `gfa_error` DISABLE KEYS */;
INSERT INTO `gfa_error` (`id_error`, `id_resource`, `date_error`, `error`, `action`) VALUES
	(19, 14, '2021-02-23 11:38:45', 'There are no time zones available to make this appointment', 'TAKE_APPOINTMENT'),
	(20, 15, '2021-02-23 11:58:53', 'There are no time zones available to make this appointment', 'TAKE_APPOINTMENT');
/*!40000 ALTER TABLE `gfa_error` ENABLE KEYS */;

DROP TABLE IF EXISTS `gfa_workflow_mapping`;
CREATE TABLE IF NOT EXISTS `gfa_workflow_mapping` (
  `id_form` int(11) NOT NULL,
  `action_wf_begin` int(11) NOT NULL,
  `action_wf_relaunch` int(11) NOT NULL,
  PRIMARY KEY (`id_form`,`action_wf_begin`,`action_wf_relaunch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `gfa_workflow_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `gfa_workflow_mapping` ENABLE KEYS */;

DROP TABLE IF EXISTS `htmlpage`;
CREATE TABLE IF NOT EXISTS `htmlpage` (
  `id_htmlpage` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL DEFAULT '',
  `html_content` mediumtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `workgroup_key` varchar(50) NOT NULL DEFAULT 'all',
  `role` varchar(50) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id_htmlpage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `htmlpage` DISABLE KEYS */;
INSERT INTO `htmlpage` (`id_htmlpage`, `description`, `html_content`, `status`, `workgroup_key`, `role`) VALUES
	(1, 'Text d\'accueil sp??cifique ??cran recherche Titres', '<p>Pour que votre rendez-vous se d&eacute;roule dans les meilleures conditions, nous vous invitons &agrave; lire les informations pr&eacute;sentes sur la page <strong><a href="https://www.paris.fr/pages/carte-nationale-d-identite-et-passeport-4825">paris.fr d&eacute;di&eacute;e</a></strong> et &agrave; constituer votre dossier avant la prise de votre rendez-vous.</p>\r\n<p>Pour prendre rendez-vous, merci d&rsquo;indiquer le nombre de personnes qui ont besoin d&rsquo;une carte d&rsquo;identit&eacute; et/ou d&rsquo;un passeport.</p>\r\n<p><br /><em>La dur&eacute;e du rendez-vous est de 15min par personne environ, que vous demandiez une carte d&rsquo;identit&eacute; ou un passeport. Vous pouvez donc d&eacute;poser votre demande de carte d&rsquo;identit&eacute; ET de passeport pendant le m&ecirc;me rendez-vous de 15min. Profitez-en pour v&eacute;rifier la date de validit&eacute; de vos titres et ne faire qu&rsquo;une seule d&eacute;marche.</em><br /><em>La pr&eacute;sence du demandeur de titre d&rsquo;identit&eacute; est obligatoire (le demandeur mineur&middot;e doit &ecirc;tre accompagn&eacute;&middot;e d&rsquo;un&middot;e repr&eacute;sentant&middot;e l&eacute;gal&middot;e).</em></p>', 1, 'all', 'none'),
	(2, 'Text riche formulaire', '<p>Nous vous proposons l&rsquo;ensemble des rendez-vous disponibles dans les xx prochains jours.</p>', 0, 'all', 'none'),
	(3, 'Texte riche Cartographie', '<p><strong>Nous vous proposons l&rsquo;ensemble des rendez-vous disponibles dans les xx prochains jours.</strong></p>', 1, 'all', 'none');
/*!40000 ALTER TABLE `htmlpage` ENABLE KEYS */;

DROP TABLE IF EXISTS `html_portlet`;
CREATE TABLE IF NOT EXISTS `html_portlet` (
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  `html` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_portlet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `html_portlet` DISABLE KEYS */;
INSERT INTO `html_portlet` (`id_portlet`, `html`) VALUES
	(6, '    <!-- Features -->\r\n    <div id="features" class="tabs">\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-lg-12">\r\n                    <div class="above-heading">FEATURES</div>\r\n                    <h2 class="h2-heading">Appointments</h2>\r\n                    <p class="p-heading">Build appointement forms for your citizen\'s, associations...</p>\r\n                </div> \r\n            </div> \r\n            <div class="row">\r\n                <div class="col-lg-12">\r\n                   <!-- Tabs Links -->\r\n                    <ul class="nav nav-tabs" role="tablist">\r\n                        <li class="nav-item">\r\n                            <a class="nav-link active" id="nav-tab-1" data-bs-toggle="tab" data-bs-target="#tab-1"  href="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true">\r\n								<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-calendar-time" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">\r\n   <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>\r\n   <path d="M11.795 21h-6.795a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2h12a2 2 0 0 1 2 2v4"></path>\r\n   <circle cx="18" cy="18" r="4"></circle>\r\n   <path d="M15 3v4"></path>\r\n   <path d="M7 3v4"></path>\r\n   <path d="M3 11h16"></path>\r\n   <path d="M18 16.496v1.504l1 1"></path>\r\n</svg> \r\n								Set Agendas\r\n							</a>\r\n                        </li>\r\n                        <li class="nav-item">\r\n                            <a class="nav-link" id="nav-tab-2" data-bs-toggle="tab"  data-bs-target="#tab-2"  href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="false">\r\n								<svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-list-numbers" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">\r\n   <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>\r\n   <path d="M11 6h9"></path>\r\n   <path d="M11 12h9"></path>\r\n   <path d="M12 18h8"></path>\r\n   <path d="M4 16a2 2 0 1 1 4 0c0 .591 -.5 1 -1 1.5l-3 2.5h4"></path>\r\n   <path d="M6 10v-6l-2 2"></path>\r\n</svg>\r\n								Manage appointments\r\n							</a>\r\n                        </li>\r\n                    </ul>\r\n                    <!-- end of tabs links -->\r\n                    <!-- Tabs Content -->\r\n                    <div class="tab-content">\r\n                        <!-- Tab -->\r\n                        <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab-1">\r\n                            <div class="row">\r\n                                <div class="col-lg-6">\r\n                                    <div class="image-container">\r\n                                        <img class="img-fluid" src="images/features-1.png" alt="alternative">\r\n                                    </div> <!-- end of image-container -->\r\n                                </div> <!-- end of col -->\r\n                                <div class="col-lg-6">\r\n                                    <div class="text-container">\r\n                                        <h3>Set appointments forms.</h3>\r\n                                        <p>It\'s very easy to start appointement calendar... </p>\r\n                                        <ul class="list-unstyled li-space-lg">\r\n                                            <li>\r\n                                                <i class="fas fa-square"></i> Add as many appointments form you need.\r\n                                            </li>\r\n                                            <li>\r\n                                                <i class="fas fa-square"></i> Manage appontments configs ...\r\n                                            </li>\r\n                                            <li>\r\n                                                <i class="fas fa-square"></i> Add and remove appointement easily\r\n                                            </li>\r\n                                        </ul>\r\n                                        <p class="p-small">Demo user access-code is <strong>"adminpack"</strong> and the password is <strong>"packcityadmin"</strong></p>\r\n                                        <a class="btn-solid-reg" target="_blank" title="[Nouvelle fen├¬tre] Go to back-office" href="jsp/admin/AdminLogin.jsp"><i class="fas fa-external-link-alt"></i> Connect to admin</a>\r\n                                    </div> <!-- end of text-container -->\r\n                                </div> <!-- end of col -->\r\n                            </div> <!-- end of row -->\r\n                        </div> <!-- end of tab-pane -->\r\n                        <!-- end of tab -->\r\n                        <!-- Tab -->\r\n                        <div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="tab-2">\r\n                            <div class="row">\r\n                                <div class="col-lg-6">\r\n                                    <div class="image-container">\r\n                                        <img class="img-fluid" src="images/features-2.png" alt="alternative">\r\n                                    </div> <!-- end of image-container -->\r\n                                </div> <!-- end of col -->\r\n                                <div class="col-lg-6">\r\n                                    <div class="text-container">\r\n                                        <h3>Manage appointments demands</h3>\r\n                                        <p>...</p>\r\n                                        <ul class="list-unstyled li-space-lg">\r\n                                            <li><i class="fas fa-square"></i> Esay search available</li>\r\n                                            <li><i class="fas fa-square"></i> Visualise all appointent by months, weeks and days.</li>\r\n                                            <li><i class="fas fa-square"></i> Add workflow on appointements</li>\r\n                                        </ul>\r\n                                        <p class="p-small">Demo user access-code is <strong>"adminpack"</strong> and the password is <strong>"packcityadmin"</strong></p>\r\n                                        <a class="btn-solid-reg" target="_blank" title="[Nouvelle fen├¬tre] Go to back-office" href="jsp/admin/AdminLogin.jsp"><i class="fas fa-external-link-alt"></i> Connect to admin</a>\r\n                                    </div> <!-- end of text-container -->\r\n                                </div> <!-- end of col -->\r\n                            </div> <!-- end of row -->\r\n                        </div> <!-- end of tab-pane -->\r\n                        <!-- end of tab -->\r\n                    <!-- end of tabs content -->\r\n                </div> <!-- end of col -->\r\n            </div> <!-- end of row -->\r\n        </div> <!-- end of container -->\r\n    </div> <!-- end of tabs -->\r\n    <!-- end of features -->\r\n    '),
	(4, '<!-- end of customers -->\r\n<!-- Description -->\r\n    <div class="cards-1">\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-lg-12 ">\r\n                    <div class="sub-heading">AVAILABLE LUTECE PACKS</div>\r\n                </div> <!-- end of col -->\r\n            </div> <!-- end of row -->\r\n            <div class="row">\r\n                <div class="col-lg-12 card-list">\r\n                    <!-- Card -->\r\n                    <div class="card">\r\n                        <div class="card-image">\r\n                            <img class="img-fluid" src="images/description-1.png" alt="alternative">\r\n                        </div>\r\n                        <div class="card-body">\r\n                            <h4 class="card-title">Forms</h4>\r\n                            <p>It\'s very easy to start creating a form.</p>\r\n                        </div>\r\n                    </div>\r\n                    <!-- end of card -->\r\n                   \r\n  	<!-- Card -->\r\n                    <div class="card">\r\n                       <div class="ribbon ribbon-top-right"><span>Coming soon</span></div>\r\n                        <div class="card-image">\r\n                            <img class="img-fluid" src="images/description-4.png" alt="alternative">\r\n                        </div>\r\n                        <div class="card-body">\r\n                            <h4 class="card-title">In my street</h4>\r\n                            <p>Have citizen feedback on your city equipments</p>\r\n                        </div>\r\n                    </div>\r\n                    <!-- end of card -->\r\n                    <!-- Card -->\r\n                    <div class="card">\r\n                      <div class="ribbon ribbon-top-right"><span>Coming soon</span></div> \r\n	    <div class="card-image">\r\n                            <img class="img-fluid" src="images/description-3.png" alt="alternative">\r\n                        </div>\r\n                        <div class="card-body">\r\n                            <h4 class="card-title">Participative Budget</h4>\r\n                            <p>Elaborate with citizen</p>\r\n                        </div>\r\n                    </div>\r\n                    <!-- end of card -->\r\n                </div> <!-- end of col -->\r\n            </div> <!-- end of row -->\r\n        </div> <!-- end of container -->\r\n    </div> <!-- end of cards-1 -->\r\n    <!-- end of description -->\r\n'),
	(5, '	<div class="slider-1">\r\n		<div class="container">\r\n			<div class="row">\r\n				<div class="col">\r\n					 <div class="sub-heading">THEY ALSO TRUST LUTECE</div>\r\n					<!-- Image Slider -->\r\n					<div class="slider-container">\r\n						<div class="swiper-container image-slider">\r\n							<div class="swiper-wrapper">\r\n								<div class="swiper-slide">\r\n									<a href="//www.jhu.edu/" title="[New window]  John Hopkins"><img class="img-fluid" src="images/customer-logo-1.png" alt="alternative"></a>\r\n								</div>\r\n								<div class="swiper-slide">\r\n									<a href="//www.lyon.fr/demarches" title="[New window]  Lyon City"><img class="img-fluid" src="images/customer-logo-2.png" alt="alternative"></a>\r\n								</div>\r\n								<div class="swiper-slide">\r\n									<a href="//paris.fr" title="[New window]  Paris City"><img class="img-fluid" src="images/customer-logo-3.png" alt="alternative"></a>\r\n								</div>\r\n								<div class="swiper-slide">\r\n									<a href="//budapest.hu/" title="[New window]  Budapest City"><img class="img-fluid" src="images/customer-logo-4.png" alt="alternative"></a>\r\n								</div>\r\n								<div class="swiper-slide">\r\n									<a href="//plainecommune.fr/" title="[New window]  Plaine Commune"><img class="img-fluid" src="images/customer-logo-5.png" alt="alternative"></a>\r\n								</div>\r\n                                                                <div class="swiper-slide">\r\n									<a href="//www.yonne.fr/" title="[New window]  Département de l\'Yonne"><img class="img-fluid" src="images/customer-logo-6.png" alt="alternative"></a>\r\n								</div>\r\n                                                                 <div class="swiper-slide">\r\n									<a href="//www.ch-chalon71.fr/.fr/" title="[New window]  GHT Saône-Et-Loire Bresse Morvan"><img class="img-fluid" src="images/customer-logo-7.png" alt="alternative"></a>\r\n								</div>\r\n                                                                <div class="swiper-slide">\r\n									<a href="//ama.gov.gh/" title="[New window]  Accra Metropolitan Assembly"><img class="img-fluid" src="images/customer-logo-8.png" alt="alternative"></a>\r\n								</div>\r\n                                                              <div class="swiper-slide">\r\n									<a href="//www.stfranciscenter.org/" title="[New window]  St. Francis Neighborhood Center"><img class="img-fluid" src="images/customer-logo-9.png" alt="alternative"></a>\r\n								</div>\r\n							</div> <!-- end of swiper-wrapper -->\r\n						</div> <!-- end of swiper container -->\r\n					</div> <!-- end of slider-container -->\r\n					<!-- end of image slider -->\r\n				</div> <!-- end of col -->\r\n			</div> <!-- end of row -->\r\n		</div> <!-- end of container -->\r\n	</div> <!-- end of slider-1 -->');
/*!40000 ALTER TABLE `html_portlet` ENABLE KEYS */;

DROP TABLE IF EXISTS `identitystore_attribute`;
CREATE TABLE IF NOT EXISTS `identitystore_attribute` (
  `id_attribute` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `key_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_type` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_attribute`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `key_name` (`key_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `identitystore_attribute` DISABLE KEYS */;
INSERT INTO `identitystore_attribute` (`id_attribute`, `name`, `key_name`, `description`, `key_type`) VALUES
	(1, 'Genre', 'gender', '0:Non d├⌐fini /  1:Homme / 2:Femme', 0),
	(2, 'Email', 'email', '', 0),
	(3, 'Date de naissance', 'birthdate', 'au format DD/MM/YYYY', 0),
	(4, 'Lieu de naissance', 'birthplace', '', 0),
	(5, 'T├⌐l├⌐phone portable', 'mobile_phone', 'R├⌐serv├⌐ pour l\'envoi de SMS', 0),
	(6, 'T├⌐l├⌐phone fixe', 'fixed_phone', '', 0),
	(7, 'T├⌐l├⌐phone fixe ou mobile', 'phone', '', 0),
	(8, 'Nom usuel', 'preferred_username', '', 0),
	(9, 'Adresse postale', 'address', '', 0),
	(10, 'Pr├⌐nom', 'first_name', 'Pr├⌐nom usuel', 0),
	(11, 'Nom de famille de naissance', 'family_name', '', 0),
	(12, 'Num├⌐ro de rue', 'address_number', 'Champ d\'adresse : num├⌐ro de rue ', 0),
	(13, 'Suffixe', 'address_suffix', 'Champ d\'adresse : suffixe de num├⌐ro (bis,ter...)', 0),
	(14, 'Rue', 'address_street', 'Champ d\'adresse :  rue, avenue...', 0),
	(15, 'Immeuble', 'address_building', 'Champ d\'adresse : immeuble, r├⌐sidence...', 0),
	(16, 'Etage', 'address_stair', 'Champ d\'adresse : Etage, Num├⌐ro d appartement', 0),
	(17, 'Code postal', 'address_postal_code', 'Champ d\'adresse : code postal', 0),
	(18, 'Ville', 'address_city', 'Champ d\'adresse : ville', 0),
	(19, 'Pays de naissance', 'birthcountry', '', 0),
	(30, '(FC) Pr├⌐noms', 'fc_given_name', 'Format Pivot FranceConnect - Liste des pr├⌐noms', 0),
	(31, '(FC) Nom de naissance', 'fc_family_name', 'Format Pivot FranceConnect', 0),
	(32, '(FC) Date de naissance', 'fc_birthdate', 'Format Pivot FranceConnect - format YYYY-MM-DD', 0),
	(33, '(FC) Genre', 'fc_gender', 'Format Pivot FranceConnect - male / female', 0),
	(34, '(FC) Lieu de naissance', 'fc_birthplace', 'Format Pivot FranceConnect - Code INSEE du lieu de naissance (ou une cha├«ne vide si la personne est n├⌐e ├á l\'├⌐tranger)', 0),
	(35, '(FC) Pays de naissance', 'fc_birthcountry', 'Format Pivot FranceConnect - Code INSEE du pays de naissance', 0);
/*!40000 ALTER TABLE `identitystore_attribute` ENABLE KEYS */;

DROP TABLE IF EXISTS `identitystore_attribute_certificate`;
CREATE TABLE IF NOT EXISTS `identitystore_attribute_certificate` (
  `id_attribute_certificate` int(11) NOT NULL AUTO_INCREMENT,
  `certifier_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `certificate_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `certificate_level` int(11) NOT NULL DEFAULT 0,
  `expiration_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_attribute_certificate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `identitystore_attribute_certificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `identitystore_attribute_certificate` ENABLE KEYS */;

DROP TABLE IF EXISTS `identitystore_attribute_right`;
CREATE TABLE IF NOT EXISTS `identitystore_attribute_right` (
  `id_client_app` int(11) NOT NULL,
  `id_attribute` int(11) NOT NULL,
  `readable` int(11) NOT NULL DEFAULT 0,
  `writable` int(11) NOT NULL DEFAULT 0,
  `certifiable` int(11) NOT NULL DEFAULT 0,
  `searchable` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_client_app`,`id_attribute`),
  KEY `fk_attribute_right_id_attribute` (`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `identitystore_attribute_right` DISABLE KEYS */;
INSERT INTO `identitystore_attribute_right` (`id_client_app`, `id_attribute`, `readable`, `writable`, `certifiable`, `searchable`) VALUES
	(1, 1, 1, 1, 0, 0),
	(1, 2, 1, 1, 0, 0),
	(1, 3, 1, 1, 0, 0),
	(1, 4, 1, 1, 0, 0),
	(1, 5, 1, 1, 0, 0),
	(1, 6, 1, 1, 0, 0),
	(1, 7, 1, 1, 0, 0),
	(1, 8, 1, 1, 0, 0),
	(1, 9, 1, 1, 0, 0),
	(1, 10, 1, 1, 0, 0),
	(1, 11, 1, 1, 0, 0),
	(1, 12, 1, 1, 0, 0),
	(1, 13, 1, 1, 0, 0),
	(1, 14, 1, 1, 0, 0),
	(1, 15, 1, 1, 0, 0),
	(1, 16, 1, 1, 0, 0),
	(1, 17, 1, 1, 0, 0),
	(1, 18, 1, 1, 0, 0);
/*!40000 ALTER TABLE `identitystore_attribute_right` ENABLE KEYS */;

DROP TABLE IF EXISTS `identitystore_client_application`;
CREATE TABLE IF NOT EXISTS `identitystore_client_application` (
  `id_client_app` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_application_authorized_to_delete_value` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_client_app`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `identitystore_client_application` DISABLE KEYS */;
INSERT INTO `identitystore_client_application` (`id_client_app`, `name`, `code`, `is_application_authorized_to_delete_value`) VALUES
	(1, 'My Application', 'MyApplication', 0);
/*!40000 ALTER TABLE `identitystore_client_application` ENABLE KEYS */;

DROP TABLE IF EXISTS `identitystore_client_application_certifiers`;
CREATE TABLE IF NOT EXISTS `identitystore_client_application_certifiers` (
  `id_client_app` int(11) NOT NULL,
  `certifier_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_client_app`,`certifier_code`),
  KEY `id_client_app` (`id_client_app`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `identitystore_client_application_certifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `identitystore_client_application_certifiers` ENABLE KEYS */;

DROP TABLE IF EXISTS `identitystore_history_identity_attribute`;
CREATE TABLE IF NOT EXISTS `identitystore_history_identity_attribute` (
  `id_history` int(11) NOT NULL AUTO_INCREMENT,
  `change_type` int(11) NOT NULL,
  `id_identity` int(11) NOT NULL,
  `identity_connection_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_new_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `attribute_old_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `author_type` int(11) NOT NULL,
  `author_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `certifier_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `modification_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_history`),
  KEY `fk_history_identity_attribute_id_identity` (`id_identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `identitystore_history_identity_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `identitystore_history_identity_attribute` ENABLE KEYS */;

DROP TABLE IF EXISTS `identitystore_identity`;
CREATE TABLE IF NOT EXISTS `identitystore_identity` (
  `id_identity` int(11) NOT NULL AUTO_INCREMENT,
  `connection_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_deleted` smallint(6) DEFAULT 0,
  `date_delete` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_identity`),
  UNIQUE KEY `connection_id` (`connection_id`),
  UNIQUE KEY `customer_id` (`customer_id`),
  KEY `connection_id_2` (`connection_id`),
  KEY `customer_id_2` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `identitystore_identity` DISABLE KEYS */;
INSERT INTO `identitystore_identity` (`id_identity`, `connection_id`, `customer_id`, `date_create`, `is_deleted`, `date_delete`) VALUES
	(1, 'azerty', '3F2504E0-4F89-11D3-9A0C-0305E82C3301', '2020-11-13 14:03:46', 0, '2020-11-13 14:03:46');
/*!40000 ALTER TABLE `identitystore_identity` ENABLE KEYS */;

DROP TABLE IF EXISTS `identitystore_identity_attribute`;
CREATE TABLE IF NOT EXISTS `identitystore_identity_attribute` (
  `id_identity` int(11) NOT NULL DEFAULT 0,
  `id_attribute` int(11) NOT NULL DEFAULT 0,
  `attribute_value` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_certification` int(11) NOT NULL DEFAULT 0,
  `id_file` int(11) DEFAULT 0,
  `lastupdate_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `lastupdate_application` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_identity`,`id_attribute`),
  KEY `fk_identity_attribute_id_attribute` (`id_attribute`),
  KEY `ix_attribute_value` (`attribute_value`(50)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `identitystore_identity_attribute` DISABLE KEYS */;
INSERT INTO `identitystore_identity_attribute` (`id_identity`, `id_attribute`, `attribute_value`, `id_certification`, `id_file`, `lastupdate_date`, `lastupdate_application`) VALUES
	(1, 1, 'M', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 2, 'john.doe@gmail.com', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 3, '11/10/1970', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 4, 'Paris', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 5, '0623457896', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 6, '0123457896', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 7, '0123457896', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 8, 'Joe', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 9, 'Rue de Rennes', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 10, 'John', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 11, 'Doe', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 12, '8', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 13, 'Bis', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 14, 'Rue de Rennes', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 15, 'Escalier B', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 16, 'Etage 4', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 17, '75018', 0, 0, '2020-11-13 14:03:46', NULL),
	(1, 18, 'Paris', 0, 0, '2020-11-13 14:03:46', NULL);
/*!40000 ALTER TABLE `identitystore_identity_attribute` ENABLE KEYS */;

DROP TABLE IF EXISTS `kibana_dashboard`;
CREATE TABLE IF NOT EXISTS `kibana_dashboard` (
  `id_dashboard` int(11) NOT NULL,
  `idkibanadashboard` varchar(255) NOT NULL DEFAULT '',
  `title` mediumtext NOT NULL,
  `dataSourceName` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_dashboard`),
  UNIQUE KEY `idkibanadashboard` (`idkibanadashboard`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `kibana_dashboard` DISABLE KEYS */;
INSERT INTO `kibana_dashboard` (`id_dashboard`, `idkibanadashboard`, `title`, `dataSourceName`) VALUES
	(1, '77540810-5188-11eb-ab89-15cb0317af6a', 'Rendez-vous', NULL);
/*!40000 ALTER TABLE `kibana_dashboard` ENABLE KEYS */;

DROP TABLE IF EXISTS `mydashboard_configuration`;
CREATE TABLE IF NOT EXISTS `mydashboard_configuration` (
  `my_dashboard_component_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_config` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  `hide_dashboard` smallint(6) NOT NULL,
  PRIMARY KEY (`my_dashboard_component_id`,`id_config`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mydashboard_configuration` DISABLE KEYS */;
INSERT INTO `mydashboard_configuration` (`my_dashboard_component_id`, `id_config`, `dashboard_order`, `hide_dashboard`) VALUES
	('mydashboard.dashboardMyAppointments', '2-260549', 1, 0),
	('mydashboard.myDashboardComponentMyDashboard', '2-260549', 2, 0),
	('mydashboard.myDashboardComponentNickname', '2-260549', 3, 0);
/*!40000 ALTER TABLE `mydashboard_configuration` ENABLE KEYS */;

DROP TABLE IF EXISTS `mydashboard_dashboard_association`;
CREATE TABLE IF NOT EXISTS `mydashboard_dashboard_association` (
  `id_dashboard_association` int(11) NOT NULL,
  `id_dashboard` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `id_panel` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_dashboard_association`),
  KEY `fk_id_panel` (`id_panel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mydashboard_dashboard_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydashboard_dashboard_association` ENABLE KEYS */;

DROP TABLE IF EXISTS `mydashboard_panel`;
CREATE TABLE IF NOT EXISTS `mydashboard_panel` (
  `id_panel` int(11) NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` smallint(6) NOT NULL,
  PRIMARY KEY (`id_panel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mydashboard_panel` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydashboard_panel` ENABLE KEYS */;

DROP TABLE IF EXISTS `mydashboard_portlet_panel`;
CREATE TABLE IF NOT EXISTS `mydashboard_portlet_panel` (
  `id_portlet` int(11) NOT NULL,
  `id_panel` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_portlet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mydashboard_portlet_panel` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydashboard_portlet_panel` ENABLE KEYS */;

DROP TABLE IF EXISTS `mylutece_attribute`;
CREATE TABLE IF NOT EXISTS `mylutece_attribute` (
  `id_attribute` int(11) NOT NULL DEFAULT 0,
  `type_class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `help_message` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_mandatory` smallint(6) DEFAULT 0,
  `is_shown_in_search` smallint(6) DEFAULT 0,
  `attribute_position` int(11) DEFAULT 0,
  `plugin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anonymize` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mylutece_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_attribute` ENABLE KEYS */;

DROP TABLE IF EXISTS `mylutece_attribute_field`;
CREATE TABLE IF NOT EXISTS `mylutece_attribute_field` (
  `id_field` int(11) NOT NULL DEFAULT 0,
  `id_attribute` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_value` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_DEFAULT_value` smallint(6) DEFAULT 0,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `max_size_enter` int(11) DEFAULT NULL,
  `is_multiple` smallint(6) DEFAULT 0,
  `field_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mylutece_attribute_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_attribute_field` ENABLE KEYS */;

DROP TABLE IF EXISTS `mylutece_connections_log`;
CREATE TABLE IF NOT EXISTS `mylutece_connections_log` (
  `ip_address` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `login_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mylutece_connections_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_connections_log` ENABLE KEYS */;

DROP TABLE IF EXISTS `mylutece_database_group`;
CREATE TABLE IF NOT EXISTS `mylutece_database_group` (
  `group_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `group_description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`group_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mylutece_database_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_group` ENABLE KEYS */;

DROP TABLE IF EXISTS `mylutece_database_group_role`;
CREATE TABLE IF NOT EXISTS `mylutece_database_group_role` (
  `group_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `role_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_key`,`role_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mylutece_database_group_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_group_role` ENABLE KEYS */;

DROP TABLE IF EXISTS `mylutece_database_key`;
CREATE TABLE IF NOT EXISTS `mylutece_database_key` (
  `mylutece_database_user_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mylutece_database_user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`mylutece_database_user_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mylutece_database_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_key` ENABLE KEYS */;

DROP TABLE IF EXISTS `mylutece_database_user`;
CREATE TABLE IF NOT EXISTS `mylutece_database_user` (
  `mylutece_database_user_id` int(11) NOT NULL,
  `login` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `name_given` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_family` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 0,
  `reset_password` smallint(6) NOT NULL DEFAULT 0,
  `password_max_valid_date` timestamp NULL DEFAULT NULL,
  `account_max_valid_date` bigint(20) DEFAULT NULL,
  `nb_alerts_sent` int(11) NOT NULL DEFAULT 0,
  `last_login` timestamp NOT NULL DEFAULT '1980-01-01 00:00:00',
  PRIMARY KEY (`mylutece_database_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mylutece_database_user` DISABLE KEYS */;
INSERT INTO `mylutece_database_user` (`mylutece_database_user_id`, `login`, `password`, `name_given`, `name_family`, `email`, `is_active`, `reset_password`, `password_max_valid_date`, `account_max_valid_date`, `nb_alerts_sent`, `last_login`) VALUES
	(1, 'laurent.hohl@gmail.com', 'PBKDF2WITHHMACSHA512:40000:d812ffa87cb979a45099c919f6acd64a:2030e46e70e0b731ee180047daafac227159a5e9b5e33c1d5ddc310e6e410e72777147f8088f4ff5323303db89aa44f8be67fc64565cd06820f18e6e8a2af6699af97c7f7f68a8c2013f33f69bd4c1c2db77ec06136381ab3d62d017f46601c2b1e2e49dcf1816c12e9b31075a2cd7e3447d1a5a98ab7ab7eebe61f8eb321a78', 'Laurent', 'HOHLA', 'laurent.hohl@gmail.com', 1, 0, NULL, 1676652179713, 0, '2022-02-22 17:42:59');
/*!40000 ALTER TABLE `mylutece_database_user` ENABLE KEYS */;

DROP TABLE IF EXISTS `mylutece_database_user_group`;
CREATE TABLE IF NOT EXISTS `mylutece_database_user_group` (
  `mylutece_database_user_id` int(11) NOT NULL DEFAULT 0,
  `group_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`mylutece_database_user_id`,`group_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mylutece_database_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_user_group` ENABLE KEYS */;

DROP TABLE IF EXISTS `mylutece_database_user_parameter`;
CREATE TABLE IF NOT EXISTS `mylutece_database_user_parameter` (
  `parameter_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parameter_value` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parameter_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mylutece_database_user_parameter` DISABLE KEYS */;
INSERT INTO `mylutece_database_user_parameter` (`parameter_key`, `parameter_value`) VALUES
	('account_creation_validation_email', 'false'),
	('auto_login_after_validation_email', 'false'),
	('enable_jcaptcha', 'false'),
	('force_change_password_reinit', ''),
	('password_minimum_length', '8'),
	('password_format_upper_lower_case', 'false'),
	('password_format_numero', 'false'),
	('password_format_special_characters', 'false'),
	('password_duration', ''),
	('password_history_size', ''),
	('maximum_number_password_change', ''),
	('tsw_size_password_change', ''),
	('use_advanced_security_parameters', 'false'),
	('account_life_time', '360'),
	('time_before_alert_account', '30'),
	('nb_alert_account', '2'),
	('time_between_alerts_account', '10'),
	('access_failures_max', '3'),
	('access_failures_interval', '10'),
	('expired_alert_mail_sender', 'LUTECE'),
	('expired_alert_mail_subject', 'Votre compte a expiré'),
	('first_alert_mail_sender', 'LUTECE'),
	('first_alert_mail_subject', 'Votre compte va bientot expirer'),
	('other_alert_mail_sender', 'LUTECE'),
	('other_alert_mail_subject', 'Votre compte va bientot expirer'),
	('account_reactivated_mail_sender', 'LUTECE'),
	('account_reactivated_mail_subject', 'Votre compte a bien été réactivé'),
	('access_failures_captcha', '1'),
	('unblock_user_mail_sender', 'LUTECE'),
	('unblock_user_mail_subject', 'Votre IP a été bloquée'),
	('enable_unblock_ip', 'false'),
	('notify_user_password_expired', ''),
	('password_expired_mail_sender', 'LUTECE'),
	('password_expired_mail_subject', 'Votre mot de passe a expiré'),
	('mail_lost_password_sender', 'LUTECE'),
	('mail_lost_password_subject', 'Votre mot de passe a été réinitialisé'),
	('mail_password_encryption_changed_sender', 'LUTECE'),
	('mail_password_encryption_changed_subject', 'Votre mot de passe a été réinitialisé');
/*!40000 ALTER TABLE `mylutece_database_user_parameter` ENABLE KEYS */;

DROP TABLE IF EXISTS `mylutece_database_user_password_history`;
CREATE TABLE IF NOT EXISTS `mylutece_database_user_password_history` (
  `mylutece_database_user_id` int(11) NOT NULL,
  `password` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date_password_change` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`mylutece_database_user_id`,`date_password_change`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mylutece_database_user_password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_user_password_history` ENABLE KEYS */;

DROP TABLE IF EXISTS `mylutece_database_user_role`;
CREATE TABLE IF NOT EXISTS `mylutece_database_user_role` (
  `mylutece_database_user_id` int(11) NOT NULL DEFAULT 0,
  `role_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`mylutece_database_user_id`,`role_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mylutece_database_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_user_role` ENABLE KEYS */;

DROP TABLE IF EXISTS `mylutece_user_anonymize_field`;
CREATE TABLE IF NOT EXISTS `mylutece_user_anonymize_field` (
  `field_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anonymize` smallint(6) NOT NULL,
  PRIMARY KEY (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mylutece_user_anonymize_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_user_anonymize_field` ENABLE KEYS */;

DROP TABLE IF EXISTS `mylutece_user_field`;
CREATE TABLE IF NOT EXISTS `mylutece_user_field` (
  `id_user_field` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) DEFAULT NULL,
  `id_attribute` int(11) DEFAULT NULL,
  `id_field` int(11) DEFAULT NULL,
  `user_field_value` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_user_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mylutece_user_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_user_field` ENABLE KEYS */;

DROP TABLE IF EXISTS `notifyesirius_workflow_save_appointement_created`;
CREATE TABLE IF NOT EXISTS `notifyesirius_workflow_save_appointement_created` (
  `id_take_appointment` int(11) NOT NULL,
  `id_appointment` int(11) NOT NULL,
  `id_workflow` int(11) NOT NULL,
  `code_appointment_esirius` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_appointment`,`id_take_appointment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `notifyesirius_workflow_save_appointement_created` DISABLE KEYS */;
INSERT INTO `notifyesirius_workflow_save_appointement_created` (`id_take_appointment`, `id_appointment`, `id_workflow`, `code_appointment_esirius`) VALUES
	(1, 42, 4, '99XZD8'),
	(2, 47, 4, '97SPNA'),
	(3, 57, 3, '94JGYM'),
	(4, 58, 3, '99NHZM'),
	(5, 66, 3, '95S7QY'),
	(6, 71, 3, '94DAGJ'),
	(7, 73, 3, '92MB2D'),
	(9, 76, 4, '93VPEH'),
	(10, 77, 3, '98JPVT'),
	(11, 78, 3, '99F3AQ'),
	(12, 79, 3, '95FBKQ'),
	(13, 81, 3, '96UB2Q'),
	(14, 82, 4, '96WCNS'),
	(15, 89, 3, '934XKW'),
	(16, 90, 4, '993Y8W'),
	(17, 91, 3, '95RYFW'),
	(18, 92, 3, '97EYMW'),
	(19, 93, 3, '98AYQW'),
	(20, 96, 3, '92EZCX'),
	(21, 97, 3, '99Q54Y'),
	(22, 98, 3, '93T55Y'),
	(23, 99, 3, '9265EY'),
	(24, 100, 3, '96W5JY'),
	(25, 101, 3, '92M5PY'),
	(26, 117, 3, '929588'),
	(27, 118, 4, '92FGH2'),
	(28, 119, 3, '92MNF2'),
	(29, 125, 3, '92FNK7'),
	(32, 136, 3, '928C38'),
	(33, 143, 3, '92UVW3'),
	(34, 146, 3, '92H7B3'),
	(35, 148, 3, '92G7C3'),
	(37, 153, 3, '92QAA3'),
	(38, 154, 3, '92PDZ3'),
	(39, 163, 3, '92SC75'),
	(40, 171, 3, '927CF5'),
	(41, 173, 3, '924CK5'),
	(42, 174, 3, '92CCK5'),
	(43, 175, 3, '92VDH5'),
	(44, 177, 3, '92YKF5'),
	(45, 178, 3, '92QJA5'),
	(47, 180, 3, '927P75'),
	(48, 181, 3, '92GPB5'),
	(50, 186, 3, '928TZ5'),
	(51, 188, 3, '92XTF5'),
	(54, 194, 3, '92JCV7'),
	(56, 198, 3, '92HF37'),
	(57, 199, 3, '92NFB7'),
	(58, 200, 3, '92TNK7'),
	(59, 202, 3, '92XNX7'),
	(60, 204, 3, '925NQ7'),
	(61, 205, 3, '92PNQ7'),
	(62, 207, 3, '922NS7'),
	(63, 209, 3, '92VNT7'),
	(65, 213, 3, '92JQ47'),
	(66, 216, 4, '92URW7'),
	(67, 217, 3, '92YBCD'),
	(68, 218, 3, '92YBRD'),
	(69, 219, 3, '92HC4D'),
	(70, 220, 3, '92JC4D'),
	(71, 224, 3, '925CQD'),
	(72, 226, 3, '92FNMD'),
	(73, 228, 3, '9295BE'),
	(74, 231, 3, '92ADNF'),
	(76, 234, 3, '92GP8F'),
	(78, 236, 3, '92GQDF'),
	(79, 238, 4, '92AS6F'),
	(80, 239, 3, '927X5F'),
	(81, 240, 3, '927A8H'),
	(82, 241, 3, '922W3H'),
	(83, 242, 7, '92BUJH'),
	(84, 243, 3, '92VRPH'),
	(85, 244, 3, '92DWPH'),
	(86, 245, 3, '922WQH'),
	(87, 246, 3, '92RWQH'),
	(88, 249, 3, '922WUH'),
	(89, 257, 3, '92EX5H'),
	(90, 258, 3, '92DX6H'),
	(91, 259, 3, '928X8H'),
	(92, 261, 3, '92ZXAH'),
	(93, 268, 3, '92MXFH'),
	(94, 271, 3, '925XQH'),
	(95, 274, 3, '92CAXJ'),
	(96, 275, 3, '927B3J'),
	(97, 278, 3, '92GBMJ'),
	(98, 279, 3, '92RBPJ'),
	(99, 280, 3, '92EC9J'),
	(100, 281, 3, '92UF6J'),
	(101, 282, 3, '923F7J'),
	(102, 283, 3, '92JGEJ'),
	(104, 285, 3, '92THVJ'),
	(105, 286, 3, '92KJQJ'),
	(106, 287, 3, '92HK2J'),
	(107, 288, 3, '92AK4J'),
	(108, 289, 3, '92JK5J'),
	(109, 290, 3, '925K7J'),
	(110, 291, 3, '929K9J'),
	(111, 292, 3, '92TZZJ'),
	(112, 293, 3, '923QGJ'),
	(113, 294, 3, '92WQHJ'),
	(114, 295, 3, '92YCVM'),
	(115, 296, 3, '92QY2T'),
	(116, 297, 3, '92Q3AQ'),
	(117, 298, 3, '927J8R'),
	(118, 299, 3, '92DJAR'),
	(119, 300, 3, '922JFR'),
	(120, 301, 3, '92EJHR'),
	(121, 302, 3, '92PJWR'),
	(122, 303, 3, '929JKR'),
	(123, 304, 3, '92MJKR'),
	(124, 305, 3, '92RJMR'),
	(125, 307, 3, '92RK4R'),
	(126, 308, 3, '924K7R'),
	(127, 309, 3, '92XKBR'),
	(128, 310, 3, '922KCR'),
	(129, 311, 3, '92UKFR'),
	(130, 312, 3, '92TKZR'),
	(131, 313, 3, '92ZKYR'),
	(132, 315, 3, '92VKWR'),
	(133, 316, 3, '92TKQR'),
	(134, 317, 3, '92RKSR'),
	(135, 318, 3, '92YKUR'),
	(136, 320, 3, '92JKYR'),
	(137, 321, 3, '92SYZR'),
	(138, 322, 3, '925P3R'),
	(139, 323, 3, '92FM3R'),
	(140, 324, 3, '922W5R'),
	(141, 325, 3, '92MZ6R'),
	(142, 326, 3, '92PH6R'),
	(143, 327, 3, '929N8R'),
	(144, 328, 3, '92KJ9R'),
	(145, 329, 3, '92MKBR'),
	(146, 331, 3, '927PGR'),
	(147, 332, 3, '92NVGR'),
	(148, 333, 3, '92TFHR'),
	(149, 335, 3, '92WUKR'),
	(150, 336, 3, '924JHR'),
	(151, 338, 3, '92YWPR'),
	(152, 339, 3, '92EMRR'),
	(153, 340, 3, '92EHSR'),
	(154, 341, 3, '92VHTR'),
	(155, 342, 3, '925FVR'),
	(156, 343, 3, '927GWR'),
	(157, 347, 3, '92TM4R'),
	(158, 348, 3, '928M3R'),
	(159, 349, 3, '92PM4R'),
	(166, 362, 3, '924HDT'),
	(167, 363, 3, '929JMT'),
	(171, 368, 3, '928FAV'),
	(172, 373, 3, '92JVVV'),
	(173, 374, 3, '92RXKV'),
	(174, 377, 3, '925RJX'),
	(175, 378, 3, '92VTXX'),
	(176, 380, 3, '92XVRX'),
	(177, 381, 3, '923WPX'),
	(178, 382, 3, '927XKX'),
	(179, 384, 3, '93WKNZ'),
	(180, 386, 3, '935P76'),
	(181, 389, 3, '933QH8'),
	(182, 391, 3, '93MUE8'),
	(183, 393, 3, '93W3Z9'),
	(184, 396, 3, '93SJTA'),
	(185, 397, 3, '93BP3A'),
	(186, 398, 3, '93RP4A'),
	(187, 399, 3, '93NPCA'),
	(188, 400, 3, '93NPEA'),
	(189, 401, 3, '938PMA'),
	(190, 403, 3, '93SPSA'),
	(191, 404, 3, '93RPTA'),
	(192, 406, 3, '93PQJA'),
	(193, 407, 3, '93HQHA'),
	(194, 408, 3, '939X9A'),
	(195, 409, 3, '93A5UB'),
	(196, 410, 3, '93F58B'),
	(197, 413, 3, '93Y5FB'),
	(198, 415, 3, '93N5HB'),
	(199, 416, 3, '93E5ZB'),
	(200, 421, 3, '93R5YB'),
	(201, 422, 3, '93762B'),
	(202, 424, 3, '93P6EB'),
	(203, 425, 3, '93P6GB'),
	(204, 427, 3, '93N6TB'),
	(205, 428, 3, '93JREB'),
	(206, 429, 4, '939KUC'),
	(207, 430, 3, '935VZC'),
	(208, 431, 3, '93DMQC'),
	(209, 432, 23, '93HNVC'),
	(210, 433, 3, '93HNYC'),
	(211, 434, 3, '93NR8C'),
	(212, 435, 3, '938XTC'),
	(213, 436, 3, '93WZND'),
	(214, 437, 3, '9385ZD'),
	(215, 438, 3, '93N8CD'),
	(216, 439, 3, '93Y7ED'),
	(217, 440, 3, '93H7FD'),
	(218, 441, 3, '9333HD'),
	(219, 442, 3, '9355JD'),
	(220, 443, 3, '93B4KD'),
	(221, 444, 3, '93H3VD'),
	(222, 445, 3, '93G8MD'),
	(223, 447, 3, '9347QD'),
	(224, 448, 3, '93D8RD'),
	(225, 449, 3, '93Z4TD'),
	(226, 450, 3, '93G7UD'),
	(227, 451, 3, '9345WD'),
	(228, 452, 3, '93F9XD'),
	(229, 453, 3, '9372ZD'),
	(230, 454, 3, '93K26D'),
	(231, 455, 3, '93V22D'),
	(232, 456, 3, '93D24D'),
	(233, 458, 3, '93D27D'),
	(234, 459, 3, '93S28D'),
	(235, 460, 3, '93K2AD'),
	(236, 461, 3, '93Y3JD'),
	(237, 462, 3, '9393JD'),
	(238, 463, 3, '93W3MD'),
	(239, 465, 3, '9393QD'),
	(240, 468, 3, '93W3UD'),
	(241, 469, 3, '93X3VD'),
	(242, 470, 3, '93B3XD'),
	(243, 471, 3, '93Q3YD'),
	(244, 472, 3, '93Y4ZD'),
	(245, 473, 3, '93G42D'),
	(246, 475, 3, '93B45D'),
	(247, 476, 3, '93G46D'),
	(248, 477, 3, '93M47D'),
	(249, 479, 3, '93Y49D'),
	(250, 480, 3, '93VCJE'),
	(251, 481, 3, '93SE8E'),
	(252, 482, 3, '93GP5E'),
	(253, 483, 3, '93RP2E'),
	(254, 484, 3, '93CP4E'),
	(255, 485, 3, '93KP6E'),
	(256, 486, 3, '93DP8E'),
	(257, 487, 3, '93SPAE'),
	(258, 488, 3, '93TPBE'),
	(259, 489, 3, '932PDE'),
	(260, 490, 3, '93FPEE'),
	(261, 491, 3, '93DPGE'),
	(262, 492, 3, '93VPHE'),
	(263, 493, 3, '93KPJE'),
	(264, 494, 3, '934PQE'),
	(265, 495, 3, '93JPME'),
	(266, 497, 3, '938PPE'),
	(267, 500, 3, '939PTE'),
	(268, 501, 3, '93KPUE'),
	(269, 502, 3, '93QPVE'),
	(270, 504, 3, '93RQZE'),
	(271, 505, 3, '937Q2E'),
	(272, 506, 3, '939Q3E'),
	(273, 509, 3, '93SQAE'),
	(274, 510, 3, '938QME'),
	(275, 511, 3, '93AQTE'),
	(276, 512, 3, '93ZR4E'),
	(277, 513, 3, '937R4E'),
	(278, 514, 3, '93BR5E'),
	(279, 515, 3, '93XR6E'),
	(280, 518, 3, '933Y4E'),
	(281, 519, 3, '93NZ9F'),
	(282, 520, 3, '939E5K'),
	(283, 521, 3, '93PV7K'),
	(284, 522, 3, '935Q9K'),
	(285, 523, 3, '93RKAK'),
	(286, 524, 3, '93ZJCK'),
	(287, 525, 3, '93KJDK'),
	(288, 526, 3, '93ZWGK'),
	(289, 527, 3, '93YNHK'),
	(290, 529, 3, '93DMKK'),
	(291, 530, 3, '93AAMK'),
	(292, 531, 3, '93TEXK'),
	(293, 532, 3, '939FQK'),
	(294, 534, 3, '93RTTK'),
	(295, 536, 3, '93EBYK'),
	(296, 538, 3, '93PM6K'),
	(297, 541, 3, '93YMBK'),
	(298, 542, 3, '93FMGK'),
	(299, 543, 3, '93RMHK'),
	(300, 545, 3, '93XMBK'),
	(301, 546, 3, '935MNK'),
	(302, 547, 3, '93MNZK'),
	(303, 548, 3, '93JN3K'),
	(304, 549, 3, '93AN7K'),
	(305, 550, 3, '93ANJK'),
	(306, 551, 3, '93DNGK'),
	(307, 552, 3, '93FNMK'),
	(308, 553, 3, '93QNNK'),
	(309, 554, 3, '93UNSK'),
	(310, 555, 3, '93YNPK'),
	(311, 557, 3, '93YNRK'),
	(312, 558, 3, '93DNTK'),
	(313, 560, 3, '93QYHK'),
	(314, 561, 3, '93YYBK'),
	(315, 562, 3, '932YKK'),
	(316, 563, 3, '933YMK'),
	(317, 564, 3, '93PYTK'),
	(318, 566, 3, '93AYRK'),
	(319, 567, 3, '93KYTK'),
	(320, 569, 3, '938YWK'),
	(321, 571, 3, '932Z4A'),
	(322, 572, 3, '93DZ7G'),
	(323, 573, 3, '935Z9A'),
	(324, 574, 3, '93TZAQ'),
	(325, 575, 3, '93WZDJ'),
	(326, 576, 3, '937ZFV'),
	(327, 578, 3, '933ZCG'),
	(328, 579, 3, '937ZKN'),
	(329, 580, 3, '93CZVV'),
	(330, 581, 3, '93JZMJ'),
	(331, 582, 3, '93ZZGM'),
	(332, 583, 3, '93SZPT'),
	(333, 585, 3, '935ZSX'),
	(334, 586, 3, '93AZTR'),
	(335, 587, 3, '93WZUN'),
	(336, 594, 3, '93A8MP'),
	(337, 595, 3, '93A9FT'),
	(338, 597, 3, '93QB7G'),
	(339, 598, 3, '936EBP'),
	(340, 599, 3, '933M9M'),
	(343, 616, 4, '93R9ZP'),
	(344, 618, 4, '93DA6P'),
	(345, 619, 4, '93QAVP'),
	(349, 636, 4, '93FAYT'),
	(348, 637, 4, '93FANT'),
	(350, 638, 4, '93YHHT'),
	(351, 639, 4, '93VYRT'),
	(353, 641, 4, '936UGY'),
	(355, 643, 4, '93KWSY'),
	(358, 649, 3, '94862Z'),
	(359, 650, 4, '94Q6CZ'),
	(360, 661, 4, '94PX76'),
	(363, 666, 4, '94Y2X2'),
	(364, 667, 4, '94U2Y2'),
	(365, 668, 5, '94C3J2'),
	(368, 669, 5, '9466H2'),
	(371, 671, 5, '9469F2'),
	(366, 672, 4, '9483Q2'),
	(367, 673, 4, '94P3M2'),
	(369, 674, 5, '9476H2'),
	(372, 675, 5, '9429F2'),
	(373, 676, 5, '94UCC2'),
	(370, 680, 4, '9486T2'),
	(374, 683, 4, '9484C4'),
	(375, 684, 4, '94AJ64'),
	(376, 688, 4, '94R7J6'),
	(377, 689, 4, '94K9K6'),
	(378, 693, 3, '94JY87'),
	(379, 694, 3, '94K2Z8'),
	(380, 695, 3, '94F3C8'),
	(381, 696, 4, '94MBVE'),
	(382, 700, 4, '94BG4E'),
	(383, 701, 4, '947GHE'),
	(384, 707, 4, '94ZKDG'),
	(385, 709, 4, '94W9TC'),
	(386, 712, 3, '94FX5J'),
	(387, 718, 4, '94P4XS'),
	(388, 720, 4, '956XM6'),
	(389, 737, 4, '973R5W'),
	(392, 742, 4, '98A499'),
	(393, 744, 4, '98RETF'),
	(394, 750, 3, '984TXT'),
	(395, 751, 3, '985TXB'),
	(396, 770, 4, '99F6RU'),
	(409, 777, 4, '99HMJS'),
	(411, 778, 4, '999MMS'),
	(416, 780, 4, '993MQS'),
	(415, 782, 4, '99ZMQS'),
	(414, 784, 4, '99KMPS'),
	(413, 786, 4, '99ZMPS'),
	(410, 795, 4, '99JMUS'),
	(417, 797, 4, '9A4MT3'),
	(418, 799, 3, '9ABUB3'),
	(420, 800, 5, '9AAVX3'),
	(419, 802, 3, '9AXV53'),
	(421, 803, 4, '9AAY23'),
	(422, 806, 4, '9AD2R4'),
	(423, 807, 4, '9AA2M4'),
	(424, 809, 4, '9AJMY5'),
	(425, 811, 4, '9A2NW5'),
	(426, 813, 4, '9AWS4J'),
	(427, 814, 3, '9AVT5J'),
	(428, 815, 4, '9ABJMX'),
	(429, 816, 4, '9AQUNX'),
	(430, 817, 4, '9AGV2X'),
	(431, 818, 3, '9BVHPZ'),
	(432, 819, 3, '9BCMYZ'),
	(433, 820, 3, '9BC2D3'),
	(434, 821, 3, '9BM2N2'),
	(435, 822, 3, '9BGKN2'),
	(436, 823, 3, '9BMKS2'),
	(437, 824, 3, '9BRYFA'),
	(438, 825, 4, '9BBS4C'),
	(439, 826, 4, '9B6S6C');
/*!40000 ALTER TABLE `notifyesirius_workflow_save_appointement_created` ENABLE KEYS */;

DROP TABLE IF EXISTS `notifyesirius_workflow_task_take_appointement_cf`;
CREATE TABLE IF NOT EXISTS `notifyesirius_workflow_task_take_appointement_cf` (
  `id_task_take_appointment` int(11) NOT NULL,
  `organization` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `group_of_site` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `site` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `service` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_motif` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task_take_appointment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `notifyesirius_workflow_task_take_appointement_cf` DISABLE KEYS */;
INSERT INTO `notifyesirius_workflow_task_take_appointement_cf` (`id_task_take_appointment`, `organization`, `group_of_site`, `site`, `service`, `reason`, `entry_motif`) VALUES
	(12, '', '', 'site3', '211', '', 5),
	(20, '', '', 'site3', '211', '', NULL),
	(21, '', '', 'site3', '211', '', NULL),
	(24, '', '', 'site3', '211', '', NULL),
	(25, '', '', 'site3', '211', '', NULL),
	(26, '', '', 'site3', '211', '', 5),
	(27, '', '', 'site3', '211', '', 5),
	(28, '', '', 'site3', '211', '', 5),
	(30, '', '', 'site3', '211', '', 5),
	(31, '', '', 'site3', '211', '', 5),
	(32, '', '', 'site3', '211', '', 5),
	(33, '', '', 'site3', '211', '', 5),
	(35, '', '', 'site3', '211', '', NULL),
	(36, '', '', 'site3', '211', '', NULL),
	(37, '', '', 'site3', '211', '', NULL),
	(40, '', '', 'site3', '211', '', 5),
	(41, '', '', 'site3', '211', '', NULL),
	(42, '', '', 'site50', '789', '', 5),
	(48, '', '', 'site50', '789', '', NULL),
	(55, '', '', 'site50', '789', '', NULL),
	(58, '', '', 'site50', '789', '', NULL),
	(62, '', '', 'site50', '789', '', NULL),
	(110, '', '', 'site50', '789', '', 5),
	(111, '', '', 'site50', '789', '', 5),
	(112, '', '', 'site50', '789', '', 5),
	(134, '', '', '1', '1', '', 5),
	(135, '', '', 'site38', '400', '', NULL),
	(137, '', '', 'site38', '400', '', 6),
	(138, '', '', 'site38', '400', '', NULL),
	(139, '', '', 'site38', '400', '', NULL),
	(163, '', '', 'site50', '789', '', 5),
	(164, '', '', 'site50', '789', '', 5),
	(165, '', '', 'site50', '789', '', 5),
	(166, '', '', 'site50', '789', '', 5),
	(173, '', '', 'site50', '789', '', 5),
	(174, '', '', 'site50', '789', '', 5),
	(242, '', '', 'site50', '789', '', 5),
	(252, '', '', 'site50', '789', '', 5),
	(253, '', '', 'site50', '789', '', 5),
	(255, '', '', 'site50', '789', '', 5),
	(257, '', '', 'site50', '789', '', 5),
	(258, '', '', 'site50', '789', '', NULL),
	(259, '', '', 'site50', '789', '', NULL),
	(260, '', '', 'site50', '789', '', NULL),
	(262, '', '', 'site50', '789', '', NULL),
	(271, '', '', 'site50', '789', '', 5),
	(313, '', '', 'site50', '789', '', 5),
	(316, '', '', 'site3', '211', '', NULL),
	(317, '', '', 'site3', '211', '', 5),
	(319, '', '', 'site3', '211', '', 5),
	(322, '', '', 'site3', '211', '', 0),
	(324, '', '', 'site3', '211', '', 5),
	(330, '', '', 'XXXXX', 'ZZ', '', 0),
	(332, '', '', 'XXXXX', 'ZZ', '', 0),
	(334, '', '', 'XXXXX', 'ZZ', '', 0),
	(335, '', '', 'XXXXX', 'ZZ', '', 0),
	(336, '', '', 'test', 'test', '', 1),
	(339, '', '', 'site50', '789', '', 0);
/*!40000 ALTER TABLE `notifyesirius_workflow_task_take_appointement_cf` ENABLE KEYS */;

DROP TABLE IF EXISTS `openamidentityclient_key`;
CREATE TABLE IF NOT EXISTS `openamidentityclient_key` (
  `user_key` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `key_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_key`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `openamidentityclient_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `openamidentityclient_key` ENABLE KEYS */;

DROP TABLE IF EXISTS `profile_action`;
CREATE TABLE IF NOT EXISTS `profile_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(100) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `action_permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `profile_action` DISABLE KEYS */;
INSERT INTO `profile_action` (`id_action`, `name_key`, `description_key`, `action_url`, `icon_url`, `action_permission`) VALUES
	(1, 'profiles.action.modify_profile.name', 'profiles.action.modify_profile.description', 'jsp/admin/plugins/profiles/ModifyProfile.jsp', 'edit', 'MODIFY_PROFILE'),
	(2, 'profiles.action.delete_profile.name', 'profiles.action.delete_profile.description', 'jsp/admin/plugins/profiles/RemoveProfile.jsp', 'trash', 'DELETE_DELETE'),
	(3, 'profiles.action.manage_users_assignment.name', 'profiles.action.manage_users_assignment.description', 'jsp/admin/plugins/profiles/AssignUsersProfile.jsp', 'user', 'MANAGE_USERS_ASSIGNMENT'),
	(4, 'profiles.action.manage_rights_assignment.name', 'profiles.action.manage_rights_assignment.description', 'jsp/admin/plugins/profiles/AssignRightsProfile.jsp', 'lock', 'MANAGE_RIGHTS_ASSIGNMENT'),
	(5, 'profiles.action.manage_roles_assignment.name', 'profiles.action.manage_roles_assignment.description', 'jsp/admin/plugins/profiles/AssignRolesProfile.jsp', 'th-list', 'MANAGE_ROLES_ASSIGNMENT'),
	(6, 'profiles.action.manage_workgroups_assignment.name', 'profiles.action.manage_workgroups_assignment.description', 'jsp/admin/plugins/profiles/AssignWorkgroupsProfile.jsp', 'users', 'MANAGE_WORKGROUPS_ASSIGNMENT'),
	(7, 'profiles.action.manage_view_assignment.name', 'profiles.action.manage_view_assignment.description', 'jsp/admin/plugins/profiles/AssignViewProfile.jsp', 'eye', 'MANAGE_VIEW_ASSIGNMENT');
/*!40000 ALTER TABLE `profile_action` ENABLE KEYS */;

DROP TABLE IF EXISTS `profile_profile`;
CREATE TABLE IF NOT EXISTS `profile_profile` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `profile_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `profile_profile` DISABLE KEYS */;
INSERT INTO `profile_profile` (`profile_key`, `profile_description`) VALUES
	('AdministrateurMetier', 'Profil des administrateurs RdV - WF - messages - formulaire - gestion et planification'),
	('AgentGuichet', 'Profil d\'agents d\'acceuil permettant de g├⌐rer les RdV - prises - annulation et export'),
	('AgentMetier', 'Gestion et plannification des RdV'),
	('ChefDeService', 'Profil des Chefs de service, DGA, DGAS'),
	('ReferentLocal', 'Profil applicable pour les r├⌐f├⌐rents locaux'),
	('SRU', 'Profil applicable pour les administrateurs fonctionnels'),
	('Teleconseiller3975', 'Profil permettant de g├⌐rer les RdV - prises - annulation et export');
/*!40000 ALTER TABLE `profile_profile` ENABLE KEYS */;

DROP TABLE IF EXISTS `profile_right`;
CREATE TABLE IF NOT EXISTS `profile_right` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `id_right` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`profile_key`,`id_right`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `profile_right` DISABLE KEYS */;
INSERT INTO `profile_right` (`profile_key`, `id_right`) VALUES
	('AdministrateurMetier', 'APPOINTMENT_COMMENT_MANAGEMENT'),
	('AdministrateurMetier', 'APPOINTMENT_FORM_MANAGEMENT'),
	('AdministrateurMetier', 'CORE_USERS_MANAGEMENT'),
	('AdministrateurMetier', 'KIBANA_MANAGEMENT'),
	('AdministrateurMetier', 'MATOMO_MANAGEMENT'),
	('AdministrateurMetier', 'MULTIVIEW_APPOINTMENT'),
	('AdministrateurMetier', 'VIEW_TEMP_FILES'),
	('AdministrateurMetier', 'WORKFLOW_MANAGEMENT'),
	('AgentGuichet', 'APPOINTMENT_FORM_MANAGEMENT'),
	('AgentGuichet', 'MULTIVIEW_APPOINTMENT'),
	('AgentGuichet', 'VIEW_TEMP_FILES'),
	('AgentMetier', 'APPOINTMENT_FORM_MANAGEMENT'),
	('AgentMetier', 'MULTIVIEW_APPOINTMENT'),
	('AgentMetier', 'VIEW_TEMP_FILES'),
	('ChefDeService', 'APPOINTMENT_COMMENT_MANAGEMENT'),
	('ChefDeService', 'APPOINTMENT_FORM_MANAGEMENT'),
	('ChefDeService', 'CORE_USERS_MANAGEMENT'),
	('ChefDeService', 'KIBANA_MANAGEMENT'),
	('ChefDeService', 'MATOMO_MANAGEMENT'),
	('ChefDeService', 'MULTIVIEW_APPOINTMENT'),
	('ChefDeService', 'VIEW_TEMP_FILES'),
	('ChefDeService', 'WORKFLOW_MANAGEMENT'),
	('ReferentLocal', 'APPOINTMENT_COMMENT_MANAGEMENT'),
	('ReferentLocal', 'APPOINTMENT_FORM_MANAGEMENT'),
	('ReferentLocal', 'CORE_MAILINGLISTS_MANAGEMENT'),
	('ReferentLocal', 'CORE_USERS_MANAGEMENT'),
	('ReferentLocal', 'KIBANA_MANAGEMENT'),
	('ReferentLocal', 'MATOMO_MANAGEMENT'),
	('ReferentLocal', 'MULTIVIEW_APPOINTMENT'),
	('ReferentLocal', 'RESOURCE_MANAGE_RESOURCES'),
	('ReferentLocal', 'VIEW_TEMP_FILES'),
	('ReferentLocal', 'WORKFLOW_MANAGEMENT'),
	('SRU', 'APPOINTMENT_CATEGORY_MANAGEMENT'),
	('SRU', 'APPOINTMENT_COMMENT_MANAGEMENT'),
	('SRU', 'APPOINTMENT_FORM_MANAGEMENT'),
	('SRU', 'CORE_MAILINGLISTS_MANAGEMENT'),
	('SRU', 'CORE_RBAC_MANAGEMENT'),
	('SRU', 'CORE_RIGHT_MANAGEMENT'),
	('SRU', 'CORE_USERS_MANAGEMENT'),
	('SRU', 'CORE_WORKGROUPS_MANAGEMENT'),
	('SRU', 'ELASTICDATA_MANAGEMENT'),
	('SRU', 'GFA_MANAGEMENT'),
	('SRU', 'HTMLPAGE_MANAGEMENT'),
	('SRU', 'KIBANA_MANAGEMENT'),
	('SRU', 'MATOMO_MANAGEMENT'),
	('SRU', 'MODULENOTIFYGRUMAPPINGMANAGER_MANAGEMENT'),
	('SRU', 'MULTIVIEW_APPOINTMENT'),
	('SRU', 'PROFILES_MANAGEMENT'),
	('SRU', 'PROFILES_VIEWS_MANAGEMENT'),
	('SRU', 'REGULAR_EXPRESSION_MANAGEMENT'),
	('SRU', 'RESOURCE_MANAGE_RESOURCES'),
	('SRU', 'SITELABELS_MANAGEMENT'),
	('SRU', 'VIEW_TEMP_FILES'),
	('SRU', 'WORKFLOW_MANAGEMENT'),
	('Teleconseiller3975', 'APPOINTMENT_FORM_MANAGEMENT'),
	('Teleconseiller3975', 'MULTIVIEW_APPOINTMENT');
/*!40000 ALTER TABLE `profile_right` ENABLE KEYS */;

DROP TABLE IF EXISTS `profile_role`;
CREATE TABLE IF NOT EXISTS `profile_role` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `role_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`profile_key`,`role_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `profile_role` DISABLE KEYS */;
INSERT INTO `profile_role` (`profile_key`, `role_key`) VALUES
	('AdministrateurMetier', 'APP_OVERBOOK'),
	('AdministrateurMetier', 'COMMENT_ADD'),
	('AdministrateurMetier', 'COMMENT_MODERATE'),
	('AdministrateurMetier', 'CONSULTATION_KIBANA'),
	('AdministrateurMetier', 'kibana_dashboards_manager'),
	('AdministrateurMetier', 'LISTE_DIFF'),
	('AdministrateurMetier', 'LISTE_DIFF_ERREUR_GFA'),
	('AdministrateurMetier', 'rdv_agentAccueil'),
	('AdministrateurMetier', 'RDV_form'),
	('AdministrateurMetier', 'rdv_planificateur'),
	('AdministrateurMetier', 'workflow_manager'),
	('AgentGuichet', 'rdv_agentAccueil'),
	('AgentMetier', 'rdv_agentAccueil'),
	('AgentMetier', 'rdv_planificateur'),
	('ChefDeService', 'APP_OVERBOOK'),
	('ChefDeService', 'COMMENT_ADD'),
	('ChefDeService', 'COMMENT_MODERATE'),
	('ChefDeService', 'CONSULTATION_KIBANA'),
	('ChefDeService', 'LISTE_DIFF'),
	('ChefDeService', 'LISTE_DIFF_ERREUR_GFA'),
	('ChefDeService', 'rdv_agentAccueil'),
	('ChefDeService', 'RDV_form'),
	('ChefDeService', 'rdv_planificateur'),
	('ChefDeService', 'workflow_manager'),
	('ReferentLocal', 'APP_OVERBOOK'),
	('ReferentLocal', 'COMMENT_ADD'),
	('ReferentLocal', 'COMMENT_MODERATE'),
	('ReferentLocal', 'CONSULTATION_KIBANA'),
	('ReferentLocal', 'kibana_dashboards_manager'),
	('ReferentLocal', 'LISTE_DIFF'),
	('ReferentLocal', 'LISTE_DIFF_ERREUR_GFA'),
	('ReferentLocal', 'RDV_ADMIN'),
	('ReferentLocal', 'rdv_agentAccueil'),
	('ReferentLocal', 'RDV_form'),
	('ReferentLocal', 'rdv_planificateur'),
	('ReferentLocal', 'workflow_manager'),
	('SRU', 'APP_OVERBOOK'),
	('SRU', 'assign_roles'),
	('SRU', 'COMMENT_ADD'),
	('SRU', 'COMMENT_MODERATE'),
	('SRU', 'CONFIG_GFA'),
	('SRU', 'CONSULTATION_KIBANA'),
	('SRU', 'Gestion_utilisateurs_avancee'),
	('SRU', 'kibana_dashboards_manager'),
	('SRU', 'LISTE_DIFF'),
	('SRU', 'LISTE_DIFF_ERREUR_GFA'),
	('SRU', 'profiles_manager'),
	('SRU', 'RDV_ADMIN'),
	('SRU', 'rdv_agentAccueil'),
	('SRU', 'RDV_form'),
	('SRU', 'rdv_planificateur'),
	('SRU', 'workflow_manager'),
	('Teleconseiller3975', 'rdv_agentAccueil');
/*!40000 ALTER TABLE `profile_role` ENABLE KEYS */;

DROP TABLE IF EXISTS `profile_user`;
CREATE TABLE IF NOT EXISTS `profile_user` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`profile_key`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `profile_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_user` ENABLE KEYS */;

DROP TABLE IF EXISTS `profile_view`;
CREATE TABLE IF NOT EXISTS `profile_view` (
  `view_key` varchar(50) NOT NULL DEFAULT '',
  `view_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`view_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `profile_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_view` ENABLE KEYS */;

DROP TABLE IF EXISTS `profile_view_action`;
CREATE TABLE IF NOT EXISTS `profile_view_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(100) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `action_permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `profile_view_action` DISABLE KEYS */;
INSERT INTO `profile_view_action` (`id_action`, `name_key`, `description_key`, `action_url`, `icon_url`, `action_permission`) VALUES
	(1, 'profiles.action.modify_view.name', 'profiles.action.modify_view.description', 'jsp/admin/plugins/profiles/ModifyView.jsp', 'edit', 'MODIFY_VIEW'),
	(2, 'profiles.action.delete_view.name', 'profiles.action.delete_view.description', 'jsp/admin/plugins/profiles/RemoveView.jsp', 'trash', 'DELETE_VIEW'),
	(3, 'profiles.action.manage_views_assignment.name', 'profiles.action.manage_views_assignment.description', 'jsp/admin/plugins/profiles/AssignProfilesView.jsp', 'user-tag', 'MANAGE_PROFILES_ASSIGNMENT'),
	(4, 'profiles.action.manage_dashboards.name', 'profiles.action.manage_dashboards.description', 'jsp/admin/plugins/profiles/ManageDashboards.jsp', 'wrench', 'MANAGE_DASHBOARDS');
/*!40000 ALTER TABLE `profile_view_action` ENABLE KEYS */;

DROP TABLE IF EXISTS `profile_view_dashboard`;
CREATE TABLE IF NOT EXISTS `profile_view_dashboard` (
  `view_key` varchar(50) NOT NULL DEFAULT '',
  `dashboard_name` varchar(100) NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`view_key`,`dashboard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `profile_view_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_view_dashboard` ENABLE KEYS */;

DROP TABLE IF EXISTS `profile_view_profile`;
CREATE TABLE IF NOT EXISTS `profile_view_profile` (
  `view_key` varchar(50) NOT NULL DEFAULT '',
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`view_key`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `profile_view_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_view_profile` ENABLE KEYS */;

DROP TABLE IF EXISTS `profile_workgroup`;
CREATE TABLE IF NOT EXISTS `profile_workgroup` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `workgroup_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`profile_key`,`workgroup_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `profile_workgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_workgroup` ENABLE KEYS */;

DROP TABLE IF EXISTS `regularexpression_regular_expression`;
CREATE TABLE IF NOT EXISTS `regularexpression_regular_expression` (
  `id_expression` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regular_expression_value` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `valid_exemple` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `information_message` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `error_message` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_expression`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `regularexpression_regular_expression` DISABLE KEYS */;
INSERT INTO `regularexpression_regular_expression` (`id_expression`, `title`, `regular_expression_value`, `valid_exemple`, `information_message`, `error_message`) VALUES
	(1, 'Fichier JPG', '(image/jpeg)', 'image/jpeg', '<p>Expression r&eacute;guli&egrave;re pour les fichiers de type jpeg.</p>', '<p>Le format du fichier n\'est pas valide. Veuillez choisir une image de type jpeg.</p>'),
	(2, 'Email', '(^([a-zA-Z0-9]+(([\\.\\-\\_]?[a-zA-Z0-9]+)+)?)\\@(([a-zA-Z0-9]+[\\.\\-\\_])+[a-zA-Z]{2,4})$)|(^$)', 'admin@lutece.fr', 'Expression r├⌐guli├¿re pour les emails.', 'Le format de l\'email est incorrect.'),
	(3, 'T├⌐l├⌐phone mobile', '(^(06|07)[0-9]{8}$)', '0602030405', '<p>Format de num&eacute;ro de t&eacute;l&eacute;phone mobile</p>', '<p>Le format de ce champ doit &ecirc;tre 0602030405</p>'),
	(4, 'T├⌐l├⌐phone fixe', '(^(01|02|03|04|05)[0-9]{8}$)', '0102030405', '<p>Format de num&eacute;ro de t&eacute;l&eacute;phone fixe</p>', '<p>Le format de ce champ doit &ecirc;tre 0102030405</p>'),
	(5, 'T├⌐l├⌐phone', '(^(01|02|03|04|05|06|07)[0-9]{8}$)', '0102030405', '<p>Format de num&eacute;ro de t&eacute;l&eacute;phone (fixe ou mobile)</p>', '<p>Le format de ce champ doit &ecirc;tre 0102030405</p>'),
	(6, 'Tous fichiers images', '(^(image|application)/(bmp|gif|jpeg|png|tiff|pdf)$)', 'image/jpeg', '<p>Expression r&eacute;guli&egrave;re pour les fichiers de type image et pdf</p>', '<p>Le format du fichier n\'est pas valide. Veuillez choisir un fichier de type image ou pdf. ex : image.png</p>');
/*!40000 ALTER TABLE `regularexpression_regular_expression` ENABLE KEYS */;

DROP TABLE IF EXISTS `resource_resource`;
CREATE TABLE IF NOT EXISTS `resource_resource` (
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resource_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_resource`),
  KEY `resource_resource_type_idx` (`resource_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `resource_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource_resource` ENABLE KEYS */;

DROP TABLE IF EXISTS `resource_resource_type`;
CREATE TABLE IF NOT EXISTS `resource_resource_type` (
  `resource_type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`resource_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `resource_resource_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource_resource_type` ENABLE KEYS */;

DROP TABLE IF EXISTS `solr_facet_intersection`;
CREATE TABLE IF NOT EXISTS `solr_facet_intersection` (
  `id_field1` int(11) DEFAULT NULL,
  `id_field2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `solr_facet_intersection` DISABLE KEYS */;
/*!40000 ALTER TABLE `solr_facet_intersection` ENABLE KEYS */;

DROP TABLE IF EXISTS `solr_fields`;
CREATE TABLE IF NOT EXISTS `solr_fields` (
  `id_field` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_facet` tinyint(1) DEFAULT 0,
  `enable_facet` tinyint(1) DEFAULT 0,
  `is_sort` tinyint(1) DEFAULT 0,
  `enable_sort` tinyint(1) DEFAULT 0,
  `default_sort` tinyint(1) DEFAULT 0,
  `weight` float DEFAULT 0,
  `facet_mincount` int(11) DEFAULT 1,
  `operator_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT 'OR',
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `solr_fields` DISABLE KEYS */;
INSERT INTO `solr_fields` (`id_field`, `name`, `label`, `description`, `is_facet`, `enable_facet`, `is_sort`, `enable_sort`, `default_sort`, `weight`, `facet_mincount`, `operator_type`) VALUES
	(1, 'site', 'Site', 'Site', 1, 1, 0, 0, 0, 0, 1, 'OR'),
	(2, 'type', 'Type', 'Type', 1, 1, 0, 0, 0, 0, 1, 'OR'),
	(3, 'date', 'Date', 'Date', 1, 1, 1, 1, 0, 0, 1, 'OR'),
	(4, 'score', 'Score', 'Score', 0, 0, 1, 1, 1, 0, 1, 'OR'),
	(5, 'categorie', 'Categorie', 'Category', 1, 1, 0, 0, 0, 0, 1, 'OR'),
	(6, 'title', 'title', 'Title', 0, 0, 0, 0, 0, 10, 1, 'AND'),
	(7, 'content', 'content', 'Content', 0, 0, 0, 0, 0, 0.1, 1, 'AND'),
	(8, 'summary', 'summary', 'Summary', 0, 0, 0, 0, 0, 1, 1, 'AND');
/*!40000 ALTER TABLE `solr_fields` ENABLE KEYS */;

DROP TABLE IF EXISTS `solr_indexer_action`;
CREATE TABLE IF NOT EXISTS `solr_indexer_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `id_document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `type_ressource` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `solr_indexer_action` DISABLE KEYS */;
INSERT INTO `solr_indexer_action` (`id_action`, `id_document`, `id_task`, `type_ressource`, `id_portlet`) VALUES
	(1, '44', 3, 'APPOINTMENT_FORM', -1),
	(2, '45', 3, 'APPOINTMENT_FORM', -1);
/*!40000 ALTER TABLE `solr_indexer_action` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_action`;
CREATE TABLE IF NOT EXISTS `workflow_action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `id_state_before` int(11) DEFAULT NULL,
  `id_state_after` int(11) DEFAULT NULL,
  `id_icon` int(11) DEFAULT NULL,
  `is_automatic` smallint(6) DEFAULT 0,
  `is_mass_action` smallint(6) DEFAULT 0,
  `display_order` int(11) DEFAULT 0,
  `is_automatic_reflexive_action` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_action`),
  KEY `action_id_workflow_fk` (`id_workflow`),
  KEY `action_id_state_before_fk` (`id_state_before`),
  KEY `action_id_state_after_fk` (`id_state_after`),
  KEY `action_id_icon_fk` (`id_icon`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_action` DISABLE KEYS */;
INSERT INTO `workflow_action` (`id_action`, `name`, `description`, `id_workflow`, `id_state_before`, `id_state_after`, `id_icon`, `is_automatic`, `is_mass_action`, `display_order`, `is_automatic_reflexive_action`) VALUES
	(236, 'Validation automatique', 'Validation automatique', 51, 170, 171, 4, 0, 0, 1, 0),
	(237, 'Annulation usager avant rappel', 'Annulation usager avant rappel', 51, 171, 173, 5, 0, 0, 2, 0),
	(238, 'Annulation administration avant rappel avec motif', 'Annulation administration avant rappel avec motif', 51, 171, 173, 2, 0, 0, 4, 0),
	(239, 'Annulation usager apr├¿s rappel', 'Annulation usager apr├¿s rappel', 51, 172, 173, 5, 0, 0, 3, 0),
	(240, 'Annulation administration apr├¿s rappel avec motif', 'Annulation administration apr├¿s rappel avec motif', 51, 172, 173, 2, 0, 0, 5, 0),
	(241, 'Pr├⌐sentation de l\'usager avant rappel', 'Pr├⌐sentation de l\'usager avant rappel', 51, 171, 174, 7, 0, 0, 10, 0),
	(242, 'Pr├⌐sentation de l\'usager apr├¿s rappel', 'Pr├⌐sentation de l\'usager apr├¿s rappel', 51, 172, 174, 7, 0, 0, 11, 0),
	(243, 'Non pr├⌐sentation de l\'usager avant rappel', 'Non pr├⌐sentation de l\'usager avant rappel', 51, 171, 175, 8, 0, 0, 12, 0),
	(244, 'Non pr├⌐sentation de l\'usager apr├¿s rappel', 'Non pr├⌐sentation de l\'usager apr├¿s rappel', 51, 172, 175, 8, 0, 0, 13, 0),
	(245, 'Modification des donn├⌐es du RdV avant rappel', 'Modification des donn├⌐es du RdV avant rappel', 51, 171, 171, 3, 0, 0, 6, 0),
	(246, 'Modification des donn├⌐es du RdV apr├¿s rappel', 'Modification des donn├⌐es du RdV apr├¿s rappel', 51, 172, 172, 3, 0, 0, 7, 0),
	(247, 'Report du rendez-vous avant rappel', 'Report du rendez-vous avant rappel', 51, 171, 171, 9, 0, 0, 8, 0),
	(248, 'Report du rendez-vous apr├¿s rappel', 'Report du rendez-vous apr├¿s rappel', 51, 172, 172, 9, 0, 0, 9, 0),
	(249, 'Action d\'arriver sur l\'&#233;tat Valid├⌐', '', 51, 171, 171, 1, 0, 0, 0, 1);
/*!40000 ALTER TABLE `workflow_action` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_action_action`;
CREATE TABLE IF NOT EXISTS `workflow_action_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `id_linked_action` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_action`,`id_linked_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_action_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_action_action` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_appointment_reminder`;
CREATE TABLE IF NOT EXISTS `workflow_appointment_reminder` (
  `id_task` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `time_to_alert` int(11) NOT NULL,
  `email_notify` smallint(6) NOT NULL,
  `sms_notify` smallint(6) NOT NULL,
  `email_alert_message` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_alert_message` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `alert_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_cc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_state_after` int(11) NOT NULL,
  PRIMARY KEY (`id_task`,`id_form`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_appointment_reminder` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_appointment_reminder` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_assignment_history`;
CREATE TABLE IF NOT EXISTS `workflow_assignment_history` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL,
  `workgroup_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_history`,`id_task`,`workgroup_key`),
  KEY `assignment_id_history_fk` (`id_history`),
  KEY `assignment_id_task_fk` (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_assignment_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_assignment_history` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_icon`;
CREATE TABLE IF NOT EXISTS `workflow_icon` (
  `id_icon` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_value` mediumblob DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_icon`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_icon` DISABLE KEYS */;
INSERT INTO `workflow_icon` (`id_icon`, `name`, `mime_type`, `file_value`, `width`, `height`) VALUES
	(1, 'Valider', 'image/png', _binary 0xC3AB504E470D0A1A0A0000000D4948445200000018000000180803000000E295ABE28C90E29590E295A9000001E2959D504C5445C2A0C2A0C2A0C2B2C2B2C2B2E2889AE2889AE2889AE281BFE281BFE281BFE28899E28899E28899C3B7C3B7C3B7E289A4E289A4E289A4E295A5E295A5E295A5C2B7C2B7C2B7CEB4CEB4CEB4E295AAE295AAE295AAE29599E29599E29599E29693E2959FE29688E29482E29482E29482E29692E29692E29692C3B9E29482E295ACC385C2ABE295A977C2A5E2949463C384E295A27D7D7D4F7EC2AC4771C3BF4E4E4E0D14190C141B101010C2B0C2B0C2B0E28CA1E28CA1E28CA1E28CA0E28CA0E28CA0C2B1C2B1C2B1E289A1E289A1E289A1CEB5CEB5CEB5CF86CF86CF86CEA9CEA9CEA9CF84CF84CF84CE93CE93CE93C39FC39FC39FE295ABCE93E2889EE29690E29690E29690E29688E29688E29688E29593E29593E29593E29592E29592E29592E295A4E295A4E295A4E295A7E295A7E295A7E294B4E295A5CE93E295ACE295ACE295ACE295A6E295A6E295A6E295A9E295A9E295A9E29591E29590E29680E294BCE294BCE294BCE2949CE2949CE2949CC2BBE294BCE295A7C2A1E2949CE295AAE28C90E29494E29593C3B1E2959CE29592C3BAE2959DE29598E294A4E295A1E295A1E29693E29693E29693C2BDC2BDC2BDE28C90E28C90E28C90C2BFC2BFC2BFC389C2A1E2959FC2BAC2BAC2BAC3AEC2BCE29594C3AFC2BDE29594C3BAC3BAC3BAE282A7E282A7E282A7C2A5C2A5C2A5C2A2C2A2C2A27DC3ADE294ACC396C396C3967AC692E294B478C2A5E2949076C2A3E29490C386C3B4C3B472C396E2959CC385C389C38966C389E2959662C3ACE295A15FC3AFE294A45DC3A8E294A4C387C387C38759C3A7E2969358C3A5E2969257C3A0E2969155C3A4E2969154C3A2C2BB7979797777777575754E7DE28C907373734C79C3BA6E6E6E4974C2A34873C2A24772C39C5B6874476CC3AC426AC3854269C3AC5F5F5F4066C3AB5D5E5E3D62C3A43C60C3BC56595B3C5F7E505A605656563556744F4F4F4B4F5233526E33516B32516D404C543A4D5E4848483C41433C3F412941583C3C3C313E49283D51263C51243A4F27394A2639492437492C353B2D30312132422630382C2C2C1C2D3D1B2B3A27272723282C2525252424241C1C1C131E281617170B12180B0C0B080C0E080908E295A6531B250000000174524E530040C2B5E295AA66000000E2889A4944415478E2948C6360E2949402C3BF18E296910346666CC3B35C6262161AC3AE58246C6CC3AC4B783930E294BC0D13E2889945E29597E28899E29691CEA6101614C3BF10C2ABC38529C3AD55E295A92FE2948C66C3ABE294BC55651E02CE93C3A6E29591C3BF1AC2BCE2948275C3A83B7959C39F7C5626C3AA1AE2959E02533FC2B15875E2959537E295AAC386C39CE294A459E2949436E2889AC2A2CF83E28CA15AE29594E294AC357056C2BDE295933BE296933130E29691CF84C3BF07E28CA1CF837223C2BC66760EC2B5E28C90C2B1C38663E295A072E289A1E295ACC2A3CEA6E2959EC3AB64C2BA74E295A3E2959767C3BA4F74114F587BC3B2C3A6144A0035080AE295A1E28CA0C2A208C3914C0A5446712B4B7AE2959DC2BBC2BDC3BC7D546D0F1F1BC2AC07CEA35B03424245C386255235E295A4C3A9C2A3E29594C2AB4E2426C2AB52E295A54901E2968CE295A7321569091912E288997A2C18E29692C2AAE295A555E295AA21CE98C3B3C3AA25E282A7E29498C2A2274770E2948260C3AB3A0E257635561C69C387C3A6C3BC080000E2959F4B2BE288993B20C3A6E295930000000049454E44C2AB4260C3A9, 14, 14),
	(2, 'Refuser', 'image/png', _binary 0xC3AB504E470D0A1A0A0000000D4948445200000018000000180803000000E295ABE28C90E29590E295A900000243504C5445C2A0C2A0C2A0E281BFE281BFE281BFC2B2C2B2C2B2E2889AE2889AE2889AE2949C4C36C2B7C2B7C2B7E28988E28988E28988CEA6CEA6CEA6C3B7C3B7C3B7E28899E28899E28899E289A5E289A5E289A5C2B5C2B5C2B5E2959B3B22E295913A22C2B1C2B1C2B1E2889EE2889EE2889ECEB4CEB4CEB4CEB1CEB1CEB1E29680E29680E29680E2959FE2959FE2959FE294A4E294A4E294A43B1711CF83CF83CF83CE93CE93CE93C39FC39FC39FE29598E29598E29598E29590E29590E29590E295A9E295A9E295A9E29594E29594E29594E294BCE294BCE294BCE2959BE2959BE2959BC2ABC2ABC2ABC391C391C391C3BAC3BAC3BAC3A1C3A1C3A1E295A67868717171E2959A4E37E2959E4D37E294804D366D6D6DE294943B22E294903B22E2959C3B225F5F5FE2959D3B22E295973B22E295913B22E295A33B24E2959639225C5C5CE296933821575757545454C3BB2E1C4E1D144C1B133C18122D16112D1510C2B0C2B0C2B0E28CA0E28CA0E28CA0E289A4E289A4E289A4CEB5CEB5CEB5CF86CF86CF86CE98CE98CE98CF84CF84CF84CF80CF80CF80E29684E29684E29684E295ABE295ABE295ABE29593E29593E29593E29599E29599E29599E295A8E295A8E295A8E295A7E295A7E295A7E2959EE2959EE2959EE294B4E294B4E294B4E295A3E295A3E295A3E29595E29595E29595E295A2E295A2E295A2E295A1E295A1E295A1E29691E29691E29691C2ACC2ACC2ACC2BAC2BAC2BAC3B1C3B1C3B1E2968CC3AC7DC692C692C692C2A5C2A5C2A5C39CC39CC39CC396C396C396E295A47F70C3B6C3B6C3B6C3B4C3B4C3B4C385C385C385C384C384C384E29498705BE295936F5BE295907261E295A07261C3A8C3A8C3A8E295A96D5BE294B46E5EC3A4C3A4C3A4C3A2C3A2C3A2E295AC6653E29599634EE295A85F497E7E7E7A7A7AE296916354787878767676E295945641E295AC523A747474E294A45B4A7272726E6E6EE294AC4D366C6C6C6A6A6AE294AC462FE294AC4129636363C2A14632E2959B3F27E2959C3F28E2959C3D25E294AC3B22E295953E27E2959C3C24E295A23D26E295A33A22E294A43A23E295A23922E294A43922E296913720C2A13620C3B33A26C3AD3521515151C3BF311EC3BB311EC3962F1DC3B6301EC3862F1EC3A62F1EC3862C1BC3A92618C3A926173E3E3E50332E3B3836652419462F2A5C251B35302E57211942201939221E3B1F1A2626263C1D194E160D49160C242424331D18411710371A16351B162E1B182D1916201E1E2C19172E181531171230161137130C251A172618161D1A191F19181919192F0E0724120E280E0A22100D151515230F0C250E0A2C0B052109051D09061809060E56C2A26F0000000174524E530040C2B5E295AA66000001734944415478E2948C6360C3A12EE2969113C3A66663C3A571C3BF1819C39F123173CF846BE29691E2948241E295AAC3BC4B16E2959A7141C391C3BF66C3A564C39CC2A208723001E29498E2959B6B53C2AC374BE289A531C3BC2518C2BA65CEA3C2BD59C3BF0A713030E2959A2EC3ACC2BD34E29688CEA6E2959F0DE295A4E294AC3CC2A545534B7D46E2969238C2A2CEB1C2AA78C3A249C3AF54E281BFC3AD12C3AEE294ACCEB4597878586615E295916C496EC3BFE29693E295964CE295A4136A140357C3A435C3AFE295A2C2ABE29692CEA6C2ABC2A3C3A8E295943BE29482C3A9C39105604E6416C3AAE2969362E295A4E29599372C2ACEA6E2968857C3B320E294BCE295A70A772F2B7BC39C250B2FC2BB6ACEB4E295A2E28C90C39FE294ACE281BFE295A0485ECEA3CEA3365AC2A3E29690E2959AE295A66B6CE28C902169C3AFE2889E7726E294980DC3A6354DC3A5C2B77A6D56E29692E29684C2A348123EE2889AC3B26B276C152DE29592E295926EE29596C3846647E295AAC3A6E294A450E29498C3A17777C2ACC3A628E295A8E294982D6BCEA3C39FC2ABE295A9C2A2C3B4E295AA6CE295A2275BE294B45B65C396E29591C3BB66CF846A0F2EC3AA3FC3BFC2B525E29598E28CA1E2889E2857C3B662C3B930E2969250C2BDE288A958252206E28CA1E28899E2889EC3ABC2B207C2ACC3B664C2B059E29498244CE2959055E2959756060941E295A062C3B65BE2959B5D27E29598E295A6116827C3A7C389E295ACC3A875E2968CE289A5CE93504BE29595E29684450264E295AAE294B4C2ABCEA3100CE295A6551276C387C3A51523C692C3BFE294823DE29598E28CA16CE2889EC2AB6E4E3648E295A4E29594046333E2948271E29691CE934B0700373150CEB4CEA9C3BACE93E295980000000049454E44C2AB4260C3A9, 14, 14),
	(3, 'Commentaire', 'image/png', _binary 0xC3AB504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AE28CA00000000467414D410000E2949804E29684E29693E2948C02000006784944415478C2A3E294BCC3BB4D6C13CE9819E2959FC2A0E289A465E2959FE29480E29590C3A7C2A5C3850D64CF86E295950E34E294ACC3AFC3BA04E28C90212840E29598224E143801074AC3B6037BE295AA6DE2949CC3AD6AC39148C3A6E2959551C3A4C3A15237E294986AC3912A3DC387C3A42A55C3A8C389CEB1E294AC0A11407CCEA3404CC3AA6CE2959FE29690C3A5754C242731C2BCC3AB673CE295A2E2959F33E289A43E3DC38944E29498C2BCE295AB76C2AC7EE281BFC391E2898834E288A9E2959DE295A7E288A979E2969079E296A0E289A400C2A06709C3B26EE29684E294907F7FE28988CE98E29599C2BA4FE289A13CE295A7E295A6E29693C2A3E295AB342DE28988C69200102BE2968C78CEA9E29598E28C90E294B4C3A6C3A6C3A6E29680C2BCC2ABC2ABCE93CF86E29688E29596E29594783CE296A04D2412C396C396C396C3960904C3A2E294B4E294984824E289A56D3AC2A57EE294905D00C2ABE295A073C39FCEA9E29592C2BDE29490773AC2A51F777575C2B2E295A9CF86767F6C18060441C387244910C3A40F05E295A0CF83724826C3B4E295A6C2B178E281BFC6924B4B4B51E2959EC3BF56E2889E6C22C3A924495C201008C3ACC384C3847E590960E2949CE2889EE2889E6CC3A9E2959354281448370CE295A9C2A226657339E295A966E29482C3B6E295A6CF8328C692E295A753C3AD50C3A14A35313111E295AAE2959AE296910CC387CF80E29684E295A373E29490E29690E295A16B57C2B2E295960B0B48E2959432CEA364126C6E0EC386E29599094EC38640C3AEC3BCC3AAE2949418C3A2C2ABCEB46517E2959F71304D73C3A7E295A6CF836A0DC3A04221E2959B5C0978E282A7474EE2959910C2A5C39CC3A9C3B64C627E64047A3E0FE29692E295911A2002E2959F71E296885AC3AE31E2889EE29684E295A3E29482766868CEA6E289A4E2959EE2959EE2959E76E2959BE29490E29490C2A0E2959AC2B1CF80E2959F7F590AC3A9C3AA505D5707737C1C5A4B0B2C7D7D0063C3B25C6151711CC3A77038E281BF5D24125916C3851E3D3A32343474E28CA0E2959EC3AC1B7F4924121959C3BBC3B9E2959FE2959EE2959EE2959E00CEA6CEB4E294B4C2BD2C16581A1AE296913A3000C3A769E294ACC2ACCEB4C38720C387CF80E295A97DE2949CE294BCC3A25B2C16C3A4E2949CC39FC3BFC2ABCEB409C2B1E295A5C3914B5763E29692C3BFCF84CE93E294BCC3AFC692757474CEB1E296A0C2B2E2889AC3ADC2B5C2B5C2B5E295A2C2B1C2B1C2B13F2D2C2CC3B119631045113FE288A9CEA902CF8038E289A11FCEB510E295A034C2A0CF860A00E29494E2889EE2889EE2889E1C005920C3B3CF836030C3BFC2ACC2A1C2A13DE2969167E295A71EE2889AE29690E2959C7B1DC3A561E295AAC39CC2A2C2A2E29688C3AAC2BFC2ACE29490E29490C2A0176EE29596E295975E5614643319CEA63C0FC3B1E29599CEB12509102AC3B7E296920D09C3A9005555313636762B16C3AF3D1100CEA6C3AEE29692C3A0C2BA4FC692E2959B4EC39152E282A7E295A2E295A2E295A25DE2959CE2959CE2959C1FE29592E29598E29598E295AAE29680E2959C7B57E295966FE296803EC692E29599CE98E294A43DE2959B7F1FC3A52461E296A0C3AF2F50C2A54EC3BAE2959EE288A907781EE296845A592B5DC3862421C3A648E295A8E295A16BE295AB461545E28899663DC3A03C11E294BC5EE2959C7AE28CA12A140AE29498C2A54ECF84E29690E282A7E282A7E282A7E2959ECEB5CEB56E573EC692E2959628E295A3C2A324E2959B7F0FE28988E295AB5F63657E1E6DE2949CE2949CE296915555C3BC18E296887617C3AAC3B3C3AA6030C3BF1A1D1DC2B233C387CEA3C2B51ACEA900C3BB16171767E282A73C79C3B3582C16C692E295A7CF84C2BDE289A4783CC386C2AC2848C2BF2AE295A5C3960CE295A5C6927CC3A9C692C2B77CE29691C3A815E29597C2B0C3A5C3AA08C3B328CE93E29498E2948267E29692C3ABC3ABC3ABC2BB0064E295A25E2203C38952142538393919C3B465E29498E29688E295A8E295A8E295A8CEA3C2B178E295A8CEA670C3A1C2ABE29482133FE289A4E2889A515D550522E2948C56CEB1E29590002F5FE2959B5CE2959D7DE2889AC3B7E2968000CEA3C3AF19110158E295A475C2B2E288A977E288A9E29690C2B252C3BB653C7FE296A01C055DC3A7E2949C6EC3A74514E294B4711C78E282A72F5BCEB5C2A1E294B4E295ABE295A1E295A37D4B3961E295ACE288A9E289884BE2959CE2959CE2959CE289A17AE2959CC3BFE282A7E282A746341AC3A0C2ABCEB430E295AB5A50C386C3B1C386596F5DC2BCC3AA79C3B2E2959DE2959AC2ABC2AB2EE294902008E289A17AE2959CE29691E294986CC3BFC396C396C3BCC2ACC2ACE296915AC2A1C3BFC39CC39CE294ACC3AB1327CEB172E295A360180668E29590C3BB3707E296840A534CC3910044E29490E29680E294906FC2B2CEB1C2AAC2AA261C3A7408C3B4C3B4C3B4181C1CC3A4E2949CC39F402814E294ACE29494E29494000E1C3800E2959EE295AA0F322C0652E296926C365BCEB4E28CA0E28CA0E28CA0E29688542A454444C3A561C3896118C3B1280A5DE2959B7CC3964451C3B11D3B76E295A8C3A62347CEA6E29593C2A15B444464C39C2669C39C46C39CC2AA513EC692C2BAE29684E2948C2F5B55555255C3B232C3960C1111E2968CE2959D793300C3A1C2AB2440676767C2A0E295A5E295A5124B26C3B4E2968003304DC3B4C3AAC3AACEB5E2968CE2959747E2959777E288A92600E29598E2948CE2948C4A57C2AB5C21555549E295AB75E295A5346D23C2B03A4026C3B4214551C3AAC3AACEA6C2B7E28CA1CEB4E295A700E29598C3B604387BC3B7E2889E6FE29482E294982C2D2F2F7F0F6033E29480C2A2376F687070C38900C389E295A7CF84C3BA4C2643C3AEE29692C3ACE2889E5555E2968CE295AAC2BB691AC396C2AA49C3851F3FE295935A5A5AE296A000E2949402C3B61848E295ACC6923FC2A0CE98E294B4C3A207E2959773E295A31CE2889E763B00E281BFC3A1E2959CCEA9CEA9CEA970E289A5CEA349C2B07C3EE29598E29593E2959342C38624343737E2949C6AE295A1C3A93106E2949C3020C3A8220CE2949C00630CC3BC40E294943873C2B5E295A057C3AB44CE93C2BB004AE295ACC385C3BBC3A70F1F4EC2A2C2AAE295A35101E2959934C3AFC2ABE29590CF80E2948CC3BA47C385CEA6E295ACC2A53B140EC3A729C692E295A7532AC3B222455128C3B24A51381CC2AAC39FC39FC39F59007BE29691695EE281BF311F70C2BFC2AC5A15C385E2959FE295A67EE295A2C3AE31C3BFC2AA09E282A7CF8471C2B0E289A1C39FC3ACC3842022CEA6E29591C3846C36C3AFE295A3E295A33948C38604E2949C300200C2B5C2B1E294B4E2889E4ACEA927C3A9201C6B6A6AE29591E281BFCE93E294BCC3AFE2959272432663C3AE4CE29599245DE295ABE29594300C22225A5D5DC39168344A0F1E3CC3A14824424444E2959FC3841DE2889AE2968CE29593403FC2B50319E29599341F24C3B4E29594C3B242C3ADE289A16939E2948CE29590C3B76BC39C26E295A5CE98345EE294907EC3AC743AC3ACC384C3840EE294A4E294A4E294A440C3BB6516C3AC46CF842A05200006C387C3B20B172EE281BFE2949C6EE29596E29596E29482623EE29591E288992051CEA3CEB4CEB4CEB46BE296846E77437B7B7B436767674D5F5F1FC2BC562B00607171C2B1E29597783C3E5F29E29494E29591E29690C3A742C3AD3FCE93C3A269C3B6E29597371E4015C3875AE282A7CF843F72E295A35C6EC2BBE295ABCEB4C2B1E288997CE282A7E282A7E282A7E282A7E295A2582C1601E29691E29693E28CA1C391CF864FC3B2CF832500C38900E295AA00E295AA01E29598036802C38906300B40E2889A6F0314E295997AE29596112ACEA6C387C2A0E28C90E296A0054D115D3C36E294AC48200000000049454E44C2AB4260C3A9, 14, 14),
	(4, 'Validation', 'image/png', _binary 0xC3AB504E470D0A1A0A0000000D49484452000000300000003008060000005702E28899C3A700000B314944415468C3BCE29590C39C6BC3891CE2959275E2959F7FE28988E29690CEB5E282A7E295ABE295ACE295ACE2959B77C3B721C2A15642C3A1C3865528E2969331E2959E0920CEA318C3A265226CC2BF444EE29594764255E2959BC391E295A9C38452C3B148C3AA0D24E295ACC3A7602ACEB1C3B61F15630B394529E296A0CEB10F49E294982EC3AEC2BFE295AA2248484218E295A832E2889AE29690C3B2C3B739E2889AC2A3E2968C79C3B7E295A0E2889EE295A0E28CA0743E74E295A73E2CC3A41E5E697DC2AC6EE2968CE282A7C2A1C2A13BCF847FE295ACC2A0E282A7E289A4E29490E2959647E289A17B68E2948C0FE294A4E2959FC3B1107F29C3B1E2959D5721C3B4E295A956E2968C2227C384C391E2959BC39C7E092802CF83E295A9C2A0C3A8C3AC73E289A452C3B42FE295A91A61C3AFE295AB77E29592CF86E29690C2B2E29594C2AAE29597CE98086C65263BE295A6C3BF79C3A6CEB5E294807B24E289A5E2969249CEB4C3A9E28CA1C391C2B0E2949024E295A7CEB100E29692E29592463B5DE29692C3A8E289A407E295967E69E2898867E2948C3EE2959F5C76C3A6E29596CF84E295AC13E295A62DCEB1113EE295A2056F2364E295985627C2BD161F1541E296A077E28C906B29065872C3BA1DC2BBC3BF441CE2969055E295967BE289881D0DC692CEB1E28CA0E295985B74E294BC7A30C3AF1952C3A0145173C3A8C2B1E295A0240DE282A730E29688C2AC770603C692E28CA0C2A02B500368E294901700E294A4C2A0E295A8C3B7C2B0E28CA1E2949453073B0F31C3891826C39CC2A5460A40C3871020C3A42057E295A933C3B9C385E29692E294987F0B7AC3ACE2959B17C2BF073CE2948C06E2889A0EC38754CE93C3A003C2A21E41131A3DC3AF7D48C39F78E2949026E29591022CE29688420AC3BC477900C2AC0063E2949C01183FE295980F6FC2BDE2959B75E288A91D0DC692CEB1E29598E28CA059E295AB49CE98441F00C3BC704BC3ACC3B602290565E296880250C387E295AA5000E282A71F1935E295AACE93CE9803C2A21F613EE29490E29494746E0629C3A0CF80E295955829C389C3B2E295A7212348E294B4E295AC43C3A639E2968452E29591C3AD7B40E295AACE93E296803FE29482CE98E29482C3ADE29691E29490C3A0E29680E295A0E29490C3AF1412292552C2ACCF8367CF837EE29593C39146C3AC37E29480E281BF52C3B6E295A5E294A45529C3BAE29593C3A565E29494E2898843E288A9E2959B3A5FC2B257CEB509E288A96330394CE2959BC2A3474ACE98461BC3A4E295A6C3AD4A1E5A032D5814C396E295A9C3AC11C2A059E281BFC2BAC3870914360CC38710CE93CEA6E294B4C2A1C3A7E29494C3A5E2959BE29480C387CEB4E2959DE2949CE28988E295A1E295AC0BC2ACE28CA0002123E2959A7BC3AFC2BAE295940C64E296A02B79327D11486E18C387E2949411C2A03FCF86C2ACE29597E2959CCF80C3BBE295A876E29690C3BF3EC3AC261542C3AA4B222FC3A4402269C2A10A133547584CE294802EC3843C397E045800526C04C3A0C2AC7E10CEA6E28CA0CE98E2959BC2BA0E743CE294AC7826E295A96221C38454C2BDC3B32FE29480C39C4CE294A4C2B0C2A229E29498054612C3A2C2B5E28CA0C3AFE29482E295A700C3AF400CE2959A01C3B74DE29680E294804217471F68E296804FE295A111C3B327E295A4C3AFC386024D4A3425E295A4C3B642C3B46A79C2ABC3B704E28C9036C3A9E28CA0E2959EE295A7C3B4CEA9491D4BE282A74A0D0173401AE295960AE2968CE295980C04C385547DC3ADC2A1C2AC7DE288A93D2DE28988E295A415C3855016164A6A4837E2948C42E29595035052E295A41268663C3D426C6E3632E289A5E295A0C2B04F7022C692004AC3B2356F1AC387CEA9C3BAE294B41A0147E2949078E295A621160B7126E295A0E2959465CEB54BE29692E295A979C39FE295A827E2889E6DE2959EE296930B5C58E2889E33C2BA5FC39C7B0EC3A73A0B401EE296912BCEB4E29690340A09E2948033E28988E295A2CEB50BE295A10736E29599C3B9E2889E47C3B40AC39114C39CC386CEB5E2959D32CEA93DE295A1547BC3A9E2959D1F7BC3A74424752C712A39C3A413C2B20CC2BDE295AC0270C3B4325073C3B17AC6925F0F7CCF86C3BC4DE2889A194E0F635A19C3B6C3866EE294825AC2A2015DCEA934C2B0CEA919490E33373313E295A3C2B0E295A0CEA60752CF84C2AA02104AE2959BE289A1E294BCCF86C3A7105230C3BB1D432905C3B62963C39FE295984CE295A34CC391465F3DE2889972C384C3BCE288995E337A64C3B7E29693E29598E295A36900CEA97E5C73784B68CEB4CEB5C2A1C3AD5B38357FC39CE28C90E281BF34C2AC2211C3A43BE29688E295AC5C6BE2959862C3AF32E288A94CE294904522C38638163FC3B2E295952C752E05E289A16D3A51E281BF0DC3A93DE295AA082041C3BC5F70C3BCC2A0C39FE2889AE295A05F6EC3BC0F75E296A0484DC2BA5F0B3CC2B2E28899E295AC47C3AB66C3BAE295A0CEA3C2BAE295A4C3B2C2B502506BC38778C3B641C3B4C2BBC3A6E29594CEA318E289A433E289A4C3A6C3ADC2BA473EC3B63A6B017CC3A7E2959F7CE29591E288A9C391E2959C2DC692625BCEA656E295A5E294BC0CE28C9062C386E2969044E2898843C3A2E296A0E296906FC2B12CE295A7C2B104C2A0062C5D0B10E28C90CEA3E29596E288A96AE28899E2949C50E295A813CEA3CF86E29498775CCF84E2968CC3AC5B012014524A5A7D2DC3B6CF861217C2B507E29590CEA6C3A6E28C902B5267E288993BC2B00EE2889A7CE29591E288A9C391E29490E2969079C3BF3F6AE29690E2959F7466C3BCE288996C12E295A91ECEB56AE29595C38547E295967CE295A3E29591C2ABE28C90C39FC2A23CE295A7E295A6401047C3A75FE295A41AC385E29593E288A9C2BDE28CA1E295AB1DE295AAE295ABE296A02906E295A5C3A214E2889E25744DE2949CE295A83474C391C3BA2B0D43CE9818C39C46C3A2E29596E282A76A234864C3B73CC2B148E289A5E295AACE93E295942B53C2BA62C3A8C2B2E281BFCF845F6CC2A0C2BDC384265FC3BFCF801327C3AA2F25314B59E295A5E294BC0CCE9862C3A85A6F2DE29688C2BD77102DC3ACE288A9E295A0E2968CC2A5E2959CC3ACE295AB38C3847B237059CF845FC2ABC2BB1142E2959DC2B7CF84E295961EC2AC514AE295A4C3B2E2889E42531A7A6568E295ACC2BC290DC2BBC2B5C391E294BC17663471C3A6C3ADC3A6C39F48E288A9E295AB06E282A70366C38779C3A170C391404914E28988CEB5C2ACE29597C2A5E289A4E296921E0A65E2959FC2BB4A372CE2948C254653CF80CEA3C2A1020FE295A1C2A029C2A14DC2A2E2949020E2959BE295A669C2B1C3A1CEA600E28CA0E295A62E6AE295A6E2949C7BC39C3EE29593E295A419E2948C4624E29592CF8638C2BBC2A175E2969070E29482E295A4CE930BC3B42BC39C44C3B35DC2B5CEA3C385C3B3574DC2A5C3A8397B4040E29693C38972C2A0CEA3C3A8E295AA655125CEA6C3ACE2898853C39107E295AA55E2898831C3B6543B661EC39C7CC3915C2CC2A0C3ABE28CA12B6BE29598E29590E2959EE2969335C2A0E2959571C3854FE289883DE28CA160E2959FCF84183547495B2937E2948C4EC3B4E295A5C391E289A4C2BCC3B1C3B3E29593C2BF216804786DE28CA04D323DE29498630B27CF80574DC2A5C3B20C38E29591151BE29688015CE295A4C39FE294ACE28C90E2959863C39671C2B5733126E295A04966E2969373E296845E7F073BE2949CE295976FE289A4E281BFC396C2B1E29591E288A96FE2959CE28988021E56E295AC1D48255F78C3A1CF80E29482184A67E295AA1C46C3B41AE2959152E295A6C2A3C2BB64E29494C2BB7B69E289A1E29593E2959937E295ABE2959FE294AC4C2CE295A5C2A0C3ACC3ADC2BDC2AC3AC3B9022813C3ABE29480E295A7E2959959E2959C1929E29598E296930E5FE29693C3BB184A5C2057724E4A5208CE93C3A03853E2949819E295A2566F6777C2B0CF80C2A1E2959E2EC2B2E29490C2BDE2959B1AE295AA5B01E295A4E289A572E289A463C2A5C3ADE295ACE2959C1F6DE29591C3A2C2AB5417E295A2282F3BE294907A18C39C46E29482E2959609732943773462C3845F07752AC2AAE29595C3A7CEA31CE29482C3857EE2959DC2B12EC3A410C3B10B19160B71263353204029C2BA562BCF83C3B6E2959CC3B35DC3B16817690F6EC3B32910C3B7E2948043E29692E295A71B7BE28CA069E288A90EE295A7E294A4E2969259C2A0E28899E294B4E296880E79C3AF14193207C3B937CEA9C3A8E289A40EC3BF5AC3BAC3BB1A23E29480CEB4175E67C2B7E29598E2889EE2898826C3844DE2959C014CE29597E295A4E29596C2ABE295937907E29494C2BB184CE29680C2A5E2948CE295A4C692CEB4E2968CE295A33DE295950321047DC3AF0320700FE295926A65E295953AE2968CC3B344E2959BC2A3C2BAC2A1C2ACC3ACE2959360C2A267E29690C3BF39C3A15ACEA3E296A0E2889A3AE296A0E29595C2B223E28CA1E2959738C3B93807C386E295A1C3A6E295ABC2A3C39FE29599E2959C3479C2A2CEA6C396CE98657060CEA66CE28988E29680E28CA17FC3856BC2BF3AC3B90200C2A2E295AB78357F67E295A27AC3A9E296923B03C2ACC3A53A4F0DE28C90621A21C3A41BC2B2152015E28CA1C3AAC387C39172E282A7467F136D55CF86484D343EE295AAE29692C692E29692E2968418E2969262E2889EC386C38669E2959573E295AAE296884CE295A2C389CF83CEA3CEB129E29482E289881B03C38517CF80E294BC491740C3BB6BC3A1E295AC5A0050CE93E295ABE2959DE295A3E28CA0C3A65C3211C3AA7DE29591E29590E295AB41C2A5E29596C3BB7429C3AC14E294ACC3ACE2959B7424E29691744F4D52C3BC04E295993269E28CA037E295A559E294820D29057DCE985E74C391E29593C3B64E43731A57C2A1C2BAC3A51A3DE29480C2BBC3A74E307E7CE289A5E29498E294985FE295ACE29490034CC39F1CE295A8C2BBC3AB3AC2BD01CEB1C3A92870C386E289A4C391E29688C3B9120BE2959BE29498E2889A1B7D611A7DC3ACC3B1C3AF69C3B1146BC3B3E29490C2BCE2968C5D60E2889972C384C3A151E294BC647E1224C3B9E295937D4D23C3A1E2889968C3B73613C396CEB566C3A17FCEB16CE28988C3B4C2B22FCE93E289A13EE2959E7550CF84E29596015440C3B678C3A2E289A4C3B71FC3B6C3B4C3AFE2959BE29498E2889AE2949CE2959B36E294ACE296A030792BC3A72DE2889E5519C389CEB5C2B55C01C3A6E295A14CC3B9E289886A79E2949C6AE2948C0AC389E29691374C6629E2949C1B0327E29590E282A7C2BB0F3C5EC3AA17C3BAE294942CCEB5C39FE281BF7A01E281BFC3B7C3ABC2BC0C644BC2A05CC2B7E2959B35567AC3B327E288991B4AC3B7125B43C2A5C2B035E29680E29693667744C3BFE289A45CE295A33D5B51C3B92B73C3A06AE295A1462D5ECF83CF83E28CA0E2959A19C2B54FE29480E282A7E295A75C30C3BA38C2A2E29593CEA33A54CEB56AE2889A20616603C391E295A5C2A059CF84E295A1C385C2AC64E296843B7F7FC3A2E29596C396667F33792BCF84C3BBE29593C3B2E29688C3A24A67E295922AC3A6C3B96B4BC2AA5FE289A4E295A4CEA369C3B37BE29591C2A2C3BCE296A0E294B4E29482E288A9C2A043E29680E2959150CF84E2949C002CC3A228C2A328E282A7E295AB776913496FE2889EE2959B067FE29482E295A4E2889E6F2657E295ACC3BC4B27E29590C3B208E29591E295A5E295A8CEA3C3910D4B57C3A8E2969137C3AE5930393978E295A9C3AE7CE2959CE288A9C2B1E294ACCE93C2B750C2BA621F76C2BF2F03E29498CEA337532F67E29680E295A91EE2889EC3ACE2959CC2A2E295945B59E295A20437CF80E29599E2959D08E295963B4B21C3B96925570D2525E295A17A2D5ECF83C39FE2889EE2959A59C2B54EE29480E282A7E295A70CC2BB1F752A76256D6F0356E296A0CF86C391096DC3B43AC3B9C2ABC3AF3FE2889E33E281BFE282A7C3B7E2949426C3BBE295A979C3A4E296911D61C2AA56CEA371C391E289A4C2B774C3A73AE2959C6EE2949CCEA9C2B7E2889AE282A775C391E295ACE29592025806C3A67B2B3F696CE29593E295A7C39675E29594C3A70346C3B2C2BAC2A1C2ACE2968C796B4269E295921E70674DE295A4CE9369215B303973C39FC3AEE29498E28CA1C385E2959CC38517160BCEB44AC2A56B015031E295A63CC2A2C2A5E28CA06EC2B1E282A7E295A6E29593C2BA1EC2ABE289A554795AC2BDE2948C280BCF84766135C3AA3AC3BA0EC2BBE289A57276E28CA00C63C2BB4E3C1B7D65C2B5776E58CEB40100E294944AC692E295944CC2B7E295A278E295A7C39675C396C3A7C2B27AE29494E295991A68E2949C16366561C3AD2BC3A05F771A56C2A06C2FC3BAE2949C6367E296807D227243C2BF73E2959C0000C2BCE29598CE98E28CA0C3B17FC3AFE288A9C2A359C3B2E2959D33CEB10FE29598E29596065AC3B9E294BC5EC3BAE29596C3A6542EE294BCE2889A135DC2B57B4F466E18752A76E2959C2FE29591C2A1E29480C2A2E29594492B691D2F6D5FC2B7E294A4E29598444373204CC2A1C2BAC3BB7C31E2959FE2889A53E288A931713CC2B76CE28CA0C3B2CE981B46C2A5C3A8C2B22E6FCEA9C2A1E2889EE294BC5CE29693C2A32DC2A0E29693E2968456E2889EC3AA6627E2948C461317C3ACC2B1E29498E295A4E295A3E29498E29599732F767FC2BDC2A0CF84382A73C3BC1B40C2A5C3A8C2A1E2959F6F2574200434E2969172CF86E2969304E29480716A7EC38475C2ACE288991F64CEB4E28CA1630F0DCF845869E295956B5A38200AE2968440CF8401C3A46DC2BBE2889AE2959BE29591E28C90C3B7C2A0CF863A76E281BFE29596E28C9003C2BA0000000049454E44C2AB4260C3A9, 16, 16),
	(5, 'Refus', 'image/png', _binary 0xC3AB504E470D0A1A0A0000000D49484452000000300000003008060000005702E28899C3A700000EE295A84944415468C3BCE2959CC39C7BC3895BE295927DE2959F3FCF84C2A3C2BD2B69256BE295A17EC2BC766BE294826479E2948CE2959560C2A2C3BCCEB116E295A063E2948CCE93740A01C2AA4C3B693AC389E295952F6AE295A52169C2A238693369E2959969C3BF6C66E295A5C38950C3BBC386692049CE982330E2959D02E295904CC3A913C38616E2968814C386E2959EE296925D63CF80E295A1E2959CC2BCE295ABE2889AE29593CEA979C391C2BDE2889A3AC2B2CF805E69E295A10FE29688CEB4407B66CEB5C2BC56E295913ACF84E2889AC2B23DE29490CF845C09E29690C3A0C2B1747777E2949012CE9316C2A1753F526E02E29693C387687EC2ABE295A12E7A7030C387C39F59E29680C2A0C39F476666C3840301C3A1E29680CE98E2948CCE93E29684E29596C2A315E28CA04725E29684C3A6CEA9CE98E295A330E29599E29680C385C396E29594C38958E2959CC39CE29494E289A4087C1FE294A44628C3A0320CCEA93333E29595CF8332CF83E29596E29680C2AA323171E295A9E295A4C2B7C391E295963DE288A9C39F5DE28899E281BF31E29494C2A079E29594C2A337C3BC6773E295A35B04E281BF7532C2A2E2959C31E29596752BCE98E2959B3E02E29680E2959FE282A7E282A7E2959E29C3B2E289A1CEB47502E295ABC3A020C3AA56104829C3A6E2959424E29692152B48C2BC5AC3A0C3AEE2959FE296924647C39678CF800D2AE294BCCE93E2959B4210E281BFCF867D5353E2959701E289887CC3AB2CC2A2E29494E29599E2968CE2968CC2B2C3A5100F65E2889AE2889AE29680E29680E295976D1BC2ACC3BAC3A2E295A9E29594C3B438E288993CE29591E295A44037016B3DE28988576BE294A46EE2949C13E2959CC3A7C3B6C3BF2B57C386CEB5CEB4434BE29594C2B06BC2BB31353CE281BFE2968C23C384E289A4CF84C692C2A5C2A53D0A78E295A625E296932C02E295A7CF83721FC38425C3B45FE2959170E2889AC3B7E295AC444F0FC391C3BA47C2B10A05741426E29591096C29CEB10B3FC3A279C3B1643C4E76E2949C06CEA9C39112C3BA7BE28988564E57C2BDC692E29498393DC2B218E295A820E295A0C3B47746CEB1E288995CCEB5CEB4CE98E29690E296907BE2968073E2959F1D544747E296924FC692E282A7031E04CF8406E2959B04CEA6C3A0C3A400C3AE64C386E295A0C3A50DC3AECEB5E2968CE295A6E29480C2B0C2B033E289884C4ECEB5002CE294ACE281BF38CF8050CF8402E29680E2959C65E295A6E2959CCEB4E295A26F67C3B7E2949401E29684CE98CE981074102CE29693E295916E07E2959D14E289A105E288A92F241EE295952EE28CA1E2969231565F7105E2959474C2B7C3A81BC2BDE29592E28CA12F58E295937739475EC2A3E295A4034DE289A1C2BDC2BBE295A3C3A5E294ACE295A77E3617CF844DE295A6E295962DC2ABE295A1C2AA51C2A1CE93E29593CEB4E29595C3AC065E5B4E0829314C13E2949C34C3ABE294BCCF80E2948013C3ABE295A345E28CA0E295A5E2959564324931C6926722C6927F7EE2959FE29480E294800EC3A1E295A0193CE2969224C3BCCF8473E295A3C3A7E29591E295966C7960E28CA135E295AB30E2889AE29599C692C3A9CEB4C3B3C2A2566F031F781EE295A142C3BC5AC3ADC387E295931A1FC2BC4A10C2A328C2B7E296A071172A0071215259292FE295AC48E295A34947C3A43AE295A5693AE295A569C3A4C3B66724E295A4705DC3A8E288993C79E295ABC2B2C2B51F4E4E3E4038E296802212C3AF083CC3B9E295A6E2968CE295A1C3B3E29596E28988E29498E2959BE296886EC2A267E28899C3A0C2B1CEB55816C391E29599C2BA09C3A9C38731E29680E296807DE2948075E289883C5C2CE2959B42C3BF7C36CEB1E294A42DC2BFC387C2B0E2959FE29597E295916EE2959C2816E29597396718E288A91352C3864EC2BA49C2AA52C2A13917C38452E295A1C3A85DC2A1E289A53FC3ACE2959E473EC3B4E295A77FC3B43027C2B525C3B73C022FCEA37259C3B24C0EC2BBE29490E28988E29690E295ACE2949843C3A7082AC3B225E294B4CEB42040E2889A3EC2BA4FC2A53AC2B1E289A1E28CA0E28CA0675FC2A1E295ABC38503C391E2959A4AE295A1C3AA447B7312C38701C3BF40E2959FC2A5CE98E28CA0CF83E29596C2BA52C692CEB5526A5B3CC3A6C3A133C3B409E2959CE295A41C6D64C2AA0A0502E295A7C2BDE296A05D3E7FE2949CE282A77AC2B26864C2A3E29593C3BFC3B9E29480E29490C2A54E3FE295A2C3B7C3A51BC2ABE289A41AC3AC56E294AC2E051EC2A111403AC2A5CEB5C3A8E28899E296A0E295A41FC3B64AC2A009C3AE03C3A0E2959A4A3661E289A5E295A15F4DE295A7E29598C38438E295ACE29480E295962DCEB4E294BC4DC2B17821C3BAE28CA17BE2968C46E2949C4CE2959ECF80C3AD35177822C2AA1456E2959C6E5E6EC39CCEB45EE294A4C2BCE288A9E29692C3A1E2959DE295A2083CE2968CE2968CE2968CC692CEA9CEA97AE2959DE28988C3BB5BC2BF1C3E3C077C09E289A134C2A00AE294B4C3A0E28C90E295980DE295ABE2948062CF80E2968029165F5F38E28899124347E282A771C387C2B7E289886BE295A1C2B23D4AE2959CE2969256E28C90E28988E29599E295A46166723902E295A642442E13C387C3AD14E282A7E288A9130BC3A9E295A61CC2A1E2949077E29480712622C3A2E295A027E289A13BCE98E28CA0C3B9E2889A6EE2959C75536D6C0CE29680E29693E294AC52E29498C3BBE29691E289A4E29494474844442EC3B94CE296A0CEA9E295A1C2AA59E281BFE2898862713FE295A6E288A9C3B301CEB1E2959D6EE29688C2BAC2B70CCF80E28CA11EE295ABC2B25D63E295922A3A52E28C9070C2B2E295A26128C3A065E29688C2BC35C3AE552FC3A05EC2BF370DC39120C3AE7D23C3A6C2B0E295ABE296906DE29688E29691C3A5C3A5C2B5CEA97C04E2959B512E23C3B26AE295A3E2959509E2959B59C3B2C3A410742712E29490766D3C5E3A4F121AE289A1C3B7E29498C3B7CEA6E295901D1DC3BCC2A3C2A5E2959CE28C906BCF804674E28C9004E282A7E295ABE289A5C3A9C38612E2959FE289A448E29494C39143C2ABE2889AE28CA0E29595CF8415222F22017CE295AAE2969266E289A4662AE2949CE2949C68E29680C692173EC3BCCF8451E282A7C3BF606274742AE289A1C2B245CEB1C2A2E289880921E2959572CF83E295A9C3BCE294B40B2FE29684097434CF845E26C3ABE2959EE295ACE29594E295942F34E294A4E296A0C2BBE29692C2B2E2889AE295946CE29684382FC3AE04C389344DC3A410E29684E2959C62E294BC07C38754E29599C2B0C386E289A1C3A53B3A2FE295970C67666651E29684E295AB0A05C3A920CEB14BC3B4C3B4C692C2B0E295A4CE98E29599C692E295ABE2959B3F1F7C745F33E29692C2BBCEA9CEA91A78E28CA0CF8423511F76E2968C4F344A25C2ACCF8332E2948CE295A2712626706766E289A1C3A845C3AE46031CC3A75EE2949CE29595195801E294805A0462C3ABE29480C3ACE294AC34E2949CC39CE29490401EE295AACF833245C2A10FCEB5E29692CF8613C6921E1979E281BFE29494CEA3CEA3C2BAE294A4E29680E295934FE2948C24C3A90074C3BAE294B4CF834130E289A1CF834CC2B57C49047F313DE2959CC2BBC3ADE28CA1E2959BCE98CF80E2959F49E28988E28988C3A2CF8010E295986AC2B0CF8332C3B358E29480C2BD54E2959A08E2969229E289A5C3870920C692E29590CF836E49E28CA1C3B76237754E531E0401E282A76DCF807B1E471CCF8465E294AC763E73C2A0E289A1E289A12307C2BAC2BA7735051D5A13E29598CEB4342626E29691E296907AC3AFE2948CE29594C3B47833336CE289A1E2959DC3BCC2BB7476E282A72F09C2BB16044FE29593666650E2968CE2968CC2BF781C294478494952297CE295A7CF80E2959B6CC3B77A200E0819687D75E29591C2BB0FC2BA585C24E294A41A513578C2AA5AC2B22161C3B4C2AC03E29593E295ACC39FC39FE294B4C3A2E28899E281BF2EC2BA50C3A17AE28CA028E29593E295A8106E3EC385C3B73CC3A4100821C389E2949415E2959B3FE289A170367B3E24E28CA031E295AB7D062128170AE29480E29597E29591E294ACE29590C389C3B6082130C3B242C2B73E6B63E296920D110143064274E29594580CE294905E6FC3BC6F2A4BC2BBE295A4E294940AC3A91343C2ABC2A2276C500E61E28899C2ACCF861C1E1E3C3035E295A1C2BD1D74CEB4C3A916C3ABC3AC4130E289A1E289885D5DE295A62631C389E295A74FE2889A5A1FE29693C2BD55E295A03602524A0C29C3A6C38729442622C3A1C3B1C387E295ACE29480C2AC5568E295ABC2A5677DE294A446E2889A3ECEB51CE289A12678C39C243E5AE28C900CE2959B65C39CE29597C3AA2CE295980EE2959BE2968C13E29490C2BFE28CA1E29494232B572EC3B94400141BE295A11AE296924C26041FC3A0C389C386121104C3BF42C3B108C391C3ABC3B652C3AA4DCF86C391E294825DE295ABE2889AE282A747E295A4E28988C3851376E2959BC3A04A30006A0FC3B6E295A6C3A2E2959FC3A0E295AA052C022FC3A4404400C2ABC3A4C3BC4756C2A15A1609170E082951E29594CEA33C0FC2BF482F65C3B6E29591C3A4E29691C3AE0A49E29597C3A15B5816C3B2420A111036C2AAC391244200E29598CEB5C2BBE29592064F68E2959CCEB44CCEB1C391102821E295AA2CCF83E29494C3BAC2BD57C692C3B4C3A4004D34C3A76A032FC3BAE28988E28CA0C2A33854E295A5E29599C2B7C387502AE281BFC3A1E29590C2B71A2008E2959A4A79C2B1E29498C2BCE295922471C6926D0F0EE295A1C3B4685B50344900C2A2C3B21AC2B0C3A7356BE295AC4A420971154100E282A737075E4A44E28CA0E29591144605441314CF86C39619C3A461E294A4C2BC1F781EC3B2E2949CC3A7C2B1C2BD5554E295AA34C3AEE2948259C2BC49CE93C3856AE295A1E294B4CF8041E29691C2BD09E29595053E5A5C4AC3AB210457E2959F6203C385CF83726726214436E296926205E2948CE295A243E289A14A21C391042140291CC2A1C2BDC3A451C39FE295A6004AC3BCCF842113C3ABE295A8E289A51178E295965C46781E29292FE2948C68C39C2B39E2959FE296A0E295A349CE93E289882D6B702808E294ACC2A3682322E29688E2959A184270C2A1690E7CE295A1C2BA6711C3ABC2BA2EE2959520C2BDCEB1E295A9C3844C066D5948C39150C3A6CF8303400BC3BC0D55C3B3C2B2C3A574E294A4E296905F191921E29593E29498C3ABC3B73C4AC3A70EC39F35256DC3BA01E294946FC2AAE29599E2949042E295AAE28899C3BB53416AE2949057E28C90E294A43CE2969210E2959D6CE289A4E2948075C3ABE29480E294943FC3B7C3B7E295AC2311E294945D1A58C396E295A6C3AD2D6B5EC2B068C2A171C39164E2948071C384451E08CEA3E2959C5353C2BBE29598262648C2AB5E4DCF83E295AA31E281BF5A6DE295ACC3B4E282A707E2959B4FC69261E2968444E295AAE2959B63CF8420E295A822C2B1C3AD526970E2959AE2898877C3ABC2BFE29480E295A2E29494E29596E2959C36C3B1646B47E2959FE29494E295ABE29593C2AB6D27C2B1C3AD15E2968CE2968C18C3BBC3A06C3442CEB42B0542C3A4655029E282A728167F42E294A4CEB4C3B4C38757C2BBE295ABE2898838C3A0027E64C2B1107D58E2959965E2959CE295AC4AE2949CE29595C39FC3B774C2B732C3B3C3B7E2959C5C12E28988140AC3A243E282A7E295AB2231C2BB324561614AE29594E28CA1E28C90E29598E29494CF80CEB4E29593CF86E281BF424FE295A72F49E2959571CF86E2959EC3ACE29595C3BAC3BA2821505108E288995AC3BAC3B262E29593E289880F12C3B7C3B106CEB1494037E294A47EE28C907CCE93041D6BE295ABC3A5E295AAE29688C38928E2968806C2A1E295A33BC2A57EC389E295A3C3A45EE295AC08C387E2948C07E289A4E28899E294B463E282A7E29596C2BD65C2B205C3AD24C391E2948054C3A81B33C396C3BCE28CA1C2B1C2B0E29596C386E294982C6B3A3B21C692276618C2BF28C3BC5DE29680C2BA260423C2ABE29597C3B950E295A534002D010EE29597CEB513C391C3A611E29591366DC39C0F4108C3A4E29593E29480C2AC555648E295A3CF83C3AF6BE295933C00C3B1390FC3A009E295983E303535C2B0C3BBCEB4CEB55A085C362BC3AE52C3BF4A715526E2948276C2B2E2959257E295993872C3A45810C3A4E29593570A1FE289A1E295A1E2959EC3A6C3867F29C3B2E2959BE2949CC2A33A08C3BC3C5828E295A014E295A6CF836F79E2959B4FE2959DE295973B2C576D24C3B66DC3BA1CC3A7E296A058E2889ECF80E2898867E29482E29688C38724E295A60BC39116C3ABE29680C39CC3BF183CCE98E2889A5F6F26757B1835CF80E29684340CE295A52323303545E29684345B09E2889E781EC3912060E29480E289A4761F77C2A3694261CE98E295A20800E296A0E29691CF84C2B2E29590E29598C3BC03C2BCE295A3E296A0C2B710E28988024FC3BFE295922AE295A5E289A4E29595E28C90C3BACF80C692C2A0C2BCC2BD6B1BE295A6E295A7C3A716C3ABE296884FC2A57ACEB1C3A4CF843DE295ABE2889E094AE295ACC3B909C3A55218E295922ACE98781CC39114C3A552C2B041C387CF84E2889AC3B6C391CEA3E28C9062C2B11BC3A4E2959F37C2A133E295995628E281BF653EC2A056E296925C7EE295A9C2ABE2959248C3B7C3B72EC3A5C3A135C3AB4AC3A0C384743AE2959C35C3967CCEA92B61234A727EC39F64C2B2E2959EE296886FE288A91872C2A3CF84E29688C2BD53E295975C68C3A5C3AC11551EE2968875C396E28CA03C4E79E29690CEB53DE295A1E2948C09C3A148E29688E29498507B73E295A5E2968C4ACF86CF86C2A156C2A0C3A177CEB4E2959378CF83E29590371142407B2D07323D3DC3BF3D3D71E294825CE296907E7B3AC2B2E29690E295A6CF80C2B1C2B2C2BBE29593CEB4E294822C7F13E288A9762BE28CA166E29596617C70753C1E6FC3BCC384E289A5E294B4C3AA5E0B29E28C90E294983645E2968866E295A0E28988C2A1E295A74D4D7DC2ACCEB1E2889AC2BAC3BC29E294AC045E44C3871F371AE28CA15FC384E294BC4E27CEA9E28CA13BE29482C2B2C2B2E295AA63632D02E29590E295A6C2A2C2A525E2968CE2949849C2B7C3864BE289A14AC391C3AF7BC3A0C2B0CF80E29688E295A5CE98E295A6E29680C3B94EE2959F5EC2AC56C3854620C3B924E289A46F175C70E295ABE2968CC2A5C2A5E29597C2B762E2969247C2A5582CE29690E2959C752B46E28C90C3A40AC3A939E289A151E2959269380E05E295A662E2959AE295A279E295A3521978E295A35AC2B231304118C2A02D61E295A3540C27E282A7E2959ACF831EE295A368C2B2C2B71DE296A0E289A130C3B7E295AAE295AA62C3AB2C04C2B1C2AB2EE29693E295AB5D47E2959271E2959AC6923841C3BA54022170E295A1E29690CF80E2949C01E294AC533A2464C3B1C3B6C2A2146CE2959940E29693E29482C3B4E29684C391C3B9E289A50BE2959CE2959CC2B0274FE294ACC2B03829E295996CC3BC370C03E2959F7529552A1CE295A12C7E52C2BDE2959CE289A1E29594C2B1C2B12F02C3BAC3A4C2BA7FE289A4C38416C3B92220C3BCE2959813E295A3E2968437E29591E29482E29498E29597E29480C2B038E294ACE295A21711686EE289A452CEB4E29593C3A6E29498E2959D19474A6ACF8332C3B2E29594497CE295A7C3BA3A350540E295A2C2BB0F1D0474C3B7E28CA0E29691E29693C2BAC3A7C3B1E288A9CF80C3AEC3AEC3A1C2BAC2AA307D1F33160BE294B41B46CEB4E281BFE2959FC2ACE29592385AC2A172E2959AE295A2777F6C6CE2889E7311E289A131E295AC75E29595E296883614E29691CE93C2B15CCEB5C3AB0EE2959FE295A33356C2A1C3866AE288A9C2AA6D04C39CCF8330C3BB4AC3A6CEA6CE98E294B45CE295A3C3865836C3AFC3AEE295AC71E289A13C74C2A146502EC3BA2B1544E2959CC384E295A5E29591E29592C3B1C39CC3BB1742E295A8705D6CE2959FC39FC3BF6571E29595E295A4E295AAC2B2E29692E29692E2969207C3BCE2959408E281BFE289A5C384E295AB17C389E2959A7C35C3B97B281B04E28988C2B0CF8332C2A5C387E295A4563DE2948C09E294A4CEB4C2A55655314D64CEA3E295A5666C37C2BD4C7BE294BC09C3A900E296887529371AC3AEE295952E6F3AE295AC0BC6921C1F7FC3AA3061E2959F39E295A603C384E2948249640DE295952F5AE295930FC2AB4C2647E29597E29599CE981B6BE2959B6FC2B7E282A7476CC3BCE296905FC3BFCEA6C2A1E2959C31E289A4E29596C39672C3BC17C2B220C3A1C2B538C3B6CEB475C2AA1DC3A761E295ABE295A17657C2BD03C692C692E282A77E32E296937C3369E295A7C2B0C2A3E2889E5C1A5F03CEB52BE28CA1C2B76153E295A9E288A95FC3894A5D1433E29590E2898858E282A7C3A7E288A9E2889A082130E295AC7022312FE29684221147E295951D0C75C3ACCF80506D3428E295912E33E2949451E2959F79CF866BC3A0E294AC5F3D572EE288A9C3AFC3874FE29693C3AEC3A77CE295A6CF86C3B1C386E29691E289A476E296A06957E295ABC2BB5F15C385C2A049076CC2B1CEB475C3B1CEB4C38610C3A9E2959552E29480C3B124E295A2C3A1E2949C36E2959CC3BAC3A0E29494E295ABC39C406B5CE2949416C3A9C39C52E295A006E294B4E294B41F59E295933F3D592CE2959B4658E295A36608E29597CF86E29597E289A4C3BF75E294B4E2959C0661E28988E29590E29690E282A74E5F716B2AE28CA1C39F554AE2968C14E289A4C2B2C2A3C3B73C4410C3A1E294A46E69C2A556C3AA0142293C29C2B1C3B1C3B126E29480E29598E29595CF84CF86E2889A76E295A3E281BFE28CA0C2BDE295A1E2948C3061C3BF14C3BAC2BDE295ACE29597C2B2C3A17BC3ABE288A9E29480C38704C3AD32E295906C4FC3912EE2959C36C3A6E295AAC39C516A6D56E28C904BC3B6102B6843CEB16A6D15C3A9CEB178E29594E28988E2959FE28988E29592CEB4C2A0C2B21FC3BB75C3A8E295A8E294AC55E294AC04C2A132E2898854CF84C2A0C2B5C2BA0667C2B0C2AB22E296846AE2959E2342C3ABCEA6C2A058E28CA05973E296A0C2B5C3B419C3B95006E29688E295A4E2959260CEB561CEB1C2A0E295A7C3853DE295AC32C385243AC2BD613EC2B0C2B568C386E289A1C3963B677AE2959F3FE29596E288995F666CC2B2073C2536C3B10000000049454E44C2AB4260C3A9, 16, 16),
	(6, 'Notification', 'image/png', _binary 0xC3AB504E470D0A1A0A0000000D49484452000000300000003008060000005702E28899C3A7000006E295924944415478C2A3CF86C3965B6F1BE2959F15E2959F7F33E29482E29597E2959DC39614255217E295A6C3B6253BC3BB1D5F52E294B4E296911DE2959F411E0AC3BA017A79CEA6533F4C3F415EC2B719E289A5E29593C2BAE2959B14050A3FE29598401B20E2969113E295970E5AE294B4E295AB28E295A225C3A8E296926C4AC3B36851C3B1E29480E2968CC2A5C3963C2C4951E2969368396D2AE295A6C3A0E296A000012E7666E295ACE28899E288A9E28899C692336776C39F000738E294943B0DE29692E295A6E28CA17EC3A06DC2A0E29498CE93E2969110E288A9C3A5C2A0E2959376E281BFE2968042200E3874E29692E29688C2BA1040086CE294A42F00CE934AE28C904F0BC3A0E294AC49C391C3B6E295A2E29593CEB5E295A6500821C2BCE295935AC3B24AC3916FE295A1E295937F03361C2104E295935AC2BA5028C2A3E281BFC2B7C2BDC2A2C69225C38629692D48E295A3E294903818631102E295931B7573E28899C3BA2BE29490C692C2A2C2A2E2889AE295971002C2BA75E296801AC3B6C3BB5E4A653219E28899563DE2968C05E29590106150C39CC3BBE29598E29688043046C3AFCE98C2BA557B3C7439C2A375C3AB7B0EE295935AC2BCC3A0E29596C3B2E296886DE29688420836E281BFC389C3A06AE29494C3B4E28899C2AC3546773CCEA910E295A8063602E2949CE2968462C3B4E295A562C3A2C2B1C39F2463E295A304526E66E28CA15EC2B168E29688C3B42222515C5A67CEB54503C3AC62233068E2948239E295A24340E2959448E28988C2AB23E2949868064CE295A7C2A132575ECF8474C39F10E28899C3AE172DE2959D07E295A4CEA6E295A2E29692E294A4CEA9E289A4C3A1E294A4E2959EE295A6E28CA1C387C3A42BC3ABE2959F5CC3B114C2BF2EC3A63BE2968CC3B4CF80C2AB22C2B5481C1CC3863178590FC2B0CE93E2969032C3A05CC2A373CF80195231E28CA13F23E296932917C2BF373577CF8456292D6FC389C3A82972C3A73C24C3A11C49E29684555BC2B56D21107305314F10221052C389C3A8E294BCE28C903735E289A44B1BE295A0E2959B6870C3B768C39C336369C3B114E294A4E28988C386C2A0C3BB48E289883AE2959E58CEB5E295A7E295ABE2959557C2BCC3ADC3B6CEA3482E4E2A263116C2BCE2969238E282A7E2949477E295961AE2889E10C38952E295A2E294AC2340C3ABC384677D49C3A774CE9310CF836AC3B4E2968833551EC3B6E29593C2B0E289A1643FCF80C3A20900C3AEC3ACE294A4C2B7C692C3A17BCEB5E29684CE933AE29596E2959B5D616D3D647C28E295945036C3A514C3A1C3AC450940C387C386022905526E6A684B041C01C384142045C2BAC2A1E29691447C0AE2889904C3A27D1EC385171AE281BFCF83E295937326C3A5C3867C727AC387E296A043CEB5C38526E295A51E2B05C2BCC2BC057CE28899C3A1E294AC6CE295A3E294B4582EE294B4E294BCE295942C3157C3ADE295A1E294B4E295A5E289A5C3A72852C3841438E296886C6C21C3A1C3B1E29494C3A602E2968845C3A10D6B2D71573135C3A6C3ADC389C3AFE289A4E288A9E29498553EE294905ECEA3E295A5C3AB2C1FE2959CE29680C385CF84E2959AC384C3AD5EE296936AE29680C3B402E281BFE295A8E289A1E29592E2949C156E7F5725C2A272E295A372E29693C6925CE2948C233416636DC3B1C3A46D73C2A5E295A2427A11C389C2A510E2959C4A401045435B4B3ECF8071E28CA16779E282A7E2959B6870E289A4E295A40AE296803CE28C90E289A5C3AFE28C9021E295ACC3ACC2BA232DE2959613E296936DE2959DCF8340E29688C3B7E2968C62C3ACCEB4C2A02AE295990C2CC3B926E294821C1B4E460D4E6BE2959675C3A478C391216B7707E296883BC3A45722C3A1C3B1E29494E2889E40C3A11BC2AA45687234E294BCE29692C39F24E2959667C2ACE281BFC2B1C3AF22E288A9C3AC24E28899E29592E294BCE2949C1C19C3AA47CF805A192AC3A04008C2B0E2959BE29693E294B4E295A17F2EE289A1C2B079C3A2E289A4E2959FE2889AE295A334C396E294BC51C3A9505B4CE295A67E2F58E29597CE98E29680C384042474C386783702E2968C0BC2B7C3ADC3AD1904147231C39C21E281BFC39FE295A7C385E28899C2B0C2B2017E7361C3AA64C2BDE2889E36C39CC39CE29490E296902973CF8061C3A01323E29594686C10E294A4C3B1223166E289886AE29593E295A227C391C3A1E29597E295AB796309E294B4C2AAC3AE04CEB1E29591C386E28899E294BC3A37E288A92FC3A64EE295A3E281BFE289A5E294AC61E295A549C3B9E2889AE294BC1AE295ABE2959B2973E289A451C3A0E296807D3C0AE29494C6926E3CE2949C55C386E296807E38E294ACC396C3BA696AC3ACC3872FE288A92F72CF86C3B733C2ABC2A3E295943336C3BF22084C67CF86C2A5C2B7E2889937C386C389E289A4C39C24C38416E296922825E29692E2959332C2B264C3A0C39667C2BDC2A31BE288A9CF80E2889E44166B41C3A7C3A5E28C90C3AB0CC2BA4653E281BFCF80CEB532C6925F2F0270E28CA1C3A23C3F3FC3B923CEB529367C4D3AC39FE289A5CEB4C3AFC3BAE29684C2A2C2A172CEB4E295A4122B35C6920F26E296930821E295A8E2948CE28CA0E29691E2959CCE985F4F02E2959C73206ACEA93CE295AB6175E2968CCF84E295ACE295A032CEB47EE2959AE29592E28C901146E2969309E281BFE295A8C387E295A1384ACE93C3A706E295ABC3ABE282A7C3B7E29598E296920C0013C3A2491AE2959BE2959E0F0D4ECEB401C387CEB1E281BF7B031CE295AC25E2959533E29482E29480C3ACE2889A3E17267364121E7EC2BF5BC386E2948CE28CA061E295AB1C4046E29594E295932DC3AD28C2A316C3BCE2948051C3A9E295A552C2A57BE294822B0CC3B1637C727608E295A7750842C3ACC3B620C389E295A4E282A7C3BCE2949462E28C90E2889AC39C422EE2948CE2889ECEA9E2959B460A70C3B26CE29594241A1368E2949C487FC3864FE295A7C38532C2B2C3B1E294ACE295AB0FE295A9C2A3C2A5CEA6C2BAC3894F116AE29688E296932D36C2BDC3BF144821C3A1572FC3B164E28CA033324A2A0BE2959552C3B3E295A1CF83C39FE281BF0AE295A72B0DE295AC4C64191F4AC3BAC3ACE294BC18C3A2C3BA76E295A93EC3BC22E2948C4501E296841E6300C3AE3178C2ABCE93E289A5CE9821C2B5E295A935E2959BE2889AE2959BE295A9E2948CE29591E295A7E295942359C3B6C386C3A4E2959E223B11604B23E29596C3A0E29494C3B72AC3A410E295954AE29693E2948CE289A179345FE294B45AE295957C7AC3BF4CE295A523E295A826C2ACE295AB3B3AC3B7CF8061C3AB4ACEB5C2B1C3A60CE288994CC2A3C3A7E294BC0AE295994F17393536E295A8E29692E2959FC2A254C3AD68002825505252C2ABE2959829E2959B5825C692493071E295950F29C3BA24E29688E282A7483F15C3AE31E28CA0C3913C2EC2A51A6676C39F2533E294BC65C3840E67181A48C3ADC3ACC3AB7C7B7D12434CC3BC0E60E296A079C3B2E29592E29591E295A764C3ADC6927C36E295A4E295A4C3B1E294823DC3A53F29C3B3E29684505270CEA9683F4BE2959238C391E289A52A4D3FCEB1E2959A60C3A5C3BF7AC3ACC3A4005C47E29692E296900C292E2CC3BA1CC3A733E2959FE289A5E294803DC3A7E295A8C3BFE29593E29480E2959C382E47C391E2949C58E295A6507FC3864CE295A9C3BA547E497161C396C2B1E295A41CC2ABE29599CF803CC3A1C3B6CE9365C2A10EE28CA1C3895C5FC386E281BF401A41C3B14D47CEB5E28CA139E29490E2968C095B1231C3A7136339C3BB2A35162B35304DC3B6E2948C24E295A4211004017EE29482E29594E295A4E2969241E2959DC2AB53C3857CC3AF6FCEB444C3AFC3AA000607E295A5C2B0C3BCC2AA385F2208C3A9E295ACC3BF2E09490673593C5761E295A0E295ACE29597C39FE29688C3A4E295A116E295A7550CC2B5E29693744BE295A34B42E294ACE295916E745EC3B47B2EC396E2968CE295A47EC3A1C2ABCEB40AC39144C2BA5D6A13105A6B55C2A156E295A1E29593E2948C5A6BE289886504C3A410E295986A35C3BAE295A156E294A412CF83C2A57F37C2B77FE289A4763AE29591E29482E295A764E295990BE2959CE2959B0FE2889E74E2959C5FE29692E296805572C387031CCEB10007E295AA23E281BF00C3A624E295AB69E295943854E296920000000049454E44C2AB4260C3A9, 16, 16),
	(7, 'Honorer', 'image/png', _binary 0xC3AB504E470D0A1A0A0000000D4948445200000040000000400806000000C2AC6971E2969000001E1B7A5458745261772070726F66696C6520747970652065786966000078E2948CC2A1C2A26972CEA3E29595C386C3A4C2A0CF801473046207C384C3A2E295926C6E30E2959FC692E295A701C2AAC3B1C2ACCEA96ECEB43736C3916EC391C38664C386402C1ECEB501C3B159C2A0E289A4E29680E29688E281BF17C2A07209E295ACC3A4C3BF4BC2AC293DE281BF0B3554E295ABC2B0C3BA3CE28988E296807DE295A14F38E29490E295A7E29490E289A1E282A7CE93C2B22FE2959FE29590E295AB09E2959F21E295A7C2BDE294906FE295997AC2BB6F1CC385E296801FE2959AE288A9076CC2A0E28CA1E29595E29594CF80E2959C4F796FE28CA0E282A7C2B0E29684E295A8CEB4E29594C3843FC2B53BE2959AE2898846E29690E2968CCF80C3B77D6FC2ACE295977FE294A4E28CA0633AE288A9C2A0C2B2C2B2E289A179E289A5E289A4CF84E2889AC38931E2959EC3AEE29684E295A73BCF80C3BBE29596E296A0E295A3E29490E288A9C3B4E2959DE296A0E29596E2959BC2B17A7F07C2BAE29490E28CA0E29596E289A4E282A7E29680E29690C2BA3FCF8667E2959B4CE289881706E281BFC2B7CEB437E2889A3DCF803DCEB5E29490E29590716FE28CA0C39656C2B7E295904EE288A9711BC2A0E2948C7EE2959F4A3F4764E2968CE295ABC3B4E2968CE295A711C3B26ACF84E289A4E289A4E296800FE2889ACF863DE295A6E29690CEB4E295ACC2ABC3A06430577A27E28CA1C396E295A9E28899C3AF0B3BC2B5E28CA0CF8463C3ABC692E295A0C2A0C3A6E29490E289A4E28899E28C90E281BFC3B6C2BA3D03C2BB4DC2AAE2948CE29590E295997953C2A1E2949CE29593E29688063B6DE29482E29688C2ABE289A43AE2889E60C3AAE294B42DC3B979756ECEB1031D2B3EE29597CEA9E2959E7146E295A8C385E2968C2E1B5FC2B2E28CA0057F0C3CCF8439E2889EE2959BE2959E62E295A773C2BDE282A7E2959FE2949C0A4FE282A7C3BB2BC2A5CF8366C3BB4FE281BFE289A5637E3FE289A17FC2B2E28899CF83467B2BE295A0C2A17DE295A9C3B9C2A118C3B953E2959A320C794EE29490E295A30AC3A7E295AAC2B2E2948C341EE2889A5A735FE282A7E29680C2A0E29594E296921E0FE2959E63C2B5E294AC04E29688E29599E288A92D7AE294A4E29680E29692CF83C385C692C2B2130DC3B9C3A537C3916DE282A7E288A90D3011E295A7C3840CC3A5C3AA0EC3B749E2959347C2A2E2889EC3B4C2A5E295A6E2959362E2959FC3A97F1A2377C3A47DE2959F0336C39CCEA626C3BA74C3BCE29595E2959F39E294BCCE98E294987C26E2968873C2A1C3AFCEB51E065E7044E28CA0E29594675C537DE2949C5921E29480C389E2959AE29596420835137D0C31E2959E14732CE29692E2959EC3BB7C0A29C2AAC3B672124EE295A1E2889E73E2959A31C2BAC2A373E2959435E29596CE934B28E29692C3B1C3864B29E295A1E294A4CEA9C2AC07E2959EC3B3E28C90E28C90C2B55A6AC2A1C2A1C2B1E295A8161AE289886A5CE2968038E295A85DE289883DE28CA0E295AA53E295A7E2959CE28CA0E2948CE29688207C461871C3B1C3A6471975E294A4CE98C2AAC69240C387C39669C2B55966C2A56DE294984528C2A1E29691CE934A2BC2BBE29693CEA96AC2A258E296887EC3A71D77E2948C79C3B95D77E2889AE289A5E2948CCEB4E295925FE2959CC3B7E29597CF84E296A0E294986BC3B7E28CA1C39C3BC384E295A575E28899E296886B1CE295ACE28899730B2B38C3ABE289A5191E73E294B4CE93C2B12C0F10E295A84E3E7BC3A80DE294B4E2959473E289A5E2949853C2A537E2969047E2959F28C3BAC2A333C2A13CC3A507E2949CE296932E6EE2889ACF83E295976FE295A7C2B2C2A1E296800CE29593C2B24FC2B2C2B5E296A0E295A97346C2ABE2889AC2A0E289A1C2A3C3A6CEB47E78CEB54FE29490C2B2C3A0E295AB663B70CEB4C385C3A2C3B6C3A0E295AA14C3A4E28CA0C3B11F17C2BCE295A55C69C2AC4B7FE2959B32C3B1E2949473E2889ACEB561C385E295A1CF84E295AC35E289A5E294A40942E295AC59E2959FE295A973C3BFE29684C3B3637A586916E296A0C3AE166BC3B1346DE29684C2ACE294B4E29494C3B6E2959DE296A0C3B60448E28CA1E2959C5CE289A53BC3ACE2968C23E2959ECE93E289A1C3BA5976E295ACCEA36C324FE29594E2959BE295ACE295A31BE29596E2969171C3A019E2959E6CE29690560FE29691E295ACC3963317CEB5CEB139C3A51143E289A50CC385C3A7C2B5E29590C3B2E295A3E2948CE2959D414CE2968CE295A5E2889E560BE295A774410F7E3AE2959B6BE295A72E390FE29680C3BC77E2959753E29592C2B1E295A8E29691E2959860545C39765A73C3B7E29591E294825F0CC2A1CF8319E289A5C2BFC3A5733862652C4851CEA631C3A0E295A8E29688E2948CE295A1E282A7CF84C3A434C3BFE295A03C0FE295A4C2BAC2ACC3ACE2968C7251732BCE9375C38770E29597E29598C3B46FE295A4E29595383AC2AA61101CCF83402BE295A1C391E29498C2B10FC3BA6F2B705DE296803EC2BA3D6A194CC3B4C2A22CC692E29594C386111DC2A0C2A152E29593C2BF6D7763E295A760E28CA144E295975AE2969333E28CA073C3B1E2968023C692C3A6381BC3B35DE29599C3855276C2A27EC3AC1C172931747E7461E294A4E29594CF84236D122A7DE2959C273C2772CEB46512001869516F22C2AA286B591C3A2BC3BAE295A1E29597E289A1E295A0386CC3AEE295A1C3B1E294BCC3AC1AE296A07209E29597CF86CEB15A29E2959C2C5733193408C2A07E2CE29690CF844E696FE2889E4D30E2959AE2959CE2959FCF863BC2BA35C3BBC6923C11E29599CF866C3ECEB5E2889AE295997BCEA33AC3B721CEB570C3A4CF86E296A0782FCF863BE296A0E295AAC3B7C3B4C39C5FE296846DE295A7C396E2959DE2968C6611120CE2959D7757C3BB4FE295A01FCF80C3B423E29597E295AAE29498C3A2E29596C3B4E29494E2959E41190779CE9318C2A3C2BD0AE295933823E29482E2949CCEA9E29494C2B231C3A733C3AB2CE294ACE2959D24E2969258E294B41A7D25E281BFE295ABC692CF8671E29592E294ACC2B1C3AFE295A50E20283456C6920A4C0FC3A1444F6E2A584FC389C2B0C3964CE295A6C3A8E295AB48E2959DC3A902375EE2959F2278535FE2959CE294AC0336C2B0537978E295A12BCF84E2948CC3ABC3A0CE9313E294A4C2BCE296847824E29691561BC3AB2A12E2948C2A18E295A55378620EE289A53219E2949450C2A021C3A0E294905279C3B2E29692E2959479CE937F2F631F72E289A1242018C3B417E2959B4D7DC69279C2BB281CCEB43CC692704A6565E295A770786E1CE2949469E289A4C3A1E2948CC2A3C2BDE29590353835C3A9494EE29592E295A533E2968C3A1CE29599C3A5E29596E2889EE282A7C2AB770A771DC3A872E296A0C2ABE29498C3B4481FE29680E29590E29593C2BA40E296916262E29596CF8648E295A8C39CE295A1CF80CEB1E29593E28C9075E29691C3AEE2959D1C6B721C0C23E2959F187DCEA9E29593C3BBE29593C387CEB1E295A3C2AA25C3B1E2959459CEA9360CC3AB00C3A2C3BF46E2959E1B0329CE93E288A9C3A7C3B90276E295A3C3A6193C10546F34C3A034152627E295ABE295AB4DC3AAE295A81A10C692C2A1C2BB3D31730FE296905558423020E29498C3B4E2968435E29693CEA6E289883FE29490E2959E0976E288A9E2968CC2B23AC3BCE2959ACF80E295A6E2889A78520464C2A2E295A433CEB5330A4C4AE281BFCEB1C3A87EC2AA46E29498712422C3B44825C2AA1AE294ACE294AC1923C391E29592175EC39C1A165573C3B42249C3963A7ACF83E29482326306C3AFE2948CE295AA111B12E295A2C3AFE295AA49C3A430C3AB4724E294BCCE98024510C3A1E2959D71E29598E29691C2AA5FC384E295A33206E295993DE296A012C387740C58C3B31E421DE28C906FC3B6586EC3AD28E29692E29690E288A9E296A0CEA6C39FC3A4083349C3BCE2959AE2968027403067E2959EC3B6C3A50821CF84E29591506C530FC2B7C2ACE28899CE98C39101020C29525A3BE295A35932E289A15BE295A954CEA6C3B1750D06E29595E295901F3634E29680E2959EC3B16E243D1FC2B0141A5039E2969330C3B7E2959772E2889EC692C3B2C3BA52397E160EC3B4C3ADE295A41DC386E2949459202126464D12E294B4C2BF2D0CE294B4C3B7C38419E29595E289A4625AE2959740CEB4C2BF65073B010EE2889E0CE295AC5F2CC2A1E295945800C3A7CEA625C2B7C2B10C735BE289A5554BC2ACE29590E289A5E289A5E29684552800C38401E295A8734C796A0BE29494E28C906529770651E2969204E294B46F4EE295A855126ACEA9CE93C396E28C90CEA34941464DC2BA6E2BE28988E289A1501DC3ADC2BA5D290DC2AC18C3AFC2BAC2A119CF8314E29592463FE29596C385E295A434C39171650EC3A101C692CE98C3A4C2B12CC2B11811E295A5C2B737E295A31F48C38638C2ACE295A5E295A947406C6D6754C3A7E28899C2A270C2BBE28CA1E295AC76C3BB21E2889E643A7D0AC3B2E296932315C38729C2BDC3ABC2BBC2A22614504AE2889903E29591C2AA71E29599E295AA1C0CE2959E217EE294BC3CCEB4C3A0C385E2959178481EE295A0E2959212C3A56B242AC3A06D394E3C4416104EE2959BC2AB09C2BCC692C3BA6B7BC2B0C385C39F2612037C6CE295AA4959E2959EC2BA184DE295A4C2B56207C3AEC386CE93C2AB0B40E2959EE295943148100917C3A77CE2949CE29595CEA9492840E294AC74722CC3BB4D4C73C3A81276216EE288992166C3B605E296805D7547503F05C391E29597E296902BCEA9E29591E295A359C3BFE2959A06C3B2E295A0C2AAE296A010E295AB32E2949072E295AC6F07C2BC0DC3A8336172C2ACC39C480A71CF83600BC38731C38413E2969127C3AD56107359E296841BC3B7E294A40DC2BF5AC3AAC3AA464C46CEA618504E1C6FC2ACC2B2E295ACCE9352E2968472E29688742606E28CA1C3AF4000E295A121C2BC67E294B4E29590E295951E724A10615F02E289A5644BC2BF0E62C2A2C2AA5BC2AC4878320066E2968CE295AC4D492640C2BCE288A9E295A7E28CA0C3AB64E29691E294826121C3BFCE93C2BB16CEA9E29592E29598C2A020E2949C7F247813C2BAC3A43DCF8353C2B1013853E29593C2AAC3BBC3B70611E2959002E295967EE2949CE295922A5C670E09E289A568550E7DE289880133C3B23464C3A60AE28899E28CA1CE935754E294943C2D0065C3A82AE2959929E29591605D7A7EE29598E29684C2B7C3BAC2B5C2ABE296806ACEB526C3B3325C094A4FE2959BC3A7C389C3BB72C2A143E2959AC39F3CC2BF6B327E5B46E28988E29593470CE29680E2959BE295A562E28CA1E296A0C3BC01E295A15AE2959E5EC2BA5CE288A90304C389C3AA59E2959CC389C3A126E29597C2BF663231C2B164E2959412CEA9070902C3AC77615608C3A5C2BB50245400156D51E29597C3AB38E289A5E294BCC3A9745328C3AEE2889A333428C384E29593E294B4CF86E295A9CF84E295A5C387E28CA171C692CEA326CEA32BC3B40A13C2B1CE98E295A2E2889A23CF80CEB4C3BFE29595C3B6E295A42AE295ABE29597E28C90045B121E3DCF864C4252C3B7C3B1E296A0E29680E2959CE2948C31CF831E5558E2889E384EE295AA3225C3BF7FC3A7C2BBE29494681F7C4EE295A104E296A009E288A9E295ACE295927D33E2959565050532E2959710C2A2680C7016CF8323CEB1C2AA5A1E2FE29692C3BCE28899E295960D1C0E5BE28C907BC2A304E2959B0861CEB1E29595C3A9E295AB764312284EC3A2C3A8E29590E295984454654DC2AA07E29590282D73C2BA0CC2BB3DC3AAC3A6E295A0582820E289A516C3A4E28CA1C38606C3B9C389C3A80462350C39C3BF3FC2B54019C3A6E2969253656A7A442CE296917E50031850CEA37624C3A432CE93C3AE60E295A6570C212CC3BF3478E294AC2FC3A8E2969016E2959F15E28899C2BDC3A8C2BD7E237B24E29498544E592803C3A7E295A4E2959C6164E2959011C3BA247B0CC2A5193A282AE2889EE295995DCF80E2898801C2A5C3ABC2BB23C38740E289A5C3B7C3BF2862C39CC3B41AE295A9C3AE015FC3B3C3B7CF805CE295980C74E29680530B3BC39131500D54C3B679CEA3CEA346C3B72B08E28C9046C3A2C2BCE281BF51C3AFE2959EC3AC4050E294AC1C20C2B751C3ABC387E296884064E2959444221CCE9369707A62132442003EC3A45DC3ACC3B35DE29691E29693056B4CCF84500E06E295A7E29480E295ACC2BC50C3B2C2B2C3BBCE9309E295A6451DE2949C61E2889AC2A2C3A72BE28899CF80CEA3743CC3A44B784AC3ADC3A9E28CA07604261C0C751418E2949CC3B1E295A831C39C01C3A2C2BB6546C396C3BB5AE2949C671126CEA60478C3B9E295A04EE294B43E56E28C9058455CC3862808E29693C2BDE29595E2968C68C3A5C3A9E296A01647CEB111C3A26376C3BFC3A10814E29598687BE2959D12E29680E289A556E281BFE289A46DE28CA03F5EE29590CF84C385C2B7E2959801C3BAC3AF64E295A0E295A2C3A101694974E2949C4354C2A2E295ABC2A178C3A8C3914D1DE29690C386C3A5CEB108E282A71FE295A7E2889AE295ACE29684E29596E2959352CEB44B6C17C39602E29482E29688E29596E289A1311DCE93C2BB0BC3891864C3B4E294804326C3BCE29591E295A01CE2959FCE981A7FE295ACC3AD457033E281BFC2BD04E29684C2BCE289A5E295A6306EC3AD14E294ACC2A528C2BC47E294B4110F1811523A110E043A37444CE29596E295982A34E296806643E29691E295A755C2AAC3AFC3ADE28C90C385E295A54EC386433C400E213743232C18C389C2BCC3BF145CE289A4015E485CC3BFE295AAE294B4E289881BC2A0E295A650C692210F59C2B022C3A96C4F37016D595203E29591C2AA53E296A011715B1ACEB1C3871060C2BCE289A5C3A55744CEB12378E295AB1A05C3AC3852674209E289A5756CE295A7C2B0C3B220CE98C3B904E28899E2959D0238246A553FC3BCE295943A117155C3A62A157CC3B302C2A328E295A5C3AB5363C2BA5253E29591322A0F564045C39CC385E29684E295A5C3A52AC3AEC3B27A4B375CE29599E2959EC3A5E2968CC3A4E28CA11DC39115E2959408CEB1437809C2BC375201C391E294A4C3AAC3B724C2A157054C11E295A8E295A531C3AAE294A4CEA6C2AA02C3BA48C3A80ACEB5C3B206C3B4224EC2A3E294ACE28899206D0232CEA9E294A474E295A9E295AAC2A0C3A8C3A1C39CE2949062C2BF682A697D30E28C90C3AF6CE295AC0FE2959C620EC3BB62C2B5C3850061E2959B1330C2AC58C3A9E29595C3BF26C3B2C2AB46E295A5C3A124E2889A1DE281BF5BE2959EE295A2CF84C2B1C2A04AC2B261C3A5397523386AE296A0C2B5C2BFC3B1C3ABC2BBE2959B3BE295A66BC386C3B1231F7136C2BFCF80C3A0C2BFE29596E29594C3BCC2ABE29595C2B20169C3892CCE980650190BC3A675C2B2C3AC6877237AE2959D110DE2889972C2BDC3AF52E289A549E295A504C3AF01374CC3AB50C3B1E295A26D29256231C3AA38C39CC387CE934E3F29CF80C3845EC2BC65E29498E281BF4CE295A4785FC3BACF830C451AE29593E289A1C389E295A1CEB11A6E06CEB5C2AAC2A2E294ACC2BB00E29692E294A4E295A4C2A36CC2BAE295ACC3A8C2B7115CE29482E289A108C3BFC3B458CEB53A1C4E1DC3B921303A3457C2B1C2B257E294A47D19E295A7E29595C3B37BC3AB01C3AE47C3A4E29680C3BC22C2BA0F74E294A43FE2959BC2A0E29691C3B3C3A924E295A122691502C385E289A4C2B77947E29690E28CA0E29480E29598000DC2A2CF8405C3B7E295984E030D6205C3873CC2AC00E29494C3B7E2959E385035CF841AE296902064C2A5CEB4C3B11A040F2A49CE9311C2B704C2BDE28C90C2BF6B41E295A4E295A447E29592E29593E294902DE28899C387460BE29691E2959D0B7259C3A1C3A93BC2B15321C2B7E29596376AE2959C5359C3A6C3AAE295A0054E0EE2959CE294823E49C3965EE28CA1C6926F0D51E294BCE294A4C2BB46C3A91A0DE2889AC391C3A6E2959A21C3BFE295A43017443FCEA328C2A0244713C3BC3563213A1072580B005DE2968425E2889AE2959FC3B3086D63E281BFE289A505E2959E03E2968C4D5BE2959809C2BB7B324CC3A0E295A0E295A4E294806D1CE29498CE93C3A1C3B66000E2959616C2A3E2949C2123E289A400E295A01A3FC2BF65E294BC376CE296880A5FE295A0E2968014C3A00FE289A158E28CA0CEB16E4DE294B449E295A3C2A2E294AC32711C4B4476E29594C3AB160906E29494E295951BE29494547CE295A7C3AF52C385E29591E295A623C39670C3A941C2B73EC2B02DC3A000C3A839CF8339042AC2A5E2969021E294ACE289A54B0947CEA6E294ACE289A126E2949C7F29E295ABC3861342C3ADCEA35D195E07E2889AE2898841E2959D5332E2959D34C2BDC2A2E29692137704C3A5CEB4541F28E2959BC3ACE2969364C3AA15E296844275C2A340495048C3A1E29690E294820FC3B358C3B150E2889AC3A9001C651DC38425491107C3B6E295AC435C4526C3AA6BE29680C3ACC39CE295A6772AC2BF0FE294941BE2898853C3A9C2A11A745CE28C906E31C39637627C02C391C3AEC3ABE28899C3916A325B4BE28899C3BC1E01676E16E289A5E2968450C2A0C3A8C2B7C3845CC39FCF86C3AC12C39F25E294823EC3A256E29690277F3A78E295A8CF800D55E296883FC384CF8001E29592E295A6E29599C2BD5DC2A35F35E2959D6FE288A93B3CE29692C3BAE29593E2959F1860C3BCC2B001CEA356E295944CE288993D36E28C901230C384C389E29593C3BAC2B27362E2968CC3AEE296883CC2A365C3A5C3AD06C3AB3A3CE2959AC3AA4408E294AC46C2ABE295A9E288A9080258E2959204E296920F0BE29684E295AAC3A4C3A9C39C26E294ACE289A468C3AFCEA9C3AF4106C3A6E29691E29596C3B23AC3850CE295A25520C2B13EE2959754E294AC4337E29595E294B4430C0D461D78C3B6C3A943E282A73D5D3F54C3B756631B24C2A31277E29598C2A5C3845740CE934249060DC3BC6EC3ADC39FC3A6E29595C386E294985B1D2AC2BAE29593C2B712486203C3A6E288A9C2BF66E2968C1429C3A5C389C3A848C3AB0BE29690E29684C2BDCE93E2948020083F10C2A5C3B2CEB1C39FC3ACE2968427C389E2959CC2AA623B19C3A0E2959BE2948243E2968CC389E294ACE295AA1A01C396E294BCC2B26A25E296900FC3B660E294B4CF83E2959BE29494C3BAE294B45211E294ACE29598C2BB2EE295A150E295AC5428E295A0E2949475093129CEA63CE294AC6E3EC3A5C3A9C385E29591CEB5227ECE93E295A2022CC2BA4922504068C38669C386E29690E2959A0B1F0926E295ABCEA9247A625A2FC3AFC3BAE295ACC3A4C3B4C396E2959A753E417EC3A7C3A7635AE295A018C3A0E29692E29597E295994110163B661118356AE2959CC2BF55E295A46FCEB47E26640D125814E2949462C3A42B6A0075C2BD38E296933729E28988E2959D76C2B74AE295A928C3BF620ACE98C3B363010C242A60E29498E296A0E296935C45C391E295A4726DC2A1E29498C3AD5F28435BC387E2949020E282A749E28C90E2889E084BC3A8377CE28C900ECF83E296A0CE9851C3A7757B28C3BBE29597E294A4193EC3A719E295A43973C384C6924E3579E29594E2959A44C2BC67006F770DE2889AC386C3AE1AC3A8E294ACE28C90E28C90E295A3377E3DE2949CC3BF0D1933C2BB54E295A5CF86C3A11340E294BC3970C6924BCEA6CEB1C3BAC2AA650D6EC3ACE29684C3B202275AC2BDE28CA0673E4CC2B0E296925876C2A2C3B3707AC3A87B39E2889ECE987B4CC3A4E2889A146D39E295911FE28C90E29592E295980B4CE2889A276149C389E2949C3E6E0A3FE29592674320C692E282A7E2889E3874E29596E282A735C3AB7C3BC2AB59C3ADE295933144E296936E504637C2B07FC3BB3DC2BC7FCEA90AC2B0C3ADC2BDE29591C2BFE289A45E137A0DE295A231256B50C2BFC2B0785F7EC2ABE295A4E282A762241CC2BD28174B2E28C2AAC2A1E2959AE2959EC3AD5D000E23C2BC02C3A0C3B4C2B200E29599697140C3A9C3AD681DE294B4C2A13EC3B4C2BFC2BDC2AAE2959DE289A5E29597CEA643E295A150C2BAC3A9E289882FE2959D2E75C3B96402C2B1726C24E294980A326373605FC2A1CF86C2BA590B02125218C2B1E2959B7D292EE295A1CF86E288A9CEB4C3ACE295A37FC3891509E294B4C3A443E2959D44E28CA154C2BD164CE29688172FC3A67C5D6DC3B9E2959BC3B6CEB14CC3B738CF8311E28988C3BB22E295A554C3A5E295A3720F52C2A2E294805FC3B6C3BCE29688550C47C3AC5507C3A7E2889A2D262B725725E2968011E28899CF833AC3A20A56C38674480833E29480614818E294945B4DE29480C3A06E60C3A50D0B4AC3B6492E20E2959FCE93231DE29692C3BB486E1317E294B4E29684CEB1C39156CE9829792FC2A5E2948002C3B6E2889EE295A31E7821E295A51AE29591C3B335E294AC2DCE930873E295A4E294AC19245C091C614DCEB4C3A6E2959526E295A4E2959A6DE289A1490D3B3FC3AD47CF86494E52E28CA076E294A452E2959A60504CC6920FE294A4317FE2959DE295A436091BE29592406E67CF8359E295A8C3AC0C17C2BB4C070B605C66C2BDE2969248CEB570C3BC5441C2B7E28CA134E29593C2AAC2BCC3A6C3AECF86E28899E294A44B513822C3AFE282A71BE289885B7BE295AB021C0FC2A121E295A84B3F72C3AE50113DE29599C3B309C3A0C2B1C3A4E29597E296934E31C3A84EC3A9CEB577495E5851C2BFC39F2E0E51174F23E29592C38750275F2206E2949413C39F09CE93C3965A4EE294B40CE29691C3B1E289A5C2B0E29598E296A00571373F0F2CE295A530C3B747C391C3A9C3A7570639E295A1E296A0387153C3ACE296912EC3A6E29592E29597E28CA0C3B33503C3A8C3AFE29591E296931001CEA31D72C2A5E295914371E2959C21763222E294ACE295A0E2889AC2A20D64E2959BE29490C396501500E295A838C3BCC3A203E295AAE28C90C3AB6E35E28CA1E295A8C39F1A00C2A341C2A3084824542867C2ABC2A3C2AA613E240D2A07E29482C2A5C2BA01C3AF1FE29680E296A03E49E2948250C396417200E294B44949CEB1CEA9C3A74AC2A256C3B4E295A9110F7C7AE288A92E623E48E296804012E295AB7C6C45CEA3E294A45EE2959C7411261FE28CA1CF8600C6927674E294A4E295A82547C3AC335409C2B072E2959BE28CA0187ACE93E295980B5D5A45C3B420E289A13FE29690507D07E295A3E29494645CC3BCE29480C3A7C3AFC3A1C2A352E2959B683943044829E2959EC3AEE296A038C2B27D364353E295A9E295ABE289A5050C403110E294A4E28CA00315022EC396C39C7AE2959877E29594090C2B76CE93C3AFC3B1E294ACC3A8E295AAE2959DC2BD255349732743E295AAE29684760B646CE296800FE295A01ECEA35DC3A22109C3B3C2B7E289884DC385E294907CE28CA10E3BCE9343C2B1E28CA14BC3AE24E29482E281BF69C2BD48781E61E295A8CF86190760E296806EE295A3E29692E2959BE2959C2ACEB170CEA3C2ABE2949428C2B7E295A0CEB5E296881246C3A7CEB11B317CC386532BC3BCE28C90E296805C5CCF807C4C1D73C2AA64E294BC2A77454DE2959CC3962266C2BC455E0CC3A2E295A0CE98E29596E295A3C2BA66C2A5107BC2BD59CF84E295922EE295986A19574DC2BD05E28CA0470D5ECEA31EE2959D06E294AC39C6921FE2959F2207C2B75D4EC3A401C3AFE28899E288A932C2B1CEA6C3A705CF8007E2959ACE98C387E296A078CE98C3A51CC3A436E29480C3896B1EE295960EE29595E295A166C692E2948075230536C2B708E2898807E29692E2959D09695A316B7064284EE295ACCE93E2959BC3A8E2968C2AC2B2E2889E31E295A87A023A58C2BCC2B7E294AC4BE2969367E28C900DC2AAC2BF5EC3962A1B04C3B11B2EE295A8E2948C47563F6DC2BFE28CA1C3AAC3A43E45461FE294B41468686EE29490C3A4C2B1E295A962383EC3BC3E06C2AC01760CC3B3E294807EE294BCE29490C3BCC3AE107111C3A01DC69273E29691217F5ECEB516CEB402E295A7E296A01137E295A7E294AC1BE295997EE295A0E29680CE93CE93E2949041E295902FC3A5C3AAC3A9C3A4E29591C2ACE2949C0545522F7E1D384910C3ACCE982CE295A401493E0B186A78E2949426E296802AC3A7C3BF19C2ACE295975FE295A40DE294BC30C3A7E29596C2A5CEA66EC2A04974C2BAC3B93256E29594C2A53EC3B4CEA33A5E2DE289A52A1656E28C900CC3A019C3ABE29498C391C3864F6F1BE2948CC3A7E294BC1FE295A16870CEB4E28C90C3A6E2948C05E29692E294A43601E295A0C6925EC385E29688E2959E5ECEB5CF866339C2AC1DC3BA70C3B2761368613EC3AB7AE2889977615E6A4FC2B153E295A371C3B6E295982DE2959BC2BF51C2A1E295A10DE29480E29692522F10E29595E294945CE29593E294AC01C3A0C2AAE294BC4B1A56402AE2889EC2BB3C6DC3BBE2949479C2B51162E295913DC2B73BE289A4614C53C2BF3EE2959EC391C38501E295A7C38719E295A50BE295AB77E2959AE295991FE2968CC2AA420FC2BC4C7CC3A7C3B6C3AD14C3A168E29592E295A2C3AD7CE289880152216AE29480721FE294BCC3A1C3BBC38421C3A8E295A3E29592E289A534C2BC183359C2A16D4700C3BCC692733CE295A4492BC3B6015921C3B6C39C76E295A1641205E295A5C3BCC38969667DE2948C5E6AC3B6E2968C3EE29498CF86C386E28C902BE2889E4FC2BDC2A1E294BC7D5A6D6AE29684E295924272C3B1C3BBC39FC3A74C3276C3A5C3B6E295917D7235E295A9252DC2BB7AC3875F04E295961F2AE295934757CEA6103875C692E282A77022086D0B6430E29598C3B169C3B954C3A0E296A0C3B652E296931B2046C3AEC2B5C3B9C2B0E295A7C6923735C2A345E2968003E2898824C3BCC2BFE29482E28988E295A7E29597E282A7E29596E294A46D043EC3A0C396C3AA57E29498C3BC29C396C2B7E29688690275C3A73DC692E289A129E29490CEA9E295ABC2BDC3A5C3A7E29688E294B47DE295A951760720E295A25200E29482574F1CE28C90E29680C3B64F3B646923E295A9C3B7E295A5C2ACC387E295A0C3A7C3A4C3866860E294BCE295A8C3A50B355EE2959EC3A6C3A7432D3160C3A1695DC2ACC3A663E2959CC2A2E2959726E29592C3AF2839CF84E295ABE294B43C620F1B133B3DE296A0E29688E2959D31CF863406CEA9384D2CE28CA175E2969177E29593C3861446C3B3565F443E7ECF86C384787D2EC2A0C3B7C2BBC39CC2A1104F6557E2968C46343DE295A9140FC3A0E2969006CF865751C3BBC3BC7ACF80C2BCE2889AC2A3651F6DC3863AE29688C6925AC3861E7B67E29692E295ACC2B752E29490CEB44B4629E29480E294BCE29691474AE295A83306E2959BC2A11465E28C904CCE93C3A91A02106B5FC3A5C3B7E29494E2959C6D4FE289886E78E29594C3BF170E121BE2959436C3ACE2959116C3AE6268C3AA3DC2BDE295920142000D64434C42E294825F1AE289A5CEA9E2959FE2949CC3B1E295A1E29494E282A7E2959450E2959EC3B30D1872E295A1C3A6364100C2A546E29498E29498E2969028342C170D7344E2959144E295985FC3AC28E29494E295A8CE93E29688E289A5E294A422545EE29597CEB556E295992EC3BA5DE295ABE29593CEA97A7DC3B241C692E294B4634D75C3B107C2ACE29592C3ADE294BCE295A140E29595E294BC1C6FC3AB7051CEB5E29691C386C3ADE295ACE29593C2B2E2949838C3A2E28CA0E295A44EC3BBC396C2BBE2959B5156E29595E29599C3B1C396672DC38509C2BD4FE2969343246DE294A4C2B165C6926546175A09C2A5E295973658C692C39CE29692232548E2959DC3BCE295A6481F716C3D601943C384687DCF8652E29591E295A6C2A373E28C90C3AF57E29680C3913FC2B03AE295922575C3A45F2EE29592C3B25E484C422F262DC3AFE28C90E2968836E289A1E295A8E29688CEA9CEB567C3AD2065E295A3CEA35DC3BF7A2838E29482213044E295925D55E295A802244E300CC2A03A7AE2959A7C0BC3B3E2948C7208E288A906E294A4C3ADC384E295A055C2B0E295A341E296934AE295A9C2AB06604E6B30E2948C35C391CF867F1ECF865F487C0B664D033E29C2B21EE294A40DC3B938C3A0777C77C38471E2959449E2959973C3A832E289A47DC38653E29596E29597C2A5E295AC15E295990F54C3B7E28988C3B4C2B1C3840ACE93E294986663C3A776E296A04D7536E29597E295A217E294B4E2968CE295A2020DC3B1C2A5E296A0E294A4C3B1C3B65056C2A52A2803E288996DC3A1E296935A583D7EE29482CEB5661669C3896F0B1A2D08CEB456C3A206C2B0C3B3C38940E281BFCEB1E294946AE295973C435BC3AD78E2889E4B0AE29590547BC3AFE295A6C2B7047AE29688385D6B40CE9374C2AC7D4FC2AB017724E295A058E2948C4825E294BCE28988E294985B66E294B4E29690E29592CEB54142E29480C2BF61C3BC67C3A7E2948C3DE2968445E295936E40E29691C39CC3AE7BC2B7E29688153F64E29595C3ABE29688E28CA1C2BCE2968C17671FE29599CE98C386C3B1E29482534FC3AFE289A1CEA944C2A3CEA9E294B4E29684E295A405C2B005C38605E294A4C3AF4B6ACF80127515186CE295A4E2959B46695C00CF84C2B5C3B6C2B0C39F69C3A214E29595E294ACC2ACC3A5E29595094E1DCEA6210E40E294B410E29593C2BD46690DE294A45F7D7F381509CEB1C2BC2EC3B6E28CA1C387C3A8E289883AE28CA1C2BAC384C3ACE295985C06297A78E28CA0E289A1E295996809C2BA2D18CEB52E4952E2959178CEA62C0A561B14E295986C4BC2BA4FC3894FE29596CF80C3AE4932C3AB1BC3AB19C3863D6863E29490C387622AE2948266541B3EE2959852613F0BC3AA28220B27CEB562C3B9E29591C2B2731F36E289A4E296885EE2889E06C2AACEA61E51017727E289A5C3B7C3A024E2948CCEB42EC38957484239C2B2CEA3C39150541012C2BF3A755BC3A155C3AC444E1D29C3A8464347C385C3ADE28CA169C3BC01100DE2959929C3A60A630F3B5567E2959BC3A8E2959FC3B9791AC2A5CEB5C2ACE295AC727E6BE295A746E2969106E28899C2A1E29498E2969006CEB4693FC391C3A2E295A3543ECF861EE28CA13748C3A736C3A4E295A01AE295A15ACEA6542ECF80C2BBE2959F633EC2A2E2959C6C17E2889910C3B208524576C3A1CE98E281BF19C3BF2EE2968C08E2959C1EE295A6E2968C537BC3AE6BE28988E2959729357AE294804FC3BF2BC2BC79C2AA46E295A56B586A0FC6922E23E28CA11D557E2A0F61C3A11BE2968465C2B1C3B106223572E295ACE295A7E29591694BE296A025E29599CEA9C2B739C389E2959E330C2D5C4ACF80C3AB1711E2968435C3ABE29596E294A47DC3B92ECEB16FC2B2E2889E7F2A04E29684C2BCC6927DC2A5C385366CC3AAE295AAC396E295A600CEB42973C2B22C781058CEB52CE295A2E29592E2948262CEB4C2B2E2959762C3A01DE29490373F67C3A97B2D6E22E2959D185A6051461D4E7DC2A5C396CE9359E295A5E29595E295A63C0E4F38C3A0C384C3B709556D42E295924DC3961BE29480E28C9001E29592C3ABC39653C3AEE295A9E2959B0D4DC3B67449E295902509C3963AC2AAE2948CC3897C1A0BE2968CE294ACE29690E29592CF84C2BBE288A93601105C3B2DE295AB19C3B947E295956BC69208E29692C396C2A5E2959429CEB1E2959642285511E296805CE295A15B60323FC38947E2889AC2BA3B55C3BF6278C3B7042DC2A0734F50E288A93FE2898804E28C90E295A57E6D0A0A5F6DE29592E295A809E2949850E295A1C6921BC2B216E294AC5946E295A6E294BCC3BA691BC2A316C3B172E2969356E295A3C3B3C3A074E295A000E29688E28988E2959155CEB55A19C3A4E2959A6BC3B2622BE2968017C3A063E2968436C3963F2BC3A8CEA919E294942728E281BFE29691C3B2C3A4C3A424E296800014C3A608E296A004E295A921E29680C3A6C3A64E75C3A425C2ACE281BF4A67E29592423BE289A1E294A473C2BD63E2949C4FC3AC5BE289A4E2889EE295A6C3AA672BE2889E67E29591C2B5E2948215C3B76BE2959EE288A956E295AAE295A7C3B6E295ABE295A72903C2A151E29693785CE2948CE29599E295A43B4062E289A4C2ABC2BF37CE93E2948043E295A1C39C56E295A9E295A8E29593596A3EC3B75FC3B6E29688C2AA3547C2A1C3A554E295924BC2BFE296A0E29591C2A1E281BFE294821428E296A00AC69274C3AA4BE29494E28C90C39C4FE2968CE2959C3C42E296801BC2B7C3B9E2889A507F7B35774F656E67E28899E295A2E2959F03CEA973C2A1E294822FC3B97A4FE294A4483DC3A7E2948C6146E2959A65C2AA52C3AD0CE2948C1B40646571C3B224E2959CC3914D3A59E29597E2959146E294A4591BE29599C2AC366213E282A7C3AE73C3AA10C2BF7BC2ACC2A1CF845DCE93E2889AC2A2E295A7C2A3E2959C5C6233C3A7E295A0C2BF4566E2959BE295954CC2A0E295946566E294804C437BCE98E282A7CE93E294A4E29594C2ABCF83C3865F0B6655392D08E2889EE29482794E0D07C2A3E28C905D1A784705E2948CC2A52D4B513BCEA666C2AAE282A7E296845D2DC387E29592E294825A41CEB13F47C2BBC3B2E295997D0C09C3A9E295A5E29680E295A1544AE295A0E29691C2B577E295996957CE93E29693E289A4C2BCCE98602D6D607FE2969247CF860D41E295AA5D5EC2A1477C712A3DE2948CE294BC5EC3AECF84C3BB0445E29592C3B937CEB149300F4A314844C2B2C3BC35C2B1E282A7CEA90626C38765C2BDC3A237C396E295AA5768CEB5E2968CCEB5C3B7E2959F03C3A0C2BD0F1344C69265E29594E295A7E2959EC3A177771AC2B0E296A0E2959C4DE295A1C2AAC2B2E2959C47E295A17ECF860C5AC3BF110E412A586762E295A8770FE29684C3AE7E52341EE2959AE295ABC3B4045851C3B1E29596E28899E289A445324BC2B7CE93712D196813E289A5C2B1E28899C2BDE2959CC38658C3BC262DC2BB69E28C90C3B6E29498E294AC544EC2B503E295945EE296806F18E296914DC3AE6F49C3A57EC3B3C3B2C2ACC3BFC2A041C3AFE281BF7E223E1EC3A9C3B91F306A29C2B2E29592CF80E295AB372BC3A8C3BBC3A953571376E28CA03FE29594C385C3AB0C35E2889AC2B5107915E295AAC2B164E295A3E29494CEA3463826E295920AE295986BE295A83CE295927DE29599264DC3A62BC2A16DE295A6E294A4E288A9E2948CE295A2E295A34C6D7D2D6E5FCEA3E29690E296806BE29688E28CA17B6D5B5B142DE2889E7361553BC2A1E296916D697119C2BD36087BC3B13AE2898806C2BD433B51E294805442E295A7C2AC45E29490E295A134E294A42BCEB1E288A9E295A22A05E295A8E2968CC3B979E29684C2BA6F113C59516976E295A866497DE28CA10F76C3A2C2B7E295AB6E6D64C396C3B7341775CF863FE289A5C3B3C3A039E296A075E2898858CEA966C2BDE295A121C3B37CE29596E29690C3A04B1724C3ADCF803CC2A266C3A8E294A44CC2BACEA6C3A5C2AA76C3A9E281BFE294B4E289A1C39C5157C3AE29377D0F6968C3B2C3BBC3A248E294B4E29482C3867F20E289882E1403E295A1793EE2889914092A276C257FCEA6E281BF5D3F327700C3B3CF801213C39F5AC3A90148C2B05AE29494CF80E294A450E295A1247FE29490E29599CE93E2959EE29597E28988CE93E294822F7BE29490CEB4CF86C2AAC2A0E28CA0E295A6E28899E296900A24CE98E295A43EC3AECF835B6E27C3BAC3892DE28CA1C2A328C3B6E295AACE98E28CA10DE28C9073C2A207E2959B4DC3A614C3A6E295A0467D3BCF8370561ACEA9E295975FE29598E295A9C3B16C4A1DE2968C164E4F3A4054E294A4C385C2A56A376DE2959317E2959040C38639083DCF86C3BFE294982D6A4BC3AEE29480C2A1767D6AE2959711C3A0030E010AC3ABE282A7C3B926E289A1E2889A3AE2959CCF86E29482CEB52A1002561BCF84302DC2ACE294AC6BE296803CE281BFC2BC1AE28CA1E29693C2BF16161DE295A3C3B1C3B3E29693CEA9E295A0E29498E29597784CE295A310C3B4E2948C74CEB523E29480133B7AE295A93B5E21127278E294A4CEB4C2B2637AE289A47E60CEA9E281BFC3A0CE98C2B20DE2959971C2BDC3B2044C7F2B21E29598C396605F2BE295A967E29688CF86416ACF86E28CA0C2B205C2ACC3A7CEB50EC38960C2BB2A62CEB5CEB506216D36560946CEA6E2959341E281BF10E289885EE2889AE2959C6BC2A5E29480E289A4033662E2889E7A0F4B1FCEB1C3AF2E5DE2959067E295A1E29591C3AAC3A93E2037CEA959C3AE3BC3861B18E288A936647D6DC39F395F42534775CEB44B4BC2AA09477135E295A9536BE295901C7CE2898844E294BC67C3A7E294905D5211C3B22508C2A017E2959E40C3BBE295ABC3A64EE295AB5C000001C3A0694343504943432050524F46494C45000078C2A37DC3A63D48E2949C5014C3A04FE29599C3A8522A0ECF8620CE9310E296913A59101571C3B62A16E294B442692BE294A4CEA960E289A5E295A53F68E295A5C389C3B1E29595380AC2AB05077F16C2BD0E2EE295ACE295913AE295950AC3A9CEB10FC3AAC2A2C2A2C3B4C3B3C3AFC3B6785F526811CF80C3A0E2959FE2889A38E288A9E282A7E2949C7BE289880142E29482E295A954333001C2BFC39C65C3B1137131C3B95F157B5FC39F430041C3A4312231534F6616E29482E289A1C2BCC2BB7BCEA9C2AAE29591C3AFC2B12CE288A9E2959B3FC2BD5F29C3BF0CE289A1C3ABE29480734C372CCE930DCE93C3964D4BCF84E2959D4F1C616549213E271E37CEA6C3A9E29480C3855CC3B95D7ECF805C7258CEB1C3961123C2A2E282A727C38410C3AFC3912EC3BBE29597C3BFC3B20DC3B278C39C38C2ACC2BF1ACF830B39C3B915E295AC5BC2A3E295926AC2A5E295A1E288A9E295945F182A682B19C2ABE295991A46024B4822051132CEA9C2BFC3A10A0B31E2948C35524CC3B1CE983CCEB5C39F1F72E281BF2972E29594CEA3C2ACC387C3A6630135C2BFC3891C3FC2B01FE281BFE282A7C2A159C2A3C39C74C3B44271C3A1CF84E294BCE295A23F46C3BCE296905DC3A1E29592E29691CF86E288A963E296886EC2A500E296A067CEB14ACEB4C2B06B4D60C3B7C3B4E28CA04647C3AF1E0103E29688E29494E294BC7547C3B4E28988C387E295A61D60E289A149C3B90CE29594C3A6E281BFE294A4C3A46211783FC3BA6FE295A903C39F5B20E29595C2B5E295ACC2A17DC384E2959907204BE294825AE2959B010E0EC3BCE296921265C2BB7BE2959DE29597C2BB7B6EC2A0C3B7E294A4CF84E289880338E2959372C38952C3B601E2889A00000006624B474400520052005251E29590CF86E295A5000000097048597300000EE2948000000EE2948001C3B22B0E1B0000000774494D4507CF8301040A1726CE93461AE295A600000D2E4944415478E2948CE29592C2A27B70E29599E295ABC3B2E2959F3FE29490C3A7E282A7E295A224635B183B061BE2889EE289A15CE282A76308C3BC02611BC39C3610C3B3C386E295A0664A6942C3BF4C691BC2AA340F05CEA62E4C60E2948C4D58C3A0E295A5C2A1C3962D4DC2A24D693AE2889EC3A50251366443C2A266C3BCC3A526C3A44730501B131EE2959EE294B4183FC3A46DC2B264CEB4C2B2E295996FC2A0C3896C5EE2959EC3BBE29692CEA3C3B167E2959E23E29688E29591E294907BE295A7E28988E2889A3BCF84E2968473E295A7E2959C57204D32CEB5E29594021EE281BFE2898869E28899E294947DE294940C60323006E2959ACEB5CF83E295A416CEB134701CC2B018E295AAE29596E28988E29498C3BA574EC2B2C2AA2E2D7A0AE28C90CEB5E295A8E28C90380AC3BC25E29494C3BAE29494C3B6E295AC31C3A9C3A630E296A070C38940244C201A221A5351E295A11800C3862022C3AF1226E29498C38751C2BA27436FE29480C2BFE295997776E28C9001C69202E29597C387E29680E29597C2BCCEB54B5F3A02E282A7E28CA13CC3A4C3B1C3B96603E295A7010B003114C3ACCEB169E28988E295A5CEA66FC39FC3B3C2A0325EE29592E29688C2BA3E6DC386C3B262732179C2B56C72336D18641D400C7817E295AA140B690736E29498E29680E296A0620918E289A4443E0BE295A9E288A9E295A317E295AA08E295A0C3A8691AE29590E2959B362E782F53CF863FC3B952E295A61A6D2E65C3A4C2A100E295976510C3B320001C04567DE29595C2B16F1F1DC2B7CE98E295A3C3BC27E29494E28C903806033F03E2959BC2A1E2959E625CC3B77AC2BF68E28C90C2B56AE294A4C3A0744AC384C2A3E29590C3B1E2889E51E2968465E2948223C3AB22E2949476CEB159C3B9E29592E2968C3820047CCEB4C2B2C39614E29690637F04C2B015C389E29599C2BFE294A472C3B1E295A3C386C2B5C2BFC3A7C3BCC3B65C39C3A769C3B771CEA359E2948201C2AB02E296806BC2B75BCEB4E295AC6D330EC3B1C38500C2BACE93E295A803C2A2C3BC1FC3A422612A1AE295A751E29592C2B1195FC3B1C3AEE2959018E29594E29480E2959DE295A5E295ACC3A1E288994BCEB1472EC2BD3BC2A37202C2A3C3A8231B780BC3BFCF8669E28988E29693C2A0E295A9517C311F5F06E29692C3AAC396E295A0E295942FE2949CE282A7C39605E289A121CEB17059E2968C2D2923E29494E28C90380AC387E28988C3BCE29692CF843DE28CA1E281BFCF83CEA9C39FE294A400E295A42209C3917477C3B7E281BFE2889EC2A3E28C90C3B6CEA3E296904522C385C3BFCF84E29693E295912FE28988C2A200C2BACE9318021CE295A8346D6465630D47E2959D27530F3C0CCF863B21E294A4055041E296A026C3BFE2959B01C3A5C2B1C387E295AAE29596E2959BE295A96C13C2B0C3A7E2959DC39F08C3A97016C3BFCF80E29693E29591C2BBE28CA0E295985EE2889E05E2959D15E295AAC2BDC3ADC3AC3CE29498703E2DCEB101C3A9C3A721E294A419E295A97F56E295ACCEB4C2BBE2959CE295AC426D11E2959BC2BAE29494E2959715E294A460E29680C2B73ACEA93DE29594C3ABC3A5E289A468C39C7637E289A1E2959F04C3A5E2959B5BC3875371C3AAC3ABC3B1CF80CEB455C3AC17E28899C3B1C2A1226D3EE29684E2959B1BC3AEE29490E295A0C3B3C391C391054110C3AA46C3BAE2959DE28988E296907B2C5CE2959510C2B20AE296913EE295A4E289883EC2BA654D645CE2969070C3873F02E289A45D56E29596E2948C570B580F7CE2959CE295A2E295A131C2A1CEB101540F4CC6923E1D21E282A7CEB120E295A6320F3DE28CA010E29688E295966F27E2959D05C3B3C692E28988E2959CE295A7E2949C6D27C2BF6D69007820C3BC257917702AC38439E29494C385E29688E281BFCF86E2889E6F3AC3B6C3B7281EE2959702C3B4274FE2959BCF83C2A00B162CE294946432113C7667C2B2CEB56BE296A0C3A456E294900F60C3AC5371E295A04DC3A800C2BACE933003C2A0195155C2B1CEB1C3B20A6268CE98451F05E28CA103183E7CC2B0C2A1E29599C2A2E294BCE294ACE289A5CF83E295A6C3AB1CE295A3E2949CCEB1C3A8E2959EE294B42B1544E29598C2BF08E2959DC2B5541C19E2959458E29494E294900023C2ACC2A26B0724E29597C3AF7AC38740E289880400C3AE183102E28CA1CEA6C2A5E28988E288A9C3AB5ECF8374532DE29494E289A104E295A2E2968813CEB1541C45E2949433E29690403B47E2959914C2B16FC3BB484DE281BFE29482C3B1C3B1C3B1E29688E288A96559C384C2BB01E2889A21E2959FC3B653E294A405E2948C01E282A7712AC384CE93E282A72C602D603CE295A4746E40E2949413C3A2CEB15E78C2B0C39FC3A7292A2ACEA9E295A2495D5D1DCE93CEA3E296A00F75C3B3CE982CC3870158E295AB2D01C3AB42E2959ECF80E282A7762FCF84C3A2170704E29490C2A000C2BFC2A00B2B57C2AB44146FE28CA1E2959E4824E294ACCEB5E2968CE29597E295A4C391C387C3870BE294B45A3CCF865EC387E288A93815E2959FE295A8CEB52CCEB1694057E2968C52C2A276CEB15A14E2948CE2968CCEB17F01E29593C2BB5FE295A7E2889EE29498E29482E295976D57555545757535C2B771E28C9019E2898874E295A6450039C3BCE28CA11A014EE294BC21034FE295A20703C2A30D5C482F7A157CE2968820C2B053282F2F67E28CA1CEA9E2959248C386742B49C39CE2959EE295A26DE296881026C3A97E746AC3A53E17C2BFE294B417E28CA0033CC396E29494E296846501E289A4C387E2959D3AC3917940E295A03EE2959D1576CEB5E29684E29594E295994F3FC3AC5EC2BBE288A9E295A25D656525C2A2376FE2959EE281BF0408C3A5E29598C3AC7F59C2B1000C06E2959B763D01E29680E29598C38733E2959BE28CA0C2B7E2959B1600C2A06658E295966E1DC3AF162DCEA9E295A9E281BFE29591C3B437E296907803611418E295A652C2BDE2949C19C391062DE282A7E296882C0210E282A7E289883A10042E29E294B4C384E294AC5DE295A1E288A9C2BAC3B2C387CEB11168C2A041E281BFCF86C3841D3BC3B7E295A2CF862E5DE29591E29480E2969161E2949C30E294900CC2B5C2BBC2AA5EC38545E2949CC2B5613365E295986B1A77E29594C3A9402950E295AACE934F7371230601373CC3B7E295AA63C3AE1EE2968CE29482531F3F7E3CE296A0480BC2B0E289885D5BE295A20962E296841D0463E2959D6620E2948C40E29693C3A2C3A1E288A9C2A22AC2A17E05C2A229C3BA4010E295955B06C2AA033407E2948CE295A5C3A83F7C16E295983FE294B4773FC2B06EE2959653E29690E28CA1525252E294ACC2B0C2B1CF8039E28CA16FC2BA7AC2BBCEA6C3AEC3A5C3AE67E294943825795DC39C036D14C3B40F305D0626025C0E34C3B1E28CA1CF86E2889AE29680C3A9E2889ACEB5E29597C385193366E28CA0E2948C7CE29684E29595711C3E7C1845511004C3AD2B5668C39C462C164355557C3E1FE29590E29590E29590E2959DE28899C2B5C2A26C59E2959B05E295A9E294B4383D3975CEA9C3A90D4C650CE294942419181951C3BAE294A4C2ACCE98E29482C38750254477E294B4CEA9E2959CC2BD311AC3AC493D63341A7B6D3B6AE2959828C2AA4DC2A2466666262F3FE2898832E289A54EC389E289A47BE288A9E295974DE28CA11256C3BACEA62579C3B1080C0B4523CE987BE288991DE295A8E296A01F71E29680C6923B776EE295A9E2889AE295ABCEB4E28CA1E2959DE289A1E294AC0B4C183DC3BCC384E2968C7D70E29594480460C2BF0CCEA3C3A7E2889A4840C2B00CC3A44EC3A9C2B5E29597E295A1E2959B240F05CF80E2959878C387E295A5E294ACCEB1E2889A1D08C692C3A8C2BCC2A0C2B2C2B7E29688E295ACE28899C2B2C3B241C3A206E296927AE28CA16A162F5E4C6C497CE2889E5EC2A152C3ACC389C3ABE28C904006E2969322C2ACC39C7C22E294821FE281BF4EE2959AE295ACE295AC263BE2889AE2959EC3ACE29690582C464D4D0D7EC3AFC3A5C3890374C387E2959304E288A9E2959BE2889A0EC3BA46C3AC4A6BC389CF865C4CE294BCE2948CC3B42320C2AC46016C32206B49163D621DCEB15F072FE2959BC2B022C2BD56C2A1CEA9E2959347E295A7C6923F4F5959191D751D6CE295AAE29691C3BCE2889AE288A9E29490C692E29693E29693E29693E294A4C3A90F06C3A2E2959DC2B7CEA9C2BD08CF8041E295A94DE295A535350D402743E289A525C692585BE2959D78C2B1CEB1C3A20FE296903640C3B2C3B6C3B6E289A1C2B0CF80C3853362E294800856C2AB5C3920C2BDE295A93D7BC3B7E296916DE29688362CC2BB27C692360BC2B17AE29691260261514872C3A22841556FE289A4C2B0C3A623476E5BC39F49C3A7CEA3C2B5E2959E5FE29597164EE296A019411400E294AC22CEB1E295A44972CEA912E282A770C3BF43C3A70E61E29596E2968807C3AEC387C3963367E296936CE29498323A7E756D77E28C90E295ABE2949823C384E294982302C3AC7A49C3B93265144541E2959934E295A066E289A4C38711C3A1E29599CE9858E295917429E2948CC2BAC2B1127B7204CEA6001A44CEB1E281BF75E2959F515262010056C2BD75E29494085055C3B203070EC3870C624672E295A718753AC3870B2270461245E289A5754352C3B34C2010CEA6E295A9CEA3064A76E2889EE295AAE294B4E2948CE295A16B31C2A004E2948024781FC3B3E295A6431225C3873322C2B1E29599580C31CF83C2AAC3B60059C3BB07E2889ECF862F5BE295A20CE28899113027C39668C2B51BE29597E296911E17C3BC43C387C3BB6BE29693C3914CC3ADC3BC2440C38624E29593C2BC59C3A27A3CE2889900C3BF6BE295ACCEA9E281BFE28CA163E29692CE9377171AC3BCE295A91C736A7C56C3AF2718E2959C4EC3B2E28C90C3B6E28899E289A4CF84C3BA5DC38748C3867BC3AAE2949871C2BCC3B2E295926F5F6A10E296805F711260C385496F60C2BFE296A0C2AB7E2B230802032D16C3AF25CE983CC3A1505FC387596F00E295AAE289A4E295AC77C38475E29592047702C3B6E2948CC3A5C2AAE2948024C2BB77C3A0744B2010C3A1E2959DE2959D1CE289A54037C2BCE28988C3B7C391E295932EC3AEE29597205114E2959254CF861850C3966FE2959041C3B17FC2AAC2A2C3A611C692C3A7C3B3E295A468E2948CE294B407C3A241E29593C2AB5DE295A6C3BB2D5BE29691E281BF04444BE295A7CF8645040A6C3900C2BA35C3AC235D04E2959D32CEA66DC387C2A10659E2959F44CEB4C3BF7E29E2959239C2B2C3A042C3ADE294A41370E2889EE295AA31366DE2948C44E2959E2FE2949430E28C90E28988C3B7132D6331E2959A7AC387C2A1C2BBE295AAE296847411C389C389E2968002C2A1C391E29498C3A029E29692C387E295A2E295A2E295A2E294A413E295A86965C2B7E295A5CEA3E2948CC3B9C2B51402E294A401C2BB5FE29482C3A8C3A4E29595C2BCCEB5766073C2AAE294B4E2948064E295A6E295957E05C3B1C3B3C3B322C39CC39CC39CE295A54EC387E2959F13E295A77BC3A02466E2968449C3BB71641A4C003F7759E2968CE2959B5B0848E2959AE295A7C3BCE2959EE295A4C3B7220CE2968CE29592C39C457A0D70C3A920306FE296903CC3B7CF86E29688C3A7E295ABCEB44D1BC2B0C39CC39C1AE29593C2BC59C3A2E2959D18E29480413DE2959635087A46E29688C3AF00C39CC3AA1FE288A9E2959C16E294A4C2BBC2A0CF80C3BAC3B9C2ACE2949C33E295ABC3AEC3B7E2959AC386CEA3E2969108162EC2B76F3CC3BA2FE2959A10E295AA0B36E295A446595919C38624C3ADC2AC6AE295AB4F341ACF83E29598E28C9053C2BC58E29692C3A9C2B2E2889AE28988E2948271CF8046C2ACC2ACC2ACC2BFC2BBC2BBC2BAE295A1E295A1C3B25028C3A42449C3BF4CC2AA7E4DC3B91515152C59E29693C3A42A632559E295A7C3A260CEA9E295A3C2B26CE2889A54E2889EC39636C3871FE29591C2BCCEB54F6EC2ACCE93E2968C28E295A77B1DC3A920E289A1C3BCC2AA6973C2A07ACE98246703353746E29690C3BAE295A8E296A0C2B25EC3B3CF861C302F06E295A10122C692C3BCC2B767E295A8C2AB3BE295A93C65E295A914162E5C48717131C396C396C39658C2A1562C160B7AE2959C1EE2959C5EC3852CE295A6CEA6743A4451445555E294ACC39F307EE29490C692C2B5C2B5660E1D3AE29480C3A50D1B10E288A907E2968873E2959C57C3874A4DE2949CE28899E295A9E295A80908C3A97000C3BFCEB4E29693E29591E295A11E090048C2A3C3B3C2BF0846E294ACE295A2776B0FC3B3C2BFE295A9C3ACE294B4CF8432C3A44F77C3B47A0A2065C3BC61CE934D6F25066A6B7CE28C901AE2959C02E295A41AC3AA1EC3A5E295AA1D1C7D114AE294B4E2959514E295A073CE933B443DC3AB55E294A430E29490781646C2A55E0126E295A3C2BCCEB5C39C5B2B43E2959611C2BACE937814C2B043C2BDE29680E2959F3B75E2889AE295916E77C3B1762503317F3CC3A2E29599E294ACC3A1C3A012C3B14641E295991215C2BFE295AC2D31637CE282A7C3B9E296936E76E29684E29688E29590E28899220B0BCF843228E2949C02E289A14F2EC2BDE2889A0FE2968C266EE29596CEB4CEB1E294ACC3A7C3B9C2BD267E7BC3A4E294B4C3B133E295A01A2CCF8472C2ABC2B2E289A4E2959813C389E295AACEB413E29590E295ABE294944939C2B1C2B23EE294980EE289A5CEB1C2B0C2BAC3B61BC2A04E34C3B4E28CA0E295A4E2949807C3A57C05E29597250B60CF80C384E294BC7FE28899C3A0E28988E29482E29494CF8654CEA65E1A0EC2B7E295A8CEB1C692C3BCCF86E28899E295A21CC2B5CF83E29590CEA3E288A945C2B5CF83E29590243FE282A7C2B1C2B217E29691C2AA764F4B0FE294BCE295A45EE29480E28C903874E294940EE2949471E294BC7BC3B23F35E281BFC3B218E296922F257011C3A6C2BB0DCE9802C2A03FE29494C3BA2EC2BDE29597E2959F4572E29693E2959FCF8375E2949436CEB15B2D1D3EE296A0C2BBE296A0E289A1C3B9C2B5C2AB4057022666E289A5C38505E29599E2959AE295ACE2969102E281BF37E289A144321727C2B7726142005E02560523610EE295AB570DE295AA69E29693E29690C3B1E2948058E295A0E29598C3A9E29692C3BFCE93E295A14D1768C2BD5DE29593E29596C3B4325329E29498413E7AE28C901A53E2959BE281BFCF84E281BF49E29498E29592E29693243D30E295A0C3BB67E2959A12E29693C2BF0F34C3AD7E412EC3AD1774E295A0E295A9C2A5E295A9E2948021C391CEA624E29498072C3DC2B2E29593C391E29590E29490E2959C675FE295A5C2A23D77C3B6C384391547496241312B100971E29591E295A3C3BB13E2959BC2AC01053F21730C63CF86E294BCC3BFCE93E294BCC3ACC3A2E2949452C3B9E295927DE2959BE295A779E294BCC2A52AC38970C3ABC2BAC3877F05727D413F675BCEA938CE983BC3ACC3BBC2AA03E295930202132C63E295953BE2959710C3AFE295A40CC2B1E29688623F067E7D73C3A5C3B97602C2AB23E294AC063C0FE281BF10E29691062361CEA9150F67E2959CC692531F49E29590E28C90C3B47CE2968C1046E2948CC3A55160E29590CF86E2959D1DC2AA00CF83E294942B2EC2BDE29597C2A17FC3B1C2AA4812443C052C07CEB506CEA6080769CE9850E289A104E2948CC2BF0F36E295991449CEB51CCE9360C2A5C2A502C3BAC2A55C5316E29498195632E28CA05D39E288A939602BE289A15A7FC3BCC2BAC2A3C3872E22E2959D0E01C3BC7BC3BC47C3AAE29680231EE29498E295A1C3A5C3AAE28C90C3A42211E294AC6AC3A4E296911ACF86C2AC200BC3A9C3875EC386E295A44B3A0C3A1DE2969378436C3E0BE2959D03E2889E42CF8063C3B9E29590C2A1C391E29593C2A1E295A528E296803BE289A40D2CE28899C3A542CEB15ECE93E295ABCF844701E294BC403EC2B16BE28CA0C2A5C2A2C38611CE93E295ABC2B5C2BB0017C3BC3324C2ABE295A707C3B2505D79C39F7B69E29599C2B1C2A0013477E294904072C3B77B2E0000000049454E44C2AB4260C3A9, 16, 16),
	(8, 'Non Honorer', 'image/png', _binary 0xC3AB504E470D0A1A0A0000000D4948445200000040000000400806000000C2AC6971E2969000001CC3A67A5458745261772070726F66696C6520747970652065786966000078E2948CC2A1C2A269761C39C386C3A4C2A0CF801473C3A4E294940E1C07CEB47B73C3A239E296A07C0644C386C3B64A55E2968C3D6F28C3AB4CC2B51201C2B0626EC2B50EC396E28CA13FC2A0E2959CE295907FC2B1C3B2E2949C134CC3AAE295A3C3B1C39CE295A5E2949C57C2BFC3ADE29591E2959EC3A2E289A5E29684C2BBE2889AE295993EC39F7C3F5FC39F7DC3ABE296807F79E296907CE2959CCEB178E295A9E289A4E29599E296805FE295997AE29680E29680783E7E7F20E294901FE29691C2B2E295ABCF844D1EE288A975E295A97BC3ADE28988C3A0E295A705E2959CCEB5E2889E7830E2968045E2959B17E289A5CEB53E6FE29680E296804D75E28988414B3FE295A2E289A4E296A0CEB4E288A9C3A7E295A7C2A5C692E29490E296A01E32E2959EC3BFC3A6CEB47967E29684E289A5E295933FE28988E2889AE2959CC3B4E295AB3FCEB41B3FE288A9E28988CEB1E28CA048C385C2A5E28988CF84C396E281BF57E2889AC3962FE29599C2B2E294B4C3875FC3857EE29482E2968033E29690CF84C2B2E2959639CEB5C3A03EE296884AE29490E29498CE987DE29690E2959E3FE29688E288A958CE98CF84C3A8C2BCE2889AE29591E29482E2889AE295A3C3B3CE98C2B1E29590E295A7C2BB1FC3B7E296887BC3BBE2959CE295ABE2968C5D0BE2959460C2ABE28CA06ECEA9E29482C3B2E289A4C3AA3772C3A6CEB1E295A7E2959F127F32C2A022C385E289A4E2889953E2889953E282A7C3B70CE2959D36E294986A374FCF84C3B96A1DE295A2E2969036E295AA69C2A2E2968C76C2A5C692E2949C0EC3BB18E2968472C396C692E295AC0D7CC3A1CF84C3A8E295A7C2ABE2959171C2A311E28CA0E2959F6EC3B9C3ACC2BB7EC2B7C3A93F06E282A7E289A43CCF86E2959BE2959362E295A77DC2BDCEB5E2959FE295900A77E282A7C3BB773AE295A6E294BC2CC692C2B0CF83C385E28899C2B2C3ABC2A0CEB4C6925F2EE294A4E29596E294ACE29684E2948CC2BA7CE29498C3A87539C3A02CE295A6C389CF84E28CA0C2A577C39F10E295975FC2A2E2959E635F6BCEB5C385CF84E289882F39E29593CF80E294B478E295A05CE295AA607BC2B7E2959C44C385C3B73BE295A2E281BFC2B1E294827FC3B3C39FC2A1C39F4D69C2A2CF847B014CE29480E2959C23C3AF21C3B3C3A27DC386E28CA1E295A426E2889A64CF84E29693E295A1E295AAE29692CEB1C692E2959EE295A91D61E29680C2B1C387C3AC26E29591E295942A5DE289A13EC39FC2A3CE93746F3EC3B4CF8679C2BBC3AFCEB53E0DE2959DCEB1C3AACEA6C3B4E295A7E29595C2AAC2B7C3A5E2948242C3AA21C3A66FC3A0106A26C2B71862C3AE29C2B55862C3AC2DE2889914524C29CF8324C2A36AE29498CF84C389634E39CF84C3866B6EE294BCC3B950624925C3B9526A69E29592550FC3AE455353E29590E295A1E295985A5BCF80C2AA2D34C2ABE29592787FCF80C3ABCEB5E29591E288A9C3ADE2959FE282A77ACEB5C391E295ABE2969006C39F33E294ACC3AA23C3AC3CE295A9C2BFC3BA4D37C2B20402E295A04C33E295A732CEB46CE295A62E4269C3A015575A79C3B25557E29688E29480E2948CC3B73BE2889EE29595E29599E295ACE29597E2889EE29591E29688C3B9E295AB5EC2BBE296A0CEA9E295A1E296803DE28988E295A75EE29482C2BBE295ABE2968471C3B6E29690C3B9E29490E2959CE2959EE29599397F2E610527513EE2949C632E583CE282A7CF830102E2948CE29594674FE296922138794E3E7BC2ACE289A4E2959EE2889ACEA65865C3B673C2AAC3B2E2959FE289A16058E29593E294BC6DE294907CE28988CF86E295A3E29490E28CA1C2A2E294B4E29591C2A0E28C90E29680E29684C6923C67CEA3E29591C2A00FE295A719E295A3CEB5C3A7CF84E296A0CEA9E295963F786DE295A203E29596E296A0384859C3AA4D41484FC2B7C2B1C3A555C39C2B4D75CE98C2BB3F7B7BC3B73377497E63E2959C67E28988E29691774B79E295933DE29595C2A0E296906E74C3B4E295ABC39C3CE2959EC2BCC2BD46C385414BCEB4E2959DE2948C4A7C5A6565C2A14EC385C3BC062B3CC3B95BE28899E28988E295A655E2959742C39C66E29482E282A7C39C62E288A939C2A1E296927BE29498C3ADCF8658E295A9E289A5E2948C131FE289886113C2ACC3B272E2959263CE932676475FE289A5E29693C3BAC3BCE29596E296842AE29593E2889EE2968CC39CE29594E28CA0E2959D5CC2A163E29482CEB53DE2959DCF84E2959165CF84E29498C2B7E282A76EC2BB695908C2BBE29592C3B6E295974F6B7227E296901AE296882AC2ABE29498CEA9E295AA1B56E295A6E282A70D35337814CF806429E2959DC3ACE295922D3FE29692666A2BE295983147C2A52BCEA3091AE2889EC2BA5B4A630CC2BDE295914EC3AEE295904CE29598E294A4C2B7E28CA0CEA3E2959576E282A7E294B4E2889EE295A0C3BB09315DC3B1E295AAE2959DE295A35FCEB47E0E36C39C472F23E28988C396E289A5E29494C3A22D1245E2959DE296915ACEB179C2BCE29480CF866A49E2889EC396C2A5E2889E6626311BE29596C692C2A1C2B71CE2968CE295A96CC2BFE29590C3B2084E15C3A2E289A4E282A749E295AAE28CA07A3FE2948CCEB4336750C391E294B41F2B3FE29597E28CA15CCEB42CE294BCC3B1413865176AE295A23D6361E295A0E2959736614E324C3EE295900A326530E282A7CF866A6545C39FCF8666E295A41671E2959D7578C3A67758CF80E2889ECEB5C3A17E63E29688272AE294A445CE9362C692E29691286F58C3B1C2B566E295A0640946E294942DC3A426E288A9C3A8C2A1072743CF80C389384CE289A57375E296936EC384385509176C04E295974E18E29592E294AC5A2D63E295ABCEB107E294B415703AC2AA2CC3BC05C3AEE295A357C2A12CE295A2CEB5E29690E2898822E29594E295A0C2A3C3A4C3895D2B6BC2A0E294807FCEB52DC3A06A77C2A1C3BFE29494C3BBE295A23A01685B4C672BE2959B1362C3A8215F7BC3ACC2AB66E295ABC3AA212ECF83E295A0C2BCCEB4E2949810E29594003EC3862C236F2AE289A4E2969029CF861D08C2A2C389E29490CEB5397EE2959CCF835A242C19E295A73646C385E29498341B1D1BC2A2E282A7641FC3B41214C3B30564C2A37EC3A5286AE28988E295963F49CF80C386C2B7E289A1511633C387CEA6E296A004E289A5E295AA64E29590E2959549C3B4E2889A7EC3B46664654DE2889AC3A63571607ACEB45ACF861D27543617E29596E28C90E294941AE295AA4220C3A0C3A8E2959672E295A6E296922F3CE295A4C3AAC2B5E288A9E2889A3D65CF86E29680E289A4C2B5E29690CEB5C3B43946E28C90334962E282A7C39623E29688586DE295ACC2A12621426721C3BFC2B1240E56C2BF5D16C3B72BC39FC3A8E294804D003857C3BC730712C3846AE29693C3A9377AE29494150B3AC3B2C6927442E296934CE294905ACEB53DCF8625E288A9617EC3A848E2959946E29593CEB5E296880E5C1946632FCEB10506252059C3A7E288A9C3AFE295A0E296936500CF86E29494580BC2BDE28CA06BC3B750E296A00874CF8467CF831A24E2949CCEB1E2959E6136CF806AE295A4E2968CE295A649091C4DC3A4C2A3C2B2E28988631BE289A502C2BF682BC38531C3B7C2BF27C3A7E29482E295A661C3A20904C3B1E28988C3A17A24E2959D5736E294B47A1267C3B1E296A02835C3B96DC3A8E2968CE295A5E295AB20786AE2969064C3A0E289A464E294800011E295A2E295A84FE29494CEB15B0CC3B13EC2AA5C27C391302630226B62E295A6E295985BC3B9E295976D24C3A2124FE29593C2B508E2959E5265E2959936E2889E74C2A1E295A145C39C625252E2959E1276C2A2CE934404E296900C30E29688055258E282A726C3A0CF863A19C3AEC3A120C3A7C2A21FC2A21BE289A51B39C2A3E289A12328E29480E2959EE295A32969E2889E4668C3A41601552BC3B2E294A40223C3B623C2BBC2BFE29480C2BD7910231D58C3ADC3AEC3A664E294983FCE985876553FC2BF05E2959FE295A0E295A7E28988E295A7E295A3282DE288992EE294B4195024C2B56F14E28C90E288A90A7E292E786271E29688015CC2BC5CE2959F22E295AB3A1C2E525F54360866CE93C2BF6B5B6E355F6350C39FC39CE2959B73C2BA09C3A4CEA939C3B7CF8614340AC2A1C3872AE294802A45E2959B02CF86E28C90C3AD7CCF86C3AD1538E295A9116FCEA9E296846234C3BCE28CA0243479C3894675C3A8E2959771CE93E29597CF802630C3B9E294ACE29482C3B2E295A840E2969302E295A7E2949C50620A37C3A7C2A52BE2959EC2B243C3BCC2B2E2959FC69238C3B9E295A0630538C3A4C2A2197CE28988E295A31B6C0672E295A84ECEB5C3AE052CE2959213C3A7C3B7C3A421E2959A33C2B76C71CEB56AE296922E6EC2BA0ACF8301C389551BCEA94A26CF8332C2BF4D142C6A420C6CE2889E19E2889EE288993F0E09733DCE9300CEA3C3B6E2959A0EC2AB391402004BC3A430592569E29498E294BC0E15C2AC027B6B0EC3A8E29494235CE29593E294B40DE2959D72E295906458E2948CC3B3E296931DE29494E2889A06C3A13FC3A1E2968CE288A95857E294B45908E2948CC2BC140A60E2959338E295A2C2BB42E2968440C3AEC2A34FE29693116502CEB5E2959B53E2959926427FC3ADE296880BE29591E295ABC3BC6EC385213CE295AAC2A5630568C2BF78C3A6724431C2B50A79E294A44D45E295AC5A060E3FC3A07FE2889A0025E289A1E296A0C396E295A83CC3A1E2968CC3A6C2BCE289A1E2959763311809C3B1E296922F00E2949CC3A2E296A0C3A95AE2959DE2969315E2968810274B5227E29498C3ABC3AAE289A433C3BB06CF8345E2959455C2ACC3A7C3A932C386E28CA03BC2A5C3A0C3A6CEA6E289A1E28CA0C38406C2A1E2959F14E29593CEA30A3C2CC2A11BE2959642CEB5E281BF2FE29594E29692C2BFE28CA119CEB40FCE93132458C2A2C3A93954355913E281BF60C3B20810E29480195710C2A1C39F6EC2B0C3ACC3B9C3BA150A27C2A3E2959EE29688E29594E2968020C2B5C2BF120E2F3BE29688E29498E295A4E296A0CF83C3960CE289885239CE93C3BA07C2A3E2949404C3BB1B74E2948244E295A164696074E294A4CF84350A21C2BB0D4AE2889A6EC3A8E295ACC3A8E28899C2B065C3A9CF84C3A668C2AA70E296886508021CE29591E294BC433CE29692076ACF80C2BD5CC2B766E29594E29596101DE2959A3DE29680C3B9C3BA46C391E294ACC2A20F66E2948C594518E295A3572AE295A6CEA336E2969222E28CA01DE295A6E29691C3A5E294ACC3A000557FCEB16443CF803D4608C3B2C385C3A9E29599C2B2C396C3A21F293E442C32C385CEA60A21750BC39F4EC2AAE294B46033C3B938C3AE2A6EC3B302C39FC3BA50E294B44C5033C2A3283AC387E295A05E6234CE93E29592C3A40D541A707AE295A2C3A8E294ACCEB40473E2959CC38775273F2CE295A97C2963C2B17718104128C391C2BFE295A63EE281BFE2959D28E295A20FE29688C2A3CE98655FC2BAE295ACE294A4E296931BE294980F075CE2959F02E2889A7EE2949014C3A85A3108E289A4C3A7C3AE00C3AE601C30E29680C39108C3B36EC386E295A95364145BE294823E34C3B2166FC2BF33E28CA12EE296A0C3BF134605064AC2A351C2B77AC2BDE295AA04E2968CC38629247367E295A367E2889AC3A72275C3BB142F0EE295AAE289A4E2968C2C2148C3B2C3B2E281BF0543E29693E295A1CF86E29593C2BC1F2EC3A855C2AB3A6FE29594C2A3E296A014C2AB19E294B4C3B46725E2969269C386C3AFC389C2B1E288A9C3A078C3A0E295A778C3891649510A294345E294B4C3B638003A1EC3A55F19E295A458E295A3C2B7C3A1C384C3A0E294827CE2959BC2A1CEB4E29498097F61C3AB1E63E2949C7E7F3EE2959007E295912EC2BDE295A1E296924DE2959A22C692E294A467570EE2969036C3BC490825E29597C3A5755FE29597E29482CEA9C396E295906B5CE29693E295AAC3BA14E295A1E289A475C3BB6AC2BB0E60E2959C20E294BC2056E29680E289A51CC3A56E0113E2959CE295A056250FE295A1C3BBC2BA79E29591E2959D5A06E296927CE2959DC3A553510DE295AAE281BF0165547244E295A1E295A1E2968C4F692F0ECEB1C3B31662C2B222165F04C3BC6B18C3B3E2949872E294B413C3BC6CE282A7374DCF8609C3AD2E06C2A2E294B46BE296843CE295A8021BC3BBE295A1E295AA2CC6921C4702704179C39637E295AC2DE2959C5674E29594C3A1CF8405CEB4E295AA0DC3AA01C3BF46106B632DC386590FE294B433E2959CE294A4C2B5E2949CC386C3A141E2959812E294A45C1E27E29591E29591C2AB6B3CC39FE295ACE29590E28C9011C389E2959528451CC39CC3AA5244C2A52BC3875E0E0931C3BFC3BFCF830BE29480E289882FC3B615E29688C3BFC3A2CF803BE289A1E29498E28C90E28CA1C3854AE29684E2959A161DE2959D42E295A8C3BAC3A75722C396E294AC72C3B1E2889EC3A2CE9878C2A05504C2A202C3BCC3B10C2855E281BF6AE294AC7CE2959455E296A026575F40C39F2F50485C61E29684E28CA0C387621EE294B4C3A719C39C2775CEB157E29494E29595C3A1C2BC4EE289A128E2959411E29480E2949C53406776E288A9451940E295A718CF83C3864761CEA3403AC3B21415C3B6C3A2E29594E29596C3A1E2889EC3BA3FE289A5E295A4C2BB66C3AF0A01E295A261C2B72439C3AC66C3913876E294A4E2959870C3B643E2959822151C2CC2BCC3B12BE28988133DC3AE44543D5C134E12E29692445E1E1B513302E28C900CE29684670A0238E294986E4DC3ABC3B4E29591CEB1C3B1E29594CF80C3BA0EE294BCC389C3AE3D38C2A55A6A57C3B16DCEA956C387C2A3C3A4E29593E295907EE2959D07C3AFC3AF2758097549271439E29680E295A8C3AB1B42E295A4E28899C3AC574F547B5DE28C90277B59C2BBCEB4C2BD64E2969043E295A301CF830CCF830BC2A57DE288995CCF834BCEB160634BE2889AC3B641E294AC11510710C2AC1CC2A115E28C90E2968C142CE2959DE296804F26120E1E67CEA6E2959CC3A5C391026DC38934C3B71BE2959A03C3865D15C3BAC2A3E294A4502521C2AB76E295AA286D7FC3BBC3AF69C3BBCE9323402D4BC2ACE29598C3A55B690C05C3AA38C384E29690C3A07F45C2A1E282A732301B09121CCE935DE29595E295ACE29591E295914A3AE29494E2959BC3ACE295A747E29592C39F046EE29595CF83C3B74AC2A14605626DCEA933E2889EC3B46225C3877105C39F4F601E0760E2959F23C2B5135BC3A62AC3A96743E294BCE2959CC3A403C396C3B4C3A0E295A9E295957A15C3B601716B010F741A291A325130411DCEA36EE294ACE2968C6471CE98C3A7161DC3BB451C65E289A4C3A61408E294A4C3ABC3AB61C39CE2898856E296A0C3AAC384E295AA6AC3AF145018C2B00D1D30C3A9C2AC35220A2617C3A8E296A0C3BF4D5AE295937723C3AE5019E29593E289A46400CF8301120CE295A8C3AE03C39640E295982757C385E296903B75C2B5C3BAE2898866E294900277C2AC396DC2B5111ECEA3C2A1C39162C2BF6B31C3A1C3ACC3ACC3B6C3A0E29692E29691072C07CF83CEA952E29590CF83E295A8075EE2968C5F1CC2A050E295A9E295993FE2948CC2B530E295A9C2B732E295A92ECEA904253B6448E294A43E3529E295A64DE2889EE2969241E2959A2649E28CA1765FE2959A591008C3BA15E295A2225123E294BC744858417ACEB127C3A4C3B6682E0C11C3872214E295972B3737C3AA76C2BDC2AAE29688E295ABCF806C2735E295A3CF86C2B128E296930CC3BBE294AC0943E28C9033E2949032035EE2889AC3B219E296A066E295AAE29594C3AEE29680E289A4CE93475AC3BFC2A2170E1BE28899C3B3C3BF712AE2959ACF86565D313628465B5EC2B751C3AD4115E295AC08C2BC53671CC3A4C2A3E295A0CEB437C3B20CE282A77272E295A02073E295A77B1DC3B94EE2959673C3B942E295A3E295A9C3B779E296A0C3B7272136C387E288A96444E295A5E295A449C3870E1A0C2ECEA3C3B903C2BCC3AB46E296843155614EE289A5CE9309E28899E2959EC692E295A2171EC387CEB404E2959479E295A7C3BA7DC2B0C2BC3911C3BBC2BA5A35C385184062CF84E295974FC3A6640447C3BCC3A122C2AAE2959DE295912DCEA933E296917FE29684C3A70D2560CEB10CE295A6E294BC6045CF84C3A209C2BFE29594C3A221C3A74020E295A7E29692C3AB5773C3BCE295950213E294981F4ECE98C3ACC2A2E2949431C3846C41680213C3B7E295AA061DCF862FE29598C2A26F210DC396C2B74D4AC3B45FC387E2889AC2A12EE2959CE2959DCF83C391E29590E288A9E289A512CEA3E2948C36C2BFE2948C1DE289A1CF84E29590CF83E29592E295A74549E295AA581158452A52E2959CC3BC6A7217C2B5C2AC1EE28CA1546302E2959FE28988085E73C2BAE296A0C2BF050B15E2959FCEB54602C3AAE2959AE2969351E295ACE29480C39C45E29590E29688C2BBE2959F51C3AAE295A0270E20CF847FC3A95CE2948249E296A0E294900D4A342E74C2A3C3914578E296880538E295A1C2BAC39F04C2BA7DC3AE592EC385E2889E711BE2959D4CC3B2015D44C3ABC3ADC3AFC385E2889E2016C3A52EE29594274D132FC2A575E295A01778E28C90C2B20E6F5264E29595E29598C2B13AE29692676054CE930CE2889E72E29598E294904AE2889A3FC2A0E28CA0C2B0137EC3A83C3A12074632277874707303CEB516E29498E29490E294944EE28CA137E2959266E2889E2A1E592D364067E28CA104E2948257E2959F0FE2948CCF8054E295A5C3A60F35E289A4226505E29691306A2A52C3AC6BC3A9764CE2889A22E295AC3C2A6FE294906806C3B63FE29490C389C387E2889EC3B44BE295A8C391C39FE2949C691E78C2A21135E295A9095FE29592591DE2959A0BCEA949C3A4E295A06250E29480C386E2959BC2A12A4240C2A53DC2AA0EC39CE29494E294B44701470201C2B5C3B3E294BC36C3BCC3B641E2968076E28CA114E2959D2729E2948CC3A17603C2A01A52C2B05222C2AC0E56E295A84E3F3208C2A5CEB13A49E29690E294AC253EE29693C3B648C3A503C2A5C2BDC3A6C2B2C2BA5F582BC6923EC39F437CC2A00826C2B216CF802F08C3B737E296926240E29691C3B1E295A94FC3B13935E295A57FE28C90E281BFCE98E288A94369CF86E295995FE2959701025932E29480CEA6092AC3B634286661E294AC6D0BE29688E2959DE2948C71C2B24003E28899092D443C08E2898860E29591E2959DC3A93BCF84C39F026BC3A2E29480C2A21A60C2BF59E289A50B1E41E294806818E29692C3BA134DC39CCF833FC3AF2E531ECF846BC2B7CEA9CEB5E29480E295A642C38753CEB1C3BF55C3B7E29599E295A7C3A1102B68E29593E29498C3AA7DCEB43BC3B237CEB5E289A1CEB1E2948C16663504E2959C2ACF86CF8663C3A2E2959150E29690097D43C3AA1CE282A7C384C3A7C3892AC3AC2BE29593443061E29693E295AAC3A2C3ACCEA35A4848645956E2948C307403E294BC08351457531FC3BB38E2959A1AC2ACE28C90C3B3E2959CC3B6E29594065FC3A67F1E0217C3A9406601C3ABE2948049E295ABE2969320C2A0C3A4E2959ACF800949C3AAE29593CF80161A3EE2968CE2959AC3A1C3A54216CF83675542CEA9C385CF8317C385C389E29490C2A321691840E295A0E294AC0314E29692CE93E28CA1042B6CE2949822E29482C3B617C3AAC3A15BE2959CC3A8C2B720C3B6CE936BC3AC4F2364C3A1C38732E296931249E29595112D3BC2BD151E0EC2AC56C3BCCEB42CE295A464E28CA1C3A62C58E295A93DE294802562E289A1CEA3C3A052E29693E28C906DE295A45FC2B1C3A0E295A2C3BBE282A738E2948C60CEB162046EC3AF1EC3A54DC3AD56C3B3644375C2A3E2969374E295AB5DE29494C2B0C692772176747FE29594E28C90074862CF80E29596703A0D000E5D5BE28CA1733B73CEB5CF84E29490C692E29592C2BCC3A5CF8479E29693C3BA6646C38758CEA942E295985C69CEB1CF80E295A042E294B4CE987AE295ABCE98643F375C0CC3A15350E295A9CF80E294A4C39CE294941E7CE295A44546C39F1DE2949C4F4A4F64C39F65E2969359320A50E281BF0840E2959D2CE29594E294BCC3B2C3A1C2B02D03E296A0E295A840C3AAC3B31830466ECE932104770551E2959E22E296887C47E296803E6A4451E295AAC2B0E29691C2ACE295901354E294AC1E05C3B415CEB454726C432CE28899C3ADC3B3E294ACE2969309E29690C3B36EE296905A17C2BD332AE2959149CEB16927E295982349C2BCC3A651C391CE98CE93C3A9E2959CC2A502426C22C38425C2BACF86C3BA0EE2959174CEA3E295936E3EE295ABE2959206CEA9E29498CF865C4378E295923550C3AFE295A469E2959D392029C2B2C3AB52E28CA1313FC2ACE294A4516DC3B9C3B4C3AD50E295A7C2B12FCF8418CEA957E2959E63E28C90E2948CC391E2889EC3BCCE980249E294AC4655E29480C3BAE282A77F67155E6CE2959AC2BD1A62E295A6C3B1E295A2C396C3BF15E2949823E282A7C3B1E295A2E296913B3D2F00C3A46BE294804E003664C3A13903514DE295AAE289A1E29482460CC2AC276B08CF86702CE282A75B0DCF86CF80C2A2583C11E29597E294A4E2969272C3A028C2B051C2A1E29490E295907417C3ACE29596C3BBE289A5C389C2BD3A36E295A8227221E295ACCE9312C6927D4916C38637E296902CC3B2622718E294BC2E612A39764405703DC39F436E19C3B9E29688E2948213C2BB5CE282A7202EE29693E295A4E29598780242C3BCE295A4E2968421E295A1E28CA1E294A4C385C2AA137970E296A0413BC386C3BAC2BB7A41002176E295903FC3BA1FE295A1E29595392A39173FC396C3AA6B45E29688C386E289A1E295AC2BE29490550B51053E1BE2969224C2ACE295911649C2B21563C3BC2DC692E295A400C3AA18C385C2AC1239E295A7497D5AE295AA5F13E295AB1BE29598E294AC010E66E295A907C3A0C69254E29680C2AA757502C3B137E294B4E2889EC3B60EE29590E296881AC2B7E29494E29480E28988431D511F4824C2A0E28CA0C2BD2ECE93522DC2BFE2949427E2959DC3A4E2959613E2948274E289A4C3891DC387E295995B6934E2889A5F0EC2AC35E295ABC3A97012CE93E29596C3AF03C2A0E29480E295A8013C5376740F201F6B1203C39C10E295AB58E29590C2A5E2959AE29684E29598CEB569485920E2959525C3AD17E295A6E296A00CC3913B76C3850178C3B1E295AC12E295ACC3B674E29480E295A7E2959B61E295A844C386C3A8E288990C26C2BDE2949059E2959CE2949C4D0EE295973E53C2BCC3ADCE98557F0B611453CF831A402526470D51CEA301C2B7C2A3C3AC2CC2BCE295AC1EE295A00AE295A9E2959AC2A552E29594C2B1E295A2C2A10E37E294B45767C3A815E29592757F50E28CA0C386E29480566367C3B3E2959CE2959B7D3FC3B766E29691C2B13BE295A66D4F5535E295A5E29480781F5F4BE295963562E2969236CEA67DC3874DC3A1CE93C2BC12C3A278C3BFC3AD4B04E2948C6314E28CA16DE2959029C3A55BC3A8E2948CE296806EC3BBC38717E2968460C3A2707BE295924BE288995B61C3876DE29688E28CA06D52E296884FE295A770C2A5E29594C3B9C3BFE2959451E294986028C38602073E4B67E294BC20CF8435E295A3C2BCE2959EE289A5E29593C2B03CC2AC2461E2889EE2949C725372172506C2BBC2B0C3854EE296923EC38910402DE288990AC2A24EC384C3BF4C5D743FE295A966C2B26DC3AAC3A62C0EE294823EC3B62237C3A9C2AC1254E295916C6A2FE2898810C3912004E294A456C3A2C3BB50E29680E2959FCEA9E289A1C3A6CF80C3AC6FC6923FE281BF68E295A6C3A1C396E29592C3BBC3ADE2959D790BE29591254DC3B921C3A75972E2959A471DE296A04005C38747E29498C2A5C3BA25C385C3A46C1422E282A726E2959940C3ADC3A2611032C2AC1836C692CE98E29594C2B24537E28988C3A7E29684E281BF4AE2948CC3A9C3857626CEA34F6948C3AA701815C3B103E2959AC3BC180CE281BF5EC3A0E294AC0E19C2ABE295A97BC2AA1DCEA34CE2968027744636C386C2B004E2959C66C3AFE29599C3B2C3B3C3A924C3A81511C2A17120CE98C3A9C2ABC2A14067E295A7E281BFC39150C2ACC391C3BC3B45E29680515952CEB5CEA31F44E295A649502936E296924A04446DCF802BCEA6E2968448C3B6487D522C024A2C5EC3ADCE983A52C38601791B513A6ECEB41D37E295A6C3ACC2AC0D20C3ACC2A35AE29684434AE2959B1336671C0C5E3765C3AA6E0CCEB5C3B311E29480E29591701215E295A7CF84C3B45AE295A7C38620E29599C3B1E296841C52C2BBE296A025C3AB471E690070E295A538C2A51EC3BCCEA6E2959A3A097DC3A5E295AACEA639C3BFE296912AC2A2E2959A44483025180D381EC3A8E295A4C3AEC3ABE295A9CEA3E29592E294BCC3A026E295A7C2AA4974CF8657CEB4E28C9045C3B3CEA30CC2BF58C3ADC2B1C3AAC2AC3522CE93E2948051CEA93AE288A910CF84455CE29599C389127F045ACEB53341C2AB2A59E2968810556A4B29E281BF00525D6A48E295A06E3128E295940AE295A7C3A070C391666935C2A0324B73E28899CF842C6DC2B777C3BBC3BB6ECF8463E295954729C3B6E29684C3B2C3B33AE295992429C2AC59E296A0C389E28CA047736249E2889E78E295A0E282A7E295A70C33E282A7C3A81F57E29692713D352E78E2889EE295A570E295AAC3A85A74E294ACE295962E1E6EC3B22320E28899E294B47073C3A2E2959128C2AA432278CEA9C387731EC2B735430B5C47C3A636E295A517E28CA1C2BFE29498C386E2959F5970340053476BE29593366879073E6E194D03E29680E296A0E29598C3B406E294B4C3B77FE29498C3A528C3BC34770D5DE295A1130A72CEB4CEB1C3A8E294AC166CE2949CC3BAC2BF235767E2959A4FC3A572E29595CEA35868003DC3A02A0949C3B361C2ABC3A5C2BD1AE294BC6842E29596E2968823C3B127691524CE9804C3ABE29591572713E295AA2A12CEB1C3AEC3ABC3AA2135E295A73271E28C90E2969038E289A5C2BBC6921804E2959CE294B46FE2959459C2A5C3BA1C07213D163D2739C2B5E28C90E2959264C3AB64E289A54DC3860C5FE28CA0E281BF454FC3A409646EC2BAE2948246C396C2A34ECF84E282A748E28CA1E29599C2A5E28988E2959974E294B41AC3AE03115435C2BB1D780BE282A75731E2959B340302C2A2652072E2889AC3A613E289A1E29599E295A200C2A353676C3BCEA9C3BB2A47E28C9034E2959C53E29591E29599C3A64C52C2BD15C3A0C2BCE2969254E29593547F61305E2EC3890BE28C90C2AC34E289A5C3B2C3ABC38963E29598E294B4C2BBC2AA676B31C3B2553BC3B24656500BC389E2959D50334FE2889AC39FC3AF3538C3BFE295A63E7DE28CA0797AE281BFC3A65C21594AE295A03A2142C389E28988E295A2E295A0C3A2380EE295A825E294ACCEB54CC396E289A557376BC2ACE295940502E294BCE295A2C3A4E294AC0EC2AA764E3715C3A8C389CEA943C2A54F54C2B0410A6C4A46E295ABE29590671824E29590C2AAC3B46045E2968CCE9373E295A3E28C90C2AB676CC389E295A8C3A0E2959BC2AB4B0763C39FC3A14FE29596380DC692E29498C2AA2E246FC2A151255B67CF83C389E296911AE2969211E295941A33E294B4C2AAC2B1C3A64E17C2A30C74CEB5361E5DE296A079E29595607EC2B5C2BACE98E295A04FC3ACC2B7423A50C3B301E296A0E289A5613D3A57C3AD4922CE98C3AA5575E29691021C6861E2968CE2959EC389C3B2E294B42177E29688E29590C38444E29480C2BD026252E294BC20C3AB212D03C385E2959CCF80C3A02FE294B4E28988C2BB787272E295967439C2A501E2968846C2B253007546E295A6627454690B7261C38478CF8015E295A6C39C30E29596C2B564E295A3C39121C3BAE29690C384C3AE7A2079E28899C384C2ACC2B539CF8623C3BCE2968CCEB56726E295955E3C606125CF83E296926EC3A1C3B6E29598425C44E29590C387C2BD5DE28CA1CEA6CEB53B091A4EE296A0233A51E29596E2968C781DE294AC1943E2959C35E29480C396283A510C6705CF86C2BD66744846E294A427587304E2948C4DC2AA31E295A77D21E2968CC3AA05C3A67BE295A5E289A5E295A0E295AB604D6ECEB4C38945E296A0E282A7E295A7E29593C2BF2857735427C2B5100D56E29597E29482C3A0CF86687B21E2959C6D17E295A9E28988C2ACC38530E2889AC2BDC2BB7FC3A5255474CE98E295A1C2BC2233E29592150749CEB1E28CA1380AC2A50ECE936A6646E281BF6B32E2949805E295911D791CC3A40F460A1CE2959EE289A50DE29688E289A4E282A76BE2889A066DC2A56BE2889A3BE295A8C3B7C2B2E295ACC2BAC2BC37C39CC3A765E28CA1C2A1751450256FE295AC076C55E29690C2BC376FE29480E294ACCEB5603E34E294AC53E29590E295A7C3ABCEA3CEB152C391C3B2E29591454A32E295915FC2BA04E2959653E296916B2654E296847BC3A4492CC391C3A9E295991A43C3B345C2BD500EE295A6C2BF3BC2BDC2B0786BE295A65227C2B1E289A17CC3A136E282A7E289A5C3A1C3B41DC3B926E294B4E296803E072244C3B4E2959BC38443E294A4E28CA0E2968C05E295A8CEA6E289A1C2A3C3AF46E282A7C2A1C3A9E29680E29597C3961504E295ABE295A81B48C3ACCE98C3AEE28899E29692C3A5C384E2959AC3AB5750C2A575C2B0E295A8C2A0147AE295A507243D4907CEB12D49321DC3A8C3B140E295A2C38652C2B143537AE29592C3BF335AE2949CCF86C389C3874EE295A325082AC69261C2BDC3AFC385E2889A5F3FE296905AE29598E29692C3BAC3A90030CF84C3BFE2968CE281BF1CCF864A7FC3B958C2B104CF80C3B6E295A059CF8420E2959FE294A40068E29594221EE295A54BE29590C3AA77CF83C3B977C39F66C2B1E295A1E29688CEB5E295A554E295A9E294ACE281BF4E4745CF842CE294A43B1DE295A5E29691E2889A1EC3A7C3BAE281BF6232586AE295A4E281BFE294B4543556C3B24C366AE2959D187DE29599C3A176C3BCE2959D4DCF84C3AA40CF86C2AC66C3A6C39C623AE295AA6159C3AF58E2968C1641533ECE98E296930017124233E29598E29688653B076134C3B979E289A567C3A57AC2B532E289A4C2A5C3AD4AE2889EC3ABE295930220E2959911C3AD59E2889AE295A800016E357526C3A910E29597CF84E295A3E296803166C692CEA6C3A046296C3A00C3915AC3B3E2949CC385C2BDCEB4E294A4C3B6C2BFC3A5273A2449E2959852C2B02A07C2AA2AE29498E295A2C3851DC2BA0B377758552762E29693CE93C2A0C3AC4D170F0D20E29482C386E29591E295A0C3B65FE29590C3914058025C3DE295A708221AC3AB31E295A6E289A5296DE295A579C3B3C385C2BC1F5E3A7DE29691C385C3A43DE28CA0CEA9E28CA04D4A49C2BA281DC3A502C3A8071D14C3AA51CF841574E29691E296934E0DE29595E295AC2040CF866EC3AC16CF843DC692C3ABC3A1E295A3C3A2E2968817CEA9C3B44EE2968026C2BD436C67381DC2B7E295A7C39FE294A4513CE281BFC2A34EE295ABE295A774C2B7E295A4707A3C1A40026EC39664E295A74D2714C6922EC3A539E29596E2948C41E295A8C3A1C3B40B59CF86431D7CC386032E1B42E2968CCEA3E289A557C2A3E29490E289A4E29498E296A059E294BCCF84C3BF25C3AFC2B01CE29482347715E288A9394BC2BD63C3BB3B521EC692700FE295AC111DE296A025C3B9C39F074A69C2AAC3B76254E2959C186504CEB5C3A020E295AB78E2959E4EE295A154E295A85B300672E29490E2949CE295A344E29482202EE29494C2BD15E2959465375959C2A33FC391E29691C3AA1DE2949417C2BAE28C90C39CE288A944C3AB51E29592E295AAC692C3862BE296A01BC3862B2FCEB1E28C900ECEA3045A44072DE2968CE289A149C3A7E288A9E29599E29599085048E296806142C3A44A48C2BA6ACEA91C3C217BC3B6E296A0394275E296913441C2BD7063E29480E28CA0E29599CEA6E29598E29593E29594E294AC73C2B5C3A9C3AEE296931D0F0707E29482E2959FE295A5C3B6E2968450083871E29599CF841FE295A3E28C90791FCEA67FC387504D28C3AAC3855461CE937367E29598E2959176E2959BC2A5E294A47B020A4F4856C391785AE2949862E296925E47E295A1C3AB48637B2D3ACEB44425E295ABC3A1E295A20A4DC391C387C387C38722C2ACE2959F270B15564D2ECE98E2968CE28CA11E0955C39128C3BC1BE28C90492344375FE2959F16E294AC676251E295ACE29692C3A0E296A0CEA6C2A029C2BCC2BF7A0D2D42C692C3ABE295AB7FE295A9C3AC4E48E295A6E295A8C39C6CE29680C2BDC39C3323CEB45F17E296A031220BC6921159E295A4C3AA4C69E294B45ACEA94D0BC39FE295900DE2959A4F56C3BF3FC3B1051110E289A52F69614F5AE2889E1DE295A6272DE2948C39E29693E295A2E2948CC3ADC2B244CEB515E2959F70E295A2C2B2E288A9C2A3C387E2889E27C3BC75C2ABC39F36C3A945E2959C6AE2959CC2A3E29599C3B15E1CC3B9E289A50856E294AC435DCEA9C2BFE288990A32E289A5CE983A0ECEA3784458C3AFC3B304E295A4E29480CEB1E289A12A34326A403FC2A3E2959A662BC39F6C6DC3A01B45E2959447E295A86FCEA65CE281BFE289A1C38639E29494C396C2AAE295A300C2A20E4B64C2BA4CE295A81023C38728C38474C2BDE295A128024E05C2BD66E29591C391C2A0C2A525E295A769E29498CEA912C692E2948240C3B359E296A0C2A3C2B7E28CA1C39C5F2DC2A566E29594CF8414C692E289A5647DE289A5446942E295924DE294983CE29498C2B544C3A10059E29688C3A5C2AAE295AC4738E29598133131E28CA0C6922424C3A4E2959E6D2D3FE296845CCF8400E295A54375C2AB544DC2A35CE29591E2948CE282A7E295971A35C2A1E29494E2959719C3BBC384CEB4CEB1C3A20951E2959851C3B14074C386C3A26F285013E295A6C3A9E294A4C3B44440E289A4CEA6422EE294ACE2959EC3AC3B73E282A7E295ACE29598C3ADC2ACE29595C3A738C2AA1DE294BCC3A97CC3A6C3BFC3B6E2969050631BE29480605502C3967126E295A0E2959CC3910843E2968454E2969116355FE295A00E64072F4CE294826440E295A5C3A6E295A9E296886DE29688E2959F4C27C3BC49C2A27EE295ACC2A17FCF866DE295ACC3873BE295A2C2B71CC692C2A0C3B2E294B4E2948CE2959348102D5EE2959229E295A7C38710E29598C389C391C2BFC3A67002CF83C3A4C3AB4E1ECEA910CF833851C3B333C2A0E29593CE9874E29594C3B1E2959BC2BFC2B2C2BFC2A07506C2ABCF86CEA30C71E2968811E2949CC3B4C3AFE2889A7F0AE295951B6F45E2959FE2889A231147E294983CE2959C71E294B44EE2959868E2959FE29494C3A528CF84C3B647CEB4C387C2BA37C3AE617F7F39C2B2E2889EC39154C692E2959FE281BF2F65C38766E2959B5404566F000001C3A0694343504943432050524F46494C45000078C2A37DC3A63D48E2949C5014C3A04FE29599C3A8522A0ECF8620CE9310E296913A59101571C3B62A16E294B442692BE294A4CEA960E289A5E295A53F68E295A5C389C3B1E29595380AC2AB05077F16C2BD0E2EE295ACE295913AE295950AC3A9CEB10FC3AAC2A2C2A2C3B4C3B3C3AFC3B6785F526811CF80C3A0E2959FE2889A38E288A9E282A7E2949C7BE289880142E29482E295A954333001C2BFC39C65C3B1137131C3B95F157B5FC39F430041C3A4312231534F6616E29482E289A1C2BCC2BB7BCEA9C2AAE29591C3AFC2B12CE288A9E2959B3FC2BD5F29C3BF0CE289A1C3ABE29480734C372CCE930DCE93C3964D4BCF84E2959D4F1C616549213E271E37CEA6C3A9E29480C3855CC3B95D7ECF805C7258CEB1C3961123C2A2E282A727C38410C3AFC3912EC3BBE29597C3BFC3B20DC3B278C39C38C2ACC2BF1ACF830B39C3B915E295AC5BC2A3E295926AC2A5E295A1E288A9E295945F182A682B19C2ABE295991A46024B4822051132CEA9C2BFC3A10A0B31E2948C35524CC3B1CE983CCEB5C39F1F72E281BF2972E29594CEA3C2ACC387C3A6630135C2BFC3891C3FC2B01FE281BFE282A7C2A159C2A3C39C74C3B44271C3A1CF84E294BCE295A23F46C3BCE296905DC3A1E29592E29691CF86E288A963E296886EC2A500E296A067CEB14ACEB4C2B06B4D60C3B7C3B4E28CA04647C3AF1E0103E29688E29494E294BC7547C3B4E28988C387E295A61D60E289A149C3B90CE29594C3A6E281BFE294A4C3A46211783FC3BA6FE295A903C39F5B20E29595C2B5E295ACC2A17DC384E2959907204BE294825AE2959B010E0EC3BCE296921265C2BB7BE2959DE29597C2BB7B6EC2A0C3B7E294A4CF84E289880338E2959372C38952C3B601E2889A00000006624B474400520052005251E29590CF86E295A5000000097048597300000EE2948000000EE2948001C3B22B0E1B0000000774494D4507CF8301040A170EE295ABE289A4E296933100000FE2959B4944415478E2948CE29590C2A27B705CE28CA175E2959F3FE29490E29680E2959C7BE28988CEB5E295996B69654BE2959AE295AAC386C3A01F60E295A62F6C1E4321E2959E0243C3BF4C0225252F08C2A1274327C3A0E294A433C3B1CF864049C3ABE2959974CEA6342109C39640E295A5E294AC3478CEA9065A08C3AE3D1962426D631BE2889E502CC3A2E2959F18E29490E29692E296922DE29498C3BBE295A17AC2BCC3B1E2968CE2959C7B5FE29490E296A0E29692E295ABE2959EC3BB2D696D690D67C2B5E295AC48C3BAE295A357E29490E289A4C2B2C2A5E289A43BCF847B7ECF84082A20E29593E295903713C3BB5207CE93E2949464C3A119C3BF05E295A0001AC3875A2005C3A4C3A257C3A8402F7002C2B018E295AA0BE2889E02760047C387C3BCC3B3E288A9E29597C2B5C2A26FC384E288995AE294BC587D282D04C2A54BC3BBE2959A40E29692C3A0E29494C2A1E29494C3ACE2949434C3B6C3A829C3910CCF8379E294AC775DC3B6CEB4C3B37C1FCF83E2889AC3914548597A741DE28C90CEB4084D5308610B2172E29494016013E289A1E29490402BE295A85BE294827EE2959CC69251CEA9E294820140E2889A0D3770C39669CEA9E2949414CEB14FC3BCE2959751CEA92ACF83E2889A71E295A7E295A2C3A0C2A2E295A7CF80C2B57278C2B2C2B2C2B0E295A31CE295A975E294B4E289A4E29494E2898851C3BC124208C3891234C2A104422CC3A5C3BB48C3A1E2959F62CEA6E295A428C39C612821650E217601E29490055E050E1FE294822CE295967EE289A4C2B54F07C387C3B610E28CA0C3B676E2959D11E295951FC2B0E29591526AC3A85F2CCEA9765F1F7657175E6F2FE295A9E2969320E295AACE980B162911C2AAC3ABC3BB4A6154576324C3B4E2959A70E295AA15421C015E0056001F57C2A15FE288A9E28CA15CC3B1455C14007E4B0B02E2959E035F071E52E2959B7FC3A05B28CEA6E294BC4C06C2BAC3BA037F6000E2959EE2959A443F59E28C9040E2959ECF80C3A4264E24C2A34EC3BA4722E282A7C389723FE289A134E289A1C3A9C3A91EE295A36E5DCF8301502D2D1AE2969100781CC3916E712DE295A6E294A43A3BE29692E29688E2968851E288993CC3B9424434C3A8515FC3855953C3A26EC39C1642C2BC037E00E2959D27E29593C2A1E289A42A0240CEB1CEB411CEB1C2BDE294943F2AE295A76BE29691E29591E29597C3A075C2B0307E5FE29680E295AAE288A9783916C3A64C624EC396C3A9397EE2959D12E295917E18C2B021E289A162E295966D17C2ACE296807A6BE2889E0070C3BB2C41172205E281BF3DE289A1C3A16B59E29594425B1B4E5B1BE295A9E289A4C2B03445681AC3AD49C3B4C3AA4CC39CC3A46EC39CC2B2E2949433E29494E294907A4AE28CA1CEA9CEB4E295ABC3851E006FE2959412C3B11013C3872750CEA95EE29597E294903FC2A33F7408C2BBC2BDCEB4E295A5E288A9C2B730E29593C3A15557136D6CE294804824C3A808C2B11BCEB1515FE28C90C3B4E2948C0820C3AA3276E2959B06C2B0294A7DC391E295AAE2959913E295A9E288A9E296805F3ACEA33EC3A222CF8071C3B3E29599C2AA61C3AE1FE288A908215E021E76C3B23A191A060439C2A3E295A70766C2A0044A7DC391E295AAE2968C1DE295A9CF86E29498E289A4C396551EE294941F1820E29596670FE294BCCEB5CEB5C38952CEA91ECEB1095DC3AA54E2889A0D375C3800C3B9C396C2AA09E281BF2D4AE2968C57E2889ECE9809CF83C3B7CEB545150A7CE2959345150ACEA3E28988CEB5E294BCCEB5CE9809C3ADE29598E2959CE29494E2968005C3A777E288992E10C3A4E295916F00E2949070C2B7E2889AC3B403E2959777CF80E28988E28988C692C3ACC3B7301F1CE295ACC2BB14CEB1021E600724CEB1E29598CF8004C3851B7C5F05E29680E295A503E295A5100FE289A5E2889E08C3A1C3B2C39F0EE296922BC2BBE294804826E2889AC387E294900156E282A72F44C3A821C386C2A305E29494E295A6E282A7654DCF86E29680E29597172FC3B439C2B27737602BE2889A00CEB43C1F4B07C2BC67E281BF19E295A9E2948C01E29599E29594046CCF8408E296913FC2B0E29498025C5D4724C3B4C3894A214D13E294AC61E294A4CEB17D00E295A77551E294982CCEA9C2B07126390E4BC3BC3F09E29494180E6C2DC2A526316306C39C691E04CEB551E296916D70E29693C3B1C692E288994BC2BFE28CA0E294B414E289A1E29595E289A5E2959DE2959E7C7B7BCE98E294A43F63E295ABE29680017EE282A748105AE29691C387582C76E29593027CC391CEA6686B63E295ACE295ACC2A5E29684C2AC14E2968C6750E295974EE2949C404DC2A54AE294A4C2ABC384C3A5E295A62E63E295ACE2889EE294982CC2A1C2A125C3A64810C3AC46C3AB44C3BA18C2AAC3AB611868C3ADE295A8E28C90E295A1CEB103E295A2CF8461CF83E289A4747775E2969273E2959F0EE282A77FE28CA1555AE296807BC385654A31791810E2959DC2AB2EE289A5CF86CF86E294801B1A1AC3A0C2AA3D2ECEB1E296A030E28CA016C3A7E2969300E29592E295A522C3BC6FC3ADE2959853562613E29594E288A9E2948C55222FC3BC7403C38548E29594E29592C3853DE2959EC6922F5B4632C3A638E296887AC3B662E288A9CEB5E2968C3CE289A5E2959A237CE294A4772FE29482C2B5E295A7C2BA79C2B774C2AA5D7925C3B41B1AC2BFC2A1C2BDC3BA66CE9344C386E28C901421E2949C406A1A52C3AA12191223C2BA244A29E2889E62C3A60FE295966FCF84673FE296A031E2948CC2AC553CE2889EE2889AE29598C385C389274466E2959022C3864E1710CE9361CEB159E296926EC2A57FC38405E2889E58E294A4C3AAC387E29597C2A0E295A1572C460A47C384C2A3C391E281BF29003A274E64714B0BC3B93534C2A3E289881F362F5CE2959A35E289A4CF84E2948274CE9852CEB55FE295A2C3AE543AC3ACC2ABCEB468E295915E527454C39F5E10364DC2B55D730DC3857DC2A0E2889A7CC2BB50CEB1C3B2356BC2B0E295A6330A0BCF84C387C2B5795847C38460241211E2959034E2949003E281BF61E2959FC3B345C3A7C2B56CE2968C7A7614684E2635CEB13ECF83E2889A33C2BCE295AC4EE281BF6CC3B7E29684300308E2949CE2949408C3A7C3A70E45E282A747674F0FE295AB5C771DE295A1C3B426614622CEA6C3ADE295A8C2BFC3B23FC2A2244AC2AAE295A7C39CE294BCE2959CE29680E281BF266F4949E2898848C39F31C2A2C39170E289A524E295A9E28988C2BA03E289883527C3B4C2B75961E29691C2ACE294A4E29595E295A6C3BC7B3DE295A6E295A5CF86C3B7C3B7C3AFE295ACE289A50A0303CEA3E289A579E295A5CE987459667DE295A420681ACE98741A4FE29599E2969147C3B71DC2A3C3B7763CE295A6E295A5C3BC7BC3BCE295A603C2A54B0074C3B278C2B2C3B9C3B652C3ACE294BC4C063FC3B9E29597CEA6C3A0CF83C3A277CF80C2B178E294BC637EE2959A34E29594E29592E29598E296913FC3AA36E2949C5A413EC385C3B2E29594C3A1C3B66A00CEB50C743ECF860249CEB1E295A77CE296880EE294981D1DC3BAC2BD075A160228CF8351C3B2C3B22B67E29590CE931B0F3EE2959AE29599E28C90145BC3A7E295944D4EC2BAC3B71D1DC2B0E294BC6208C2B072C3A133E296937FC2B162C3877940E29482E2968CE295AB37CEA954E295ABC3B73C7C29E295A40DC3BACE930024E2959FC385CF842F1E78C387E296881F7AC3AAC2A0E295A8753AE295A648C3B2CF865242371B5830E29691783132C2AB691AE2969154E288997EE29684CE98CEB5E2959BC2B0E289A5E29592E28C90E295AA6BE29688CEB1E2889A48292F49CEA9C2A24AC2BAE28899E295A5C2A577E295A53573266D23C386051FC2BAC2BD0BCF837971CEB1E29593C3BFC2AA6912C3AA0137C2B7E294BCC3B374E29597E2959747E29490C3B3C3A1CEB179CE98C3867FC3A0655978E288993CCF83E295AAC2A3E29688E29599C3A26FE2968812E2959509C3AA4BC3A11EC3BFCE98140AC39102C2B56845E29599E289A1C3A0E29494E29490442038C384E2949C3B5BE295A2507FCEA610C3B9C3B9C3A2C3B965C39FC3B64A77E29599C3BC7A09E295A041E28C90E29595C3B9E295A6C3ACE29594E295ACE29594E29494E289883DE2959FE295A32400E295AAC3BB456B6B2BE295A14A112AC3AF33E2889A78E295A31C281507C2B548CEB12AC39154E295AA1DE29480C3B72E56E294AC52C3A9CF84615F2200E295A068C3B6E29597CEB5E29591C3AF771A1AE295AA14E29691E295A011E2968C606000C3915418C3BF25C3BC19E295A9E289A4E294806862C2A0C39662C3A4E2949C2004E294BC62C2B1C38600C3A1CE983AE295967EC39F0BE29684E28988CF866FE289A4C3B3C2ABC3B429E2959F087239C3B6CF840960C3A5041A7DE295AB45C3ACE295A4C384C396C3A6080A285CE294ACCE9349241663C3B7E29684E295A3E28CA02512C3B653C3BF57C384C3A25FCE9339C3AC12C2BF3D7D5D3516C3AFC3AB46E295A4C3B12477094B67E295A3E2959B3EE296905CE29597C3BB2B7A7BE28C902E33520544C2BB5602CF80C3B2E288A9C38559CEA6324CC3B4C39C54C3A86C6FE288A9CE98E295A6E295A7E295A94641E294BCC3B7E29593567EC2A0E295A54BE29684E28C9014C3AB320FE294AC606D2909C3BF4AE28C90E2959917C3B2E2949CE282A7E289A1C387725D5C77CEA6E295A05B4849555515470E1DC3B36859657D77E294A400CEA306067072E295A311E295A66467E2959B130010E295A4C3BB4FC2A5C2B7E29595572848E29597C3BA634406CEA603C2A2E289A579C3AEC2AA26C2AA4DC692C384005CE29688E296A0CEA32916E2889968E296803E56C2BC5CE29594E29597E288A9E2959BC3AF675968C39C467AE294AC044A09CF84E295AAC3AF10C3A9744D0D5DC2B2C2B26C79CF841DC2AB034664215262E29598E29593C3B3472208E29592E295A5C386E29482E29482E29498CEA6E29494C3B7CF86CF841440E295AC711D601DE289A1C3AF74C39CC2B7C3A00B1917C3AFC2A553113AE29598E29690C384E29690E2948C4AE2948CE289A41800C2B7C2BBE2959BC39CE288A92D5FE295ACCE93E296886E430FC3A02A66056FC2A15BE2959F3F7CCF866BE281BF34C3B4C3AD6924E295A874C2A5C2B0E29684E295A318E28C90C3B6C3910359C3B1C3AE5246CEB5C2AB01C3AFC3BCE2948C4CC3A50F5F7FC2A5E294AC79C3A8C3B33707E295A0C2AC0AE2959A01C2A0E2959C6D1B4FE296A0CEA647E29598E29592E295AB73E29592E2959D79635A18390DC387E288A9E29599E29498E295A4C3BCC396E29590122BE295A76CC3A164C3A6591DCEA6C389C39C5647C396CEA3E294BC00C2B504C3B25F35E294803971CEA94B26700FE289A1E295A4C2B5E29590E281BFE295ABC3A8153CE295917C39E29594C2B1CF80E2959F1CC387C384C3B77656E2959CC2B72A37390E5565C2AACEB4E296930440C3A704C384485D475CC3A1796A414171E289A13318E2959E34E289A155E2968067C2B22BC2BBE295A8C2B7E2959F3FC3842D4750C3A86C57172FC2AB5C49E2959FC39C35E296841E6C1065E29595C387E2959875C387233AE296914F68C39CC386C3A6C3AAE289A1E2959F281D1EE2889E16E29482C3BCE295A7E295A1E29596E289A4E289A5E295A62FE29482CEB1E2948C6B495557C38510C3917C06E296935972E295A31C42E295A952E28CA0097CE2968CE295966D1CE295ABC3915028C389E29594647873CF865AE295933CE289881CE296802D146828C3B9C2BB4422C3913E24E295AAC2BA03E29597C389E295A5E295A41209E2949C3D79E2969332C3961A701BE289A1E295AAE2948CE295A1E2889EE295AAE295A2C3AC1B6FE295A30531C3B6E295A629E294BCE282A71D3BC2B0E29498C3B44F72C2B0E295AA31C3A4C2AA21E295AC0000E29688E2959E735DE2959D5C0EE288A9E2948009267776E289A5C2BF522CC3A9E29693E2949CC3A1C3BB48C387C3B60EE296914B073E1042CEA3E28CA158E295A0280A51C3A62B6F1170E295A7456D6DC2BC79CF8635165E7F3DE295A44462E2959A13E2959CCF86CEA651E296905CE295A1C3A80772392607E295A94B3EE295A3260B05CF84E295A6E29595E29494E294BC120C73E2959479E282A70350C3AFE2959F1142CEA3C3BC1D3A701038C3B347C3BA29110EC3854D4D60082B68017EE296936103070F1C60C3B7E281BFE28899432652E2959967E295AC64CEA9E2959D794CE29684E2959DC39625C3A2C3B61B6D0C11C39F307A340A70143828C3BC7ECEB16DE2959034C3B2C3BB4C562C6313E294945540E29590E295ACC2A5C2BC7FCF800DC2BC61C2B7C3ABCEA92EE29490C2A3E296886EE29490C2A5E296804B492FC6925CE29595C3844500C3B2E2959424C39C692A6033E295A8273DC3911C60C2A1C389E2969310C2AC702D3F05E29684CF86E2889AE2959DC2B0E281BFE289A4C2BC5DE29482C3A5CE9310C3AE311C0E73E296881D77707CCEB55CE296902FC3BAE2948C7B016923463AC3ACC3B6E295A502E29593C2B74A39E2948C3F1D3AE29480E289A5E28C90537B11CE93C3AF42E2959926E295AA5D5D50C3AD62C3A504CEA9285D5A3EE2889AE294B407E2948062311AC2A2C39C080F2EC3AD0B4132C3B2C3B3E29597E29597C2A2E29596376ECEA3C2B772E295A5E2968872E28CA0C38544C3AA3634200D633FE289A1E295A772C2B2C2B7010D60E28899E29598E28C9016502734CF8606E295A771C3A4E295ABE296885B312B30C3A90331E282A7E29594E289A1E29684E29597E288A9226331663537131A5446E295AB75C2A57834E295A96FE296907EC2A2C2BD3219CEA9E2959FE2949405C3A9E295933A5F08C2B16BCEB1E295A11F1C3ACEA34BC3876EE2968876C3BCC3B9C3A4C3B61DC39FC39C1A44C3A06BC2B771CEB1C3AFE29494431D1DC2BC78C2B769E295A26EE29498722E7516C3A9C2AACE98E29599C396E29593E29684E295A0CEB5324B5DE2949CCEB5E2959B6110E282A7300121CF8349CEB17FC2B7024A2B01C3A9E282A7E295913DE29494CEA9502CC2B5C3A7CEA9CEA92AE295ACCF800D4AC2A5E29598E295AB1E3CE2959AE288A956C2BBC2AA70E282A7C386C2A319C3ACE295A53C7B36E2889AE2959F00C387506D2DC3AD58E295A0075603E29597E2959F6DE2968478E2948C2D4BC3A042C391C3A8E29494E2948242E29599C384C2A2E295A1E295A1C3AA48C3B1CE93204429757AE294A46EE2968CE295A9C2B1C3B7C3B7E289A4E296915649753AE29590E295945102202211E295A0E2948C5AC3A4C2AAC2A500E282A70B743D1BC387C3A1C3B26C27E2969142C385E294BCE29684E289A1C3B62915C3AC08C2BA426323CEB1E2889EE29688E2959FE295A4E2949CC3A7E295A749E294AC4E152E46E295A10A21084FE282A7C3AE1EC3AFE295A3C3B6C39CC2BD77C2A3E294983677560275E295A0E296931CCEB1E29680C3A010E288A9476A6AE295A8274CC2BFE2959515540355E294982CCF8647C385CE930DC2AC4BC2B7E2959BE295A7C2B163E2959FC2BFE29597C3873477E29691CEA6132660C3BB7C7F3BE289A16FE2968CE295A2CF860CC3844CC2BA25CEA6E2959C6F037E280DC3BA3B3A650AE29693E294ACE295ABE29684614A2324E2959FC3841FE2959F1B741066E29597E29591687DE288A93D6631C2BFC396E28C90E29684E296911BC3AF11C3963205E2959030E2959129E28CA111E295960DCEB5213E27C3A016CEB4E2959329CEB10DCEB1C396503C5EC3AE343555342A48602270CE93CEA651E281BF332CE29494E296926DE29690E29690E29595C3A6E295AC6DE29688C3BF7B1116200CC3A2485313463C6E03E2949004E296A010CEA6363C00001FE28CA0E28CA115C3BCC2BA106275E29595C2ACE295A933C2A2C39C10E295915E3100C386E29494C3ABC3B427712C0BE295A77519E2959A6659E29490660D3F7FCEA929CEB5E2889EE2889EC3B1C2B142C3B2E295AB75E295A0C2AA26E294ACE29592E295923E42C2BC06E282A73A6659E294BCC3ADCEA91ACF84E2959AC2BBC3841DCF80C2B1E2959EE2959EC3A91062C2A21062E282A71EC3AC36C2BF50C2BFC3B620C3AC315B144017E29691E295A9E2898831E2949C61C3B7CF86E29498E2949C0B2B57E289A5C692E295A73CE2949CCF843FE281BFC3892F437965C2AB53E29680E2959934E294AC4D4D44CEB4CEA9C3B6E295A8E294A44DE29494777CC391C384C3ACE29688E294A469E2959AC2A03F7461C3B3C39145C3AA12C3A7794E79E2969075C3A01327C3A4E28CA1E295A4476376C3AF744AC2B7C387E29680016BC3A270E295AB4CCE98CEB5E295913908C3B2652B1F0A61363511E28C90C2A15542E29599E296A00FC2B0C3BBC3A95DE289A53CC2AA5F36E295970C40C3BF05E281BF52E28899E296A00D5626230B070EC3AE79E29680E296910BC2BAC2BBE295A14C4E376D5E50C2BCC3855C7105663ACF860B29E29596007FC39160CF8470E295A9C3B94DC2BB0310C2AB00E282A7544A7DE29690CE98CEB40BCF833FE296A0C2B0E294823133706A56C3A1C3ADC3BC5032CE9808215E07E2959BC2BDCEB1E2949448E295A95F507D21CEA621E282A7083C0A2CE289A42C2B51387E1CE29597C2A10D65E29688C692C384CEB5C3A5C3BC316912C3A6E295913AE294A4E295A5E294A4E2959AC2BBC3BC7F51E295A851CEB500E29592052559C3A0E294BCC3AF31352D0AE296840D3CC2AA7C7FC39CE2968CE295AB27C2A1C3B776E29684E295ACE295AC31E29597602DC2BAC2BCC2A1E295ABE2959860E29593E295AB6324C3B47E303DC3B704E289A15BE295A6E289A4E289A5C3A60D1B2ECEA610E2959BE289A16A74E28C90C2BA7826E289A13070E29596E288A938CF80E2889E6C56144FC2A3E29494CEB4CEA91AC2B1C3A5CE98C3B3775CE295ABE295A4C2ACC2BD09E295ABE2959362C3AE1BC2BA6428C3B6C3913444E288991360E295A7C3963DE29494150500E294945DE29693044DC3AA08E289A139CEB121CEB126E2968075CF80E295ACE29494C387E29691E29597E29597713319E281BF7C7EE28CA056C3AD69E2959A68143DC2A5E2959EC2BFC2AC2214C3852BE28C90CEB403E294945BC3B6660637784A15E295A919C3891A5300061DC389C2B12072E2968C07E29684C2BC7CE29490E2948C771CE29590E29590CF8370C2B7E2889A71E29482E294981218C38453E29693C384C3AD2E47C3A9E288996142C3ADC386E295A5CF80E2959E110A46686528CEA30929E29597C3870DE294944A60C3B4C3A9E296A0720EE29591C3A80230CEA6C389C3AE0405C6923B280D4F37C3BA5452E288997EE2959A771CC39F390EE2959B6D0F3F3C1DE295A00BE2959A504821C39123C3A4CEA60B58CEA91BE294941A60C2BBC3A9E294ACE294BC4CC3AB5614C3875372E2959E1479C3AEE295A540E28CA142CEB16A4A77C2AA33030228E295AC09C69225CEA9C2A1C3A9E29480702FE289A13EE29691C3ACE295A5E29480C2B06120E29596C3BAC2BBE295A7C6921BE294A4E295A3C385C3B2E281BF3F74E2889EC2A1E294B402E296840A110000000049454E44C2AB4260C3A9, 16, 16),
	(9, 'calendar', 'image/png', _binary 0xC3AB504E470D0A1A0A0000000D49484452000000E29599000000E295A00806000000CE98C3A7C3BBC3B9000000097048597300000B1200000B1201E295A5E2968C7EE281BF00000A4F4944415478E2948CCF86C2A53F72E296884816C3A77F524D301939E2889954C3ABE295AC36131D6DE2969355C3A94E60CEB50904C2A5E29494E28CA0094C65C2A2C3963AC3BCC2BF1B5027307402C3B4C39F4643CF831BC389551B4CE2959E0DE295A828613514E2968C0D34E296A0E29691E2889AE2889AC2AC58C3BBE295A9044436E289A1C39FE2959C7ECEA66EC2A3CF86E289887BE28CA1C3AEC3A6C3B1E2969279495222692B69657EE295A7E295A0E295A75B01E2959FC3B147C2A3E28CA144C2AAC3ADC3B1E28C90C3B154E295A5C3A0CF8336E295A7C38616C2B5051C1364C3863433076D5071E2889A1773E2949433E295AC7FC38449E295A0322D24E2968C78E2948CE295AB2D51C3A86312C2BD4C7349C6923DE288A9E289A4C39C08E294BC31C3AB4DC2AA44E295A5E2898806C3B7E2889A623AE295A6E294943169C2A5E289A4C384E296A0CEB5C3B1C3ADC2B25EC3BFC3B402E29684493926C2BA29E29599E29595C39F2B2CE2959533CE93C3BFC2A3C2AA4C00E2959A0400E2959A04C3874C00E2959A04C3874C00C3874C00E2959A04C3874C00C3874C00E2959A04C3874C00E2959A0400E2959A04C3874C00E2959A04C3874C00C3874C00E2968C62E29597C3A1E295A944C2BB2B7A0E3DE281BFE2968C4B4FE2889A39E29480C3AFC3B10DC3A736C3A863E2969332C2BBC3917AE29691C39CE2889E31C396C3A8153DCEB42C4608E295A8164FE295A917E295A75CE28CA14DC2AAC3ABE289A5E294BC03C3A6084EC3AC7B13007A21532ACE98C3BC630227E295A05AC2BB0F1768C3AC7344C3A940E2889A7FE295A6E295A2C2A06859C2AA312241405CC3963E542769E29690E295A9180D10121FE295985275E29596C3AA4C1344C3A940692D3A15C3A66929CE9813CF860EC3BCE289A5C2A25A284614C3A629C3ADE2959C21605A39E29490E295A7C3B2171EE29595C6920421336E4BC2AA216D0DCEB12FE295900300640240260064020064024026006402402600402600640240260064C3B30900C3890900C39600C3890900C3890900C39600C3890900C3960000C39600E29591CF80C3B91AE296883EC3A8CF8420413B7C0D5DC2AAC3A0C3B1C3AECF800CE2959A44C39C07C3874C00E2959A04C3874C00C3874C00E2959A04C3874C00E2959A0400E2959A04E295A839E29490E294A4E289A137E2959ECEA9E296A019501BE2889919C2B7C3B6E28CA0CEB1C3BFC2A154C2A0C3A6C386211DC3B4C2BF64C39C2B7FC3AE7CC3B9E29684E29594E295A7C3A2C3A9E29490E28988CEB1C3BF5DC2BDE296A030C2ABC389C38409691E007D26004026006402402600640200640240260064020064024026006402402600402600640240260064020064024026006402006402402600640240260040260064024026006402006402402600640200640268C3AA361E7636553FE282A752CF84C3A2CEB41E1CE2948215E2959F245EC3965601E295A15716E2959AE28988580948E289A400C38909C3873E13C3871712E295994F1BC2A2E29680C3853DC2B17D5B4A4557E2959A04313332E289A52446C39CE295A60AE2889AC2B04464C3A958194B4A254D245DC389C2B501E2959547C3A169E295A0022113C2B0CEA6C2A04C4F31154326CEA6C3B44433495734E294BC5FC3AD340EE295A2CE985C26CE98E2889AC3ABC3A8C3B6CEA9E295A1C3A8C3AA4CE295A8094313C3ABE296A038C2B1687421CE98C3A7C3B1E295A31A1C46C3A04C702CC3915B49C2B71AE295A877C2B76CE2959B53C3A94CE295A81633C3B4E295A5C3A058C3ADE2959730E296806DCEB57BE2959F1420CEB16D5AE295966C30C3915B2B1F2D5EC3AE6AE2959AE29690795F313AC3B3C2B0E29596C3ABE295A7E289A4E2949844C2BFC3AB3CC3AC60472628C692E294944BE295A7E295A4CEA6E2949808C3B4E295946DE294807DC3B74EE2948C3936C2A0C2B72AE295945FC3BBE295A5E2959BE2948CE2949CC3BBE295ACC3B7E2889A7D62E294ACE282A72BE295AB0A674A02C2B2C3BA5CC3B1C3BC27C3BC16667FE296880623CEA6E29480E2959D7CC3AB756B3E377D26C2BF4C6A2EC2AA7544E2948C497AC3B6E28CA0E294B4C3AAE295A3685024C3967D2FC3AE4C1F24E2968CC2A2E295A750C3A707E2959916E2959A04C3B2457AC2BF29E295A4C2A5E289A5E2889A50E28C90E29591C3963DE29597513E1A63643EE295A6C2AB2BC3ADE2948CC389692669E29680C2B1E295A6573AC39C05E28CA05DCEA9C3A8E28CA064C2B730E29482C3A5C3BAC3894BE294A4C39C19E28C901EE2959710C3A8E2959A146FE29692C3AD6A69C2B0E294BCE28CA0C3B9E2959C55E294B41AC3892A35C692C2B1C391C3A5501364021BC3A6E29693C3A87DC3B1E2959FE295A5C3B77D2733C692E28CA1E2959BCE93C3B70B390E4142C2AAE2959518C39CC3B4C3B1C3A848E29596C2B5C3A8E294903DC3ADE288A9E2959735C2B2E28C90E296880A7DE28C90C3BCE289A5C3A8CEA310C396CEB11073E295A3E295A77AE2968C49C2B7C2BFC39C65CF80C3845928C2BB32E295910A7561C3A44226C2B04BE294B4C39FC2AAC3A948C3ABE294AC581A6C65C3A8136BE2959FCF86C2ABC3B61736C38909247312E295A3161CE2959366E29597C389E29593E295AAE29688C39CC3AFC3A2C2BD505F6DC2B74FE2959A1407C2ABC2B2C3B1C2A5E289A56AE2959336E29494E295A2C2BF2AE2959802C39620C3B2E2968840E295A422E295A1E2968804E29684265B73E2969270CE98435D2A2F66E2959D0B035DE2949C665821E2959C4B1B4CCF86C3A851CEB1C3AB5EE295ABE2959E5B75140137C2B573E281BF70E295AA66C2AA2343C391C389296CC2AAC384CE98E2968CC2A51CC2AC570E424FC3ACC3B1E288A9C3AC487F36276AE295934151CE93C3AFC3B16FC3BBE288A91FC3BFC3AF534AC39C175F54C39C3AE2959DE2949038C3AD7D47C3B362E295A2CEB5E29692E28C901D57E295A907E296882E3A68C2BAE295A3E289A5C3AD51E295A2E29684282FE295A0201351CE98E2968C7E52E2948CC387E295A0C396E29684C2B547E2968CC2BFC3BC19E29691C3BBE28C90C2A14BC2A069C3A54C44C3916327C3A7E288A9C3A9E2949C5CE29592465A7C560B2B091D2848C3B1C384E295A5C385C389290E52C3A71379E2968C5034486A6C3BCE98C3A1E29590C3BB26E2959275696364C3A824E294BC6BCE93E2959C2EC2A3CE93622CE294823ACF86C3A54CC39FC3A638C2A3E2959AE294BC1A0DC389C3B4E295947E2EE29598CEB16D7442C2AA3053E2959D26C2ABE29480E29692CEB1C386E289A54EC389296C6CE2889A1B6BC3B3E295A541560E7DC2BA4F2A4DE295A440C2AAE289A144E296932D3CE295A0692EE29490E295A409C396E294ACCEB42FE29498E29693C3B1E295A3C384E295A2E29590E295ACE295A1E29590C3A6294EC396E282A714C2B5C3AA70E296804211C396226528E2889A59E294A444257F6D34C389E295A3E29594C3AE4CC3B17850E29490C3ACC38929306CC3A7CEB1C2BC49C2B1C2BC794626643A46465359C3B42153C2A3C3AE2CE29680E29596C3B3E28C90C38909C38473C3AB4CE29690E296926DC2BD013271C3A9E29494715CC2B7C3BB63640AC3A2E29480E289A57D3BC39CE295A919E2968822E29480C3893520C3AA4A7D2455C2B2C3A738C2BBC3B6C3B9E29596E29482E295A23E3432411FE295A350C2B2E288995057E295A967CF863EE295A9C2A0C3B6E281BF43C3AE48E289A420746E546FC3AD16E29688E2959A366A2332653D68E295A8C3ACC2BAC2B22C7AE289A17D36C2B05159C2BF46C3855D5B3265C3BC1CC3B605CF84CF83E29594326DC2B73C24E29590C3A258C2BFC2B75476E29688C3A6255B64C3A9C3BF482A6C63E2889AE29691E294821532E294BCE294BCC3AA2620E29590C3A2C6925C152DE2968077415335C3BBC2B5215320E295950C7B213AE295A3C39178E295A26B6A64E2959A140E2FE2959BC2BBE294A41147E289A14A6DC3A04CC39FE29691CE98C3964C4F3D6BC6922AC3B4226DE29688CEA919C396E294AC22E294827C5FE295A5E295A5CF84CE98E296885262553EC3856D5B6DC38929E295AC14C2B5C2AC45E295A36F7BE295A536E295A7C2AC76E2949C3D71697B64C3A8E294823FE295A8E29593532616C3863E4AC2B777E2959FCE985DC3B2E288A93BC3BB43C2B141C2AC37C2A3682E16C2B5CEA61B7F4AC2B7E2959252C2AA65C3AFC386C2A04DE295A53F24C2B24BE295A5E288A9C2B533E296A069E296A0C2A0E29490C386E296A0E29599E295A8E296805EE29593483753E295A6E28988CF86C3A80BE29498E294987EE294904FC3B63F0211CE936127E2889A3BE2889AE29692E29693C3A6E2968C7DE295A3C2BA22E289A5C3A6C2B5E294BCE2959440E2968C3C50E2889E5448647FC3A23B2B7E40C2AA78C396E295A504E295A1533CC3B2E29599CF8373C2B73DE295A4722546431C62C3B17CE296A0C3B40D6BC3B2CEB5E288A9C2A5C3AFE295926A62664613E29598C3A8E295AAC2A057E2968438E29688E288A9E2898845C2BFC2B7443B46E2959407317BE295961CC3B2E296A07078C2A06FCF83E295A0CEB5E281BF6DE2969007E295A4E29692C3A1092A45CEA9E2959FE295965DC3B1223249C3B7C3914008C3856BE29692067922E295965B441FE2968076C3A6E295A9E29592E2959DC3B6732ACEA9CEA614E2889A7D27C3B9C2A2E29597E295A73A506B28E295A6C3B649E29591CF84E2959DC3A8C3860BE294BC5DC3AEC3BFE295947EC2A1C3B777E29599E294B472C39C57E2959B4AE2968C707E45E295943F23E2889E3FE29597C2AA77E295A77A6700E2889E21C396C3B1E2959D3CC2B0C3AC732B3A76C2B544C3ABCF8376E29594E295A8E295980A060EE29688E2959D5BC2B23C3FC3863F7E505EE29692C387781844E295987F1AC39CC2ABC3ACC3AF48E289883A721BC39FE2959CE2959A5466C3B17C1C574227E28CA164E28899E29597E2889E46C3B417C2BCE29590C2B10E7974C3AECEB4E2959CE29592C2A571615B4726C3AAC2BB5F10E295915055CEA9023FCF864F32E295A8350E32E295A3576A2FE29590764344E295A5C3BA2C0A3344C2AAE2959558E29594C2A1041C52C3A42AC2B748C3AC7D7F22535C4CCEA3E296A0E28CA0E294944BE29599CE983ECF8325E294ACE2959E1545E2948C291FE295A060752141C2AAE29595E295AAC2BFE2948CC3B1E29494C3BCC3B11F3AE2959039506945C3A664E2959BC2BBE28CA16D0264C3A8E29482C2A05475E29592C3A16F66E2889AE295A4C3ABC3B1754B490F722B7F177CC3A6CF80206064C3A8C3B4C3A0C3B1E29597C3A8E296885EC396C2BD75C692C3BA546AC3B370E295926945C385C2ACE29691100B0508C3B1C2AC3374E2889E45E2889938E295A1454FE2959B4F6224E29595C2BCE29692C385E295A9E295A7E294944526C2BF2B541FC3B14AE29590C2BDCEB502C2A2E295A11E26C3AC4C5074E294A47DC3AEE294BCE2968419C3ADC2B56A7EC3B7CEB5C2BF24C3A6C3857978E295A1C692E295A9C3844C50E2959BE295913F78E29684E296805A79E2969262297F130F13E289A4C39CE295984CCF83E2969072CEB423C2AC2213C3B629CEB5E2959F0C1AE295AA7731C3AD6E5BC386C2BDC2B0E2959CE295A050C2BBE28988E294A4E2959E2602C3ACE29592E295A01ACE983B23C2AA17E29498C3A60974CEB1645EC2ACE2959C05E296A0E29597C3B358C3A2E296845B3A4A691CE29690E2969335E28C90E2959817E295A3C385C3BB3815CEB54CE294A4E289A4E2948CC2BB2332E294B4E295A73AE28899C3AFC387C3B3E29598E2948CE28CA00D1BC396E281BF4864C3A9636C4CC3B6E29591C3B2C2B2633EE2889AE2959AE295AC7CC3A7E296921AC2A3454C6402C3B9E2959BE29598E29598E2959D062724E295A45C2D3DE296A008C396C3A1C2AC54E28C90C2B7E29597E295AC62C2BD122113C2B020C3B2C692C3A6073EE2889A447375341203C396E294940723CF8365C2B5547E6FC2AAE2948C0AE294A4505EE295ACE2968074E2949808E2959A044DC3AAC3B2C3B65EE2959B53E294B417CF833759C3AFE295ABC2AA2F5F1CC396C3A1C3AC3EE29593E295AAE2959DC3A57A5DE29494717824C3A8E2959CC3B624E295944CE2949067C391E2949C23267AE2949CC2A0005A62C3AB43C3A2230A2A0000000049454E44C2AB4260C3A9, 16, 16);
/*!40000 ALTER TABLE `workflow_icon` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_prerequisite`;
CREATE TABLE IF NOT EXISTS `workflow_prerequisite` (
  `id_prerequisite` int(11) NOT NULL AUTO_INCREMENT,
  `id_action` int(11) NOT NULL,
  `prerequisite_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_prerequisite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_prerequisite` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_prerequisite` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_prerequisite_duration_cf`;
CREATE TABLE IF NOT EXISTS `workflow_prerequisite_duration_cf` (
  `id_prerequisite` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  PRIMARY KEY (`id_prerequisite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_prerequisite_duration_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_prerequisite_duration_cf` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_resource_history`;
CREATE TABLE IF NOT EXISTS `workflow_resource_history` (
  `id_history` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `id_action` int(11) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_access_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_history`),
  KEY `history_id_workflow_fk` (`id_workflow`),
  KEY `history_id_action_fk` (`id_action`)
) ENGINE=InnoDB AUTO_INCREMENT=4277 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_resource_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_resource_history` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_resource_user_history`;
CREATE TABLE IF NOT EXISTS `workflow_resource_user_history` (
  `id_history` int(11) NOT NULL,
  `user_access_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `realm` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id_history`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_resource_user_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_resource_user_history` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_resource_workflow`;
CREATE TABLE IF NOT EXISTS `workflow_resource_workflow` (
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_state` int(11) DEFAULT NULL,
  `id_workflow` int(11) NOT NULL,
  `id_external_parent` int(11) DEFAULT NULL,
  `is_associated_workgroups` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_resource`,`resource_type`,`id_workflow`),
  KEY `workflow_resource_workflow_id_resource_fk` (`id_resource`),
  KEY `workflow_resource_workflow_resource_type_fk` (`resource_type`),
  KEY `workflow_resource_workflow_id_workflow_fk` (`id_workflow`),
  KEY `fk_document_id_state` (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_resource_workflow` DISABLE KEYS */;
INSERT INTO `workflow_resource_workflow` (`id_resource`, `resource_type`, `id_state`, `id_workflow`, `id_external_parent`, `is_associated_workgroups`) VALUES
	(841, 'appointment', 170, 51, 5, 0),
	(842, 'appointment', 170, 51, 5, 0),
	(843, 'appointment', 170, 51, 5, 0),
	(844, 'appointment', 170, 51, 5, 0),
	(845, 'appointment', 170, 51, 5, 0),
	(846, 'appointment', 170, 51, 5, 0),
	(847, 'appointment', 170, 51, 5, 0),
	(848, 'appointment', 170, 51, 5, 0),
	(849, 'appointment', 170, 51, 5, 0),
	(850, 'appointment', 170, 51, 5, 0),
	(851, 'appointment', 170, 51, 5, 0);
/*!40000 ALTER TABLE `workflow_resource_workflow` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_resource_workgroup`;
CREATE TABLE IF NOT EXISTS `workflow_resource_workgroup` (
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `workgroup_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `workflow_resource_workgroup_id_resource_fk` (`id_resource`),
  KEY `workflow_resource_workgroup_resource_type_fk` (`resource_type`),
  KEY `workflow_resource_workgroup_id_workflow_fk` (`id_workflow`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_resource_workgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_resource_workgroup` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_state`;
CREATE TABLE IF NOT EXISTS `workflow_state` (
  `id_state` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `is_initial_state` smallint(6) DEFAULT 0,
  `is_required_workgroup_assigned` smallint(6) DEFAULT 0,
  `id_icon` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  PRIMARY KEY (`id_state`),
  KEY `fk_state_id_workflow` (`id_workflow`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_state` DISABLE KEYS */;
INSERT INTO `workflow_state` (`id_state`, `name`, `description`, `id_workflow`, `is_initial_state`, `is_required_workgroup_assigned`, `id_icon`, `display_order`) VALUES
	(170, 'Non valid├⌐', 'Non valid├⌐', 51, 1, 0, NULL, 1),
	(171, 'Valid├⌐', 'Valid├⌐', 51, 0, 0, NULL, 2),
	(172, 'Valid├⌐ - Rappel├⌐', 'Valid├⌐ - Rappel├⌐', 51, 0, 0, NULL, 3),
	(173, 'Annul├⌐', 'Annul├⌐', 51, 0, 0, NULL, 4),
	(174, 'Honor├⌐', 'Honor├⌐', 51, 0, 0, NULL, 5),
	(175, 'Non honor├⌐', 'Non honor├⌐', 51, 0, 0, NULL, 6);
/*!40000 ALTER TABLE `workflow_state` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task`;
CREATE TABLE IF NOT EXISTS `workflow_task` (
  `id_task` int(11) NOT NULL AUTO_INCREMENT,
  `task_type_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_action` int(11) NOT NULL DEFAULT 0,
  `display_order` int(11) DEFAULT 0,
  PRIMARY KEY (`id_task`),
  KEY `task_id_action_fk` (`id_action`)
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task` DISABLE KEYS */;
INSERT INTO `workflow_task` (`id_task`, `task_type_key`, `id_action`, `display_order`) VALUES
	(428, 'taskReportAppointment', 247, 1),
	(429, 'taskReportAppointment', 248, 1),
	(430, 'taskUpdateAppointment', 246, 1),
	(431, 'taskUpdateAppointment', 245, 1),
	(432, 'taskUpdateAppointmentCancelAction', 236, 1),
	(433, 'taskTypeComment', 238, 1),
	(434, 'taskUpdateAppointment', 245, 2),
	(435, 'taskReportAppointment', 247, 2),
	(436, 'taskAlertGru', 249, 1);
/*!40000 ALTER TABLE `workflow_task` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_alert_gru_cf`;
CREATE TABLE IF NOT EXISTS `workflow_task_alert_gru_cf` (
  `id_task` int(11) NOT NULL,
  `id_spring_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marker_provider_ids` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demand_status` int(11) DEFAULT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `set_onglet` smallint(6) DEFAULT NULL,
  `message_guichet` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_text_guichet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name_guichet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_guichet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_agent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cci_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_account_sms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_group_sms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_broadcast` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  `days_to_alert` int(11) DEFAULT NULL,
  `id_state_after` int(11) DEFAULT NULL,
  `alert_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marker_alert` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alert_after_before` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_alert_gru_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_alert_gru_cf` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_alert_gru_history`;
CREATE TABLE IF NOT EXISTS `workflow_task_alert_gru_history` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `message_guichet` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_text_guichet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name_guichet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_guichet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_agent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cci_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_account_sms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_group_sms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_broadcast` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_history`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_alert_gru_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_alert_gru_history` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_archive_cf`;
CREATE TABLE IF NOT EXISTS `workflow_task_archive_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `next_state` int(11) NOT NULL,
  `type_archival` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delay_archival` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_archive_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_archive_cf` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_archive_resource`;
CREATE TABLE IF NOT EXISTS `workflow_task_archive_resource` (
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `initial_date` timestamp NULL DEFAULT NULL,
  `archival_date` timestamp NULL DEFAULT NULL,
  `is_archived` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_resource`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_archive_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_archive_resource` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_assignment_cf`;
CREATE TABLE IF NOT EXISTS `workflow_task_assignment_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_multiple_owner` smallint(6) DEFAULT 0,
  `is_notify` smallint(6) DEFAULT 0,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_use_user_name` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_assignment_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_assignment_cf` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_change_appointment_status_cf`;
CREATE TABLE IF NOT EXISTS `workflow_task_change_appointment_status_cf` (
  `id_task` int(11) NOT NULL,
  `appointment_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_change_appointment_status_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_change_appointment_status_cf` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_change_state_config`;
CREATE TABLE IF NOT EXISTS `workflow_task_change_state_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_next_state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `workflow_task_change_state_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_change_state_config` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_change_state_information`;
CREATE TABLE IF NOT EXISTS `workflow_task_change_state_information` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `new_state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `workflow_task_change_state_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_change_state_information` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_comment_config`;
CREATE TABLE IF NOT EXISTS `workflow_task_comment_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_mandatory` smallint(6) DEFAULT 0,
  `is_richtext` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_comment_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_comment_config` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_comment_value`;
CREATE TABLE IF NOT EXISTS `workflow_task_comment_value` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL,
  `comment_value` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_history`,`id_task`),
  KEY `comment_value_id_history_fk` (`id_history`),
  KEY `comment_value_id_task_fk` (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_comment_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_comment_value` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_manual_app_notify`;
CREATE TABLE IF NOT EXISTS `workflow_task_manual_app_notify` (
  `id_notif` int(11) NOT NULL,
  `id_history` int(11) DEFAULT NULL,
  `id_appointment` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_notif`),
  KEY `idx_wf_task_manual_app_notify` (`id_appointment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_manual_app_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_manual_app_notify` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_notification_cf`;
CREATE TABLE IF NOT EXISTS `workflow_task_notification_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_mailing_list` int(11) DEFAULT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_notification_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notification_cf` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_notify_admin_appointment_cf`;
CREATE TABLE IF NOT EXISTS `workflow_task_notify_admin_appointment_cf` (
  `id_task` int(11) NOT NULL,
  `id_admin_user` int(11) DEFAULT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recipients_bcc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_action_cancel` int(11) DEFAULT NULL,
  `id_action_validate` int(11) DEFAULT NULL,
  `ical_notification` smallint(6) DEFAULT 0,
  `create_notif` smallint(6) DEFAULT 0,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_notify_admin_appointment_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notify_admin_appointment_cf` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_notify_appointment_cf`;
CREATE TABLE IF NOT EXISTS `workflow_task_notify_appointment_cf` (
  `id_task` int(11) NOT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recipients_bcc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_action_cancel` int(11) DEFAULT NULL,
  `ical_notification` smallint(6) DEFAULT 0,
  `create_notif` smallint(6) DEFAULT 0,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_sms` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_notify_appointment_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notify_appointment_cf` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_notify_appointment_crm`;
CREATE TABLE IF NOT EXISTS `workflow_task_notify_appointment_crm` (
  `id_task` int(11) NOT NULL,
  `id_demand_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_status_crm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_notify_appointment_crm` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notify_appointment_crm` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_notify_gru_cf`;
CREATE TABLE IF NOT EXISTS `workflow_task_notify_gru_cf` (
  `id_task` int(11) NOT NULL,
  `id_spring_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marker_provider_ids` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demand_status` int(11) DEFAULT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `set_onglet` smallint(6) DEFAULT NULL,
  `message_guichet` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_text_guichet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name_guichet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_guichet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_agent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cci_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_account_sms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_group_sms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_broadcast` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_notify_gru_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notify_gru_cf` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_notify_gru_history`;
CREATE TABLE IF NOT EXISTS `workflow_task_notify_gru_history` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `message_guichet` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_text_guichet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name_guichet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_guichet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_agent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cci_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_account_sms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_group_sms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_broadcast` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  `code_event` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_event` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_event` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_history`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_notify_gru_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notify_gru_history` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_notify_gru_mapping_manager`;
CREATE TABLE IF NOT EXISTS `workflow_task_notify_gru_mapping_manager` (
  `id_notifygrumappingmanager` int(11) NOT NULL,
  `beankey` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `connection_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `mobilephonenumber` int(11) NOT NULL DEFAULT 0,
  `fixedphonenumber` int(11) NOT NULL DEFAULT 0,
  `email` int(11) NOT NULL DEFAULT 0,
  `demandetype` int(11) NOT NULL DEFAULT 0,
  `demand_reference` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_notifygrumappingmanager`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_notify_gru_mapping_manager` DISABLE KEYS */;
INSERT INTO `workflow_task_notify_gru_mapping_manager` (`id_notifygrumappingmanager`, `beankey`, `connection_id`, `customer_id`, `mobilephonenumber`, `fixedphonenumber`, `email`, `demandetype`, `demand_reference`) VALUES
	(5, 'notifygru-appointment.ProviderService.@.5', -1, -1, -1, -1, -1, 231, -1);
/*!40000 ALTER TABLE `workflow_task_notify_gru_mapping_manager` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_notify_reminder_cf`;
CREATE TABLE IF NOT EXISTS `workflow_task_notify_reminder_cf` (
  `id_task` int(11) NOT NULL,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `nb_alerts` int(11) DEFAULT 0,
  PRIMARY KEY (`id_task`,`id_form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_notify_reminder_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notify_reminder_cf` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_set_appointment_resource_history`;
CREATE TABLE IF NOT EXISTS `workflow_task_set_appointment_resource_history` (
  `id` int(11) NOT NULL DEFAULT 0,
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_appointment` int(11) NOT NULL DEFAULT 0,
  `id_resource` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_form_resource_type` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fk_wf_set_app_res_hist_id_hist` (`id_history`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_set_appointment_resource_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_set_appointment_resource_history` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_set_app_resource_cf`;
CREATE TABLE IF NOT EXISTS `workflow_task_set_app_resource_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_form_resource_type` int(11) NOT NULL DEFAULT 0,
  `is_mandatory` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_set_app_resource_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_set_app_resource_cf` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_update_admin_appointment`;
CREATE TABLE IF NOT EXISTS `workflow_task_update_admin_appointment` (
  `id_update` int(11) NOT NULL,
  `id_history` int(11) DEFAULT NULL,
  `id_appointment` int(11) DEFAULT NULL,
  `id_admin_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_update`),
  KEY `idx_wf_task_update_admin_app` (`id_appointment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_update_admin_appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_update_admin_appointment` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_task_update_appointment_cancel_cf`;
CREATE TABLE IF NOT EXISTS `workflow_task_update_appointment_cancel_cf` (
  `id_task` int(11) NOT NULL,
  `id_action_cancel` int(11) DEFAULT NULL,
  `id_action_report` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`),
  KEY `fk_wf_task_up_app_cancel_cf` (`id_action_cancel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_task_update_appointment_cancel_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_update_appointment_cancel_cf` (`id_task`, `id_action_cancel`, `id_action_report`) VALUES
	(432, 237, 247);
/*!40000 ALTER TABLE `workflow_task_update_appointment_cancel_cf` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_workflow`;
CREATE TABLE IF NOT EXISTS `workflow_workflow` (
  `id_workflow` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_enabled` smallint(6) DEFAULT 0,
  `workgroup_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_workflow`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_workflow` DISABLE KEYS */;
INSERT INTO `workflow_workflow` (`id_workflow`, `name`, `description`, `creation_date`, `is_enabled`, `workgroup_key`) VALUES
	(51, 'Workflow Générique - validation automatique', 'Workflow complet, générique avec validation automatique', '2021-11-19 17:51:33', 1, 'all');
/*!40000 ALTER TABLE `workflow_workflow` ENABLE KEYS */;

DROP TABLE IF EXISTS `workflow_workgroup_cf`;
CREATE TABLE IF NOT EXISTS `workflow_workgroup_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `workgroup_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_mailing_list` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`,`workgroup_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `workflow_workgroup_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_workgroup_cf` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
