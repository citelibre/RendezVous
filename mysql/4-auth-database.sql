USE lutece;

-- Insert database mylutece auth

--
-- Table structure for table mylutece_attribute
--
DROP TABLE IF EXISTS mylutece_attribute;
CREATE TABLE mylutece_attribute (
	id_attribute INT DEFAULT 0 NOT NULL,
	type_class_name VARCHAR(255) DEFAULT NULL,
	title LONG VARCHAR DEFAULT NULL,
	help_message LONG VARCHAR DEFAULT NULL,
	is_mandatory SMALLINT DEFAULT 0,
	is_shown_in_search SMALLINT DEFAULT 0,
	attribute_position INT DEFAULT 0,
	plugin_name VARCHAR(255) DEFAULT NULL,
	anonymize SMALLINT DEFAULT NULL,
	PRIMARY KEY (id_attribute)
);

--
-- Table structure for table mylutece_attribute_field
--
DROP TABLE IF EXISTS mylutece_attribute_field;
CREATE TABLE mylutece_attribute_field (
	id_field INT DEFAULT 0 NOT NULL,
	id_attribute INT DEFAULT NULL,
	title VARCHAR(255) DEFAULT NULL,
	DEFAULT_value LONG VARCHAR DEFAULT NULL,
	is_DEFAULT_value SMALLINT DEFAULT 0,
	height INT DEFAULT NULL,
	width INT DEFAULT NULL,
	max_size_enter INT DEFAULT NULL,
	is_multiple SMALLINT DEFAULT 0,
	field_position INT DEFAULT NULL,
	PRIMARY KEY (id_field)
);

--
-- Table structure for table mylutece_admin_user_field
--
DROP TABLE IF EXISTS mylutece_user_field;
CREATE TABLE mylutece_user_field (
	id_user_field INT DEFAULT 0 NOT NULL,
	id_user INT DEFAULT NULL,
	id_attribute INT DEFAULT NULL,
	id_field INT DEFAULT NULL,
	user_field_value LONG VARCHAR DEFAULT NULL,
	PRIMARY KEY (id_user_field)
);

DROP TABLE IF EXISTS mylutece_user_anonymize_field;
CREATE  TABLE mylutece_user_anonymize_field (
  field_name VARCHAR(100) NOT NULL ,
  anonymize SMALLINT NOT NULL ,
  PRIMARY KEY (field_name)
  );

DROP TABLE IF EXISTS mylutece_connections_log;
CREATE TABLE mylutece_connections_log (
	ip_address varchar(63) default NULL,
	date_login timestamp default CURRENT_TIMESTAMP NOT NULL,
	login_status int default NULL
);

--
-- Dumping data for table core_user_role
--
INSERT INTO core_user_role (role_key,id_user) VALUES ('assign_roles',2);
INSERT INTO core_user_role (role_key,id_user) VALUES ('assign_roles',3);
INSERT INTO core_user_role (role_key,id_user) VALUES ('assign_groups',2);
INSERT INTO core_user_role (role_key,id_user) VALUES ('assign_groups',3);

--
-- Init Public URLs
--

INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece.url.login.page','jsp/site/Portal.jsp?page=mylutece&action=login');

--
-- Table struture for mylutece_database_user
--
DROP TABLE IF EXISTS mylutece_database_user;
CREATE TABLE mylutece_database_user (
  mylutece_database_user_id int NOT NULL,
  login varchar(100) DEFAULT '' NOT NULL,
  password long varchar NOT NULL,
  name_given varchar(100) DEFAULT '' NOT NULL,
  name_family varchar(100) DEFAULT '' NOT NULL,
  email varchar(100) DEFAULT NULL,
  is_active SMALLINT DEFAULT 0 NOT NULL,
  reset_password SMALLINT DEFAULT 0 NOT NULL,
  password_max_valid_date TIMESTAMP NULL,
  account_max_valid_date BIGINT NULL,
  nb_alerts_sent INTEGER DEFAULT 0 NOT NULL,
  last_login TIMESTAMP DEFAULT '1980-01-01 00:00:00',
  PRIMARY KEY (mylutece_database_user_id)
);


--
-- Table struture for mylutece_database_user_role
--
DROP TABLE IF EXISTS mylutece_database_user_role;
CREATE TABLE mylutece_database_user_role (
  mylutece_database_user_id int DEFAULT '0' NOT NULL,
  role_key varchar(50) DEFAULT '' NOT NULL,
  PRIMARY KEY  (mylutece_database_user_id,role_key)
);


