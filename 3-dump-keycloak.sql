-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: keycloak
-- Keycloak create is database when first running
-- ------------------------------------------------------
-- Server version	8.0.31

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

CREATE DATABASE keycloak;

USE keycloak;

--
-- Table structure for table `ADMIN_EVENT_ENTITY`
--

DROP TABLE IF EXISTS `ADMIN_EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ADMIN_EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `ADMIN_EVENT_TIME` bigint DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `OPERATION_TYPE` varchar(255) DEFAULT NULL,
  `AUTH_REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_CLIENT_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `RESOURCE_PATH` text,
  `REPRESENTATION` text,
  `ERROR` varchar(255) DEFAULT NULL,
  `RESOURCE_TYPE` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`)
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATION_EXECUTION` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `AUTHENTICATOR` varchar(36) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `REQUIREMENT` int DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('0031c20a-d3f9-482b-93b2-22ff5489c8e7',NULL,'direct-grant-validate-username','master','673aef93-5589-4e70-8298-129f631154ce',0,10,_binary '\0',NULL,NULL),('0040e966-b034-4044-bde2-348cd5a6e9cf',NULL,'direct-grant-validate-otp','master','197dbf75-b4a3-4986-8670-bc6d81bda8fc',0,20,_binary '\0',NULL,NULL),('01b23ef3-26f1-4647-b4bc-18462f628ff3',NULL,'reset-credentials-choose-user','master','340304d5-af3e-4678-b425-20ceba497178',0,10,_binary '\0',NULL,NULL),('02807ba0-988a-4dbc-a3a4-01770e1b4f5b',NULL,'direct-grant-validate-otp','Paris','4e20a9a7-97b0-422b-87eb-317696893f6c',0,20,_binary '\0',NULL,NULL),('059e5d60-9251-4241-a78c-6cf02ddd7901',NULL,'conditional-user-configured','Paris','4e20a9a7-97b0-422b-87eb-317696893f6c',0,10,_binary '\0',NULL,NULL),('0874c8f3-78d8-4571-93f7-fcfee63c4412',NULL,'registration-password-action','Paris','41ea851a-0f7e-4a77-87a6-056420d5763c',0,50,_binary '\0',NULL,NULL),('0908745b-8afe-4eab-a926-b9a427669574',NULL,'http-basic-authenticator','Paris','fff700e7-8026-4d9b-a808-cbd87a40f146',0,10,_binary '\0',NULL,NULL),('0fbeac79-6a6c-4701-b500-7852a4aa24f1',NULL,NULL,'Paris','24bdccc1-001d-4c65-819f-dfedf0de1a91',0,20,_binary '','d0c66fb7-f659-4669-9b6d-12d5a5afc317',NULL),('10d546d6-eaae-4372-aa26-0828c990205e',NULL,NULL,'master','1a783e5c-f5f1-4772-af4a-5fe011b670d1',0,20,_binary '','f8827502-d55c-479a-ac68-5ab4be036c60',NULL),('11917bc3-b105-4cd8-bad3-70e2aa18fc5b',NULL,'direct-grant-validate-username','Paris','3ed66797-d897-42ed-beae-604c69e16b50',0,10,_binary '\0',NULL,NULL),('14e829d8-b520-4930-86c5-63c9771e85e6',NULL,'client-secret-jwt','Paris','073dcf56-7d66-4cd1-86f0-beb90e10e15a',2,30,_binary '\0',NULL,NULL),('16a8bfb8-a9bb-402f-82d8-16f09bb690e6',NULL,'conditional-user-configured','Paris','b450865f-3a2c-4180-b55d-c222822ea588',0,10,_binary '\0',NULL,NULL),('1c6d5450-9caf-4481-b7b5-14f54ce78493',NULL,'idp-email-verification','Paris','fba2beee-ccdc-47c9-8e3e-3705a815c2c7',2,10,_binary '\0',NULL,NULL),('1e853f9c-5125-4bc4-9086-df5bc5a96394',NULL,NULL,'master','673aef93-5589-4e70-8298-129f631154ce',1,30,_binary '','197dbf75-b4a3-4986-8670-bc6d81bda8fc',NULL),('204a609e-cc58-409e-8d3a-f4a7a03c97a4',NULL,'conditional-user-configured','master','8279f6af-fd4d-4050-8c0d-cd4dac12359d',0,10,_binary '\0',NULL,NULL),('21994af4-26d3-4365-8797-492dd50e2a4b',NULL,'registration-page-form','Paris','a2a6d8b2-1b6b-4228-9eaa-101d075f985c',0,10,_binary '','41ea851a-0f7e-4a77-87a6-056420d5763c',NULL),('24601d33-418e-4508-bee5-f0b91dda6621',NULL,'client-jwt','Paris','073dcf56-7d66-4cd1-86f0-beb90e10e15a',2,20,_binary '\0',NULL,NULL),('36c4fa4b-8900-4b35-a13c-6084fcc1a39f',NULL,'auth-spnego','Paris','4cf45a14-b55f-474b-9407-3874aed402da',3,30,_binary '\0',NULL,NULL),('44d42b64-1c03-44f1-833f-d6e471916ce7',NULL,'direct-grant-validate-password','master','673aef93-5589-4e70-8298-129f631154ce',0,20,_binary '\0',NULL,NULL),('4955a936-3204-4520-9a90-5b118461bddc',NULL,'registration-profile-action','master','0a26590a-5a9b-4af6-877e-f15f86d9fd8f',0,40,_binary '\0',NULL,NULL),('4c851302-8b3b-4e3d-8ef6-8a6b79b167eb',NULL,'reset-otp','Paris','ebab224b-7573-4513-b715-7242e90001f8',0,20,_binary '\0',NULL,NULL),('4e568670-0b8b-459c-a140-80b9d8ba63d5',NULL,'conditional-user-configured','master','197dbf75-b4a3-4986-8670-bc6d81bda8fc',0,10,_binary '\0',NULL,NULL),('529a8179-d98f-4f79-9f36-ca0f646c4aee',NULL,'basic-auth','Paris','4cf45a14-b55f-474b-9407-3874aed402da',0,10,_binary '\0',NULL,NULL),('536d469d-d769-41c4-b1f8-cdce58f7c5d5',NULL,NULL,'Paris','7a8153c9-ef45-4aca-8fe9-f9633c988402',1,20,_binary '','b450865f-3a2c-4180-b55d-c222822ea588',NULL),('5780e4a6-e29f-43a3-896c-3b9c474a075d',NULL,'client-x509','Paris','073dcf56-7d66-4cd1-86f0-beb90e10e15a',2,40,_binary '\0',NULL,NULL),('58604df1-1e93-4c15-8659-06beac1bf045',NULL,'auth-spnego','Paris','e138699f-85eb-4deb-b468-89700860bdc9',3,20,_binary '\0',NULL,NULL),('601371e5-f7dd-4007-8ba3-6845aa0a1ba7',NULL,NULL,'Paris','23f510a0-fac4-410c-a1af-479a54923ec8',0,20,_binary '','4cf45a14-b55f-474b-9407-3874aed402da',NULL),('6514d7c7-5264-43e2-abd2-f45f65bfa26d',NULL,NULL,'master','a97b975d-db29-407d-aeb5-5b8fc84ef87e',0,20,_binary '','e86ea9d9-795b-4f20-b148-45f4c3dd46d5',NULL),('672bf619-9a94-4b60-baea-a4a8c31444c8',NULL,'auth-otp-form','Paris','c49991fb-3707-4bbf-930b-2ecf450357f8',0,20,_binary '\0',NULL,NULL),('6ccd9f19-7e15-4afc-bded-d5fd9f49eef2',NULL,'reset-password','Paris','62c005f5-e49f-45d6-9940-73e9fa2e94a8',0,30,_binary '\0',NULL,NULL),('6d49c469-eb01-411c-b551-b1158aa080aa',NULL,'idp-email-verification','master','e48a0aba-20d1-49c5-9259-7761c4bc57a3',2,10,_binary '\0',NULL,NULL),('6dfa3c8c-6d88-4c1a-b1f2-7e6ac3bdff3b',NULL,'registration-recaptcha-action','master','0a26590a-5a9b-4af6-877e-f15f86d9fd8f',3,60,_binary '\0',NULL,NULL),('70194066-d6ba-4d29-b183-a6f106b7daae',NULL,'auth-cookie','master','68e10f8f-ee12-4bc1-afe1-b95327619e38',2,10,_binary '\0',NULL,NULL),('7069ec0f-bc64-4403-bdc8-8f1a81fa4b62',NULL,'idp-confirm-link','Paris','ca8ca2c4-9da7-4758-ba30-b8227b82e225',0,10,_binary '\0',NULL,NULL),('73de772a-af7f-4783-8a8f-eb3ca8ea69b1',NULL,'identity-provider-redirector','master','68e10f8f-ee12-4bc1-afe1-b95327619e38',2,25,_binary '\0',NULL,NULL),('79a024f5-373d-40a0-9fd2-fb0896716984',NULL,'auth-spnego','master','f8827502-d55c-479a-ac68-5ab4be036c60',3,30,_binary '\0',NULL,NULL),('7aa8c61f-5cfe-4b29-9d25-f389065db9e0',NULL,'auth-otp-form','Paris','b450865f-3a2c-4180-b55d-c222822ea588',0,20,_binary '\0',NULL,NULL),('7b4f2a37-fff5-40ce-a5a0-0465cf42ebad',NULL,'docker-http-basic-authenticator','Paris','d951a7b7-a7fc-4f02-8a9b-0173f2465007',0,10,_binary '\0',NULL,NULL),('7c81bc40-a2b8-4ee2-af91-601d442d2344',NULL,'conditional-user-configured','Paris','c49991fb-3707-4bbf-930b-2ecf450357f8',0,10,_binary '\0',NULL,NULL),('7e57906d-74f0-4c78-b956-83760c92c2b4',NULL,'client-secret','Paris','073dcf56-7d66-4cd1-86f0-beb90e10e15a',2,10,_binary '\0',NULL,NULL),('7ed3abea-e2b7-469e-9c90-2206fda9589e',NULL,NULL,'master','68e10f8f-ee12-4bc1-afe1-b95327619e38',2,30,_binary '','ec494558-ea82-4d92-b8d9-e9d217e58ce9',NULL),('7f73097e-d8bc-45a4-a8e8-161514280e9a',NULL,'identity-provider-redirector','Paris','e138699f-85eb-4deb-b468-89700860bdc9',2,25,_binary '\0',NULL,NULL),('82639f2d-d95f-4182-8e53-f7ec98b340ea',NULL,'auth-username-password-form','Paris','7a8153c9-ef45-4aca-8fe9-f9633c988402',0,10,_binary '\0',NULL,NULL),('827c2d7d-08df-4ac5-be8a-4dc5c8c3a13f',NULL,'registration-user-creation','Paris','41ea851a-0f7e-4a77-87a6-056420d5763c',0,20,_binary '\0',NULL,NULL),('875dc3e2-b18a-4437-98d0-96c99ba15a9a',NULL,'conditional-user-configured','master','4af9124d-03ae-4ce9-8558-1f5f1c331790',0,10,_binary '\0',NULL,NULL),('8965eaa4-9652-432b-b595-10cc9efabb80',NULL,'client-secret-jwt','master','7048876d-c317-419e-a65b-8694caaab3ef',2,30,_binary '\0',NULL,NULL),('8bae7f37-a97b-43b5-a984-a51510cf577a',NULL,NULL,'Paris','3ed66797-d897-42ed-beae-604c69e16b50',1,30,_binary '','4e20a9a7-97b0-422b-87eb-317696893f6c',NULL),('923a8b66-f47b-4b2a-abe4-3435ef22f168',NULL,'auth-otp-form','master','8279f6af-fd4d-4050-8c0d-cd4dac12359d',0,20,_binary '\0',NULL,NULL),('92f4b529-9e39-44c8-b2d9-58ae78df68e5',NULL,'no-cookie-redirect','master','1a783e5c-f5f1-4772-af4a-5fe011b670d1',0,10,_binary '\0',NULL,NULL),('93bccf72-f1ec-4f77-8d17-29177827138f',NULL,NULL,'master','340304d5-af3e-4678-b425-20ceba497178',1,40,_binary '','1d99c1b9-8572-448e-9fd4-d99b1f6f452d',NULL),('9a4c5326-744d-4cc1-b946-1f021c882d65',NULL,'basic-auth-otp','Paris','4cf45a14-b55f-474b-9407-3874aed402da',3,20,_binary '\0',NULL,NULL),('9ad1361b-cfa5-4f66-aefd-91d462aa1bdd',NULL,'direct-grant-validate-password','Paris','3ed66797-d897-42ed-beae-604c69e16b50',0,20,_binary '\0',NULL,NULL),('9b814a80-fb4a-4a1a-9027-1515e6cc68ff',NULL,NULL,'Paris','e138699f-85eb-4deb-b468-89700860bdc9',2,30,_binary '','7a8153c9-ef45-4aca-8fe9-f9633c988402',NULL),('9c222e36-adf9-41ed-8499-c91532a671de',NULL,NULL,'Paris','62c005f5-e49f-45d6-9940-73e9fa2e94a8',1,40,_binary '','ebab224b-7573-4513-b715-7242e90001f8',NULL),('9eee97aa-e04c-4295-8139-a4392b178969',NULL,'basic-auth-otp','master','f8827502-d55c-479a-ac68-5ab4be036c60',3,20,_binary '\0',NULL,NULL),('a26daa78-e10e-47fc-bba8-e861ff4e20f9',NULL,'no-cookie-redirect','Paris','23f510a0-fac4-410c-a1af-479a54923ec8',0,10,_binary '\0',NULL,NULL),('a5a08448-a3bd-449f-8c08-222fafc6826a',NULL,'reset-password','master','340304d5-af3e-4678-b425-20ceba497178',0,30,_binary '\0',NULL,NULL),('ab1d7ba6-ca1f-453b-bba7-26ba69799dd1',NULL,'auth-username-password-form','master','ec494558-ea82-4d92-b8d9-e9d217e58ce9',0,10,_binary '\0',NULL,NULL),('ab9abc0f-4e67-4964-a051-6f3dd4d0130e',NULL,'docker-http-basic-authenticator','master','31be78b4-e9c6-498b-b2b7-c3674a01c069',0,10,_binary '\0',NULL,NULL),('b68e22fa-0e78-447d-aefd-bd2a18b88907',NULL,NULL,'master','e48a0aba-20d1-49c5-9259-7761c4bc57a3',2,20,_binary '','77faf238-6781-4ee9-8da7-1d527076d8a6',NULL),('b71663fe-9a4d-4bf3-8cba-05783cb22116',NULL,NULL,'master','e86ea9d9-795b-4f20-b148-45f4c3dd46d5',2,20,_binary '','9a86757e-efc9-49c6-993b-8ec7cfae0143',NULL),('b84bf7ed-409a-4b18-bbbb-6b0ec667acfa',NULL,'basic-auth','master','f8827502-d55c-479a-ac68-5ab4be036c60',0,10,_binary '\0',NULL,NULL),('bb05712a-ca97-4416-9a24-51294104d599',NULL,NULL,'Paris','fba2beee-ccdc-47c9-8e3e-3705a815c2c7',2,20,_binary '','61578bf6-0e8f-40e3-8906-6ecb4dcb6756',NULL),('be597d9f-f011-4d36-9d45-01d31d010194',NULL,'client-jwt','master','7048876d-c317-419e-a65b-8694caaab3ef',2,20,_binary '\0',NULL,NULL),('bf675512-1811-422a-b75f-57e7dd26657f',NULL,'idp-confirm-link','master','9a86757e-efc9-49c6-993b-8ec7cfae0143',0,10,_binary '\0',NULL,NULL),('c07f59b1-daaf-4678-891d-6b3fe3289e1b',NULL,'reset-otp','master','1d99c1b9-8572-448e-9fd4-d99b1f6f452d',0,20,_binary '\0',NULL,NULL),('c3c2d25a-16ec-4576-8e8a-ce83b87062a9',NULL,'idp-review-profile','master','a97b975d-db29-407d-aeb5-5b8fc84ef87e',0,10,_binary '\0',NULL,'c8cf80fc-28f4-40d4-9bd0-cadd38b8d945'),('c451a29d-7e8d-4ffa-92df-0f9c85afb376',NULL,'client-x509','master','7048876d-c317-419e-a65b-8694caaab3ef',2,40,_binary '\0',NULL,NULL),('c5460be7-28ca-449d-81b0-ce891fe82c68',NULL,'registration-profile-action','Paris','41ea851a-0f7e-4a77-87a6-056420d5763c',0,40,_binary '\0',NULL,NULL),('c755ef4b-6dbf-4038-bc61-c523b84a8f40',NULL,'http-basic-authenticator','master','e333ec1f-e2e3-41f9-bc2c-144e918ee693',0,10,_binary '\0',NULL,NULL),('c8985296-03e1-4318-bdb6-b79a42de3ec8',NULL,'reset-credential-email','Paris','62c005f5-e49f-45d6-9940-73e9fa2e94a8',0,20,_binary '\0',NULL,NULL),('ca694524-6d8f-42ab-adfa-e3d9e9af9027',NULL,'conditional-user-configured','Paris','ebab224b-7573-4513-b715-7242e90001f8',0,10,_binary '\0',NULL,NULL),('cbe484a8-e115-4618-ae09-0b82fd190a35',NULL,'auth-spnego','master','68e10f8f-ee12-4bc1-afe1-b95327619e38',3,20,_binary '\0',NULL,NULL),('cc4aecac-8874-4846-84a1-c33b8b545c64',NULL,NULL,'Paris','61578bf6-0e8f-40e3-8906-6ecb4dcb6756',1,20,_binary '','c49991fb-3707-4bbf-930b-2ecf450357f8',NULL),('cf078e40-1e28-4121-980f-bd9009b67660',NULL,'reset-credentials-choose-user','Paris','62c005f5-e49f-45d6-9940-73e9fa2e94a8',0,10,_binary '\0',NULL,NULL),('d1e2cf75-689d-4f31-9e2d-13055101cd3d',NULL,'idp-username-password-form','Paris','61578bf6-0e8f-40e3-8906-6ecb4dcb6756',0,10,_binary '\0',NULL,NULL),('d1e6389a-0820-46e4-b96f-c4114e955e94',NULL,NULL,'master','77faf238-6781-4ee9-8da7-1d527076d8a6',1,20,_binary '','8279f6af-fd4d-4050-8c0d-cd4dac12359d',NULL),('d2a5b81d-7027-43de-aaee-1bfd0fb09248',NULL,'client-secret','master','7048876d-c317-419e-a65b-8694caaab3ef',2,10,_binary '\0',NULL,NULL),('d9d47554-b515-4f08-b63d-180c151ff649',NULL,'idp-review-profile','Paris','24bdccc1-001d-4c65-819f-dfedf0de1a91',0,10,_binary '\0',NULL,'2c4e7563-c33a-4403-baf3-1434973a0e39'),('da5092e6-086b-4607-8a94-63e8b86c9784',NULL,'registration-user-creation','master','0a26590a-5a9b-4af6-877e-f15f86d9fd8f',0,20,_binary '\0',NULL,NULL),('db2bbc40-184e-499d-bdea-02203953d031',NULL,'reset-credential-email','master','340304d5-af3e-4678-b425-20ceba497178',0,20,_binary '\0',NULL,NULL),('e1f5ec43-122f-4766-9170-1fa7bb9b2f4a',NULL,'idp-username-password-form','master','77faf238-6781-4ee9-8da7-1d527076d8a6',0,10,_binary '\0',NULL,NULL),('e3a7efbd-08ca-4d26-a685-7daabec52ac4',NULL,'registration-recaptcha-action','Paris','41ea851a-0f7e-4a77-87a6-056420d5763c',3,60,_binary '\0',NULL,NULL),('e7583d08-8a75-4b45-8fa4-c33bd8377af8',NULL,'auth-otp-form','master','4af9124d-03ae-4ce9-8558-1f5f1c331790',0,20,_binary '\0',NULL,NULL),('ea94ca7f-7a94-4c92-b2f9-e6989a84f6cb',NULL,'idp-create-user-if-unique','Paris','d0c66fb7-f659-4669-9b6d-12d5a5afc317',2,10,_binary '\0',NULL,'cb60c4b5-a8e0-4b48-b89e-19de494286a4'),('ef5f137b-ba6a-4d63-af1a-a96a963d9482',NULL,NULL,'Paris','d0c66fb7-f659-4669-9b6d-12d5a5afc317',2,20,_binary '','ca8ca2c4-9da7-4758-ba30-b8227b82e225',NULL),('f15c0633-b7bf-48d9-9e35-563471a669a1',NULL,NULL,'master','ec494558-ea82-4d92-b8d9-e9d217e58ce9',1,20,_binary '','4af9124d-03ae-4ce9-8558-1f5f1c331790',NULL),('f3372199-6e06-4347-843a-b8b27236854f',NULL,NULL,'master','9a86757e-efc9-49c6-993b-8ec7cfae0143',0,20,_binary '','e48a0aba-20d1-49c5-9259-7761c4bc57a3',NULL),('f3f5c276-c863-4a31-a5a4-ce4e680940ae',NULL,'registration-password-action','master','0a26590a-5a9b-4af6-877e-f15f86d9fd8f',0,50,_binary '\0',NULL,NULL),('f59b8bce-2f4f-477c-8e56-d02e08970c4f',NULL,'idp-create-user-if-unique','master','e86ea9d9-795b-4f20-b148-45f4c3dd46d5',2,10,_binary '\0',NULL,'a82a26c4-1460-4024-8b8d-7821da8b0d7f'),('f5a611d9-d354-4ec7-addf-c3a1e0036afb',NULL,'auth-cookie','Paris','e138699f-85eb-4deb-b468-89700860bdc9',2,10,_binary '\0',NULL,NULL),('f8bebe58-3d03-46ec-b4e3-d4cdf0d9d5a1',NULL,'registration-page-form','master','7bfc9c6a-2a40-48e4-8330-ef101bec5feb',0,10,_binary '','0a26590a-5a9b-4af6-877e-f15f86d9fd8f',NULL),('f99d1044-1b24-4270-b8b6-fc8a62ba9739',NULL,NULL,'Paris','ca8ca2c4-9da7-4758-ba30-b8227b82e225',0,20,_binary '','fba2beee-ccdc-47c9-8e3e-3705a815c2c7',NULL),('febf8e8b-70b4-462d-b684-b883d75eaeed',NULL,'conditional-user-configured','master','1d99c1b9-8572-448e-9fd4-d99b1f6f452d',0,10,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATION_FLOW`
--

DROP TABLE IF EXISTS `AUTHENTICATION_FLOW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('073dcf56-7d66-4cd1-86f0-beb90e10e15a','clients','Base authentication for clients','Paris','client-flow',_binary '',_binary ''),('0a26590a-5a9b-4af6-877e-f15f86d9fd8f','registration form','registration form','master','form-flow',_binary '\0',_binary ''),('197dbf75-b4a3-4986-8670-bc6d81bda8fc','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','master','basic-flow',_binary '\0',_binary ''),('1a783e5c-f5f1-4772-af4a-5fe011b670d1','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','master','basic-flow',_binary '',_binary ''),('1d99c1b9-8572-448e-9fd4-d99b1f6f452d','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','master','basic-flow',_binary '\0',_binary ''),('23f510a0-fac4-410c-a1af-479a54923ec8','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','Paris','basic-flow',_binary '',_binary ''),('24bdccc1-001d-4c65-819f-dfedf0de1a91','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','Paris','basic-flow',_binary '',_binary ''),('31be78b4-e9c6-498b-b2b7-c3674a01c069','docker auth','Used by Docker clients to authenticate against the IDP','master','basic-flow',_binary '',_binary ''),('340304d5-af3e-4678-b425-20ceba497178','reset credentials','Reset credentials for a user if they forgot their password or something','master','basic-flow',_binary '',_binary ''),('3ed66797-d897-42ed-beae-604c69e16b50','direct grant','OpenID Connect Resource Owner Grant','Paris','basic-flow',_binary '',_binary ''),('41ea851a-0f7e-4a77-87a6-056420d5763c','registration form','registration form','Paris','form-flow',_binary '\0',_binary ''),('4af9124d-03ae-4ce9-8558-1f5f1c331790','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','master','basic-flow',_binary '\0',_binary ''),('4cf45a14-b55f-474b-9407-3874aed402da','Authentication Options','Authentication options.','Paris','basic-flow',_binary '\0',_binary ''),('4e20a9a7-97b0-422b-87eb-317696893f6c','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','Paris','basic-flow',_binary '\0',_binary ''),('61578bf6-0e8f-40e3-8906-6ecb4dcb6756','Verify Existing Account by Re-authentication','Reauthentication of existing account','Paris','basic-flow',_binary '\0',_binary ''),('62c005f5-e49f-45d6-9940-73e9fa2e94a8','reset credentials','Reset credentials for a user if they forgot their password or something','Paris','basic-flow',_binary '',_binary ''),('673aef93-5589-4e70-8298-129f631154ce','direct grant','OpenID Connect Resource Owner Grant','master','basic-flow',_binary '',_binary ''),('68e10f8f-ee12-4bc1-afe1-b95327619e38','browser','browser based authentication','master','basic-flow',_binary '',_binary ''),('7048876d-c317-419e-a65b-8694caaab3ef','clients','Base authentication for clients','master','client-flow',_binary '',_binary ''),('77faf238-6781-4ee9-8da7-1d527076d8a6','Verify Existing Account by Re-authentication','Reauthentication of existing account','master','basic-flow',_binary '\0',_binary ''),('7a8153c9-ef45-4aca-8fe9-f9633c988402','forms','Username, password, otp and other auth forms.','Paris','basic-flow',_binary '\0',_binary ''),('7bfc9c6a-2a40-48e4-8330-ef101bec5feb','registration','registration flow','master','basic-flow',_binary '',_binary ''),('8279f6af-fd4d-4050-8c0d-cd4dac12359d','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','master','basic-flow',_binary '\0',_binary ''),('9a86757e-efc9-49c6-993b-8ec7cfae0143','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','master','basic-flow',_binary '\0',_binary ''),('a2a6d8b2-1b6b-4228-9eaa-101d075f985c','registration','registration flow','Paris','basic-flow',_binary '',_binary ''),('a97b975d-db29-407d-aeb5-5b8fc84ef87e','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','master','basic-flow',_binary '',_binary ''),('b450865f-3a2c-4180-b55d-c222822ea588','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','Paris','basic-flow',_binary '\0',_binary ''),('c49991fb-3707-4bbf-930b-2ecf450357f8','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','Paris','basic-flow',_binary '\0',_binary ''),('ca8ca2c4-9da7-4758-ba30-b8227b82e225','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','Paris','basic-flow',_binary '\0',_binary ''),('d0c66fb7-f659-4669-9b6d-12d5a5afc317','User creation or linking','Flow for the existing/non-existing user alternatives','Paris','basic-flow',_binary '\0',_binary ''),('d951a7b7-a7fc-4f02-8a9b-0173f2465007','docker auth','Used by Docker clients to authenticate against the IDP','Paris','basic-flow',_binary '',_binary ''),('e138699f-85eb-4deb-b468-89700860bdc9','browser','browser based authentication','Paris','basic-flow',_binary '',_binary ''),('e333ec1f-e2e3-41f9-bc2c-144e918ee693','saml ecp','SAML ECP Profile Authentication Flow','master','basic-flow',_binary '',_binary ''),('e48a0aba-20d1-49c5-9259-7761c4bc57a3','Account verification options','Method with which to verity the existing account','master','basic-flow',_binary '\0',_binary ''),('e86ea9d9-795b-4f20-b148-45f4c3dd46d5','User creation or linking','Flow for the existing/non-existing user alternatives','master','basic-flow',_binary '\0',_binary ''),('ebab224b-7573-4513-b715-7242e90001f8','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','Paris','basic-flow',_binary '\0',_binary ''),('ec494558-ea82-4d92-b8d9-e9d217e58ce9','forms','Username, password, otp and other auth forms.','master','basic-flow',_binary '\0',_binary ''),('f8827502-d55c-479a-ac68-5ab4be036c60','Authentication Options','Authentication options.','master','basic-flow',_binary '\0',_binary ''),('fba2beee-ccdc-47c9-8e3e-3705a815c2c7','Account verification options','Method with which to verity the existing account','Paris','basic-flow',_binary '\0',_binary ''),('fff700e7-8026-4d9b-a808-cbd87a40f146','saml ecp','SAML ECP Profile Authentication Flow','Paris','basic-flow',_binary '',_binary '');
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('2c4e7563-c33a-4403-baf3-1434973a0e39','review profile config','Paris'),('a82a26c4-1460-4024-8b8d-7821da8b0d7f','create unique user config','master'),('c8cf80fc-28f4-40d4-9bd0-cadd38b8d945','review profile config','master'),('cb60c4b5-a8e0-4b48-b89e-19de494286a4','create unique user config','Paris');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG_ENTRY`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG_ENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATOR_CONFIG_ENTRY` (
  `AUTHENTICATOR_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`AUTHENTICATOR_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('2c4e7563-c33a-4403-baf3-1434973a0e39','missing','update.profile.on.first.login'),('a82a26c4-1460-4024-8b8d-7821da8b0d7f','false','require.password.update.after.registration'),('c8cf80fc-28f4-40d4-9bd0-cadd38b8d945','missing','update.profile.on.first.login'),('cb60c4b5-a8e0-4b48-b89e-19de494286a4','false','require.password.update.after.registration');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BROKER_LINK`
--

DROP TABLE IF EXISTS `BROKER_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BROKER_LINK` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  `BROKER_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT` (
  `ID` varchar(36) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `FULL_SCOPE_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int DEFAULT NULL,
  `PUBLIC_CLIENT` bit(1) NOT NULL DEFAULT b'0',
  `SECRET` varchar(255) DEFAULT NULL,
  `BASE_URL` varchar(255) DEFAULT NULL,
  `BEARER_ONLY` bit(1) NOT NULL DEFAULT b'0',
  `MANAGEMENT_URL` varchar(255) DEFAULT NULL,
  `SURROGATE_AUTH_REQUIRED` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `NODE_REREG_TIMEOUT` int DEFAULT '0',
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
INSERT INTO `CLIENT` VALUES ('0223e96b-970c-4c51-b5a4-8506a6796495',_binary '',_binary '\0','paris-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','master',NULL,0,_binary '\0',_binary '\0','paris Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('06659433-c299-4183-af48-a8ab8f7df65b',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/Paris/account/',_binary '\0',NULL,_binary '\0','Paris','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('231e6435-1c21-4016-9945-e3aa6fc5cf7e',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/paris/account/',_binary '\0',NULL,_binary '\0','Paris','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('8f8ef5da-0e40-4034-96e9-203878205f27',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/master/account/',_binary '\0',NULL,_binary '\0','master','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','Paris','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('b741f744-8388-4233-9edc-c9f2ed49016e',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/master/console/',_binary '\0',NULL,_binary '\0','master','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('c0a41b9a-c749-41b3-8d6d-308d6d945245',_binary '',_binary '','moncompte',0,_binary '\0','moncompte',NULL,_binary '\0',NULL,_binary '\0','Paris','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '',_binary '\0','realm-management',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','Paris','openid-connect',0,_binary '\0',_binary '\0','${client_realm-management}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('d2080247-3c8e-489c-a66f-b905d421a5d8',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','master','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('d6531404-964c-457c-bf14-5213c9d58277',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','master','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('d80a596d-3318-4854-a213-05b80614bf0a',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','Paris','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/paris/console/',_binary '\0',NULL,_binary '\0','Paris','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '',_binary '\0','master-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','master',NULL,0,_binary '\0',_binary '\0','master Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/master/account/',_binary '\0',NULL,_binary '\0','master','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0');
/*!40000 ALTER TABLE `CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_ATTRIBUTES` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` text,
  `NAME` varchar(255) NOT NULL,
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
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('06659433-c299-4183-af48-a8ab8f7df65b','S256','pkce.code.challenge.method'),('b741f744-8388-4233-9edc-c9f2ed49016e','S256','pkce.code.challenge.method'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','backchannel.logout.revoke.offline.tokens'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','true','backchannel.logout.session.required'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','client_credentials.use_refresh_token'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','display.on.consent.screen'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','exclude.session.state.from.auth.response'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','id.token.as.detached.signature'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','oauth2.device.authorization.grant.enabled'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','oidc.ciba.grant.enabled'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','require.pushed.authorization.requests'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','saml_force_name_id_format'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','saml.artifact.binding'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','saml.assertion.signature'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','saml.authnstatement'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','saml.client.signature'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','saml.encrypt'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','saml.force.post.binding'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','saml.multivalued.roles'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','saml.onetimeuse.condition'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','saml.server.signature'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','saml.server.signature.keyinfo.ext'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','false','tls.client.certificate.bound.access.tokens'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','true','use.refresh.tokens'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','S256','pkce.code.challenge.method'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','S256','pkce.code.challenge.method');
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_AUTH_FLOW_BINDINGS`
--

DROP TABLE IF EXISTS `CLIENT_AUTH_FLOW_BINDINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_INITIAL_ACCESS` (
  `ID` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `TIMESTAMP` int DEFAULT NULL,
  `EXPIRATION` int DEFAULT NULL,
  `COUNT` int DEFAULT NULL,
  `REMAINING_COUNT` int DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_NODE_REGISTRATIONS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` int DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `CLIENT_SCOPE` VALUES ('1d82bc89-0f68-4510-971d-208d3b2d9a13','microprofile-jwt','Paris','Microprofile - JWT built-in scope','openid-connect'),('2ed830d4-caa4-41e9-82cb-3200561c1b54','profile','master','OpenID Connect built-in scope: profile','openid-connect'),('38173258-170f-4234-b4e1-d36b76285ac8','email','master','OpenID Connect built-in scope: email','openid-connect'),('51423d88-6b80-4d5e-90f3-1f45881070fc','profile','Paris','OpenID Connect built-in scope: profile','openid-connect'),('5c90e0b5-9ea0-445e-ba41-774564be8f4c','role_list','master','SAML role list','saml'),('64321cde-4a9c-4074-9a8d-22ecc9d73420','phone','master','OpenID Connect built-in scope: phone','openid-connect'),('7842b7cc-8938-4358-b24a-197c4666b43e','microprofile-jwt','master','Microprofile - JWT built-in scope','openid-connect'),('a8530866-bec1-4b19-8e9b-95217356dd72','web-origins','master','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('b4049566-b59c-4c79-b942-9dbc5765529f','roles','Paris','OpenID Connect scope for add user roles to the access token','openid-connect'),('bc65e701-b843-4a2e-a9d4-c86541c8a256','web-origins','Paris','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('c466874a-96aa-4023-a650-19796ca583d6','address','Paris','OpenID Connect built-in scope: address','openid-connect'),('c713ec71-38d0-4cca-9f20-6890428fd140','role_list','Paris','SAML role list','saml'),('cc08e286-9e53-415d-9ca1-02f5653616e3','address','master','OpenID Connect built-in scope: address','openid-connect'),('d83a1ba7-009a-41c5-8635-25e5e7801cd7','email','Paris','OpenID Connect built-in scope: email','openid-connect'),('e1f4cb60-dcce-45ed-b471-d90ecf39e161','phone','Paris','OpenID Connect built-in scope: phone','openid-connect'),('e566e070-dab2-4c1e-9737-86796cdc42f6','roles','master','OpenID Connect scope for add user roles to the access token','openid-connect'),('f303a48d-0361-4e5c-8894-1088319e16c1','offline_access','master','OpenID Connect built-in scope: offline_access','openid-connect'),('f633124f-deb0-45fc-9330-2aa478c8ec86','offline_access','Paris','OpenID Connect built-in scope: offline_access','openid-connect');
/*!40000 ALTER TABLE `CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SCOPE_ATTRIBUTES` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `VALUE` text,
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
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('1d82bc89-0f68-4510-971d-208d3b2d9a13','false','display.on.consent.screen'),('1d82bc89-0f68-4510-971d-208d3b2d9a13','true','include.in.token.scope'),('2ed830d4-caa4-41e9-82cb-3200561c1b54','${profileScopeConsentText}','consent.screen.text'),('2ed830d4-caa4-41e9-82cb-3200561c1b54','true','display.on.consent.screen'),('2ed830d4-caa4-41e9-82cb-3200561c1b54','true','include.in.token.scope'),('38173258-170f-4234-b4e1-d36b76285ac8','${emailScopeConsentText}','consent.screen.text'),('38173258-170f-4234-b4e1-d36b76285ac8','true','display.on.consent.screen'),('38173258-170f-4234-b4e1-d36b76285ac8','true','include.in.token.scope'),('51423d88-6b80-4d5e-90f3-1f45881070fc','${profileScopeConsentText}','consent.screen.text'),('51423d88-6b80-4d5e-90f3-1f45881070fc','true','display.on.consent.screen'),('51423d88-6b80-4d5e-90f3-1f45881070fc','true','include.in.token.scope'),('5c90e0b5-9ea0-445e-ba41-774564be8f4c','${samlRoleListScopeConsentText}','consent.screen.text'),('5c90e0b5-9ea0-445e-ba41-774564be8f4c','true','display.on.consent.screen'),('64321cde-4a9c-4074-9a8d-22ecc9d73420','${phoneScopeConsentText}','consent.screen.text'),('64321cde-4a9c-4074-9a8d-22ecc9d73420','true','display.on.consent.screen'),('64321cde-4a9c-4074-9a8d-22ecc9d73420','true','include.in.token.scope'),('7842b7cc-8938-4358-b24a-197c4666b43e','false','display.on.consent.screen'),('7842b7cc-8938-4358-b24a-197c4666b43e','true','include.in.token.scope'),('a8530866-bec1-4b19-8e9b-95217356dd72','','consent.screen.text'),('a8530866-bec1-4b19-8e9b-95217356dd72','false','display.on.consent.screen'),('a8530866-bec1-4b19-8e9b-95217356dd72','false','include.in.token.scope'),('b4049566-b59c-4c79-b942-9dbc5765529f','${rolesScopeConsentText}','consent.screen.text'),('b4049566-b59c-4c79-b942-9dbc5765529f','true','display.on.consent.screen'),('b4049566-b59c-4c79-b942-9dbc5765529f','false','include.in.token.scope'),('bc65e701-b843-4a2e-a9d4-c86541c8a256','','consent.screen.text'),('bc65e701-b843-4a2e-a9d4-c86541c8a256','false','display.on.consent.screen'),('bc65e701-b843-4a2e-a9d4-c86541c8a256','false','include.in.token.scope'),('c466874a-96aa-4023-a650-19796ca583d6','${addressScopeConsentText}','consent.screen.text'),('c466874a-96aa-4023-a650-19796ca583d6','true','display.on.consent.screen'),('c466874a-96aa-4023-a650-19796ca583d6','true','include.in.token.scope'),('c713ec71-38d0-4cca-9f20-6890428fd140','${samlRoleListScopeConsentText}','consent.screen.text'),('c713ec71-38d0-4cca-9f20-6890428fd140','true','display.on.consent.screen'),('cc08e286-9e53-415d-9ca1-02f5653616e3','${addressScopeConsentText}','consent.screen.text'),('cc08e286-9e53-415d-9ca1-02f5653616e3','true','display.on.consent.screen'),('cc08e286-9e53-415d-9ca1-02f5653616e3','true','include.in.token.scope'),('d83a1ba7-009a-41c5-8635-25e5e7801cd7','${emailScopeConsentText}','consent.screen.text'),('d83a1ba7-009a-41c5-8635-25e5e7801cd7','true','display.on.consent.screen'),('d83a1ba7-009a-41c5-8635-25e5e7801cd7','true','include.in.token.scope'),('e1f4cb60-dcce-45ed-b471-d90ecf39e161','${phoneScopeConsentText}','consent.screen.text'),('e1f4cb60-dcce-45ed-b471-d90ecf39e161','true','display.on.consent.screen'),('e1f4cb60-dcce-45ed-b471-d90ecf39e161','true','include.in.token.scope'),('e566e070-dab2-4c1e-9737-86796cdc42f6','${rolesScopeConsentText}','consent.screen.text'),('e566e070-dab2-4c1e-9737-86796cdc42f6','true','display.on.consent.screen'),('e566e070-dab2-4c1e-9737-86796cdc42f6','false','include.in.token.scope'),('f303a48d-0361-4e5c-8894-1088319e16c1','${offlineAccessScopeConsentText}','consent.screen.text'),('f303a48d-0361-4e5c-8894-1088319e16c1','true','display.on.consent.screen'),('f633124f-deb0-45fc-9330-2aa478c8ec86','${offlineAccessScopeConsentText}','consent.screen.text'),('f633124f-deb0-45fc-9330-2aa478c8ec86','true','display.on.consent.screen');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_CLIENT`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('06659433-c299-4183-af48-a8ab8f7df65b','1d82bc89-0f68-4510-971d-208d3b2d9a13',_binary '\0'),('06659433-c299-4183-af48-a8ab8f7df65b','51423d88-6b80-4d5e-90f3-1f45881070fc',_binary ''),('06659433-c299-4183-af48-a8ab8f7df65b','b4049566-b59c-4c79-b942-9dbc5765529f',_binary ''),('06659433-c299-4183-af48-a8ab8f7df65b','bc65e701-b843-4a2e-a9d4-c86541c8a256',_binary ''),('06659433-c299-4183-af48-a8ab8f7df65b','c466874a-96aa-4023-a650-19796ca583d6',_binary '\0'),('06659433-c299-4183-af48-a8ab8f7df65b','d83a1ba7-009a-41c5-8635-25e5e7801cd7',_binary ''),('06659433-c299-4183-af48-a8ab8f7df65b','e1f4cb60-dcce-45ed-b471-d90ecf39e161',_binary '\0'),('06659433-c299-4183-af48-a8ab8f7df65b','f633124f-deb0-45fc-9330-2aa478c8ec86',_binary '\0'),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','1d82bc89-0f68-4510-971d-208d3b2d9a13',_binary '\0'),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','51423d88-6b80-4d5e-90f3-1f45881070fc',_binary ''),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','b4049566-b59c-4c79-b942-9dbc5765529f',_binary ''),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','bc65e701-b843-4a2e-a9d4-c86541c8a256',_binary ''),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','c466874a-96aa-4023-a650-19796ca583d6',_binary '\0'),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','d83a1ba7-009a-41c5-8635-25e5e7801cd7',_binary ''),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','e1f4cb60-dcce-45ed-b471-d90ecf39e161',_binary '\0'),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','f633124f-deb0-45fc-9330-2aa478c8ec86',_binary '\0'),('8f8ef5da-0e40-4034-96e9-203878205f27','2ed830d4-caa4-41e9-82cb-3200561c1b54',_binary ''),('8f8ef5da-0e40-4034-96e9-203878205f27','38173258-170f-4234-b4e1-d36b76285ac8',_binary ''),('8f8ef5da-0e40-4034-96e9-203878205f27','64321cde-4a9c-4074-9a8d-22ecc9d73420',_binary '\0'),('8f8ef5da-0e40-4034-96e9-203878205f27','7842b7cc-8938-4358-b24a-197c4666b43e',_binary '\0'),('8f8ef5da-0e40-4034-96e9-203878205f27','a8530866-bec1-4b19-8e9b-95217356dd72',_binary ''),('8f8ef5da-0e40-4034-96e9-203878205f27','cc08e286-9e53-415d-9ca1-02f5653616e3',_binary '\0'),('8f8ef5da-0e40-4034-96e9-203878205f27','e566e070-dab2-4c1e-9737-86796cdc42f6',_binary ''),('8f8ef5da-0e40-4034-96e9-203878205f27','f303a48d-0361-4e5c-8894-1088319e16c1',_binary '\0'),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','1d82bc89-0f68-4510-971d-208d3b2d9a13',_binary '\0'),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','51423d88-6b80-4d5e-90f3-1f45881070fc',_binary ''),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','b4049566-b59c-4c79-b942-9dbc5765529f',_binary ''),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','bc65e701-b843-4a2e-a9d4-c86541c8a256',_binary ''),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','c466874a-96aa-4023-a650-19796ca583d6',_binary '\0'),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','d83a1ba7-009a-41c5-8635-25e5e7801cd7',_binary ''),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','e1f4cb60-dcce-45ed-b471-d90ecf39e161',_binary '\0'),('a193c083-b7c1-4ece-a6c9-4bb616a12ef9','f633124f-deb0-45fc-9330-2aa478c8ec86',_binary '\0'),('b741f744-8388-4233-9edc-c9f2ed49016e','2ed830d4-caa4-41e9-82cb-3200561c1b54',_binary ''),('b741f744-8388-4233-9edc-c9f2ed49016e','38173258-170f-4234-b4e1-d36b76285ac8',_binary ''),('b741f744-8388-4233-9edc-c9f2ed49016e','64321cde-4a9c-4074-9a8d-22ecc9d73420',_binary '\0'),('b741f744-8388-4233-9edc-c9f2ed49016e','7842b7cc-8938-4358-b24a-197c4666b43e',_binary '\0'),('b741f744-8388-4233-9edc-c9f2ed49016e','a8530866-bec1-4b19-8e9b-95217356dd72',_binary ''),('b741f744-8388-4233-9edc-c9f2ed49016e','cc08e286-9e53-415d-9ca1-02f5653616e3',_binary '\0'),('b741f744-8388-4233-9edc-c9f2ed49016e','e566e070-dab2-4c1e-9737-86796cdc42f6',_binary ''),('b741f744-8388-4233-9edc-c9f2ed49016e','f303a48d-0361-4e5c-8894-1088319e16c1',_binary '\0'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','1d82bc89-0f68-4510-971d-208d3b2d9a13',_binary '\0'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','51423d88-6b80-4d5e-90f3-1f45881070fc',_binary ''),('c0a41b9a-c749-41b3-8d6d-308d6d945245','b4049566-b59c-4c79-b942-9dbc5765529f',_binary ''),('c0a41b9a-c749-41b3-8d6d-308d6d945245','bc65e701-b843-4a2e-a9d4-c86541c8a256',_binary ''),('c0a41b9a-c749-41b3-8d6d-308d6d945245','c466874a-96aa-4023-a650-19796ca583d6',_binary '\0'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','d83a1ba7-009a-41c5-8635-25e5e7801cd7',_binary ''),('c0a41b9a-c749-41b3-8d6d-308d6d945245','e1f4cb60-dcce-45ed-b471-d90ecf39e161',_binary '\0'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','f633124f-deb0-45fc-9330-2aa478c8ec86',_binary '\0'),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','1d82bc89-0f68-4510-971d-208d3b2d9a13',_binary '\0'),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','51423d88-6b80-4d5e-90f3-1f45881070fc',_binary ''),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','b4049566-b59c-4c79-b942-9dbc5765529f',_binary ''),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','bc65e701-b843-4a2e-a9d4-c86541c8a256',_binary ''),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','c466874a-96aa-4023-a650-19796ca583d6',_binary '\0'),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','d83a1ba7-009a-41c5-8635-25e5e7801cd7',_binary ''),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','e1f4cb60-dcce-45ed-b471-d90ecf39e161',_binary '\0'),('cd15f654-fa6b-4e95-a3f8-1739051bcf41','f633124f-deb0-45fc-9330-2aa478c8ec86',_binary '\0'),('d2080247-3c8e-489c-a66f-b905d421a5d8','2ed830d4-caa4-41e9-82cb-3200561c1b54',_binary ''),('d2080247-3c8e-489c-a66f-b905d421a5d8','38173258-170f-4234-b4e1-d36b76285ac8',_binary ''),('d2080247-3c8e-489c-a66f-b905d421a5d8','64321cde-4a9c-4074-9a8d-22ecc9d73420',_binary '\0'),('d2080247-3c8e-489c-a66f-b905d421a5d8','7842b7cc-8938-4358-b24a-197c4666b43e',_binary '\0'),('d2080247-3c8e-489c-a66f-b905d421a5d8','a8530866-bec1-4b19-8e9b-95217356dd72',_binary ''),('d2080247-3c8e-489c-a66f-b905d421a5d8','cc08e286-9e53-415d-9ca1-02f5653616e3',_binary '\0'),('d2080247-3c8e-489c-a66f-b905d421a5d8','e566e070-dab2-4c1e-9737-86796cdc42f6',_binary ''),('d2080247-3c8e-489c-a66f-b905d421a5d8','f303a48d-0361-4e5c-8894-1088319e16c1',_binary '\0'),('d6531404-964c-457c-bf14-5213c9d58277','2ed830d4-caa4-41e9-82cb-3200561c1b54',_binary ''),('d6531404-964c-457c-bf14-5213c9d58277','38173258-170f-4234-b4e1-d36b76285ac8',_binary ''),('d6531404-964c-457c-bf14-5213c9d58277','64321cde-4a9c-4074-9a8d-22ecc9d73420',_binary '\0'),('d6531404-964c-457c-bf14-5213c9d58277','7842b7cc-8938-4358-b24a-197c4666b43e',_binary '\0'),('d6531404-964c-457c-bf14-5213c9d58277','a8530866-bec1-4b19-8e9b-95217356dd72',_binary ''),('d6531404-964c-457c-bf14-5213c9d58277','cc08e286-9e53-415d-9ca1-02f5653616e3',_binary '\0'),('d6531404-964c-457c-bf14-5213c9d58277','e566e070-dab2-4c1e-9737-86796cdc42f6',_binary ''),('d6531404-964c-457c-bf14-5213c9d58277','f303a48d-0361-4e5c-8894-1088319e16c1',_binary '\0'),('d80a596d-3318-4854-a213-05b80614bf0a','1d82bc89-0f68-4510-971d-208d3b2d9a13',_binary '\0'),('d80a596d-3318-4854-a213-05b80614bf0a','51423d88-6b80-4d5e-90f3-1f45881070fc',_binary ''),('d80a596d-3318-4854-a213-05b80614bf0a','b4049566-b59c-4c79-b942-9dbc5765529f',_binary ''),('d80a596d-3318-4854-a213-05b80614bf0a','bc65e701-b843-4a2e-a9d4-c86541c8a256',_binary ''),('d80a596d-3318-4854-a213-05b80614bf0a','c466874a-96aa-4023-a650-19796ca583d6',_binary '\0'),('d80a596d-3318-4854-a213-05b80614bf0a','d83a1ba7-009a-41c5-8635-25e5e7801cd7',_binary ''),('d80a596d-3318-4854-a213-05b80614bf0a','e1f4cb60-dcce-45ed-b471-d90ecf39e161',_binary '\0'),('d80a596d-3318-4854-a213-05b80614bf0a','f633124f-deb0-45fc-9330-2aa478c8ec86',_binary '\0'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','1d82bc89-0f68-4510-971d-208d3b2d9a13',_binary '\0'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','51423d88-6b80-4d5e-90f3-1f45881070fc',_binary ''),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','b4049566-b59c-4c79-b942-9dbc5765529f',_binary ''),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','bc65e701-b843-4a2e-a9d4-c86541c8a256',_binary ''),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','c466874a-96aa-4023-a650-19796ca583d6',_binary '\0'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','d83a1ba7-009a-41c5-8635-25e5e7801cd7',_binary ''),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','e1f4cb60-dcce-45ed-b471-d90ecf39e161',_binary '\0'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','f633124f-deb0-45fc-9330-2aa478c8ec86',_binary '\0'),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','2ed830d4-caa4-41e9-82cb-3200561c1b54',_binary ''),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','38173258-170f-4234-b4e1-d36b76285ac8',_binary ''),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','64321cde-4a9c-4074-9a8d-22ecc9d73420',_binary '\0'),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','7842b7cc-8938-4358-b24a-197c4666b43e',_binary '\0'),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','a8530866-bec1-4b19-8e9b-95217356dd72',_binary ''),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','cc08e286-9e53-415d-9ca1-02f5653616e3',_binary '\0'),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','e566e070-dab2-4c1e-9737-86796cdc42f6',_binary ''),('eabd59b2-33cc-4adc-9a53-3d430f9afeb5','f303a48d-0361-4e5c-8894-1088319e16c1',_binary '\0'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','2ed830d4-caa4-41e9-82cb-3200561c1b54',_binary ''),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','38173258-170f-4234-b4e1-d36b76285ac8',_binary ''),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','64321cde-4a9c-4074-9a8d-22ecc9d73420',_binary '\0'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','7842b7cc-8938-4358-b24a-197c4666b43e',_binary '\0'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','a8530866-bec1-4b19-8e9b-95217356dd72',_binary ''),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','cc08e286-9e53-415d-9ca1-02f5653616e3',_binary '\0'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','e566e070-dab2-4c1e-9737-86796cdc42f6',_binary ''),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','f303a48d-0361-4e5c-8894-1088319e16c1',_binary '\0');
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('f303a48d-0361-4e5c-8894-1088319e16c1','f5ec1764-5fd3-4027-a509-13a4eaec79c7'),('f633124f-deb0-45fc-9330-2aa478c8ec86','5c308d05-b190-4fdd-8c19-a05d6e02da2a');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION`
--

DROP TABLE IF EXISTS `CLIENT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SESSION` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `REDIRECT_URI` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `TIMESTAMP` int DEFAULT NULL,
  `SESSION_ID` varchar(36) DEFAULT NULL,
  `AUTH_METHOD` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(36) DEFAULT NULL,
  `CURRENT_ACTION` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_CLIENT_SESSION_SESSION` (`SESSION_ID`),
  CONSTRAINT `FK_B4AO2VCVAT6UKAU74WBWTFQO1` FOREIGN KEY (`SESSION_ID`) REFERENCES `USER_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION`
--

LOCK TABLES `CLIENT_SESSION` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_AUTH_STATUS`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_AUTH_STATUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SESSION_AUTH_STATUS` (
  `AUTHENTICATOR` varchar(36) NOT NULL,
  `STATUS` int DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`AUTHENTICATOR`),
  CONSTRAINT `AUTH_STATUS_CONSTRAINT` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_AUTH_STATUS`
--

LOCK TABLES `CLIENT_SESSION_AUTH_STATUS` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_AUTH_STATUS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_AUTH_STATUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_NOTE`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SESSION_NOTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`NAME`),
  CONSTRAINT `FK5EDFB00FF51C2736` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_NOTE`
--

LOCK TABLES `CLIENT_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_PROT_MAPPER`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_PROT_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SESSION_PROT_MAPPER` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`PROTOCOL_MAPPER_ID`),
  CONSTRAINT `FK_33A8SGQW18I532811V7O2DK89` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_PROT_MAPPER`
--

LOCK TABLES `CLIENT_SESSION_PROT_MAPPER` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_PROT_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_PROT_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_ROLE`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SESSION_ROLE` (
  `ROLE_ID` varchar(255) NOT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`ROLE_ID`),
  CONSTRAINT `FK_11B7SGQW18I532811V7O2DV76` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_ROLE`
--

LOCK TABLES `CLIENT_SESSION_ROLE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_USER_SESSION_NOTE`
--

DROP TABLE IF EXISTS `CLIENT_USER_SESSION_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_USER_SESSION_NOTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` text,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`NAME`),
  CONSTRAINT `FK_CL_USR_SES_NOTE` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_USER_SESSION_NOTE`
--

LOCK TABLES `CLIENT_USER_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `CLIENT_USER_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_USER_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENT`
--

DROP TABLE IF EXISTS `COMPONENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `COMPONENT` VALUES ('004a938f-4593-440b-bbd7-ab69ce51238e','aes-generated','Paris','aes-generated','org.keycloak.keys.KeyProvider','Paris',NULL),('0a68d83f-ac0d-4b0e-b930-c354f12c8dce','rsa-enc-generated','master','rsa-enc-generated','org.keycloak.keys.KeyProvider','master',NULL),('22395271-f7be-486a-97e0-3ba9c8e70bb5','Allowed Client Scopes','Paris','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','anonymous'),('23219c33-4561-423f-a43b-020a441e4cb8','Full Scope Disabled','master','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('23a3a9f6-c10e-4f5c-b444-5c65b6047455','Allowed Client Scopes','master','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','authenticated'),('24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','Allowed Protocol Mapper Types','master','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','authenticated'),('321f6835-45cb-4d60-83a3-33b5a50700b6','hmac-generated','Paris','hmac-generated','org.keycloak.keys.KeyProvider','Paris',NULL),('3330231f-0671-4d45-b336-9bd76150f2da','Allowed Client Scopes','Paris','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','authenticated'),('346b5c3d-2094-4ec7-b1c5-1e6afa8cd6fd','Full Scope Disabled','Paris','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','anonymous'),('38289d3b-9353-45e3-bf8d-2593e3b8a318','Consent Required','master','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('44999d5b-e414-4582-8689-4e900b5a2de1','Consent Required','Paris','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','anonymous'),('57736f14-8fb7-4f27-b5e7-a7de5d818b90','Max Clients Limit','master','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('5bee87f2-e008-465c-9377-bbe5b545a00f','Allowed Protocol Mapper Types','master','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('66c8c911-928c-484d-a4a1-11959f0e9830','rsa-generated','master','rsa-generated','org.keycloak.keys.KeyProvider','master',NULL),('6d5013ea-7135-4e2c-a08a-acdf87d5096b','aes-generated','master','aes-generated','org.keycloak.keys.KeyProvider','master',NULL),('824561fd-ceb1-444b-9239-0d8075a8a176','hmac-generated','master','hmac-generated','org.keycloak.keys.KeyProvider','master',NULL),('84232b38-092f-480e-8df4-0a8800d04e5b','Allowed Protocol Mapper Types','Paris','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','anonymous'),('a170f338-9a70-4d04-855a-93233e0aeb7f','Max Clients Limit','Paris','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','anonymous'),('a57916ac-bef9-40f5-9977-dc04a49ad020','Trusted Hosts','Paris','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','anonymous'),('aeb7850d-2675-45aa-8568-dd5f5bd6053f','Allowed Client Scopes','master','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('aefaaea7-a4d6-42f7-afe9-9caaf45c3c4f',NULL,'Paris','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','Paris',NULL),('af6d0dc6-2180-401b-9b55-85156b0b2ccd','rsa-generated','Paris','rsa-generated','org.keycloak.keys.KeyProvider','Paris',NULL),('bbee16c0-b86d-4214-830e-01fb47441d97','Trusted Hosts','master','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('e80e535f-efb6-4d0a-8fa2-4aed97b12818','Allowed Protocol Mapper Types','Paris','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','Paris','authenticated'),('f87f0825-2652-4239-a0d6-e7d394bb1c17','rsa-enc-generated','Paris','rsa-enc-generated','org.keycloak.keys.KeyProvider','Paris',NULL);
/*!40000 ALTER TABLE `COMPONENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENT_CONFIG`
--

DROP TABLE IF EXISTS `COMPONENT_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPONENT_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `COMPONENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
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
INSERT INTO `COMPONENT_CONFIG` VALUES ('02ebc96c-c38b-41df-bb10-bdf34e8fa3bb','af6d0dc6-2180-401b-9b55-85156b0b2ccd','certificate','MIICmTCCAYECBgGIKZpt9zANBgkqhkiG9w0BAQsFADAQMQ4wDAYDVQQDDAVwYXJpczAeFw0yMzA1MTcxMjA0MjZaFw0zMzA1MTcxMjA2MDZaMBAxDjAMBgNVBAMMBXBhcmlzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkSKj1J7IZt4IkRR3X8R3iYhwG/B6HYlq4C3xKdpkl2HWBkmxeKLGzFGXIfIiitoWAsoy0POOnx8QAqkWFR9mXLuPthiUcIfqNv028GeCjV+H+GJ6ISASEYXJtyvvDO4xYWl7bu3UzptHOTirZ1uNzCbcIrPBqXPu4w7KGY5ox0iig6nfmjER7IPoqTJq3Yez5YFp1RYJsaawFckNghQaysT0+gwYE0bpILjtxmSpuIz+lxpKLKBubHbg+A3klcHfBn48Y8wwtoWZ1Glg2qTYTq/oQoPewD+NKaCKTB42p5IFkRXguCXa/1HRJoWAKTvn4BFAOj8aA9faSAfNg1ZW5QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQAKcqLNpCKdTAlT84eSVX1pUz77lW6Cqv9jdT8y9Pbk46K1kICf44AdLTPl6j8rTtIbn045RIhyATf/A1Lm0j/6Mn8XUbcHirlfJCfK/+qO75zIfDYNFTtgyGtB6+SZkh55cgqELsj/x4hBVISVhqUhgBxx6bzv73XjCFE0/6P/i6Vh1GimJxbPlQPriOdVMgPLteORL0nyjLjJiSIDmdtKo2NTlUC6AIZRe/VM5c+cSaTIydDxBZTyODapRn4VUqi6Yw4XzUV6Pv2WRevpEMuEWg7EiYGb7FKre6roT4J3YvfUbCIVMteu3NSaj3aim86wrLci+DpHVB0okb7mWDPy'),('0479452b-c0b9-423a-9f9e-25f6083ddd63','6d5013ea-7135-4e2c-a08a-acdf87d5096b','priority','100'),('04ae5bac-a1a5-4117-bed7-17f98068df0b','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','saml-user-property-mapper'),('064cebd1-ff99-4cd8-a922-afc70c1e63fb','0a68d83f-ac0d-4b0e-b930-c354f12c8dce','privateKey','MIIEowIBAAKCAQEAlPkMEYWcMJhPs4pdbHOwSaXil/19B4CYbdRAqyZDsmUc60SGVOI6Vzd+74U0A0fCOTi3npwTTpmbr89cLx9v0/ZGCv/uCR1oq4Fda3seLeEwhZ8RHrJP8GBD6P3+k0Uh9Ez3jwlh5vv0wfgeQVQm6++kl46B3Vm5Av6HiOABFC9LWg3+VU6gKQaat4mkdfAYaqxwEt1I9BQWPTnGXFuGmYpgvsL6piu/CvLyZgc2L6HWaxRJgtn4scfmGDACeotpwv568QmnnDxag9XZKWLaw/ob3dUPREkXxFOoIl9fe2AcWPkgIaQAzNvGKwib6Wpr3HRIPP6qQwLPDLmOuvmG/wIDAQABAoIBAEnpAf7Tfjlx5+EY3d8HysfPYIut/VEykO20p90CIAYrOlzTY55Lm0xYQUcOnE6gVJFVPWyY3M9bUK26QG80tqPABOJCNdQZ3itxBGtl6wQyPIOe9rx3FUgaSrcXBS4F16HAafZyXjteeAGgW0poOONHwy5aSr4KXMtKgu36zS44wVSJU6wCDKQUUCsaZWZmsZfNshZoHdECczdiqofmil2pW6k/dfqTnILoGn4uA9glnv37zLeRqhWmrSqi8/ABjI72Z+3x6Mq2Zq7c+RpxZKtDEldi1qd6dww+oh8EAx9ukLXtVAVtURTA5QUAcnnwytuzoZsTMpb5hj3s2bzGwsECgYEA3hZce+VnmtRSloUnR/IcjmvQMp1gkYhwDbPk60Uerxkar6uX5GR/tAMYh1zu0FlJnj3agqM3M6Ib34SF/TPGksGVX0ohAG2mBuAyf4vxzFGj9Sc9hmKziuyVOcrAryxnbdGX2ZbnVXUYaUEgHpUKyo6C6i+GohgF41fguNuwRuECgYEAq7iPMC6mmrWz1Vbvem9e64CYFvk2rIfdST+RSra79DbIqkqMTfWysgDZWB0g+sBb1QoQskYuslQDlgKK8LIsKBanKoedHmkBaIBYR0xn5BtWtp4cyjAIXr0ymTkUDgNLumPW8zyRfPn6CW8c19qGQAq1fxlf9UFCtzo4RS4J6d8CgYAz2rjBXPDx371g07o2PDuarWWxS7mugVLYgDZlEIB3lb77YW9Xrnd6ynZBtNs13oMn5X1Nn1pWPfWQHNtEIYCt53E/DInkFbX8SQDBcyWD9VP4+66L4CPXviGhmsuemxmTNKrl7Swacfq/KKudOGOKo/fBQlOHKWDGklAwGWtxQQKBgA94QO4GRdwKInlFq61L+zEcFJd9O/+u/bBrmZsxex01Ej7FGH6tc7u1d98IQMBWM++tSHPG/s3x46DP+dRVOMUjxUt/jBgBPa88YLeLmpBiJh2tgMp2KUrfoH9NNRFOGrRf6i1fd3vayTuwVtjbRtzeGhupHYvqpSf8hrU0wI/hAoGBALVWNVysp2IQsezIwCKTswf0vsT/H2xjwFqmXNstYt2gGrHia/1xrXwtOTuBTMYgbjeBPpcWTMS6luhdWgBJo+y7vsTadqQSTUqgnV0Az5azDM14f4/hqdba2gzZqxbkcoR9j3VksRxuE2mATDGNMwm75LM72eVy3wqy50Y98rAK'),('0a749665-2009-407c-8e5f-5820877e5750','bbee16c0-b86d-4214-830e-01fb47441d97','host-sending-registration-request-must-match','true'),('12ee696d-e190-46d1-b52c-e750e9c24871','0a68d83f-ac0d-4b0e-b930-c354f12c8dce','priority','100'),('1632e47d-1385-40c2-bfae-dc597e59cd1d','66c8c911-928c-484d-a4a1-11959f0e9830','priority','100'),('16a18a46-c979-4f00-b846-5fc83120511e','66c8c911-928c-484d-a4a1-11959f0e9830','certificate','MIICmzCCAYMCBgGIKZpiSTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMwNTE3MTIwNDIzWhcNMzMwNTE3MTIwNjAzWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCMhxVUCJ4is5bj2lmpMwp/Fcuvf9kK3Pty2necLhGpJtCo8se2lbxUv7ODSEe+fsrHW/VSzY8F2Fqlp++d/YHz5OX/gbhW6fgmuabnh5z33wNKye1dFhS6b8oC5wHDbLgixG2kILbohJZZ0QeNsnAhkm6TS83ZZpWq5k7IZHlirJblIXiPBfCFfuZGK7W1DLiqN5EtlFN+IVNaFh/NF42G68Tr67eyb5vnzNAx4+bxC0OXUi0WLtyMyYiyYid8hZ1fts5fmntPkx9jFKFkhrYy/unALS4uwnoWEfaKvILdgm2OJqmnmsrJhuWd2Vy4WL6iShM1ErRaF0pALrcE+Hh1AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAABXBJ3c274JQ7CizpugiYJpdn32NRgocuPVWMHysJ1cwaoeGPqpWA/wekn/MXffVlzADn5n4Iauin5RQjGRb76rpVccDiQ/zMM9A592gwYKqmtadB8hZm6EgMYZSEmeJZscOfQz2bdUtExNEAMZpWEFUPE9vHcm2xY4MmATOrm4glfKQ4BbLAQvpVSm388rVa9q2nBLuKSzd+3rxCeYFWkgeIso8/igeWgbJvUm8A+o44uoJ/MetW8UelmRvcsysNEUEHZ0Hky6+l0vFKlHdWrLGCMwkNZgtRy4qGG/qJcdqRWxEWk7BsqeK7S386V0dp+ocu6F2Te8+R/O93M2SVM='),('1d82e732-b1dd-482b-a298-9d1504a41e8e','23a3a9f6-c10e-4f5c-b444-5c65b6047455','allow-default-scopes','true'),('1e5fda58-a765-47d7-a57c-62b79e062282','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('1f1bd36b-c79f-47d3-b640-96faa5b6a5ef','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','oidc-full-name-mapper'),('29e053b2-bd00-49c6-96d6-d2c004cdffed','3330231f-0671-4d45-b336-9bd76150f2da','allow-default-scopes','true'),('2a37347d-c61e-4210-8977-9ab4fd33b3a3','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','oidc-address-mapper'),('2e814768-db1b-40af-9120-fb8dd962da01','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('347dd96f-bea9-4e0d-9668-67d160736758','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','oidc-address-mapper'),('35cced77-ffce-42be-81e9-3985e9918dd3','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','saml-role-list-mapper'),('367a56bf-8f0e-493f-9455-4b321f9eb421','824561fd-ceb1-444b-9239-0d8075a8a176','algorithm','HS256'),('37379222-fae2-4195-9e59-98f04363477a','bbee16c0-b86d-4214-830e-01fb47441d97','client-uris-must-match','true'),('3a7f0a7f-cab8-4391-b19c-1a46d20048a4','22395271-f7be-486a-97e0-3ba9c8e70bb5','allow-default-scopes','true'),('3a99332d-61d5-4520-8da6-7a68d3afe829','321f6835-45cb-4d60-83a3-33b5a50700b6','algorithm','HS256'),('3e56fd1b-9438-4d5c-9ff4-4181f9a1ca1e','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','saml-role-list-mapper'),('3facfe8c-38e4-4a7b-8c13-bfb082b18886','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','saml-user-property-mapper'),('4148ae8f-5223-48f0-91ff-01623defac88','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','oidc-full-name-mapper'),('450d37c2-f009-4697-8076-84f2b7ba909a','6d5013ea-7135-4e2c-a08a-acdf87d5096b','secret','m3JcYtfyS-Sch8d3E3iGVw'),('4a05ef08-bf8f-49c4-b9f9-9f83080a0ee5','f87f0825-2652-4239-a0d6-e7d394bb1c17','priority','100'),('552118e3-74a6-4cb1-bb6b-b0b40b65b107','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('5799d515-5032-4696-a8ba-1a9785a890e2','6d5013ea-7135-4e2c-a08a-acdf87d5096b','kid','9190c65b-97f8-49b8-ba83-9b117dffcd5b'),('65e58154-a1c5-4046-bf64-5d68763d84e8','0a68d83f-ac0d-4b0e-b930-c354f12c8dce','keyUse','ENC'),('68e98a5f-bd25-4cac-86e0-b4e4416a4df3','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('6927c672-6ee9-4c78-a0d2-b712579ccb6d','f87f0825-2652-4239-a0d6-e7d394bb1c17','algorithm','RSA-OAEP'),('697a531a-4c07-47ad-973e-e4342fc7b800','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('75917289-9db1-4c98-a622-21be61ab6930','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('7a61db44-1f09-430c-8265-8df5cb5630b6','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('7aef6fb1-7305-47a1-a9ad-a1b333a0862d','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','oidc-full-name-mapper'),('7affc0ab-9f05-48cf-a349-9b072efb6762','0a68d83f-ac0d-4b0e-b930-c354f12c8dce','algorithm','RSA-OAEP'),('7bf025eb-e41e-4886-a228-1119381137f6','321f6835-45cb-4d60-83a3-33b5a50700b6','secret','kG2RJ2wwQkhM9G3Bj8f7Gr2uxKaTyXKElvI5EzIS9iikLyVqdsur2ajAvYErymy95VmCgYj36tB3DRKshoSvwQ'),('7fbe8347-4223-4976-8754-9ee941915344','a57916ac-bef9-40f5-9977-dc04a49ad020','client-uris-must-match','true'),('809f4993-4f6d-425a-a673-244a09d1e0a9','0a68d83f-ac0d-4b0e-b930-c354f12c8dce','certificate','MIICmzCCAYMCBgGIKZpkSDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMwNTE3MTIwNDI0WhcNMzMwNTE3MTIwNjA0WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCU+QwRhZwwmE+zil1sc7BJpeKX/X0HgJht1ECrJkOyZRzrRIZU4jpXN37vhTQDR8I5OLeenBNOmZuvz1wvH2/T9kYK/+4JHWirgV1rex4t4TCFnxEesk/wYEPo/f6TRSH0TPePCWHm+/TB+B5BVCbr76SXjoHdWbkC/oeI4AEUL0taDf5VTqApBpq3iaR18BhqrHAS3Uj0FBY9OcZcW4aZimC+wvqmK78K8vJmBzYvodZrFEmC2fixx+YYMAJ6i2nC/nrxCaecPFqD1dkpYtrD+hvd1Q9ESRfEU6giX197YBxY+SAhpADM28YrCJvpamvcdEg8/qpDAs8MuY66+Yb/AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAHkfcuGQ+KugTJzvHKBNmw/fvdPDlBFpNtJFJ5kM7x729VY9TyFhM0vnpvHTTxqfGlh7NvJOLusAlshitfEiKpY1Snp+JwEjQqQIPlJz9T8IiuEM43J0egSgn+VKA2zQQL1E9EX2UvgDjPEdNsbXjECK0BDuR+WZ0WTocbNYbQGxplXKt54dWSk2nos1T5PQ5KZpkzp3z4HniBzwWJ16F3m8+tgYEEfVEDxZo2mqOlvHsk1pjgJGJrdwoPpVMbbXUj2/Li/uzVYrAMrdxxH+bVx6i0mTKGnu2WWwCbYxVxubWmxL7W5c96g7IaU3zmtEDMg3ZU5k2Hp3PffohwnLZxM='),('833435df-62ce-44a1-a922-232d1f7d6542','004a938f-4593-440b-bbd7-ab69ce51238e','priority','100'),('88b1a561-9c2a-4b6c-9aaf-6528f13ff936','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','saml-user-property-mapper'),('92506378-918b-4537-93a7-125b846a938f','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('a1f07c93-575b-4e59-9f72-b140b402efd9','f87f0825-2652-4239-a0d6-e7d394bb1c17','privateKey','MIIEogIBAAKCAQEAjeBDUD0J+3bdJM8Ap+NVca5uxTr01OTaNuDOhsRS6UIkOjs89t9LLRgF0M1jAz4yGFhiEPNP3vIkhmme1828z1s3DN8SDg2frHKuPJsToSPR0gXorsnxprCXN4fp1js+8jOSnMQ3+7yKE5CjLarkmBsf3USEeY8wsDr468iR8rWMlH5683Dq5PWW+bAmz+zS91peuNx9wDzoxhofYO2XGJKSkQU62x/u30PEggHY66uIhUKuQ/hKS+WiYB+EgocT1DdXnMwTU3pP9aarFX/fbqog+frQeDo+V1X/T/lDrRjcZiu4RxcDzS5EzU5bNb73U97RT4YAWTUKHHl5ZVaezwIDAQABAoIBAHSvGS2Ixgj2/XIkfZmWstNIbvnvPyVJAt9XjQPxu270Yu8xgTZY928i7sWH5gLoyDKVnjHqqqnl5HxXqbg7ESpJDsGbRTIhqk0eFIbr0/0XhJ2DFpeKpyA85GFbesoi9+Yi3FXqW1DDA5yLvGj2wAMJa++DRqDjT1vhZJAm6UH/LRoks8FbbsTauj70zbLw0U7r59IkEjUMvQlFVtY5viBDM5GsCrNew8kse2cT4ne7ZdVZSGusreWB+6Cavo0mCkrvvdx+A5Preq7wlzo1OhWiyissSRh3B/VvDZ/NyB+f4MUSuCnpaRzmXyX8p9cSRfHOzfn42CpwAICPWCWzjWECgYEAwOS16d/B2UYt6F3srJNwC8O3Fa+YNGNGarzq9I9ESf0mdEkBtwIM0D3GRILpZ99E9W8M2tnw1GvOkS+qsDC3VMHS27WWLeiF6QicPvz5Ef8YTJykQTxp0OeVIfn9Nys8o0YyuveKogBWOuwks9C97PcqWGAmq9ywTagGLF8l26UCgYEAvEq5SH6DqE/pXrt0/je0+TTAweSGXEerw0FtLTvbs5yQv1zH0jL3idGSwZSE7sLP37PmKICX/anocLf6VVYj6SrGxs/OL1lxYORcrIYzYVd+ritEL+DelD9equuUKtczLP/jHeO59pUprGNR5vuN6CpC5wtrU6KIciGoPs8AlmMCgYB9jqIG2PpSVocdYL3k25esYLn06LaXKyOz6MK7a+IUky6LtNXj7PawOfWrtNb/IOq/I4jnj8NeUcpE4RUm2J8NEZkSIJHf0iIQPOWPbpUlrLmBbNjSCeQK8iM12YaEeaVf1hrBbs4Tg0qd0gZV8YMfEwfCPNwPNHiiI8PY8BoxbQKBgBIlcW3XI4EZEniawE+vtrU9rEYDbB+AmMEckRUG68mHkTugCXHsj4ast+QIGDeadsYsZEYK/prnwQr78BhBUPyrrrSCWnCdwhuAZp4J4PHEqOTILq4ekdTftpPqWEE4tCnmD1FWHRnyji2a9M25+JcjW4dAxnss8tFtBPXopTnZAoGAb3ZHPpBBPTyYztR64H94KipWmk5N0jchPDggOuVvXZOE+peJzh7wnCSNnex96NizY/FdJ1Et3Y4HaoZHqSIdaNgeA0qVvWqcBNkUBhV08flO7wh12PMcP/nWTZiTXLRdW+rkb3QbhUx9T0ac2v5b6ctZ8iIhlMQlV/vsvOt6RVE='),('a36be91e-1b39-43bd-ad16-6d1bb3c0e5ad','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('aa5e7ddd-c8f7-4ab6-8502-a8d9bb13077b','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','saml-role-list-mapper'),('ab3a8119-b401-44be-ad14-773e72741876','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','saml-role-list-mapper'),('ae303134-e680-4c99-a1f3-9bd55cd9e135','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('b4fe7f71-9480-416b-8724-b45632610e38','824561fd-ceb1-444b-9239-0d8075a8a176','kid','bbb10274-5c65-4a1a-a31a-c4f0fff17a87'),('bc9dabbb-c70c-4c7f-8dfa-1bdb7b731716','824561fd-ceb1-444b-9239-0d8075a8a176','secret','WGK_-iBpTY_5CXht0ZxlzYFP6NsvaYFlzekGU8h-DgkmYU461_u7MMO7jnDnsZL3FHQNLzHMJGsts1Bhr9CMIw'),('bdfd845c-eb82-41be-b4fe-80aa302c13cb','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('bf9588ed-04a5-4d6d-a320-488b3df2ce97','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('c695a167-2a9c-4851-909b-6752aa67b0e5','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','saml-user-property-mapper'),('c7154db9-51ac-447d-a6dc-97de307d2910','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','oidc-full-name-mapper'),('c7479ee9-fc72-4636-a983-c187d4f7f0be','66c8c911-928c-484d-a4a1-11959f0e9830','keyUse','SIG'),('cc1fc25f-618e-44c2-a2c8-2e9423d5475d','af6d0dc6-2180-401b-9b55-85156b0b2ccd','privateKey','MIIEogIBAAKCAQEAkSKj1J7IZt4IkRR3X8R3iYhwG/B6HYlq4C3xKdpkl2HWBkmxeKLGzFGXIfIiitoWAsoy0POOnx8QAqkWFR9mXLuPthiUcIfqNv028GeCjV+H+GJ6ISASEYXJtyvvDO4xYWl7bu3UzptHOTirZ1uNzCbcIrPBqXPu4w7KGY5ox0iig6nfmjER7IPoqTJq3Yez5YFp1RYJsaawFckNghQaysT0+gwYE0bpILjtxmSpuIz+lxpKLKBubHbg+A3klcHfBn48Y8wwtoWZ1Glg2qTYTq/oQoPewD+NKaCKTB42p5IFkRXguCXa/1HRJoWAKTvn4BFAOj8aA9faSAfNg1ZW5QIDAQABAoIBACvurmToA4WP5Ev2RARLNlv9XuI2MuDJ/f4KKhwfLZ/dT6nrmLsJmt+yOutdnjMlvM/vYN57O0rTXkdP441VSej8JY5bdmNx4OXwVDcFPjGJH2GCfbGVQaLoOp0lwWDKoUv5YBG+EFLSEgcyLkBFKHEJuk0O2Kpwm3lDus1tnC3mSEvAvlSgr63uJtH0uGA+g5aRLUPv9XBmFZJ4Y5CxQOvhHexaOOG5P3bJw9JrQggf9HR7SFzV9o2lEtqy5aPJVMnL2BWf5ZHrweef0A3PY1Qdbt9d0r/okyTRQujUrz0vKQutwXwikAq4zH8uke9FjFYeZLJH3JLJtVFNp55OxakCgYEA+B/+bMCdyqU4jPVPiQu0iytRrhq290eBu82i73wpvSRKqawBiAZ/mCN6tTV5SQXtAxXQ5pagIyWtfZDFxmGW58iGa/aZcPB7iAF6TSPqBLbgVIhFnLuy4i+q9xKPdyNFDgEiZmvOKk08DrchmpjiQqgJjmjgPgzhn9yrYTuNmYcCgYEAlb3b5CJKxt7Y6UOSOXsEe3ukKP06Ed42vK6V5VUc56mZoP9szUUKZ5JaFjzYbZWdoFeBVQcyCTXcWfxvePCJHBvQgi4sOtVg61nDl8iYy6Z151apsxCcbHLrzAeE414FStZZDBG0KWnwFp/fJXgYqcqXGuC4QDLcavQB5hLldzMCgYAz31RsXfRe+h2RcnN3Pig3dA32bQVVOvDHV1053eZH8X9ea2RCkME6CCjOG2jIuGFtZLEwk8rUrjrP5mVCbQKEYGqhxYMcllns/AoaeGijJaxOX9LVynPCT57ZWlr92DTGkbwkV2NZep4UoXp3/IBI2SJuUESZFE5TAmodwLqAnwKBgBGU9E+qExucqN1iuLWVEyaoktLZQMs+SzEGUsVVpAozaL11oEHN3HXiwj8gL81WJubfv2jLan2YXGIYeMI7g+3P+kB+yWSzDykzJfsZa49l4SwjidNjnOpC6BrRuzGzJW3vEw+OuJewP6d4aAwPON4e0nUuc5PeJPFN6zcnetfvAoGAPU0t+wvZzKmL5fw6YNOdHrNJxBrWxqBqfoDPCe5L33q7WzNKSDolpDahqcOynu9VEnk3lyf0Pha0HnCcs+gyh/POcF8QQLxREiIpUVoxQ8x/Oj+sLoccd2UBB3bdBpv3GQ1F9yLtHHnjsCjPnM3axW5ivhugIqINSBUHCMAIq1k='),('cd576bcf-b86d-467b-a3f6-5db924eadf9d','66c8c911-928c-484d-a4a1-11959f0e9830','privateKey','MIIEogIBAAKCAQEAjIcVVAieIrOW49pZqTMKfxXLr3/ZCtz7ctp3nC4RqSbQqPLHtpW8VL+zg0hHvn7Kx1v1Us2PBdhapafvnf2B8+Tl/4G4Vun4Jrmm54ec998DSsntXRYUum/KAucBw2y4IsRtpCC26ISWWdEHjbJwIZJuk0vN2WaVquZOyGR5YqyW5SF4jwXwhX7mRiu1tQy4qjeRLZRTfiFTWhYfzReNhuvE6+u3sm+b58zQMePm8QtDl1ItFi7cjMmIsmInfIWdX7bOX5p7T5MfYxShZIa2Mv7pwC0uLsJ6FhH2iryC3YJtjiapp5rKyYblndlcuFi+okoTNRK0WhdKQC63BPh4dQIDAQABAoIBADBIwcVL6LnXpwLHJYODbBnabU/xx6t53lPKSMq68YqDMbK7KG/N5xXfgFidXzlO63GwYQyAYKILgqnkl+pbDmm0vmoaMjJ61a7In1ZyPDbWw5TQ6OPREHI2stxobyyskGAxydJZAz/FPrvBnKzNIMYIQEIQC7ylCMvdsjgcfbCvRKFgc9S93lCQpY+uiAaEWxrB0oWY4jNBwyTIg3Cs2fGeCIPYk1RcI4mlQPwWEGoqdN4JcSAsWgI3Eb1Ae9Jbh6lLqCqLuepOxpFDkEHyaYOtcX1b0ByP+MDOB78dJMw2gqTvpPJzvKwh3wEAm5v2bjJUE4OTAFNpDsWktPb+CgkCgYEA3Gdw5iqUUyhrFYTyANmVazPm9wpe728wF2IinR4dW2Z0VUQBP6ElrI3oLUw/WHwNn56t1su2UCbEcM3y2OiuAfnfhTNFdoH1+aBFEsXu6pFQQOUnhmHntAMSaMdKXvXs7zYTY9Pn4gvVoONzHcQt1Wkia/RegI/HB7+0K6Xj5AcCgYEAozkrdB2HhYHVMf+vFIBgNKpw64s9H7VP4qZlbBGtSn72mtAUloZkbNdTfx2tsPJsRM9NSQRDi6obJirw2izlETx3egiRRH16wjdiPcVgEoC/Z1ziE9gKWRuhKikpp4+wbXTbhaZOq4iSYNJS0j1tTWU9UuauSq6gXIc3Ae1teKMCgYBPvAhG7C5+qweaYF8gWZbJkpxC0PipTCMswm7dQlDCiR0a36BIAadcdnYBNS1ReIeBMGmZZFcPRgcY/BiXyg1xX5EyYesGRVvUM9vpP7wAFhPfdkdHQVIOeHIHf9ly4ysVGw4GtlmUGE3vh3lU0mz2YLN4NI6fmeQZ9ItcowX/rwKBgAM9fkxWzbrrweS1M6+PgNlqzMUQRY1clxJjxT2o+CyzaofWO6JlVpcGi0TJvQn3NgkDqIAbko+yN8nBLnjWTVHTRnfotaGLcCVs3gll4qtbXPFbWa2VK1drgf6JRKdr5c+2cykrDQLAuk8rvbMovwO7T8VWiP04jDxp/sCOCw9LAoGAHUCEJwsWGUN3HVRuwjV102AHvwoD5eSkUcJtxT3ozsNKCv+oGxXyx0LUHkkMNHqAWeQFaIX8Ct93Mfy/69rCyuQDDaNhNDM2jYHoOTrUVUYsVFRIgHAzGqcfQIIGggscFwNPr3URVvzVBe5Y6u9sAkjK/5cFCapfN8svghllsN4='),('cfd934e8-cf78-404a-b5d1-21f45bb64410','84232b38-092f-480e-8df4-0a8800d04e5b','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('d0ab60df-5d92-4a7d-9dce-ca661d6c8a7b','004a938f-4593-440b-bbd7-ab69ce51238e','secret','qxONIEu4Mn8scKMezP1uHQ'),('d8a5af95-0f23-4bb2-a251-62c7a9994437','321f6835-45cb-4d60-83a3-33b5a50700b6','priority','100'),('dce1803c-8534-4fde-b305-b3eff7a94185','af6d0dc6-2180-401b-9b55-85156b0b2ccd','priority','100'),('e4e056dd-a52e-45cb-b1f6-bdfdd0ab4c15','5bee87f2-e008-465c-9377-bbe5b545a00f','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('e55b6a9d-d933-4863-89cc-4220755e7d86','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','oidc-address-mapper'),('e5aa7356-4a5e-436b-af1e-084d0eafd53d','aeb7850d-2675-45aa-8568-dd5f5bd6053f','allow-default-scopes','true'),('e807d240-4bc6-4d18-b9bb-220316108677','57736f14-8fb7-4f27-b5e7-a7de5d818b90','max-clients','200'),('e8dea299-d1d7-4daa-981b-0b14cfbee929','a170f338-9a70-4d04-855a-93233e0aeb7f','max-clients','200'),('eb4f78e2-97be-4323-9594-e67a6374c197','824561fd-ceb1-444b-9239-0d8075a8a176','priority','100'),('ebc5a892-c29f-4bed-9383-55ca9e728955','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('ebc70058-209b-46bb-8d0a-ece4adb8c624','a57916ac-bef9-40f5-9977-dc04a49ad020','host-sending-registration-request-must-match','true'),('f254fbef-c482-4ec7-8c3c-b2ae3a8ec292','321f6835-45cb-4d60-83a3-33b5a50700b6','kid','8f0b52d7-4bef-4f42-a2cb-40e11335889e'),('f33b63e9-14c2-4e23-99c0-201de1197172','24ffc9bf-aa08-4c31-a0fd-16d2961ead4e','allowed-protocol-mapper-types','oidc-address-mapper'),('f41e5e6c-268c-48fa-84cf-dde18ad09c56','f87f0825-2652-4239-a0d6-e7d394bb1c17','certificate','MIICmTCCAYECBgGIKZpuczANBgkqhkiG9w0BAQsFADAQMQ4wDAYDVQQDDAVwYXJpczAeFw0yMzA1MTcxMjA0MjZaFw0zMzA1MTcxMjA2MDZaMBAxDjAMBgNVBAMMBXBhcmlzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjeBDUD0J+3bdJM8Ap+NVca5uxTr01OTaNuDOhsRS6UIkOjs89t9LLRgF0M1jAz4yGFhiEPNP3vIkhmme1828z1s3DN8SDg2frHKuPJsToSPR0gXorsnxprCXN4fp1js+8jOSnMQ3+7yKE5CjLarkmBsf3USEeY8wsDr468iR8rWMlH5683Dq5PWW+bAmz+zS91peuNx9wDzoxhofYO2XGJKSkQU62x/u30PEggHY66uIhUKuQ/hKS+WiYB+EgocT1DdXnMwTU3pP9aarFX/fbqog+frQeDo+V1X/T/lDrRjcZiu4RxcDzS5EzU5bNb73U97RT4YAWTUKHHl5ZVaezwIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQAhZ90+hfIv0EFY37q2G2oe78l2M1hVt4p1hGkvm/8jOGwQrXriuCd/8Bjq3I/yreai1V6/196D5/QArAG2/K28ZMWFf/mi2NJkNwose/WM1sMDMxpdhnJR2fITwC6+vg0JOyQpC0Lv9ZTC2kB56Y+bzus520jpFCr8bG9BRican+rxjdsRemNufsReP/j+P1lmcu9GNcXaY3dSVvsUgPCDHLofSz5ocsT+EMzuYdP4pr/gaRUfFLNcn9rWr53lG/BX1Arp1QOR6Ry6FwwM9cGq7ekZKCG321RgGMvFe6IVoirH5FCibGd92+xP4Cse42XtnV/JYQku/VJ6NxbLJyLE'),('f52bff18-04a2-4d50-af55-4d2997c65565','e80e535f-efb6-4d0a-8fa2-4aed97b12818','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('f907d541-631c-455e-b7b0-94253f1ffae8','004a938f-4593-440b-bbd7-ab69ce51238e','kid','d3a44dde-bfe5-4aea-bcf7-48b416b2a541');
/*!40000 ALTER TABLE `COMPONENT_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPOSITE_ROLE`
--

DROP TABLE IF EXISTS `COMPOSITE_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `COMPOSITE_ROLE` VALUES ('336e367f-ded8-4e8d-a7a5-fe0b591aa872','d13fc2b6-9dc3-4987-b4da-42a0f7d58e98'),('516ca23c-300e-409d-95ec-99c6eeef6517','9c538da3-3823-4c23-82a0-5b06eef64c61'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','18494595-a0ab-4d57-9d49-a46d89dd95f5'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','1a4fd74c-199a-4b25-8f05-51ef90a5c720'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','1a783319-1854-4b71-b40e-6d89d13e9a8d'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','2aa28db5-2220-42b9-925c-9dc4238b066d'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','2e13340c-b56a-40f9-bdcc-ef42937d9397'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','3057b877-2f5c-4e15-af1f-587a60431974'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','355b80a7-b9ae-45ca-8bc8-39c80bbc93fe'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','3b71e8fc-4418-45a6-9a27-f14d42357645'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','3bb77f73-520e-4661-90ee-b2012efcce0f'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','3f53159d-4333-48d7-a86a-0b9899a5e494'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','576a4659-03e6-4917-b13c-cfd04d0ffb1b'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','5a359d64-000d-4297-8aa8-eacf37d739ab'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','5e90e412-1283-4c88-a6a2-5a783ee2e023'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','5f111826-a898-4723-8089-132c2c2f1893'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','6070112a-2181-4269-bca1-be7cf6c19924'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','65fee8b4-3de4-44ed-a31e-a834b90894bc'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','6c57f80a-e962-47b6-9d5b-60c7c92aff34'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','6c608c0d-feca-4883-a88e-ead1e961a0d1'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','6f3cd50f-8020-4930-aa03-949cfdc32921'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','7d38f1a6-799b-41c1-a9e6-11ab38cc7006'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','80b1f608-bed0-497c-b299-ac02bd1f01d8'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','8c4fe487-f38a-4e59-b8dd-a7774e7f9020'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','928446ae-05ec-4c61-8873-794d5c612e23'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','949bd9f6-da98-4c35-97a2-aa97d533ce31'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','a9b90a04-be96-4741-b43f-6e5c5fbe6067'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','b094de91-ab05-4606-a8ee-a84040e1ba04'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','b249ea90-2216-4ab7-b5a2-9b535a06b0c2'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','b3d6174b-860a-4bde-8c8d-e3cbc4837d67'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','b65685c8-d991-43af-b582-dfbe55e5ddd9'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','d5410424-1d80-40ad-ad60-f296f0b3c7b1'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','ddc2e13e-881a-4c16-a123-dfded3240a76'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','df68c83c-23ef-4cd5-a942-f4e56af708ae'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','ee0f5fbc-325c-4997-abb0-a47b6351f0ed'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','ee34565a-1428-44bc-ab7e-c5f9cc634856'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','f589ac49-7f11-40ce-a9d1-af7c398b67bc'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','f65e5578-07f6-4945-ae1e-f67a126c0c3c'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','fc2db081-2d7c-4849-b435-e1b289110174'),('65dccacf-34da-42c4-ac03-7092d3352aaf','336e367f-ded8-4e8d-a7a5-fe0b591aa872'),('65dccacf-34da-42c4-ac03-7092d3352aaf','836c712e-bd23-4ddc-b21b-e5dffa6478b0'),('65dccacf-34da-42c4-ac03-7092d3352aaf','f5ec1764-5fd3-4027-a509-13a4eaec79c7'),('65dccacf-34da-42c4-ac03-7092d3352aaf','f9cc0e0e-7e22-4acb-869e-1b9b756326ea'),('69467261-2a7e-4a5c-831c-3474d04d9dd1','63d766d2-780d-4547-a9db-f6e8d910684c'),('69467261-2a7e-4a5c-831c-3474d04d9dd1','77537899-8802-4333-9efc-378b11a5b27c'),('6c608c0d-feca-4883-a88e-ead1e961a0d1','1a4fd74c-199a-4b25-8f05-51ef90a5c720'),('6c608c0d-feca-4883-a88e-ead1e961a0d1','b094de91-ab05-4606-a8ee-a84040e1ba04'),('78625c82-7fd4-4955-ae73-a7a416ebd603','ae5f748a-082d-401f-ac6a-98c3250a8a38'),('7a367b28-423c-4829-b660-3c843a967370','1744adee-56d6-4db6-8c63-f9528fffe997'),('7a367b28-423c-4829-b660-3c843a967370','23ea72ec-fb4c-44c4-8769-71cbac361a70'),('7a367b28-423c-4829-b660-3c843a967370','45bc4d15-e1c7-4ce6-a2cd-bc8106290db6'),('7a367b28-423c-4829-b660-3c843a967370','4d06a4d6-1df5-4899-b0d1-ec5c0e461291'),('7a367b28-423c-4829-b660-3c843a967370','516ca23c-300e-409d-95ec-99c6eeef6517'),('7a367b28-423c-4829-b660-3c843a967370','58d8151c-70e2-47d5-8288-6df5fe769ccb'),('7a367b28-423c-4829-b660-3c843a967370','63d766d2-780d-4547-a9db-f6e8d910684c'),('7a367b28-423c-4829-b660-3c843a967370','66beb670-8e99-4d0e-8b0a-c450dce47469'),('7a367b28-423c-4829-b660-3c843a967370','69467261-2a7e-4a5c-831c-3474d04d9dd1'),('7a367b28-423c-4829-b660-3c843a967370','77537899-8802-4333-9efc-378b11a5b27c'),('7a367b28-423c-4829-b660-3c843a967370','79c401f8-e5e9-4119-81d6-4115a2746288'),('7a367b28-423c-4829-b660-3c843a967370','8681e548-86fe-4bc0-befa-3edc7274dd34'),('7a367b28-423c-4829-b660-3c843a967370','89074b33-c48a-450d-913a-11522917a2f5'),('7a367b28-423c-4829-b660-3c843a967370','89745b6b-b750-4211-a487-e8274853009d'),('7a367b28-423c-4829-b660-3c843a967370','93ab7930-6e49-4b8e-a11b-a5b1b998414f'),('7a367b28-423c-4829-b660-3c843a967370','9c538da3-3823-4c23-82a0-5b06eef64c61'),('7a367b28-423c-4829-b660-3c843a967370','a1da408e-3f69-412e-8507-be5ffc5010fb'),('7a367b28-423c-4829-b660-3c843a967370','d575a349-3a65-49e1-bd47-cb01c4138cd4'),('7d99c081-e4a1-42c6-83a7-5008d7f54890','5c308d05-b190-4fdd-8c19-a05d6e02da2a'),('7d99c081-e4a1-42c6-83a7-5008d7f54890','87defc29-2710-4102-a768-155bcbe6071a'),('8c4fe487-f38a-4e59-b8dd-a7774e7f9020','6f3cd50f-8020-4930-aa03-949cfdc32921'),('949bd9f6-da98-4c35-97a2-aa97d533ce31','5a359d64-000d-4297-8aa8-eacf37d739ab'),('fc2db081-2d7c-4849-b435-e1b289110174','2e13340c-b56a-40f9-bdcc-ef42937d9397'),('fc2db081-2d7c-4849-b435-e1b289110174','3bb77f73-520e-4661-90ee-b2012efcce0f');
/*!40000 ALTER TABLE `COMPOSITE_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CREDENTIAL`
--

DROP TABLE IF EXISTS `CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext,
  `CREDENTIAL_DATA` longtext,
  `PRIORITY` int DEFAULT NULL,
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
INSERT INTO `CREDENTIAL` VALUES ('212c409c-5fea-4103-9c39-2a272464ade7',NULL,'password','bb2e51c8-b514-400f-a883-1e03d033839b',1684325167052,NULL,'{\"value\":\"4l9uJaxzyB3rrRD3fOcQfVlonMzbruQW8/Zesehax8IYiIR7cUw5wt3Eht8VK/+YaNCAYXo5eTCqu5eQrgL0vg==\",\"salt\":\"USuBwY+djyELI8hFtNw4RQ==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10),('cf29ba36-dd94-4eb0-a422-db928b91a43e',NULL,'password','094a2be3-d4a7-4325-aa90-b8c8302ede5e',1684337470160,NULL,'{\"value\":\"jChNvYlrqrMc2Q4foA5KKHkJoDoixgOeDaQ2zAw4KhWLk2y053KBTOuQabOAz4Fv8qLYqOpELHVHFNkyDr2pSw==\",\"salt\":\"kL9JcDadsHgM9XXeCh//eg==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10),('e848a0da-411d-418f-8035-fd528eefc15c',NULL,'password','2082746c-ea28-42dc-a0b1-c06dab0c2c14',1684330956949,NULL,'{\"value\":\"YGVjPjsIlF9la+m/pozhOAMTb2Qr3w71L7rEq3lBm4gpi+GDEyVzTZSthdOH0vwTpeT2Z/0KrEiBU9UZi1Y2Qg==\",\"salt\":\"p4nZZsrkjrD7vIRTKfkpGA==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10);
/*!40000 ALTER TABLE `CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
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
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2023-05-17 12:04:18',1,'EXECUTED','7:4e70412f24a3f382c82183742ec79317','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2023-05-17 12:04:18',2,'MARK_RAN','7:cb16724583e9675711801c6875114f28','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2023-05-17 12:04:20',3,'EXECUTED','7:0310eb8ba07cec616460794d42ade0fa','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2023-05-17 12:04:20',4,'EXECUTED','7:5d25857e708c3233ef4439df1f93f012','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2023-05-17 12:04:29',5,'EXECUTED','7:c7a54a1041d58eb3817a4a883b4d4e84','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2023-05-17 12:04:29',6,'MARK_RAN','7:2e01012df20974c1c2a605ef8afe25b7','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2023-05-17 12:04:36',7,'EXECUTED','7:0f08df48468428e0f30ee59a8ec01a41','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2023-05-17 12:04:36',8,'MARK_RAN','7:a77ea2ad226b345e7d689d366f185c8c','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2023-05-17 12:04:36',9,'EXECUTED','7:a3377a2059aefbf3b90ebb4c4cc8e2ab','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2023-05-17 12:04:43',10,'EXECUTED','7:04c1dbedc2aa3e9756d1a1668e003451','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2023-05-17 12:04:45',11,'EXECUTED','7:36ef39ed560ad07062d956db861042ba','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2023-05-17 12:04:45',12,'MARK_RAN','7:d909180b2530479a716d3f9c9eaea3d7','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2023-05-17 12:04:46',13,'EXECUTED','7:cf12b04b79bea5152f165eb41f3955f6','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-05-17 12:04:46',14,'EXECUTED','7:7e32c8f05c755e8675764e7d5f514509','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-05-17 12:04:47',15,'MARK_RAN','7:980ba23cc0ec39cab731ce903dd01291','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-05-17 12:04:47',16,'MARK_RAN','7:2fa220758991285312eb84f3b4ff5336','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-05-17 12:04:47',17,'EXECUTED','7:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2023-05-17 12:04:51',18,'EXECUTED','7:91ace540896df890cc00a0490ee52bbc','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2023-05-17 12:04:54',19,'EXECUTED','7:c31d1646dfa2618a9335c00e07f89f24','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2023-05-17 12:04:54',20,'EXECUTED','7:df8bc21027a4f7cbbb01f6344e89ce07','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2023-05-17 12:04:54',21,'MARK_RAN','7:f987971fe6b37d963bc95fee2b27f8df','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2023-05-17 12:04:54',22,'MARK_RAN','7:df8bc21027a4f7cbbb01f6344e89ce07','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2023-05-17 12:04:55',23,'EXECUTED','7:ed2dc7f799d19ac452cbcda56c929e47','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2023-05-17 12:04:55',24,'EXECUTED','7:80b5db88a5dda36ece5f235be8757615','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2023-05-17 12:04:55',25,'MARK_RAN','7:1437310ed1305a9b93f8848f301726ce','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'3.5.4',NULL,NULL,'4325039772'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2023-05-17 12:04:56',26,'EXECUTED','7:b82ffb34850fa0836be16deefc6a87c4','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2023-05-17 12:05:02',27,'EXECUTED','7:9cc98082921330d8d9266decdd4bd658','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2023-05-17 12:05:02',28,'EXECUTED','7:03d64aeed9cb52b969bd30a7ac0db57e','update tableName=RESOURCE_SERVER_POLICY','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2023-05-17 12:05:06',29,'EXECUTED','7:f1f9fd8710399d725b780f463c6b21cd','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2023-05-17 12:05:07',30,'EXECUTED','7:53188c3eb1107546e6f765835705b6c1','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2023-05-17 12:05:08',31,'EXECUTED','7:d6e6f3bc57a0c5586737d1351725d4d4','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2023-05-17 12:05:08',32,'EXECUTED','7:454d604fbd755d9df3fd9c6329043aa5','customChange','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-05-17 12:05:08',33,'EXECUTED','7:57e98a3077e29caf562f7dbf80c72600','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-05-17 12:05:08',34,'MARK_RAN','7:e4c7e8f2256210aee71ddc42f538b57a','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-05-17 12:05:14',35,'EXECUTED','7:09a43c97e49bc626460480aa1379b522','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2023-05-17 12:05:14',36,'EXECUTED','7:26bfc7c74fefa9126f2ce702fb775553','addColumn tableName=REALM','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-05-17 12:05:14',37,'EXECUTED','7:a161e2ae671a9020fff61e996a207377','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'3.5.4',NULL,NULL,'4325039772'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2023-05-17 12:05:14',38,'EXECUTED','7:37fc1781855ac5388c494f1442b3f717','addColumn tableName=FED_USER_CONSENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2023-05-17 12:05:14',39,'EXECUTED','7:13a27db0dae6049541136adad7261d27','addColumn tableName=IDENTITY_PROVIDER','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-05-17 12:05:14',40,'MARK_RAN','7:550300617e3b59e8af3a6294df8248a3','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-05-17 12:05:14',41,'MARK_RAN','7:e3a9482b8931481dc2772a5c07c44f17','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2023-05-17 12:05:14',42,'EXECUTED','7:72b07d85a2677cb257edb02b408f332d','customChange','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-05-17 12:05:20',43,'EXECUTED','7:a72a7858967bd414835d19e04d880312','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2023-05-17 12:05:20',44,'EXECUTED','7:94edff7cf9ce179e7e85f0cd78a3cf2c','addColumn tableName=USER_ENTITY','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-05-17 12:05:20',45,'EXECUTED','7:6a48ce645a3525488a90fbf76adf3bb3','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-05-17 12:05:21',46,'EXECUTED','7:e64b5dcea7db06077c6e57d3b9e5ca14','customChange','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-05-17 12:05:21',47,'MARK_RAN','7:fd8cf02498f8b1e72496a20afc75178c','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-05-17 12:05:25',48,'EXECUTED','7:542794f25aa2b1fbabb7e577d6646319','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-05-17 12:05:25',49,'EXECUTED','7:edad604c882df12f74941dac3cc6d650','addColumn tableName=REALM','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2023-05-17 12:05:29',50,'EXECUTED','7:0f88b78b7b46480eb92690cbf5e44900','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2023-05-17 12:05:30',51,'EXECUTED','7:d560e43982611d936457c327f872dd59','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2023-05-17 12:05:30',52,'EXECUTED','7:c155566c42b4d14ef07059ec3b3bbd8e','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2023-05-17 12:05:30',53,'EXECUTED','7:b40376581f12d70f3c89ba8ddf5b7dea','update tableName=REALM','',NULL,'3.5.4',NULL,NULL,'4325039772'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2023-05-17 12:05:30',54,'EXECUTED','7:a1132cc395f7b95b3646146c2e38f168','update tableName=CLIENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-05-17 12:05:30',55,'EXECUTED','7:d8dc5d89c789105cfa7ca0e82cba60af','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-05-17 12:05:30',56,'EXECUTED','7:7822e0165097182e8f653c35517656a3','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-05-17 12:05:32',57,'EXECUTED','7:c6538c29b9c9a08f9e9ea2de5c2b6375','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-05-17 12:05:39',58,'EXECUTED','7:6d4893e36de22369cf73bcb051ded875','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2023-05-17 12:05:42',59,'EXECUTED','7:57960fc0b0f0dd0563ea6f8b2e4a1707','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2023-05-17 12:05:42',60,'EXECUTED','7:2b4b8bff39944c7097977cc18dbceb3b','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-05-17 12:05:43',61,'EXECUTED','7:2aa42a964c59cd5b8ca9822340ba33a8','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-05-17 12:05:43',62,'EXECUTED','7:9ac9e58545479929ba23f4a3087a0346','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2023-05-17 12:05:43',63,'EXECUTED','7:14d407c35bc4fe1976867756bcea0c36','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2023-05-17 12:05:43',64,'EXECUTED','7:241a8030c748c8548e346adee548fa93','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2023-05-17 12:05:43',65,'EXECUTED','7:7d3182f65a34fcc61e8d23def037dc3f','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2023-05-17 12:05:44',66,'EXECUTED','7:b30039e00a0b9715d430d1b0636728fa','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2023-05-17 12:05:44',67,'EXECUTED','7:3797315ca61d531780f8e6f82f258159','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2023-05-17 12:05:44',68,'EXECUTED','7:c7aa4c8d9573500c2d347c1941ff0301','addColumn tableName=REALM','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2023-05-17 12:05:45',69,'EXECUTED','7:b207faee394fc074a442ecd42185a5dd','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2023-05-17 12:05:45',70,'EXECUTED','7:ab9a9762faaba4ddfa35514b212c4922','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'3.5.4',NULL,NULL,'4325039772'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2023-05-17 12:05:46',71,'EXECUTED','7:b9710f74515a6ccb51b72dc0d19df8c4','addColumn tableName=RESOURCE_SERVER','',NULL,'3.5.4',NULL,NULL,'4325039772'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-05-17 12:05:46',72,'EXECUTED','7:ec9707ae4d4f0b7452fee20128083879','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'3.5.4',NULL,NULL,'4325039772'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-05-17 12:05:46',73,'EXECUTED','7:3979a0ae07ac465e920ca696532fc736','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'3.5.4',NULL,NULL,'4325039772'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-05-17 12:05:46',74,'MARK_RAN','7:5abfde4c259119d143bd2fbf49ac2bca','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'3.5.4',NULL,NULL,'4325039772'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-05-17 12:05:47',75,'EXECUTED','7:b48da8c11a3d83ddd6b7d0c8c2219345','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-05-17 12:05:48',76,'EXECUTED','7:a73379915c23bfad3e8f5c6d5c0aa4bd','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-05-17 12:05:48',77,'EXECUTED','7:39e0073779aba192646291aa2332493d','addColumn tableName=CLIENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-05-17 12:05:48',78,'MARK_RAN','7:81f87368f00450799b4bf42ea0b3ec34','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-05-17 12:05:51',79,'EXECUTED','7:20b37422abb9fb6571c618148f013a15','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-05-17 12:05:51',80,'MARK_RAN','7:1970bb6cfb5ee800736b95ad3fb3c78a','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-05-17 12:05:52',81,'EXECUTED','7:45d9b25fc3b455d522d8dcc10a0f4c80','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-05-17 12:05:52',82,'MARK_RAN','7:890ae73712bc187a66c2813a724d037f','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-05-17 12:05:52',83,'EXECUTED','7:0a211980d27fafe3ff50d19a3a29b538','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-05-17 12:05:52',84,'MARK_RAN','7:a161e2ae671a9020fff61e996a207377','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'3.5.4',NULL,NULL,'4325039772'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-05-17 12:05:52',85,'EXECUTED','7:01c49302201bdf815b0a18d1f98a55dc','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'3.5.4',NULL,NULL,'4325039772'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2023-05-17 12:05:52',86,'EXECUTED','7:3dace6b144c11f53f1ad2c0361279b86','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'3.5.4',NULL,NULL,'4325039772'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-05-17 12:05:52',87,'EXECUTED','7:578d0b92077eaf2ab95ad0ec087aa903','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-05-17 12:05:53',88,'EXECUTED','7:c95abe90d962c57a09ecaee57972835d','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'3.5.4',NULL,NULL,'4325039772'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:53',89,'EXECUTED','7:f1313bcc2994a5c4dc1062ed6d8282d3','addColumn tableName=REALM; customChange','',NULL,'3.5.4',NULL,NULL,'4325039772'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:53',90,'EXECUTED','7:90d763b52eaffebefbcbde55f269508b','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'3.5.4',NULL,NULL,'4325039772'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:54',91,'EXECUTED','7:d554f0cb92b764470dccfa5e0014a7dd','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'3.5.4',NULL,NULL,'4325039772'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:54',92,'EXECUTED','7:73193e3ab3c35cf0f37ccea3bf783764','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:54',93,'MARK_RAN','7:90a1e74f92e9cbaa0c5eab80b8a037f3','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:55',94,'EXECUTED','7:5b9248f29cd047c200083cc6d8388b16','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'3.5.4',NULL,NULL,'4325039772'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:55',95,'MARK_RAN','7:64db59e44c374f13955489e8990d17a1','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'3.5.4',NULL,NULL,'4325039772'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-05-17 12:05:55',96,'EXECUTED','7:329a578cdb43262fff975f0a7f6cda60','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'3.5.4',NULL,NULL,'4325039772'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-05-17 12:05:56',97,'EXECUTED','7:fae0de241ac0fd0bbc2b380b85e4f567','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'3.5.4',NULL,NULL,'4325039772'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-05-17 12:05:56',98,'MARK_RAN','7:075d54e9180f49bb0c64ca4218936e81','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'3.5.4',NULL,NULL,'4325039772'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-05-17 12:05:56',99,'MARK_RAN','7:06499836520f4f6b3d05e35a59324910','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'3.5.4',NULL,NULL,'4325039772'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-05-17 12:05:56',100,'EXECUTED','7:b558ad47ea0e4d3c3514225a49cc0d65','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'3.5.4',NULL,NULL,'4325039772'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-05-17 12:05:56',101,'MARK_RAN','7:3d2b23076e59c6f70bae703aa01be35b','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'3.5.4',NULL,NULL,'4325039772'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-05-17 12:05:56',102,'EXECUTED','7:1a7f28ff8d9e53aeb879d76ea3d9341a','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'3.5.4',NULL,NULL,'4325039772'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-05-17 12:05:56',103,'EXECUTED','7:2fd554456fed4a82c698c555c5b751b6','customChange','',NULL,'3.5.4',NULL,NULL,'4325039772'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2023-05-17 12:05:57',104,'EXECUTED','7:b06356d66c2790ecc2ae54ba0458397a','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'3.5.4',NULL,NULL,'4325039772');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int NOT NULL,
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
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,_binary '\0',NULL,NULL),(1000,_binary '\0',NULL,NULL),(1001,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEFAULT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `DEFAULT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('master','2ed830d4-caa4-41e9-82cb-3200561c1b54',_binary ''),('master','38173258-170f-4234-b4e1-d36b76285ac8',_binary ''),('master','5c90e0b5-9ea0-445e-ba41-774564be8f4c',_binary ''),('master','64321cde-4a9c-4074-9a8d-22ecc9d73420',_binary '\0'),('master','7842b7cc-8938-4358-b24a-197c4666b43e',_binary '\0'),('master','a8530866-bec1-4b19-8e9b-95217356dd72',_binary ''),('master','cc08e286-9e53-415d-9ca1-02f5653616e3',_binary '\0'),('master','e566e070-dab2-4c1e-9737-86796cdc42f6',_binary ''),('master','f303a48d-0361-4e5c-8894-1088319e16c1',_binary '\0'),('Paris','1d82bc89-0f68-4510-971d-208d3b2d9a13',_binary '\0'),('Paris','51423d88-6b80-4d5e-90f3-1f45881070fc',_binary ''),('Paris','b4049566-b59c-4c79-b942-9dbc5765529f',_binary ''),('Paris','bc65e701-b843-4a2e-a9d4-c86541c8a256',_binary ''),('Paris','c466874a-96aa-4023-a650-19796ca583d6',_binary '\0'),('Paris','c713ec71-38d0-4cca-9f20-6890428fd140',_binary ''),('Paris','d83a1ba7-009a-41c5-8635-25e5e7801cd7',_binary ''),('Paris','e1f4cb60-dcce-45ed-b471-d90ecf39e161',_binary '\0'),('Paris','f633124f-deb0-45fc-9330-2aa478c8ec86',_binary '\0');
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_ENTITY`
--

DROP TABLE IF EXISTS `EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `DETAILS_JSON` text,
  `ERROR` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `SESSION_ID` varchar(255) DEFAULT NULL,
  `EVENT_TIME` bigint DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FEDERATED_IDENTITY` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FEDERATED_USER_ID` varchar(255) DEFAULT NULL,
  `FEDERATED_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `VALUE` text,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_ATTRIBUTE` (`USER_ID`,`REALM_ID`,`NAME`)
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob,
  `TYPE` varchar(255) DEFAULT NULL,
  `CREATED_DATE` bigint DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext,
  `CREDENTIAL_DATA` longtext,
  `PRIORITY` int DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GROUP_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_GROUP_ATTR_GROUP` (`GROUP_ID`),
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
  PRIMARY KEY (`INTERNAL_ID`),
  UNIQUE KEY `UK_2DAELWNIBJI49AVXSRTUF6XJ33` (`PROVIDER_ALIAS`,`REALM_ID`),
  KEY `IDX_IDENT_PROV_REALM` (`REALM_ID`),
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDENTITY_PROVIDER_CONFIG` (
  `IDENTITY_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDP_MAPPER_CONFIG` (
  `IDP_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KEYCLOAK_GROUP` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PARENT_GROUP` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('1744adee-56d6-4db6-8c63-f9528fffe997','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_manage-clients}','manage-clients','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('18494595-a0ab-4d57-9d49-a46d89dd95f5','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_manage-authorization}','manage-authorization','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('1a4fd74c-199a-4b25-8f05-51ef90a5c720','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_query-groups}','query-groups','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('1a783319-1854-4b71-b40e-6d89d13e9a8d','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_create-client}','create-client','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('23ea72ec-fb4c-44c4-8769-71cbac361a70','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_manage-authorization}','manage-authorization','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('24a87994-a578-4516-8d67-0e6c60fe7281','d6531404-964c-457c-bf14-5213c9d58277',_binary '','${role_read-token}','read-token','master','d6531404-964c-457c-bf14-5213c9d58277',NULL),('2aa28db5-2220-42b9-925c-9dc4238b066d','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_view-authorization}','view-authorization','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('2e13340c-b56a-40f9-bdcc-ef42937d9397','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_query-users}','query-users','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('3057b877-2f5c-4e15-af1f-587a60431974','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_view-identity-providers}','view-identity-providers','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('336e367f-ded8-4e8d-a7a5-fe0b591aa872','8f8ef5da-0e40-4034-96e9-203878205f27',_binary '','${role_manage-account}','manage-account','master','8f8ef5da-0e40-4034-96e9-203878205f27',NULL),('355b80a7-b9ae-45ca-8bc8-39c80bbc93fe','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_query-realms}','query-realms','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('3b71e8fc-4418-45a6-9a27-f14d42357645','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_create-client}','create-client','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('3bb77f73-520e-4661-90ee-b2012efcce0f','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_query-groups}','query-groups','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('3f53159d-4333-48d7-a86a-0b9899a5e494','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_manage-identity-providers}','manage-identity-providers','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('45bc4d15-e1c7-4ce6-a2cd-bc8106290db6','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_view-events}','view-events','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('4d06a4d6-1df5-4899-b0d1-ec5c0e461291','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_view-identity-providers}','view-identity-providers','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('516ca23c-300e-409d-95ec-99c6eeef6517','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_view-clients}','view-clients','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('56dba28a-5e56-47a5-9fa0-aa695c44a366','8f8ef5da-0e40-4034-96e9-203878205f27',_binary '','${role_view-applications}','view-applications','master','8f8ef5da-0e40-4034-96e9-203878205f27',NULL),('576a4659-03e6-4917-b13c-cfd04d0ffb1b','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_manage-users}','manage-users','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('58d8151c-70e2-47d5-8288-6df5fe769ccb','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_manage-events}','manage-events','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('5a359d64-000d-4297-8aa8-eacf37d739ab','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_query-clients}','query-clients','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('5c308d05-b190-4fdd-8c19-a05d6e02da2a','Paris',_binary '\0','${role_offline-access}','offline_access','Paris',NULL,NULL),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','master',_binary '\0','${role_admin}','admin','master',NULL,NULL),('5e90e412-1283-4c88-a6a2-5a783ee2e023','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_view-events}','view-events','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('5f111826-a898-4723-8089-132c2c2f1893','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_manage-clients}','manage-clients','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('6070112a-2181-4269-bca1-be7cf6c19924','master',_binary '\0','${role_create-realm}','create-realm','master',NULL,NULL),('63d766d2-780d-4547-a9db-f6e8d910684c','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_query-users}','query-users','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('65dccacf-34da-42c4-ac03-7092d3352aaf','master',_binary '\0','${role_default-roles}','default-roles-master','master',NULL,NULL),('65fee8b4-3de4-44ed-a31e-a834b90894bc','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_view-realm}','view-realm','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('66beb670-8e99-4d0e-8b0a-c450dce47469','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_create-client}','create-client','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('69467261-2a7e-4a5c-831c-3474d04d9dd1','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_view-users}','view-users','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('6c57f80a-e962-47b6-9d5b-60c7c92aff34','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_impersonation}','impersonation','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('6c608c0d-feca-4883-a88e-ead1e961a0d1','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_view-users}','view-users','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('6db2b4a8-ca8e-4e74-9d99-79229b8ff9ba','231e6435-1c21-4016-9945-e3aa6fc5cf7e',_binary '',NULL,'manage-account','Paris','231e6435-1c21-4016-9945-e3aa6fc5cf7e',NULL),('6f3cd50f-8020-4930-aa03-949cfdc32921','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_query-clients}','query-clients','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('77537899-8802-4333-9efc-378b11a5b27c','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_query-groups}','query-groups','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('78625c82-7fd4-4955-ae73-a7a416ebd603','8f8ef5da-0e40-4034-96e9-203878205f27',_binary '','${role_manage-consent}','manage-consent','master','8f8ef5da-0e40-4034-96e9-203878205f27',NULL),('79c401f8-e5e9-4119-81d6-4115a2746288','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_impersonation}','impersonation','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('7a367b28-423c-4829-b660-3c843a967370','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_realm-admin}','realm-admin','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('7d38f1a6-799b-41c1-a9e6-11ab38cc7006','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_manage-identity-providers}','manage-identity-providers','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('7d99c081-e4a1-42c6-83a7-5008d7f54890','Paris',_binary '\0','${role_default-roles}','default-roles-paris','Paris',NULL,NULL),('80b1f608-bed0-497c-b299-ac02bd1f01d8','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_view-authorization}','view-authorization','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('836c712e-bd23-4ddc-b21b-e5dffa6478b0','master',_binary '\0','${role_uma_authorization}','uma_authorization','master',NULL,NULL),('8681e548-86fe-4bc0-befa-3edc7274dd34','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_manage-users}','manage-users','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('87defc29-2710-4102-a768-155bcbe6071a','Paris',_binary '\0','${role_uma_authorization}','uma_authorization','Paris',NULL,NULL),('89074b33-c48a-450d-913a-11522917a2f5','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_manage-realm}','manage-realm','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('89745b6b-b750-4211-a487-e8274853009d','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_view-realm}','view-realm','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('8c4fe487-f38a-4e59-b8dd-a7774e7f9020','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_view-clients}','view-clients','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('928446ae-05ec-4c61-8873-794d5c612e23','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_view-events}','view-events','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('93ab7930-6e49-4b8e-a11b-a5b1b998414f','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_query-realms}','query-realms','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('949bd9f6-da98-4c35-97a2-aa97d533ce31','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_view-clients}','view-clients','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('9c538da3-3823-4c23-82a0-5b06eef64c61','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_query-clients}','query-clients','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('a1da408e-3f69-412e-8507-be5ffc5010fb','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_manage-identity-providers}','manage-identity-providers','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('a9b90a04-be96-4741-b43f-6e5c5fbe6067','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_manage-events}','manage-events','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('ae5f748a-082d-401f-ac6a-98c3250a8a38','8f8ef5da-0e40-4034-96e9-203878205f27',_binary '','${role_view-consent}','view-consent','master','8f8ef5da-0e40-4034-96e9-203878205f27',NULL),('b094de91-ab05-4606-a8ee-a84040e1ba04','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_query-users}','query-users','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('b249ea90-2216-4ab7-b5a2-9b535a06b0c2','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_view-realm}','view-realm','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('b3d6174b-860a-4bde-8c8d-e3cbc4837d67','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_query-realms}','query-realms','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('b65685c8-d991-43af-b582-dfbe55e5ddd9','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_manage-realm}','manage-realm','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('c396d412-15bc-4caf-9c5c-bd57a1764614','231e6435-1c21-4016-9945-e3aa6fc5cf7e',_binary '','${role_delete-account}','delete-account','Paris','231e6435-1c21-4016-9945-e3aa6fc5cf7e',NULL),('d13fc2b6-9dc3-4987-b4da-42a0f7d58e98','8f8ef5da-0e40-4034-96e9-203878205f27',_binary '','${role_manage-account-links}','manage-account-links','master','8f8ef5da-0e40-4034-96e9-203878205f27',NULL),('d5410424-1d80-40ad-ad60-f296f0b3c7b1','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_impersonation}','impersonation','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('d575a349-3a65-49e1-bd47-cb01c4138cd4','cd15f654-fa6b-4e95-a3f8-1739051bcf41',_binary '','${role_view-authorization}','view-authorization','Paris','cd15f654-fa6b-4e95-a3f8-1739051bcf41',NULL),('ddc2e13e-881a-4c16-a123-dfded3240a76','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_manage-clients}','manage-clients','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('df68c83c-23ef-4cd5-a942-f4e56af708ae','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_manage-users}','manage-users','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('ee0f5fbc-325c-4997-abb0-a47b6351f0ed','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_view-identity-providers}','view-identity-providers','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('ee34565a-1428-44bc-ab7e-c5f9cc634856','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_manage-events}','manage-events','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('f0760ba1-47c8-404e-b3b0-f17484437c96','8f8ef5da-0e40-4034-96e9-203878205f27',_binary '','${role_delete-account}','delete-account','master','8f8ef5da-0e40-4034-96e9-203878205f27',NULL),('f589ac49-7f11-40ce-a9d1-af7c398b67bc','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_manage-realm}','manage-realm','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL),('f5ec1764-5fd3-4027-a509-13a4eaec79c7','master',_binary '\0','${role_offline-access}','offline_access','master',NULL,NULL),('f65e5578-07f6-4945-ae1e-f67a126c0c3c','0223e96b-970c-4c51-b5a4-8506a6796495',_binary '','${role_manage-authorization}','manage-authorization','master','0223e96b-970c-4c51-b5a4-8506a6796495',NULL),('f9cc0e0e-7e22-4acb-869e-1b9b756326ea','8f8ef5da-0e40-4034-96e9-203878205f27',_binary '','${role_view-profile}','view-profile','master','8f8ef5da-0e40-4034-96e9-203878205f27',NULL),('fc2db081-2d7c-4849-b435-e1b289110174','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',_binary '','${role_view-users}','view-users','master','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',NULL);
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MIGRATION_MODEL`
--

DROP TABLE IF EXISTS `MIGRATION_MODEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MIGRATION_MODEL` (
  `ID` varchar(36) NOT NULL,
  `VERSION` varchar(36) DEFAULT NULL,
  `UPDATE_TIME` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IDX_UPDATE_TIME` (`UPDATE_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
/*!40000 ALTER TABLE `MIGRATION_MODEL` DISABLE KEYS */;
INSERT INTO `MIGRATION_MODEL` VALUES ('jkcc6','16.1.1',1684325161);
/*!40000 ALTER TABLE `MIGRATION_MODEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFLINE_CLIENT_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_CLIENT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OFFLINE_CLIENT_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `TIMESTAMP` int DEFAULT NULL,
  `DATA` longtext,
  `CLIENT_STORAGE_PROVIDER` varchar(36) NOT NULL DEFAULT 'local',
  `EXTERNAL_CLIENT_ID` varchar(255) NOT NULL DEFAULT 'local',
  PRIMARY KEY (`USER_SESSION_ID`,`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`OFFLINE_FLAG`),
  KEY `IDX_US_SESS_ID_ON_CL_SESS` (`USER_SESSION_ID`),
  KEY `IDX_OFFLINE_CSS_PRELOAD` (`CLIENT_ID`,`OFFLINE_FLAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_CLIENT_SESSION`
--

LOCK TABLES `OFFLINE_CLIENT_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFLINE_USER_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_USER_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OFFLINE_USER_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `CREATED_ON` int NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `DATA` longtext,
  `LAST_SESSION_REFRESH` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`USER_SESSION_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_CREATEDON` (`CREATED_ON`),
  KEY `IDX_OFFLINE_USS_PRELOAD` (`OFFLINE_FLAG`,`CREATED_ON`,`USER_SESSION_ID`),
  KEY `IDX_OFFLINE_USS_BY_USER` (`USER_ID`,`REALM_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_BY_USERSESS` (`REALM_ID`,`OFFLINE_FLAG`,`USER_SESSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_USER_SESSION`
--

LOCK TABLES `OFFLINE_USER_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `POLICY_CONFIG`
--

DROP TABLE IF EXISTS `POLICY_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `POLICY_CONFIG` (
  `POLICY_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('0471e634-07ee-435e-85a7-63b714119f33','email','openid-connect','oidc-usermodel-property-mapper',NULL,'d83a1ba7-009a-41c5-8635-25e5e7801cd7'),('13c88814-a351-4860-bf6b-e4b493c6cf45','gender','openid-connect','oidc-usermodel-attribute-mapper','c0a41b9a-c749-41b3-8d6d-308d6d945245',NULL),('192e183f-b251-46bd-a0fd-457d8efd5844','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('1a5165f0-8347-4a36-b7e4-d296a56aab92','audience resolve','openid-connect','oidc-audience-resolve-mapper','06659433-c299-4183-af48-a8ab8f7df65b',NULL),('1bf8c038-e87d-424d-a733-8590b5e46ca2','address','openid-connect','oidc-address-mapper',NULL,'cc08e286-9e53-415d-9ca1-02f5653616e3'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'1d82bc89-0f68-4510-971d-208d3b2d9a13'),('22d3c2e2-d55a-4488-be0b-9a79080c4563','family name','openid-connect','oidc-usermodel-property-mapper','c0a41b9a-c749-41b3-8d6d-308d6d945245',NULL),('24ead1b6-89b3-4000-bbd4-41f318f0123b','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'e566e070-dab2-4c1e-9737-86796cdc42f6'),('2663b40c-930d-4df8-b597-5ad69b55af05','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'b4049566-b59c-4c79-b942-9dbc5765529f'),('2a3af7c2-f838-499a-bfef-3a8b65c13008','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('2f0fd937-c369-4c83-a28d-ed2db85fec27','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('32410706-0484-4e26-bfab-3f3e14d9505b','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'e566e070-dab2-4c1e-9737-86796cdc42f6'),('35856b58-918c-4f0e-ad2a-857ca1f9c628','locale','openid-connect','oidc-usermodel-attribute-mapper','e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5',NULL),('37912ad8-6328-4801-8ba4-f27c82a08ad4','username','openid-connect','oidc-usermodel-property-mapper','c0a41b9a-c749-41b3-8d6d-308d6d945245',NULL),('3eb1c8d0-ae24-4028-aa57-fc9cd5195697','full name','openid-connect','oidc-full-name-mapper','c0a41b9a-c749-41b3-8d6d-308d6d945245',NULL),('4039b4ad-6b4c-4b30-82db-8e905025c2e9','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('45416685-edd5-43ef-bea8-f35275560400','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'e566e070-dab2-4c1e-9737-86796cdc42f6'),('4b02f55b-3e15-4620-9d7d-98b1662e4b31','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e1f4cb60-dcce-45ed-b471-d90ecf39e161'),('4d86bcab-14ca-494c-a5ed-8ab148c69b0e','email','openid-connect','oidc-usermodel-property-mapper',NULL,'38173258-170f-4234-b4e1-d36b76285ac8'),('4fe291c7-8177-4e2e-8195-8717c07f8998','role list','saml','saml-role-list-mapper',NULL,'c713ec71-38d0-4cca-9f20-6890428fd140'),('55866865-c699-4f7b-84e8-b485bee678a8','address','openid-connect','oidc-address-mapper',NULL,'c466874a-96aa-4023-a650-19796ca583d6'),('55a8b252-353b-4d07-8381-1cef3ef39820','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('5641de45-7888-4dda-9c62-1c50e7dc0a2f','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'d83a1ba7-009a-41c5-8635-25e5e7801cd7'),('5885c0c1-5c9f-4c69-92e7-7c4f71b7ee40','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('5ddaf547-bd13-418f-945b-f53167e12c85','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('6784ec02-e6aa-4156-9d1e-553548772b85','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('6a17e285-a8af-40fc-9288-12296589c371','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'a8530866-bec1-4b19-8e9b-95217356dd72'),('743c5478-f716-422c-833b-55361df4a31f','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('74eaeb74-0f13-41a0-bdff-a7e538849939','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'38173258-170f-4234-b4e1-d36b76285ac8'),('781f5c56-e965-46bd-80ce-a6379cd31f86','username','openid-connect','oidc-usermodel-property-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('7f53a497-0fdf-456a-95b4-44403b0b9bee','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('8344635d-dcea-4221-89c7-90372ded6597','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'b4049566-b59c-4c79-b942-9dbc5765529f'),('8bac58ea-e65f-4e34-9102-aeb70e1b9b29','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('8be77933-66ac-41f5-8cd7-9a9fe698df62','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('8c64b80c-643c-4464-a758-e554ebfbfb22','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('8dcdb0c2-efc7-4932-90ee-308e6e24021f','given name','openid-connect','oidc-usermodel-property-mapper','c0a41b9a-c749-41b3-8d6d-308d6d945245',NULL),('8e72fd50-95b8-4079-bbbc-6ab6fe11294e','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('91139c12-5971-44fe-8e41-e4ef630f8c68','email','openid-connect','oidc-usermodel-property-mapper','c0a41b9a-c749-41b3-8d6d-308d6d945245',NULL),('91400800-1632-43c0-93e7-4fea64563b45','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('96f8d008-a4f5-41cc-8223-8f1660a49646','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'1d82bc89-0f68-4510-971d-208d3b2d9a13'),('9c0a91c5-334a-4af4-ab1c-2272b6641390','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('9d9d6a90-dddd-425f-a1f1-f3b316252bc3','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'64321cde-4a9c-4074-9a8d-22ecc9d73420'),('a24bd95b-c6de-4c1c-82e3-e76457184a6f','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'64321cde-4a9c-4074-9a8d-22ecc9d73420'),('a72c5e64-cfea-485f-9a6b-91e8fa016bad','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('af86814a-168c-497e-af5e-31227f8cdfd9','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('b3cec881-0280-44ff-a0ba-2fe227a38ca9','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('b576cac8-3077-481c-81b5-1b2df2855caf','full name','openid-connect','oidc-full-name-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('b7c93f8d-6f33-467d-95cd-0e9f31809608','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('bb17289a-61dc-46fd-b794-8ac2abd3a1b2','role list','saml','saml-role-list-mapper',NULL,'5c90e0b5-9ea0-445e-ba41-774564be8f4c'),('be6a6ea8-06ef-4f2a-8f0a-389c7f5200e0','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'7842b7cc-8938-4358-b24a-197c4666b43e'),('bf5a1917-90bc-4961-bca8-4f9e677d03a0','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'bc65e701-b843-4a2e-a9d4-c86541c8a256'),('cc598a29-7eef-47e1-b1ff-21869ddd8961','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'7842b7cc-8938-4358-b24a-197c4666b43e'),('d145dba0-bc0c-4be2-9280-b0d7a08e7364','locale','openid-connect','oidc-usermodel-attribute-mapper','b741f744-8388-4233-9edc-c9f2ed49016e',NULL),('e75a5684-606e-4b6f-bd69-c880a25f4a9d','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'b4049566-b59c-4c79-b942-9dbc5765529f'),('e7ca9bd8-c6fe-431e-94da-4fd05ba73a99','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e1f4cb60-dcce-45ed-b471-d90ecf39e161'),('f43f0d14-3ef3-4ed5-a5ce-ebd3a029bcbf','full name','openid-connect','oidc-full-name-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('f9c011fa-c722-440e-9318-295b3f1b7ee0','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('fa2cf5a6-3823-4a32-a6be-d5fcdd03e428','audience resolve','openid-connect','oidc-audience-resolve-mapper','fba13307-1a64-4cf2-8b28-462d71ce1a0a',NULL),('fc12e386-4bc0-456e-8517-daeea31d0a07','username','openid-connect','oidc-usermodel-property-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('fc1c76e9-aed0-4192-8088-2874eb055388','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc'),('fda8b03c-2b0c-4509-b6f2-7a89adf52923','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'2ed830d4-caa4-41e9-82cb-3200561c1b54'),('ffc31944-3798-4a33-9ab9-65e80931b6ad','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51423d88-6b80-4d5e-90f3-1f45881070fc');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROTOCOL_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROTOCOL_MAPPER_CONFIG` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
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
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('0471e634-07ee-435e-85a7-63b714119f33','true','access.token.claim'),('0471e634-07ee-435e-85a7-63b714119f33','email','claim.name'),('0471e634-07ee-435e-85a7-63b714119f33','true','id.token.claim'),('0471e634-07ee-435e-85a7-63b714119f33','String','jsonType.label'),('0471e634-07ee-435e-85a7-63b714119f33','email','user.attribute'),('0471e634-07ee-435e-85a7-63b714119f33','true','userinfo.token.claim'),('13c88814-a351-4860-bf6b-e4b493c6cf45','true','access.token.claim'),('13c88814-a351-4860-bf6b-e4b493c6cf45','gender','claim.name'),('13c88814-a351-4860-bf6b-e4b493c6cf45','true','id.token.claim'),('13c88814-a351-4860-bf6b-e4b493c6cf45','String','jsonType.label'),('13c88814-a351-4860-bf6b-e4b493c6cf45','gender','user.attribute'),('13c88814-a351-4860-bf6b-e4b493c6cf45','true','userinfo.token.claim'),('192e183f-b251-46bd-a0fd-457d8efd5844','true','access.token.claim'),('192e183f-b251-46bd-a0fd-457d8efd5844','nickname','claim.name'),('192e183f-b251-46bd-a0fd-457d8efd5844','true','id.token.claim'),('192e183f-b251-46bd-a0fd-457d8efd5844','String','jsonType.label'),('192e183f-b251-46bd-a0fd-457d8efd5844','nickname','user.attribute'),('192e183f-b251-46bd-a0fd-457d8efd5844','true','userinfo.token.claim'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','true','access.token.claim'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','true','id.token.claim'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','country','user.attribute.country'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','formatted','user.attribute.formatted'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','locality','user.attribute.locality'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','postal_code','user.attribute.postal_code'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','region','user.attribute.region'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','street','user.attribute.street'),('1bf8c038-e87d-424d-a733-8590b5e46ca2','true','userinfo.token.claim'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','true','access.token.claim'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','groups','claim.name'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','true','id.token.claim'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','String','jsonType.label'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','true','multivalued'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','foo','user.attribute'),('21bae184-35ff-44a1-98b8-d5ec78292c3a','true','userinfo.token.claim'),('22d3c2e2-d55a-4488-be0b-9a79080c4563','true','access.token.claim'),('22d3c2e2-d55a-4488-be0b-9a79080c4563','family_name','claim.name'),('22d3c2e2-d55a-4488-be0b-9a79080c4563','true','id.token.claim'),('22d3c2e2-d55a-4488-be0b-9a79080c4563','String','jsonType.label'),('22d3c2e2-d55a-4488-be0b-9a79080c4563','lastName','user.attribute'),('22d3c2e2-d55a-4488-be0b-9a79080c4563','true','userinfo.token.claim'),('24ead1b6-89b3-4000-bbd4-41f318f0123b','true','access.token.claim'),('24ead1b6-89b3-4000-bbd4-41f318f0123b','resource_access.${client_id}.roles','claim.name'),('24ead1b6-89b3-4000-bbd4-41f318f0123b','String','jsonType.label'),('24ead1b6-89b3-4000-bbd4-41f318f0123b','true','multivalued'),('24ead1b6-89b3-4000-bbd4-41f318f0123b','foo','user.attribute'),('2663b40c-930d-4df8-b597-5ad69b55af05','true','access.token.claim'),('2663b40c-930d-4df8-b597-5ad69b55af05','resource_access.${client_id}.roles','claim.name'),('2663b40c-930d-4df8-b597-5ad69b55af05','String','jsonType.label'),('2663b40c-930d-4df8-b597-5ad69b55af05','true','multivalued'),('2663b40c-930d-4df8-b597-5ad69b55af05','foo','user.attribute'),('2a3af7c2-f838-499a-bfef-3a8b65c13008','true','access.token.claim'),('2a3af7c2-f838-499a-bfef-3a8b65c13008','website','claim.name'),('2a3af7c2-f838-499a-bfef-3a8b65c13008','true','id.token.claim'),('2a3af7c2-f838-499a-bfef-3a8b65c13008','String','jsonType.label'),('2a3af7c2-f838-499a-bfef-3a8b65c13008','website','user.attribute'),('2a3af7c2-f838-499a-bfef-3a8b65c13008','true','userinfo.token.claim'),('2f0fd937-c369-4c83-a28d-ed2db85fec27','true','access.token.claim'),('2f0fd937-c369-4c83-a28d-ed2db85fec27','picture','claim.name'),('2f0fd937-c369-4c83-a28d-ed2db85fec27','true','id.token.claim'),('2f0fd937-c369-4c83-a28d-ed2db85fec27','String','jsonType.label'),('2f0fd937-c369-4c83-a28d-ed2db85fec27','picture','user.attribute'),('2f0fd937-c369-4c83-a28d-ed2db85fec27','true','userinfo.token.claim'),('35856b58-918c-4f0e-ad2a-857ca1f9c628','true','access.token.claim'),('35856b58-918c-4f0e-ad2a-857ca1f9c628','locale','claim.name'),('35856b58-918c-4f0e-ad2a-857ca1f9c628','true','id.token.claim'),('35856b58-918c-4f0e-ad2a-857ca1f9c628','String','jsonType.label'),('35856b58-918c-4f0e-ad2a-857ca1f9c628','locale','user.attribute'),('35856b58-918c-4f0e-ad2a-857ca1f9c628','true','userinfo.token.claim'),('37912ad8-6328-4801-8ba4-f27c82a08ad4','true','access.token.claim'),('37912ad8-6328-4801-8ba4-f27c82a08ad4','preferred_username','claim.name'),('37912ad8-6328-4801-8ba4-f27c82a08ad4','true','id.token.claim'),('37912ad8-6328-4801-8ba4-f27c82a08ad4','String','jsonType.label'),('37912ad8-6328-4801-8ba4-f27c82a08ad4','username','user.attribute'),('37912ad8-6328-4801-8ba4-f27c82a08ad4','true','userinfo.token.claim'),('3eb1c8d0-ae24-4028-aa57-fc9cd5195697','true','access.token.claim'),('3eb1c8d0-ae24-4028-aa57-fc9cd5195697','true','id.token.claim'),('3eb1c8d0-ae24-4028-aa57-fc9cd5195697','true','userinfo.token.claim'),('4039b4ad-6b4c-4b30-82db-8e905025c2e9','true','access.token.claim'),('4039b4ad-6b4c-4b30-82db-8e905025c2e9','locale','claim.name'),('4039b4ad-6b4c-4b30-82db-8e905025c2e9','true','id.token.claim'),('4039b4ad-6b4c-4b30-82db-8e905025c2e9','String','jsonType.label'),('4039b4ad-6b4c-4b30-82db-8e905025c2e9','locale','user.attribute'),('4039b4ad-6b4c-4b30-82db-8e905025c2e9','true','userinfo.token.claim'),('45416685-edd5-43ef-bea8-f35275560400','true','access.token.claim'),('45416685-edd5-43ef-bea8-f35275560400','realm_access.roles','claim.name'),('45416685-edd5-43ef-bea8-f35275560400','String','jsonType.label'),('45416685-edd5-43ef-bea8-f35275560400','true','multivalued'),('45416685-edd5-43ef-bea8-f35275560400','foo','user.attribute'),('4b02f55b-3e15-4620-9d7d-98b1662e4b31','true','access.token.claim'),('4b02f55b-3e15-4620-9d7d-98b1662e4b31','phone_number','claim.name'),('4b02f55b-3e15-4620-9d7d-98b1662e4b31','true','id.token.claim'),('4b02f55b-3e15-4620-9d7d-98b1662e4b31','String','jsonType.label'),('4b02f55b-3e15-4620-9d7d-98b1662e4b31','phoneNumber','user.attribute'),('4b02f55b-3e15-4620-9d7d-98b1662e4b31','true','userinfo.token.claim'),('4d86bcab-14ca-494c-a5ed-8ab148c69b0e','true','access.token.claim'),('4d86bcab-14ca-494c-a5ed-8ab148c69b0e','email','claim.name'),('4d86bcab-14ca-494c-a5ed-8ab148c69b0e','true','id.token.claim'),('4d86bcab-14ca-494c-a5ed-8ab148c69b0e','String','jsonType.label'),('4d86bcab-14ca-494c-a5ed-8ab148c69b0e','email','user.attribute'),('4d86bcab-14ca-494c-a5ed-8ab148c69b0e','true','userinfo.token.claim'),('4fe291c7-8177-4e2e-8195-8717c07f8998','Role','attribute.name'),('4fe291c7-8177-4e2e-8195-8717c07f8998','Basic','attribute.nameformat'),('4fe291c7-8177-4e2e-8195-8717c07f8998','false','single'),('55866865-c699-4f7b-84e8-b485bee678a8','true','access.token.claim'),('55866865-c699-4f7b-84e8-b485bee678a8','true','id.token.claim'),('55866865-c699-4f7b-84e8-b485bee678a8','country','user.attribute.country'),('55866865-c699-4f7b-84e8-b485bee678a8','formatted','user.attribute.formatted'),('55866865-c699-4f7b-84e8-b485bee678a8','locality','user.attribute.locality'),('55866865-c699-4f7b-84e8-b485bee678a8','postal_code','user.attribute.postal_code'),('55866865-c699-4f7b-84e8-b485bee678a8','region','user.attribute.region'),('55866865-c699-4f7b-84e8-b485bee678a8','street','user.attribute.street'),('55866865-c699-4f7b-84e8-b485bee678a8','true','userinfo.token.claim'),('55a8b252-353b-4d07-8381-1cef3ef39820','true','access.token.claim'),('55a8b252-353b-4d07-8381-1cef3ef39820','website','claim.name'),('55a8b252-353b-4d07-8381-1cef3ef39820','true','id.token.claim'),('55a8b252-353b-4d07-8381-1cef3ef39820','String','jsonType.label'),('55a8b252-353b-4d07-8381-1cef3ef39820','website','user.attribute'),('55a8b252-353b-4d07-8381-1cef3ef39820','true','userinfo.token.claim'),('5641de45-7888-4dda-9c62-1c50e7dc0a2f','true','access.token.claim'),('5641de45-7888-4dda-9c62-1c50e7dc0a2f','email_verified','claim.name'),('5641de45-7888-4dda-9c62-1c50e7dc0a2f','true','id.token.claim'),('5641de45-7888-4dda-9c62-1c50e7dc0a2f','boolean','jsonType.label'),('5641de45-7888-4dda-9c62-1c50e7dc0a2f','emailVerified','user.attribute'),('5641de45-7888-4dda-9c62-1c50e7dc0a2f','true','userinfo.token.claim'),('5885c0c1-5c9f-4c69-92e7-7c4f71b7ee40','true','access.token.claim'),('5885c0c1-5c9f-4c69-92e7-7c4f71b7ee40','middle_name','claim.name'),('5885c0c1-5c9f-4c69-92e7-7c4f71b7ee40','true','id.token.claim'),('5885c0c1-5c9f-4c69-92e7-7c4f71b7ee40','String','jsonType.label'),('5885c0c1-5c9f-4c69-92e7-7c4f71b7ee40','middleName','user.attribute'),('5885c0c1-5c9f-4c69-92e7-7c4f71b7ee40','true','userinfo.token.claim'),('5ddaf547-bd13-418f-945b-f53167e12c85','true','access.token.claim'),('5ddaf547-bd13-418f-945b-f53167e12c85','zoneinfo','claim.name'),('5ddaf547-bd13-418f-945b-f53167e12c85','true','id.token.claim'),('5ddaf547-bd13-418f-945b-f53167e12c85','String','jsonType.label'),('5ddaf547-bd13-418f-945b-f53167e12c85','zoneinfo','user.attribute'),('5ddaf547-bd13-418f-945b-f53167e12c85','true','userinfo.token.claim'),('6784ec02-e6aa-4156-9d1e-553548772b85','true','access.token.claim'),('6784ec02-e6aa-4156-9d1e-553548772b85','middle_name','claim.name'),('6784ec02-e6aa-4156-9d1e-553548772b85','true','id.token.claim'),('6784ec02-e6aa-4156-9d1e-553548772b85','String','jsonType.label'),('6784ec02-e6aa-4156-9d1e-553548772b85','middleName','user.attribute'),('6784ec02-e6aa-4156-9d1e-553548772b85','true','userinfo.token.claim'),('743c5478-f716-422c-833b-55361df4a31f','true','access.token.claim'),('743c5478-f716-422c-833b-55361df4a31f','updated_at','claim.name'),('743c5478-f716-422c-833b-55361df4a31f','true','id.token.claim'),('743c5478-f716-422c-833b-55361df4a31f','String','jsonType.label'),('743c5478-f716-422c-833b-55361df4a31f','updatedAt','user.attribute'),('743c5478-f716-422c-833b-55361df4a31f','true','userinfo.token.claim'),('74eaeb74-0f13-41a0-bdff-a7e538849939','true','access.token.claim'),('74eaeb74-0f13-41a0-bdff-a7e538849939','email_verified','claim.name'),('74eaeb74-0f13-41a0-bdff-a7e538849939','true','id.token.claim'),('74eaeb74-0f13-41a0-bdff-a7e538849939','boolean','jsonType.label'),('74eaeb74-0f13-41a0-bdff-a7e538849939','emailVerified','user.attribute'),('74eaeb74-0f13-41a0-bdff-a7e538849939','true','userinfo.token.claim'),('781f5c56-e965-46bd-80ce-a6379cd31f86','true','access.token.claim'),('781f5c56-e965-46bd-80ce-a6379cd31f86','preferred_username','claim.name'),('781f5c56-e965-46bd-80ce-a6379cd31f86','true','id.token.claim'),('781f5c56-e965-46bd-80ce-a6379cd31f86','String','jsonType.label'),('781f5c56-e965-46bd-80ce-a6379cd31f86','username','user.attribute'),('781f5c56-e965-46bd-80ce-a6379cd31f86','true','userinfo.token.claim'),('7f53a497-0fdf-456a-95b4-44403b0b9bee','true','access.token.claim'),('7f53a497-0fdf-456a-95b4-44403b0b9bee','birthdate','claim.name'),('7f53a497-0fdf-456a-95b4-44403b0b9bee','true','id.token.claim'),('7f53a497-0fdf-456a-95b4-44403b0b9bee','String','jsonType.label'),('7f53a497-0fdf-456a-95b4-44403b0b9bee','birthdate','user.attribute'),('7f53a497-0fdf-456a-95b4-44403b0b9bee','true','userinfo.token.claim'),('8bac58ea-e65f-4e34-9102-aeb70e1b9b29','true','access.token.claim'),('8bac58ea-e65f-4e34-9102-aeb70e1b9b29','family_name','claim.name'),('8bac58ea-e65f-4e34-9102-aeb70e1b9b29','true','id.token.claim'),('8bac58ea-e65f-4e34-9102-aeb70e1b9b29','String','jsonType.label'),('8bac58ea-e65f-4e34-9102-aeb70e1b9b29','lastName','user.attribute'),('8bac58ea-e65f-4e34-9102-aeb70e1b9b29','true','userinfo.token.claim'),('8be77933-66ac-41f5-8cd7-9a9fe698df62','true','access.token.claim'),('8be77933-66ac-41f5-8cd7-9a9fe698df62','family_name','claim.name'),('8be77933-66ac-41f5-8cd7-9a9fe698df62','true','id.token.claim'),('8be77933-66ac-41f5-8cd7-9a9fe698df62','String','jsonType.label'),('8be77933-66ac-41f5-8cd7-9a9fe698df62','lastName','user.attribute'),('8be77933-66ac-41f5-8cd7-9a9fe698df62','true','userinfo.token.claim'),('8c64b80c-643c-4464-a758-e554ebfbfb22','true','access.token.claim'),('8c64b80c-643c-4464-a758-e554ebfbfb22','birthdate','claim.name'),('8c64b80c-643c-4464-a758-e554ebfbfb22','true','id.token.claim'),('8c64b80c-643c-4464-a758-e554ebfbfb22','String','jsonType.label'),('8c64b80c-643c-4464-a758-e554ebfbfb22','birthdate','user.attribute'),('8c64b80c-643c-4464-a758-e554ebfbfb22','true','userinfo.token.claim'),('8dcdb0c2-efc7-4932-90ee-308e6e24021f','true','access.token.claim'),('8dcdb0c2-efc7-4932-90ee-308e6e24021f','given_name','claim.name'),('8dcdb0c2-efc7-4932-90ee-308e6e24021f','true','id.token.claim'),('8dcdb0c2-efc7-4932-90ee-308e6e24021f','String','jsonType.label'),('8dcdb0c2-efc7-4932-90ee-308e6e24021f','firstName','user.attribute'),('8dcdb0c2-efc7-4932-90ee-308e6e24021f','true','userinfo.token.claim'),('8e72fd50-95b8-4079-bbbc-6ab6fe11294e','true','access.token.claim'),('8e72fd50-95b8-4079-bbbc-6ab6fe11294e','gender','claim.name'),('8e72fd50-95b8-4079-bbbc-6ab6fe11294e','true','id.token.claim'),('8e72fd50-95b8-4079-bbbc-6ab6fe11294e','String','jsonType.label'),('8e72fd50-95b8-4079-bbbc-6ab6fe11294e','gender','user.attribute'),('8e72fd50-95b8-4079-bbbc-6ab6fe11294e','true','userinfo.token.claim'),('91139c12-5971-44fe-8e41-e4ef630f8c68','true','access.token.claim'),('91139c12-5971-44fe-8e41-e4ef630f8c68','email','claim.name'),('91139c12-5971-44fe-8e41-e4ef630f8c68','true','id.token.claim'),('91139c12-5971-44fe-8e41-e4ef630f8c68','email','user.attribute'),('91139c12-5971-44fe-8e41-e4ef630f8c68','true','userinfo.token.claim'),('91400800-1632-43c0-93e7-4fea64563b45','true','access.token.claim'),('91400800-1632-43c0-93e7-4fea64563b45','picture','claim.name'),('91400800-1632-43c0-93e7-4fea64563b45','true','id.token.claim'),('91400800-1632-43c0-93e7-4fea64563b45','String','jsonType.label'),('91400800-1632-43c0-93e7-4fea64563b45','picture','user.attribute'),('91400800-1632-43c0-93e7-4fea64563b45','true','userinfo.token.claim'),('96f8d008-a4f5-41cc-8223-8f1660a49646','true','access.token.claim'),('96f8d008-a4f5-41cc-8223-8f1660a49646','upn','claim.name'),('96f8d008-a4f5-41cc-8223-8f1660a49646','true','id.token.claim'),('96f8d008-a4f5-41cc-8223-8f1660a49646','String','jsonType.label'),('96f8d008-a4f5-41cc-8223-8f1660a49646','username','user.attribute'),('96f8d008-a4f5-41cc-8223-8f1660a49646','true','userinfo.token.claim'),('9c0a91c5-334a-4af4-ab1c-2272b6641390','true','access.token.claim'),('9c0a91c5-334a-4af4-ab1c-2272b6641390','given_name','claim.name'),('9c0a91c5-334a-4af4-ab1c-2272b6641390','true','id.token.claim'),('9c0a91c5-334a-4af4-ab1c-2272b6641390','String','jsonType.label'),('9c0a91c5-334a-4af4-ab1c-2272b6641390','firstName','user.attribute'),('9c0a91c5-334a-4af4-ab1c-2272b6641390','true','userinfo.token.claim'),('9d9d6a90-dddd-425f-a1f1-f3b316252bc3','true','access.token.claim'),('9d9d6a90-dddd-425f-a1f1-f3b316252bc3','phone_number_verified','claim.name'),('9d9d6a90-dddd-425f-a1f1-f3b316252bc3','true','id.token.claim'),('9d9d6a90-dddd-425f-a1f1-f3b316252bc3','boolean','jsonType.label'),('9d9d6a90-dddd-425f-a1f1-f3b316252bc3','phoneNumberVerified','user.attribute'),('9d9d6a90-dddd-425f-a1f1-f3b316252bc3','true','userinfo.token.claim'),('a24bd95b-c6de-4c1c-82e3-e76457184a6f','true','access.token.claim'),('a24bd95b-c6de-4c1c-82e3-e76457184a6f','phone_number','claim.name'),('a24bd95b-c6de-4c1c-82e3-e76457184a6f','true','id.token.claim'),('a24bd95b-c6de-4c1c-82e3-e76457184a6f','String','jsonType.label'),('a24bd95b-c6de-4c1c-82e3-e76457184a6f','phoneNumber','user.attribute'),('a24bd95b-c6de-4c1c-82e3-e76457184a6f','true','userinfo.token.claim'),('a72c5e64-cfea-485f-9a6b-91e8fa016bad','true','access.token.claim'),('a72c5e64-cfea-485f-9a6b-91e8fa016bad','nickname','claim.name'),('a72c5e64-cfea-485f-9a6b-91e8fa016bad','true','id.token.claim'),('a72c5e64-cfea-485f-9a6b-91e8fa016bad','String','jsonType.label'),('a72c5e64-cfea-485f-9a6b-91e8fa016bad','nickname','user.attribute'),('a72c5e64-cfea-485f-9a6b-91e8fa016bad','true','userinfo.token.claim'),('af86814a-168c-497e-af5e-31227f8cdfd9','true','access.token.claim'),('af86814a-168c-497e-af5e-31227f8cdfd9','locale','claim.name'),('af86814a-168c-497e-af5e-31227f8cdfd9','true','id.token.claim'),('af86814a-168c-497e-af5e-31227f8cdfd9','String','jsonType.label'),('af86814a-168c-497e-af5e-31227f8cdfd9','locale','user.attribute'),('af86814a-168c-497e-af5e-31227f8cdfd9','true','userinfo.token.claim'),('b3cec881-0280-44ff-a0ba-2fe227a38ca9','true','access.token.claim'),('b3cec881-0280-44ff-a0ba-2fe227a38ca9','profile','claim.name'),('b3cec881-0280-44ff-a0ba-2fe227a38ca9','true','id.token.claim'),('b3cec881-0280-44ff-a0ba-2fe227a38ca9','String','jsonType.label'),('b3cec881-0280-44ff-a0ba-2fe227a38ca9','profile','user.attribute'),('b3cec881-0280-44ff-a0ba-2fe227a38ca9','true','userinfo.token.claim'),('b576cac8-3077-481c-81b5-1b2df2855caf','true','access.token.claim'),('b576cac8-3077-481c-81b5-1b2df2855caf','true','id.token.claim'),('b576cac8-3077-481c-81b5-1b2df2855caf','true','userinfo.token.claim'),('b7c93f8d-6f33-467d-95cd-0e9f31809608','true','access.token.claim'),('b7c93f8d-6f33-467d-95cd-0e9f31809608','profile','claim.name'),('b7c93f8d-6f33-467d-95cd-0e9f31809608','true','id.token.claim'),('b7c93f8d-6f33-467d-95cd-0e9f31809608','String','jsonType.label'),('b7c93f8d-6f33-467d-95cd-0e9f31809608','profile','user.attribute'),('b7c93f8d-6f33-467d-95cd-0e9f31809608','true','userinfo.token.claim'),('bb17289a-61dc-46fd-b794-8ac2abd3a1b2','Role','attribute.name'),('bb17289a-61dc-46fd-b794-8ac2abd3a1b2','Basic','attribute.nameformat'),('bb17289a-61dc-46fd-b794-8ac2abd3a1b2','false','single'),('be6a6ea8-06ef-4f2a-8f0a-389c7f5200e0','true','access.token.claim'),('be6a6ea8-06ef-4f2a-8f0a-389c7f5200e0','groups','claim.name'),('be6a6ea8-06ef-4f2a-8f0a-389c7f5200e0','true','id.token.claim'),('be6a6ea8-06ef-4f2a-8f0a-389c7f5200e0','String','jsonType.label'),('be6a6ea8-06ef-4f2a-8f0a-389c7f5200e0','true','multivalued'),('be6a6ea8-06ef-4f2a-8f0a-389c7f5200e0','foo','user.attribute'),('cc598a29-7eef-47e1-b1ff-21869ddd8961','true','access.token.claim'),('cc598a29-7eef-47e1-b1ff-21869ddd8961','upn','claim.name'),('cc598a29-7eef-47e1-b1ff-21869ddd8961','true','id.token.claim'),('cc598a29-7eef-47e1-b1ff-21869ddd8961','String','jsonType.label'),('cc598a29-7eef-47e1-b1ff-21869ddd8961','username','user.attribute'),('cc598a29-7eef-47e1-b1ff-21869ddd8961','true','userinfo.token.claim'),('d145dba0-bc0c-4be2-9280-b0d7a08e7364','true','access.token.claim'),('d145dba0-bc0c-4be2-9280-b0d7a08e7364','locale','claim.name'),('d145dba0-bc0c-4be2-9280-b0d7a08e7364','true','id.token.claim'),('d145dba0-bc0c-4be2-9280-b0d7a08e7364','String','jsonType.label'),('d145dba0-bc0c-4be2-9280-b0d7a08e7364','locale','user.attribute'),('d145dba0-bc0c-4be2-9280-b0d7a08e7364','true','userinfo.token.claim'),('e75a5684-606e-4b6f-bd69-c880a25f4a9d','true','access.token.claim'),('e75a5684-606e-4b6f-bd69-c880a25f4a9d','realm_access.roles','claim.name'),('e75a5684-606e-4b6f-bd69-c880a25f4a9d','String','jsonType.label'),('e75a5684-606e-4b6f-bd69-c880a25f4a9d','true','multivalued'),('e75a5684-606e-4b6f-bd69-c880a25f4a9d','foo','user.attribute'),('e7ca9bd8-c6fe-431e-94da-4fd05ba73a99','true','access.token.claim'),('e7ca9bd8-c6fe-431e-94da-4fd05ba73a99','phone_number_verified','claim.name'),('e7ca9bd8-c6fe-431e-94da-4fd05ba73a99','true','id.token.claim'),('e7ca9bd8-c6fe-431e-94da-4fd05ba73a99','boolean','jsonType.label'),('e7ca9bd8-c6fe-431e-94da-4fd05ba73a99','phoneNumberVerified','user.attribute'),('e7ca9bd8-c6fe-431e-94da-4fd05ba73a99','true','userinfo.token.claim'),('f43f0d14-3ef3-4ed5-a5ce-ebd3a029bcbf','true','access.token.claim'),('f43f0d14-3ef3-4ed5-a5ce-ebd3a029bcbf','true','id.token.claim'),('f43f0d14-3ef3-4ed5-a5ce-ebd3a029bcbf','true','userinfo.token.claim'),('f9c011fa-c722-440e-9318-295b3f1b7ee0','true','access.token.claim'),('f9c011fa-c722-440e-9318-295b3f1b7ee0','gender','claim.name'),('f9c011fa-c722-440e-9318-295b3f1b7ee0','true','id.token.claim'),('f9c011fa-c722-440e-9318-295b3f1b7ee0','String','jsonType.label'),('f9c011fa-c722-440e-9318-295b3f1b7ee0','gender','user.attribute'),('f9c011fa-c722-440e-9318-295b3f1b7ee0','true','userinfo.token.claim'),('fc12e386-4bc0-456e-8517-daeea31d0a07','true','access.token.claim'),('fc12e386-4bc0-456e-8517-daeea31d0a07','preferred_username','claim.name'),('fc12e386-4bc0-456e-8517-daeea31d0a07','true','id.token.claim'),('fc12e386-4bc0-456e-8517-daeea31d0a07','String','jsonType.label'),('fc12e386-4bc0-456e-8517-daeea31d0a07','username','user.attribute'),('fc12e386-4bc0-456e-8517-daeea31d0a07','true','userinfo.token.claim'),('fc1c76e9-aed0-4192-8088-2874eb055388','true','access.token.claim'),('fc1c76e9-aed0-4192-8088-2874eb055388','zoneinfo','claim.name'),('fc1c76e9-aed0-4192-8088-2874eb055388','true','id.token.claim'),('fc1c76e9-aed0-4192-8088-2874eb055388','String','jsonType.label'),('fc1c76e9-aed0-4192-8088-2874eb055388','zoneinfo','user.attribute'),('fc1c76e9-aed0-4192-8088-2874eb055388','true','userinfo.token.claim'),('fda8b03c-2b0c-4509-b6f2-7a89adf52923','true','access.token.claim'),('fda8b03c-2b0c-4509-b6f2-7a89adf52923','given_name','claim.name'),('fda8b03c-2b0c-4509-b6f2-7a89adf52923','true','id.token.claim'),('fda8b03c-2b0c-4509-b6f2-7a89adf52923','String','jsonType.label'),('fda8b03c-2b0c-4509-b6f2-7a89adf52923','firstName','user.attribute'),('fda8b03c-2b0c-4509-b6f2-7a89adf52923','true','userinfo.token.claim'),('ffc31944-3798-4a33-9ab9-65e80931b6ad','true','access.token.claim'),('ffc31944-3798-4a33-9ab9-65e80931b6ad','updated_at','claim.name'),('ffc31944-3798-4a33-9ab9-65e80931b6ad','true','id.token.claim'),('ffc31944-3798-4a33-9ab9-65e80931b6ad','String','jsonType.label'),('ffc31944-3798-4a33-9ab9-65e80931b6ad','updatedAt','user.attribute'),('ffc31944-3798-4a33-9ab9-65e80931b6ad','true','userinfo.token.claim');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM`
--

DROP TABLE IF EXISTS `REALM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM` (
  `ID` varchar(36) NOT NULL,
  `ACCESS_CODE_LIFESPAN` int DEFAULT NULL,
  `USER_ACTION_LIFESPAN` int DEFAULT NULL,
  `ACCESS_TOKEN_LIFESPAN` int DEFAULT NULL,
  `ACCOUNT_THEME` varchar(255) DEFAULT NULL,
  `ADMIN_THEME` varchar(255) DEFAULT NULL,
  `EMAIL_THEME` varchar(255) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_EXPIRATION` bigint DEFAULT NULL,
  `LOGIN_THEME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int DEFAULT NULL,
  `PASSWORD_POLICY` text,
  `REGISTRATION_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `REMEMBER_ME` bit(1) NOT NULL DEFAULT b'0',
  `RESET_PASSWORD_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `SOCIAL` bit(1) NOT NULL DEFAULT b'0',
  `SSL_REQUIRED` varchar(255) DEFAULT NULL,
  `SSO_IDLE_TIMEOUT` int DEFAULT NULL,
  `SSO_MAX_LIFESPAN` int DEFAULT NULL,
  `UPDATE_PROFILE_ON_SOC_LOGIN` bit(1) NOT NULL DEFAULT b'0',
  `VERIFY_EMAIL` bit(1) NOT NULL DEFAULT b'0',
  `MASTER_ADMIN_CLIENT` varchar(36) DEFAULT NULL,
  `LOGIN_LIFESPAN` int DEFAULT NULL,
  `INTERNATIONALIZATION_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_LOCALE` varchar(255) DEFAULT NULL,
  `REG_EMAIL_AS_USERNAME` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_DETAILS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EDIT_USERNAME_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `OTP_POLICY_COUNTER` int DEFAULT '0',
  `OTP_POLICY_WINDOW` int DEFAULT '1',
  `OTP_POLICY_PERIOD` int DEFAULT '30',
  `OTP_POLICY_DIGITS` int DEFAULT '6',
  `OTP_POLICY_ALG` varchar(36) DEFAULT 'HmacSHA1',
  `OTP_POLICY_TYPE` varchar(36) DEFAULT 'totp',
  `BROWSER_FLOW` varchar(36) DEFAULT NULL,
  `REGISTRATION_FLOW` varchar(36) DEFAULT NULL,
  `DIRECT_GRANT_FLOW` varchar(36) DEFAULT NULL,
  `RESET_CREDENTIALS_FLOW` varchar(36) DEFAULT NULL,
  `CLIENT_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `OFFLINE_SESSION_IDLE_TIMEOUT` int DEFAULT '0',
  `REVOKE_REFRESH_TOKEN` bit(1) NOT NULL DEFAULT b'0',
  `ACCESS_TOKEN_LIFE_IMPLICIT` int DEFAULT '0',
  `LOGIN_WITH_EMAIL_ALLOWED` bit(1) NOT NULL DEFAULT b'1',
  `DUPLICATE_EMAILS_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `DOCKER_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `REFRESH_TOKEN_MAX_REUSE` int DEFAULT '0',
  `ALLOW_USER_MANAGED_ACCESS` bit(1) NOT NULL DEFAULT b'0',
  `SSO_MAX_LIFESPAN_REMEMBER_ME` int NOT NULL,
  `SSO_IDLE_TIMEOUT_REMEMBER_ME` int NOT NULL,
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
INSERT INTO `REALM` VALUES ('master',60,300,60,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'master',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','EXTERNAL',1800,36000,_binary '\0',_binary '\0','eabd59b2-33cc-4adc-9a53-3d430f9afeb5',1800,_binary '\0',NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,1,30,6,'HmacSHA1','totp','68e10f8f-ee12-4bc1-afe1-b95327619e38','7bfc9c6a-2a40-48e4-8330-ef101bec5feb','673aef93-5589-4e70-8298-129f631154ce','340304d5-af3e-4678-b425-20ceba497178','7048876d-c317-419e-a65b-8694caaab3ef',2592000,_binary '\0',900,_binary '',_binary '\0','31be78b4-e9c6-498b-b2b7-c3674a01c069',0,_binary '\0',0,0,'65dccacf-34da-42c4-ac03-7092d3352aaf'),('Paris',60,300,300,'mytheme',NULL,NULL,_binary '',_binary '\0',0,'mytheme','paris',0,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0','EXTERNAL',1800,36000,_binary '\0',_binary '\0','0223e96b-970c-4c51-b5a4-8506a6796495',1800,_binary '\0',NULL,_binary '',_binary '\0',_binary '\0',_binary '\0',0,1,30,6,'HmacSHA1','totp','e138699f-85eb-4deb-b468-89700860bdc9','a2a6d8b2-1b6b-4228-9eaa-101d075f985c','3ed66797-d897-42ed-beae-604c69e16b50','62c005f5-e49f-45d6-9940-73e9fa2e94a8','073dcf56-7d66-4cd1-86f0-beb90e10e15a',2592000,_binary '\0',900,_binary '',_binary '\0','d951a7b7-a7fc-4f02-8a9b-0173f2465007',0,_binary '\0',0,0,'7d99c081-e4a1-42c6-83a7-5008d7f54890');
/*!40000 ALTER TABLE `REALM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_ATTRIBUTE`
--

DROP TABLE IF EXISTS `REALM_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
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
INSERT INTO `REALM_ATTRIBUTE` VALUES ('_browser_header.contentSecurityPolicy','master','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','Paris','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','master',''),('_browser_header.contentSecurityPolicyReportOnly','Paris',''),('_browser_header.strictTransportSecurity','master','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','Paris','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','master','nosniff'),('_browser_header.xContentTypeOptions','Paris','nosniff'),('_browser_header.xFrameOptions','master','SAMEORIGIN'),('_browser_header.xFrameOptions','Paris','SAMEORIGIN'),('_browser_header.xRobotsTag','master','none'),('_browser_header.xRobotsTag','Paris','none'),('_browser_header.xXSSProtection','master','1; mode=block'),('_browser_header.xXSSProtection','Paris','1; mode=block'),('actionTokenGeneratedByAdminLifespan','Paris','43200'),('actionTokenGeneratedByUserLifespan','Paris','300'),('bruteForceProtected','master','false'),('bruteForceProtected','Paris','false'),('cibaAuthRequestedUserHint','Paris','login_hint'),('cibaBackchannelTokenDeliveryMode','Paris','poll'),('cibaExpiresIn','Paris','120'),('cibaInterval','Paris','5'),('client-policies.policies','Paris','{\"policies\":[]}'),('client-policies.profiles','Paris','{\"profiles\":[]}'),('clientOfflineSessionIdleTimeout','Paris','0'),('clientOfflineSessionMaxLifespan','Paris','0'),('clientSessionIdleTimeout','Paris','0'),('clientSessionMaxLifespan','Paris','0'),('defaultSignatureAlgorithm','master','RS256'),('defaultSignatureAlgorithm','Paris','RS256'),('displayName','master','Keycloak'),('displayNameHtml','master','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','master','30'),('failureFactor','Paris','30'),('maxDeltaTimeSeconds','master','43200'),('maxDeltaTimeSeconds','Paris','43200'),('maxFailureWaitSeconds','master','900'),('maxFailureWaitSeconds','Paris','900'),('minimumQuickLoginWaitSeconds','master','60'),('minimumQuickLoginWaitSeconds','Paris','60'),('oauth2DeviceCodeLifespan','Paris','600'),('oauth2DevicePollingInterval','Paris','5'),('offlineSessionMaxLifespan','master','5184000'),('offlineSessionMaxLifespan','Paris','5184000'),('offlineSessionMaxLifespanEnabled','master','false'),('offlineSessionMaxLifespanEnabled','Paris','false'),('parRequestUriLifespan','Paris','60'),('permanentLockout','master','false'),('permanentLockout','Paris','false'),('quickLoginCheckMilliSeconds','master','1000'),('quickLoginCheckMilliSeconds','Paris','1000'),('userProfileEnabled','Paris','false'),('waitIncrementSeconds','master','60'),('waitIncrementSeconds','Paris','60'),('webAuthnPolicyAttestationConveyancePreference','Paris','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','Paris','not specified'),('webAuthnPolicyAuthenticatorAttachment','Paris','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','Paris','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','Paris','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','Paris','false'),('webAuthnPolicyCreateTimeout','Paris','0'),('webAuthnPolicyCreateTimeoutPasswordless','Paris','0'),('webAuthnPolicyRequireResidentKey','Paris','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','Paris','not specified'),('webAuthnPolicyRpEntityName','Paris','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','Paris','keycloak'),('webAuthnPolicyRpId','Paris',''),('webAuthnPolicyRpIdPasswordless','Paris',''),('webAuthnPolicySignatureAlgorithms','Paris','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','Paris','ES256'),('webAuthnPolicyUserVerificationRequirement','Paris','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','Paris','not specified');
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_DEFAULT_GROUPS`
--

DROP TABLE IF EXISTS `REALM_DEFAULT_GROUPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('master','jboss-logging'),('Paris','jboss-logging');
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_LOCALIZATIONS`
--

DROP TABLE IF EXISTS `REALM_LOCALIZATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',_binary '',_binary '','master'),('password','password',_binary '',_binary '','Paris');
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_SMTP_CONFIG`
--

DROP TABLE IF EXISTS `REALM_SMTP_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('Paris','');
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REDIRECT_URIS`
--

DROP TABLE IF EXISTS `REDIRECT_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `REDIRECT_URIS` VALUES ('06659433-c299-4183-af48-a8ab8f7df65b','/realms/Paris/account/*'),('231e6435-1c21-4016-9945-e3aa6fc5cf7e','/realms/paris/account/*'),('8f8ef5da-0e40-4034-96e9-203878205f27','/realms/master/account/*'),('b741f744-8388-4233-9edc-c9f2ed49016e','/admin/master/console/*'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','http://localhost:80/*'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','http://localhost:8080/*'),('c0a41b9a-c749-41b3-8d6d-308d6d945245','http://localhost/*'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','/admin/paris/console/*'),('fba13307-1a64-4cf2-8b28-462d71ce1a0a','/realms/master/account/*');
/*!40000 ALTER TABLE `REDIRECT_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIRED_ACTION_CONFIG`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REQUIRED_ACTION_CONFIG` (
  `REQUIRED_ACTION_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REQUIRED_ACTION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_ACTION` bit(1) NOT NULL DEFAULT b'0',
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('2fdc7f3c-dbfc-471f-a47e-8096d659676b','UPDATE_PASSWORD','Update Password','master',_binary '',_binary '\0','UPDATE_PASSWORD',30),('3024cdb5-e5fd-4400-9d42-47ec3c0dba48','UPDATE_PASSWORD','Update Password','Paris',_binary '',_binary '\0','UPDATE_PASSWORD',30),('3da75aa1-6b26-406d-a697-7670f4314dd3','VERIFY_EMAIL','Verify Email','Paris',_binary '',_binary '\0','VERIFY_EMAIL',50),('52f02c6e-a3a7-44b3-9619-e2acf5f3480d','delete_account','Delete Account','master',_binary '\0',_binary '\0','delete_account',60),('552cb2ba-622d-46c9-9370-ed2adeff0965','delete_account','Delete Account','Paris',_binary '\0',_binary '\0','delete_account',60),('61fdb9db-2b9e-474f-b93f-a0d84c5a10e8','UPDATE_PROFILE','Update Profile','Paris',_binary '',_binary '\0','UPDATE_PROFILE',40),('6a519c40-71a7-4b06-a8eb-9bfde319b669','terms_and_conditions','Terms and Conditions','master',_binary '\0',_binary '\0','terms_and_conditions',20),('737d4d47-28a2-4475-ab8c-cd1f1a078c92','CONFIGURE_TOTP','Configure OTP','Paris',_binary '',_binary '\0','CONFIGURE_TOTP',10),('73d055a9-9786-48d8-b481-50013785173a','update_user_locale','Update User Locale','master',_binary '',_binary '\0','update_user_locale',1000),('937ad40b-b0f7-41fc-bec5-5338067ce7c8','UPDATE_PROFILE','Update Profile','master',_binary '',_binary '\0','UPDATE_PROFILE',40),('b8ded332-523a-4c5f-b736-e53ada9a7227','CONFIGURE_TOTP','Configure OTP','master',_binary '',_binary '\0','CONFIGURE_TOTP',10),('bc1e0a49-e648-4f32-9b77-7d99e75ef14f','update_user_locale','Update User Locale','Paris',_binary '',_binary '\0','update_user_locale',1000),('be7de110-9d25-42c7-b239-f63f900745ff','terms_and_conditions','Terms and Conditions','Paris',_binary '\0',_binary '\0','terms_and_conditions',20),('f00d14d7-21ad-40da-9d51-cc6e4a20ed9c','VERIFY_EMAIL','Verify Email','master',_binary '',_binary '\0','VERIFY_EMAIL',50);
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `RESOURCE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER` (
  `ID` varchar(36) NOT NULL,
  `ALLOW_RS_REMOTE_MGMT` bit(1) NOT NULL DEFAULT b'0',
  `POLICY_ENFORCE_MODE` varchar(15) NOT NULL,
  `DECISION_STRATEGY` tinyint NOT NULL DEFAULT '1',
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_PERM_TICKET` (
  `ID` varchar(36) NOT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `REQUESTER` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint NOT NULL,
  `GRANTED_TIMESTAMP` bigint DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_POLICY` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  `DECISION_STRATEGY` varchar(20) DEFAULT NULL,
  `LOGIC` varchar(20) DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `ROLE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `ROLE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `SCOPE_MAPPING` VALUES ('fba13307-1a64-4cf2-8b28-462d71ce1a0a','336e367f-ded8-4e8d-a7a5-fe0b591aa872'),('06659433-c299-4183-af48-a8ab8f7df65b','6db2b4a8-ca8e-4e74-9d99-79229b8ff9ba');
/*!40000 ALTER TABLE `SCOPE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCOPE_POLICY`
--

DROP TABLE IF EXISTS `SCOPE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USERNAME_LOGIN_FAILURE` (
  `REALM_ID` varchar(36) NOT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `FAILED_LOGIN_NOT_BEFORE` int DEFAULT NULL,
  `LAST_FAILURE` bigint DEFAULT NULL,
  `LAST_IP_FAILURE` varchar(255) DEFAULT NULL,
  `NUM_FAILURES` int DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_ATTRIBUTE` (`USER_ID`),
  KEY `IDX_USER_ATTRIBUTE_NAME` (`NAME`,`VALUE`),
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `CREATED_DATE` bigint DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_JKUWUVD56ONTGSUHOGM8UEWRT` (`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`USER_ID`),
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_CONSENT_CLIENT_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`),
  KEY `IDX_USCONSENT_CLSCOPE` (`USER_CONSENT_ID`),
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
/*!50503 SET character_set_client = utf8mb4 */;
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
  `CREATED_TIMESTAMP` bigint DEFAULT NULL,
  `SERVICE_ACCOUNT_CLIENT_LINK` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_DYKN684SL8UP1CRFEI6ECKHD7` (`REALM_ID`,`EMAIL_CONSTRAINT`),
  UNIQUE KEY `UK_RU8TT6T700S9V50BU18WS5HA6` (`REALM_ID`,`USERNAME`),
  KEY `IDX_USER_EMAIL` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ENTITY`
--

LOCK TABLES `USER_ENTITY` WRITE;
/*!40000 ALTER TABLE `USER_ENTITY` DISABLE KEYS */;
INSERT INTO `USER_ENTITY` VALUES ('094a2be3-d4a7-4325-aa90-b8c8302ede5e','test@paris.fr','test@paris.fr',_binary '\0',_binary '',NULL,'test','test','Paris','test@paris.fr',1684333554809,NULL,0),('2082746c-ea28-42dc-a0b1-c06dab0c2c14','test@test.com','test@test.com',_binary '\0',_binary '',NULL,'test','test','Paris','test@test.com',1684330897965,NULL,0),('bb2e51c8-b514-400f-a883-1e03d033839b',NULL,'e0f3edab-9a96-48ec-803e-41624c9cf4a1',_binary '\0',_binary '',NULL,NULL,NULL,'master','admin',1684325167023,NULL,0);
/*!40000 ALTER TABLE `USER_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_FEDERATION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `CHANGED_SYNC_PERIOD` int DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `FULL_SYNC_PERIOD` int DEFAULT NULL,
  `LAST_SYNC` int DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('7d99c081-e4a1-42c6-83a7-5008d7f54890','094a2be3-d4a7-4325-aa90-b8c8302ede5e'),('7d99c081-e4a1-42c6-83a7-5008d7f54890','2082746c-ea28-42dc-a0b1-c06dab0c2c14'),('5e8679ad-5e90-422e-afaa-f7ca8ade54f3','bb2e51c8-b514-400f-a883-1e03d033839b'),('65dccacf-34da-42c4-ac03-7092d3352aaf','bb2e51c8-b514-400f-a883-1e03d033839b');
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_SESSION`
--

DROP TABLE IF EXISTS `USER_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_SESSION` (
  `ID` varchar(36) NOT NULL,
  `AUTH_METHOD` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `LAST_SESSION_REFRESH` int DEFAULT NULL,
  `LOGIN_USERNAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `REMEMBER_ME` bit(1) NOT NULL DEFAULT b'0',
  `STARTED` int DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `USER_SESSION_STATE` int DEFAULT NULL,
  `BROKER_SESSION_ID` varchar(255) DEFAULT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_SESSION`
--

LOCK TABLES `USER_SESSION` WRITE;
/*!40000 ALTER TABLE `USER_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_SESSION_NOTE`
--

DROP TABLE IF EXISTS `USER_SESSION_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_SESSION_NOTE` (
  `USER_SESSION` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` text,
  PRIMARY KEY (`USER_SESSION`,`NAME`),
  CONSTRAINT `FK5EDFB00FF51D3472` FOREIGN KEY (`USER_SESSION`) REFERENCES `USER_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_SESSION_NOTE`
--

LOCK TABLES `USER_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `USER_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WEB_ORIGINS`
--

DROP TABLE IF EXISTS `WEB_ORIGINS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `WEB_ORIGINS` VALUES ('b741f744-8388-4233-9edc-c9f2ed49016e','+'),('e85c948c-1a35-48ce-b8b1-c8f76c1ffbf5','+');
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

-- Dump completed on 2023-05-17 17:41:02
