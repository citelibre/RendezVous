-- MariaDB dump 10.19  Distrib 10.6.17-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: keycloak
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

CREATE DATABASE keycloak;

USE keycloak;

--
-- Table structure for table `ADMIN_EVENT_ENTITY`
--

DROP TABLE IF EXISTS `ADMIN_EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADMIN_EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `ADMIN_EVENT_TIME` bigint(20) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `OPERATION_TYPE` varchar(255) DEFAULT NULL,
  `AUTH_REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_CLIENT_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `RESOURCE_PATH` text DEFAULT NULL,
  `REPRESENTATION` text DEFAULT NULL,
  `ERROR` varchar(255) DEFAULT NULL,
  `RESOURCE_TYPE` varchar(64) DEFAULT NULL,
  `DETAILS_JSON` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ADMIN_EVENT_TIME` (`REALM_ID`,`ADMIN_EVENT_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADMIN_EVENT_ENTITY`
--

LOCK TABLES `ADMIN_EVENT_ENTITY` WRITE;
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ASSOCIATED_POLICY`
--

DROP TABLE IF EXISTS `ASSOCIATED_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ASSOCIATED_POLICY` (
  `POLICY_ID` varchar(36) NOT NULL,
  `ASSOCIATED_POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`POLICY_ID`,`ASSOCIATED_POLICY_ID`),
  KEY `IDX_ASSOC_POL_ASSOC_POL_ID` (`ASSOCIATED_POLICY_ID`),
  CONSTRAINT `FK_FRSR5S213XCX4WNKOG82SSRFY` FOREIGN KEY (`ASSOCIATED_POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  CONSTRAINT `FK_FRSRPAS14XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASSOCIATED_POLICY`
--

LOCK TABLES `ASSOCIATED_POLICY` WRITE;
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATION_EXECUTION`
--

DROP TABLE IF EXISTS `AUTHENTICATION_EXECUTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATION_EXECUTION` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `AUTHENTICATOR` varchar(36) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `REQUIREMENT` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `AUTHENTICATOR_FLOW` bit(1) NOT NULL DEFAULT b'0',
  `AUTH_FLOW_ID` varchar(36) DEFAULT NULL,
  `AUTH_CONFIG` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_EXEC_REALM_FLOW` (`REALM_ID`,`FLOW_ID`),
  KEY `IDX_AUTH_EXEC_FLOW` (`FLOW_ID`),
  CONSTRAINT `FK_AUTH_EXEC_FLOW` FOREIGN KEY (`FLOW_ID`) REFERENCES `AUTHENTICATION_FLOW` (`ID`),
  CONSTRAINT `FK_AUTH_EXEC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATION_EXECUTION`
--

LOCK TABLES `AUTHENTICATION_EXECUTION` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('0031c20a-d3f9-482b-93b2-22ff5489c8e7',NULL,'direct-grant-validate-username','master','673aef93-5589-4e70-8298-129f631154ce',0,10,'\0',NULL,NULL),('0040e966-b034-4044-bde2-348cd5a6e9cf',NULL,'direct-grant-validate-otp','master','197dbf75-b4a3-4986-8670-bc6d81bda8fc',0,20,'\0',NULL,NULL),('01b23ef3-26f1-4647-b4bc-18462f628ff3',NULL,'reset-credentials-choose-user','master','340304d5-af3e-4678-b425-20ceba497178',0,10,'\0',NULL,NULL),('02807ba0-988a-4dbc-a3a4-01770e1b4f5b',NULL,'direct-grant-validate-otp','Paris','4e20a9a7-97b0-422b-87eb-317696893f6c',0,20,'\0',NULL,NULL),('03792611-1196-4595-9229-5f3058a6b4cc',NULL,'idp-review-profile','citelibre_backoffice','a3a6bfd2-72a8-486c-881d-112031f766c0',0,10,'\0',NULL,'7b75699d-920b-4bc0-ac36-86c23d7621ea'),('059e5d60-9251-4241-a78c-6cf02ddd7901',NULL,'conditional-user-configured','Paris','4e20a9a7-97b0-422b-87eb-317696893f6c',0,10,'\0',NULL,NULL),('06019ffc-61ae-44d7-ab93-2fe8287dd3fe',NULL,'conditional-user-configured','citelibre_backoffice','b664f13f-ff7b-4154-a625-005a50ea5046',0,10,'\0',NULL,NULL),('0874c8f3-78d8-4571-93f7-fcfee63c4412',NULL,'registration-password-action','Paris','41ea851a-0f7e-4a77-87a6-056420d5763c',0,50,'\0',NULL,NULL),('0908745b-8afe-4eab-a926-b9a427669574',NULL,'http-basic-authenticator','Paris','fff700e7-8026-4d9b-a808-cbd87a40f146',0,10,'\0',NULL,NULL),('09335d85-22b8-42d6-ab9f-10d0fed658c1',NULL,NULL,'citelibre_backoffice','03bfcc1b-91ce-4ec3-9d04-a10d4219d0a8',2,20,'','5a0ec656-510c-4a9e-a479-b9058c3d74c5',NULL),('0fbeac79-6a6c-4701-b500-7852a4aa24f1',NULL,NULL,'Paris','24bdccc1-001d-4c65-819f-dfedf0de1a91',0,20,'','d0c66fb7-f659-4669-9b6d-12d5a5afc317',NULL),('0fc2e34a-72d9-46cf-a187-e108f5df0882',NULL,NULL,'citelibre_backoffice','7ab2124f-def5-46e2-b127-2a19a1293a6f',2,30,'','8eeb99d1-3777-4f1a-ae1f-f66dc1113f23',NULL),('11917bc3-b105-4cd8-bad3-70e2aa18fc5b',NULL,'direct-grant-validate-username','Paris','3ed66797-d897-42ed-beae-604c69e16b50',0,10,'\0',NULL,NULL),('145221f7-8aa2-4e46-9a2d-4a92ba27b071',NULL,'auth-otp-form','citelibre_backoffice','e090bf20-c2ce-48f0-9593-cbeec339ee9f',0,20,'\0',NULL,NULL),('14c42a8b-30e9-4964-828b-0c3334a2005f',NULL,'idp-username-password-form','citelibre_backoffice','5a0ec656-510c-4a9e-a479-b9058c3d74c5',0,10,'\0',NULL,NULL),('14e829d8-b520-4930-86c5-63c9771e85e6',NULL,'client-secret-jwt','Paris','073dcf56-7d66-4cd1-86f0-beb90e10e15a',2,30,'\0',NULL,NULL),('16a8bfb8-a9bb-402f-82d8-16f09bb690e6',NULL,'conditional-user-configured','Paris','b450865f-3a2c-4180-b55d-c222822ea588',0,10,'\0',NULL,NULL),('1820ad8d-30b9-4bbf-af25-008ea87bc781',NULL,'auth-otp-form','citelibre_backoffice','611b2999-1428-4245-a6ee-3e35732e809f',0,20,'\0',NULL,NULL),('1adae5ec-b7b5-4977-b23e-d16cb7a580a1',NULL,'registration-recaptcha-action','citelibre_backoffice','ffda98cc-a6a3-461b-a4ef-dfbe6437d8fc',3,60,'\0',NULL,NULL),('1c6d5450-9caf-4481-b7b5-14f54ce78493',NULL,'idp-email-verification','Paris','fba2beee-ccdc-47c9-8e3e-3705a815c2c7',2,10,'\0',NULL,NULL),('1c9f40cf-5570-4965-9e70-eedf98d4e59a',NULL,'client-secret-jwt','citelibre_backoffice','dea2f890-064b-423c-bdce-6582eb747b0f',2,30,'\0',NULL,NULL),('1cd522eb-c628-4415-af81-a30ed789eae7',NULL,NULL,'citelibre_backoffice','8eeb99d1-3777-4f1a-ae1f-f66dc1113f23',1,20,'','611b2999-1428-4245-a6ee-3e35732e809f',NULL),('1e853f9c-5125-4bc4-9086-df5bc5a96394',NULL,NULL,'master','673aef93-5589-4e70-8298-129f631154ce',1,30,'','197dbf75-b4a3-4986-8670-bc6d81bda8fc',NULL),('204a609e-cc58-409e-8d3a-f4a7a03c97a4',NULL,'conditional-user-configured','master','8279f6af-fd4d-4050-8c0d-cd4dac12359d',0,10,'\0',NULL,NULL),('21994af4-26d3-4365-8797-492dd50e2a4b',NULL,'registration-page-form','Paris','a2a6d8b2-1b6b-4228-9eaa-101d075f985c',0,10,'','41ea851a-0f7e-4a77-87a6-056420d5763c',NULL),('24601d33-418e-4508-bee5-f0b91dda6621',NULL,'client-jwt','Paris','073dcf56-7d66-4cd1-86f0-beb90e10e15a',2,20,'\0',NULL,NULL),('2aff2101-be3e-4a40-bb64-59b8d0f324f9',NULL,'reset-password','citelibre_backoffice','cf911d31-4968-4d58-8016-e7788ff904d0',0,30,'\0',NULL,NULL),('2e2009d5-d39a-4937-9cb8-8fee7dbdf9ab',NULL,'reset-credential-email','citelibre_backoffice','cf911d31-4968-4d58-8016-e7788ff904d0',0,20,'\0',NULL,NULL),('36677b9a-0bc5-4a7e-9aa3-59814c2b3940',NULL,'client-jwt','citelibre_backoffice','dea2f890-064b-423c-bdce-6582eb747b0f',2,20,'\0',NULL,NULL),('3c70e206-eb60-4123-96d4-9393066c2cf2',NULL,NULL,'citelibre_backoffice','54bdfd29-97ce-42e2-be3d-b3ff94ca80dd',2,20,'','8d1871bf-e6a2-468c-bd6d-4edd12b694ee',NULL),('3ec37640-25b6-42bd-b540-3f7fe91197a5',NULL,'direct-grant-validate-username','citelibre_backoffice','202765fa-33b5-410d-9407-9ae3d28c9a1b',0,10,'\0',NULL,NULL),('44d42b64-1c03-44f1-833f-d6e471916ce7',NULL,'direct-grant-validate-password','master','673aef93-5589-4e70-8298-129f631154ce',0,20,'\0',NULL,NULL),('49b953b5-f156-457e-b065-1595e3358eb5',NULL,'http-basic-authenticator','citelibre_backoffice','80573590-42a3-4cc7-8831-96464ec18b12',0,10,'\0',NULL,NULL),('4c851302-8b3b-4e3d-8ef6-8a6b79b167eb',NULL,'reset-otp','Paris','ebab224b-7573-4513-b715-7242e90001f8',0,20,'\0',NULL,NULL),('4e568670-0b8b-459c-a140-80b9d8ba63d5',NULL,'conditional-user-configured','master','197dbf75-b4a3-4986-8670-bc6d81bda8fc',0,10,'\0',NULL,NULL),('536d469d-d769-41c4-b1f8-cdce58f7c5d5',NULL,NULL,'Paris','7a8153c9-ef45-4aca-8fe9-f9633c988402',1,20,'','b450865f-3a2c-4180-b55d-c222822ea588',NULL),('54c4e28e-2ee3-44a7-a435-bb05799fa680',NULL,NULL,'citelibre_backoffice','a3a6bfd2-72a8-486c-881d-112031f766c0',0,20,'','54bdfd29-97ce-42e2-be3d-b3ff94ca80dd',NULL),('574dff37-8e4a-467d-be33-313686c5a723',NULL,'registration-password-action','citelibre_backoffice','ffda98cc-a6a3-461b-a4ef-dfbe6437d8fc',0,50,'\0',NULL,NULL),('5780e4a6-e29f-43a3-896c-3b9c474a075d',NULL,'client-x509','Paris','073dcf56-7d66-4cd1-86f0-beb90e10e15a',2,40,'\0',NULL,NULL),('58604df1-1e93-4c15-8659-06beac1bf045',NULL,'auth-spnego','Paris','e138699f-85eb-4deb-b468-89700860bdc9',3,20,'\0',NULL,NULL),('599e9540-2c72-4b59-beb3-c63096157eaa',NULL,NULL,'citelibre_backoffice','8d1871bf-e6a2-468c-bd6d-4edd12b694ee',0,20,'','03bfcc1b-91ce-4ec3-9d04-a10d4219d0a8',NULL),('5d768c35-81f8-44e3-97b1-592b379755e5',NULL,NULL,'citelibre_backoffice','5a0ec656-510c-4a9e-a479-b9058c3d74c5',1,20,'','e090bf20-c2ce-48f0-9593-cbeec339ee9f',NULL),('64f7b544-3813-46fd-8d04-678bbe7c8d7d',NULL,'idp-create-user-if-unique','citelibre_backoffice','54bdfd29-97ce-42e2-be3d-b3ff94ca80dd',2,10,'\0',NULL,'482332bb-56d1-439d-8162-f12989ceaeeb'),('6514d7c7-5264-43e2-abd2-f45f65bfa26d',NULL,NULL,'master','a97b975d-db29-407d-aeb5-5b8fc84ef87e',0,20,'','e86ea9d9-795b-4f20-b148-45f4c3dd46d5',NULL),('672bf619-9a94-4b60-baea-a4a8c31444c8',NULL,'auth-otp-form','Paris','c49991fb-3707-4bbf-930b-2ecf450357f8',0,20,'\0',NULL,NULL),('69a03ef2-f2a9-41cd-ba97-dfd5f00576a6',NULL,'auth-spnego','citelibre_backoffice','7ab2124f-def5-46e2-b127-2a19a1293a6f',3,20,'\0',NULL,NULL),('6bd83d2b-3fac-41f3-97ff-222211ee9db9',NULL,'conditional-user-configured','citelibre_backoffice','e090bf20-c2ce-48f0-9593-cbeec339ee9f',0,10,'\0',NULL,NULL),('6bfaeb53-4f87-4d65-aaad-0ac9da60b547',NULL,NULL,'citelibre_backoffice','cf911d31-4968-4d58-8016-e7788ff904d0',1,40,'','b664f13f-ff7b-4154-a625-005a50ea5046',NULL),('6ccd9f19-7e15-4afc-bded-d5fd9f49eef2',NULL,'reset-password','Paris','62c005f5-e49f-45d6-9940-73e9fa2e94a8',0,30,'\0',NULL,NULL),('6d49c469-eb01-411c-b551-b1158aa080aa',NULL,'idp-email-verification','master','e48a0aba-20d1-49c5-9259-7761c4bc57a3',2,10,'\0',NULL,NULL),('6dfa3c8c-6d88-4c1a-b1f2-7e6ac3bdff3b',NULL,'registration-recaptcha-action','master','0a26590a-5a9b-4af6-877e-f15f86d9fd8f',3,60,'\0',NULL,NULL),('70194066-d6ba-4d29-b183-a6f106b7daae',NULL,'auth-cookie','master','68e10f8f-ee12-4bc1-afe1-b95327619e38',2,10,'\0',NULL,NULL),('7069ec0f-bc64-4403-bdc8-8f1a81fa4b62',NULL,'idp-confirm-link','Paris','ca8ca2c4-9da7-4758-ba30-b8227b82e225',0,10,'\0',NULL,NULL),('73de772a-af7f-4783-8a8f-eb3ca8ea69b1',NULL,'identity-provider-redirector','master','68e10f8f-ee12-4bc1-afe1-b95327619e38',2,25,'\0',NULL,NULL),('7aa8c61f-5cfe-4b29-9d25-f389065db9e0',NULL,'auth-otp-form','Paris','b450865f-3a2c-4180-b55d-c222822ea588',0,20,'\0',NULL,NULL),('7b4f2a37-fff5-40ce-a5a0-0465cf42ebad',NULL,'docker-http-basic-authenticator','Paris','d951a7b7-a7fc-4f02-8a9b-0173f2465007',0,10,'\0',NULL,NULL),('7c81bc40-a2b8-4ee2-af91-601d442d2344',NULL,'conditional-user-configured','Paris','c49991fb-3707-4bbf-930b-2ecf450357f8',0,10,'\0',NULL,NULL),('7e57906d-74f0-4c78-b956-83760c92c2b4',NULL,'client-secret','Paris','073dcf56-7d66-4cd1-86f0-beb90e10e15a',2,10,'\0',NULL,NULL),('7ed3abea-e2b7-469e-9c90-2206fda9589e',NULL,NULL,'master','68e10f8f-ee12-4bc1-afe1-b95327619e38',2,30,'','ec494558-ea82-4d92-b8d9-e9d217e58ce9',NULL),('7f73097e-d8bc-45a4-a8e8-161514280e9a',NULL,'identity-provider-redirector','Paris','e138699f-85eb-4deb-b468-89700860bdc9',2,25,'\0',NULL,NULL),('81c31804-6567-4569-a424-659d73353978',NULL,'client-x509','citelibre_backoffice','dea2f890-064b-423c-bdce-6582eb747b0f',2,40,'\0',NULL,NULL),('82639f2d-d95f-4182-8e53-f7ec98b340ea',NULL,'auth-username-password-form','Paris','7a8153c9-ef45-4aca-8fe9-f9633c988402',0,10,'\0',NULL,NULL),('827c2d7d-08df-4ac5-be8a-4dc5c8c3a13f',NULL,'registration-user-creation','Paris','41ea851a-0f7e-4a77-87a6-056420d5763c',0,20,'\0',NULL,NULL),('875dc3e2-b18a-4437-98d0-96c99ba15a9a',NULL,'conditional-user-configured','master','4af9124d-03ae-4ce9-8558-1f5f1c331790',0,10,'\0',NULL,NULL),('8965eaa4-9652-432b-b595-10cc9efabb80',NULL,'client-secret-jwt','master','7048876d-c317-419e-a65b-8694caaab3ef',2,30,'\0',NULL,NULL),('8bae7f37-a97b-43b5-a984-a51510cf577a',NULL,NULL,'Paris','3ed66797-d897-42ed-beae-604c69e16b50',1,30,'','4e20a9a7-97b0-422b-87eb-317696893f6c',NULL),('8ddc22f1-3dab-4d95-b155-5aaf2e7d9ac0',NULL,NULL,'citelibre_backoffice','202765fa-33b5-410d-9407-9ae3d28c9a1b',1,30,'','e465058d-e460-40a7-9dcb-5073bd09287a',NULL),('923a8b66-f47b-4b2a-abe4-3435ef22f168',NULL,'auth-otp-form','master','8279f6af-fd4d-4050-8c0d-cd4dac12359d',0,20,'\0',NULL,NULL),('93bccf72-f1ec-4f77-8d17-29177827138f',NULL,NULL,'master','340304d5-af3e-4678-b425-20ceba497178',1,40,'','1d99c1b9-8572-448e-9fd4-d99b1f6f452d',NULL),('949bca6f-059d-441d-a826-0f4a5c099bf3',NULL,'docker-http-basic-authenticator','citelibre_backoffice','20945af7-f60e-40c7-a1e8-7c27fe534f43',0,10,'\0',NULL,NULL),('9ad1361b-cfa5-4f66-aefd-91d462aa1bdd',NULL,'direct-grant-validate-password','Paris','3ed66797-d897-42ed-beae-604c69e16b50',0,20,'\0',NULL,NULL),('9b814a80-fb4a-4a1a-9027-1515e6cc68ff',NULL,NULL,'Paris','e138699f-85eb-4deb-b468-89700860bdc9',2,30,'','7a8153c9-ef45-4aca-8fe9-f9633c988402',NULL),('9c222e36-adf9-41ed-8499-c91532a671de',NULL,NULL,'Paris','62c005f5-e49f-45d6-9940-73e9fa2e94a8',1,40,'','ebab224b-7573-4513-b715-7242e90001f8',NULL),('9e1a4243-6280-47c0-99b7-67cef0694451',NULL,'identity-provider-redirector','citelibre_backoffice','7ab2124f-def5-46e2-b127-2a19a1293a6f',2,25,'\0',NULL,NULL),('a470b5cc-e736-485b-878b-01efcdbb36ac',NULL,'reset-otp','citelibre_backoffice','b664f13f-ff7b-4154-a625-005a50ea5046',0,20,'\0',NULL,NULL),('a5a08448-a3bd-449f-8c08-222fafc6826a',NULL,'reset-password','master','340304d5-af3e-4678-b425-20ceba497178',0,30,'\0',NULL,NULL),('a62814a1-04bd-4308-a102-7683fee9eef3',NULL,'conditional-user-configured','citelibre_backoffice','e465058d-e460-40a7-9dcb-5073bd09287a',0,10,'\0',NULL,NULL),('ab1d7ba6-ca1f-453b-bba7-26ba69799dd1',NULL,'auth-username-password-form','master','ec494558-ea82-4d92-b8d9-e9d217e58ce9',0,10,'\0',NULL,NULL),('ab9abc0f-4e67-4964-a051-6f3dd4d0130e',NULL,'docker-http-basic-authenticator','master','31be78b4-e9c6-498b-b2b7-c3674a01c069',0,10,'\0',NULL,NULL),('af3f0223-b54f-4453-b984-e7acea68c3f5',NULL,'auth-cookie','citelibre_backoffice','7ab2124f-def5-46e2-b127-2a19a1293a6f',2,10,'\0',NULL,NULL),('b68e22fa-0e78-447d-aefd-bd2a18b88907',NULL,NULL,'master','e48a0aba-20d1-49c5-9259-7761c4bc57a3',2,20,'','77faf238-6781-4ee9-8da7-1d527076d8a6',NULL),('b71663fe-9a4d-4bf3-8cba-05783cb22116',NULL,NULL,'master','e86ea9d9-795b-4f20-b148-45f4c3dd46d5',2,20,'','9a86757e-efc9-49c6-993b-8ec7cfae0143',NULL),('bb05712a-ca97-4416-9a24-51294104d599',NULL,NULL,'Paris','fba2beee-ccdc-47c9-8e3e-3705a815c2c7',2,20,'','61578bf6-0e8f-40e3-8906-6ecb4dcb6756',NULL),('be597d9f-f011-4d36-9d45-01d31d010194',NULL,'client-jwt','master','7048876d-c317-419e-a65b-8694caaab3ef',2,20,'\0',NULL,NULL),('bf675512-1811-422a-b75f-57e7dd26657f',NULL,'idp-confirm-link','master','9a86757e-efc9-49c6-993b-8ec7cfae0143',0,10,'\0',NULL,NULL),('bf703676-f158-481c-8458-83194098ca73',NULL,'conditional-user-configured','citelibre_backoffice','611b2999-1428-4245-a6ee-3e35732e809f',0,10,'\0',NULL,NULL),('c07f59b1-daaf-4678-891d-6b3fe3289e1b',NULL,'reset-otp','master','1d99c1b9-8572-448e-9fd4-d99b1f6f452d',0,20,'\0',NULL,NULL),('c3c2d25a-16ec-4576-8e8a-ce83b87062a9',NULL,'idp-review-profile','master','a97b975d-db29-407d-aeb5-5b8fc84ef87e',0,10,'\0',NULL,'c8cf80fc-28f4-40d4-9bd0-cadd38b8d945'),('c451a29d-7e8d-4ffa-92df-0f9c85afb376',NULL,'client-x509','master','7048876d-c317-419e-a65b-8694caaab3ef',2,40,'\0',NULL,NULL),('c755ef4b-6dbf-4038-bc61-c523b84a8f40',NULL,'http-basic-authenticator','master','e333ec1f-e2e3-41f9-bc2c-144e918ee693',0,10,'\0',NULL,NULL),('c8475b65-85cc-47f2-842f-9c56f58aff96',NULL,'idp-email-verification','citelibre_backoffice','03bfcc1b-91ce-4ec3-9d04-a10d4219d0a8',2,10,'\0',NULL,NULL),('c8985296-03e1-4318-bdb6-b79a42de3ec8',NULL,'reset-credential-email','Paris','62c005f5-e49f-45d6-9940-73e9fa2e94a8',0,20,'\0',NULL,NULL),('c9e1a1fd-8fd4-4074-8d6c-0eaf929ffd0f',NULL,'reset-credentials-choose-user','citelibre_backoffice','cf911d31-4968-4d58-8016-e7788ff904d0',0,10,'\0',NULL,NULL),('ca694524-6d8f-42ab-adfa-e3d9e9af9027',NULL,'conditional-user-configured','Paris','ebab224b-7573-4513-b715-7242e90001f8',0,10,'\0',NULL,NULL),('cbe484a8-e115-4618-ae09-0b82fd190a35',NULL,'auth-spnego','master','68e10f8f-ee12-4bc1-afe1-b95327619e38',3,20,'\0',NULL,NULL),('cbffb93e-b3fe-483f-af80-98eeadaf3237',NULL,'registration-page-form','citelibre_backoffice','5b2590c3-2295-45ca-a570-e753369f86cf',0,10,'','ffda98cc-a6a3-461b-a4ef-dfbe6437d8fc',NULL),('cc4aecac-8874-4846-84a1-c33b8b545c64',NULL,NULL,'Paris','61578bf6-0e8f-40e3-8906-6ecb4dcb6756',1,20,'','c49991fb-3707-4bbf-930b-2ecf450357f8',NULL),('cf078e40-1e28-4121-980f-bd9009b67660',NULL,'reset-credentials-choose-user','Paris','62c005f5-e49f-45d6-9940-73e9fa2e94a8',0,10,'\0',NULL,NULL),('d1e2cf75-689d-4f31-9e2d-13055101cd3d',NULL,'idp-username-password-form','Paris','61578bf6-0e8f-40e3-8906-6ecb4dcb6756',0,10,'\0',NULL,NULL),('d1e6389a-0820-46e4-b96f-c4114e955e94',NULL,NULL,'master','77faf238-6781-4ee9-8da7-1d527076d8a6',1,20,'','8279f6af-fd4d-4050-8c0d-cd4dac12359d',NULL),('d2a5b81d-7027-43de-aaee-1bfd0fb09248',NULL,'client-secret','master','7048876d-c317-419e-a65b-8694caaab3ef',2,10,'\0',NULL,NULL),('d950dbec-e7c5-40ff-b922-1f26734fdad1',NULL,'registration-user-creation','citelibre_backoffice','ffda98cc-a6a3-461b-a4ef-dfbe6437d8fc',0,20,'\0',NULL,NULL),('d9d47554-b515-4f08-b63d-180c151ff649',NULL,'idp-review-profile','Paris','24bdccc1-001d-4c65-819f-dfedf0de1a91',0,10,'\0',NULL,'2c4e7563-c33a-4403-baf3-1434973a0e39'),('da5092e6-086b-4607-8a94-63e8b86c9784',NULL,'registration-user-creation','master','0a26590a-5a9b-4af6-877e-f15f86d9fd8f',0,20,'\0',NULL,NULL),('db2bbc40-184e-499d-bdea-02203953d031',NULL,'reset-credential-email','master','340304d5-af3e-4678-b425-20ceba497178',0,20,'\0',NULL,NULL),('de6c5ab5-2ea5-48a9-993a-53bb4ef5c38a',NULL,'direct-grant-validate-password','citelibre_backoffice','202765fa-33b5-410d-9407-9ae3d28c9a1b',0,20,'\0',NULL,NULL),('e163ffec-76d7-41db-8112-2c5133dc2d95',NULL,'direct-grant-validate-otp','citelibre_backoffice','e465058d-e460-40a7-9dcb-5073bd09287a',0,20,'\0',NULL,NULL),('e1f5ec43-122f-4766-9170-1fa7bb9b2f4a',NULL,'idp-username-password-form','master','77faf238-6781-4ee9-8da7-1d527076d8a6',0,10,'\0',NULL,NULL),('e3a7efbd-08ca-4d26-a685-7daabec52ac4',NULL,'registration-recaptcha-action','Paris','41ea851a-0f7e-4a77-87a6-056420d5763c',3,60,'\0',NULL,NULL),('e5742fd7-b46d-41c3-a95e-5cf7a23e54d7',NULL,'client-secret','citelibre_backoffice','dea2f890-064b-423c-bdce-6582eb747b0f',2,10,'\0',NULL,NULL),('e7583d08-8a75-4b45-8fa4-c33bd8377af8',NULL,'auth-otp-form','master','4af9124d-03ae-4ce9-8558-1f5f1c331790',0,20,'\0',NULL,NULL),('ea94ca7f-7a94-4c92-b2f9-e6989a84f6cb',NULL,'idp-create-user-if-unique','Paris','d0c66fb7-f659-4669-9b6d-12d5a5afc317',2,10,'\0',NULL,'cb60c4b5-a8e0-4b48-b89e-19de494286a4'),('eaaebc17-2f7a-4ac8-8273-22aa82f0ecd0',NULL,'idp-confirm-link','citelibre_backoffice','8d1871bf-e6a2-468c-bd6d-4edd12b694ee',0,10,'\0',NULL,NULL),('ef5f137b-ba6a-4d63-af1a-a96a963d9482',NULL,NULL,'Paris','d0c66fb7-f659-4669-9b6d-12d5a5afc317',2,20,'','ca8ca2c4-9da7-4758-ba30-b8227b82e225',NULL),('f15c0633-b7bf-48d9-9e35-563471a669a1',NULL,NULL,'master','ec494558-ea82-4d92-b8d9-e9d217e58ce9',1,20,'','4af9124d-03ae-4ce9-8558-1f5f1c331790',NULL),('f3372199-6e06-4347-843a-b8b27236854f',NULL,NULL,'master','9a86757e-efc9-49c6-993b-8ec7cfae0143',0,20,'','e48a0aba-20d1-49c5-9259-7761c4bc57a3',NULL),('f3f5c276-c863-4a31-a5a4-ce4e680940ae',NULL,'registration-password-action','master','0a26590a-5a9b-4af6-877e-f15f86d9fd8f',0,50,'\0',NULL,NULL),('f59b8bce-2f4f-477c-8e56-d02e08970c4f',NULL,'idp-create-user-if-unique','master','e86ea9d9-795b-4f20-b148-45f4c3dd46d5',2,10,'\0',NULL,'a82a26c4-1460-4024-8b8d-7821da8b0d7f'),('f5a611d9-d354-4ec7-addf-c3a1e0036afb',NULL,'auth-cookie','Paris','e138699f-85eb-4deb-b468-89700860bdc9',2,10,'\0',NULL,NULL),('f8bebe58-3d03-46ec-b4e3-d4cdf0d9d5a1',NULL,'registration-page-form','master','7bfc9c6a-2a40-48e4-8330-ef101bec5feb',0,10,'','0a26590a-5a9b-4af6-877e-f15f86d9fd8f',NULL),('f8e8fbfe-e315-4e12-9122-4841bdea01e3',NULL,'auth-username-password-form','citelibre_backoffice','8eeb99d1-3777-4f1a-ae1f-f66dc1113f23',0,10,'\0',NULL,NULL),('f99d1044-1b24-4270-b8b6-fc8a62ba9739',NULL,NULL,'Paris','ca8ca2c4-9da7-4758-ba30-b8227b82e225',0,20,'','fba2beee-ccdc-47c9-8e3e-3705a815c2c7',NULL),('febf8e8b-70b4-462d-b684-b883d75eaeed',NULL,'conditional-user-configured','master','1d99c1b9-8572-448e-9fd4-d99b1f6f452d',0,10,'\0',NULL,NULL);
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATION_FLOW`
--

DROP TABLE IF EXISTS `AUTHENTICATION_FLOW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATION_FLOW` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) NOT NULL DEFAULT 'basic-flow',
  `TOP_LEVEL` bit(1) NOT NULL DEFAULT b'0',
  `BUILT_IN` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_FLOW_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_FLOW_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('03bfcc1b-91ce-4ec3-9d04-a10d4219d0a8','Account verification options','Method with which to verity the existing account','citelibre_backoffice','basic-flow','\0',''),('073dcf56-7d66-4cd1-86f0-beb90e10e15a','clients','Base authentication for clients','Paris','client-flow','',''),('0a26590a-5a9b-4af6-877e-f15f86d9fd8f','registration form','registration form','master','form-flow','\0',''),('197dbf75-b4a3-4986-8670-bc6d81bda8fc','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','master','basic-flow','\0',''),('1d99c1b9-8572-448e-9fd4-d99b1f6f452d','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','master','basic-flow','\0',''),('202765fa-33b5-410d-9407-9ae3d28c9a1b','direct grant','OpenID Connect Resource Owner Grant','citelibre_backoffice','basic-flow','',''),('20945af7-f60e-40c7-a1e8-7c27fe534f43','docker auth','Used by Docker clients to authenticate against the IDP','citelibre_backoffice','basic-flow','',''),('24bdccc1-001d-4c65-819f-dfedf0de1a91','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','Paris','basic-flow','',''),('31be78b4-e9c6-498b-b2b7-c3674a01c069','docker auth','Used by Docker clients to authenticate against the IDP','master','basic-flow','',''),('340304d5-af3e-4678-b425-20ceba497178','reset credentials','Reset credentials for a user if they forgot their password or something','master','basic-flow','',''),('3ed66797-d897-42ed-beae-604c69e16b50','direct grant','OpenID Connect Resource Owner Grant','Paris','basic-flow','',''),('41ea851a-0f7e-4a77-87a6-056420d5763c','registration form','registration form','Paris','form-flow','\0',''),('4af9124d-03ae-4ce9-8558-1f5f1c331790','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','master','basic-flow','\0',''),('4e20a9a7-97b0-422b-87eb-317696893f6c','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','Paris','basic-flow','\0',''),('54bdfd29-97ce-42e2-be3d-b3ff94ca80dd','User creation or linking','Flow for the existing/non-existing user alternatives','citelibre_backoffice','basic-flow','\0',''),('5a0ec656-510c-4a9e-a479-b9058c3d74c5','Verify Existing Account by Re-authentication','Reauthentication of existing account','citelibre_backoffice','basic-flow','\0',''),('5b2590c3-2295-45ca-a570-e753369f86cf','registration','registration flow','citelibre_backoffice','basic-flow','',''),('611b2999-1428-4245-a6ee-3e35732e809f','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','citelibre_backoffice','basic-flow','\0',''),('61578bf6-0e8f-40e3-8906-6ecb4dcb6756','Verify Existing Account by Re-authentication','Reauthentication of existing account','Paris','basic-flow','\0',''),('62c005f5-e49f-45d6-9940-73e9fa2e94a8','reset credentials','Reset credentials for a user if they forgot their password or something','Paris','basic-flow','',''),('673aef93-5589-4e70-8298-129f631154ce','direct grant','OpenID Connect Resource Owner Grant','master','basic-flow','',''),('68e10f8f-ee12-4bc1-afe1-b95327619e38','browser','browser based authentication','master','basic-flow','',''),('7048876d-c317-419e-a65b-8694caaab3ef','clients','Base authentication for clients','master','client-flow','',''),('77faf238-6781-4ee9-8da7-1d527076d8a6','Verify Existing Account by Re-authentication','Reauthentication of existing account','master','basic-flow','\0',''),('7a8153c9-ef45-4aca-8fe9-f9633c988402','forms','Username, password, otp and other auth forms.','Paris','basic-flow','\0',''),('7ab2124f-def5-46e2-b127-2a19a1293a6f','browser','browser based authentication','citelibre_backoffice','basic-flow','',''),('7bfc9c6a-2a40-48e4-8330-ef101bec5feb','registration','registration flow','master','basic-flow','',''),('80573590-42a3-4cc7-8831-96464ec18b12','saml ecp','SAML ECP Profile Authentication Flow','citelibre_backoffice','basic-flow','',''),('8279f6af-fd4d-4050-8c0d-cd4dac12359d','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','master','basic-flow','\0',''),('8d1871bf-e6a2-468c-bd6d-4edd12b694ee','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','citelibre_backoffice','basic-flow','\0',''),('8eeb99d1-3777-4f1a-ae1f-f66dc1113f23','forms','Username, password, otp and other auth forms.','citelibre_backoffice','basic-flow','\0',''),('9a86757e-efc9-49c6-993b-8ec7cfae0143','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','master','basic-flow','\0',''),('a2a6d8b2-1b6b-4228-9eaa-101d075f985c','registration','registration flow','Paris','basic-flow','',''),('a3a6bfd2-72a8-486c-881d-112031f766c0','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','citelibre_backoffice','basic-flow','',''),('a97b975d-db29-407d-aeb5-5b8fc84ef87e','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','master','basic-flow','',''),('b450865f-3a2c-4180-b55d-c222822ea588','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','Paris','basic-flow','\0',''),('b664f13f-ff7b-4154-a625-005a50ea5046','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','citelibre_backoffice','basic-flow','\0',''),('c49991fb-3707-4bbf-930b-2ecf450357f8','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','Paris','basic-flow','\0',''),('ca8ca2c4-9da7-4758-ba30-b8227b82e225','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','Paris','basic-flow','\0',''),('cf911d31-4968-4d58-8016-e7788ff904d0','reset credentials','Reset credentials for a user if they forgot their password or something','citelibre_backoffice','basic-flow','',''),('d0c66fb7-f659-4669-9b6d-12d5a5afc317','User creation or linking','Flow for the existing/non-existing user alternatives','Paris','basic-flow','\0',''),('d951a7b7-a7fc-4f02-8a9b-0173f2465007','docker auth','Used by Docker clients to authenticate against the IDP','Paris','basic-flow','',''),('dea2f890-064b-423c-bdce-6582eb747b0f','clients','Base authentication for clients','citelibre_backoffice','client-flow','',''),('e090bf20-c2ce-48f0-9593-cbeec339ee9f','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','citelibre_backoffice','basic-flow','\0',''),('e138699f-85eb-4deb-b468-89700860bdc9','browser','browser based authentication','Paris','basic-flow','',''),('e333ec1f-e2e3-41f9-bc2c-144e918ee693','saml ecp','SAML ECP Profile Authentication Flow','master','basic-flow','',''),('e465058d-e460-40a7-9dcb-5073bd09287a','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','citelibre_backoffice','basic-flow','\0',''),('e48a0aba-20d1-49c5-9259-7761c4bc57a3','Account verification options','Method with which to verity the existing account','master','basic-flow','\0',''),('e86ea9d9-795b-4f20-b148-45f4c3dd46d5','User creation or linking','Flow for the existing/non-existing user alternatives','master','basic-flow','\0',''),('ebab224b-7573-4513-b715-7242e90001f8','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','Paris','basic-flow','\0',''),('ec494558-ea82-4d92-b8d9-e9d217e58ce9','forms','Username, password, otp and other auth forms.','master','basic-flow','\0',''),('fba2beee-ccdc-47c9-8e3e-3705a815c2c7','Account verification options','Method with which to verity the existing account','Paris','basic-flow','\0',''),('ffda98cc-a6a3-461b-a4ef-dfbe6437d8fc','registration form','registration form','citelibre_backoffice','form-flow','\0',''),('fff700e7-8026-4d9b-a808-cbd87a40f146','saml ecp','SAML ECP Profile Authentication Flow','Paris','basic-flow','','');
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATOR_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_CONFIG_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('2c4e7563-c33a-4403-baf3-1434973a0e39','review profile config','Paris'),('482332bb-56d1-439d-8162-f12989ceaeeb','create unique user config','citelibre_backoffice'),('7b75699d-920b-4bc0-ac36-86c23d7621ea','review profile config','citelibre_backoffice'),('a82a26c4-1460-4024-8b8d-7821da8b0d7f','create unique user config','master'),('c8cf80fc-28f4-40d4-9bd0-cadd38b8d945','review profile config','master'),('cb60c4b5-a8e0-4b48-b89e-19de494286a4','create unique user config','Paris');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG_ENTRY`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG_ENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATOR_CONFIG_ENTRY` (
  `AUTHENTICATOR_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`AUTHENTICATOR_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('2c4e7563-c33a-4403-baf3-1434973a0e39','missing','update.profile.on.first.login'),('482332bb-56d1-439d-8162-f12989ceaeeb','false','require.password.update.after.registration'),('7b75699d-920b-4bc0-ac36-86c23d7621ea','missing','update.profile.on.first.login'),('a82a26c4-1460-4024-8b8d-7821da8b0d7f','false','require.password.update.after.registration'),('c8cf80fc-28f4-40d4-9bd0-cadd38b8d945','missing','update.profile.on.first.login'),('cb60c4b5-a8e0-4b48-b89e-19de494286a4','false','require.password.update.after.registration');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BROKER_LINK`
--

DROP TABLE IF EXISTS `BROKER_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BROKER_LINK` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  `BROKER_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BROKER_LINK`
--

LOCK TABLES `BROKER_LINK` WRITE;
/*!40000 ALTER TABLE `BROKER_LINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `BROKER_LINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT`
--

DROP TABLE IF EXISTS `CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT` (
  `ID` varchar(36) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `FULL_SCOPE_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PUBLIC_CLIENT` bit(1) NOT NULL DEFAULT b'0',
  `SECRET` varchar(255) DEFAULT NULL,
  `BASE_URL` varchar(255) DEFAULT NULL,
  `BEARER_ONLY` bit(1) NOT NULL DEFAULT b'0',
  `MANAGEMENT_URL` varchar(255) DEFAULT NULL,
  `SURROGATE_AUTH_REQUIRED` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `NODE_REREG_TIMEOUT` int(11) DEFAULT 0,
  `FRONTCHANNEL_LOGOUT` bit(1) NOT NULL DEFAULT b'0',
  `CONSENT_REQUIRED` bit(1) NOT NULL DEFAULT b'0',
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `SERVICE_ACCOUNTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `CLIENT_AUTHENTICATOR_TYPE` varchar(255) DEFAULT NULL,
  `ROOT_URL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `REGISTRATION_TOKEN` varchar(255) DEFAULT NULL,
  `STANDARD_FLOW_ENABLED` bit(1) NOT NULL DEFAULT b'1',
  `IMPLICIT_FLOW_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DIRECT_ACCESS_GRANTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `ALWAYS_DISPLAY_IN_CONSOLE` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_B71CJLBENV945RB6GCON438AT` (`REALM_ID`,`CLIENT_ID`),
  KEY `IDX_CLIENT_ID` (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT`
--

LOCK TABLES `CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT` VALUES ('0223e96b-970c-4c51-b5a4-8506a6796495','','\0','citelibre_frontoffice-realm',0,'\0',NULL,NULL,'',NULL,'\0','master',NULL,0,'\0','\0','paris Realm','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('0335247d-0834-41b2-a5c1-7e0c321b9968','','','moncompte',0,'\0','moncompte','','\0','','\0','citelibre_backoffice','openid-connect',-1,'\0','\0','','\0','client-secret','','',NULL,'','\0','','\0'),('06251203-e295-46d3-b742-083e447482fc','','\0','account',0,'',NULL,'/realms/citelibre_backoffice/account/','\0',NULL,'\0','citelibre_backoffice','openid-connect',0,'\0','\0','${client_account}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0'),('06659433-c299-4183-af48-a8ab8f7df65b','','\0','account-console',0,'',NULL,'/realms/Paris/account/','\0',NULL,'\0','Paris','openid-connect',0,'\0','\0','${client_account-console}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0'),('1302d944-0f75-473a-9977-826784129cc7','','\0','broker',0,'\0',NULL,NULL,'',NULL,'\0','citelibre_backoffice','openid-connect',0,'\0','\0','${client_broker}','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','','\0','account',0,'',NULL,'/realms/citelibre_frontoffice/account/','\0',NULL,'\0','Paris','openid-connect',0,'\0','\0','${client_account}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0'),('245bbac1-1581-4b97-be3d-401043deb280','','','admin-cli',0,'',NULL,NULL,'\0',NULL,'\0','citelibre_backoffice','openid-connect',0,'\0','\0','${client_admin-cli}','\0','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('5c41c941-c9c6-480f-b39d-ec696e79db28','','','security-admin-console',0,'',NULL,'/admin/citelibre_backoffice/console/','\0',NULL,'\0','citelibre_backoffice','openid-connect',0,'\0','\0','${client_security-admin-console}','\0','client-secret','${authAdminUrl}',NULL,NULL,'','\0','\0','\0'),('89223ba7-1534-4822-b5b2-e523a122decf','','\0','realm-management',0,'\0',NULL,NULL,'',NULL,'\0','citelibre_backoffice','openid-connect',0,'\0','\0','${client_realm-management}','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('8f8ef5da-0e40-4034-96e9-203878205f27','','\0','account',0,'',NULL,'/realms/master/account/','\0',NULL,'\0','master','openid-connect',0,'\0','\0','${client_account}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0'),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','','','admin-cli',0,'',NULL,NULL,'\0',NULL,'\0','Paris','openid-connect',0,'\0','\0','${client_admin-cli}','\0','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('a4bcf244-3008-4b91-8d93-911f7a843e7f','','\0','account-console',0,'',NULL,'/realms/citelibre_backoffice/account/','\0',NULL,'\0','citelibre_backoffice','openid-connect',0,'\0','\0','${client_account-console}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0'),('a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','\0','citelibre_backoffice-realm',0,'\0',NULL,NULL,'',NULL,'\0','master',NULL,0,'\0','\0','citelibre_backoffice Realm','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('b741f744-8388-4233-9edc-c9f2ed49016e','','','security-admin-console',0,'',NULL,'/admin/master/console/','\0',NULL,'\0','master','openid-connect',0,'\0','\0','${client_security-admin-console}','\0','client-secret','${authAdminUrl}',NULL,NULL,'','\0','\0','\0'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','','','moncompte',0,'\0','moncompte','','\0','','\0','Paris','openid-connect',-1,'\0','\0','','\0','client-secret','','',NULL,'','\0','','\0'),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','','\0','realm-management',0,'\0',NULL,NULL,'',NULL,'\0','Paris','openid-connect',0,'\0','\0','${client_realm-management}','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('d2080247-3c8e-489c-a66f-b905d421a5d8','','','admin-cli',0,'',NULL,NULL,'\0',NULL,'\0','master','openid-connect',0,'\0','\0','${client_admin-cli}','\0','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('d6531404-964c-457c-bf14-5213c9d58277','','\0','broker',0,'\0',NULL,NULL,'',NULL,'\0','master','openid-connect',0,'\0','\0','${client_broker}','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('d80a596d-3318-4854-a213-05b80614bf0a','','\0','broker',0,'\0',NULL,NULL,'',NULL,'\0','Paris','openid-connect',0,'\0','\0','${client_broker}','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','','','security-admin-console',0,'',NULL,'/admin/citelibre_frontoffice/console/','\0',NULL,'\0','Paris','openid-connect',0,'\0','\0','${client_security-admin-console}','\0','client-secret','${authAdminUrl}',NULL,NULL,'','\0','\0','\0'),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','\0','master-realm',0,'\0',NULL,NULL,'',NULL,'\0','master',NULL,0,'\0','\0','master Realm','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','','\0','account-console',0,'',NULL,'/realms/master/account/','\0',NULL,'\0','master','openid-connect',0,'\0','\0','${client_account-console}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0');
/*!40000 ALTER TABLE `CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_ATTRIBUTES` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  KEY `IDX_CLIENT_ATT_BY_NAME_VALUE` (`NAME`,`VALUE`(255)),
  CONSTRAINT `FK3C47C64BEACCA966` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('0335247d-0834-41b2-a5c1-7e0c321b9968','backchannel.logout.revoke.offline.tokens','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','backchannel.logout.session.required','true'),('0335247d-0834-41b2-a5c1-7e0c321b9968','client_credentials.use_refresh_token','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','client.secret.creation.time','1734621357'),('0335247d-0834-41b2-a5c1-7e0c321b9968','display.on.consent.screen','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','exclude.session.state.from.auth.response','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','id.token.as.detached.signature','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','oauth2.device.authorization.grant.enabled','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','oidc.ciba.grant.enabled','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','post.logout.redirect.uris','+##http://localhost:8080/*'),('0335247d-0834-41b2-a5c1-7e0c321b9968','realm_client','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','require.pushed.authorization.requests','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','saml_force_name_id_format','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','saml.artifact.binding','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','saml.assertion.signature','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','saml.authnstatement','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','saml.client.signature','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','saml.encrypt','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','saml.force.post.binding','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','saml.multivalued.roles','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','saml.onetimeuse.condition','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','saml.server.signature','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','saml.server.signature.keyinfo.ext','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','tls.client.certificate.bound.access.tokens','false'),('0335247d-0834-41b2-a5c1-7e0c321b9968','use.refresh.tokens','true'),('06251203-e295-46d3-b742-083e447482fc','post.logout.redirect.uris','+'),('06659433-c299-4183-af48-a8ab8f7df65b','pkce.code.challenge.method','S256'),('06659433-c299-4183-af48-a8ab8f7df65b','post.logout.redirect.uris','+'),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','post.logout.redirect.uris','+'),('245bbac1-1581-4b97-be3d-401043deb280','client.use.lightweight.access.token.enabled','true'),('5c41c941-c9c6-480f-b39d-ec696e79db28','client.use.lightweight.access.token.enabled','true'),('5c41c941-c9c6-480f-b39d-ec696e79db28','pkce.code.challenge.method','S256'),('5c41c941-c9c6-480f-b39d-ec696e79db28','post.logout.redirect.uris','+'),('8f8ef5da-0e40-4034-96e9-203878205f27','post.logout.redirect.uris','+'),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','client.use.lightweight.access.token.enabled','true'),('a4bcf244-3008-4b91-8d93-911f7a843e7f','pkce.code.challenge.method','S256'),('a4bcf244-3008-4b91-8d93-911f7a843e7f','post.logout.redirect.uris','+'),('b741f744-8388-4233-9edc-c9f2ed49016e','client.use.lightweight.access.token.enabled','true'),('b741f744-8388-4233-9edc-c9f2ed49016e','pkce.code.challenge.method','S256'),('b741f744-8388-4233-9edc-c9f2ed49016e','post.logout.redirect.uris','+'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','backchannel.logout.revoke.offline.tokens','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','backchannel.logout.session.required','true'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','client_credentials.use_refresh_token','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','display.on.consent.screen','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','exclude.session.state.from.auth.response','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','id.token.as.detached.signature','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','oauth2.device.authorization.grant.enabled','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','oidc.ciba.grant.enabled','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','post.logout.redirect.uris','+##http://localhost:8080/*'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','realm_client','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','require.pushed.authorization.requests','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','saml_force_name_id_format','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','saml.artifact.binding','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','saml.assertion.signature','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','saml.authnstatement','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','saml.client.signature','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','saml.encrypt','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','saml.force.post.binding','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','saml.multivalued.roles','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','saml.onetimeuse.condition','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','saml.server.signature','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','saml.server.signature.keyinfo.ext','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','tls.client.certificate.bound.access.tokens','false'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','use.refresh.tokens','true'),('d2080247-3c8e-489c-a66f-b905d421a5d8','client.use.lightweight.access.token.enabled','true'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','client.use.lightweight.access.token.enabled','true'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','pkce.code.challenge.method','S256'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','post.logout.redirect.uris','+'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','pkce.code.challenge.method','S256'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','post.logout.redirect.uris','+');
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_AUTH_FLOW_BINDINGS`
--

DROP TABLE IF EXISTS `CLIENT_AUTH_FLOW_BINDINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_AUTH_FLOW_BINDINGS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `BINDING_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`BINDING_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_AUTH_FLOW_BINDINGS`
--

LOCK TABLES `CLIENT_AUTH_FLOW_BINDINGS` WRITE;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_INITIAL_ACCESS`
--

DROP TABLE IF EXISTS `CLIENT_INITIAL_ACCESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_INITIAL_ACCESS` (
  `ID` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `EXPIRATION` int(11) DEFAULT NULL,
  `COUNT` int(11) DEFAULT NULL,
  `REMAINING_COUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_CLIENT_INIT_ACC_REALM` (`REALM_ID`),
  CONSTRAINT `FK_CLIENT_INIT_ACC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_INITIAL_ACCESS`
--

LOCK TABLES `CLIENT_INITIAL_ACCESS` WRITE;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_NODE_REGISTRATIONS`
--

DROP TABLE IF EXISTS `CLIENT_NODE_REGISTRATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_NODE_REGISTRATIONS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  CONSTRAINT `FK4129723BA992F594` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_NODE_REGISTRATIONS`
--

LOCK TABLES `CLIENT_NODE_REGISTRATIONS` WRITE;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_CLI_SCOPE` (`REALM_ID`,`NAME`),
  KEY `IDX_REALM_CLSCOPE` (`REALM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE`
--

LOCK TABLES `CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE` VALUES ('068b2b23-1ee1-451b-b0b4-c943279e6945','acr','citelibre_backoffice','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('1d82bc89-0f68-4510-971d-208d3b2d9a13','microprofile-jwt','Paris','Microprofile - JWT built-in scope','openid-connect'),('21c9b10b-53d0-4159-99d3-14639af744a1','acr','Paris','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('2ed830d4-caa4-41e9-82cb-3200561c1b54','profile','master','OpenID Connect built-in scope: profile','openid-connect'),('378d0484-a971-478b-931f-f1e276570eb1','microprofile-jwt','citelibre_backoffice','Microprofile - JWT built-in scope','openid-connect'),('38173258-170f-4234-b4e1-d36b76285ac8','email','master','OpenID Connect built-in scope: email','openid-connect'),('431652d9-52c9-4cba-8cff-0cb5f3f40ae0','basic','master','OpenID Connect scope for add all basic claims to the token','openid-connect'),('51423d88-6b80-4d5e-90f3-1f45881070fc','profile','Paris','OpenID Connect built-in scope: profile','openid-connect'),('53c19c3f-ba50-4883-8b1f-610580b11c43','offline_access','citelibre_backoffice','OpenID Connect built-in scope: offline_access','openid-connect'),('5c90e0b5-9ea0-445e-ba41-774564be8f4c','role_list','master','SAML role list','saml'),('64321cde-4a9c-4074-9a8d-22ecc9d73420','phone','master','OpenID Connect built-in scope: phone','openid-connect'),('7842b7cc-8938-4358-b24a-197c4666b43e','microprofile-jwt','master','Microprofile - JWT built-in scope','openid-connect'),('7861a8ec-2cea-412a-8238-d7719c2d6d5d','address','citelibre_backoffice','OpenID Connect built-in scope: address','openid-connect'),('7ed094c6-bc32-4e25-9c39-8f813774c177','email','citelibre_backoffice','OpenID Connect built-in scope: email','openid-connect'),('919cf26f-4749-4194-bafb-cc97e2869eb6','basic','citelibre_backoffice','OpenID Connect scope for add all basic claims to the token','openid-connect'),('977ca7f0-0277-46c9-b59d-efdfc40aee49','role_list','citelibre_backoffice','SAML role list','saml'),('a50b6ddc-30bf-4a9f-840d-2d77d10def51','phone','citelibre_backoffice','OpenID Connect built-in scope: phone','openid-connect'),('a8530866-bec1-4b19-8e9b-95217356dd72','web-origins','master','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('b4049566-b59c-4c79-b942-9dbc5765529f','roles','Paris','OpenID Connect scope for add user roles to the access token','openid-connect'),('b86c8e58-bab6-41fa-abc0-3fe4fd0be7d1','basic','Paris','OpenID Connect scope for add all basic claims to the token','openid-connect'),('bc65e701-b843-4a2e-a9d4-c86541c8a256','web-origins','Paris','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('c466874a-96aa-4023-a650-19796ca583d6','address','Paris','OpenID Connect built-in scope: address','openid-connect'),('c713ec71-38d0-4cca-9f20-6890428fd140','role_list','Paris','SAML role list','saml'),('cc08e286-9e53-415d-9ca1-02f5653616e3','address','master','OpenID Connect built-in scope: address','openid-connect'),('d4770b82-2205-40df-ada3-efed9a79eead','profile','citelibre_backoffice','OpenID Connect built-in scope: profile','openid-connect'),('d83a1ba7-009a-41c5-8635-25e5e7801cd7','email','Paris','OpenID Connect built-in scope: email','openid-connect'),('e1f4cb60-dcce-45ed-b471-d90ecf39e161','phone','Paris','OpenID Connect built-in scope: phone','openid-connect'),('e2252e6b-52b1-4a00-bb14-7ae9786fe176','acr','master','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('e240a4ca-1292-497b-bdc9-d15b2c018485','web-origins','citelibre_backoffice','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('e566e070-dab2-4c1e-9737-86796cdc42f6','roles','master','OpenID Connect scope for add user roles to the access token','openid-connect'),('ea9e2be9-a4e9-4ddc-9e65-2edce442510a','roles','citelibre_backoffice','OpenID Connect scope for add user roles to the access token','openid-connect'),('f303a48d-0361-4e5c-8894-1088319e16c1','offline_access','master','OpenID Connect built-in scope: offline_access','openid-connect'),('f633124f-deb0-45fc-9330-2aa478c8ec86','offline_access','Paris','OpenID Connect built-in scope: offline_access','openid-connect');
/*!40000 ALTER TABLE `CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE_ATTRIBUTES` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `VALUE` text DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`NAME`),
  KEY `IDX_CLSCOPE_ATTRS` (`SCOPE_ID`),
  CONSTRAINT `FK_CL_SCOPE_ATTR_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('068b2b23-1ee1-451b-b0b4-c943279e6945','false','display.on.consent.screen'),('068b2b23-1ee1-451b-b0b4-c943279e6945','false','include.in.token.scope'),('1d82bc89-0f68-4510-971d-208d3b2d9a13','false','display.on.consent.screen'),('1d82bc89-0f68-4510-971d-208d3b2d9a13','true','include.in.token.scope'),('21c9b10b-53d0-4159-99d3-14639af744a1','false','display.on.consent.screen'),('21c9b10b-53d0-4159-99d3-14639af744a1','false','include.in.token.scope'),('2ed830d4-caa4-41e9-82cb-3200561c1b54','${profileScopeConsentText}','consent.screen.text'),('2ed830d4-caa4-41e9-82cb-3200561c1b54','true','display.on.consent.screen'),('2ed830d4-caa4-41e9-82cb-3200561c1b54','true','include.in.token.scope'),('378d0484-a971-478b-931f-f1e276570eb1','false','display.on.consent.screen'),('378d0484-a971-478b-931f-f1e276570eb1','true','include.in.token.scope'),('38173258-170f-4234-b4e1-d36b76285ac8','${emailScopeConsentText}','consent.screen.text'),('38173258-170f-4234-b4e1-d36b76285ac8','true','display.on.consent.screen'),('38173258-170f-4234-b4e1-d36b76285ac8','true','include.in.token.scope'),('431652d9-52c9-4cba-8cff-0cb5f3f40ae0','false','display.on.consent.screen'),('431652d9-52c9-4cba-8cff-0cb5f3f40ae0','false','include.in.token.scope'),('51423d88-6b80-4d5e-90f3-1f45881070fc','${profileScopeConsentText}','consent.screen.text'),('51423d88-6b80-4d5e-90f3-1f45881070fc','true','display.on.consent.screen'),('51423d88-6b80-4d5e-90f3-1f45881070fc','true','include.in.token.scope'),('53c19c3f-ba50-4883-8b1f-610580b11c43','${offlineAccessScopeConsentText}','consent.screen.text'),('53c19c3f-ba50-4883-8b1f-610580b11c43','true','display.on.consent.screen'),('5c90e0b5-9ea0-445e-ba41-774564be8f4c','${samlRoleListScopeConsentText}','consent.screen.text'),('5c90e0b5-9ea0-445e-ba41-774564be8f4c','true','display.on.consent.screen'),('64321cde-4a9c-4074-9a8d-22ecc9d73420','${phoneScopeConsentText}','consent.screen.text'),('64321cde-4a9c-4074-9a8d-22ecc9d73420','true','display.on.consent.screen'),('64321cde-4a9c-4074-9a8d-22ecc9d73420','true','include.in.token.scope'),('7842b7cc-8938-4358-b24a-197c4666b43e','false','display.on.consent.screen'),('7842b7cc-8938-4358-b24a-197c4666b43e','true','include.in.token.scope'),('7861a8ec-2cea-412a-8238-d7719c2d6d5d','${addressScopeConsentText}','consent.screen.text'),('7861a8ec-2cea-412a-8238-d7719c2d6d5d','true','display.on.consent.screen'),('7861a8ec-2cea-412a-8238-d7719c2d6d5d','true','include.in.token.scope'),('7ed094c6-bc32-4e25-9c39-8f813774c177','${emailScopeConsentText}','consent.screen.text'),('7ed094c6-bc32-4e25-9c39-8f813774c177','true','display.on.consent.screen'),('7ed094c6-bc32-4e25-9c39-8f813774c177','true','include.in.token.scope'),('919cf26f-4749-4194-bafb-cc97e2869eb6','false','display.on.consent.screen'),('919cf26f-4749-4194-bafb-cc97e2869eb6','false','include.in.token.scope'),('977ca7f0-0277-46c9-b59d-efdfc40aee49','${samlRoleListScopeConsentText}','consent.screen.text'),('977ca7f0-0277-46c9-b59d-efdfc40aee49','true','display.on.consent.screen'),('a50b6ddc-30bf-4a9f-840d-2d77d10def51','${phoneScopeConsentText}','consent.screen.text'),('a50b6ddc-30bf-4a9f-840d-2d77d10def51','true','display.on.consent.screen'),('a50b6ddc-30bf-4a9f-840d-2d77d10def51','true','include.in.token.scope'),('a8530866-bec1-4b19-8e9b-95217356dd72','','consent.screen.text'),('a8530866-bec1-4b19-8e9b-95217356dd72','false','display.on.consent.screen'),('a8530866-bec1-4b19-8e9b-95217356dd72','false','include.in.token.scope'),('b4049566-b59c-4c79-b942-9dbc5765529f','${rolesScopeConsentText}','consent.screen.text'),('b4049566-b59c-4c79-b942-9dbc5765529f','true','display.on.consent.screen'),('b4049566-b59c-4c79-b942-9dbc5765529f','false','include.in.token.scope'),('b86c8e58-bab6-41fa-abc0-3fe4fd0be7d1','false','display.on.consent.screen'),('b86c8e58-bab6-41fa-abc0-3fe4fd0be7d1','false','include.in.token.scope'),('bc65e701-b843-4a2e-a9d4-c86541c8a256','','consent.screen.text'),('bc65e701-b843-4a2e-a9d4-c86541c8a256','false','display.on.consent.screen'),('bc65e701-b843-4a2e-a9d4-c86541c8a256','false','include.in.token.scope'),('c466874a-96aa-4023-a650-19796ca583d6','${addressScopeConsentText}','consent.screen.text'),('c466874a-96aa-4023-a650-19796ca583d6','true','display.on.consent.screen'),('c466874a-96aa-4023-a650-19796ca583d6','true','include.in.token.scope'),('c713ec71-38d0-4cca-9f20-6890428fd140','${samlRoleListScopeConsentText}','consent.screen.text'),('c713ec71-38d0-4cca-9f20-6890428fd140','true','display.on.consent.screen'),('cc08e286-9e53-415d-9ca1-02f5653616e3','${addressScopeConsentText}','consent.screen.text'),('cc08e286-9e53-415d-9ca1-02f5653616e3','true','display.on.consent.screen'),('cc08e286-9e53-415d-9ca1-02f5653616e3','true','include.in.token.scope'),('d4770b82-2205-40df-ada3-efed9a79eead','${profileScopeConsentText}','consent.screen.text'),('d4770b82-2205-40df-ada3-efed9a79eead','true','display.on.consent.screen'),('d4770b82-2205-40df-ada3-efed9a79eead','true','include.in.token.scope'),('d83a1ba7-009a-41c5-8635-25e5e7801cd7','${emailScopeConsentText}','consent.screen.text'),('d83a1ba7-009a-41c5-8635-25e5e7801cd7','true','display.on.consent.screen'),('d83a1ba7-009a-41c5-8635-25e5e7801cd7','true','include.in.token.scope'),('e1f4cb60-dcce-45ed-b471-d90ecf39e161','${phoneScopeConsentText}','consent.screen.text'),('e1f4cb60-dcce-45ed-b471-d90ecf39e161','true','display.on.consent.screen'),('e1f4cb60-dcce-45ed-b471-d90ecf39e161','true','include.in.token.scope'),('e2252e6b-52b1-4a00-bb14-7ae9786fe176','false','display.on.consent.screen'),('e2252e6b-52b1-4a00-bb14-7ae9786fe176','false','include.in.token.scope'),('e240a4ca-1292-497b-bdc9-d15b2c018485','','consent.screen.text'),('e240a4ca-1292-497b-bdc9-d15b2c018485','false','display.on.consent.screen'),('e240a4ca-1292-497b-bdc9-d15b2c018485','false','include.in.token.scope'),('e566e070-dab2-4c1e-9737-86796cdc42f6','${rolesScopeConsentText}','consent.screen.text'),('e566e070-dab2-4c1e-9737-86796cdc42f6','true','display.on.consent.screen'),('e566e070-dab2-4c1e-9737-86796cdc42f6','false','include.in.token.scope'),('ea9e2be9-a4e9-4ddc-9e65-2edce442510a','${rolesScopeConsentText}','consent.screen.text'),('ea9e2be9-a4e9-4ddc-9e65-2edce442510a','true','display.on.consent.screen'),('ea9e2be9-a4e9-4ddc-9e65-2edce442510a','false','include.in.token.scope'),('f303a48d-0361-4e5c-8894-1088319e16c1','${offlineAccessScopeConsentText}','consent.screen.text'),('f303a48d-0361-4e5c-8894-1088319e16c1','true','display.on.consent.screen'),('f633124f-deb0-45fc-9330-2aa478c8ec86','${offlineAccessScopeConsentText}','consent.screen.text'),('f633124f-deb0-45fc-9330-2aa478c8ec86','true','display.on.consent.screen');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_CLIENT`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE_CLIENT` (
  `CLIENT_ID` varchar(255) NOT NULL,
  `SCOPE_ID` varchar(255) NOT NULL,
  `DEFAULT_SCOPE` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`CLIENT_ID`,`SCOPE_ID`),
  KEY `IDX_CLSCOPE_CL` (`CLIENT_ID`),
  KEY `IDX_CL_CLSCOPE` (`SCOPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('0335247d-0834-41b2-a5c1-7e0c321b9968','378d0484-a971-478b-931f-f1e276570eb1','\0'),('0335247d-0834-41b2-a5c1-7e0c321b9968','53c19c3f-ba50-4883-8b1f-610580b11c43','\0'),('0335247d-0834-41b2-a5c1-7e0c321b9968','7861a8ec-2cea-412a-8238-d7719c2d6d5d','\0'),('0335247d-0834-41b2-a5c1-7e0c321b9968','7ed094c6-bc32-4e25-9c39-8f813774c177',''),('0335247d-0834-41b2-a5c1-7e0c321b9968','919cf26f-4749-4194-bafb-cc97e2869eb6',''),('0335247d-0834-41b2-a5c1-7e0c321b9968','a50b6ddc-30bf-4a9f-840d-2d77d10def51','\0'),('0335247d-0834-41b2-a5c1-7e0c321b9968','d4770b82-2205-40df-ada3-efed9a79eead',''),('0335247d-0834-41b2-a5c1-7e0c321b9968','e240a4ca-1292-497b-bdc9-d15b2c018485',''),('0335247d-0834-41b2-a5c1-7e0c321b9968','ea9e2be9-a4e9-4ddc-9e65-2edce442510a',''),('06251203-e295-46d3-b742-083e447482fc','068b2b23-1ee1-451b-b0b4-c943279e6945',''),('06251203-e295-46d3-b742-083e447482fc','378d0484-a971-478b-931f-f1e276570eb1','\0'),('06251203-e295-46d3-b742-083e447482fc','53c19c3f-ba50-4883-8b1f-610580b11c43','\0'),('06251203-e295-46d3-b742-083e447482fc','7861a8ec-2cea-412a-8238-d7719c2d6d5d','\0'),('06251203-e295-46d3-b742-083e447482fc','7ed094c6-bc32-4e25-9c39-8f813774c177',''),('06251203-e295-46d3-b742-083e447482fc','919cf26f-4749-4194-bafb-cc97e2869eb6',''),('06251203-e295-46d3-b742-083e447482fc','a50b6ddc-30bf-4a9f-840d-2d77d10def51','\0'),('06251203-e295-46d3-b742-083e447482fc','d4770b82-2205-40df-ada3-efed9a79eead',''),('06251203-e295-46d3-b742-083e447482fc','e240a4ca-1292-497b-bdc9-d15b2c018485',''),('06251203-e295-46d3-b742-083e447482fc','ea9e2be9-a4e9-4ddc-9e65-2edce442510a',''),('06659433-c299-4183-af48-a8ab8f7df65b','1d82bc89-0f68-4510-971d-208d3b2d9a13','\0'),('06659433-c299-4183-af48-a8ab8f7df65b','51423d88-6b80-4d5e-90f3-1f45881070fc',''),('06659433-c299-4183-af48-a8ab8f7df65b','b4049566-b59c-4c79-b942-9dbc5765529f',''),('06659433-c299-4183-af48-a8ab8f7df65b','b86c8e58-bab6-41fa-abc0-3fe4fd0be7d1',''),('06659433-c299-4183-af48-a8ab8f7df65b','bc65e701-b843-4a2e-a9d4-c86541c8a256',''),('06659433-c299-4183-af48-a8ab8f7df65b','c466874a-96aa-4023-a650-19796ca583d6','\0'),('06659433-c299-4183-af48-a8ab8f7df65b','d83a1ba7-009a-41c5-8635-25e5e7801cd7',''),('06659433-c299-4183-af48-a8ab8f7df65b','e1f4cb60-dcce-45ed-b471-d90ecf39e161','\0'),('06659433-c299-4183-af48-a8ab8f7df65b','f633124f-deb0-45fc-9330-2aa478c8ec86','\0'),('1302d944-0f75-473a-9977-826784129cc7','068b2b23-1ee1-451b-b0b4-c943279e6945',''),('1302d944-0f75-473a-9977-826784129cc7','378d0484-a971-478b-931f-f1e276570eb1','\0'),('1302d944-0f75-473a-9977-826784129cc7','53c19c3f-ba50-4883-8b1f-610580b11c43','\0'),('1302d944-0f75-473a-9977-826784129cc7','7861a8ec-2cea-412a-8238-d7719c2d6d5d','\0'),('1302d944-0f75-473a-9977-826784129cc7','7ed094c6-bc32-4e25-9c39-8f813774c177',''),('1302d944-0f75-473a-9977-826784129cc7','a50b6ddc-30bf-4a9f-840d-2d77d10def51','\0'),('1302d944-0f75-473a-9977-826784129cc7','d4770b82-2205-40df-ada3-efed9a79eead',''),('1302d944-0f75-473a-9977-826784129cc7','e240a4ca-1292-497b-bdc9-d15b2c018485',''),('1302d944-0f75-473a-9977-826784129cc7','ea9e2be9-a4e9-4ddc-9e65-2edce442510a',''),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','1d82bc89-0f68-4510-971d-208d3b2d9a13','\0'),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','51423d88-6b80-4d5e-90f3-1f45881070fc',''),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','b4049566-b59c-4c79-b942-9dbc5765529f',''),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','b86c8e58-bab6-41fa-abc0-3fe4fd0be7d1',''),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','bc65e701-b843-4a2e-a9d4-c86541c8a256',''),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','c466874a-96aa-4023-a650-19796ca583d6','\0'),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','d83a1ba7-009a-41c5-8635-25e5e7801cd7',''),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','e1f4cb60-dcce-45ed-b471-d90ecf39e161','\0'),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','f633124f-deb0-45fc-9330-2aa478c8ec86','\0'),('245bbac1-1581-4b97-be3d-401043deb280','068b2b23-1ee1-451b-b0b4-c943279e6945',''),('245bbac1-1581-4b97-be3d-401043deb280','378d0484-a971-478b-931f-f1e276570eb1','\0'),('245bbac1-1581-4b97-be3d-401043deb280','53c19c3f-ba50-4883-8b1f-610580b11c43','\0'),('245bbac1-1581-4b97-be3d-401043deb280','7861a8ec-2cea-412a-8238-d7719c2d6d5d','\0'),('245bbac1-1581-4b97-be3d-401043deb280','7ed094c6-bc32-4e25-9c39-8f813774c177',''),('245bbac1-1581-4b97-be3d-401043deb280','919cf26f-4749-4194-bafb-cc97e2869eb6',''),('245bbac1-1581-4b97-be3d-401043deb280','a50b6ddc-30bf-4a9f-840d-2d77d10def51','\0'),('245bbac1-1581-4b97-be3d-401043deb280','d4770b82-2205-40df-ada3-efed9a79eead',''),('245bbac1-1581-4b97-be3d-401043deb280','e240a4ca-1292-497b-bdc9-d15b2c018485',''),('245bbac1-1581-4b97-be3d-401043deb280','ea9e2be9-a4e9-4ddc-9e65-2edce442510a',''),('5c41c941-c9c6-480f-b39d-ec696e79db28','068b2b23-1ee1-451b-b0b4-c943279e6945',''),('5c41c941-c9c6-480f-b39d-ec696e79db28','378d0484-a971-478b-931f-f1e276570eb1','\0'),('5c41c941-c9c6-480f-b39d-ec696e79db28','53c19c3f-ba50-4883-8b1f-610580b11c43','\0'),('5c41c941-c9c6-480f-b39d-ec696e79db28','7861a8ec-2cea-412a-8238-d7719c2d6d5d','\0'),('5c41c941-c9c6-480f-b39d-ec696e79db28','7ed094c6-bc32-4e25-9c39-8f813774c177',''),('5c41c941-c9c6-480f-b39d-ec696e79db28','919cf26f-4749-4194-bafb-cc97e2869eb6',''),('5c41c941-c9c6-480f-b39d-ec696e79db28','a50b6ddc-30bf-4a9f-840d-2d77d10def51','\0'),('5c41c941-c9c6-480f-b39d-ec696e79db28','d4770b82-2205-40df-ada3-efed9a79eead',''),('5c41c941-c9c6-480f-b39d-ec696e79db28','e240a4ca-1292-497b-bdc9-d15b2c018485',''),('5c41c941-c9c6-480f-b39d-ec696e79db28','ea9e2be9-a4e9-4ddc-9e65-2edce442510a',''),('89223ba7-1534-4822-b5b2-e523a122decf','068b2b23-1ee1-451b-b0b4-c943279e6945',''),('89223ba7-1534-4822-b5b2-e523a122decf','378d0484-a971-478b-931f-f1e276570eb1','\0'),('89223ba7-1534-4822-b5b2-e523a122decf','53c19c3f-ba50-4883-8b1f-610580b11c43','\0'),('89223ba7-1534-4822-b5b2-e523a122decf','7861a8ec-2cea-412a-8238-d7719c2d6d5d','\0'),('89223ba7-1534-4822-b5b2-e523a122decf','7ed094c6-bc32-4e25-9c39-8f813774c177',''),('89223ba7-1534-4822-b5b2-e523a122decf','a50b6ddc-30bf-4a9f-840d-2d77d10def51','\0'),('89223ba7-1534-4822-b5b2-e523a122decf','d4770b82-2205-40df-ada3-efed9a79eead',''),('89223ba7-1534-4822-b5b2-e523a122decf','e240a4ca-1292-497b-bdc9-d15b2c018485',''),('89223ba7-1534-4822-b5b2-e523a122decf','ea9e2be9-a4e9-4ddc-9e65-2edce442510a',''),('8f8ef5da-0e40-4034-96e9-203878205f27','2ed830d4-caa4-41e9-82cb-3200561c1b54',''),('8f8ef5da-0e40-4034-96e9-203878205f27','38173258-170f-4234-b4e1-d36b76285ac8',''),('8f8ef5da-0e40-4034-96e9-203878205f27','431652d9-52c9-4cba-8cff-0cb5f3f40ae0',''),('8f8ef5da-0e40-4034-96e9-203878205f27','64321cde-4a9c-4074-9a8d-22ecc9d73420','\0'),('8f8ef5da-0e40-4034-96e9-203878205f27','7842b7cc-8938-4358-b24a-197c4666b43e','\0'),('8f8ef5da-0e40-4034-96e9-203878205f27','a8530866-bec1-4b19-8e9b-95217356dd72',''),('8f8ef5da-0e40-4034-96e9-203878205f27','cc08e286-9e53-415d-9ca1-02f5653616e3','\0'),('8f8ef5da-0e40-4034-96e9-203878205f27','e566e070-dab2-4c1e-9737-86796cdc42f6',''),('8f8ef5da-0e40-4034-96e9-203878205f27','f303a48d-0361-4e5c-8894-1088319e16c1','\0'),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','1d82bc89-0f68-4510-971d-208d3b2d9a13','\0'),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','51423d88-6b80-4d5e-90f3-1f45881070fc',''),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','b4049566-b59c-4c79-b942-9dbc5765529f',''),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','b86c8e58-bab6-41fa-abc0-3fe4fd0be7d1',''),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','bc65e701-b843-4a2e-a9d4-c86541c8a256',''),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','c466874a-96aa-4023-a650-19796ca583d6','\0'),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','d83a1ba7-009a-41c5-8635-25e5e7801cd7',''),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','e1f4cb60-dcce-45ed-b471-d90ecf39e161','\0'),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','f633124f-deb0-45fc-9330-2aa478c8ec86','\0'),('a4bcf244-3008-4b91-8d93-911f7a843e7f','068b2b23-1ee1-451b-b0b4-c943279e6945',''),('a4bcf244-3008-4b91-8d93-911f7a843e7f','378d0484-a971-478b-931f-f1e276570eb1','\0'),('a4bcf244-3008-4b91-8d93-911f7a843e7f','53c19c3f-ba50-4883-8b1f-610580b11c43','\0'),('a4bcf244-3008-4b91-8d93-911f7a843e7f','7861a8ec-2cea-412a-8238-d7719c2d6d5d','\0'),('a4bcf244-3008-4b91-8d93-911f7a843e7f','7ed094c6-bc32-4e25-9c39-8f813774c177',''),('a4bcf244-3008-4b91-8d93-911f7a843e7f','919cf26f-4749-4194-bafb-cc97e2869eb6',''),('a4bcf244-3008-4b91-8d93-911f7a843e7f','a50b6ddc-30bf-4a9f-840d-2d77d10def51','\0'),('a4bcf244-3008-4b91-8d93-911f7a843e7f','d4770b82-2205-40df-ada3-efed9a79eead',''),('a4bcf244-3008-4b91-8d93-911f7a843e7f','e240a4ca-1292-497b-bdc9-d15b2c018485',''),('a4bcf244-3008-4b91-8d93-911f7a843e7f','ea9e2be9-a4e9-4ddc-9e65-2edce442510a',''),('b741f744-8388-4233-9edc-c9f2ed49016e','2ed830d4-caa4-41e9-82cb-3200561c1b54',''),('b741f744-8388-4233-9edc-c9f2ed49016e','38173258-170f-4234-b4e1-d36b76285ac8',''),('b741f744-8388-4233-9edc-c9f2ed49016e','431652d9-52c9-4cba-8cff-0cb5f3f40ae0',''),('b741f744-8388-4233-9edc-c9f2ed49016e','64321cde-4a9c-4074-9a8d-22ecc9d73420','\0'),('b741f744-8388-4233-9edc-c9f2ed49016e','7842b7cc-8938-4358-b24a-197c4666b43e','\0'),('b741f744-8388-4233-9edc-c9f2ed49016e','a8530866-bec1-4b19-8e9b-95217356dd72',''),('b741f744-8388-4233-9edc-c9f2ed49016e','cc08e286-9e53-415d-9ca1-02f5653616e3','\0'),('b741f744-8388-4233-9edc-c9f2ed49016e','e566e070-dab2-4c1e-9737-86796cdc42f6',''),('b741f744-8388-4233-9edc-c9f2ed49016e','f303a48d-0361-4e5c-8894-1088319e16c1','\0'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','1d82bc89-0f68-4510-971d-208d3b2d9a13','\0'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','51423d88-6b80-4d5e-90f3-1f45881070fc',''),('c0a41b9a-c749-41b3-8d6d-308d6d945245','b4049566-b59c-4c79-b942-9dbc5765529f',''),('c0a41b9a-c749-41b3-8d6d-308d6d945245','b86c8e58-bab6-41fa-abc0-3fe4fd0be7d1',''),('c0a41b9a-c749-41b3-8d6d-308d6d945245','bc65e701-b843-4a2e-a9d4-c86541c8a256',''),('c0a41b9a-c749-41b3-8d6d-308d6d945245','c466874a-96aa-4023-a650-19796ca583d6','\0'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','d83a1ba7-009a-41c5-8635-25e5e7801cd7',''),('c0a41b9a-c749-41b3-8d6d-308d6d945245','e1f4cb60-dcce-45ed-b471-d90ecf39e161','\0'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','f633124f-deb0-45fc-9330-2aa478c8ec86','\0'),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','1d82bc89-0f68-4510-971d-208d3b2d9a13','\0'),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','51423d88-6b80-4d5e-90f3-1f45881070fc',''),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','b4049566-b59c-4c79-b942-9dbc5765529f',''),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','bc65e701-b843-4a2e-a9d4-c86541c8a256',''),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','c466874a-96aa-4023-a650-19796ca583d6','\0'),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','d83a1ba7-009a-41c5-8635-25e5e7801cd7',''),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','e1f4cb60-dcce-45ed-b471-d90ecf39e161','\0'),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','f633124f-deb0-45fc-9330-2aa478c8ec86','\0'),('d2080247-3c8e-489c-a66f-b905d421a5d8','2ed830d4-caa4-41e9-82cb-3200561c1b54',''),('d2080247-3c8e-489c-a66f-b905d421a5d8','38173258-170f-4234-b4e1-d36b76285ac8',''),('d2080247-3c8e-489c-a66f-b905d421a5d8','431652d9-52c9-4cba-8cff-0cb5f3f40ae0',''),('d2080247-3c8e-489c-a66f-b905d421a5d8','64321cde-4a9c-4074-9a8d-22ecc9d73420','\0'),('d2080247-3c8e-489c-a66f-b905d421a5d8','7842b7cc-8938-4358-b24a-197c4666b43e','\0'),('d2080247-3c8e-489c-a66f-b905d421a5d8','a8530866-bec1-4b19-8e9b-95217356dd72',''),('d2080247-3c8e-489c-a66f-b905d421a5d8','cc08e286-9e53-415d-9ca1-02f5653616e3','\0'),('d2080247-3c8e-489c-a66f-b905d421a5d8','e566e070-dab2-4c1e-9737-86796cdc42f6',''),('d2080247-3c8e-489c-a66f-b905d421a5d8','f303a48d-0361-4e5c-8894-1088319e16c1','\0'),('d6531404-964c-457c-bf14-5213c9d58277','2ed830d4-caa4-41e9-82cb-3200561c1b54',''),('d6531404-964c-457c-bf14-5213c9d58277','38173258-170f-4234-b4e1-d36b76285ac8',''),('d6531404-964c-457c-bf14-5213c9d58277','64321cde-4a9c-4074-9a8d-22ecc9d73420','\0'),('d6531404-964c-457c-bf14-5213c9d58277','7842b7cc-8938-4358-b24a-197c4666b43e','\0'),('d6531404-964c-457c-bf14-5213c9d58277','a8530866-bec1-4b19-8e9b-95217356dd72',''),('d6531404-964c-457c-bf14-5213c9d58277','cc08e286-9e53-415d-9ca1-02f5653616e3','\0'),('d6531404-964c-457c-bf14-5213c9d58277','e566e070-dab2-4c1e-9737-86796cdc42f6',''),('d6531404-964c-457c-bf14-5213c9d58277','f303a48d-0361-4e5c-8894-1088319e16c1','\0'),('d80a596d-3318-4854-a213-05b80614bf0a','1d82bc89-0f68-4510-971d-208d3b2d9a13','\0'),('d80a596d-3318-4854-a213-05b80614bf0a','51423d88-6b80-4d5e-90f3-1f45881070fc',''),('d80a596d-3318-4854-a213-05b80614bf0a','b4049566-b59c-4c79-b942-9dbc5765529f',''),('d80a596d-3318-4854-a213-05b80614bf0a','bc65e701-b843-4a2e-a9d4-c86541c8a256',''),('d80a596d-3318-4854-a213-05b80614bf0a','c466874a-96aa-4023-a650-19796ca583d6','\0'),('d80a596d-3318-4854-a213-05b80614bf0a','d83a1ba7-009a-41c5-8635-25e5e7801cd7',''),('d80a596d-3318-4854-a213-05b80614bf0a','e1f4cb60-dcce-45ed-b471-d90ecf39e161','\0'),('d80a596d-3318-4854-a213-05b80614bf0a','f633124f-deb0-45fc-9330-2aa478c8ec86','\0'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','1d82bc89-0f68-4510-971d-208d3b2d9a13','\0'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','51423d88-6b80-4d5e-90f3-1f45881070fc',''),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','b4049566-b59c-4c79-b942-9dbc5765529f',''),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','b86c8e58-bab6-41fa-abc0-3fe4fd0be7d1',''),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','bc65e701-b843-4a2e-a9d4-c86541c8a256',''),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','c466874a-96aa-4023-a650-19796ca583d6','\0'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','d83a1ba7-009a-41c5-8635-25e5e7801cd7',''),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','e1f4cb60-dcce-45ed-b471-d90ecf39e161','\0'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','f633124f-deb0-45fc-9330-2aa478c8ec86','\0'),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','2ed830d4-caa4-41e9-82cb-3200561c1b54',''),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','38173258-170f-4234-b4e1-d36b76285ac8',''),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','64321cde-4a9c-4074-9a8d-22ecc9d73420','\0'),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','7842b7cc-8938-4358-b24a-197c4666b43e','\0'),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','a8530866-bec1-4b19-8e9b-95217356dd72',''),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','cc08e286-9e53-415d-9ca1-02f5653616e3','\0'),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','e566e070-dab2-4c1e-9737-86796cdc42f6',''),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','f303a48d-0361-4e5c-8894-1088319e16c1','\0'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','2ed830d4-caa4-41e9-82cb-3200561c1b54',''),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','38173258-170f-4234-b4e1-d36b76285ac8',''),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','431652d9-52c9-4cba-8cff-0cb5f3f40ae0',''),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','64321cde-4a9c-4074-9a8d-22ecc9d73420','\0'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','7842b7cc-8938-4358-b24a-197c4666b43e','\0'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','a8530866-bec1-4b19-8e9b-95217356dd72',''),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','cc08e286-9e53-415d-9ca1-02f5653616e3','\0'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','e566e070-dab2-4c1e-9737-86796cdc42f6',''),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','f303a48d-0361-4e5c-8894-1088319e16c1','\0');
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE_ROLE_MAPPING` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`ROLE_ID`),
  KEY `IDX_CLSCOPE_ROLE` (`SCOPE_ID`),
  KEY `IDX_ROLE_CLSCOPE` (`ROLE_ID`),
  CONSTRAINT `FK_CL_SCOPE_RM_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('53c19c3f-ba50-4883-8b1f-610580b11c43','44fba3e4-3853-4e6b-b599-69bf11486b6e'),('f303a48d-0361-4e5c-8894-1088319e16c1','f5ec1764-5fd3-4027-a509-13a4eaec79c7'),('f633124f-deb0-45fc-9330-2aa478c8ec86','5c308d05-b190-4fdd-8c19-a05d6e02da2a');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENT`
--

DROP TABLE IF EXISTS `COMPONENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPONENT` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_TYPE` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `SUB_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_COMPONENT_REALM` (`REALM_ID`),
  KEY `IDX_COMPONENT_PROVIDER_TYPE` (`PROVIDER_TYPE`),
  CONSTRAINT `FK_COMPONENT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPONENT`
--

LOCK TABLES `COMPONENT` WRITE;
/*!40000 ALTER TABLE `COMPONENT` DISABLE KEYS */;
INSERT INTO `COMPONENT` VALUES ('004a938f-4593-440b-bbd7-ab69ce51238e','aes-generated','Paris','aes-generated','org.keycloak.keys.KeyProvider','Paris',NULL),('0a68d83f-ac0d-4b0e-b930-c354f12c8dce','rsa-enc-generated','master','rsa-enc-generated','org.keycloak.keys.KeyProvider','master',NULL),('10a3a385-5de6-43b3-a660-fbe3d3dbda64','hmac-generated-hs512','master','hmac-generated','org.keycloak.keys.KeyProvider','master',NULL),('21b99f02-112b-4ce8-b532-a54c972a77d6','Allowed Client Scopes','citelibre_backoffice','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','citelibre_backoffice','anonymous'),('22395271-f7be-486a-97e0-3ba9c8e70bb5','Allowed Client Scopes','Paris','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','anonymous'),('23219c33-4561-423f-a43b-020a441e4cb8','Full Scope Disabled','master','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('23a3a9f6-c10e-4f5c-b444-5c65b6047455','Allowed Client Scopes','master','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','authenticated'),('24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','Allowed Protocol Mapper Types','master','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','authenticated'),('279fd35a-b55a-4e7c-9aab-12043c762c11','Allowed Client Scopes','citelibre_backoffice','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','citelibre_backoffice','authenticated'),('321f6835-45cb-4d60-83a3-33b5a50700b6','hmac-generated','Paris','hmac-generated','org.keycloak.keys.KeyProvider','Paris',NULL),('3330231f-0671-4d45-b336-9bd76150f2da','Allowed Client Scopes','Paris','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','authenticated'),('346b5c3d-2094-4ec7-b1c5-1e6afa8cd6fd','Full Scope Disabled','Paris','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','anonymous'),('38289d3b-9353-45e3-bf8d-2593e3b8a318','Consent Required','master','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('44999d5b-e414-4582-8689-4e900b5a2de1','Consent Required','Paris','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','anonymous'),('5091f01d-7d70-4d0d-bafb-d8b3856c4f5c','rsa-generated','citelibre_backoffice','rsa-generated','org.keycloak.keys.KeyProvider','citelibre_backoffice',NULL),('57736f14-8fb7-4f27-b5e7-a7de5d818b90','Max Clients Limit','master','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('5a1bf8c4-5c3d-4008-82ab-0177b2cc1385','Full Scope Disabled','citelibre_backoffice','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','citelibre_backoffice','anonymous'),('5bee87f2-e008-465c-9377-bbe5b545a00f','Allowed Protocol Mapper Types','master','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('5f33cf7d-9b54-4236-a4f9-52469a322109','Max Clients Limit','citelibre_backoffice','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','citelibre_backoffice','anonymous'),('66c8c911-928c-484d-a4a1-11959f0e9830','rsa-generated','master','rsa-generated','org.keycloak.keys.KeyProvider','master',NULL),('66efddf5-94cc-451c-b45d-40897cb3de30',NULL,'master','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','master',NULL),('6d5013ea-7135-4e2c-a08a-acdf87d5096b','aes-generated','master','aes-generated','org.keycloak.keys.KeyProvider','master',NULL),('8078e40f-e7a1-4a8f-b662-991136418b76','hmac-generated-hs512','Paris','hmac-generated','org.keycloak.keys.KeyProvider','Paris',NULL),('824561fd-ceb1-444b-9239-0d8075a8a176','hmac-generated','master','hmac-generated','org.keycloak.keys.KeyProvider','master',NULL),('84232b38-092f-480e-8df4-0a8800d04e5b','Allowed Protocol Mapper Types','Paris','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','anonymous'),('8ff17af7-5d48-4a20-b2bc-8ee5f47e72e7','hmac-generated-hs512','citelibre_backoffice','hmac-generated','org.keycloak.keys.KeyProvider','citelibre_backoffice',NULL),('a170f338-9a70-4d04-855a-93233e0aeb7f','Max Clients Limit','Paris','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','anonymous'),('a57916ac-bef9-40f5-9977-dc04a49ad020','Trusted Hosts','Paris','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','anonymous'),('aeb7850d-2675-45aa-8568-dd5f5bd6053f','Allowed Client Scopes','master','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('af6d0dc6-2180-401b-9b55-85156b0b2ccd','rsa-generated','Paris','rsa-generated','org.keycloak.keys.KeyProvider','Paris',NULL),('b5953d8e-d301-40fe-b71b-1cca2455acfc','Consent Required','citelibre_backoffice','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','citelibre_backoffice','anonymous'),('bbee16c0-b86d-4214-830e-01fb47441d97','Trusted Hosts','master','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('d78fecf6-55e7-4c37-a534-70725ad30a83','Allowed Protocol Mapper Types','citelibre_backoffice','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','citelibre_backoffice','authenticated'),('d8ed536f-c3f4-4df8-8ee8-b590ea9768fc',NULL,'citelibre_backoffice','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','citelibre_backoffice',NULL),('e637a7ea-0f6a-41be-a9b9-a04a7fd69154',NULL,'Paris','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','Paris',NULL),('e80e535f-efb6-4d0a-8fa2-4aed97b12818','Allowed Protocol Mapper Types','Paris','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','authenticated'),('ec0a5ef2-b84d-4fec-a38d-7b4ae078427f','hmac-generated','citelibre_backoffice','hmac-generated','org.keycloak.keys.KeyProvider','citelibre_backoffice',NULL),('ed136b31-2afb-4075-8c00-621a30e0bf34','aes-generated','citelibre_backoffice','aes-generated','org.keycloak.keys.KeyProvider','citelibre_backoffice',NULL),('eeb50beb-68b9-4475-b83f-860d2d6905bb','Trusted Hosts','citelibre_backoffice','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','citelibre_backoffice','anonymous'),('f0e5af92-c2fe-4cef-ac4f-5d79105dee77','Allowed Protocol Mapper Types','citelibre_backoffice','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','citelibre_backoffice','anonymous'),('f87f0825-2652-4239-a0d6-e7d394bb1c17','rsa-enc-generated','Paris','rsa-enc-generated','org.keycloak.keys.KeyProvider','Paris',NULL),('fe682aac-dfbb-45cb-8c7b-8b34471f9b5b','rsa-enc-generated','citelibre_backoffice','rsa-enc-generated','org.keycloak.keys.KeyProvider','citelibre_backoffice',NULL);
/*!40000 ALTER TABLE `COMPONENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENT_CONFIG`
--

DROP TABLE IF EXISTS `COMPONENT_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPONENT_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `COMPONENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_COMPO_CONFIG_COMPO` (`COMPONENT_ID`),
  CONSTRAINT `FK_COMPONENT_CONFIG` FOREIGN KEY (`COMPONENT_ID`) REFERENCES `COMPONENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
/*!40000 ALTER TABLE `COMPONENT_CONFIG` DISABLE KEYS */;
INSERT INTO `COMPONENT_CONFIG` VALUES ('00903aac-2f8e-4d39-af82-fbf99913cde9','eeb50beb-68b9-4475-b83f-860d2d6905bb','host-sending-registration-request-must-match','true'),('02ebc96c-c38b-41df-bb10-bdf34e8fa3bb','af6d0dc6-2180-401b-9b55-85156b0b2ccd','certificate','MIICmTCCAYECBgGIKZpt9zANBgkqhkiG9w0BAQsFADAQMQ4wDAYDVQQDDAVwYXJpczAeFw0yMzA1MTcxMjA0MjZaFw0zMzA1MTcxMjA2MDZaMBAxDjAMBgNVBAMMBXBhcmlzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkSKj1J7IZt4IkRR3X8R3iYhwG/B6HYlq4C3xKdpkl2HWBkmxeKLGzFGXIfIiitoWAsoy0POOnx8QAqkWFR9mXLuPthiUcIfqNv028GeCjV+H+GJ6ISASEYXJtyvvDO4xYWl7bu3UzptHOTirZ1uNzCbcIrPBqXPu4w7KGY5ox0iig6nfmjER7IPoqTJq3Yez5YFp1RYJsaawFckNghQaysT0+gwYE0bpILjtxmSpuIz+lxpKLKBubHbg+A3klcHfBn48Y8wwtoWZ1Glg2qTYTq/oQoPewD+NKaCKTB42p5IFkRXguCXa/1HRJoWAKTvn4BFAOj8aA9faSAfNg1ZW5QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQAKcqLNpCKdTAlT84eSVX1pUz77lW6Cqv9jdT8y9Pbk46K1kICf44AdLTPl6j8rTtIbn045RIhyATf/A1Lm0j/6Mn8XUbcHirlfJCfK/+qO75zIfDYNFTtgyGtB6+SZkh55cgqELsj/x4hBVISVhqUhgBxx6bzv73XjCFE0/6P/i6Vh1GimJxbPlQPriOdVMgPLteORL0nyjLjJiSIDmdtKo2NTlUC6AIZRe/VM5c+cSaTIydDxBZTyODapRn4VUqi6Yw4XzUV6Pv2WRevpEMuEWg7EiYGb7FKre6roT4J3YvfUbCIVMteu3NSaj3aim86wrLci+DpHVB0okb7mWDPy'),('039a0fd4-3440-43c9-9d24-ce94b52af14e','d78fecf6-55e7-4c37-a534-70725ad30a83','allowed-protocol-mapper-types','oidc-address-mapper'),('042f5930-2a79-4129-b996-3de5f0304cc4','f0e5af92-c2fe-4cef-ac4f-5d79105dee77','allowed-protocol-mapper-types','saml-role-list-mapper'),('0479452b-c0b9-423a-9f9e-25f6083ddd63','6d5013ea-7135-4e2c-a08a-acdf87d5096b','priority','100'),('04ae5bac-a1a5-4117-bed7-17f98068df0b','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','saml-user-property-mapper'),('0531745d-72e7-4ceb-b3b8-ec9290de90f8','ed136b31-2afb-4075-8c00-621a30e0bf34','kid','3fd7b5a2-9fa6-4651-a11e-48f7f2141a91'),('05515fec-5d99-43e4-8133-bc2e85fcf5cc','d78fecf6-55e7-4c37-a534-70725ad30a83','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('064cebd1-ff99-4cd8-a922-afc70c1e63fb','0a68d83f-ac0d-4b0e-b930-c354f12c8dce','privateKey','MIIEowIBAAKCAQEAlPkMEYWcMJhPs4pdbHOwSaXil/19B4CYbdRAqyZDsmUc60SGVOI6Vzd+74U0A0fCOTi3npwTTpmbr89cLx9v0/ZGCv/uCR1oq4Fda3seLeEwhZ8RHrJP8GBD6P3+k0Uh9Ez3jwlh5vv0wfgeQVQm6++kl46B3Vm5Av6HiOABFC9LWg3+VU6gKQaat4mkdfAYaqxwEt1I9BQWPTnGXFuGmYpgvsL6piu/CvLyZgc2L6HWaxRJgtn4scfmGDACeotpwv568QmnnDxag9XZKWLaw/ob3dUPREkXxFOoIl9fe2AcWPkgIaQAzNvGKwib6Wpr3HRIPP6qQwLPDLmOuvmG/wIDAQABAoIBAEnpAf7Tfjlx5+EY3d8HysfPYIut/VEykO20p90CIAYrOlzTY55Lm0xYQUcOnE6gVJFVPWyY3M9bUK26QG80tqPABOJCNdQZ3itxBGtl6wQyPIOe9rx3FUgaSrcXBS4F16HAafZyXjteeAGgW0poOONHwy5aSr4KXMtKgu36zS44wVSJU6wCDKQUUCsaZWZmsZfNshZoHdECczdiqofmil2pW6k/dfqTnILoGn4uA9glnv37zLeRqhWmrSqi8/ABjI72Z+3x6Mq2Zq7c+RpxZKtDEldi1qd6dww+oh8EAx9ukLXtVAVtURTA5QUAcnnwytuzoZsTMpb5hj3s2bzGwsECgYEA3hZce+VnmtRSloUnR/IcjmvQMp1gkYhwDbPk60Uerxkar6uX5GR/tAMYh1zu0FlJnj3agqM3M6Ib34SF/TPGksGVX0ohAG2mBuAyf4vxzFGj9Sc9hmKziuyVOcrAryxnbdGX2ZbnVXUYaUEgHpUKyo6C6i+GohgF41fguNuwRuECgYEAq7iPMC6mmrWz1Vbvem9e64CYFvk2rIfdST+RSra79DbIqkqMTfWysgDZWB0g+sBb1QoQskYuslQDlgKK8LIsKBanKoedHmkBaIBYR0xn5BtWtp4cyjAIXr0ymTkUDgNLumPW8zyRfPn6CW8c19qGQAq1fxlf9UFCtzo4RS4J6d8CgYAz2rjBXPDx371g07o2PDuarWWxS7mugVLYgDZlEIB3lb77YW9Xrnd6ynZBtNs13oMn5X1Nn1pWPfWQHNtEIYCt53E/DInkFbX8SQDBcyWD9VP4+66L4CPXviGhmsuemxmTNKrl7Swacfq/KKudOGOKo/fBQlOHKWDGklAwGWtxQQKBgA94QO4GRdwKInlFq61L+zEcFJd9O/+u/bBrmZsxex01Ej7FGH6tc7u1d98IQMBWM++tSHPG/s3x46DP+dRVOMUjxUt/jBgBPa88YLeLmpBiJh2tgMp2KUrfoH9NNRFOGrRf6i1fd3vayTuwVtjbRtzeGhupHYvqpSf8hrU0wI/hAoGBALVWNVysp2IQsezIwCKTswf0vsT/H2xjwFqmXNstYt2gGrHia/1xrXwtOTuBTMYgbjeBPpcWTMS6luhdWgBJo+y7vsTadqQSTUqgnV0Az5azDM14f4/hqdba2gzZqxbkcoR9j3VksRxuE2mATDGNMwm75LM72eVy3wqy50Y98rAK'),('08d99aed-ee85-4149-adfe-f8df1fbd81f0','8ff17af7-5d48-4a20-b2bc-8ee5f47e72e7','kid','28745adf-6f2d-448e-ae82-1c3b6aae4f4f'),('0a61a21e-9250-48bb-a9d0-40f6cd722678','8078e40f-e7a1-4a8f-b662-991136418b76','algorithm','HS512'),('0a749665-2009-407c-8e5f-5820877e5750','bbee16c0-b86d-4214-830e-01fb47441d97','host-sending-registration-request-must-match','true'),('0b8d19d5-38d6-40cd-803e-4e0dccff7fae','8078e40f-e7a1-4a8f-b662-991136418b76','secret','xfVWtFMMWvCvq5doWGbrsYaFijl16dtstiRf9ls1DuGr2kOrfKZMex1NVPTMQf0oAUasXQu14vwlaXI7l37KRSuOMl-Y_76bJhv_lbqdhgh-_EQMFo4RdhtaMrRySRLvdDQIHOoZylfCebzgTrCqjlGkBh58TQgYA-e4tssAcBs'),('0c8cab1c-0730-46c2-9be6-4a0e27b1651f','ec0a5ef2-b84d-4fec-a38d-7b4ae078427f','secret','JX_X0afelaLWPpKS0pMFuJd42Fb5URqE4kvI3XVqAse-A5SL3QbcWDA3pKCEq1u00kwONXPStPtSgpZ1gukRbg'),('12731f7d-b9a5-40dd-961d-a688b7b5519b','eeb50beb-68b9-4475-b83f-860d2d6905bb','client-uris-must-match','true'),('12ee696d-e190-46d1-b52c-e750e9c24871','0a68d83f-ac0d-4b0e-b930-c354f12c8dce','priority','100'),('1632e47d-1385-40c2-bfae-dc597e59cd1d','66c8c911-928c-484d-a4a1-11959f0e9830','priority','100'),('16a18a46-c979-4f00-b846-5fc83120511e','66c8c911-928c-484d-a4a1-11959f0e9830','certificate','MIICmzCCAYMCBgGIKZpiSTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMwNTE3MTIwNDIzWhcNMzMwNTE3MTIwNjAzWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCMhxVUCJ4is5bj2lmpMwp/Fcuvf9kK3Pty2necLhGpJtCo8se2lbxUv7ODSEe+fsrHW/VSzY8F2Fqlp++d/YHz5OX/gbhW6fgmuabnh5z33wNKye1dFhS6b8oC5wHDbLgixG2kILbohJZZ0QeNsnAhkm6TS83ZZpWq5k7IZHlirJblIXiPBfCFfuZGK7W1DLiqN5EtlFN+IVNaFh/NF42G68Tr67eyb5vnzNAx4+bxC0OXUi0WLtyMyYiyYid8hZ1fts5fmntPkx9jFKFkhrYy/unALS4uwnoWEfaKvILdgm2OJqmnmsrJhuWd2Vy4WL6iShM1ErRaF0pALrcE+Hh1AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAABXBJ3c274JQ7CizpugiYJpdn32NRgocuPVWMHysJ1cwaoeGPqpWA/wekn/MXffVlzADn5n4Iauin5RQjGRb76rpVccDiQ/zMM9A592gwYKqmtadB8hZm6EgMYZSEmeJZscOfQz2bdUtExNEAMZpWEFUPE9vHcm2xY4MmATOrm4glfKQ4BbLAQvpVSm388rVa9q2nBLuKSzd+3rxCeYFWkgeIso8/igeWgbJvUm8A+o44uoJ/MetW8UelmRvcsysNEUEHZ0Hky6+l0vFKlHdWrLGCMwkNZgtRy4qGG/qJcdqRWxEWk7BsqeK7S386V0dp+ocu6F2Te8+R/O93M2SVM='),('1b554eaa-a583-4b0e-ba8e-6ce2260742bb','8ff17af7-5d48-4a20-b2bc-8ee5f47e72e7','priority','100'),('1d82e732-b1dd-482b-a298-9d1504a41e8e','23a3a9f6-c10e-4f5c-b444-5c65b6047455','allow-default-scopes','true'),('1e5fda58-a765-47d7-a57c-62b79e062282','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('1f1bd36b-c79f-47d3-b640-96faa5b6a5ef','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','oidc-full-name-mapper'),('2229c5b3-fa0a-44ee-894a-3b516babd7a9','10a3a385-5de6-43b3-a660-fbe3d3dbda64','kid','c5efa86c-245d-4cc3-b5cb-ab0d30f7460b'),('29abeae2-96e3-4b21-a3b6-ad5389786ef5','f0e5af92-c2fe-4cef-ac4f-5d79105dee77','allowed-protocol-mapper-types','saml-user-property-mapper'),('29e053b2-bd00-49c6-96d6-d2c004cdffed','3330231f-0671-4d45-b336-9bd76150f2da','allow-default-scopes','true'),('29ef2223-29fc-43db-b0b4-36671ab5d30b','d78fecf6-55e7-4c37-a534-70725ad30a83','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('2a37347d-c61e-4210-8977-9ab4fd33b3a3','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','oidc-address-mapper'),('2e814768-db1b-40af-9120-fb8dd962da01','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('30a65e18-6c74-48a4-9c6f-70c0e55fb951','d78fecf6-55e7-4c37-a534-70725ad30a83','allowed-protocol-mapper-types','oidc-full-name-mapper'),('312a2991-026a-4e27-9aa2-f6109fbc4cb7','8ff17af7-5d48-4a20-b2bc-8ee5f47e72e7','secret','-mzgOBNKPrzV6Tq2Xx6GZo45aYbqpWwKuLHHiG7tyxg-o3WIAjbYjIF7YORq4f8GeWYWTgVglBohXILjFzsL4UHGPxKtom1t4FK0czVPRzqM8LVOAgopKiVOr405Uw4KB6mG3rvQbvjUequBmYcT7uON4nZLi_DXoCEtvCBJ9es'),('324fa71c-44c4-43c4-a372-fd7fbc9bccb1','10a3a385-5de6-43b3-a660-fbe3d3dbda64','secret','kbEM-Im12J7VSuLhCdOwDjoq-7g8qReRwZQqUoNdIFMyfRZI1uN6d8UfVjNT3kQ6RL4uV4YfX-YwA3-4koNO9ZKFTAx5t0KTvmEDzFcEZXJthXWDGHKeswOUIvGAskJz46ooii8ScOXB1m6KDo6t9uC5esVrzQAxFn8rH7AwrOA'),('347dd96f-bea9-4e0d-9668-67d160736758','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','oidc-address-mapper'),('35cced77-ffce-42be-81e9-3985e9918dd3','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','saml-role-list-mapper'),('367a56bf-8f0e-493f-9455-4b321f9eb421','824561fd-ceb1-444b-9239-0d8075a8a176','algorithm','HS256'),('37379222-fae2-4195-9e59-98f04363477a','bbee16c0-b86d-4214-830e-01fb47441d97','client-uris-must-match','true'),('3a7f0a7f-cab8-4391-b19c-1a46d20048a4','22395271-f7be-486a-97e0-3ba9c8e70bb5','allow-default-scopes','true'),('3a99332d-61d5-4520-8da6-7a68d3afe829','321f6835-45cb-4d60-83a3-33b5a50700b6','algorithm','HS256'),('3bb46913-74ad-4cbc-9c22-56ff854df141','fe682aac-dfbb-45cb-8c7b-8b34471f9b5b','certificate','MIICtzCCAZ8CBgGT33ryeTANBgkqhkiG9w0BAQsFADAfMR0wGwYDVQQDDBRjaXRlbGlicmVfYmFja29mZmljZTAeFw0yNDEyMTkxNTExMzZaFw0zNDEyMTkxNTEzMTZaMB8xHTAbBgNVBAMMFGNpdGVsaWJyZV9iYWNrb2ZmaWNlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAt4jJMqBbgbtTZ5p2c4t5CVqtA1bMc2GARE8ZkmBJt/t3PZuVMuGJWet7ePRqpKomZG6eEnfcin4hG6oYjs8yWhuf1HNCOKEZs2mMSxVHyFC9ZK3QTHkyR0mchFsDyuKJNjoGacU5SNTvnT40RHTMFUuYSdHkEy3yU3955AguWTXC4qtISoypHWbKCoO/tdruQEZz3zNiuCvnUBV/gZ+6f9RPDB9CcbmVkUgz6ijt0Bj7YG24r3Cqm1dH5WDdVAtPi8U0237MjkmaTR5VBcW27hypqG+j6Kv9ml5NCoq07StdLWHLWsearu+hfcFErGBQPIUpE3UdD9uBWUsbvRS95QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQCgUEc1um3pyO6Krh/KQtiLmvP/r4HjpKO1WI5UVywKea4zSkuRH44dF5gd0O4//HFztX0b9AbcGPFDGUDhxbpc9t7Koot7WKLOta6hs4H3FwHcLBushEvScjEM3qZ0mp4wkh2EiaXOx25YYn1t6FPH6D1nRmgGR0QIurH+/OhZ4F66Mm4K9VTAnoIR3HhItDBhdQebCzvxRRlCWwaJaXslDd0cdOhNp9ATvZ9zrhTVnlYqlpKdlrVEdMXAesm3DjyETBHmjdJAigcFtMI3GpQDvjTBh/vGDjC+6gYCsIjXPaBKetyjXUmD4+s67z+XvsiJVlW8AknEmhIwP/5Cs5C5'),('3e56fd1b-9438-4d5c-9ff4-4181f9a1ca1e','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','saml-role-list-mapper'),('3facfe8c-38e4-4a7b-8c13-bfb082b18886','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','saml-user-property-mapper'),('4148ae8f-5223-48f0-91ff-01623defac88','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','oidc-full-name-mapper'),('419f4401-b1d8-416b-9051-fdcba10f6222','8078e40f-e7a1-4a8f-b662-991136418b76','kid','f23f72fc-bf3f-4704-8174-da468e6dbf30'),('4309936e-9eae-4376-ae0e-35a23c5f5460','ec0a5ef2-b84d-4fec-a38d-7b4ae078427f','priority','100'),('450d37c2-f009-4697-8076-84f2b7ba909a','6d5013ea-7135-4e2c-a08a-acdf87d5096b','secret','m3JcYtfyS-Sch8d3E3iGVw'),('4a05ef08-bf8f-49c4-b9f9-9f83080a0ee5','f87f0825-2652-4239-a0d6-e7d394bb1c17','priority','100'),('4b1bfc4c-bf3e-4356-9bb7-3db97641fcb3','f0e5af92-c2fe-4cef-ac4f-5d79105dee77','allowed-protocol-mapper-types','oidc-full-name-mapper'),('4dd4e2b9-6e68-4342-9a1e-1de8cdd99dd8','fe682aac-dfbb-45cb-8c7b-8b34471f9b5b','algorithm','RSA-OAEP'),('4e9598dc-9f69-4681-b147-d4be9faff322','ec0a5ef2-b84d-4fec-a38d-7b4ae078427f','algorithm','HS256'),('552118e3-74a6-4cb1-bb6b-b0b40b65b107','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('5799d515-5032-4696-a8ba-1a9785a890e2','6d5013ea-7135-4e2c-a08a-acdf87d5096b','kid','9190c65b-97f8-49b8-ba83-9b117dffcd5b'),('584a26d3-cd35-47c0-be81-10513d4d6a4d','d78fecf6-55e7-4c37-a534-70725ad30a83','allowed-protocol-mapper-types','saml-user-property-mapper'),('65e58154-a1c5-4046-bf64-5d68763d84e8','0a68d83f-ac0d-4b0e-b930-c354f12c8dce','keyUse','ENC'),('68954396-8350-4053-b4f4-2d8f130c9262','f0e5af92-c2fe-4cef-ac4f-5d79105dee77','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('68e98a5f-bd25-4cac-86e0-b4e4416a4df3','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('6927c672-6ee9-4c78-a0d2-b712579ccb6d','f87f0825-2652-4239-a0d6-e7d394bb1c17','algorithm','RSA-OAEP'),('697a531a-4c07-47ad-973e-e4342fc7b800','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('75917289-9db1-4c98-a622-21be61ab6930','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('7a56c501-8bbf-460b-98cc-86adb3fcc49b','10a3a385-5de6-43b3-a660-fbe3d3dbda64','priority','100'),('7a61db44-1f09-430c-8265-8df5cb5630b6','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('7aef6fb1-7305-47a1-a9ad-a1b333a0862d','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','oidc-full-name-mapper'),('7affc0ab-9f05-48cf-a349-9b072efb6762','0a68d83f-ac0d-4b0e-b930-c354f12c8dce','algorithm','RSA-OAEP'),('7bf025eb-e41e-4886-a228-1119381137f6','321f6835-45cb-4d60-83a3-33b5a50700b6','secret','kG2RJ2wwQkhM9G3Bj8f7Gr2uxKaTyXKElvI5EzIS9iikLyVqdsur2ajAvYErymy95VmCgYj36tB3DRKshoSvwQ'),('7f8663f0-5b49-4e82-abc5-1b88576f8cd7','ec0a5ef2-b84d-4fec-a38d-7b4ae078427f','kid','39bc660d-7951-4767-b1cc-bfd55397e639'),('7fbe8347-4223-4976-8754-9ee941915344','a57916ac-bef9-40f5-9977-dc04a49ad020','client-uris-must-match','true'),('800c7bd9-1761-4aba-b872-3e74bbc1db79','21b99f02-112b-4ce8-b532-a54c972a77d6','allow-default-scopes','true'),('809f4993-4f6d-425a-a673-244a09d1e0a9','0a68d83f-ac0d-4b0e-b930-c354f12c8dce','certificate','MIICmzCCAYMCBgGIKZpkSDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMwNTE3MTIwNDI0WhcNMzMwNTE3MTIwNjA0WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCU+QwRhZwwmE+zil1sc7BJpeKX/X0HgJht1ECrJkOyZRzrRIZU4jpXN37vhTQDR8I5OLeenBNOmZuvz1wvH2/T9kYK/+4JHWirgV1rex4t4TCFnxEesk/wYEPo/f6TRSH0TPePCWHm+/TB+B5BVCbr76SXjoHdWbkC/oeI4AEUL0taDf5VTqApBpq3iaR18BhqrHAS3Uj0FBY9OcZcW4aZimC+wvqmK78K8vJmBzYvodZrFEmC2fixx+YYMAJ6i2nC/nrxCaecPFqD1dkpYtrD+hvd1Q9ESRfEU6giX197YBxY+SAhpADM28YrCJvpamvcdEg8/qpDAs8MuY66+Yb/AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAHkfcuGQ+KugTJzvHKBNmw/fvdPDlBFpNtJFJ5kM7x729VY9TyFhM0vnpvHTTxqfGlh7NvJOLusAlshitfEiKpY1Snp+JwEjQqQIPlJz9T8IiuEM43J0egSgn+VKA2zQQL1E9EX2UvgDjPEdNsbXjECK0BDuR+WZ0WTocbNYbQGxplXKt54dWSk2nos1T5PQ5KZpkzp3z4HniBzwWJ16F3m8+tgYEEfVEDxZo2mqOlvHsk1pjgJGJrdwoPpVMbbXUj2/Li/uzVYrAMrdxxH+bVx6i0mTKGnu2WWwCbYxVxubWmxL7W5c96g7IaU3zmtEDMg3ZU5k2Hp3PffohwnLZxM='),('82a651bc-c416-4ea5-ba87-a6549e4b6bfb','f0e5af92-c2fe-4cef-ac4f-5d79105dee77','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('83163eb0-edd1-4eba-912d-513f2de4ebe3','279fd35a-b55a-4e7c-9aab-12043c762c11','allow-default-scopes','true'),('833435df-62ce-44a1-a922-232d1f7d6542','004a938f-4593-440b-bbd7-ab69ce51238e','priority','100'),('8348ee70-df91-4b32-be4b-f78b92f7d1b9','f0e5af92-c2fe-4cef-ac4f-5d79105dee77','allowed-protocol-mapper-types','oidc-address-mapper'),('84d1ebeb-2ae4-42a1-b427-7d19e4db78d4','f0e5af92-c2fe-4cef-ac4f-5d79105dee77','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('88b1a561-9c2a-4b6c-9aaf-6528f13ff936','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','saml-user-property-mapper'),('8c365596-a864-4b8c-a686-b7dc9451c02e','5091f01d-7d70-4d0d-bafb-d8b3856c4f5c','priority','100'),('8ee8994a-f1fc-43d0-8852-5b448b9521ad','8ff17af7-5d48-4a20-b2bc-8ee5f47e72e7','algorithm','HS512'),('92506378-918b-4537-93a7-125b846a938f','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('938f5c9d-dce2-4c43-8463-db478bd36dbf','10a3a385-5de6-43b3-a660-fbe3d3dbda64','algorithm','HS512'),('93f76be4-aa7d-4a76-b894-3cf1b8e8bcbf','d78fecf6-55e7-4c37-a534-70725ad30a83','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('98ac66af-db77-4aae-b4f9-ba6509380d56','f0e5af92-c2fe-4cef-ac4f-5d79105dee77','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('a1f07c93-575b-4e59-9f72-b140b402efd9','f87f0825-2652-4239-a0d6-e7d394bb1c17','privateKey','MIIEogIBAAKCAQEAjeBDUD0J+3bdJM8Ap+NVca5uxTr01OTaNuDOhsRS6UIkOjs89t9LLRgF0M1jAz4yGFhiEPNP3vIkhmme1828z1s3DN8SDg2frHKuPJsToSPR0gXorsnxprCXN4fp1js+8jOSnMQ3+7yKE5CjLarkmBsf3USEeY8wsDr468iR8rWMlH5683Dq5PWW+bAmz+zS91peuNx9wDzoxhofYO2XGJKSkQU62x/u30PEggHY66uIhUKuQ/hKS+WiYB+EgocT1DdXnMwTU3pP9aarFX/fbqog+frQeDo+V1X/T/lDrRjcZiu4RxcDzS5EzU5bNb73U97RT4YAWTUKHHl5ZVaezwIDAQABAoIBAHSvGS2Ixgj2/XIkfZmWstNIbvnvPyVJAt9XjQPxu270Yu8xgTZY928i7sWH5gLoyDKVnjHqqqnl5HxXqbg7ESpJDsGbRTIhqk0eFIbr0/0XhJ2DFpeKpyA85GFbesoi9+Yi3FXqW1DDA5yLvGj2wAMJa++DRqDjT1vhZJAm6UH/LRoks8FbbsTauj70zbLw0U7r59IkEjUMvQlFVtY5viBDM5GsCrNew8kse2cT4ne7ZdVZSGusreWB+6Cavo0mCkrvvdx+A5Preq7wlzo1OhWiyissSRh3B/VvDZ/NyB+f4MUSuCnpaRzmXyX8p9cSRfHOzfn42CpwAICPWCWzjWECgYEAwOS16d/B2UYt6F3srJNwC8O3Fa+YNGNGarzq9I9ESf0mdEkBtwIM0D3GRILpZ99E9W8M2tnw1GvOkS+qsDC3VMHS27WWLeiF6QicPvz5Ef8YTJykQTxp0OeVIfn9Nys8o0YyuveKogBWOuwks9C97PcqWGAmq9ywTagGLF8l26UCgYEAvEq5SH6DqE/pXrt0/je0+TTAweSGXEerw0FtLTvbs5yQv1zH0jL3idGSwZSE7sLP37PmKICX/anocLf6VVYj6SrGxs/OL1lxYORcrIYzYVd+ritEL+DelD9equuUKtczLP/jHeO59pUprGNR5vuN6CpC5wtrU6KIciGoPs8AlmMCgYB9jqIG2PpSVocdYL3k25esYLn06LaXKyOz6MK7a+IUky6LtNXj7PawOfWrtNb/IOq/I4jnj8NeUcpE4RUm2J8NEZkSIJHf0iIQPOWPbpUlrLmBbNjSCeQK8iM12YaEeaVf1hrBbs4Tg0qd0gZV8YMfEwfCPNwPNHiiI8PY8BoxbQKBgBIlcW3XI4EZEniawE+vtrU9rEYDbB+AmMEckRUG68mHkTugCXHsj4ast+QIGDeadsYsZEYK/prnwQr78BhBUPyrrrSCWnCdwhuAZp4J4PHEqOTILq4ekdTftpPqWEE4tCnmD1FWHRnyji2a9M25+JcjW4dAxnss8tFtBPXopTnZAoGAb3ZHPpBBPTyYztR64H94KipWmk5N0jchPDggOuVvXZOE+peJzh7wnCSNnex96NizY/FdJ1Et3Y4HaoZHqSIdaNgeA0qVvWqcBNkUBhV08flO7wh12PMcP/nWTZiTXLRdW+rkb3QbhUx9T0ac2v5b6ctZ8iIhlMQlV/vsvOt6RVE='),('a36be91e-1b39-43bd-ad16-6d1bb3c0e5ad','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('aa5e7ddd-c8f7-4ab6-8502-a8d9bb13077b','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','saml-role-list-mapper'),('ab3a8119-b401-44be-ad14-773e72741876','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','saml-role-list-mapper'),('ae303134-e680-4c99-a1f3-9bd55cd9e135','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('b4fe7f71-9480-416b-8724-b45632610e38','824561fd-ceb1-444b-9239-0d8075a8a176','kid','bbb10274-5c65-4a1a-a31a-c4f0fff17a87'),('b56384f3-b981-48c2-8776-77f6fd3a7c4a','e637a7ea-0f6a-41be-a9b9-a04a7fd69154','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}],\"unmanagedAttributePolicy\":\"ENABLED\"}'),('b56f8e9b-998a-4603-acfc-10cb5127dd24','fe682aac-dfbb-45cb-8c7b-8b34471f9b5b','keyUse','ENC'),('b70519de-d3fa-4f93-8c23-4c875a16f0d6','ed136b31-2afb-4075-8c00-621a30e0bf34','priority','100'),('b71360ed-421e-4908-be48-41545c5057e7','5f33cf7d-9b54-4236-a4f9-52469a322109','max-clients','200'),('b7931641-332d-4eba-8a30-df2fefbd1d3a','66efddf5-94cc-451c-b45d-40897cb3de30','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}],\"unmanagedAttributePolicy\":\"ENABLED\"}'),('bc9dabbb-c70c-4c7f-8dfa-1bdb7b731716','824561fd-ceb1-444b-9239-0d8075a8a176','secret','WGK_-iBpTY_5CXht0ZxlzYFP6NsvaYFlzekGU8h-DgkmYU461_u7MMO7jnDnsZL3FHQNLzHMJGsts1Bhr9CMIw'),('bdfd845c-eb82-41be-b4fe-80aa302c13cb','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('bf9588ed-04a5-4d6d-a320-488b3df2ce97','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('c695a167-2a9c-4851-909b-6752aa67b0e5','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','saml-user-property-mapper'),('c7154db9-51ac-447d-a6dc-97de307d2910','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','oidc-full-name-mapper'),('c7479ee9-fc72-4636-a983-c187d4f7f0be','66c8c911-928c-484d-a4a1-11959f0e9830','keyUse','SIG'),('c789c90c-a185-4dba-a3d2-fe52a712c7b2','fe682aac-dfbb-45cb-8c7b-8b34471f9b5b','privateKey','MIIEpQIBAAKCAQEAt4jJMqBbgbtTZ5p2c4t5CVqtA1bMc2GARE8ZkmBJt/t3PZuVMuGJWet7ePRqpKomZG6eEnfcin4hG6oYjs8yWhuf1HNCOKEZs2mMSxVHyFC9ZK3QTHkyR0mchFsDyuKJNjoGacU5SNTvnT40RHTMFUuYSdHkEy3yU3955AguWTXC4qtISoypHWbKCoO/tdruQEZz3zNiuCvnUBV/gZ+6f9RPDB9CcbmVkUgz6ijt0Bj7YG24r3Cqm1dH5WDdVAtPi8U0237MjkmaTR5VBcW27hypqG+j6Kv9ml5NCoq07StdLWHLWsearu+hfcFErGBQPIUpE3UdD9uBWUsbvRS95QIDAQABAoIBACH/aKXEJq9FcBHE/yQwNd+RuHLh5UWKTiRZMrd2trEqF9CFvYGLXdIWWOzy+b4+9pWsGAP7yBKvgpqJS7tIjl86tsS4BRBQZ15gsuhFrOJicnLv76H64WFrNV8fLPisNhahcQauzgm7yBcsqqnzqMpZEoC6LLGQ1U66Um33Rf6oMlLjQ3glNA5Bx2uovJpyEHEajRBwrzEQRCuImP6GRcoEQzuSgTUueuv5iBCBOrKCxwYbVJG0T2E8pJusfb7gLBYbQhYRht+SBc6XcqYIQgMM+xWpqBevo0KR8FZxG4JsnlPT5WvIWXtLjrqOPbtYFbgwf1OupI4L3v6awNLreoECgYEA530S3oye2HtHpVxmewfTaVpIBuWY4y9o2EdIZpEIreNrmDuGyFQAB6g2ngxeaaoNgmtNb2Ca93oV8bsjBukUh2VN3z+Be1NJ3W89JN7hoycTV7C40wVU6KUAk0I2/cz/EU4mff2rpCmpfe50NiAkH+IHR06RegX1Igmrg6prnn0CgYEAyvfS0UA8AKOvg4rv95oREvXJ1JPB0A0Ic8BpzqWI3zmXwTF57Rc8i+sq+UVt1UxO62acTsTSIlqcu3Y3kNfRhXde9BLYhWtlhK1aNAAymwEBbkDUTRsvYCbE/gNXTRvIv5b7VtFOH8ZepFEH4mZS8NUsU41uIiNy4FAtUBZzMYkCgYEA2jt3hodbWQsfyC0MEACYtkF+lcHuGH+hgAPzpX4liIlV7fZwYnuOa6mRk/5lI4hFpCY0okOY1KYr+fBKXUFvMRW4DDd6giFLCY7NPe1BGubDvW/FTmtAWPL1T96kqTCRZmcesrhrECCWwToEJOK4K7aS1g6j5z2mk6g6Ia6QNqECgYEAwqZG7NygbrCMCyg8mIWNqFRFmnOVpLRLDc9S6ZZBHGs8SU/ssV7edwUyclqOScfjy8fdUYFaUQ37T6DBC0yeqFPhoUtNkS587m/dmQ8zeQnO2HCd6dCPb7PeqgiEOfPSY0MliY4zUS/J5eW8HPiqxEJ8PyjcnSrH6a2atzrAgJkCgYEAozASvF+CryxR48o674oCQzUR1Tm6JPSG/ljoZdI/ayKHxYCmcbWVf7evJA4wxuJywHKMGaH8IFe1H+SVdbD5wzNUMvatfq7ptADWuJuzEWrLH43XtFFn6Hj57QjQLKODaJehMVWDGhoOp1A9TqsOhxrJm5qw3kCmjYDsDsRhAs0='),('cc1fc25f-618e-44c2-a2c8-2e9423d5475d','af6d0dc6-2180-401b-9b55-85156b0b2ccd','privateKey','MIIEogIBAAKCAQEAkSKj1J7IZt4IkRR3X8R3iYhwG/B6HYlq4C3xKdpkl2HWBkmxeKLGzFGXIfIiitoWAsoy0POOnx8QAqkWFR9mXLuPthiUcIfqNv028GeCjV+H+GJ6ISASEYXJtyvvDO4xYWl7bu3UzptHOTirZ1uNzCbcIrPBqXPu4w7KGY5ox0iig6nfmjER7IPoqTJq3Yez5YFp1RYJsaawFckNghQaysT0+gwYE0bpILjtxmSpuIz+lxpKLKBubHbg+A3klcHfBn48Y8wwtoWZ1Glg2qTYTq/oQoPewD+NKaCKTB42p5IFkRXguCXa/1HRJoWAKTvn4BFAOj8aA9faSAfNg1ZW5QIDAQABAoIBACvurmToA4WP5Ev2RARLNlv9XuI2MuDJ/f4KKhwfLZ/dT6nrmLsJmt+yOutdnjMlvM/vYN57O0rTXkdP441VSej8JY5bdmNx4OXwVDcFPjGJH2GCfbGVQaLoOp0lwWDKoUv5YBG+EFLSEgcyLkBFKHEJuk0O2Kpwm3lDus1tnC3mSEvAvlSgr63uJtH0uGA+g5aRLUPv9XBmFZJ4Y5CxQOvhHexaOOG5P3bJw9JrQggf9HR7SFzV9o2lEtqy5aPJVMnL2BWf5ZHrweef0A3PY1Qdbt9d0r/okyTRQujUrz0vKQutwXwikAq4zH8uke9FjFYeZLJH3JLJtVFNp55OxakCgYEA+B/+bMCdyqU4jPVPiQu0iytRrhq290eBu82i73wpvSRKqawBiAZ/mCN6tTV5SQXtAxXQ5pagIyWtfZDFxmGW58iGa/aZcPB7iAF6TSPqBLbgVIhFnLuy4i+q9xKPdyNFDgEiZmvOKk08DrchmpjiQqgJjmjgPgzhn9yrYTuNmYcCgYEAlb3b5CJKxt7Y6UOSOXsEe3ukKP06Ed42vK6V5VUc56mZoP9szUUKZ5JaFjzYbZWdoFeBVQcyCTXcWfxvePCJHBvQgi4sOtVg61nDl8iYy6Z151apsxCcbHLrzAeE414FStZZDBG0KWnwFp/fJXgYqcqXGuC4QDLcavQB5hLldzMCgYAz31RsXfRe+h2RcnN3Pig3dA32bQVVOvDHV1053eZH8X9ea2RCkME6CCjOG2jIuGFtZLEwk8rUrjrP5mVCbQKEYGqhxYMcllns/AoaeGijJaxOX9LVynPCT57ZWlr92DTGkbwkV2NZep4UoXp3/IBI2SJuUESZFE5TAmodwLqAnwKBgBGU9E+qExucqN1iuLWVEyaoktLZQMs+SzEGUsVVpAozaL11oEHN3HXiwj8gL81WJubfv2jLan2YXGIYeMI7g+3P+kB+yWSzDykzJfsZa49l4SwjidNjnOpC6BrRuzGzJW3vEw+OuJewP6d4aAwPON4e0nUuc5PeJPFN6zcnetfvAoGAPU0t+wvZzKmL5fw6YNOdHrNJxBrWxqBqfoDPCe5L33q7WzNKSDolpDahqcOynu9VEnk3lyf0Pha0HnCcs+gyh/POcF8QQLxREiIpUVoxQ8x/Oj+sLoccd2UBB3bdBpv3GQ1F9yLtHHnjsCjPnM3axW5ivhugIqINSBUHCMAIq1k='),('cd576bcf-b86d-467b-a3f6-5db924eadf9d','66c8c911-928c-484d-a4a1-11959f0e9830','privateKey','MIIEogIBAAKCAQEAjIcVVAieIrOW49pZqTMKfxXLr3/ZCtz7ctp3nC4RqSbQqPLHtpW8VL+zg0hHvn7Kx1v1Us2PBdhapafvnf2B8+Tl/4G4Vun4Jrmm54ec998DSsntXRYUum/KAucBw2y4IsRtpCC26ISWWdEHjbJwIZJuk0vN2WaVquZOyGR5YqyW5SF4jwXwhX7mRiu1tQy4qjeRLZRTfiFTWhYfzReNhuvE6+u3sm+b58zQMePm8QtDl1ItFi7cjMmIsmInfIWdX7bOX5p7T5MfYxShZIa2Mv7pwC0uLsJ6FhH2iryC3YJtjiapp5rKyYblndlcuFi+okoTNRK0WhdKQC63BPh4dQIDAQABAoIBADBIwcVL6LnXpwLHJYODbBnabU/xx6t53lPKSMq68YqDMbK7KG/N5xXfgFidXzlO63GwYQyAYKILgqnkl+pbDmm0vmoaMjJ61a7In1ZyPDbWw5TQ6OPREHI2stxobyyskGAxydJZAz/FPrvBnKzNIMYIQEIQC7ylCMvdsjgcfbCvRKFgc9S93lCQpY+uiAaEWxrB0oWY4jNBwyTIg3Cs2fGeCIPYk1RcI4mlQPwWEGoqdN4JcSAsWgI3Eb1Ae9Jbh6lLqCqLuepOxpFDkEHyaYOtcX1b0ByP+MDOB78dJMw2gqTvpPJzvKwh3wEAm5v2bjJUE4OTAFNpDsWktPb+CgkCgYEA3Gdw5iqUUyhrFYTyANmVazPm9wpe728wF2IinR4dW2Z0VUQBP6ElrI3oLUw/WHwNn56t1su2UCbEcM3y2OiuAfnfhTNFdoH1+aBFEsXu6pFQQOUnhmHntAMSaMdKXvXs7zYTY9Pn4gvVoONzHcQt1Wkia/RegI/HB7+0K6Xj5AcCgYEAozkrdB2HhYHVMf+vFIBgNKpw64s9H7VP4qZlbBGtSn72mtAUloZkbNdTfx2tsPJsRM9NSQRDi6obJirw2izlETx3egiRRH16wjdiPcVgEoC/Z1ziE9gKWRuhKikpp4+wbXTbhaZOq4iSYNJS0j1tTWU9UuauSq6gXIc3Ae1teKMCgYBPvAhG7C5+qweaYF8gWZbJkpxC0PipTCMswm7dQlDCiR0a36BIAadcdnYBNS1ReIeBMGmZZFcPRgcY/BiXyg1xX5EyYesGRVvUM9vpP7wAFhPfdkdHQVIOeHIHf9ly4ysVGw4GtlmUGE3vh3lU0mz2YLN4NI6fmeQZ9ItcowX/rwKBgAM9fkxWzbrrweS1M6+PgNlqzMUQRY1clxJjxT2o+CyzaofWO6JlVpcGi0TJvQn3NgkDqIAbko+yN8nBLnjWTVHTRnfotaGLcCVs3gll4qtbXPFbWa2VK1drgf6JRKdr5c+2cykrDQLAuk8rvbMovwO7T8VWiP04jDxp/sCOCw9LAoGAHUCEJwsWGUN3HVRuwjV102AHvwoD5eSkUcJtxT3ozsNKCv+oGxXyx0LUHkkMNHqAWeQFaIX8Ct93Mfy/69rCyuQDDaNhNDM2jYHoOTrUVUYsVFRIgHAzGqcfQIIGggscFwNPr3URVvzVBe5Y6u9sAkjK/5cFCapfN8svghllsN4='),('cfd934e8-cf78-404a-b5d1-21f45bb64410','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('d0ab60df-5d92-4a7d-9dce-ca661d6c8a7b','004a938f-4593-440b-bbd7-ab69ce51238e','secret','qxONIEu4Mn8scKMezP1uHQ'),('d8a5af95-0f23-4bb2-a251-62c7a9994437','321f6835-45cb-4d60-83a3-33b5a50700b6','priority','100'),('da6dcf69-088b-434a-808d-196ae53ef9cf','ed136b31-2afb-4075-8c00-621a30e0bf34','secret','pX5_w7cX9WWyuP3OMEki9A'),('dce1803c-8534-4fde-b305-b3eff7a94185','af6d0dc6-2180-401b-9b55-85156b0b2ccd','priority','100'),('de3010d6-009c-4ad8-b95d-3d832610c6bd','d78fecf6-55e7-4c37-a534-70725ad30a83','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('df9acbf2-0cf9-4a58-9ca2-467b1da36ee8','5091f01d-7d70-4d0d-bafb-d8b3856c4f5c','privateKey','MIIEpAIBAAKCAQEAh2JJ/qMG2LdKYN4BuRAznuk1F16NsOm01ApwkFxt+ixnXbcryAljhe53/79T4qTtxx+6MKtP77juY41eLVzo7d/zRK4FnHU2U5prgNA4diMLtO6dwUQAYTn3jUI1Uy5GR3vqjZW+arAmkhT+3HZYW8mn3nUeFLqM8DuX9hH16y/cNGPNjp0AY/iwrq2+iRoIVNovMzW9Feg9/QZMG60TYDruCZE/NpfDpuZLo06Kj7iNtrLVJLxC22m5hxAKQIwYBFni3otb1/dxSouiU8qm71PPbxtMnkQyM9Z6PnYxhWmNJ7Z2W9BOySlJYqL6Yab4O5BlpZ9as7q9OlNZGkL4qwIDAQABAoIBAD/RUEoNNVQBCrmgzTUccwjsq48pjicf85KknS0ftOPh/JPLnYK9EkH3CG/xE6zZzBA6X31Ds/mvtggNgqBllJNVJwpv8csv4X0FZLmi7YqauJEAjjKlSHyMY6od1J8ySAS4X/d/5/PIt1XTOdRYoQwbgds2YAira3Zu0RI4ozDKeIzn8miSgd6rbeZRTvG1b3/yD86GpwcOPT0QCbXlS6FGCDh7vte3Shr7yiiI8G+AKDo9lGWKh0uScTYWr7IALiTmEQf7zjyzQKWbIbwWxEcrm4qIa8rCW+Cl4WLsf01afbRcF34op3kTRSS/SYO4MOjVdBrLe0o/JFankVLQRTkCgYEA8BWqF/ulaWYu1g1pR71mG8NxOWGmOox14LOQqbFOestLvoYumvQ8hMXW/iDMzeDznmIOyhe+elsumCTAFt+EGSzhfuPsbQxp71vSzCmX2njvkVxLYG3lAuyHpR/04yowvgJcOVEsDtCcfdXd6XPNu2WbGA1/IASPJ6sEdhHBvl8CgYEAkFvPhGWOkbg2Dn1xRJQQIMuzuX69ZZou/+kIl5GdeIyRTUZQF+dzWl894YYHHpYFN4ETU+w1vHOFeuzkHjtizLCrnGtHiA+mBmElafjnugqus1hhC1hnSKTbrkGd3kwGn+ektCKuFLd8NjDb2i/0KgIdZx14VzWPUVQ912Ml0TUCgYEAlap7wb2vbVg1BF2R7xYEDHS3JbVZIhCj/3MRUKfmq6gGTPxrG0/8VizbDMs3wXRliqvIWnWY2b/z+QaX9Opb+DHBVRATOBvQAlY0v++B6cEQX4awuqlnZX48RVT5nY+UmS7xfQ28MHQdylhDoZ/+db8ugz0OrdAJygnTmyMQq3MCgYBDyKh/XYR9Tgcr9KEb934/OAczIZzjOWu6RH0BVqGfejm8FDkFkGts0u3mmJ19MipO7q/Zpz9wNrpFhzhyLaZtwMNEFmenLtnhgvojcXm1tNBlbCldP2x4AtkYUL1FJWOy7/05jFM7bRDJDVYedIfstcOCqKbaJE8gfDLxkR+vxQKBgQC7RgDOikevRs5bqv5WkfDVbGbeIOTo/aOknQOQ1IFOdEQCs/t8uuzfVGI1a9FokrfFO3yRZe9e5YcwqcfhKkR0Cdv4A1hnQSczNwc44E/HPS9MTm3TD5pBxH4bP1cR0hXDrcSC4VeU6WYPdL8gubro9dbqjT74COsFHj/eVcVQUA=='),('e4e056dd-a52e-45cb-b1f6-bdfdd0ab4c15','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('e55b6a9d-d933-4863-89cc-4220755e7d86','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','oidc-address-mapper'),('e5aa7356-4a5e-436b-af1e-084d0eafd53d','aeb7850d-2675-45aa-8568-dd5f5bd6053f','allow-default-scopes','true'),('e807d240-4bc6-4d18-b9bb-220316108677','57736f14-8fb7-4f27-b5e7-a7de5d818b90','max-clients','200'),('e8dea299-d1d7-4daa-981b-0b14cfbee929','a170f338-9a70-4d04-855a-93233e0aeb7f','max-clients','200'),('eb4f78e2-97be-4323-9594-e67a6374c197','824561fd-ceb1-444b-9239-0d8075a8a176','priority','100'),('ebc5a892-c29f-4bed-9383-55ca9e728955','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('ebc70058-209b-46bb-8d0a-ece4adb8c624','a57916ac-bef9-40f5-9977-dc04a49ad020','host-sending-registration-request-must-match','true'),('ec5b6f4b-023e-494c-b558-fa66e854de55','5091f01d-7d70-4d0d-bafb-d8b3856c4f5c','keyUse','SIG'),('eca81e09-75c1-4d22-b4fc-f6ace6bfdfd0','fe682aac-dfbb-45cb-8c7b-8b34471f9b5b','priority','100'),('eccf4cf9-9998-42ec-86df-01ab3bf86bd2','5091f01d-7d70-4d0d-bafb-d8b3856c4f5c','certificate','MIICtzCCAZ8CBgGT33rxCzANBgkqhkiG9w0BAQsFADAfMR0wGwYDVQQDDBRjaXRlbGlicmVfYmFja29mZmljZTAeFw0yNDEyMTkxNTExMzZaFw0zNDEyMTkxNTEzMTZaMB8xHTAbBgNVBAMMFGNpdGVsaWJyZV9iYWNrb2ZmaWNlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh2JJ/qMG2LdKYN4BuRAznuk1F16NsOm01ApwkFxt+ixnXbcryAljhe53/79T4qTtxx+6MKtP77juY41eLVzo7d/zRK4FnHU2U5prgNA4diMLtO6dwUQAYTn3jUI1Uy5GR3vqjZW+arAmkhT+3HZYW8mn3nUeFLqM8DuX9hH16y/cNGPNjp0AY/iwrq2+iRoIVNovMzW9Feg9/QZMG60TYDruCZE/NpfDpuZLo06Kj7iNtrLVJLxC22m5hxAKQIwYBFni3otb1/dxSouiU8qm71PPbxtMnkQyM9Z6PnYxhWmNJ7Z2W9BOySlJYqL6Yab4O5BlpZ9as7q9OlNZGkL4qwIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQBEcOC+XabYMpUk0Z6OwXLTRYa0w6CEH1gaqj0ZhWdQ26Di3pNwkty2lCntMbjW2P03kMrJ4KnPDGFtp964xuOpNxRgDYgOSbqMstYUEpCk2hoAaHdJeCo6C9rUgIsGO/h4id1nEo/YAUDYW3l3tc46hzK53tXuKBkNtzu39RQaTOyCFCjoEsH8u89iEgARACrhtMq4flhnEwme4Lh6EABQm+upuW9fKThZicO1/y5lzUSFkErObiWSoj4LYGa40ulmZd941XBTLmuiZcPQUiLxEruwOofei5ZdEBvNyDDlRa7gy1TeNHVrUVDn5/ZgPqjOAPQtpNhGiLjQNJDDd0yn'),('f254fbef-c482-4ec7-8c3c-b2ae3a8ec292','321f6835-45cb-4d60-83a3-33b5a50700b6','kid','8f0b52d7-4bef-4f42-a2cb-40e11335889e'),('f32da8b9-7f27-440a-94e1-9296a5205f1f','d8ed536f-c3f4-4df8-8ee8-b590ea9768fc','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}],\"unmanagedAttributePolicy\":\"ENABLED\"}'),('f33b63e9-14c2-4e23-99c0-201de1197172','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','oidc-address-mapper'),('f41e5e6c-268c-48fa-84cf-dde18ad09c56','f87f0825-2652-4239-a0d6-e7d394bb1c17','certificate','MIICmTCCAYECBgGIKZpuczANBgkqhkiG9w0BAQsFADAQMQ4wDAYDVQQDDAVwYXJpczAeFw0yMzA1MTcxMjA0MjZaFw0zMzA1MTcxMjA2MDZaMBAxDjAMBgNVBAMMBXBhcmlzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjeBDUD0J+3bdJM8Ap+NVca5uxTr01OTaNuDOhsRS6UIkOjs89t9LLRgF0M1jAz4yGFhiEPNP3vIkhmme1828z1s3DN8SDg2frHKuPJsToSPR0gXorsnxprCXN4fp1js+8jOSnMQ3+7yKE5CjLarkmBsf3USEeY8wsDr468iR8rWMlH5683Dq5PWW+bAmz+zS91peuNx9wDzoxhofYO2XGJKSkQU62x/u30PEggHY66uIhUKuQ/hKS+WiYB+EgocT1DdXnMwTU3pP9aarFX/fbqog+frQeDo+V1X/T/lDrRjcZiu4RxcDzS5EzU5bNb73U97RT4YAWTUKHHl5ZVaezwIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQAhZ90+hfIv0EFY37q2G2oe78l2M1hVt4p1hGkvm/8jOGwQrXriuCd/8Bjq3I/yreai1V6/196D5/QArAG2/K28ZMWFf/mi2NJkNwose/WM1sMDMxpdhnJR2fITwC6+vg0JOyQpC0Lv9ZTC2kB56Y+bzus520jpFCr8bG9BRican+rxjdsRemNufsReP/j+P1lmcu9GNcXaY3dSVvsUgPCDHLofSz5ocsT+EMzuYdP4pr/gaRUfFLNcn9rWr53lG/BX1Arp1QOR6Ry6FwwM9cGq7ekZKCG321RgGMvFe6IVoirH5FCibGd92+xP4Cse42XtnV/JYQku/VJ6NxbLJyLE'),('f49e42ae-13d0-4b30-adc1-cbc9a658f777','8078e40f-e7a1-4a8f-b662-991136418b76','priority','100'),('f52bff18-04a2-4d50-af55-4d2997c65565','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('f5699aea-e69c-4139-ab6f-caa23a414813','d78fecf6-55e7-4c37-a534-70725ad30a83','allowed-protocol-mapper-types','saml-role-list-mapper'),('f907d541-631c-455e-b7b0-94253f1ffae8','004a938f-4593-440b-bbd7-ab69ce51238e','kid','d3a44dde-bfe5-4aea-bcf7-48b416b2a541');
/*!40000 ALTER TABLE `COMPONENT_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPOSITE_ROLE`
--

DROP TABLE IF EXISTS `COMPOSITE_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPOSITE_ROLE` (
  `COMPOSITE` varchar(36) NOT NULL,
  `CHILD_ROLE` varchar(36) NOT NULL,
  PRIMARY KEY (`COMPOSITE`,`CHILD_ROLE`),
  KEY `IDX_COMPOSITE` (`COMPOSITE`),
  KEY `IDX_COMPOSITE_CHILD` (`CHILD_ROLE`),
  CONSTRAINT `FK_A63WVEKFTU8JO1PNJ81E7MCE2` FOREIGN KEY (`COMPOSITE`) REFERENCES `KEYCLOAK_ROLE` (`ID`),
  CONSTRAINT `FK_GR7THLLB9LU8Q4VQA4524JJY8` FOREIGN KEY (`CHILD_ROLE`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
/*!40000 ALTER TABLE `COMPOSITE_ROLE` DISABLE KEYS */;
INSERT INTO `COMPOSITE_ROLE` VALUES ('0e91d712-324f-41b5-8172-ade740d265c5','eb1a0755-df2b-493c-ba15-72fe9954cced'),('23c39c09-6a56-4b88-a4a2-9beb10801ac1','8687a672-80d7-4e4d-a052-4e28b9da78d1'),('23c39c09-6a56-4b88-a4a2-9beb10801ac1','f2478032-0365-496e-8885-6da3a5d38296'),('336e367f-ded8-4e8d-a7a5-fe0b591aa872','d13fc2b6-9dc3-4987-b4da-42a0f7d58e98'),('516ca23c-300e-409d-95ec-99c6eeef6517','9c538da3-3823-4c23-82a0-5b06eef64c61'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','0e91d712-324f-41b5-8172-ade740d265c5'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','138b06f5-d8f1-4167-9431-7b9e82e0cf8c'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','18494595-a0ab-4d57-9d49-a46d89dd95f5'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','1a4fd74c-199a-4b25-8f05-51ef90a5c720'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','1a783319-1854-4b71-b40e-6d89d13e9a8d'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','23c39c09-6a56-4b88-a4a2-9beb10801ac1'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','2aa28db5-2220-42b9-925c-9dc4238b066d'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','2e13340c-b56a-40f9-bdcc-ef42937d9397'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','3057b877-2f5c-4e15-af1f-587a60431974'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','3222b9c3-167e-4c19-91f0-97efb2e2ffba'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','35093bab-45d1-4c36-a21e-cdfdc9cc0564'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','355b80a7-b9ae-45ca-8bc8-39c80bbc93fe'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','368ed282-126c-4443-82fc-212fbea42ad2'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','3b71e8fc-4418-45a6-9a27-f14d42357645'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','3bb77f73-520e-4661-90ee-b2012efcce0f'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','3f53159d-4333-48d7-a86a-0b9899a5e494'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','47464199-80b5-45eb-98de-d48f419233b1'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','55b61e20-71f3-4dae-af1f-1f4a73458d4a'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','562c0666-d09a-479f-8b4f-95d92602c72f'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','576a4659-03e6-4917-b13c-cfd04d0ffb1b'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','5a359d64-000d-4297-8aa8-eacf37d739ab'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','5e90e412-1283-4c88-a6a2-5a783ee2e023'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','5f111826-a898-4723-8089-132c2c2f1893'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','6070112a-2181-4269-bca1-be7cf6c19924'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','65fee8b4-3de4-44ed-a31e-a834b90894bc'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','6c57f80a-e962-47b6-9d5b-60c7c92aff34'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','6c608c0d-feca-4883-a88e-ead1e961a0d1'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','6f3cd50f-8020-4930-aa03-949cfdc32921'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','7d38f1a6-799b-41c1-a9e6-11ab38cc7006'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','80b1f608-bed0-497c-b299-ac02bd1f01d8'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','8687a672-80d7-4e4d-a052-4e28b9da78d1'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','8c4fe487-f38a-4e59-b8dd-a7774e7f9020'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','8e73ca8c-e1e4-43cf-807e-ca220810fca4'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','914e215a-68c3-4789-997d-8140cf087b87'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','928446ae-05ec-4c61-8873-794d5c612e23'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','949bd9f6-da98-4c35-97a2-aa97d533ce31'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','a9b90a04-be96-4741-b43f-6e5c5fbe6067'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','ace5c973-137f-42d4-ab3c-7453a680eeb7'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','b094de91-ab05-4606-a8ee-a84040e1ba04'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','b249ea90-2216-4ab7-b5a2-9b535a06b0c2'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','b3d6174b-860a-4bde-8c8d-e3cbc4837d67'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','b65685c8-d991-43af-b582-dfbe55e5ddd9'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','cea8b620-21cc-41d4-afb8-3aca410e863a'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','d5410424-1d80-40ad-ad60-f296f0b3c7b1'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','ddc2e13e-881a-4c16-a123-dfded3240a76'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','dec328f3-4fbe-4e19-bb3c-376d9351251d'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','df1d39e7-0c7c-4189-816c-ec4fbf8294aa'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','df68c83c-23ef-4cd5-a942-f4e56af708ae'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','eb1a0755-df2b-493c-ba15-72fe9954cced'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','ee0f5fbc-325c-4997-abb0-a47b6351f0ed'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','ee34565a-1428-44bc-ab7e-c5f9cc634856'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','f2478032-0365-496e-8885-6da3a5d38296'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','f589ac49-7f11-40ce-a9d1-af7c398b67bc'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','f65e5578-07f6-4945-ae1e-f67a126c0c3c'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','fc2db081-2d7c-4849-b435-e1b289110174'),('65dccacf-34da-42c4-ac03-7092d3352aaf','336e367f-ded8-4e8d-a7a5-fe0b591aa872'),('65dccacf-34da-42c4-ac03-7092d3352aaf','836c712e-bd23-4ddc-b21b-e5dffa6478b0'),('65dccacf-34da-42c4-ac03-7092d3352aaf','f5ec1764-5fd3-4027-a509-13a4eaec79c7'),('65dccacf-34da-42c4-ac03-7092d3352aaf','f9cc0e0e-7e22-4acb-869e-1b9b756326ea'),('69467261-2a7e-4a5c-831c-3474d04d9dd1','63d766d2-780d-4547-a9db-f6e8d910684c'),('69467261-2a7e-4a5c-831c-3474d04d9dd1','77537899-8802-4333-9efc-378b11a5b27c'),('6c608c0d-feca-4883-a88e-ead1e961a0d1','1a4fd74c-199a-4b25-8f05-51ef90a5c720'),('6c608c0d-feca-4883-a88e-ead1e961a0d1','b094de91-ab05-4606-a8ee-a84040e1ba04'),('6d0ada92-0da6-4562-9578-bc09e65050ea','051f1ab7-26d0-4e25-a8cb-c9252fae6fa3'),('78125a0e-5941-4513-8e56-a455c38f9550','c118024f-de17-4701-9dea-7621ee3bee0f'),('78625c82-7fd4-4955-ae73-a7a416ebd603','ae5f748a-082d-401f-ac6a-98c3250a8a38'),('7a367b28-423c-4829-b660-3c843a967370','1744adee-56d6-4db6-8c63-f9528fffe997'),('7a367b28-423c-4829-b660-3c843a967370','23ea72ec-fb4c-44c4-8769-71cbac361a70'),('7a367b28-423c-4829-b660-3c843a967370','45bc4d15-e1c7-4ce6-a2cd-bc8106290db6'),('7a367b28-423c-4829-b660-3c843a967370','4d06a4d6-1df5-4899-b0d1-ec5c0e461291'),('7a367b28-423c-4829-b660-3c843a967370','516ca23c-300e-409d-95ec-99c6eeef6517'),('7a367b28-423c-4829-b660-3c843a967370','58d8151c-70e2-47d5-8288-6df5fe769ccb'),('7a367b28-423c-4829-b660-3c843a967370','63d766d2-780d-4547-a9db-f6e8d910684c'),('7a367b28-423c-4829-b660-3c843a967370','66beb670-8e99-4d0e-8b0a-c450dce47469'),('7a367b28-423c-4829-b660-3c843a967370','69467261-2a7e-4a5c-831c-3474d04d9dd1'),('7a367b28-423c-4829-b660-3c843a967370','77537899-8802-4333-9efc-378b11a5b27c'),('7a367b28-423c-4829-b660-3c843a967370','79c401f8-e5e9-4119-81d6-4115a2746288'),('7a367b28-423c-4829-b660-3c843a967370','8681e548-86fe-4bc0-befa-3edc7274dd34'),('7a367b28-423c-4829-b660-3c843a967370','89074b33-c48a-450d-913a-11522917a2f5'),('7a367b28-423c-4829-b660-3c843a967370','89745b6b-b750-4211-a487-e8274853009d'),('7a367b28-423c-4829-b660-3c843a967370','93ab7930-6e49-4b8e-a11b-a5b1b998414f'),('7a367b28-423c-4829-b660-3c843a967370','9c538da3-3823-4c23-82a0-5b06eef64c61'),('7a367b28-423c-4829-b660-3c843a967370','a1da408e-3f69-412e-8507-be5ffc5010fb'),('7a367b28-423c-4829-b660-3c843a967370','d575a349-3a65-49e1-bd47-cb01c4138cd4'),('7d99c081-e4a1-42c6-83a7-5008d7f54890','5c308d05-b190-4fdd-8c19-a05d6e02da2a'),('7d99c081-e4a1-42c6-83a7-5008d7f54890','87defc29-2710-4102-a768-155bcbe6071a'),('8c4fe487-f38a-4e59-b8dd-a7774e7f9020','6f3cd50f-8020-4930-aa03-949cfdc32921'),('8d51f500-9741-479d-93c4-73d550a911b8','0bf451c9-1215-4020-ad66-92332340ea56'),('8d51f500-9741-479d-93c4-73d550a911b8','1167ccdb-2722-4fe4-a2cd-142252c82234'),('8d51f500-9741-479d-93c4-73d550a911b8','1912bb60-cce1-407b-a44b-d5c0dbcd9192'),('8d51f500-9741-479d-93c4-73d550a911b8','1938fc2d-5db6-49cd-ac03-4f448e72054f'),('8d51f500-9741-479d-93c4-73d550a911b8','1bc7b40c-6b22-4206-ba75-971d44164835'),('8d51f500-9741-479d-93c4-73d550a911b8','44fe1dbd-e20d-46f6-b292-efbfbfbbc9e0'),('8d51f500-9741-479d-93c4-73d550a911b8','4e62b7b8-f896-4599-95ff-9e1aa3fa04c2'),('8d51f500-9741-479d-93c4-73d550a911b8','5c6a5c23-1549-40a0-937b-f33b48877151'),('8d51f500-9741-479d-93c4-73d550a911b8','646047f7-e395-4e1e-8bb5-d453a691db4c'),('8d51f500-9741-479d-93c4-73d550a911b8','6609bb79-683f-47d3-a136-f3eec93b9825'),('8d51f500-9741-479d-93c4-73d550a911b8','78125a0e-5941-4513-8e56-a455c38f9550'),('8d51f500-9741-479d-93c4-73d550a911b8','8dc5aebd-e2a1-47bc-b13b-bad70b552654'),('8d51f500-9741-479d-93c4-73d550a911b8','a70e25bc-92ec-4f46-8a62-854c5af4dfb5'),('8d51f500-9741-479d-93c4-73d550a911b8','b8a56ae3-0f54-44e9-b9d2-83e2406b1127'),('8d51f500-9741-479d-93c4-73d550a911b8','c118024f-de17-4701-9dea-7621ee3bee0f'),('8d51f500-9741-479d-93c4-73d550a911b8','e00631b9-c7fe-4f80-8ab5-9c6205adfb43'),('8d51f500-9741-479d-93c4-73d550a911b8','f4608b91-64ec-41e8-b25e-bf1c583e2916'),('8d51f500-9741-479d-93c4-73d550a911b8','ff8c3e43-85f5-4e8d-a0c6-e57d9bb2636d'),('9376181d-afa4-42eb-82c4-398ebd294658','7387938a-493b-4f1a-9e16-8b6352fd7afd'),('949bd9f6-da98-4c35-97a2-aa97d533ce31','5a359d64-000d-4297-8aa8-eacf37d739ab'),('954b7409-9776-4a03-a57a-4b821a506bb3','44fba3e4-3853-4e6b-b599-69bf11486b6e'),('954b7409-9776-4a03-a57a-4b821a506bb3','6d0ada92-0da6-4562-9578-bc09e65050ea'),('954b7409-9776-4a03-a57a-4b821a506bb3','7824adf8-e967-4695-a5cb-a3789af56d4b'),('954b7409-9776-4a03-a57a-4b821a506bb3','b116d6ab-b8bf-4187-9f2e-c113d2d7d471'),('f4608b91-64ec-41e8-b25e-bf1c583e2916','1938fc2d-5db6-49cd-ac03-4f448e72054f'),('f4608b91-64ec-41e8-b25e-bf1c583e2916','8dc5aebd-e2a1-47bc-b13b-bad70b552654'),('fc2db081-2d7c-4849-b435-e1b289110174','2e13340c-b56a-40f9-bdcc-ef42937d9397'),('fc2db081-2d7c-4849-b435-e1b289110174','3bb77f73-520e-4661-90ee-b2012efcce0f');
/*!40000 ALTER TABLE `COMPOSITE_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CREDENTIAL`
--

DROP TABLE IF EXISTS `CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext DEFAULT NULL,
  `CREDENTIAL_DATA` longtext DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_CREDENTIAL` (`USER_ID`),
  CONSTRAINT `FK_PFYR0GLASQYL0DEI3KL69R6V0` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `CREDENTIAL` DISABLE KEYS */;
INSERT INTO `CREDENTIAL` VALUES ('212c409c-5fea-4103-9c39-2a272464ade7',NULL,'password','bb2e51c8-b514-400f-a883-1e03d033839b',1684325167052,NULL,'{\"value\":\"0vEyk6BWbyVAiBSRV2A3VWlbRmZosw+pQX5sZZHvEAs=\",\"salt\":\"imTncFIXhRudejZm6N6hSA==\",\"additionalParameters\":{}}','{\"hashIterations\":5,\"algorithm\":\"argon2\",\"additionalParameters\":{\"hashLength\":[\"32\"],\"memory\":[\"7168\"],\"type\":[\"id\"],\"version\":[\"1.3\"],\"parallelism\":[\"1\"]}}',10),('cf29ba36-dd94-4eb0-a422-db928b91a43e',NULL,'password','094a2be3-d4a7-4325-aa90-b8c8302ede5e',1684337470160,NULL,'{\"value\":\"TOfLGpy0eIjn/YcRuEJaH1POoM3j9s0eAwhseDN3BWo=\",\"salt\":\"myvCOgto/Dczxye4KC13/w==\",\"additionalParameters\":{}}','{\"hashIterations\":5,\"algorithm\":\"argon2\",\"additionalParameters\":{\"hashLength\":[\"32\"],\"memory\":[\"7168\"],\"type\":[\"id\"],\"version\":[\"1.3\"],\"parallelism\":[\"1\"]}}',10),('d9e39eef-27e8-42a5-a129-a3a71a25e538',NULL,'password','925c1cc8-1604-4883-9157-87520be2f4b7',1734621528357,NULL,'{\"value\":\"mo8MfyjpPpInDuMDDV6CkoROpevg9yqexaMhcETGF8A=\",\"salt\":\"OEbTxB4E1Mfuv6oO/O71Yw==\",\"additionalParameters\":{}}','{\"hashIterations\":5,\"algorithm\":\"argon2\",\"additionalParameters\":{\"hashLength\":[\"32\"],\"memory\":[\"7168\"],\"type\":[\"id\"],\"version\":[\"1.3\"],\"parallelism\":[\"1\"]}}',10),('e848a0da-411d-418f-8035-fd528eefc15c',NULL,'password','2082746c-ea28-42dc-a0b1-c06dab0c2c14',1684330956949,NULL,'{\"value\":\"YGVjPjsIlF9la+m/pozhOAMTb2Qr3w71L7rEq3lBm4gpi+GDEyVzTZSthdOH0vwTpeT2Z/0KrEiBU9UZi1Y2Qg==\",\"salt\":\"p4nZZsrkjrD7vIRTKfkpGA==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10);
/*!40000 ALTER TABLE `CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2023-05-17 12:04:18',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2023-05-17 12:04:18',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2023-05-17 12:04:20',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2023-05-17 12:04:20',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2023-05-17 12:04:29',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2023-05-17 12:04:29',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2023-05-17 12:04:36',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2023-05-17 12:04:36',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2023-05-17 12:04:36',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2023-05-17 12:04:43',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2023-05-17 12:04:45',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2023-05-17 12:04:45',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2023-05-17 12:04:46',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-05-17 12:04:46',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-05-17 12:04:47',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-05-17 12:04:47',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-05-17 12:04:47',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2023-05-17 12:04:51',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2023-05-17 12:04:54',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2023-05-17 12:04:54',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2023-05-17 12:04:54',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2023-05-17 12:04:54',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2023-05-17 12:04:55',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2023-05-17 12:04:55',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2023-05-17 12:04:55',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2023-05-17 12:04:56',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2023-05-17 12:05:02',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2023-05-17 12:05:02',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2023-05-17 12:05:06',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2023-05-17 12:05:07',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2023-05-17 12:05:08',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2023-05-17 12:05:08',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-05-17 12:05:08',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-05-17 12:05:08',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-05-17 12:05:14',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2023-05-17 12:05:14',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-05-17 12:05:14',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2023-05-17 12:05:14',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2023-05-17 12:05:14',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-05-17 12:05:14',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-05-17 12:05:14',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2023-05-17 12:05:14',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-05-17 12:05:20',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2023-05-17 12:05:20',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-05-17 12:05:20',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-05-17 12:05:21',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-05-17 12:05:21',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-05-17 12:05:25',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-05-17 12:05:25',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2023-05-17 12:05:29',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2023-05-17 12:05:30',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2023-05-17 12:05:30',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2023-05-17 12:05:30',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2023-05-17 12:05:30',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-05-17 12:05:30',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-05-17 12:05:30',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-05-17 12:05:32',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-05-17 12:05:39',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2023-05-17 12:05:42',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2023-05-17 12:05:42',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-05-17 12:05:43',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-05-17 12:05:43',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2023-05-17 12:05:43',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2023-05-17 12:05:43',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2023-05-17 12:05:43',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2023-05-17 12:05:44',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2023-05-17 12:05:44',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2023-05-17 12:05:44',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2023-05-17 12:05:45',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2023-05-17 12:05:45',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2023-05-17 12:05:46',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'3.5.4',NULL,NULL,'4325039772'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-05-17 12:05:46',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'3.5.4',NULL,NULL,'4325039772'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-05-17 12:05:46',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'3.5.4',NULL,NULL,'4325039772'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-05-17 12:05:46',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'3.5.4',NULL,NULL,'4325039772'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-05-17 12:05:47',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-05-17 12:05:48',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-05-17 12:05:48',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-05-17 12:05:48',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-05-17 12:05:51',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-05-17 12:05:51',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-05-17 12:05:52',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-05-17 12:05:52',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-05-17 12:05:52',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-05-17 12:05:52',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-05-17 12:05:52',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'3.5.4',NULL,NULL,'4325039772'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2023-05-17 12:05:52',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'3.5.4',NULL,NULL,'4325039772'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-05-17 12:05:52',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-05-17 12:05:53',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'3.5.4',NULL,NULL,'4325039772'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:53',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'3.5.4',NULL,NULL,'4325039772'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:53',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'3.5.4',NULL,NULL,'4325039772'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:54',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'3.5.4',NULL,NULL,'4325039772'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:54',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:54',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:55',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:55',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:55',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'3.5.4',NULL,NULL,'4325039772'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-05-17 12:05:56',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'3.5.4',NULL,NULL,'4325039772'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-05-17 12:05:56',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'3.5.4',NULL,NULL,'4325039772'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-05-17 12:05:56',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'3.5.4',NULL,NULL,'4325039772'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-05-17 12:05:56',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'3.5.4',NULL,NULL,'4325039772'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-05-17 12:05:56',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'3.5.4',NULL,NULL,'4325039772'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-05-17 12:05:56',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'3.5.4',NULL,NULL,'4325039772'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-05-17 12:05:56',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'3.5.4',NULL,NULL,'4325039772'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2023-05-17 12:05:57',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-12-19 15:01:46',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'4616906440'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-12-19 15:01:46',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'4616906440'),('18.0.15-30992-index-consent','keycloak','META-INF/jpa-changelog-18.0.15.xml','2025-01-09 13:36:49',107,'EXECUTED','9:80071ede7a05604b1f4906f3bf3b00f0','createIndex indexName=IDX_USCONSENT_SCOPE_ID, tableName=USER_CONSENT_CLIENT_SCOPE','',NULL,'4.29.1',NULL,NULL,'6426207559'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2025-01-09 13:36:49',108,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.29.1',NULL,NULL,'6426207559'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2025-01-09 13:36:50',109,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.29.1',NULL,NULL,'6426207559'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2025-01-09 13:36:50',110,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.29.1',NULL,NULL,'6426207559'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2025-01-09 13:36:50',111,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.29.1',NULL,NULL,'6426207559'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2025-01-09 13:36:50',112,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.29.1',NULL,NULL,'6426207559'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2025-01-09 13:36:50',113,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.29.1',NULL,NULL,'6426207559'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2025-01-09 13:36:50',114,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.29.1',NULL,NULL,'6426207559'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2025-01-09 13:36:50',115,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.29.1',NULL,NULL,'6426207559'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2025-01-09 13:36:50',116,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.29.1',NULL,NULL,'6426207559'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2025-01-09 13:36:50',117,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.29.1',NULL,NULL,'6426207559'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2025-01-09 13:36:50',118,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.29.1',NULL,NULL,'6426207559'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2025-01-09 13:36:50',119,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.29.1',NULL,NULL,'6426207559'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2025-01-09 13:36:50',120,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.29.1',NULL,NULL,'6426207559'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2025-01-09 13:36:51',121,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.29.1',NULL,NULL,'6426207559'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2025-01-09 13:36:51',122,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.29.1',NULL,NULL,'6426207559'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2025-01-09 13:36:51',123,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.29.1',NULL,NULL,'6426207559'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2025-01-09 13:36:51',124,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.29.1',NULL,NULL,'6426207559'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2025-01-09 13:36:51',125,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.29.1',NULL,NULL,'6426207559'),('25.0.0-28265-tables','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-01-09 13:36:51',126,'EXECUTED','9:deda2df035df23388af95bbd36c17cef','addColumn tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.29.1',NULL,NULL,'6426207559'),('25.0.0-28265-index-creation','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-01-09 13:36:51',127,'EXECUTED','9:3e96709818458ae49f3c679ae58d263a','createIndex indexName=IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'6426207559'),('25.0.0-28265-index-cleanup-uss-createdon','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-01-09 13:36:51',128,'EXECUTED','9:78ab4fc129ed5e8265dbcc3485fba92f','dropIndex indexName=IDX_OFFLINE_USS_CREATEDON, tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'6426207559'),('25.0.0-28265-index-cleanup-uss-preload','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-01-09 13:36:51',129,'EXECUTED','9:de5f7c1f7e10994ed8b62e621d20eaab','dropIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'6426207559'),('25.0.0-28265-index-cleanup-uss-by-usersess','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-01-09 13:36:52',130,'EXECUTED','9:6eee220d024e38e89c799417ec33667f','dropIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'6426207559'),('25.0.0-28265-index-cleanup-css-preload','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-01-09 13:36:52',131,'EXECUTED','9:5411d2fb2891d3e8d63ddb55dfa3c0c9','dropIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.29.1',NULL,NULL,'6426207559'),('25.0.0-28265-index-2-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-01-09 13:36:52',132,'EXECUTED','9:b7ef76036d3126bb83c2423bf4d449d6','createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'6426207559'),('25.0.0-28265-index-2-not-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-01-09 13:36:52',133,'MARK_RAN','9:23396cf51ab8bc1ae6f0cac7f9f6fcf7','createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.29.1',NULL,NULL,'6426207559'),('25.0.0-org','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-01-09 13:36:52',134,'EXECUTED','9:5c859965c2c9b9c72136c360649af157','createTable tableName=ORG; addUniqueConstraint constraintName=UK_ORG_NAME, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_GROUP, tableName=ORG; createTable tableName=ORG_DOMAIN','',NULL,'4.29.1',NULL,NULL,'6426207559'),('unique-consentuser','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-01-09 13:36:52',135,'MARK_RAN','9:5857626a2ea8767e9a6c66bf3a2cb32f','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.29.1',NULL,NULL,'6426207559'),('unique-consentuser-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-01-09 13:36:52',136,'EXECUTED','9:b79478aad5adaa1bc428e31563f55e8e','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.29.1',NULL,NULL,'6426207559'),('25.0.0-28861-index-creation','keycloak','META-INF/jpa-changelog-25.0.0.xml','2025-01-09 13:36:52',137,'EXECUTED','9:b9acb58ac958d9ada0fe12a5d4794ab1','createIndex indexName=IDX_PERM_TICKET_REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; createIndex indexName=IDX_PERM_TICKET_OWNER, tableName=RESOURCE_SERVER_PERM_TICKET','',NULL,'4.29.1',NULL,NULL,'6426207559'),('26.0.0-org-alias','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-01-09 13:36:52',138,'EXECUTED','9:6ef7d63e4412b3c2d66ed179159886a4','addColumn tableName=ORG; update tableName=ORG; addNotNullConstraint columnName=ALIAS, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_ALIAS, tableName=ORG','',NULL,'4.29.1',NULL,NULL,'6426207559'),('26.0.0-org-group','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-01-09 13:36:52',139,'EXECUTED','9:da8e8087d80ef2ace4f89d8c5b9ca223','addColumn tableName=KEYCLOAK_GROUP; update tableName=KEYCLOAK_GROUP; addNotNullConstraint columnName=TYPE, tableName=KEYCLOAK_GROUP; customChange','',NULL,'4.29.1',NULL,NULL,'6426207559'),('26.0.0-org-indexes','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-01-09 13:36:52',140,'EXECUTED','9:79b05dcd610a8c7f25ec05135eec0857','createIndex indexName=IDX_ORG_DOMAIN_ORG_ID, tableName=ORG_DOMAIN','',NULL,'4.29.1',NULL,NULL,'6426207559'),('26.0.0-org-group-membership','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-01-09 13:36:52',141,'EXECUTED','9:a6ace2ce583a421d89b01ba2a28dc2d4','addColumn tableName=USER_GROUP_MEMBERSHIP; update tableName=USER_GROUP_MEMBERSHIP; addNotNullConstraint columnName=MEMBERSHIP_TYPE, tableName=USER_GROUP_MEMBERSHIP','',NULL,'4.29.1',NULL,NULL,'6426207559'),('31296-persist-revoked-access-tokens','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-01-09 13:36:52',142,'EXECUTED','9:64ef94489d42a358e8304b0e245f0ed4','createTable tableName=REVOKED_TOKEN; addPrimaryKey constraintName=CONSTRAINT_RT, tableName=REVOKED_TOKEN','',NULL,'4.29.1',NULL,NULL,'6426207559'),('31725-index-persist-revoked-access-tokens','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-01-09 13:36:52',143,'EXECUTED','9:b994246ec2bf7c94da881e1d28782c7b','createIndex indexName=IDX_REV_TOKEN_ON_EXPIRE, tableName=REVOKED_TOKEN','',NULL,'4.29.1',NULL,NULL,'6426207559'),('26.0.0-idps-for-login','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-01-09 13:36:52',144,'EXECUTED','9:51f5fffadf986983d4bd59582c6c1604','addColumn tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_REALM_ORG, tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER; customChange','',NULL,'4.29.1',NULL,NULL,'6426207559'),('26.0.0-32583-drop-redundant-index-on-client-session','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-01-09 13:36:52',145,'EXECUTED','9:24972d83bf27317a055d234187bb4af9','dropIndex indexName=IDX_US_SESS_ID_ON_CL_SESS, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.29.1',NULL,NULL,'6426207559'),('26.0.0.32582-remove-tables-user-session-user-session-note-and-client-session','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-01-09 13:36:53',146,'EXECUTED','9:febdc0f47f2ed241c59e60f58c3ceea5','dropTable tableName=CLIENT_SESSION_ROLE; dropTable tableName=CLIENT_SESSION_NOTE; dropTable tableName=CLIENT_SESSION_PROT_MAPPER; dropTable tableName=CLIENT_SESSION_AUTH_STATUS; dropTable tableName=CLIENT_USER_SESSION_NOTE; dropTable tableName=CLI...','',NULL,'4.29.1',NULL,NULL,'6426207559'),('26.0.0-33201-org-redirect-url','keycloak','META-INF/jpa-changelog-26.0.0.xml','2025-01-09 13:36:53',147,'EXECUTED','9:4d0e22b0ac68ebe9794fa9cb752ea660','addColumn tableName=ORG','',NULL,'4.29.1',NULL,NULL,'6426207559'),('26.0.6-34013','keycloak','META-INF/jpa-changelog-26.0.6.xml','2025-01-09 13:36:53',148,'EXECUTED','9:e6b686a15759aef99a6d758a5c4c6a26','addColumn tableName=ADMIN_EVENT_ENTITY','',NULL,'4.29.1',NULL,NULL,'6426207559');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,'\0',NULL,NULL),(1000,'\0',NULL,NULL),(1001,'\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEFAULT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `DEFAULT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEFAULT_CLIENT_SCOPE` (
  `REALM_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `DEFAULT_SCOPE` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`REALM_ID`,`SCOPE_ID`),
  KEY `IDX_DEFCLS_REALM` (`REALM_ID`),
  KEY `IDX_DEFCLS_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_R_DEF_CLI_SCOPE_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEFAULT_CLIENT_SCOPE`
--

LOCK TABLES `DEFAULT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('citelibre_backoffice','068b2b23-1ee1-451b-b0b4-c943279e6945',''),('citelibre_backoffice','378d0484-a971-478b-931f-f1e276570eb1','\0'),('citelibre_backoffice','53c19c3f-ba50-4883-8b1f-610580b11c43','\0'),('citelibre_backoffice','7861a8ec-2cea-412a-8238-d7719c2d6d5d','\0'),('citelibre_backoffice','7ed094c6-bc32-4e25-9c39-8f813774c177',''),('citelibre_backoffice','919cf26f-4749-4194-bafb-cc97e2869eb6',''),('citelibre_backoffice','977ca7f0-0277-46c9-b59d-efdfc40aee49',''),('citelibre_backoffice','a50b6ddc-30bf-4a9f-840d-2d77d10def51','\0'),('citelibre_backoffice','d4770b82-2205-40df-ada3-efed9a79eead',''),('citelibre_backoffice','e240a4ca-1292-497b-bdc9-d15b2c018485',''),('citelibre_backoffice','ea9e2be9-a4e9-4ddc-9e65-2edce442510a',''),('master','2ed830d4-caa4-41e9-82cb-3200561c1b54',''),('master','38173258-170f-4234-b4e1-d36b76285ac8',''),('master','431652d9-52c9-4cba-8cff-0cb5f3f40ae0',''),('master','5c90e0b5-9ea0-445e-ba41-774564be8f4c',''),('master','64321cde-4a9c-4074-9a8d-22ecc9d73420','\0'),('master','7842b7cc-8938-4358-b24a-197c4666b43e','\0'),('master','a8530866-bec1-4b19-8e9b-95217356dd72',''),('master','cc08e286-9e53-415d-9ca1-02f5653616e3','\0'),('master','e2252e6b-52b1-4a00-bb14-7ae9786fe176',''),('master','e566e070-dab2-4c1e-9737-86796cdc42f6',''),('master','f303a48d-0361-4e5c-8894-1088319e16c1','\0'),('Paris','1d82bc89-0f68-4510-971d-208d3b2d9a13','\0'),('Paris','21c9b10b-53d0-4159-99d3-14639af744a1',''),('Paris','51423d88-6b80-4d5e-90f3-1f45881070fc',''),('Paris','b4049566-b59c-4c79-b942-9dbc5765529f',''),('Paris','b86c8e58-bab6-41fa-abc0-3fe4fd0be7d1',''),('Paris','bc65e701-b843-4a2e-a9d4-c86541c8a256',''),('Paris','c466874a-96aa-4023-a650-19796ca583d6','\0'),('Paris','c713ec71-38d0-4cca-9f20-6890428fd140',''),('Paris','d83a1ba7-009a-41c5-8635-25e5e7801cd7',''),('Paris','e1f4cb60-dcce-45ed-b471-d90ecf39e161','\0'),('Paris','f633124f-deb0-45fc-9330-2aa478c8ec86','\0');
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_ENTITY`
--

DROP TABLE IF EXISTS `EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `DETAILS_JSON` text DEFAULT NULL,
  `ERROR` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `SESSION_ID` varchar(255) DEFAULT NULL,
  `EVENT_TIME` bigint(20) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `DETAILS_JSON_LONG_VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_EVENT_TIME` (`REALM_ID`,`EVENT_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT_ENTITY`
--

LOCK TABLES `EVENT_ENTITY` WRITE;
/*!40000 ALTER TABLE `EVENT_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FEDERATED_IDENTITY`
--

DROP TABLE IF EXISTS `FEDERATED_IDENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FEDERATED_IDENTITY` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FEDERATED_USER_ID` varchar(255) DEFAULT NULL,
  `FEDERATED_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`),
  KEY `IDX_FEDIDENTITY_USER` (`USER_ID`),
  KEY `IDX_FEDIDENTITY_FEDUSER` (`FEDERATED_USER_ID`),
  CONSTRAINT `FK404288B92EF007A6` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FEDERATED_IDENTITY`
--

LOCK TABLES `FEDERATED_IDENTITY` WRITE;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FEDERATED_USER`
--

DROP TABLE IF EXISTS `FEDERATED_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FEDERATED_USER` (
  `ID` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FEDERATED_USER`
--

LOCK TABLES `FEDERATED_USER` WRITE;
/*!40000 ALTER TABLE `FEDERATED_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `FED_USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `VALUE` text DEFAULT NULL,
  `LONG_VALUE_HASH` binary(64) DEFAULT NULL,
  `LONG_VALUE_HASH_LOWER_CASE` binary(64) DEFAULT NULL,
  `LONG_VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_ATTRIBUTE` (`USER_ID`,`REALM_ID`,`NAME`),
  KEY `FED_USER_ATTR_LONG_VALUES` (`LONG_VALUE_HASH`,`NAME`),
  KEY `FED_USER_ATTR_LONG_VALUES_LOWER_CASE` (`LONG_VALUE_HASH_LOWER_CASE`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_ATTRIBUTE`
--

LOCK TABLES `FED_USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CONSENT`
--

DROP TABLE IF EXISTS `FED_USER_CONSENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_CONSENT` (`USER_ID`,`CLIENT_ID`),
  KEY `IDX_FU_CONSENT_RU` (`REALM_ID`,`USER_ID`),
  KEY `IDX_FU_CNSNT_EXT` (`USER_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CONSENT`
--

LOCK TABLES `FED_USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CONSENT_CL_SCOPE`
--

DROP TABLE IF EXISTS `FED_USER_CONSENT_CL_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_CONSENT_CL_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CONSENT_CL_SCOPE`
--

LOCK TABLES `FED_USER_CONSENT_CL_SCOPE` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CREDENTIAL`
--

DROP TABLE IF EXISTS `FED_USER_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext DEFAULT NULL,
  `CREDENTIAL_DATA` longtext DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_CREDENTIAL` (`USER_ID`,`TYPE`),
  KEY `IDX_FU_CREDENTIAL_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CREDENTIAL`
--

LOCK TABLES `FED_USER_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_GROUP_MEMBERSHIP`
--

DROP TABLE IF EXISTS `FED_USER_GROUP_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP` (`USER_ID`,`GROUP_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `FED_USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_REQUIRED_ACTION`
--

DROP TABLE IF EXISTS `FED_USER_REQUIRED_ACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_REQUIRED_ACTION` (
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_FU_REQUIRED_ACTION` (`USER_ID`,`REQUIRED_ACTION`),
  KEY `IDX_FU_REQUIRED_ACTION_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_REQUIRED_ACTION`
--

LOCK TABLES `FED_USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `FED_USER_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_FU_ROLE_MAPPING` (`USER_ID`,`ROLE_ID`),
  KEY `IDX_FU_ROLE_MAPPING_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_ROLE_MAPPING`
--

LOCK TABLES `FED_USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUP_ATTRIBUTE`
--

DROP TABLE IF EXISTS `GROUP_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GROUP_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_GROUP_ATTR_GROUP` (`GROUP_ID`),
  KEY `IDX_GROUP_ATT_BY_NAME_VALUE` (`NAME`,`VALUE`),
  CONSTRAINT `FK_GROUP_ATTRIBUTE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUP_ATTRIBUTE`
--

LOCK TABLES `GROUP_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUP_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `GROUP_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GROUP_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`GROUP_ID`),
  KEY `IDX_GROUP_ROLE_MAPP_GROUP` (`GROUP_ID`),
  CONSTRAINT `FK_GROUP_ROLE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUP_ROLE_MAPPING`
--

LOCK TABLES `GROUP_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDENTITY_PROVIDER` (
  `INTERNAL_ID` varchar(36) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `PROVIDER_ALIAS` varchar(255) DEFAULT NULL,
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `STORE_TOKEN` bit(1) NOT NULL DEFAULT b'0',
  `AUTHENTICATE_BY_DEFAULT` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ADD_TOKEN_ROLE` bit(1) NOT NULL DEFAULT b'1',
  `TRUST_EMAIL` bit(1) NOT NULL DEFAULT b'0',
  `FIRST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `POST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `LINK_ONLY` bit(1) NOT NULL DEFAULT b'0',
  `ORGANIZATION_ID` varchar(255) DEFAULT NULL,
  `HIDE_ON_LOGIN` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`INTERNAL_ID`),
  UNIQUE KEY `UK_2DAELWNIBJI49AVXSRTUF6XJ33` (`PROVIDER_ALIAS`,`REALM_ID`),
  KEY `IDX_IDENT_PROV_REALM` (`REALM_ID`),
  KEY `IDX_IDP_REALM_ORG` (`REALM_ID`,`ORGANIZATION_ID`),
  KEY `IDX_IDP_FOR_LOGIN` (`REALM_ID`,`ENABLED`,`LINK_ONLY`,`HIDE_ON_LOGIN`,`ORGANIZATION_ID`),
  CONSTRAINT `FK2B4EBC52AE5C3B34` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER`
--

LOCK TABLES `IDENTITY_PROVIDER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER_CONFIG`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDENTITY_PROVIDER_CONFIG` (
  `IDENTITY_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FKDC4897CF864C4E43` FOREIGN KEY (`IDENTITY_PROVIDER_ID`) REFERENCES `IDENTITY_PROVIDER` (`INTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER_CONFIG`
--

LOCK TABLES `IDENTITY_PROVIDER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER_MAPPER`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDENTITY_PROVIDER_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `IDP_ALIAS` varchar(255) NOT NULL,
  `IDP_MAPPER_NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ID_PROV_MAPP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_IDPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER_MAPPER`
--

LOCK TABLES `IDENTITY_PROVIDER_MAPPER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `IDP_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP_MAPPER_CONFIG` (
  `IDP_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDP_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_IDPMCONFIG` FOREIGN KEY (`IDP_MAPPER_ID`) REFERENCES `IDENTITY_PROVIDER_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_MAPPER_CONFIG`
--

LOCK TABLES `IDP_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KEYCLOAK_GROUP`
--

DROP TABLE IF EXISTS `KEYCLOAK_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KEYCLOAK_GROUP` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PARENT_GROUP` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `TYPE` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SIBLING_NAMES` (`REALM_ID`,`PARENT_GROUP`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KEYCLOAK_GROUP`
--

LOCK TABLES `KEYCLOAK_GROUP` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KEYCLOAK_ROLE`
--

DROP TABLE IF EXISTS `KEYCLOAK_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KEYCLOAK_ROLE` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_REALM_CONSTRAINT` varchar(255) DEFAULT NULL,
  `CLIENT_ROLE` bit(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `CLIENT` varchar(36) DEFAULT NULL,
  `REALM` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_J3RWUVD56ONTGSUHOGM184WW2-2` (`NAME`,`CLIENT_REALM_CONSTRAINT`),
  KEY `IDX_KEYCLOAK_ROLE_CLIENT` (`CLIENT`),
  KEY `IDX_KEYCLOAK_ROLE_REALM` (`REALM`),
  CONSTRAINT `FK_6VYQFE4CN4WLQ8R6KT5VDSJ5C` FOREIGN KEY (`REALM`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KEYCLOAK_ROLE`
--

LOCK TABLES `KEYCLOAK_ROLE` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` DISABLE KEYS */;
INSERT INTO `KEYCLOAK_ROLE` VALUES ('051f1ab7-26d0-4e25-a8cb-c9252fae6fa3','06251203-e295-46d3-b742-083e447482fc','','${role_manage-account-links}','manage-account-links','citelibre_backoffice','06251203-e295-46d3-b742-083e447482fc',NULL),('0bf451c9-1215-4020-ad66-92332340ea56','89223ba7-1534-4822-b5b2-e523a122decf','','${role_manage-authorization}','manage-authorization','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('0e91d712-324f-41b5-8172-ade740d265c5','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_view-clients}','view-clients','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('1167ccdb-2722-4fe4-a2cd-142252c82234','89223ba7-1534-4822-b5b2-e523a122decf','','${role_impersonation}','impersonation','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('138b06f5-d8f1-4167-9431-7b9e82e0cf8c','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_impersonation}','impersonation','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('1744adee-56d6-4db6-8c63-f9528fffe997','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_manage-clients}','manage-clients','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('18494595-a0ab-4d57-9d49-a46d89dd95f5','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_manage-authorization}','manage-authorization','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('1912bb60-cce1-407b-a44b-d5c0dbcd9192','89223ba7-1534-4822-b5b2-e523a122decf','','${role_view-identity-providers}','view-identity-providers','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('1938fc2d-5db6-49cd-ac03-4f448e72054f','89223ba7-1534-4822-b5b2-e523a122decf','','${role_query-users}','query-users','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('1a4fd74c-199a-4b25-8f05-51ef90a5c720','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_query-groups}','query-groups','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('1a783319-1854-4b71-b40e-6d89d13e9a8d','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_create-client}','create-client','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('1bc7b40c-6b22-4206-ba75-971d44164835','89223ba7-1534-4822-b5b2-e523a122decf','','${role_manage-identity-providers}','manage-identity-providers','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('22156b64-97a6-4ad4-9f9d-a8e31312f105','06251203-e295-46d3-b742-083e447482fc','','${role_delete-account}','delete-account','citelibre_backoffice','06251203-e295-46d3-b742-083e447482fc',NULL),('23c39c09-6a56-4b88-a4a2-9beb10801ac1','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_view-users}','view-users','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('23ea72ec-fb4c-44c4-8769-71cbac361a70','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_manage-authorization}','manage-authorization','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('24a87994-a578-4516-8d67-0e6c60fe7281','d6531404-964c-457c-bf14-5213c9d58277','','${role_read-token}','read-token','master','d6531404-964c-457c-bf14-5213c9d58277',NULL),('24da35ed-c30e-465f-8c0a-0e237d4624d1','1302d944-0f75-473a-9977-826784129cc7','','${role_read-token}','read-token','citelibre_backoffice','1302d944-0f75-473a-9977-826784129cc7',NULL),('2aa28db5-2220-42b9-925c-9dc4238b066d','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_view-authorization}','view-authorization','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('2e13340c-b56a-40f9-bdcc-ef42937d9397','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_query-users}','query-users','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('3057b877-2f5c-4e15-af1f-587a60431974','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_view-identity-providers}','view-identity-providers','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('3222b9c3-167e-4c19-91f0-97efb2e2ffba','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_manage-authorization}','manage-authorization','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('336e367f-ded8-4e8d-a7a5-fe0b591aa872','8f8ef5da-0e40-4034-96e9-203878205f27','','${role_manage-account}','manage-account','master','8f8ef5da-0e40-4034-96e9-203878205f27',NULL),('35093bab-45d1-4c36-a21e-cdfdc9cc0564','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_create-client}','create-client','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('355b80a7-b9ae-45ca-8bc8-39c80bbc93fe','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_query-realms}','query-realms','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('368ed282-126c-4443-82fc-212fbea42ad2','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_view-realm}','view-realm','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('3b71e8fc-4418-45a6-9a27-f14d42357645','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_create-client}','create-client','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('3bb77f73-520e-4661-90ee-b2012efcce0f','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_query-groups}','query-groups','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('3f53159d-4333-48d7-a86a-0b9899a5e494','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_manage-identity-providers}','manage-identity-providers','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('44fba3e4-3853-4e6b-b599-69bf11486b6e','citelibre_backoffice','\0','${role_offline-access}','offline_access','citelibre_backoffice',NULL,NULL),('44fe1dbd-e20d-46f6-b292-efbfbfbbc9e0','89223ba7-1534-4822-b5b2-e523a122decf','','${role_view-events}','view-events','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('45bc4d15-e1c7-4ce6-a2cd-bc8106290db6','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_view-events}','view-events','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('47464199-80b5-45eb-98de-d48f419233b1','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_manage-realm}','manage-realm','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('4d06a4d6-1df5-4899-b0d1-ec5c0e461291','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_view-identity-providers}','view-identity-providers','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('4e62b7b8-f896-4599-95ff-9e1aa3fa04c2','89223ba7-1534-4822-b5b2-e523a122decf','','${role_manage-clients}','manage-clients','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('516ca23c-300e-409d-95ec-99c6eeef6517','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_view-clients}','view-clients','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('55b61e20-71f3-4dae-af1f-1f4a73458d4a','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_manage-identity-providers}','manage-identity-providers','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('562c0666-d09a-479f-8b4f-95d92602c72f','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_view-identity-providers}','view-identity-providers','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('56dba28a-5e56-47a5-9fa0-aa695c44a366','8f8ef5da-0e40-4034-96e9-203878205f27','','${role_view-applications}','view-applications','master','8f8ef5da-0e40-4034-96e9-203878205f27',NULL),('576a4659-03e6-4917-b13c-cfd04d0ffb1b','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_manage-users}','manage-users','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('58d8151c-70e2-47d5-8288-6df5fe769ccb','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_manage-events}','manage-events','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('5a359d64-000d-4297-8aa8-eacf37d739ab','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_query-clients}','query-clients','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('5c308d05-b190-4fdd-8c19-a05d6e02da2a','Paris','\0','${role_offline-access}','offline_access','Paris',NULL,NULL),('5c6a5c23-1549-40a0-937b-f33b48877151','89223ba7-1534-4822-b5b2-e523a122decf','','${role_manage-users}','manage-users','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','master','\0','${role_admin}','admin','master',NULL,NULL),('5e90e412-1283-4c88-a6a2-5a783ee2e023','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_view-events}','view-events','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('5f111826-a898-4723-8089-132c2c2f1893','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_manage-clients}','manage-clients','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('6070112a-2181-4269-bca1-be7cf6c19924','master','\0','${role_create-realm}','create-realm','master',NULL,NULL),('63d766d2-780d-4547-a9db-f6e8d910684c','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_query-users}','query-users','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('646047f7-e395-4e1e-8bb5-d453a691db4c','89223ba7-1534-4822-b5b2-e523a122decf','','${role_manage-events}','manage-events','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('65dccacf-34da-42c4-ac03-7092d3352aaf','master','\0','${role_default-roles}','default-roles-master','master',NULL,NULL),('65fee8b4-3de4-44ed-a31e-a834b90894bc','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_view-realm}','view-realm','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('6609bb79-683f-47d3-a136-f3eec93b9825','89223ba7-1534-4822-b5b2-e523a122decf','','${role_manage-realm}','manage-realm','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('66beb670-8e99-4d0e-8b0a-c450dce47469','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_create-client}','create-client','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('69467261-2a7e-4a5c-831c-3474d04d9dd1','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_view-users}','view-users','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('6c57f80a-e962-47b6-9d5b-60c7c92aff34','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_impersonation}','impersonation','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('6c608c0d-feca-4883-a88e-ead1e961a0d1','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_view-users}','view-users','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('6d0ada92-0da6-4562-9578-bc09e65050ea','06251203-e295-46d3-b742-083e447482fc','','${role_manage-account}','manage-account','citelibre_backoffice','06251203-e295-46d3-b742-083e447482fc',NULL),('6db2b4a8-ca8e-4e74-9d99-79229b8ff9ba','231e6435-1c21-4016-9945-e3aa6fc5cf7e','',NULL,'manage-account','Paris','231e6435-1c21-4016-9945-e3aa6fc5cf7e',NULL),('6f3cd50f-8020-4930-aa03-949cfdc32921','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_query-clients}','query-clients','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('7387938a-493b-4f1a-9e16-8b6352fd7afd','06251203-e295-46d3-b742-083e447482fc','','${role_view-consent}','view-consent','citelibre_backoffice','06251203-e295-46d3-b742-083e447482fc',NULL),('77537899-8802-4333-9efc-378b11a5b27c','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_query-groups}','query-groups','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('78125a0e-5941-4513-8e56-a455c38f9550','89223ba7-1534-4822-b5b2-e523a122decf','','${role_view-clients}','view-clients','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('7824adf8-e967-4695-a5cb-a3789af56d4b','06251203-e295-46d3-b742-083e447482fc','','${role_view-profile}','view-profile','citelibre_backoffice','06251203-e295-46d3-b742-083e447482fc',NULL),('78625c82-7fd4-4955-ae73-a7a416ebd603','8f8ef5da-0e40-4034-96e9-203878205f27','','${role_manage-consent}','manage-consent','master','8f8ef5da-0e40-4034-96e9-203878205f27',NULL),('79c401f8-e5e9-4119-81d6-4115a2746288','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_impersonation}','impersonation','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('7a367b28-423c-4829-b660-3c843a967370','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_realm-admin}','realm-admin','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('7d38f1a6-799b-41c1-a9e6-11ab38cc7006','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_manage-identity-providers}','manage-identity-providers','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('7d99c081-e4a1-42c6-83a7-5008d7f54890','Paris','\0','${role_default-roles}','default-roles-paris','Paris',NULL,NULL),('80b1f608-bed0-497c-b299-ac02bd1f01d8','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_view-authorization}','view-authorization','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('836c712e-bd23-4ddc-b21b-e5dffa6478b0','master','\0','${role_uma_authorization}','uma_authorization','master',NULL,NULL),('8681e548-86fe-4bc0-befa-3edc7274dd34','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_manage-users}','manage-users','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('8687a672-80d7-4e4d-a052-4e28b9da78d1','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_query-users}','query-users','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('874b5f0d-3e5b-4ec4-9381-8672bde6ceeb','06251203-e295-46d3-b742-083e447482fc','','${role_view-groups}','view-groups','citelibre_backoffice','06251203-e295-46d3-b742-083e447482fc',NULL),('87defc29-2710-4102-a768-155bcbe6071a','Paris','\0','${role_uma_authorization}','uma_authorization','Paris',NULL,NULL),('89074b33-c48a-450d-913a-11522917a2f5','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_manage-realm}','manage-realm','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('89745b6b-b750-4211-a487-e8274853009d','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_view-realm}','view-realm','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('8c4fe487-f38a-4e59-b8dd-a7774e7f9020','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_view-clients}','view-clients','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('8d51f500-9741-479d-93c4-73d550a911b8','89223ba7-1534-4822-b5b2-e523a122decf','','${role_realm-admin}','realm-admin','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('8dc5aebd-e2a1-47bc-b13b-bad70b552654','89223ba7-1534-4822-b5b2-e523a122decf','','${role_query-groups}','query-groups','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('8e73ca8c-e1e4-43cf-807e-ca220810fca4','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_manage-clients}','manage-clients','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('914e215a-68c3-4789-997d-8140cf087b87','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_manage-events}','manage-events','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('928446ae-05ec-4c61-8873-794d5c612e23','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_view-events}','view-events','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('9376181d-afa4-42eb-82c4-398ebd294658','06251203-e295-46d3-b742-083e447482fc','','${role_manage-consent}','manage-consent','citelibre_backoffice','06251203-e295-46d3-b742-083e447482fc',NULL),('93ab7930-6e49-4b8e-a11b-a5b1b998414f','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_query-realms}','query-realms','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('949bd9f6-da98-4c35-97a2-aa97d533ce31','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_view-clients}','view-clients','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('954b7409-9776-4a03-a57a-4b821a506bb3','citelibre_backoffice','\0','${role_default-roles}','default-roles-citelibre_backoffice','citelibre_backoffice',NULL,NULL),('9a288da9-d043-46d9-b12a-91c62db82fa5','06251203-e295-46d3-b742-083e447482fc','','${role_view-applications}','view-applications','citelibre_backoffice','06251203-e295-46d3-b742-083e447482fc',NULL),('9c538da3-3823-4c23-82a0-5b06eef64c61','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_query-clients}','query-clients','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('a1da408e-3f69-412e-8507-be5ffc5010fb','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_manage-identity-providers}','manage-identity-providers','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('a70e25bc-92ec-4f46-8a62-854c5af4dfb5','89223ba7-1534-4822-b5b2-e523a122decf','','${role_query-realms}','query-realms','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('a9b90a04-be96-4741-b43f-6e5c5fbe6067','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_manage-events}','manage-events','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('ace5c973-137f-42d4-ab3c-7453a680eeb7','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_view-events}','view-events','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('ae5f748a-082d-401f-ac6a-98c3250a8a38','8f8ef5da-0e40-4034-96e9-203878205f27','','${role_view-consent}','view-consent','master','8f8ef5da-0e40-4034-96e9-203878205f27',NULL),('b094de91-ab05-4606-a8ee-a84040e1ba04','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_query-users}','query-users','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('b116d6ab-b8bf-4187-9f2e-c113d2d7d471','citelibre_backoffice','\0','${role_uma_authorization}','uma_authorization','citelibre_backoffice',NULL,NULL),('b249ea90-2216-4ab7-b5a2-9b535a06b0c2','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_view-realm}','view-realm','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('b3d6174b-860a-4bde-8c8d-e3cbc4837d67','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_query-realms}','query-realms','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('b65685c8-d991-43af-b582-dfbe55e5ddd9','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_manage-realm}','manage-realm','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('b8a56ae3-0f54-44e9-b9d2-83e2406b1127','89223ba7-1534-4822-b5b2-e523a122decf','','${role_view-authorization}','view-authorization','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('c118024f-de17-4701-9dea-7621ee3bee0f','89223ba7-1534-4822-b5b2-e523a122decf','','${role_query-clients}','query-clients','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('c396d412-15bc-4caf-9c5c-bd57a1764614','231e6435-1c21-4016-9945-e3aa6fc5cf7e','','${role_delete-account}','delete-account','Paris','231e6435-1c21-4016-9945-e3aa6fc5cf7e',NULL),('cea8b620-21cc-41d4-afb8-3aca410e863a','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_query-realms}','query-realms','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('d13fc2b6-9dc3-4987-b4da-42a0f7d58e98','8f8ef5da-0e40-4034-96e9-203878205f27','','${role_manage-account-links}','manage-account-links','master','8f8ef5da-0e40-4034-96e9-203878205f27',NULL),('d5410424-1d80-40ad-ad60-f296f0b3c7b1','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_impersonation}','impersonation','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('d575a349-3a65-49e1-bd47-cb01c4138cd4','cd15f654-fa6b-4e95-a3f8-1739051bcf41','','${role_view-authorization}','view-authorization','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('ddc2e13e-881a-4c16-a123-dfded3240a76','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_manage-clients}','manage-clients','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('dec328f3-4fbe-4e19-bb3c-376d9351251d','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_manage-users}','manage-users','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('df1d39e7-0c7c-4189-816c-ec4fbf8294aa','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_view-authorization}','view-authorization','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('df68c83c-23ef-4cd5-a942-f4e56af708ae','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_manage-users}','manage-users','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('e00631b9-c7fe-4f80-8ab5-9c6205adfb43','89223ba7-1534-4822-b5b2-e523a122decf','','${role_create-client}','create-client','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('e2a89d4d-a713-4cdf-9aad-bbcebba4de23','231e6435-1c21-4016-9945-e3aa6fc5cf7e','','${role_view-groups}','view-groups','Paris','231e6435-1c21-4016-9945-e3aa6fc5cf7e',NULL),('eb1a0755-df2b-493c-ba15-72fe9954cced','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_query-clients}','query-clients','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('ee0f5fbc-325c-4997-abb0-a47b6351f0ed','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_view-identity-providers}','view-identity-providers','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('ee34565a-1428-44bc-ab7e-c5f9cc634856','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_manage-events}','manage-events','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('f0760ba1-47c8-404e-b3b0-f17484437c96','8f8ef5da-0e40-4034-96e9-203878205f27','','${role_delete-account}','delete-account','master','8f8ef5da-0e40-4034-96e9-203878205f27',NULL),('f2478032-0365-496e-8885-6da3a5d38296','a6c20c61-1a04-49b9-b18f-f02f91ee3c83','','${role_query-groups}','query-groups','master','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',NULL),('f4608b91-64ec-41e8-b25e-bf1c583e2916','89223ba7-1534-4822-b5b2-e523a122decf','','${role_view-users}','view-users','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL),('f589ac49-7f11-40ce-a9d1-af7c398b67bc','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_manage-realm}','manage-realm','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('f5ec1764-5fd3-4027-a509-13a4eaec79c7','master','\0','${role_offline-access}','offline_access','master',NULL,NULL),('f65e5578-07f6-4945-ae1e-f67a126c0c3c','0223e96b-970c-4c51-b5a4-8506a6796495','','${role_manage-authorization}','manage-authorization','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('f8b0b3ae-3fa9-46bd-99f4-83b9cb53015e','8f8ef5da-0e40-4034-96e9-203878205f27','','${role_view-groups}','view-groups','master','8f8ef5da-0e40-4034-96e9-203878205f27',NULL),('f9cc0e0e-7e22-4acb-869e-1b9b756326ea','8f8ef5da-0e40-4034-96e9-203878205f27','','${role_view-profile}','view-profile','master','8f8ef5da-0e40-4034-96e9-203878205f27',NULL),('fc2db081-2d7c-4849-b435-e1b289110174','eabd59b2-33cc-4adc-9a53-3d430f9afeb5','','${role_view-users}','view-users','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('ff8c3e43-85f5-4e8d-a0c6-e57d9bb2636d','89223ba7-1534-4822-b5b2-e523a122decf','','${role_view-realm}','view-realm','citelibre_backoffice','89223ba7-1534-4822-b5b2-e523a122decf',NULL);
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MIGRATION_MODEL`
--

DROP TABLE IF EXISTS `MIGRATION_MODEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MIGRATION_MODEL` (
  `ID` varchar(36) NOT NULL,
  `VERSION` varchar(36) DEFAULT NULL,
  `UPDATE_TIME` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IDX_UPDATE_TIME` (`UPDATE_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
/*!40000 ALTER TABLE `MIGRATION_MODEL` DISABLE KEYS */;
INSERT INTO `MIGRATION_MODEL` VALUES ('31vu2','26.0.7',1736426223),('jkcc6','16.1.1',1684325161),('ntnbs','18.0.0',1734616911);
/*!40000 ALTER TABLE `MIGRATION_MODEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFLINE_CLIENT_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_CLIENT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OFFLINE_CLIENT_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `DATA` longtext DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) NOT NULL DEFAULT 'local',
  `EXTERNAL_CLIENT_ID` varchar(255) NOT NULL DEFAULT 'local',
  `VERSION` int(11) DEFAULT 0,
  PRIMARY KEY (`USER_SESSION_ID`,`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`OFFLINE_FLAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_CLIENT_SESSION`
--

LOCK TABLES `OFFLINE_CLIENT_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` DISABLE KEYS */;
INSERT INTO `OFFLINE_CLIENT_SESSION` VALUES ('3102da84-8d83-45ae-b042-d285f64750f3','b741f744-8388-4233-9edc-c9f2ed49016e','0',1736438582,'{\"authMethod\":\"openid-connect\",\"redirectUri\":\"http://localhost:8081/admin/master/console/#/citelibre_frontoffice/clients/c0a41b9a-c749-41b3-8d6d-308d6d945245/settings\",\"notes\":{\"clientId\":\"b741f744-8388-4233-9edc-c9f2ed49016e\",\"iss\":\"http://localhost:8081/realms/master\",\"startedAt\":\"1736438194\",\"response_type\":\"code\",\"level-of-authentication\":\"-1\",\"code_challenge_method\":\"S256\",\"nonce\":\"a1d10882-0d53-410a-8aeb-a673d8da0da7\",\"response_mode\":\"query\",\"scope\":\"openid\",\"userSessionStartedAt\":\"1736438194\",\"redirect_uri\":\"http://localhost:8081/admin/master/console/#/citelibre_frontoffice/clients/c0a41b9a-c749-41b3-8d6d-308d6d945245/settings\",\"state\":\"ceedcb6f-367a-4b3d-93a6-188ed63cf988\",\"code_challenge\":\"XNbeLKCu8QuHvfE2GR2IuE0DpLBA_5PdK8eUbOW489c\",\"prompt\":\"none\",\"SSO_AUTH\":\"true\"}}','local','local',5),('af56c8e0-3d86-471f-b322-8704e447a518','c0a41b9a-c749-41b3-8d6d-308d6d945245','0',1736438399,'{\"authMethod\":\"openid-connect\",\"redirectUri\":\"http://localhost:8080/rendezvous/servlet/plugins/oauth2/callback?data_client=authData\",\"notes\":{\"clientId\":\"c0a41b9a-c749-41b3-8d6d-308d6d945245\",\"scope\":\"openid\",\"userSessionStartedAt\":\"1736438325\",\"iss\":\"http://localhost:8081/realms/citelibre_frontoffice\",\"startedAt\":\"1736438325\",\"response_type\":\"code\",\"level-of-authentication\":\"-1\",\"redirect_uri\":\"http://localhost:8080/rendezvous/servlet/plugins/oauth2/callback?data_client=authData\",\"state\":\"25d4408a2dfa6c6580c642e617b0fe0a\",\"nonce\":\"b592c00b77c707b2692c3c8cac64bb6f\"}}','local','local',3);
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFLINE_USER_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_USER_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OFFLINE_USER_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `CREATED_ON` int(11) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `DATA` longtext DEFAULT NULL,
  `LAST_SESSION_REFRESH` int(11) NOT NULL DEFAULT 0,
  `BROKER_SESSION_ID` text DEFAULT NULL,
  `VERSION` int(11) DEFAULT 0,
  PRIMARY KEY (`USER_SESSION_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_BY_USER` (`USER_ID`,`REALM_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH` (`REALM_ID`,`OFFLINE_FLAG`,`LAST_SESSION_REFRESH`),
  KEY `IDX_OFFLINE_USS_BY_BROKER_SESSION_ID` (`BROKER_SESSION_ID`(255),`REALM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_USER_SESSION`
--

LOCK TABLES `OFFLINE_USER_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` DISABLE KEYS */;
INSERT INTO `OFFLINE_USER_SESSION` VALUES ('3102da84-8d83-45ae-b042-d285f64750f3','bb2e51c8-b514-400f-a883-1e03d033839b','master',1736438194,'0','{\"ipAddress\":\"172.21.0.1\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMjEuMC4xIiwib3MiOiJMaW51eCIsIm9zVmVyc2lvbiI6IlVua25vd24iLCJicm93c2VyIjoiRmlyZWZveC8xMzMuMCIsImRldmljZSI6Ik90aGVyIiwibGFzdEFjY2VzcyI6MCwibW9iaWxlIjpmYWxzZX0=\",\"AUTH_TIME\":\"1736438194\",\"authenticators-completed\":\"{\\\"ab1d7ba6-ca1f-453b-bba7-26ba69799dd1\\\":1736438194,\\\"70194066-d6ba-4d29-b183-a6f106b7daae\\\":1736438524}\"},\"state\":\"LOGGED_IN\"}',1736438582,NULL,5),('af56c8e0-3d86-471f-b322-8704e447a518','094a2be3-d4a7-4325-aa90-b8c8302ede5e','Paris',1736438325,'0','{\"ipAddress\":\"172.21.0.1\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMjEuMC4xIiwib3MiOiJMaW51eCIsIm9zVmVyc2lvbiI6IlVua25vd24iLCJicm93c2VyIjoiRmlyZWZveC8xMzMuMCIsImRldmljZSI6Ik90aGVyIiwibGFzdEFjY2VzcyI6MCwibW9iaWxlIjpmYWxzZX0=\",\"AUTH_TIME\":\"1736438325\",\"authenticators-completed\":\"{\\\"82639f2d-d95f-4182-8e53-f7ec98b340ea\\\":1736438325}\"},\"state\":\"LOGGED_IN\"}',1736438399,NULL,6);
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORG`
--

DROP TABLE IF EXISTS `ORG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ORG` (
  `ID` varchar(255) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL,
  `REALM_ID` varchar(255) NOT NULL,
  `GROUP_ID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `ALIAS` varchar(255) NOT NULL,
  `REDIRECT_URL` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_ORG_NAME` (`REALM_ID`,`NAME`),
  UNIQUE KEY `UK_ORG_GROUP` (`GROUP_ID`),
  UNIQUE KEY `UK_ORG_ALIAS` (`REALM_ID`,`ALIAS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORG`
--

LOCK TABLES `ORG` WRITE;
/*!40000 ALTER TABLE `ORG` DISABLE KEYS */;
/*!40000 ALTER TABLE `ORG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORG_DOMAIN`
--

DROP TABLE IF EXISTS `ORG_DOMAIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ORG_DOMAIN` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VERIFIED` tinyint(1) NOT NULL,
  `ORG_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`,`NAME`),
  KEY `IDX_ORG_DOMAIN_ORG_ID` (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORG_DOMAIN`
--

LOCK TABLES `ORG_DOMAIN` WRITE;
/*!40000 ALTER TABLE `ORG_DOMAIN` DISABLE KEYS */;
/*!40000 ALTER TABLE `ORG_DOMAIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `POLICY_CONFIG`
--

DROP TABLE IF EXISTS `POLICY_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `POLICY_CONFIG` (
  `POLICY_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  PRIMARY KEY (`POLICY_ID`,`NAME`),
  CONSTRAINT `FKDC34197CF864C4E43` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `POLICY_CONFIG`
--

LOCK TABLES `POLICY_CONFIG` WRITE;
/*!40000 ALTER TABLE `POLICY_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `POLICY_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROTOCOL_MAPPER`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROTOCOL_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PROTOCOL` varchar(255) NOT NULL,
  `PROTOCOL_MAPPER_NAME` varchar(255) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `CLIENT_SCOPE_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PROTOCOL_MAPPER_CLIENT` (`CLIENT_ID`),
  KEY `IDX_CLSCOPE_PROTMAP` (`CLIENT_SCOPE_ID`),
  CONSTRAINT `FK_CLI_SCOPE_MAPPER` FOREIGN KEY (`CLIENT_SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`),
  CONSTRAINT `FK_PCM_REALM` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROTOCOL_MAPPER`
--

LOCK TABLES `PROTOCOL_MAPPER` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER` VALUES ('01aedc60-1012-4181-872b-1e794d5f68ed','auth_time','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'b86c8e58-bab6-41fa-abc0-3fe4fd0be7d1'),('0471e634-07ee-435e-85a7-63b714119f33','email','openid-connect','oidc-usermodel-property-mapper',NULL,'d83a1ba7-009a-41c5-8635-25e5e7801cd7'),('0b167ded-5d7b-41f6-8dfc-6efa7688d95a','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'ea9e2be9-a4e9-4ddc-9e65-2edce442510a'),('0ee9a6c0-486b-4fa3-920e-5efd5491c9b6','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d4770b82-2205-40df-ada3-efed9a79eead'),('12da7567-9d62-4681-9323-89bad1832d3a','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'ea9e2be9-a4e9-4ddc-9e65-2edce442510a'),('13c88814-a351-4860-bf6b-e4b493c6cf45','gender','openid-connect','oidc-usermodel-attribute-mapper','c0a41b9a-c749-41b3-8d6d-308d6d945245',NULL),('192e183f-b251-46bd-a0fd-457d8efd5844','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('1a5165f0-8347-4a36-b7e4-d296a56aab92','audience resolve','openid-connect','oidc-audience-resolve-mapper','06659433-c299-4183-af48-a8ab8f7df65b',NULL),('1a770b55-615f-43e4-8e31-9583f1e49387','locale','openid-connect','oidc-usermodel-attribute-mapper','5c41c941-c9c6-480f-b39d-ec696e79db28',NULL),('1bf8c038-e87d-424d-a733-8590b5e46ca2','address','openid-connect','oidc-address-mapper',NULL,'cc08e286-9e53-415d-9ca1-02f5653616e3'),('1c2ed15f-0a20-4c78-af03-fb0eeba38be5','sub','openid-connect','oidc-sub-mapper',NULL,'919cf26f-4749-4194-bafb-cc97e2869eb6'),('1c59bcbd-57c1-4bb1-b0c1-c72ea4603538','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'e240a4ca-1292-497b-bdc9-d15b2c018485'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'1d82bc89-0f68-4510-971d-208d3b2d9a13'),('22d3c2e2-d55a-4488-be0b-9a79080c4563','family name','openid-connect','oidc-usermodel-property-mapper','c0a41b9a-c749-41b3-8d6d-308d6d945245',NULL),('24ead1b6-89b3-4000-bbd4-41f318f0123b','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'e566e070-dab2-4c1e-9737-86796cdc42f6'),('2663b40c-930d-4df8-b597-5ad69b55af05','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'b4049566-b59c-4c79-b942-9dbc5765529f'),('2a3af7c2-f838-499a-bfef-3a8b65c13008','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('2f0fd937-c369-4c83-a28d-ed2db85fec27','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('32410706-0484-4e26-bfab-3f3e14d9505b','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'e566e070-dab2-4c1e-9737-86796cdc42f6'),('35856b58-918c-4f0e-ad2a-857ca1f9c628','locale','openid-connect','oidc-usermodel-attribute-mapper','e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5',NULL),('37912ad8-6328-4801-8ba4-f27c82a08ad4','username','openid-connect','oidc-usermodel-property-mapper','c0a41b9a-c749-41b3-8d6d-308d6d945245',NULL),('3eb1c8d0-ae24-4028-aa57-fc9cd5195697','full name','openid-connect','oidc-full-name-mapper','c0a41b9a-c749-41b3-8d6d-308d6d945245',NULL),('4039b4ad-6b4c-4b30-82db-8e905025c2e9','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('44c23e7e-2168-4844-975c-4215feff404b','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'d4770b82-2205-40df-ada3-efed9a79eead'),('45416685-edd5-43ef-bea8-f35275560400','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'e566e070-dab2-4c1e-9737-86796cdc42f6'),('45baee06-a7e5-4e01-8fa0-0a87f3d5bc14','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'d4770b82-2205-40df-ada3-efed9a79eead'),('4b02f55b-3e15-4620-9d7d-98b1662e4b31','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e1f4cb60-dcce-45ed-b471-d90ecf39e161'),('4d86bcab-14ca-494c-a5ed-8ab148c69b0e','email','openid-connect','oidc-usermodel-property-mapper',NULL,'38173258-170f-4234-b4e1-d36b76285ac8'),('4e6fd447-9577-472a-ac5a-f9538b7af349','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d4770b82-2205-40df-ada3-efed9a79eead'),('4fe291c7-8177-4e2e-8195-8717c07f8998','role list','saml','saml-role-list-mapper',NULL,'c713ec71-38d0-4cca-9f20-6890428fd140'),('55866865-c699-4f7b-84e8-b485bee678a8','address','openid-connect','oidc-address-mapper',NULL,'c466874a-96aa-4023-a650-19796ca583d6'),('55a8b252-353b-4d07-8381-1cef3ef39820','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('5641de45-7888-4dda-9c62-1c50e7dc0a2f','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'d83a1ba7-009a-41c5-8635-25e5e7801cd7'),('5885c0c1-5c9f-4c69-92e7-7c4f71b7ee40','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('5ddaf547-bd13-418f-945b-f53167e12c85','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('5f840f56-a1c8-47b2-aef1-5927a51c22c5','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d4770b82-2205-40df-ada3-efed9a79eead'),('63b08ee3-0d17-4800-98f4-7c142209cd66','given name','openid-connect','oidc-usermodel-property-mapper','0335247d-0834-41b2-a5c1-7e0c321b9968',NULL),('66e79ead-0b0f-4180-9f22-6e0422c7e228','sub','openid-connect','oidc-sub-mapper',NULL,'b86c8e58-bab6-41fa-abc0-3fe4fd0be7d1'),('6784ec02-e6aa-4156-9d1e-553548772b85','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('6a17e285-a8af-40fc-9288-12296589c371','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'a8530866-bec1-4b19-8e9b-95217356dd72'),('6d0a207a-6d7a-4266-8eb8-69b7102431d4','username','openid-connect','oidc-usermodel-property-mapper','0335247d-0834-41b2-a5c1-7e0c321b9968',NULL),('6e6307bd-00d1-4b28-bb48-fce1e42694c6','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d4770b82-2205-40df-ada3-efed9a79eead'),('724941de-1b53-40f6-8258-6e707c2bb9c6','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'378d0484-a971-478b-931f-f1e276570eb1'),('7423e743-dea7-43d8-9ec6-8fc1d2d26939','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d4770b82-2205-40df-ada3-efed9a79eead'),('743c5478-f716-422c-833b-55361df4a31f','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('74eaeb74-0f13-41a0-bdff-a7e538849939','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'38173258-170f-4234-b4e1-d36b76285ac8'),('759775cd-4cec-4c74-8655-56efa41f2acb','acr loa level','openid-connect','oidc-acr-mapper',NULL,'21c9b10b-53d0-4159-99d3-14639af744a1'),('75a52506-1537-4280-910d-0680d1c34582','full name','openid-connect','oidc-full-name-mapper',NULL,'d4770b82-2205-40df-ada3-efed9a79eead'),('781f5c56-e965-46bd-80ce-a6379cd31f86','username','openid-connect','oidc-usermodel-property-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('78c24473-c601-4db6-accf-8cf8010b90df','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d4770b82-2205-40df-ada3-efed9a79eead'),('7938b878-6047-4ced-bb0a-f30447b4de8a','audience resolve','openid-connect','oidc-audience-resolve-mapper','a4bcf244-3008-4b91-8d93-911f7a843e7f',NULL),('7f53a497-0fdf-456a-95b4-44403b0b9bee','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('8344635d-dcea-4221-89c7-90372ded6597','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'b4049566-b59c-4c79-b942-9dbc5765529f'),('83705435-0495-4bb2-bf44-128145c37131','auth_time','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'431652d9-52c9-4cba-8cff-0cb5f3f40ae0'),('85f4a599-452e-42fe-9f80-fb341c3c8dce','email','openid-connect','oidc-usermodel-property-mapper',NULL,'7ed094c6-bc32-4e25-9c39-8f813774c177'),('8bac58ea-e65f-4e34-9102-aeb70e1b9b29','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('8be77933-66ac-41f5-8cd7-9a9fe698df62','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('8c64b80c-643c-4464-a758-e554ebfbfb22','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('8dcdb0c2-efc7-4932-90ee-308e6e24021f','given name','openid-connect','oidc-usermodel-property-mapper','c0a41b9a-c749-41b3-8d6d-308d6d945245',NULL),('8e72fd50-95b8-4079-bbbc-6ab6fe11294e','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('8e89271f-6ab0-4e6c-a4b9-3d1e4a4f256b','email','openid-connect','oidc-usermodel-property-mapper','0335247d-0834-41b2-a5c1-7e0c321b9968',NULL),('8fef0f5e-505e-4082-b0dc-98cc05495cd5','auth_time','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'919cf26f-4749-4194-bafb-cc97e2869eb6'),('91139c12-5971-44fe-8e41-e4ef630f8c68','email','openid-connect','oidc-usermodel-property-mapper','c0a41b9a-c749-41b3-8d6d-308d6d945245',NULL),('91400800-1632-43c0-93e7-4fea64563b45','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('96f8d008-a4f5-41cc-8223-8f1660a49646','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'1d82bc89-0f68-4510-971d-208d3b2d9a13'),('998783e4-be3c-4504-a9d8-9ea7ac6275f3','username','openid-connect','oidc-usermodel-property-mapper',NULL,'d4770b82-2205-40df-ada3-efed9a79eead'),('9c0a91c5-334a-4af4-ab1c-2272b6641390','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('9d9d6a90-dddd-425f-a1f1-f3b316252bc3','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'64321cde-4a9c-4074-9a8d-22ecc9d73420'),('9dd654d1-56c0-427d-9834-af408287516c','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'378d0484-a971-478b-931f-f1e276570eb1'),('a24bd95b-c6de-4c1c-82e3-e76457184a6f','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'64321cde-4a9c-4074-9a8d-22ecc9d73420'),('a709d35d-8b58-4651-9c52-c085d06940ac','acr loa level','openid-connect','oidc-acr-mapper',NULL,'e2252e6b-52b1-4a00-bb14-7ae9786fe176'),('a72c5e64-cfea-485f-9a6b-91e8fa016bad','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('af86814a-168c-497e-af5e-31227f8cdfd9','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('b3cec881-0280-44ff-a0ba-2fe227a38ca9','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('b576cac8-3077-481c-81b5-1b2df2855caf','full name','openid-connect','oidc-full-name-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('b7c93f8d-6f33-467d-95cd-0e9f31809608','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('bb17289a-61dc-46fd-b794-8ac2abd3a1b2','role list','saml','saml-role-list-mapper',NULL,'5c90e0b5-9ea0-445e-ba41-774564be8f4c'),('be6a6ea8-06ef-4f2a-8f0a-389c7f5200e0','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'7842b7cc-8938-4358-b24a-197c4666b43e'),('bf5a1917-90bc-4961-bca8-4f9e677d03a0','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'bc65e701-b843-4a2e-a9d4-c86541c8a256'),('c318fd76-2254-42e6-9807-3ea8b83a8fd5','gender','openid-connect','oidc-usermodel-attribute-mapper','0335247d-0834-41b2-a5c1-7e0c321b9968',NULL),('c4e129c2-d8c4-4995-8609-9193dc7108df','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'ea9e2be9-a4e9-4ddc-9e65-2edce442510a'),('c6a0df1d-b7aa-4d6d-810f-ffe831107fd4','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'7ed094c6-bc32-4e25-9c39-8f813774c177'),('cc598a29-7eef-47e1-b1ff-21869ddd8961','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'7842b7cc-8938-4358-b24a-197c4666b43e'),('cd23416a-a9a3-4c82-a2e0-5fc1504f6e3e','full name','openid-connect','oidc-full-name-mapper','0335247d-0834-41b2-a5c1-7e0c321b9968',NULL),('d145dba0-bc0c-4be2-9280-b0d7a08e7364','locale','openid-connect','oidc-usermodel-attribute-mapper','b741f744-8388-4233-9edc-c9f2ed49016e',NULL),('dfc488e2-f024-4206-9c9e-ada7fc79216d','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d4770b82-2205-40df-ada3-efed9a79eead'),('dff74c0c-c72c-4693-a716-385a798b4fa4','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a50b6ddc-30bf-4a9f-840d-2d77d10def51'),('e3a89cd3-4c64-4b93-ae9f-196b9cbcc359','role list','saml','saml-role-list-mapper',NULL,'977ca7f0-0277-46c9-b59d-efdfc40aee49'),('e57387bc-d6f3-4b54-8649-26b720f64ada','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d4770b82-2205-40df-ada3-efed9a79eead'),('e75a5684-606e-4b6f-bd69-c880a25f4a9d','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'b4049566-b59c-4c79-b942-9dbc5765529f'),('e7ca9bd8-c6fe-431e-94da-4fd05ba73a99','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e1f4cb60-dcce-45ed-b471-d90ecf39e161'),('e874463e-b682-436b-a0ca-4054d150aeb1','acr loa level','openid-connect','oidc-acr-mapper',NULL,'068b2b23-1ee1-451b-b0b4-c943279e6945'),('ede84eb6-2214-4196-b162-e92b44617b97','address','openid-connect','oidc-address-mapper',NULL,'7861a8ec-2cea-412a-8238-d7719c2d6d5d'),('efe88da1-54d5-4b6d-845c-7a07c151aa79','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d4770b82-2205-40df-ada3-efed9a79eead'),('f28ed4a9-cbcd-4098-949b-95d7371828fa','sub','openid-connect','oidc-sub-mapper',NULL,'431652d9-52c9-4cba-8cff-0cb5f3f40ae0'),('f43f0d14-3ef3-4ed5-a5ce-ebd3a029bcbf','full name','openid-connect','oidc-full-name-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('f7bddfcc-14e3-44ea-90e6-396930fe6321','family name','openid-connect','oidc-usermodel-property-mapper','0335247d-0834-41b2-a5c1-7e0c321b9968',NULL),('f9c011fa-c722-440e-9318-295b3f1b7ee0','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('fa2cf5a6-3823-4a32-a6be-d5fcdd03e428','audience resolve','openid-connect','oidc-audience-resolve-mapper','fba13307-1a64-4cf2-8b28-462d71ce1a0a',NULL),('fbcf1aed-a455-4aad-8f69-ed09d1bf1c0b','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d4770b82-2205-40df-ada3-efed9a79eead'),('fc12e386-4bc0-456e-8517-daeea31d0a07','username','openid-connect','oidc-usermodel-property-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('fc1c76e9-aed0-4192-8088-2874eb055388','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('fda8b03c-2b0c-4509-b6f2-7a89adf52923','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('fea85620-0537-47bf-ba77-650ee15ec08d','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a50b6ddc-30bf-4a9f-840d-2d77d10def51'),('ffc31944-3798-4a33-9ab9-65e80931b6ad','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROTOCOL_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROTOCOL_MAPPER_CONFIG` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`PROTOCOL_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_PMCONFIG` FOREIGN KEY (`PROTOCOL_MAPPER_ID`) REFERENCES `PROTOCOL_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('01aedc60-1012-4181-872b-1e794d5f68ed','true','access.token.claim'),('01aedc60-1012-4181-872b-1e794d5f68ed','auth_time','claim.name'),('01aedc60-1012-4181-872b-1e794d5f68ed','true','id.token.claim'),('01aedc60-1012-4181-872b-1e794d5f68ed','true','introspection.token.claim'),('01aedc60-1012-4181-872b-1e794d5f68ed','long','jsonType.label'),('01aedc60-1012-4181-872b-1e794d5f68ed','AUTH_TIME','user.session.note'),('0471e634-07ee-435e-85a7-63b714119f33','true','access.token.claim'),('0471e634-07ee-435e-85a7-63b714119f33','email','claim.name'),('0471e634-07ee-435e-85a7-63b714119f33','true','id.token.claim'),('0471e634-07ee-435e-85a7-63b714119f33','String','jsonType.label'),('0471e634-07ee-435e-85a7-63b714119f33','email','user.attribute'),('0471e634-07ee-435e-85a7-63b714119f33','true','userinfo.token.claim'),('0b167ded-5d7b-41f6-8dfc-6efa7688d95a','true','access.token.claim'),('0b167ded-5d7b-41f6-8dfc-6efa7688d95a','resource_access.${client_id}.roles','claim.name'),('0b167ded-5d7b-41f6-8dfc-6efa7688d95a','String','jsonType.label'),('0b167ded-5d7b-41f6-8dfc-6efa7688d95a','true','multivalued'),('0b167ded-5d7b-41f6-8dfc-6efa7688d95a','foo','user.attribute'),('0ee9a6c0-486b-4fa3-920e-5efd5491c9b6','true','access.token.claim'),('0ee9a6c0-486b-4fa3-920e-5efd5491c9b6','birthdate','claim.name'),('0ee9a6c0-486b-4fa3-920e-5efd5491c9b6','true','id.token.claim'),('0ee9a6c0-486b-4fa3-920e-5efd5491c9b6','String','jsonType.label'),('0ee9a6c0-486b-4fa3-920e-5efd5491c9b6','birthdate','user.attribute'),('0ee9a6c0-486b-4fa3-920e-5efd5491c9b6','true','userinfo.token.claim'),('13c88814-a351-4860-bf6b-e4b493c6cf45','true','access.token.claim'),('13c88814-a351-4860-bf6b-e4b493c6cf45','gender','claim.name'),('13c88814-a351-4860-bf6b-e4b493c6cf45','true','id.token.claim'),('13c88814-a351-4860-bf6b-e4b493c6cf45','String','jsonType.label'),('13c88814-a351-4860-bf6b-e4b493c6cf45','gender','user.attribute'),('13c88814-a351-4860-bf6b-e4b493c6cf45','true','userinfo.token.claim'),('192e183f-b251-46bd-a0fd-457d8efd5844','true','access.token.claim'),('192e183f-b251-46bd-a0fd-457d8efd5844','nickname','claim.name'),('192e183f-b251-46bd-a0fd-457d8efd5844','true','id.token.claim'),('192e183f-b251-46bd-a0fd-457d8efd5844','String','jsonType.label'),('192e183f-b251-46bd-a0fd-457d8efd5844','nickname','user.attribute'),('192e183f-b251-46bd-a0fd-457d8efd5844','true','userinfo.token.claim'),('1a770b55-615f-43e4-8e31-9583f1e49387','true','access.token.claim'),('1a770b55-615f-43e4-8e31-9583f1e49387','locale','claim.name'),('1a770b55-615f-43e4-8e31-9583f1e49387','true','id.token.claim'),('1a770b55-615f-43e4-8e31-9583f1e49387','String','jsonType.label'),('1a770b55-615f-43e4-8e31-9583f1e49387','locale','user.attribute'),('1a770b55-615f-43e4-8e31-9583f1e49387','true','userinfo.token.claim'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','true','access.token.claim'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','true','id.token.claim'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','country','user.attribute.country'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','formatted','user.attribute.formatted'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','locality','user.attribute.locality'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','postal_code','user.attribute.postal_code'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','region','user.attribute.region'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','street','user.attribute.street'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','true','userinfo.token.claim'),('1c2ed15f-0a20-4c78-af03-fb0eeba38be5','true','access.token.claim'),('1c2ed15f-0a20-4c78-af03-fb0eeba38be5','true','introspection.token.claim'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','true','access.token.claim'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','groups','claim.name'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','true','id.token.claim'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','String','jsonType.label'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','true','multivalued'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','foo','user.attribute'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','true','userinfo.token.claim'),('22d3c2e2-d55a-4488-be0b-9a79080c4563','true','access.token.claim'),('22d3c2e2-d55a-4488-be0b-9a79080c4563','family_name','claim.name'),('22d3c2e2-d55a-4488-be0b-9a79080c4563','true','id.token.claim'),('22d3c2e2-d55a-4488-be0b-9a79080c4563','String','jsonType.label'),('22d3c2e2-d55a-4488-be0b-9a79080c4563','lastName','user.attribute'),('22d3c2e2-d55a-4488-be0b-9a79080c4563','true','userinfo.token.claim'),('24ead1b6-89b3-4000-bbd4-41f318f0123b','true','access.token.claim'),('24ead1b6-89b3-4000-bbd4-41f318f0123b','resource_access.${client_id}.roles','claim.name'),('24ead1b6-89b3-4000-bbd4-41f318f0123b','String','jsonType.label'),('24ead1b6-89b3-4000-bbd4-41f318f0123b','true','multivalued'),('24ead1b6-89b3-4000-bbd4-41f318f0123b','foo','user.attribute'),('2663b40c-930d-4df8-b597-5ad69b55af05','true','access.token.claim'),('2663b40c-930d-4df8-b597-5ad69b55af05','resource_access.${client_id}.roles','claim.name'),('2663b40c-930d-4df8-b597-5ad69b55af05','String','jsonType.label'),('2663b40c-930d-4df8-b597-5ad69b55af05','true','multivalued'),('2663b40c-930d-4df8-b597-5ad69b55af05','foo','user.attribute'),('2a3af7c2-f838-499a-bfef-3a8b65c13008','true','access.token.claim'),('2a3af7c2-f838-499a-bfef-3a8b65c13008','website','claim.name'),('2a3af7c2-f838-499a-bfef-3a8b65c13008','true','id.token.claim'),('2a3af7c2-f838-499a-bfef-3a8b65c13008','String','jsonType.label'),('2a3af7c2-f838-499a-bfef-3a8b65c13008','website','user.attribute'),('2a3af7c2-f838-499a-bfef-3a8b65c13008','true','userinfo.token.claim'),('2f0fd937-c369-4c83-a28d-ed2db85fec27','true','access.token.claim'),('2f0fd937-c369-4c83-a28d-ed2db85fec27','picture','claim.name'),('2f0fd937-c369-4c83-a28d-ed2db85fec27','true','id.token.claim'),('2f0fd937-c369-4c83-a28d-ed2db85fec27','String','jsonType.label'),('2f0fd937-c369-4c83-a28d-ed2db85fec27','picture','user.attribute'),('2f0fd937-c369-4c83-a28d-ed2db85fec27','true','userinfo.token.claim'),('35856b58-918c-4f0e-ad2a-857ca1f9c628','true','access.token.claim'),('35856b58-918c-4f0e-ad2a-857ca1f9c628','locale','claim.name'),('35856b58-918c-4f0e-ad2a-857ca1f9c628','true','id.token.claim'),('35856b58-918c-4f0e-ad2a-857ca1f9c628','String','jsonType.label'),('35856b58-918c-4f0e-ad2a-857ca1f9c628','locale','user.attribute'),('35856b58-918c-4f0e-ad2a-857ca1f9c628','true','userinfo.token.claim'),('37912ad8-6328-4801-8ba4-f27c82a08ad4','true','access.token.claim'),('37912ad8-6328-4801-8ba4-f27c82a08ad4','preferred_username','claim.name'),('37912ad8-6328-4801-8ba4-f27c82a08ad4','true','id.token.claim'),('37912ad8-6328-4801-8ba4-f27c82a08ad4','String','jsonType.label'),('37912ad8-6328-4801-8ba4-f27c82a08ad4','username','user.attribute'),('37912ad8-6328-4801-8ba4-f27c82a08ad4','true','userinfo.token.claim'),('3eb1c8d0-ae24-4028-aa57-fc9cd5195697','true','access.token.claim'),('3eb1c8d0-ae24-4028-aa57-fc9cd5195697','true','id.token.claim'),('3eb1c8d0-ae24-4028-aa57-fc9cd5195697','true','userinfo.token.claim'),('4039b4ad-6b4c-4b30-82db-8e905025c2e9','true','access.token.claim'),('4039b4ad-6b4c-4b30-82db-8e905025c2e9','locale','claim.name'),('4039b4ad-6b4c-4b30-82db-8e905025c2e9','true','id.token.claim'),('4039b4ad-6b4c-4b30-82db-8e905025c2e9','String','jsonType.label'),('4039b4ad-6b4c-4b30-82db-8e905025c2e9','locale','user.attribute'),('4039b4ad-6b4c-4b30-82db-8e905025c2e9','true','userinfo.token.claim'),('44c23e7e-2168-4844-975c-4215feff404b','true','access.token.claim'),('44c23e7e-2168-4844-975c-4215feff404b','given_name','claim.name'),('44c23e7e-2168-4844-975c-4215feff404b','true','id.token.claim'),('44c23e7e-2168-4844-975c-4215feff404b','String','jsonType.label'),('44c23e7e-2168-4844-975c-4215feff404b','firstName','user.attribute'),('44c23e7e-2168-4844-975c-4215feff404b','true','userinfo.token.claim'),('45416685-edd5-43ef-bea8-f35275560400','true','access.token.claim'),('45416685-edd5-43ef-bea8-f35275560400','realm_access.roles','claim.name'),('45416685-edd5-43ef-bea8-f35275560400','String','jsonType.label'),('45416685-edd5-43ef-bea8-f35275560400','true','multivalued'),('45416685-edd5-43ef-bea8-f35275560400','foo','user.attribute'),('45baee06-a7e5-4e01-8fa0-0a87f3d5bc14','true','access.token.claim'),('45baee06-a7e5-4e01-8fa0-0a87f3d5bc14','family_name','claim.name'),('45baee06-a7e5-4e01-8fa0-0a87f3d5bc14','true','id.token.claim'),('45baee06-a7e5-4e01-8fa0-0a87f3d5bc14','String','jsonType.label'),('45baee06-a7e5-4e01-8fa0-0a87f3d5bc14','lastName','user.attribute'),('45baee06-a7e5-4e01-8fa0-0a87f3d5bc14','true','userinfo.token.claim'),('4b02f55b-3e15-4620-9d7d-98b1662e4b31','true','access.token.claim'),('4b02f55b-3e15-4620-9d7d-98b1662e4b31','phone_number','claim.name'),('4b02f55b-3e15-4620-9d7d-98b1662e4b31','true','id.token.claim'),('4b02f55b-3e15-4620-9d7d-98b1662e4b31','String','jsonType.label'),('4b02f55b-3e15-4620-9d7d-98b1662e4b31','phoneNumber','user.attribute'),('4b02f55b-3e15-4620-9d7d-98b1662e4b31','true','userinfo.token.claim'),('4d86bcab-14ca-494c-a5ed-8ab148c69b0e','true','access.token.claim'),('4d86bcab-14ca-494c-a5ed-8ab148c69b0e','email','claim.name'),('4d86bcab-14ca-494c-a5ed-8ab148c69b0e','true','id.token.claim'),('4d86bcab-14ca-494c-a5ed-8ab148c69b0e','String','jsonType.label'),('4d86bcab-14ca-494c-a5ed-8ab148c69b0e','email','user.attribute'),('4d86bcab-14ca-494c-a5ed-8ab148c69b0e','true','userinfo.token.claim'),('4e6fd447-9577-472a-ac5a-f9538b7af349','true','access.token.claim'),('4e6fd447-9577-472a-ac5a-f9538b7af349','nickname','claim.name'),('4e6fd447-9577-472a-ac5a-f9538b7af349','true','id.token.claim'),('4e6fd447-9577-472a-ac5a-f9538b7af349','String','jsonType.label'),('4e6fd447-9577-472a-ac5a-f9538b7af349','nickname','user.attribute'),('4e6fd447-9577-472a-ac5a-f9538b7af349','true','userinfo.token.claim'),('4fe291c7-8177-4e2e-8195-8717c07f8998','Role','attribute.name'),('4fe291c7-8177-4e2e-8195-8717c07f8998','Basic','attribute.nameformat'),('4fe291c7-8177-4e2e-8195-8717c07f8998','false','single'),('55866865-c699-4f7b-84e8-b485bee678a8','true','access.token.claim'),('55866865-c699-4f7b-84e8-b485bee678a8','true','id.token.claim'),('55866865-c699-4f7b-84e8-b485bee678a8','country','user.attribute.country'),('55866865-c699-4f7b-84e8-b485bee678a8','formatted','user.attribute.formatted'),('55866865-c699-4f7b-84e8-b485bee678a8','locality','user.attribute.locality'),('55866865-c699-4f7b-84e8-b485bee678a8','postal_code','user.attribute.postal_code'),('55866865-c699-4f7b-84e8-b485bee678a8','region','user.attribute.region'),('55866865-c699-4f7b-84e8-b485bee678a8','street','user.attribute.street'),('55866865-c699-4f7b-84e8-b485bee678a8','true','userinfo.token.claim'),('55a8b252-353b-4d07-8381-1cef3ef39820','true','access.token.claim'),('55a8b252-353b-4d07-8381-1cef3ef39820','website','claim.name'),('55a8b252-353b-4d07-8381-1cef3ef39820','true','id.token.claim'),('55a8b252-353b-4d07-8381-1cef3ef39820','String','jsonType.label'),('55a8b252-353b-4d07-8381-1cef3ef39820','website','user.attribute'),('55a8b252-353b-4d07-8381-1cef3ef39820','true','userinfo.token.claim'),('5641de45-7888-4dda-9c62-1c50e7dc0a2f','true','access.token.claim'),('5641de45-7888-4dda-9c62-1c50e7dc0a2f','email_verified','claim.name'),('5641de45-7888-4dda-9c62-1c50e7dc0a2f','true','id.token.claim'),('5641de45-7888-4dda-9c62-1c50e7dc0a2f','boolean','jsonType.label'),('5641de45-7888-4dda-9c62-1c50e7dc0a2f','emailVerified','user.attribute'),('5641de45-7888-4dda-9c62-1c50e7dc0a2f','true','userinfo.token.claim'),('5885c0c1-5c9f-4c69-92e7-7c4f71b7ee40','true','access.token.claim'),('5885c0c1-5c9f-4c69-92e7-7c4f71b7ee40','middle_name','claim.name'),('5885c0c1-5c9f-4c69-92e7-7c4f71b7ee40','true','id.token.claim'),('5885c0c1-5c9f-4c69-92e7-7c4f71b7ee40','String','jsonType.label'),('5885c0c1-5c9f-4c69-92e7-7c4f71b7ee40','middleName','user.attribute'),('5885c0c1-5c9f-4c69-92e7-7c4f71b7ee40','true','userinfo.token.claim'),('5ddaf547-bd13-418f-945b-f53167e12c85','true','access.token.claim'),('5ddaf547-bd13-418f-945b-f53167e12c85','zoneinfo','claim.name'),('5ddaf547-bd13-418f-945b-f53167e12c85','true','id.token.claim'),('5ddaf547-bd13-418f-945b-f53167e12c85','String','jsonType.label'),('5ddaf547-bd13-418f-945b-f53167e12c85','zoneinfo','user.attribute'),('5ddaf547-bd13-418f-945b-f53167e12c85','true','userinfo.token.claim'),('5f840f56-a1c8-47b2-aef1-5927a51c22c5','true','access.token.claim'),('5f840f56-a1c8-47b2-aef1-5927a51c22c5','gender','claim.name'),('5f840f56-a1c8-47b2-aef1-5927a51c22c5','true','id.token.claim'),('5f840f56-a1c8-47b2-aef1-5927a51c22c5','String','jsonType.label'),('5f840f56-a1c8-47b2-aef1-5927a51c22c5','gender','user.attribute'),('5f840f56-a1c8-47b2-aef1-5927a51c22c5','true','userinfo.token.claim'),('63b08ee3-0d17-4800-98f4-7c142209cd66','true','access.token.claim'),('63b08ee3-0d17-4800-98f4-7c142209cd66','given_name','claim.name'),('63b08ee3-0d17-4800-98f4-7c142209cd66','true','id.token.claim'),('63b08ee3-0d17-4800-98f4-7c142209cd66','String','jsonType.label'),('63b08ee3-0d17-4800-98f4-7c142209cd66','firstName','user.attribute'),('63b08ee3-0d17-4800-98f4-7c142209cd66','true','userinfo.token.claim'),('66e79ead-0b0f-4180-9f22-6e0422c7e228','true','access.token.claim'),('66e79ead-0b0f-4180-9f22-6e0422c7e228','true','introspection.token.claim'),('6784ec02-e6aa-4156-9d1e-553548772b85','true','access.token.claim'),('6784ec02-e6aa-4156-9d1e-553548772b85','middle_name','claim.name'),('6784ec02-e6aa-4156-9d1e-553548772b85','true','id.token.claim'),('6784ec02-e6aa-4156-9d1e-553548772b85','String','jsonType.label'),('6784ec02-e6aa-4156-9d1e-553548772b85','middleName','user.attribute'),('6784ec02-e6aa-4156-9d1e-553548772b85','true','userinfo.token.claim'),('6d0a207a-6d7a-4266-8eb8-69b7102431d4','true','access.token.claim'),('6d0a207a-6d7a-4266-8eb8-69b7102431d4','preferred_username','claim.name'),('6d0a207a-6d7a-4266-8eb8-69b7102431d4','true','id.token.claim'),('6d0a207a-6d7a-4266-8eb8-69b7102431d4','String','jsonType.label'),('6d0a207a-6d7a-4266-8eb8-69b7102431d4','username','user.attribute'),('6d0a207a-6d7a-4266-8eb8-69b7102431d4','true','userinfo.token.claim'),('6e6307bd-00d1-4b28-bb48-fce1e42694c6','true','access.token.claim'),('6e6307bd-00d1-4b28-bb48-fce1e42694c6','picture','claim.name'),('6e6307bd-00d1-4b28-bb48-fce1e42694c6','true','id.token.claim'),('6e6307bd-00d1-4b28-bb48-fce1e42694c6','String','jsonType.label'),('6e6307bd-00d1-4b28-bb48-fce1e42694c6','picture','user.attribute'),('6e6307bd-00d1-4b28-bb48-fce1e42694c6','true','userinfo.token.claim'),('724941de-1b53-40f6-8258-6e707c2bb9c6','true','access.token.claim'),('724941de-1b53-40f6-8258-6e707c2bb9c6','upn','claim.name'),('724941de-1b53-40f6-8258-6e707c2bb9c6','true','id.token.claim'),('724941de-1b53-40f6-8258-6e707c2bb9c6','String','jsonType.label'),('724941de-1b53-40f6-8258-6e707c2bb9c6','username','user.attribute'),('724941de-1b53-40f6-8258-6e707c2bb9c6','true','userinfo.token.claim'),('7423e743-dea7-43d8-9ec6-8fc1d2d26939','true','access.token.claim'),('7423e743-dea7-43d8-9ec6-8fc1d2d26939','locale','claim.name'),('7423e743-dea7-43d8-9ec6-8fc1d2d26939','true','id.token.claim'),('7423e743-dea7-43d8-9ec6-8fc1d2d26939','String','jsonType.label'),('7423e743-dea7-43d8-9ec6-8fc1d2d26939','locale','user.attribute'),('7423e743-dea7-43d8-9ec6-8fc1d2d26939','true','userinfo.token.claim'),('743c5478-f716-422c-833b-55361df4a31f','true','access.token.claim'),('743c5478-f716-422c-833b-55361df4a31f','updated_at','claim.name'),('743c5478-f716-422c-833b-55361df4a31f','true','id.token.claim'),('743c5478-f716-422c-833b-55361df4a31f','String','jsonType.label'),('743c5478-f716-422c-833b-55361df4a31f','updatedAt','user.attribute'),('743c5478-f716-422c-833b-55361df4a31f','true','userinfo.token.claim'),('74eaeb74-0f13-41a0-bdff-a7e538849939','true','access.token.claim'),('74eaeb74-0f13-41a0-bdff-a7e538849939','email_verified','claim.name'),('74eaeb74-0f13-41a0-bdff-a7e538849939','true','id.token.claim'),('74eaeb74-0f13-41a0-bdff-a7e538849939','boolean','jsonType.label'),('74eaeb74-0f13-41a0-bdff-a7e538849939','emailVerified','user.attribute'),('74eaeb74-0f13-41a0-bdff-a7e538849939','true','userinfo.token.claim'),('759775cd-4cec-4c74-8655-56efa41f2acb','true','access.token.claim'),('759775cd-4cec-4c74-8655-56efa41f2acb','true','id.token.claim'),('75a52506-1537-4280-910d-0680d1c34582','true','access.token.claim'),('75a52506-1537-4280-910d-0680d1c34582','true','id.token.claim'),('75a52506-1537-4280-910d-0680d1c34582','true','userinfo.token.claim'),('781f5c56-e965-46bd-80ce-a6379cd31f86','true','access.token.claim'),('781f5c56-e965-46bd-80ce-a6379cd31f86','preferred_username','claim.name'),('781f5c56-e965-46bd-80ce-a6379cd31f86','true','id.token.claim'),('781f5c56-e965-46bd-80ce-a6379cd31f86','String','jsonType.label'),('781f5c56-e965-46bd-80ce-a6379cd31f86','username','user.attribute'),('781f5c56-e965-46bd-80ce-a6379cd31f86','true','userinfo.token.claim'),('78c24473-c601-4db6-accf-8cf8010b90df','true','access.token.claim'),('78c24473-c601-4db6-accf-8cf8010b90df','website','claim.name'),('78c24473-c601-4db6-accf-8cf8010b90df','true','id.token.claim'),('78c24473-c601-4db6-accf-8cf8010b90df','String','jsonType.label'),('78c24473-c601-4db6-accf-8cf8010b90df','website','user.attribute'),('78c24473-c601-4db6-accf-8cf8010b90df','true','userinfo.token.claim'),('7f53a497-0fdf-456a-95b4-44403b0b9bee','true','access.token.claim'),('7f53a497-0fdf-456a-95b4-44403b0b9bee','birthdate','claim.name'),('7f53a497-0fdf-456a-95b4-44403b0b9bee','true','id.token.claim'),('7f53a497-0fdf-456a-95b4-44403b0b9bee','String','jsonType.label'),('7f53a497-0fdf-456a-95b4-44403b0b9bee','birthdate','user.attribute'),('7f53a497-0fdf-456a-95b4-44403b0b9bee','true','userinfo.token.claim'),('83705435-0495-4bb2-bf44-128145c37131','true','access.token.claim'),('83705435-0495-4bb2-bf44-128145c37131','auth_time','claim.name'),('83705435-0495-4bb2-bf44-128145c37131','true','id.token.claim'),('83705435-0495-4bb2-bf44-128145c37131','true','introspection.token.claim'),('83705435-0495-4bb2-bf44-128145c37131','long','jsonType.label'),('83705435-0495-4bb2-bf44-128145c37131','AUTH_TIME','user.session.note'),('85f4a599-452e-42fe-9f80-fb341c3c8dce','true','access.token.claim'),('85f4a599-452e-42fe-9f80-fb341c3c8dce','email','claim.name'),('85f4a599-452e-42fe-9f80-fb341c3c8dce','true','id.token.claim'),('85f4a599-452e-42fe-9f80-fb341c3c8dce','String','jsonType.label'),('85f4a599-452e-42fe-9f80-fb341c3c8dce','email','user.attribute'),('85f4a599-452e-42fe-9f80-fb341c3c8dce','true','userinfo.token.claim'),('8bac58ea-e65f-4e34-9102-aeb70e1b9b29','true','access.token.claim'),('8bac58ea-e65f-4e34-9102-aeb70e1b9b29','family_name','claim.name'),('8bac58ea-e65f-4e34-9102-aeb70e1b9b29','true','id.token.claim'),('8bac58ea-e65f-4e34-9102-aeb70e1b9b29','String','jsonType.label'),('8bac58ea-e65f-4e34-9102-aeb70e1b9b29','lastName','user.attribute'),('8bac58ea-e65f-4e34-9102-aeb70e1b9b29','true','userinfo.token.claim'),('8be77933-66ac-41f5-8cd7-9a9fe698df62','true','access.token.claim'),('8be77933-66ac-41f5-8cd7-9a9fe698df62','family_name','claim.name'),('8be77933-66ac-41f5-8cd7-9a9fe698df62','true','id.token.claim'),('8be77933-66ac-41f5-8cd7-9a9fe698df62','String','jsonType.label'),('8be77933-66ac-41f5-8cd7-9a9fe698df62','lastName','user.attribute'),('8be77933-66ac-41f5-8cd7-9a9fe698df62','true','userinfo.token.claim'),('8c64b80c-643c-4464-a758-e554ebfbfb22','true','access.token.claim'),('8c64b80c-643c-4464-a758-e554ebfbfb22','birthdate','claim.name'),('8c64b80c-643c-4464-a758-e554ebfbfb22','true','id.token.claim'),('8c64b80c-643c-4464-a758-e554ebfbfb22','String','jsonType.label'),('8c64b80c-643c-4464-a758-e554ebfbfb22','birthdate','user.attribute'),('8c64b80c-643c-4464-a758-e554ebfbfb22','true','userinfo.token.claim'),('8dcdb0c2-efc7-4932-90ee-308e6e24021f','true','access.token.claim'),('8dcdb0c2-efc7-4932-90ee-308e6e24021f','given_name','claim.name'),('8dcdb0c2-efc7-4932-90ee-308e6e24021f','true','id.token.claim'),('8dcdb0c2-efc7-4932-90ee-308e6e24021f','String','jsonType.label'),('8dcdb0c2-efc7-4932-90ee-308e6e24021f','firstName','user.attribute'),('8dcdb0c2-efc7-4932-90ee-308e6e24021f','true','userinfo.token.claim'),('8e72fd50-95b8-4079-bbbc-6ab6fe11294e','true','access.token.claim'),('8e72fd50-95b8-4079-bbbc-6ab6fe11294e','gender','claim.name'),('8e72fd50-95b8-4079-bbbc-6ab6fe11294e','true','id.token.claim'),('8e72fd50-95b8-4079-bbbc-6ab6fe11294e','String','jsonType.label'),('8e72fd50-95b8-4079-bbbc-6ab6fe11294e','gender','user.attribute'),('8e72fd50-95b8-4079-bbbc-6ab6fe11294e','true','userinfo.token.claim'),('8e89271f-6ab0-4e6c-a4b9-3d1e4a4f256b','true','access.token.claim'),('8e89271f-6ab0-4e6c-a4b9-3d1e4a4f256b','email','claim.name'),('8e89271f-6ab0-4e6c-a4b9-3d1e4a4f256b','true','id.token.claim'),('8e89271f-6ab0-4e6c-a4b9-3d1e4a4f256b','email','user.attribute'),('8e89271f-6ab0-4e6c-a4b9-3d1e4a4f256b','true','userinfo.token.claim'),('8fef0f5e-505e-4082-b0dc-98cc05495cd5','true','access.token.claim'),('8fef0f5e-505e-4082-b0dc-98cc05495cd5','auth_time','claim.name'),('8fef0f5e-505e-4082-b0dc-98cc05495cd5','true','id.token.claim'),('8fef0f5e-505e-4082-b0dc-98cc05495cd5','true','introspection.token.claim'),('8fef0f5e-505e-4082-b0dc-98cc05495cd5','long','jsonType.label'),('8fef0f5e-505e-4082-b0dc-98cc05495cd5','AUTH_TIME','user.session.note'),('91139c12-5971-44fe-8e41-e4ef630f8c68','true','access.token.claim'),('91139c12-5971-44fe-8e41-e4ef630f8c68','email','claim.name'),('91139c12-5971-44fe-8e41-e4ef630f8c68','true','id.token.claim'),('91139c12-5971-44fe-8e41-e4ef630f8c68','email','user.attribute'),('91139c12-5971-44fe-8e41-e4ef630f8c68','true','userinfo.token.claim'),('91400800-1632-43c0-93e7-4fea64563b45','true','access.token.claim'),('91400800-1632-43c0-93e7-4fea64563b45','picture','claim.name'),('91400800-1632-43c0-93e7-4fea64563b45','true','id.token.claim'),('91400800-1632-43c0-93e7-4fea64563b45','String','jsonType.label'),('91400800-1632-43c0-93e7-4fea64563b45','picture','user.attribute'),('91400800-1632-43c0-93e7-4fea64563b45','true','userinfo.token.claim'),('96f8d008-a4f5-41cc-8223-8f1660a49646','true','access.token.claim'),('96f8d008-a4f5-41cc-8223-8f1660a49646','upn','claim.name'),('96f8d008-a4f5-41cc-8223-8f1660a49646','true','id.token.claim'),('96f8d008-a4f5-41cc-8223-8f1660a49646','String','jsonType.label'),('96f8d008-a4f5-41cc-8223-8f1660a49646','username','user.attribute'),('96f8d008-a4f5-41cc-8223-8f1660a49646','true','userinfo.token.claim'),('998783e4-be3c-4504-a9d8-9ea7ac6275f3','true','access.token.claim'),('998783e4-be3c-4504-a9d8-9ea7ac6275f3','preferred_username','claim.name'),('998783e4-be3c-4504-a9d8-9ea7ac6275f3','true','id.token.claim'),('998783e4-be3c-4504-a9d8-9ea7ac6275f3','String','jsonType.label'),('998783e4-be3c-4504-a9d8-9ea7ac6275f3','username','user.attribute'),('998783e4-be3c-4504-a9d8-9ea7ac6275f3','true','userinfo.token.claim'),('9c0a91c5-334a-4af4-ab1c-2272b6641390','true','access.token.claim'),('9c0a91c5-334a-4af4-ab1c-2272b6641390','given_name','claim.name'),('9c0a91c5-334a-4af4-ab1c-2272b6641390','true','id.token.claim'),('9c0a91c5-334a-4af4-ab1c-2272b6641390','String','jsonType.label'),('9c0a91c5-334a-4af4-ab1c-2272b6641390','firstName','user.attribute'),('9c0a91c5-334a-4af4-ab1c-2272b6641390','true','userinfo.token.claim'),('9d9d6a90-dddd-425f-a1f1-f3b316252bc3','true','access.token.claim'),('9d9d6a90-dddd-425f-a1f1-f3b316252bc3','phone_number_verified','claim.name'),('9d9d6a90-dddd-425f-a1f1-f3b316252bc3','true','id.token.claim'),('9d9d6a90-dddd-425f-a1f1-f3b316252bc3','boolean','jsonType.label'),('9d9d6a90-dddd-425f-a1f1-f3b316252bc3','phoneNumberVerified','user.attribute'),('9d9d6a90-dddd-425f-a1f1-f3b316252bc3','true','userinfo.token.claim'),('9dd654d1-56c0-427d-9834-af408287516c','true','access.token.claim'),('9dd654d1-56c0-427d-9834-af408287516c','groups','claim.name'),('9dd654d1-56c0-427d-9834-af408287516c','true','id.token.claim'),('9dd654d1-56c0-427d-9834-af408287516c','String','jsonType.label'),('9dd654d1-56c0-427d-9834-af408287516c','true','multivalued'),('9dd654d1-56c0-427d-9834-af408287516c','foo','user.attribute'),('a24bd95b-c6de-4c1c-82e3-e76457184a6f','true','access.token.claim'),('a24bd95b-c6de-4c1c-82e3-e76457184a6f','phone_number','claim.name'),('a24bd95b-c6de-4c1c-82e3-e76457184a6f','true','id.token.claim'),('a24bd95b-c6de-4c1c-82e3-e76457184a6f','String','jsonType.label'),('a24bd95b-c6de-4c1c-82e3-e76457184a6f','phoneNumber','user.attribute'),('a24bd95b-c6de-4c1c-82e3-e76457184a6f','true','userinfo.token.claim'),('a709d35d-8b58-4651-9c52-c085d06940ac','true','access.token.claim'),('a709d35d-8b58-4651-9c52-c085d06940ac','true','id.token.claim'),('a72c5e64-cfea-485f-9a6b-91e8fa016bad','true','access.token.claim'),('a72c5e64-cfea-485f-9a6b-91e8fa016bad','nickname','claim.name'),('a72c5e64-cfea-485f-9a6b-91e8fa016bad','true','id.token.claim'),('a72c5e64-cfea-485f-9a6b-91e8fa016bad','String','jsonType.label'),('a72c5e64-cfea-485f-9a6b-91e8fa016bad','nickname','user.attribute'),('a72c5e64-cfea-485f-9a6b-91e8fa016bad','true','userinfo.token.claim'),('af86814a-168c-497e-af5e-31227f8cdfd9','true','access.token.claim'),('af86814a-168c-497e-af5e-31227f8cdfd9','locale','claim.name'),('af86814a-168c-497e-af5e-31227f8cdfd9','true','id.token.claim'),('af86814a-168c-497e-af5e-31227f8cdfd9','String','jsonType.label'),('af86814a-168c-497e-af5e-31227f8cdfd9','locale','user.attribute'),('af86814a-168c-497e-af5e-31227f8cdfd9','true','userinfo.token.claim'),('b3cec881-0280-44ff-a0ba-2fe227a38ca9','true','access.token.claim'),('b3cec881-0280-44ff-a0ba-2fe227a38ca9','profile','claim.name'),('b3cec881-0280-44ff-a0ba-2fe227a38ca9','true','id.token.claim'),('b3cec881-0280-44ff-a0ba-2fe227a38ca9','String','jsonType.label'),('b3cec881-0280-44ff-a0ba-2fe227a38ca9','profile','user.attribute'),('b3cec881-0280-44ff-a0ba-2fe227a38ca9','true','userinfo.token.claim'),('b576cac8-3077-481c-81b5-1b2df2855caf','true','access.token.claim'),('b576cac8-3077-481c-81b5-1b2df2855caf','true','id.token.claim'),('b576cac8-3077-481c-81b5-1b2df2855caf','true','userinfo.token.claim'),('b7c93f8d-6f33-467d-95cd-0e9f31809608','true','access.token.claim'),('b7c93f8d-6f33-467d-95cd-0e9f31809608','profile','claim.name'),('b7c93f8d-6f33-467d-95cd-0e9f31809608','true','id.token.claim'),('b7c93f8d-6f33-467d-95cd-0e9f31809608','String','jsonType.label'),('b7c93f8d-6f33-467d-95cd-0e9f31809608','profile','user.attribute'),('b7c93f8d-6f33-467d-95cd-0e9f31809608','true','userinfo.token.claim'),('bb17289a-61dc-46fd-b794-8ac2abd3a1b2','Role','attribute.name'),('bb17289a-61dc-46fd-b794-8ac2abd3a1b2','Basic','attribute.nameformat'),('bb17289a-61dc-46fd-b794-8ac2abd3a1b2','false','single'),('be6a6ea8-06ef-4f2a-8f0a-389c7f5200e0','true','access.token.claim'),('be6a6ea8-06ef-4f2a-8f0a-389c7f5200e0','groups','claim.name'),('be6a6ea8-06ef-4f2a-8f0a-389c7f5200e0','true','id.token.claim'),('be6a6ea8-06ef-4f2a-8f0a-389c7f5200e0','String','jsonType.label'),('be6a6ea8-06ef-4f2a-8f0a-389c7f5200e0','true','multivalued'),('be6a6ea8-06ef-4f2a-8f0a-389c7f5200e0','foo','user.attribute'),('c318fd76-2254-42e6-9807-3ea8b83a8fd5','true','access.token.claim'),('c318fd76-2254-42e6-9807-3ea8b83a8fd5','gender','claim.name'),('c318fd76-2254-42e6-9807-3ea8b83a8fd5','true','id.token.claim'),('c318fd76-2254-42e6-9807-3ea8b83a8fd5','String','jsonType.label'),('c318fd76-2254-42e6-9807-3ea8b83a8fd5','gender','user.attribute'),('c318fd76-2254-42e6-9807-3ea8b83a8fd5','true','userinfo.token.claim'),('c4e129c2-d8c4-4995-8609-9193dc7108df','true','access.token.claim'),('c4e129c2-d8c4-4995-8609-9193dc7108df','realm_access.roles','claim.name'),('c4e129c2-d8c4-4995-8609-9193dc7108df','String','jsonType.label'),('c4e129c2-d8c4-4995-8609-9193dc7108df','true','multivalued'),('c4e129c2-d8c4-4995-8609-9193dc7108df','foo','user.attribute'),('c6a0df1d-b7aa-4d6d-810f-ffe831107fd4','true','access.token.claim'),('c6a0df1d-b7aa-4d6d-810f-ffe831107fd4','email_verified','claim.name'),('c6a0df1d-b7aa-4d6d-810f-ffe831107fd4','true','id.token.claim'),('c6a0df1d-b7aa-4d6d-810f-ffe831107fd4','boolean','jsonType.label'),('c6a0df1d-b7aa-4d6d-810f-ffe831107fd4','emailVerified','user.attribute'),('c6a0df1d-b7aa-4d6d-810f-ffe831107fd4','true','userinfo.token.claim'),('cc598a29-7eef-47e1-b1ff-21869ddd8961','true','access.token.claim'),('cc598a29-7eef-47e1-b1ff-21869ddd8961','upn','claim.name'),('cc598a29-7eef-47e1-b1ff-21869ddd8961','true','id.token.claim'),('cc598a29-7eef-47e1-b1ff-21869ddd8961','String','jsonType.label'),('cc598a29-7eef-47e1-b1ff-21869ddd8961','username','user.attribute'),('cc598a29-7eef-47e1-b1ff-21869ddd8961','true','userinfo.token.claim'),('cd23416a-a9a3-4c82-a2e0-5fc1504f6e3e','true','access.token.claim'),('cd23416a-a9a3-4c82-a2e0-5fc1504f6e3e','true','id.token.claim'),('cd23416a-a9a3-4c82-a2e0-5fc1504f6e3e','true','userinfo.token.claim'),('d145dba0-bc0c-4be2-9280-b0d7a08e7364','true','access.token.claim'),('d145dba0-bc0c-4be2-9280-b0d7a08e7364','locale','claim.name'),('d145dba0-bc0c-4be2-9280-b0d7a08e7364','true','id.token.claim'),('d145dba0-bc0c-4be2-9280-b0d7a08e7364','String','jsonType.label'),('d145dba0-bc0c-4be2-9280-b0d7a08e7364','locale','user.attribute'),('d145dba0-bc0c-4be2-9280-b0d7a08e7364','true','userinfo.token.claim'),('dfc488e2-f024-4206-9c9e-ada7fc79216d','true','access.token.claim'),('dfc488e2-f024-4206-9c9e-ada7fc79216d','zoneinfo','claim.name'),('dfc488e2-f024-4206-9c9e-ada7fc79216d','true','id.token.claim'),('dfc488e2-f024-4206-9c9e-ada7fc79216d','String','jsonType.label'),('dfc488e2-f024-4206-9c9e-ada7fc79216d','zoneinfo','user.attribute'),('dfc488e2-f024-4206-9c9e-ada7fc79216d','true','userinfo.token.claim'),('dff74c0c-c72c-4693-a716-385a798b4fa4','true','access.token.claim'),('dff74c0c-c72c-4693-a716-385a798b4fa4','phone_number_verified','claim.name'),('dff74c0c-c72c-4693-a716-385a798b4fa4','true','id.token.claim'),('dff74c0c-c72c-4693-a716-385a798b4fa4','boolean','jsonType.label'),('dff74c0c-c72c-4693-a716-385a798b4fa4','phoneNumberVerified','user.attribute'),('dff74c0c-c72c-4693-a716-385a798b4fa4','true','userinfo.token.claim'),('e3a89cd3-4c64-4b93-ae9f-196b9cbcc359','Role','attribute.name'),('e3a89cd3-4c64-4b93-ae9f-196b9cbcc359','Basic','attribute.nameformat'),('e3a89cd3-4c64-4b93-ae9f-196b9cbcc359','false','single'),('e57387bc-d6f3-4b54-8649-26b720f64ada','true','access.token.claim'),('e57387bc-d6f3-4b54-8649-26b720f64ada','updated_at','claim.name'),('e57387bc-d6f3-4b54-8649-26b720f64ada','true','id.token.claim'),('e57387bc-d6f3-4b54-8649-26b720f64ada','long','jsonType.label'),('e57387bc-d6f3-4b54-8649-26b720f64ada','updatedAt','user.attribute'),('e57387bc-d6f3-4b54-8649-26b720f64ada','true','userinfo.token.claim'),('e75a5684-606e-4b6f-bd69-c880a25f4a9d','true','access.token.claim'),('e75a5684-606e-4b6f-bd69-c880a25f4a9d','realm_access.roles','claim.name'),('e75a5684-606e-4b6f-bd69-c880a25f4a9d','String','jsonType.label'),('e75a5684-606e-4b6f-bd69-c880a25f4a9d','true','multivalued'),('e75a5684-606e-4b6f-bd69-c880a25f4a9d','foo','user.attribute'),('e7ca9bd8-c6fe-431e-94da-4fd05ba73a99','true','access.token.claim'),('e7ca9bd8-c6fe-431e-94da-4fd05ba73a99','phone_number_verified','claim.name'),('e7ca9bd8-c6fe-431e-94da-4fd05ba73a99','true','id.token.claim'),('e7ca9bd8-c6fe-431e-94da-4fd05ba73a99','boolean','jsonType.label'),('e7ca9bd8-c6fe-431e-94da-4fd05ba73a99','phoneNumberVerified','user.attribute'),('e7ca9bd8-c6fe-431e-94da-4fd05ba73a99','true','userinfo.token.claim'),('e874463e-b682-436b-a0ca-4054d150aeb1','true','access.token.claim'),('e874463e-b682-436b-a0ca-4054d150aeb1','true','id.token.claim'),('ede84eb6-2214-4196-b162-e92b44617b97','true','access.token.claim'),('ede84eb6-2214-4196-b162-e92b44617b97','true','id.token.claim'),('ede84eb6-2214-4196-b162-e92b44617b97','country','user.attribute.country'),('ede84eb6-2214-4196-b162-e92b44617b97','formatted','user.attribute.formatted'),('ede84eb6-2214-4196-b162-e92b44617b97','locality','user.attribute.locality'),('ede84eb6-2214-4196-b162-e92b44617b97','postal_code','user.attribute.postal_code'),('ede84eb6-2214-4196-b162-e92b44617b97','region','user.attribute.region'),('ede84eb6-2214-4196-b162-e92b44617b97','street','user.attribute.street'),('ede84eb6-2214-4196-b162-e92b44617b97','true','userinfo.token.claim'),('efe88da1-54d5-4b6d-845c-7a07c151aa79','true','access.token.claim'),('efe88da1-54d5-4b6d-845c-7a07c151aa79','profile','claim.name'),('efe88da1-54d5-4b6d-845c-7a07c151aa79','true','id.token.claim'),('efe88da1-54d5-4b6d-845c-7a07c151aa79','String','jsonType.label'),('efe88da1-54d5-4b6d-845c-7a07c151aa79','profile','user.attribute'),('efe88da1-54d5-4b6d-845c-7a07c151aa79','true','userinfo.token.claim'),('f28ed4a9-cbcd-4098-949b-95d7371828fa','true','access.token.claim'),('f28ed4a9-cbcd-4098-949b-95d7371828fa','true','introspection.token.claim'),('f43f0d14-3ef3-4ed5-a5ce-ebd3a029bcbf','true','access.token.claim'),('f43f0d14-3ef3-4ed5-a5ce-ebd3a029bcbf','true','id.token.claim'),('f43f0d14-3ef3-4ed5-a5ce-ebd3a029bcbf','true','userinfo.token.claim'),('f7bddfcc-14e3-44ea-90e6-396930fe6321','true','access.token.claim'),('f7bddfcc-14e3-44ea-90e6-396930fe6321','family_name','claim.name'),('f7bddfcc-14e3-44ea-90e6-396930fe6321','true','id.token.claim'),('f7bddfcc-14e3-44ea-90e6-396930fe6321','String','jsonType.label'),('f7bddfcc-14e3-44ea-90e6-396930fe6321','lastName','user.attribute'),('f7bddfcc-14e3-44ea-90e6-396930fe6321','true','userinfo.token.claim'),('f9c011fa-c722-440e-9318-295b3f1b7ee0','true','access.token.claim'),('f9c011fa-c722-440e-9318-295b3f1b7ee0','gender','claim.name'),('f9c011fa-c722-440e-9318-295b3f1b7ee0','true','id.token.claim'),('f9c011fa-c722-440e-9318-295b3f1b7ee0','String','jsonType.label'),('f9c011fa-c722-440e-9318-295b3f1b7ee0','gender','user.attribute'),('f9c011fa-c722-440e-9318-295b3f1b7ee0','true','userinfo.token.claim'),('fbcf1aed-a455-4aad-8f69-ed09d1bf1c0b','true','access.token.claim'),('fbcf1aed-a455-4aad-8f69-ed09d1bf1c0b','middle_name','claim.name'),('fbcf1aed-a455-4aad-8f69-ed09d1bf1c0b','true','id.token.claim'),('fbcf1aed-a455-4aad-8f69-ed09d1bf1c0b','String','jsonType.label'),('fbcf1aed-a455-4aad-8f69-ed09d1bf1c0b','middleName','user.attribute'),('fbcf1aed-a455-4aad-8f69-ed09d1bf1c0b','true','userinfo.token.claim'),('fc12e386-4bc0-456e-8517-daeea31d0a07','true','access.token.claim'),('fc12e386-4bc0-456e-8517-daeea31d0a07','preferred_username','claim.name'),('fc12e386-4bc0-456e-8517-daeea31d0a07','true','id.token.claim'),('fc12e386-4bc0-456e-8517-daeea31d0a07','String','jsonType.label'),('fc12e386-4bc0-456e-8517-daeea31d0a07','username','user.attribute'),('fc12e386-4bc0-456e-8517-daeea31d0a07','true','userinfo.token.claim'),('fc1c76e9-aed0-4192-8088-2874eb055388','true','access.token.claim'),('fc1c76e9-aed0-4192-8088-2874eb055388','zoneinfo','claim.name'),('fc1c76e9-aed0-4192-8088-2874eb055388','true','id.token.claim'),('fc1c76e9-aed0-4192-8088-2874eb055388','String','jsonType.label'),('fc1c76e9-aed0-4192-8088-2874eb055388','zoneinfo','user.attribute'),('fc1c76e9-aed0-4192-8088-2874eb055388','true','userinfo.token.claim'),('fda8b03c-2b0c-4509-b6f2-7a89adf52923','true','access.token.claim'),('fda8b03c-2b0c-4509-b6f2-7a89adf52923','given_name','claim.name'),('fda8b03c-2b0c-4509-b6f2-7a89adf52923','true','id.token.claim'),('fda8b03c-2b0c-4509-b6f2-7a89adf52923','String','jsonType.label'),('fda8b03c-2b0c-4509-b6f2-7a89adf52923','firstName','user.attribute'),('fda8b03c-2b0c-4509-b6f2-7a89adf52923','true','userinfo.token.claim'),('fea85620-0537-47bf-ba77-650ee15ec08d','true','access.token.claim'),('fea85620-0537-47bf-ba77-650ee15ec08d','phone_number','claim.name'),('fea85620-0537-47bf-ba77-650ee15ec08d','true','id.token.claim'),('fea85620-0537-47bf-ba77-650ee15ec08d','String','jsonType.label'),('fea85620-0537-47bf-ba77-650ee15ec08d','phoneNumber','user.attribute'),('fea85620-0537-47bf-ba77-650ee15ec08d','true','userinfo.token.claim'),('ffc31944-3798-4a33-9ab9-65e80931b6ad','true','access.token.claim'),('ffc31944-3798-4a33-9ab9-65e80931b6ad','updated_at','claim.name'),('ffc31944-3798-4a33-9ab9-65e80931b6ad','true','id.token.claim'),('ffc31944-3798-4a33-9ab9-65e80931b6ad','String','jsonType.label'),('ffc31944-3798-4a33-9ab9-65e80931b6ad','updatedAt','user.attribute'),('ffc31944-3798-4a33-9ab9-65e80931b6ad','true','userinfo.token.claim');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM`
--

DROP TABLE IF EXISTS `REALM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM` (
  `ID` varchar(36) NOT NULL,
  `ACCESS_CODE_LIFESPAN` int(11) DEFAULT NULL,
  `USER_ACTION_LIFESPAN` int(11) DEFAULT NULL,
  `ACCESS_TOKEN_LIFESPAN` int(11) DEFAULT NULL,
  `ACCOUNT_THEME` varchar(255) DEFAULT NULL,
  `ADMIN_THEME` varchar(255) DEFAULT NULL,
  `EMAIL_THEME` varchar(255) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_EXPIRATION` bigint(20) DEFAULT NULL,
  `LOGIN_THEME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PASSWORD_POLICY` text DEFAULT NULL,
  `REGISTRATION_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `REMEMBER_ME` bit(1) NOT NULL DEFAULT b'0',
  `RESET_PASSWORD_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `SOCIAL` bit(1) NOT NULL DEFAULT b'0',
  `SSL_REQUIRED` varchar(255) DEFAULT NULL,
  `SSO_IDLE_TIMEOUT` int(11) DEFAULT NULL,
  `SSO_MAX_LIFESPAN` int(11) DEFAULT NULL,
  `UPDATE_PROFILE_ON_SOC_LOGIN` bit(1) NOT NULL DEFAULT b'0',
  `VERIFY_EMAIL` bit(1) NOT NULL DEFAULT b'0',
  `MASTER_ADMIN_CLIENT` varchar(36) DEFAULT NULL,
  `LOGIN_LIFESPAN` int(11) DEFAULT NULL,
  `INTERNATIONALIZATION_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_LOCALE` varchar(255) DEFAULT NULL,
  `REG_EMAIL_AS_USERNAME` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_DETAILS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EDIT_USERNAME_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `OTP_POLICY_COUNTER` int(11) DEFAULT 0,
  `OTP_POLICY_WINDOW` int(11) DEFAULT 1,
  `OTP_POLICY_PERIOD` int(11) DEFAULT 30,
  `OTP_POLICY_DIGITS` int(11) DEFAULT 6,
  `OTP_POLICY_ALG` varchar(36) DEFAULT 'HmacSHA1',
  `OTP_POLICY_TYPE` varchar(36) DEFAULT 'totp',
  `BROWSER_FLOW` varchar(36) DEFAULT NULL,
  `REGISTRATION_FLOW` varchar(36) DEFAULT NULL,
  `DIRECT_GRANT_FLOW` varchar(36) DEFAULT NULL,
  `RESET_CREDENTIALS_FLOW` varchar(36) DEFAULT NULL,
  `CLIENT_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `OFFLINE_SESSION_IDLE_TIMEOUT` int(11) DEFAULT 0,
  `REVOKE_REFRESH_TOKEN` bit(1) NOT NULL DEFAULT b'0',
  `ACCESS_TOKEN_LIFE_IMPLICIT` int(11) DEFAULT 0,
  `LOGIN_WITH_EMAIL_ALLOWED` bit(1) NOT NULL DEFAULT b'1',
  `DUPLICATE_EMAILS_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `DOCKER_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `REFRESH_TOKEN_MAX_REUSE` int(11) DEFAULT 0,
  `ALLOW_USER_MANAGED_ACCESS` bit(1) NOT NULL DEFAULT b'0',
  `SSO_MAX_LIFESPAN_REMEMBER_ME` int(11) NOT NULL,
  `SSO_IDLE_TIMEOUT_REMEMBER_ME` int(11) NOT NULL,
  `DEFAULT_ROLE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_ORVSDMLA56612EAEFIQ6WL5OI` (`NAME`),
  KEY `IDX_REALM_MASTER_ADM_CLI` (`MASTER_ADMIN_CLIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
/*!40000 ALTER TABLE `REALM` DISABLE KEYS */;
INSERT INTO `REALM` VALUES ('citelibre_backoffice',60,300,300,'keycloak.v3','keycloak.v2','keycloak','','\0',0,'citelibre','citelibre_backoffice',0,NULL,'\0','\0','\0','\0','EXTERNAL',1800,36000,'\0','\0','a6c20c61-1a04-49b9-b18f-f02f91ee3c83',1800,'\0',NULL,'\0','\0','\0','\0',0,1,30,6,'HmacSHA1','totp','7ab2124f-def5-46e2-b127-2a19a1293a6f','5b2590c3-2295-45ca-a570-e753369f86cf','202765fa-33b5-410d-9407-9ae3d28c9a1b','cf911d31-4968-4d58-8016-e7788ff904d0','dea2f890-064b-423c-bdce-6582eb747b0f',2592000,'\0',900,'','\0','20945af7-f60e-40c7-a1e8-7c27fe534f43',0,'\0',0,0,'954b7409-9776-4a03-a57a-4b821a506bb3'),('master',60,300,60,NULL,NULL,NULL,'','\0',0,NULL,'master',0,NULL,'\0','\0','\0','\0','EXTERNAL',1800,36000,'\0','\0','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',1800,'\0',NULL,'\0','\0','\0','\0',0,1,30,6,'HmacSHA1','totp','68e10f8f-ee12-4bc1-afe1-b95327619e38','7bfc9c6a-2a40-48e4-8330-ef101bec5feb','673aef93-5589-4e70-8298-129f631154ce','340304d5-af3e-4678-b425-20ceba497178','7048876d-c317-419e-a65b-8694caaab3ef',2592000,'\0',900,'','\0','31be78b4-e9c6-498b-b2b7-c3674a01c069',0,'\0',0,0,'65dccacf-34da-42c4-ac03-7092d3352aaf'),('Paris',60,300,300,'keycloak.v3','keycloak.v2','keycloak','','\0',0,'citelibre','citelibre_frontoffice',0,NULL,'','\0','\0','\0','EXTERNAL',1800,36000,'\0','\0','0223e96b-970c-4c51-b5a4-8506a6796495',1800,'\0',NULL,'','\0','\0','\0',0,1,30,6,'HmacSHA1','totp','e138699f-85eb-4deb-b468-89700860bdc9','a2a6d8b2-1b6b-4228-9eaa-101d075f985c','3ed66797-d897-42ed-beae-604c69e16b50','62c005f5-e49f-45d6-9940-73e9fa2e94a8','073dcf56-7d66-4cd1-86f0-beb90e10e15a',2592000,'\0',900,'','\0','d951a7b7-a7fc-4f02-8a9b-0173f2465007',0,'\0',0,0,'7d99c081-e4a1-42c6-83a7-5008d7f54890');
/*!40000 ALTER TABLE `REALM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_ATTRIBUTE`
--

DROP TABLE IF EXISTS `REALM_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`NAME`,`REALM_ID`),
  KEY `IDX_REALM_ATTR_REALM` (`REALM_ID`),
  CONSTRAINT `FK_8SHXD6L3E9ATQUKACXGPFFPTW` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('_browser_header.contentSecurityPolicy','citelibre_backoffice','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','master','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','Paris','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','citelibre_backoffice',''),('_browser_header.contentSecurityPolicyReportOnly','master',''),('_browser_header.contentSecurityPolicyReportOnly','Paris',''),('_browser_header.strictTransportSecurity','citelibre_backoffice','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','master','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','Paris','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','citelibre_backoffice','nosniff'),('_browser_header.xContentTypeOptions','master','nosniff'),('_browser_header.xContentTypeOptions','Paris','nosniff'),('_browser_header.xFrameOptions','citelibre_backoffice','SAMEORIGIN'),('_browser_header.xFrameOptions','master','SAMEORIGIN'),('_browser_header.xFrameOptions','Paris','SAMEORIGIN'),('_browser_header.xRobotsTag','citelibre_backoffice','none'),('_browser_header.xRobotsTag','master','none'),('_browser_header.xRobotsTag','Paris','none'),('_browser_header.xXSSProtection','citelibre_backoffice','1; mode=block'),('_browser_header.xXSSProtection','master','1; mode=block'),('_browser_header.xXSSProtection','Paris','1; mode=block'),('acr.loa.map','citelibre_backoffice','{}'),('acr.loa.map','Paris','{}'),('actionTokenGeneratedByAdminLifespan','citelibre_backoffice','43200'),('actionTokenGeneratedByAdminLifespan','Paris','43200'),('actionTokenGeneratedByUserLifespan','citelibre_backoffice','300'),('actionTokenGeneratedByUserLifespan','Paris','300'),('bruteForceProtected','citelibre_backoffice','false'),('bruteForceProtected','master','false'),('bruteForceProtected','Paris','false'),('bruteForceStrategy','citelibre_backoffice','MULTIPLE'),('bruteForceStrategy','Paris','MULTIPLE'),('cibaAuthRequestedUserHint','citelibre_backoffice','login_hint'),('cibaAuthRequestedUserHint','Paris','login_hint'),('cibaBackchannelTokenDeliveryMode','citelibre_backoffice','poll'),('cibaBackchannelTokenDeliveryMode','Paris','poll'),('cibaExpiresIn','citelibre_backoffice','120'),('cibaExpiresIn','Paris','120'),('cibaInterval','citelibre_backoffice','5'),('cibaInterval','Paris','5'),('client-policies.policies','citelibre_backoffice','{\"policies\":[]}'),('client-policies.policies','Paris','{\"policies\":[]}'),('client-policies.profiles','citelibre_backoffice','{\"profiles\":[]}'),('client-policies.profiles','Paris','{\"profiles\":[]}'),('clientOfflineSessionIdleTimeout','citelibre_backoffice','0'),('clientOfflineSessionIdleTimeout','Paris','0'),('clientOfflineSessionMaxLifespan','citelibre_backoffice','0'),('clientOfflineSessionMaxLifespan','Paris','0'),('clientSessionIdleTimeout','citelibre_backoffice','0'),('clientSessionIdleTimeout','Paris','0'),('clientSessionMaxLifespan','citelibre_backoffice','0'),('clientSessionMaxLifespan','Paris','0'),('defaultSignatureAlgorithm','citelibre_backoffice','RS256'),('defaultSignatureAlgorithm','master','RS256'),('defaultSignatureAlgorithm','Paris','RS256'),('displayName','citelibre_backoffice','Back Office'),('displayName','master','Keycloak'),('displayName','Paris','Front Office'),('displayNameHtml','citelibre_backoffice',''),('displayNameHtml','master','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('displayNameHtml','Paris',''),('failureFactor','citelibre_backoffice','30'),('failureFactor','master','30'),('failureFactor','Paris','30'),('firstBrokerLoginFlowId','citelibre_backoffice','a3a6bfd2-72a8-486c-881d-112031f766c0'),('firstBrokerLoginFlowId','master','a97b975d-db29-407d-aeb5-5b8fc84ef87e'),('firstBrokerLoginFlowId','Paris','24bdccc1-001d-4c65-819f-dfedf0de1a91'),('frontendUrl','citelibre_backoffice',''),('frontendUrl','Paris',''),('maxDeltaTimeSeconds','citelibre_backoffice','43200'),('maxDeltaTimeSeconds','master','43200'),('maxDeltaTimeSeconds','Paris','43200'),('maxFailureWaitSeconds','citelibre_backoffice','900'),('maxFailureWaitSeconds','master','900'),('maxFailureWaitSeconds','Paris','900'),('maxTemporaryLockouts','citelibre_backoffice','0'),('maxTemporaryLockouts','Paris','0'),('minimumQuickLoginWaitSeconds','citelibre_backoffice','60'),('minimumQuickLoginWaitSeconds','master','60'),('minimumQuickLoginWaitSeconds','Paris','60'),('oauth2DeviceCodeLifespan','citelibre_backoffice','600'),('oauth2DeviceCodeLifespan','Paris','600'),('oauth2DevicePollingInterval','citelibre_backoffice','5'),('oauth2DevicePollingInterval','Paris','5'),('offlineSessionMaxLifespan','citelibre_backoffice','5184000'),('offlineSessionMaxLifespan','master','5184000'),('offlineSessionMaxLifespan','Paris','5184000'),('offlineSessionMaxLifespanEnabled','citelibre_backoffice','false'),('offlineSessionMaxLifespanEnabled','master','false'),('offlineSessionMaxLifespanEnabled','Paris','false'),('organizationsEnabled','citelibre_backoffice','false'),('organizationsEnabled','Paris','false'),('parRequestUriLifespan','citelibre_backoffice','60'),('parRequestUriLifespan','Paris','60'),('permanentLockout','citelibre_backoffice','false'),('permanentLockout','master','false'),('permanentLockout','Paris','false'),('quickLoginCheckMilliSeconds','citelibre_backoffice','1000'),('quickLoginCheckMilliSeconds','master','1000'),('quickLoginCheckMilliSeconds','Paris','1000'),('realmReusableOtpCode','citelibre_backoffice','false'),('realmReusableOtpCode','Paris','false'),('waitIncrementSeconds','citelibre_backoffice','60'),('waitIncrementSeconds','master','60'),('waitIncrementSeconds','Paris','60'),('webAuthnPolicyAttestationConveyancePreference','citelibre_backoffice','not specified'),('webAuthnPolicyAttestationConveyancePreference','Paris','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','citelibre_backoffice','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','Paris','not specified'),('webAuthnPolicyAuthenticatorAttachment','citelibre_backoffice','not specified'),('webAuthnPolicyAuthenticatorAttachment','Paris','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','citelibre_backoffice','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','Paris','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','citelibre_backoffice','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','Paris','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','citelibre_backoffice','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','Paris','false'),('webAuthnPolicyCreateTimeout','citelibre_backoffice','0'),('webAuthnPolicyCreateTimeout','Paris','0'),('webAuthnPolicyCreateTimeoutPasswordless','citelibre_backoffice','0'),('webAuthnPolicyCreateTimeoutPasswordless','Paris','0'),('webAuthnPolicyRequireResidentKey','citelibre_backoffice','not specified'),('webAuthnPolicyRequireResidentKey','Paris','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','citelibre_backoffice','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','Paris','not specified'),('webAuthnPolicyRpEntityName','citelibre_backoffice','keycloak'),('webAuthnPolicyRpEntityName','Paris','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','citelibre_backoffice','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','Paris','keycloak'),('webAuthnPolicyRpId','citelibre_backoffice',''),('webAuthnPolicyRpId','Paris',''),('webAuthnPolicyRpIdPasswordless','citelibre_backoffice',''),('webAuthnPolicyRpIdPasswordless','Paris',''),('webAuthnPolicySignatureAlgorithms','citelibre_backoffice','ES256'),('webAuthnPolicySignatureAlgorithms','Paris','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','citelibre_backoffice','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','Paris','ES256'),('webAuthnPolicyUserVerificationRequirement','citelibre_backoffice','not specified'),('webAuthnPolicyUserVerificationRequirement','Paris','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','citelibre_backoffice','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','Paris','not specified');
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_DEFAULT_GROUPS`
--

DROP TABLE IF EXISTS `REALM_DEFAULT_GROUPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_DEFAULT_GROUPS` (
  `REALM_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`GROUP_ID`),
  UNIQUE KEY `CON_GROUP_ID_DEF_GROUPS` (`GROUP_ID`),
  KEY `IDX_REALM_DEF_GRP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_DEF_GROUPS_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_DEFAULT_GROUPS`
--

LOCK TABLES `REALM_DEFAULT_GROUPS` WRITE;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_ENABLED_EVENT_TYPES`
--

DROP TABLE IF EXISTS `REALM_ENABLED_EVENT_TYPES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_ENABLED_EVENT_TYPES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_TYPES_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NWEDRF5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_ENABLED_EVENT_TYPES`
--

LOCK TABLES `REALM_ENABLED_EVENT_TYPES` WRITE;
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_EVENTS_LISTENERS`
--

DROP TABLE IF EXISTS `REALM_EVENTS_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_EVENTS_LISTENERS` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_LIST_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NXEV9F5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_EVENTS_LISTENERS`
--

LOCK TABLES `REALM_EVENTS_LISTENERS` WRITE;
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` DISABLE KEYS */;
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('citelibre_backoffice','jboss-logging'),('master','jboss-logging'),('Paris','jboss-logging');
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_LOCALIZATIONS`
--

DROP TABLE IF EXISTS `REALM_LOCALIZATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_LOCALIZATIONS` (
  `REALM_ID` varchar(255) NOT NULL,
  `LOCALE` varchar(255) NOT NULL,
  `TEXTS` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`REALM_ID`,`LOCALE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_LOCALIZATIONS`
--

LOCK TABLES `REALM_LOCALIZATIONS` WRITE;
/*!40000 ALTER TABLE `REALM_LOCALIZATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_LOCALIZATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_REQUIRED_CREDENTIAL`
--

DROP TABLE IF EXISTS `REALM_REQUIRED_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_REQUIRED_CREDENTIAL` (
  `TYPE` varchar(255) NOT NULL,
  `FORM_LABEL` varchar(255) DEFAULT NULL,
  `INPUT` bit(1) NOT NULL DEFAULT b'0',
  `SECRET` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`TYPE`),
  CONSTRAINT `FK_5HG65LYBEVAVKQFKI3KPONH9V` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_REQUIRED_CREDENTIAL`
--

LOCK TABLES `REALM_REQUIRED_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` DISABLE KEYS */;
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password','','','citelibre_backoffice'),('password','password','','','master'),('password','password','','','Paris');
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_SMTP_CONFIG`
--

DROP TABLE IF EXISTS `REALM_SMTP_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_SMTP_CONFIG` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`NAME`),
  CONSTRAINT `FK_70EJ8XDXGXD0B9HH6180IRR0O` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_SMTP_CONFIG`
--

LOCK TABLES `REALM_SMTP_CONFIG` WRITE;
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_SUPPORTED_LOCALES`
--

DROP TABLE IF EXISTS `REALM_SUPPORTED_LOCALES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_SUPPORTED_LOCALES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_SUPP_LOCAL_REALM` (`REALM_ID`),
  CONSTRAINT `FK_SUPPORTED_LOCALES_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_SUPPORTED_LOCALES`
--

LOCK TABLES `REALM_SUPPORTED_LOCALES` WRITE;
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` DISABLE KEYS */;
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('citelibre_backoffice',''),('Paris','');
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REDIRECT_URIS`
--

DROP TABLE IF EXISTS `REDIRECT_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REDIRECT_URIS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_REDIR_URI_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_1BURS8PB4OUJ97H5WUPPAHV9F` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REDIRECT_URIS`
--

LOCK TABLES `REDIRECT_URIS` WRITE;
/*!40000 ALTER TABLE `REDIRECT_URIS` DISABLE KEYS */;
INSERT INTO `REDIRECT_URIS` VALUES ('0335247d-0834-41b2-a5c1-7e0c321b9968','http://localhost:80/*'),('0335247d-0834-41b2-a5c1-7e0c321b9968','http://localhost:8080/*'),('0335247d-0834-41b2-a5c1-7e0c321b9968','http://localhost/*'),('06251203-e295-46d3-b742-083e447482fc','/realms/citelibre_backoffice/account/*'),('06659433-c299-4183-af48-a8ab8f7df65b','/realms/Paris/account/*'),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','/realms/citelibre_frontoffice/account/*'),('5c41c941-c9c6-480f-b39d-ec696e79db28','/admin/citelibre_backoffice/console/*'),('8f8ef5da-0e40-4034-96e9-203878205f27','/realms/master/account/*'),('a4bcf244-3008-4b91-8d93-911f7a843e7f','/realms/citelibre_backoffice/account/*'),('b741f744-8388-4233-9edc-c9f2ed49016e','/admin/master/console/*'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','http://localhost:80/*'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','http://localhost:8080/*'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','http://localhost/*'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','/admin/citelibre_frontoffice/console/*'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','/realms/master/account/*');
/*!40000 ALTER TABLE `REDIRECT_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIRED_ACTION_CONFIG`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REQUIRED_ACTION_CONFIG` (
  `REQUIRED_ACTION_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REQUIRED_ACTION_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIRED_ACTION_CONFIG`
--

LOCK TABLES `REQUIRED_ACTION_CONFIG` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIRED_ACTION_PROVIDER`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REQUIRED_ACTION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_ACTION` bit(1) NOT NULL DEFAULT b'0',
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_REQ_ACT_PROV_REALM` (`REALM_ID`),
  CONSTRAINT `FK_REQ_ACT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIRED_ACTION_PROVIDER`
--

LOCK TABLES `REQUIRED_ACTION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` DISABLE KEYS */;
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('0f483686-5df7-427f-8e7f-afbcd89bda3d','delete_credential','Delete Credential','citelibre_backoffice','','\0','delete_credential',100),('1c148bdd-4ccf-474c-a648-23eb6d9acb24','UPDATE_PASSWORD','Update Password','citelibre_backoffice','','\0','UPDATE_PASSWORD',30),('265b215d-5562-4d45-94f0-75d4039782b4','UPDATE_PROFILE','Update Profile','citelibre_backoffice','','\0','UPDATE_PROFILE',40),('29d11fb0-21c8-479a-8654-ad41c85a2933','delete_account','Delete Account','citelibre_backoffice','\0','\0','delete_account',60),('2fdc7f3c-dbfc-471f-a47e-8096d659676b','UPDATE_PASSWORD','Update Password','master','','\0','UPDATE_PASSWORD',30),('3024cdb5-e5fd-4400-9d42-47ec3c0dba48','UPDATE_PASSWORD','Update Password','Paris','','\0','UPDATE_PASSWORD',30),('3da75aa1-6b26-406d-a697-7670f4314dd3','VERIFY_EMAIL','Verify Email','Paris','','\0','VERIFY_EMAIL',50),('495e7e04-68db-4d13-963c-843f70fa534a','CONFIGURE_TOTP','Configure OTP','citelibre_backoffice','','\0','CONFIGURE_TOTP',10),('52f02c6e-a3a7-44b3-9619-e2acf5f3480d','delete_account','Delete Account','master','\0','\0','delete_account',60),('552cb2ba-622d-46c9-9370-ed2adeff0965','delete_account','Delete Account','Paris','\0','\0','delete_account',60),('554da3ea-8694-4ee4-89dd-2fd521bf1444','delete_credential','Delete Credential','Paris','','\0','delete_credential',100),('5f17ab7c-1bdb-46e5-bbb7-e0defef163a9','delete_credential','Delete Credential','master','','\0','delete_credential',100),('61fdb9db-2b9e-474f-b93f-a0d84c5a10e8','UPDATE_PROFILE','Update Profile','Paris','','\0','UPDATE_PROFILE',40),('6a519c40-71a7-4b06-a8eb-9bfde319b669','TERMS_AND_CONDITIONS','Terms and Conditions','master','\0','\0','TERMS_AND_CONDITIONS',20),('737d4d47-28a2-4475-ab8c-cd1f1a078c92','CONFIGURE_TOTP','Configure OTP','Paris','','\0','CONFIGURE_TOTP',10),('73d055a9-9786-48d8-b481-50013785173a','update_user_locale','Update User Locale','master','','\0','update_user_locale',1000),('937ad40b-b0f7-41fc-bec5-5338067ce7c8','UPDATE_PROFILE','Update Profile','master','','\0','UPDATE_PROFILE',40),('b8ded332-523a-4c5f-b736-e53ada9a7227','CONFIGURE_TOTP','Configure OTP','master','','\0','CONFIGURE_TOTP',10),('bc1e0a49-e648-4f32-9b77-7d99e75ef14f','update_user_locale','Update User Locale','Paris','','\0','update_user_locale',1000),('be7de110-9d25-42c7-b239-f63f900745ff','TERMS_AND_CONDITIONS','Terms and Conditions','Paris','\0','\0','TERMS_AND_CONDITIONS',20),('d3a664e5-5af3-4c8e-827e-81c0c303d526','TERMS_AND_CONDITIONS','Terms and Conditions','citelibre_backoffice','\0','\0','TERMS_AND_CONDITIONS',20),('e72920dc-2d07-4e50-aa3a-fa864e94af8d','update_user_locale','Update User Locale','citelibre_backoffice','','\0','update_user_locale',1000),('eb1711b5-404b-44c4-8f47-4c86eed062e5','VERIFY_EMAIL','Verify Email','citelibre_backoffice','','\0','VERIFY_EMAIL',50),('f00d14d7-21ad-40da-9d51-cc6e4a20ed9c','VERIFY_EMAIL','Verify Email','master','','\0','VERIFY_EMAIL',50);
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `RESOURCE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_5HRM2VLF9QL5FU022KQEPOVBR` (`RESOURCE_ID`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU022KQEPOVBR` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_ATTRIBUTE`
--

LOCK TABLES `RESOURCE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_POLICY`
--

DROP TABLE IF EXISTS `RESOURCE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_POLICY` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`POLICY_ID`),
  KEY `IDX_RES_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRPOS53XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRPP213XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_POLICY`
--

LOCK TABLES `RESOURCE_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SCOPE`
--

DROP TABLE IF EXISTS `RESOURCE_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SCOPE` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`SCOPE_ID`),
  KEY `IDX_RES_SCOPE_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_FRSRPOS13XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRPS213XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SCOPE`
--

LOCK TABLES `RESOURCE_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER` (
  `ID` varchar(36) NOT NULL,
  `ALLOW_RS_REMOTE_MGMT` bit(1) NOT NULL DEFAULT b'0',
  `POLICY_ENFORCE_MODE` tinyint(4) DEFAULT NULL,
  `DECISION_STRATEGY` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER`
--

LOCK TABLES `RESOURCE_SERVER` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_PERM_TICKET`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_PERM_TICKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_PERM_TICKET` (
  `ID` varchar(36) NOT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `REQUESTER` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) NOT NULL,
  `GRANTED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5PMT` (`OWNER`,`REQUESTER`,`RESOURCE_SERVER_ID`,`RESOURCE_ID`,`SCOPE_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG82SSPMT` (`RESOURCE_SERVER_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG83SSPMT` (`RESOURCE_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG84SSPMT` (`SCOPE_ID`),
  KEY `FK_FRSRPO2128CX4WNKOG82SSRFY` (`POLICY_ID`),
  KEY `IDX_PERM_TICKET_REQUESTER` (`REQUESTER`),
  KEY `IDX_PERM_TICKET_OWNER` (`OWNER`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSPMT` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG83SSPMT` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG84SSPMT` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`),
  CONSTRAINT `FK_FRSRPO2128CX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_PERM_TICKET`
--

LOCK TABLES `RESOURCE_SERVER_PERM_TICKET` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_POLICY`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_POLICY` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  `DECISION_STRATEGY` tinyint(4) DEFAULT NULL,
  `LOGIC` tinyint(4) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRPT700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SERV_POL_RES_SERV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRPO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_POLICY`
--

LOCK TABLES `RESOURCE_SERVER_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_RESOURCE`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_RESOURCE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER_MANAGED_ACCESS` bit(1) NOT NULL DEFAULT b'0',
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5HA6` (`NAME`,`OWNER`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_RES_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_RESOURCE`
--

LOCK TABLES `RESOURCE_SERVER_RESOURCE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_SCOPE`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRST700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_SCOPE_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRSO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_SCOPE`
--

LOCK TABLES `RESOURCE_SERVER_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_URIS`
--

DROP TABLE IF EXISTS `RESOURCE_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_URIS` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`VALUE`),
  CONSTRAINT `FK_RESOURCE_SERVER_URIS` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_URIS`
--

LOCK TABLES `RESOURCE_URIS` WRITE;
/*!40000 ALTER TABLE `RESOURCE_URIS` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REVOKED_TOKEN`
--

DROP TABLE IF EXISTS `REVOKED_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REVOKED_TOKEN` (
  `ID` varchar(255) NOT NULL,
  `EXPIRE` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_REV_TOKEN_ON_EXPIRE` (`EXPIRE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REVOKED_TOKEN`
--

LOCK TABLES `REVOKED_TOKEN` WRITE;
/*!40000 ALTER TABLE `REVOKED_TOKEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `REVOKED_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `ROLE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ROLE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ROLE_ATTRIBUTE` (`ROLE_ID`),
  CONSTRAINT `FK_ROLE_ATTRIBUTE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE_ATTRIBUTE`
--

LOCK TABLES `ROLE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCOPE_MAPPING`
--

DROP TABLE IF EXISTS `SCOPE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCOPE_MAPPING` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`ROLE_ID`),
  KEY `IDX_SCOPE_MAPPING_ROLE` (`ROLE_ID`),
  CONSTRAINT `FK_OUSE064PLMLR732LXJCN1Q5F1` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCOPE_MAPPING`
--

LOCK TABLES `SCOPE_MAPPING` WRITE;
/*!40000 ALTER TABLE `SCOPE_MAPPING` DISABLE KEYS */;
INSERT INTO `SCOPE_MAPPING` VALUES ('06659433-c299-4183-af48-a8ab8f7df65b','6db2b4a8-ca8e-4e74-9d99-79229b8ff9ba'),('06659433-c299-4183-af48-a8ab8f7df65b','e2a89d4d-a713-4cdf-9aad-bbcebba4de23'),('a4bcf244-3008-4b91-8d93-911f7a843e7f','6d0ada92-0da6-4562-9578-bc09e65050ea'),('a4bcf244-3008-4b91-8d93-911f7a843e7f','874b5f0d-3e5b-4ec4-9381-8672bde6ceeb'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','336e367f-ded8-4e8d-a7a5-fe0b591aa872'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','f8b0b3ae-3fa9-46bd-99f4-83b9cb53015e');
/*!40000 ALTER TABLE `SCOPE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCOPE_POLICY`
--

DROP TABLE IF EXISTS `SCOPE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCOPE_POLICY` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`POLICY_ID`),
  KEY `IDX_SCOPE_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRASP13XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  CONSTRAINT `FK_FRSRPASS3XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCOPE_POLICY`
--

LOCK TABLES `SCOPE_POLICY` WRITE;
/*!40000 ALTER TABLE `SCOPE_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCOPE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERNAME_LOGIN_FAILURE`
--

DROP TABLE IF EXISTS `USERNAME_LOGIN_FAILURE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERNAME_LOGIN_FAILURE` (
  `REALM_ID` varchar(36) NOT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `FAILED_LOGIN_NOT_BEFORE` int(11) DEFAULT NULL,
  `LAST_FAILURE` bigint(20) DEFAULT NULL,
  `LAST_IP_FAILURE` varchar(255) DEFAULT NULL,
  `NUM_FAILURES` int(11) DEFAULT NULL,
  PRIMARY KEY (`REALM_ID`,`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERNAME_LOGIN_FAILURE`
--

LOCK TABLES `USERNAME_LOGIN_FAILURE` WRITE;
/*!40000 ALTER TABLE `USERNAME_LOGIN_FAILURE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USERNAME_LOGIN_FAILURE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `LONG_VALUE_HASH` binary(64) DEFAULT NULL,
  `LONG_VALUE_HASH_LOWER_CASE` binary(64) DEFAULT NULL,
  `LONG_VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_ATTRIBUTE` (`USER_ID`),
  KEY `IDX_USER_ATTRIBUTE_NAME` (`NAME`,`VALUE`),
  KEY `USER_ATTR_LONG_VALUES` (`LONG_VALUE_HASH`,`NAME`),
  KEY `USER_ATTR_LONG_VALUES_LOWER_CASE` (`LONG_VALUE_HASH_LOWER_CASE`,`NAME`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU043KQEPOVBR` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ATTRIBUTE`
--

LOCK TABLES `USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_CONSENT`
--

DROP TABLE IF EXISTS `USER_CONSENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_LOCAL_CONSENT` (`CLIENT_ID`,`USER_ID`),
  UNIQUE KEY `UK_EXTERNAL_CONSENT` (`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`USER_ID`),
  KEY `IDX_USER_CONSENT` (`USER_ID`),
  CONSTRAINT `FK_GRNTCSNT_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CONSENT`
--

LOCK TABLES `USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_CONSENT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `USER_CONSENT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_CONSENT_CLIENT_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`),
  KEY `IDX_USCONSENT_CLSCOPE` (`USER_CONSENT_ID`),
  KEY `IDX_USCONSENT_SCOPE_ID` (`SCOPE_ID`),
  CONSTRAINT `FK_GRNTCSNT_CLSC_USC` FOREIGN KEY (`USER_CONSENT_ID`) REFERENCES `USER_CONSENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CONSENT_CLIENT_SCOPE`
--

LOCK TABLES `USER_CONSENT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ENTITY`
--

DROP TABLE IF EXISTS `USER_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `EMAIL_CONSTRAINT` varchar(255) DEFAULT NULL,
  `EMAIL_VERIFIED` bit(1) NOT NULL DEFAULT b'0',
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `FEDERATION_LINK` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `LAST_NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `SERVICE_ACCOUNT_CLIENT_LINK` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_DYKN684SL8UP1CRFEI6ECKHD7` (`REALM_ID`,`EMAIL_CONSTRAINT`),
  UNIQUE KEY `UK_RU8TT6T700S9V50BU18WS5HA6` (`REALM_ID`,`USERNAME`),
  KEY `IDX_USER_EMAIL` (`EMAIL`),
  KEY `IDX_USER_SERVICE_ACCOUNT` (`REALM_ID`,`SERVICE_ACCOUNT_CLIENT_LINK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ENTITY`
--

LOCK TABLES `USER_ENTITY` WRITE;
/*!40000 ALTER TABLE `USER_ENTITY` DISABLE KEYS */;
INSERT INTO `USER_ENTITY` VALUES ('094a2be3-d4a7-4325-aa90-b8c8302ede5e','test@paris.fr','test@paris.fr','\0','',NULL,'test','test','Paris','test@paris.fr',1684333554809,NULL,0),('2082746c-ea28-42dc-a0b1-c06dab0c2c14','test@test.com','test@test.com','\0','',NULL,'test','test','Paris','test@test.com',1684330897965,NULL,0),('925c1cc8-1604-4883-9157-87520be2f4b7','admin@paris.fr','admin@paris.fr','','',NULL,'Admin','Admin','citelibre_backoffice','admin@paris.fr',1734621509966,NULL,0),('bb2e51c8-b514-400f-a883-1e03d033839b',NULL,'e0f3edab-9a96-48ec-803e-41624c9cf4a1','\0','',NULL,NULL,NULL,'master','admin',1684325167023,NULL,0);
/*!40000 ALTER TABLE `USER_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_CONFIG` (
  `USER_FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FK_T13HPU1J94R2EBPEKR39X5EU5` FOREIGN KEY (`USER_FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_CONFIG`
--

LOCK TABLES `USER_FEDERATION_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_MAPPER`
--

DROP TABLE IF EXISTS `USER_FEDERATION_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `FEDERATION_MAPPER_TYPE` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USR_FED_MAP_FED_PRV` (`FEDERATION_PROVIDER_ID`),
  KEY `IDX_USR_FED_MAP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_FEDMAPPERPM_FEDPRV` FOREIGN KEY (`FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`),
  CONSTRAINT `FK_FEDMAPPERPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_MAPPER`
--

LOCK TABLES `USER_FEDERATION_MAPPER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_MAPPER_CONFIG` (
  `USER_FEDERATION_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_FEDMAPPER_CFG` FOREIGN KEY (`USER_FEDERATION_MAPPER_ID`) REFERENCES `USER_FEDERATION_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_MAPPER_CONFIG`
--

LOCK TABLES `USER_FEDERATION_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_PROVIDER`
--

DROP TABLE IF EXISTS `USER_FEDERATION_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `CHANGED_SYNC_PERIOD` int(11) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `FULL_SYNC_PERIOD` int(11) DEFAULT NULL,
  `LAST_SYNC` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `PROVIDER_NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USR_FED_PRV_REALM` (`REALM_ID`),
  CONSTRAINT `FK_1FJ32F6PTOLW2QY60CD8N01E8` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_PROVIDER`
--

LOCK TABLES `USER_FEDERATION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_GROUP_MEMBERSHIP`
--

DROP TABLE IF EXISTS `USER_GROUP_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `MEMBERSHIP_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_USER_GROUP_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_USER_GROUP_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_REQUIRED_ACTION`
--

DROP TABLE IF EXISTS `USER_REQUIRED_ACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_REQUIRED_ACTION` (
  `USER_ID` varchar(36) NOT NULL,
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_USER_REQACTIONS` (`USER_ID`),
  CONSTRAINT `FK_6QJ3W1JW9CVAFHE19BWSIUVMD` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_REQUIRED_ACTION`
--

LOCK TABLES `USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `USER_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(255) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_USER_ROLE_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_C4FQV34P1MBYLLOXANG7B1Q3L` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ROLE_MAPPING`
--

LOCK TABLES `USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `USER_ROLE_MAPPING` VALUES ('0e91d712-324f-41b5-8172-ade740d265c5','bb2e51c8-b514-400f-a883-1e03d033839b'),('23c39c09-6a56-4b88-a4a2-9beb10801ac1','bb2e51c8-b514-400f-a883-1e03d033839b'),('3222b9c3-167e-4c19-91f0-97efb2e2ffba','bb2e51c8-b514-400f-a883-1e03d033839b'),('35093bab-45d1-4c36-a21e-cdfdc9cc0564','bb2e51c8-b514-400f-a883-1e03d033839b'),('368ed282-126c-4443-82fc-212fbea42ad2','bb2e51c8-b514-400f-a883-1e03d033839b'),('47464199-80b5-45eb-98de-d48f419233b1','bb2e51c8-b514-400f-a883-1e03d033839b'),('55b61e20-71f3-4dae-af1f-1f4a73458d4a','bb2e51c8-b514-400f-a883-1e03d033839b'),('562c0666-d09a-479f-8b4f-95d92602c72f','bb2e51c8-b514-400f-a883-1e03d033839b'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','bb2e51c8-b514-400f-a883-1e03d033839b'),('65dccacf-34da-42c4-ac03-7092d3352aaf','bb2e51c8-b514-400f-a883-1e03d033839b'),('7d99c081-e4a1-42c6-83a7-5008d7f54890','094a2be3-d4a7-4325-aa90-b8c8302ede5e'),('7d99c081-e4a1-42c6-83a7-5008d7f54890','2082746c-ea28-42dc-a0b1-c06dab0c2c14'),('8687a672-80d7-4e4d-a052-4e28b9da78d1','bb2e51c8-b514-400f-a883-1e03d033839b'),('8e73ca8c-e1e4-43cf-807e-ca220810fca4','bb2e51c8-b514-400f-a883-1e03d033839b'),('914e215a-68c3-4789-997d-8140cf087b87','bb2e51c8-b514-400f-a883-1e03d033839b'),('954b7409-9776-4a03-a57a-4b821a506bb3','925c1cc8-1604-4883-9157-87520be2f4b7'),('ace5c973-137f-42d4-ab3c-7453a680eeb7','bb2e51c8-b514-400f-a883-1e03d033839b'),('cea8b620-21cc-41d4-afb8-3aca410e863a','bb2e51c8-b514-400f-a883-1e03d033839b'),('dec328f3-4fbe-4e19-bb3c-376d9351251d','bb2e51c8-b514-400f-a883-1e03d033839b'),('df1d39e7-0c7c-4189-816c-ec4fbf8294aa','bb2e51c8-b514-400f-a883-1e03d033839b'),('eb1a0755-df2b-493c-ba15-72fe9954cced','bb2e51c8-b514-400f-a883-1e03d033839b'),('f2478032-0365-496e-8885-6da3a5d38296','bb2e51c8-b514-400f-a883-1e03d033839b');
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WEB_ORIGINS`
--

DROP TABLE IF EXISTS `WEB_ORIGINS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WEB_ORIGINS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_WEB_ORIG_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_LOJPHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WEB_ORIGINS`
--

LOCK TABLES `WEB_ORIGINS` WRITE;
/*!40000 ALTER TABLE `WEB_ORIGINS` DISABLE KEYS */;
INSERT INTO `WEB_ORIGINS` VALUES ('5c41c941-c9c6-480f-b39d-ec696e79db28','+'),('b741f744-8388-4233-9edc-c9f2ed49016e','+'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','+');
/*!40000 ALTER TABLE `WEB_ORIGINS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-09 17:04:22