--
-- Table struture for mylutece_database_user_group
--
DROP TABLE IF EXISTS mylutece_database_user_group;
CREATE TABLE mylutece_database_user_group (
  mylutece_database_user_id int DEFAULT '0' NOT NULL,
  group_key varchar(100) DEFAULT '' NOT NULL,
  PRIMARY KEY  (mylutece_database_user_id,group_key)
);

--
-- Table struture for table mylutece_database_group
--
DROP TABLE IF EXISTS mylutece_database_group;
CREATE TABLE mylutece_database_group (
	group_key varchar(100) default '0' NOT NULL,
	group_description varchar(200) default NULL,
	PRIMARY KEY (group_key)
);

--
-- Table struture for table mylutece_database_group_role
--
DROP TABLE IF EXISTS mylutece_database_group_role;
CREATE TABLE mylutece_database_group_role (
	group_key varchar(100) default '0' NOT NULL,
	role_key varchar(50) default '0' NOT NULL,
	PRIMARY KEY (group_key,role_key)
);

--
-- Table structure for table mylutece_database_user_parameter
--
DROP TABLE IF EXISTS mylutece_database_user_parameter;
CREATE TABLE mylutece_database_user_parameter (
	parameter_key varchar(100) NOT NULL,
	parameter_value varchar(100) NOT NULL,
	PRIMARY KEY (parameter_key)
);

--
-- Table structure for table mylutece_database_key
--
DROP TABLE IF EXISTS mylutece_database_key;
CREATE TABLE mylutece_database_key(
	mylutece_database_user_key VARCHAR(255) NOT NULL,
	mylutece_database_user_id INT DEFAULT 0 NOT NULL,	
	PRIMARY KEY (mylutece_database_user_key)
);

DROP TABLE IF EXISTS mylutece_database_user_password_history;
CREATE  TABLE mylutece_database_user_password_history (
  mylutece_database_user_id INT NOT NULL ,
  password long VARCHAR NOT NULL ,
  date_password_change TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  PRIMARY KEY (mylutece_database_user_id, date_password_change)
);

--
-- Init  table mylutece_database_user_parameter
--
INSERT INTO mylutece_database_user_parameter VALUES ('account_creation_validation_email', 'false');
INSERT INTO mylutece_database_user_parameter VALUES ('auto_login_after_validation_email', 'false');
INSERT INTO mylutece_database_user_parameter VALUES ('enable_jcaptcha', 'false');
INSERT INTO mylutece_database_user_parameter VALUES ('force_change_password_reinit', '');
INSERT INTO mylutece_database_user_parameter VALUES ('password_minimum_length', '8');
INSERT INTO mylutece_database_user_parameter VALUES ('password_format_upper_lower_case', 'false');
INSERT INTO mylutece_database_user_parameter VALUES ('password_format_numero', 'false');
INSERT INTO mylutece_database_user_parameter VALUES ('password_format_special_characters', 'false');
INSERT INTO mylutece_database_user_parameter VALUES ('password_duration', '');
INSERT INTO mylutece_database_user_parameter VALUES ('password_history_size', '');
INSERT INTO mylutece_database_user_parameter VALUES ('maximum_number_password_change', '');
INSERT INTO mylutece_database_user_parameter VALUES ('tsw_size_password_change', '');
INSERT INTO mylutece_database_user_parameter VALUES ('use_advanced_security_parameters', 'false');
INSERT INTO mylutece_database_user_parameter VALUES ('account_life_time', '360');
INSERT INTO mylutece_database_user_parameter VALUES ('time_before_alert_account', '30');
INSERT INTO mylutece_database_user_parameter VALUES ('nb_alert_account', '2');
INSERT INTO mylutece_database_user_parameter VALUES ('time_between_alerts_account', '10');
INSERT INTO mylutece_database_user_parameter VALUES ('access_failures_max', '3');
INSERT INTO mylutece_database_user_parameter VALUES ('access_failures_interval', '10');
INSERT INTO mylutece_database_user_parameter VALUES ('expired_alert_mail_sender', 'LUTECE');
INSERT INTO mylutece_database_user_parameter VALUES ('expired_alert_mail_subject', 'Votre compte a expiré');
INSERT INTO mylutece_database_user_parameter VALUES ('first_alert_mail_sender', 'LUTECE');
INSERT INTO mylutece_database_user_parameter VALUES ('first_alert_mail_subject', 'Votre compte va bientot expirer');
INSERT INTO mylutece_database_user_parameter VALUES ('other_alert_mail_sender', 'LUTECE');
INSERT INTO mylutece_database_user_parameter VALUES ('other_alert_mail_subject', 'Votre compte va bientot expirer');
INSERT INTO mylutece_database_user_parameter VALUES ('account_reactivated_mail_sender', 'LUTECE');
INSERT INTO mylutece_database_user_parameter VALUES ('account_reactivated_mail_subject', 'Votre compte a bien été réactivé');
INSERT INTO mylutece_database_user_parameter VALUES ('access_failures_captcha', '1');
INSERT INTO mylutece_database_user_parameter VALUES ('unblock_user_mail_sender', 'LUTECE');
INSERT INTO mylutece_database_user_parameter VALUES ('unblock_user_mail_subject', 'Votre IP a été bloquée');
INSERT INTO mylutece_database_user_parameter VALUES ('enable_unblock_ip', 'false');
INSERT INTO mylutece_database_user_parameter VALUES ('notify_user_password_expired', '');
INSERT INTO mylutece_database_user_parameter VALUES ('password_expired_mail_sender', 'LUTECE');
INSERT INTO mylutece_database_user_parameter VALUES ('password_expired_mail_subject', 'Votre mot de passe a expiré');
INSERT INTO mylutece_database_user_parameter VALUES ('mail_lost_password_sender', 'LUTECE');
INSERT INTO mylutece_database_user_parameter VALUES ('mail_lost_password_subject', 'Votre mot de passe a été réinitialisé');
INSERT INTO mylutece_database_user_parameter VALUES ('mail_password_encryption_changed_sender', 'LUTECE');
INSERT INTO mylutece_database_user_parameter VALUES ('mail_password_encryption_changed_subject', 'Votre mot de passe a été réinitialisé');

INSERT INTO mylutece_user_anonymize_field (field_name, anonymize) VALUES ('login', 1);
INSERT INTO mylutece_user_anonymize_field (field_name, anonymize) VALUES ('name_given', 1);
INSERT INTO mylutece_user_anonymize_field (field_name, anonymize) VALUES ('name_family', 1);
INSERT INTO mylutece_user_anonymize_field (field_name, anonymize) VALUES ('email', 1);

--
-- Dumping data for table core_admin_right
--
INSERT INTO core_admin_right (id_right,name,level_right,admin_url,description,is_updatable,plugin_name,id_feature_group,icon_url,documentation_url) VALUES 
('DATABASE_MANAGEMENT_USERS', 'module.mylutece.database.adminFeature.database_management_user.name', 3, 'jsp/admin/plugins/mylutece/modules/database/ManageUsers.jsp', 'module.mylutece.database.adminFeature.database_management_user.description', 0, 'mylutece-database', 'USERS', NULL, NULL);

INSERT INTO core_admin_right (id_right,name,level_right,admin_url,description,is_updatable,plugin_name,id_feature_group,icon_url,documentation_url) VALUES 
('DATABASE_GROUPS_MANAGEMENT', 'module.mylutece.database.adminFeature.groups_management.name', 3, 'jsp/admin/plugins/mylutece/modules/database/ManageGroups.jsp', 'module.mylutece.database.adminFeature.groups_management.description', 0, 'mylutece-database', 'USERS', NULL, NULL);

--
-- Dumping data for table core_user_right
--
INSERT INTO core_user_right (id_right,id_user) VALUES ('DATABASE_MANAGEMENT_USERS',1);
INSERT INTO core_user_right (id_right,id_user) VALUES ('DATABASE_GROUPS_MANAGEMENT',1);

--
-- Init  table core_admin_dashboard
--
INSERT INTO core_admin_dashboard(dashboard_name, dashboard_column, dashboard_order) VALUES('databaseAdminDashboardComponent', 1, 1);

--
-- Init  table core_admin_role
--
INSERT INTO core_admin_role (role_key,role_description) VALUES ('mylutece_database_manager', 'Mylutece Database management');

--
-- Init  table core_admin_role_resource
--
INSERT INTO core_admin_role_resource (rbac_id,role_key,resource_type,resource_id,permission) VALUES 
 (206,'assign_groups','GROUP_TYPE','*','ASSIGN_GROUP');
INSERT INTO core_admin_role_resource (rbac_id,role_key,resource_type,resource_id,permission) VALUES (350,'mylutece_database_manager','DATABASE','*','*');

--
-- Init  table core_user_role
--
INSERT INTO core_user_role (role_key,id_user) VALUES ('mylutece_database_manager',1);

INSERT INTO core_template VALUES ('mylutece_database_first_alert_mail', 'Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href="${url}">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.');
INSERT INTO core_template VALUES ('mylutece_database_expiration_mail', 'Bonjour ${first_name} ! Votre compte a expiré. Vous ne pourrez plus vous connecter avec, et les données vous concernant ont été anonymisées');
INSERT INTO core_template VALUES ('mylutece_database_other_alert_mail', 'Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href="${url}">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.');
INSERT INTO core_template VALUES ('mylutece_database_account_reactivated_mail', 'Bonjour ${first_name} ! Votre compte utilisateur a bien été réactivé. Il est désormais valable jusqu''au ${date_valid}.');
INSERT INTO core_template VALUES ('mylutece_database_unblock_user', '${site_link!}<br />Bonjour ! Votre IP a été bloquée. Pour la débloquer, vous pouvez suivre le lien suivant : <a href="${url}">debloquer</a>.');
INSERT INTO core_template VALUES ('mylutece_database_password_expired', 'Bonjour ! Votre mot de passe a éxpiré. Lors de votre prochaine connection, vous pourrez le changer.');
INSERT INTO core_template VALUES ('mylutece_database_mailLostPassword', '<html><head><title>#i18n{mylutece.email_reinit.object}</title></head><body><p>#i18n{mylutece.email_reinit.content.text}<br /></p><p>#i18n{mylutece.email_reinit.content.newPassword} : ${new_password}<br /></p></body></html><p>#i18n{mylutece.email_reinit.content.reinitPassword}<a href="${reinit_url}">#i18n{mylutece.email_reinit.content.labelLink}</a></p>');
INSERT INTO core_template VALUES ('mylutece_database_mailPasswordEncryptionChanged', '<html><head><title>Votre mot de passe a été réinitialisé</title></head><body><p>Pour des raisons de sécurité, votre mot de passe a été réinitialisé.<br />\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-</p><p>Votre nouveau mot de passe est : ${new_password}<br />\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-</p></body></html>');

INSERT INTO core_datastore VALUES ('mylutece-database_banned_domain_names', 'yopmail.com');

INSERT INTO core_physical_file VALUES (127,'<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"text\"/>\r\n	\r\n	<xsl:template match=\"users\">\r\n		<xsl:apply-templates select=\"user\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"user\">\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:value-of select=\"access_code\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"last_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"first_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"email\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"status\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"password_max_valid_date\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"account_max_valid_date\" />\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:apply-templates select=\"roles\" />\r\n		<xsl:apply-templates select=\"groups\" />\r\n		<xsl:apply-templates select=\"attributes\" />\r\n		<xsl:text>&#10;</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"roles\">\r\n		<xsl:apply-templates select=\"role\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"role\">\r\n		<xsl:text>;\"role:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"groups\">\r\n		<xsl:apply-templates select=\"group\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"group\">\r\n		<xsl:text>;\"group:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attributes\">\r\n		<xsl:apply-templates select=\"attribute\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attribute\">\r\n		<xsl:text>;\"</xsl:text>\r\n		<xsl:value-of select=\"attribute-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-field-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-value\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>');
INSERT INTO core_file(id_file, title, id_physical_file, file_size, mime_type) VALUES (127,'export_users_csv.xml',127,1861,'application/xml');
INSERT INTO core_xsl_export VALUES (127,'MyLutece Database - Export CSV des utilisateurs','Export des utilisateur MyLutece Database dans un fichier CSV','csv',127,'mylutece-database');

INSERT INTO core_physical_file VALUES (128,'<?xml version=\"1.0\" ?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:template match=\"/ | @* | node()\">\r\n		<xsl:copy>\r\n			<xsl:apply-templates select=\"@* | node()\" />\r\n		</xsl:copy>\r\n	</xsl:template>\r\n</xsl:stylesheet>');
INSERT INTO core_file(id_file, title, id_physical_file, file_size, mime_type) VALUES (128,'export_users_xml.xml',128,259,'application/xml');
INSERT INTO core_xsl_export VALUES (128,'MyLutece Database - Export XML des utilisateurs','Export des utilisateur MyLutece Database dans un fichier XML','xml',128,'mylutece-database');

--
-- Init Public URLs
--

INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece-database.url.login.page','jsp/site/Portal.jsp?page=mylutece&action=login');
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece-database.url.doLogin','jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp');
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece-database.url.doLogout','jsp/site/plugins/mylutece/DoMyLuteceLogout.jsp');
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece-database.url.createAccount.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=createAccount');
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece-database.url.lostPassword.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=lostPassword');
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece-database.url.lostLogin.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=lostLogin');
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece-database.url.reinitPassword.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=reinitPassword');
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece-database.url.doActionsAll','jsp/site/plugins/mylutece/modules/database/Do*');

-- Auth 
INSERT INTO core_datastore VALUES('core.plugins.status.mylutece-database.installed', 'true');

INSERT INTO core_datastore VALUES('core.plugins.status.adminauthenticationoauth2.installed', 'false');
INSERT INTO core_datastore VALUES('core.plugins.status.mylutece-oauth2.installed','false');
INSERT INTO core_datastore VALUES('core.plugins.status.oauth2.installed','false');