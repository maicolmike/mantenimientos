-- MySQL dump 10.13  Distrib 8.0.44, for Linux (x86_64)
--
-- Host: localhost    Database: mantenimientos
-- ------------------------------------------------------
-- Server version	8.0.44-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add equipo',7,'add_equipo'),(26,'Can change equipo',7,'change_equipo'),(27,'Can delete equipo',7,'delete_equipo'),(28,'Can view equipo',7,'view_equipo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'registro','equipo'),(5,'sessions','session'),(6,'users','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-04-04 20:07:12.571162'),(2,'contenttypes','0002_remove_content_type_name','2025-04-04 20:07:12.697298'),(3,'auth','0001_initial','2025-04-04 20:07:12.999025'),(4,'auth','0002_alter_permission_name_max_length','2025-04-04 20:07:13.106103'),(5,'auth','0003_alter_user_email_max_length','2025-04-04 20:07:13.117071'),(6,'auth','0004_alter_user_username_opts','2025-04-04 20:07:13.129955'),(7,'auth','0005_alter_user_last_login_null','2025-04-04 20:07:13.142934'),(8,'auth','0006_require_contenttypes_0002','2025-04-04 20:07:13.146568'),(9,'auth','0007_alter_validators_add_error_messages','2025-04-04 20:07:13.156480'),(10,'auth','0008_alter_user_username_max_length','2025-04-04 20:07:13.166640'),(11,'auth','0009_alter_user_last_name_max_length','2025-04-04 20:07:13.188113'),(12,'auth','0010_alter_group_name_max_length','2025-04-04 20:07:13.333204'),(13,'auth','0011_update_proxy_permissions','2025-04-04 20:07:13.341095'),(14,'auth','0012_alter_user_first_name_max_length','2025-04-04 20:07:13.350086'),(15,'users','0001_initial','2025-04-04 20:07:13.658196'),(16,'admin','0001_initial','2025-04-04 20:07:13.798047'),(17,'admin','0002_logentry_remove_auto_add','2025-04-04 20:07:13.810323'),(18,'admin','0003_logentry_add_action_flag_choices','2025-04-04 20:07:13.821938'),(19,'registro','0001_initial','2025-04-04 20:07:13.853892'),(20,'sessions','0001_initial','2025-04-04 20:07:13.906812'),(21,'users','0002_alter_user_groups_alter_user_user_permissions','2025-04-04 20:07:13.935237');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('02hic0nqhx4zrr3tmpegbxsgiiovvh4e','.eJxVjDsOwyAQBe9CHSHA_DZlep8BLSwEJxGWjF1FuXtsyUXSzsx7bxZwW2vYel7CROzKFLv8sojpmdsh6IHtPvM0t3WZIj8SftrOx5ny63a2fwcVe93XlpSyTnsrI1CUSngPriStiwEoO1QmGi9QGuddErKQdYAwgMUhGaXZ5wu2wTal:1vj06D:lqYKVMfXKVayNSFACqkvJzFI49Q0Psx-cGDz3ZP7hHM','2026-01-22 19:22:09.917982'),('0k7851txwkes02bf68dgbnn350ihxhkf','.eJxVjDsOwyAQBe9CHSHA_DZlep8BLSwEJxGWjF1FuXtsyUXSzsx7bxZwW2vYel7CROzKFLv8sojpmdsh6IHtPvM0t3WZIj8SftrOx5ny63a2fwcVe93XlpSyTnsrI1CUSngPriStiwEoO1QmGi9QGuddErKQdYAwgMUhGaXZ5wu2wTal:1vj4r1:Z2G74eNOmywhPe_7NvtS2U5VLWu6FbYoGPD9EWMiLD8','2026-01-23 00:26:47.033812'),('0ux52kdf6hctr1keu7ilqxjsvasivrxr','.eJxVjDsOwjAQBe_iGll2vP5R0nMGa73r4ABypDipEHeHSCmgfTPzXiLhtta09bKkicVZWHH63TLSo7Qd8B3bbZY0t3WZstwVedAurzOX5-Vw_w4q9vqtVYgcFFoegD0GKkCueBsNZhit8kYNHLRTBorR6CmC9t6NxC4bTQDi_QHU3jdG:1vjIw3:Tl5oDZu-nyehcL8xwRQJAsumf_GADdrW6Me9R3XFwsc','2026-01-23 15:28:55.755087'),('0w5eht4izyznchk1zy55or007yysnrc1','.eJxVjDsOwyAQBe9CHSHA_DZlep8BLSwEJxGWjF1FuXtsyUXSzsx7bxZwW2vYel7CROzKFLv8sojpmdsh6IHtPvM0t3WZIj8SftrOx5ny63a2fwcVe93XlpSyTnsrI1CUSngPriStiwEoO1QmGi9QGuddErKQdYAwgMUhGaXZ5wu2wTal:1vj3Kb:S4q4N_hB2rCy_wn-9o_0qPdS2rD-cl8038eVXpgqWzM','2026-01-22 22:49:13.866263'),('2csw47t6bkm30g8jzzbfmyntm4qn0ip3','.eJxVjDsOwjAQBe_iGll2vP5R0nMGa73r4ABypDipEHeHSCmgfTPzXiLhtta09bKkicVZWHH63TLSo7Qd8B3bbZY0t3WZstwVedAurzOX5-Vw_w4q9vqtVYgcFFoegD0GKkCueBsNZhit8kYNHLRTBorR6CmC9t6NxC4bTQDi_QHU3jdG:1viDdy:kH7oVzvKThlw_bIjr4e_zfbK8MN_-vfq18QbqKhI08A','2026-01-20 15:37:46.184039'),('2iic9pv8wozezf0sjo4hmpqmkdt5o92t','.eJxVjDsOwyAQBe9CHSHA_DZlep8BLSwEJxGWjF1FuXtsyUXSzsx7bxZwW2vYel7CROzKFLv8sojpmdsh6IHtPvM0t3WZIj8SftrOx5ny63a2fwcVe93XlpSyTnsrI1CUSngPriStiwEoO1QmGi9QGuddErKQdYAwgMUhGaXZ5wu2wTal:1vicb4:5HI265zVnf0ppN_Cqt7YpnDXUTPPM7cePAgf7QnCH6s','2026-01-21 18:16:26.137807'),('7yioa94bc4g59rwl1uwgh13csqpv8lca','.eJxVjDsOwyAQBe9CHSHA_DZlep8BLSwEJxGWjF1FuXtsyUXSzsx7bxZwW2vYel7CROzKFLv8sojpmdsh6IHtPvM0t3WZIj8SftrOx5ny63a2fwcVe93XlpSyTnsrI1CUSngPriStiwEoO1QmGi9QGuddErKQdYAwgMUhGaXZ5wu2wTal:1vid8S:IwlSlhqzTl_1Bav6U7_dei_S_t_-dpYdoCK56U3dMvg','2026-01-21 18:50:56.224137'),('8ugpw6avfyy7bhwhicurkt03jv1vvf5u','.eJxVjDsOwyAQBe9CHSHA_DZlep8BLSwEJxGWjF1FuXtsyUXSzsx7bxZwW2vYel7CROzKFLv8sojpmdsh6IHtPvM0t3WZIj8SftrOx5ny63a2fwcVe93XlpSyTnsrI1CUSngPriStiwEoO1QmGi9QGuddErKQdYAwgMUhGaXZ5wu2wTal:1vibDH:-K2xbn1ptE_b6LD9LYCt-Qlek_G7pgSqf-KeWDu1cAY','2026-01-21 16:47:47.197668'),('c9k7ty983w9iqluaxzb2zpcmp2pkm8p7','.eJxVjDsOwjAQBe_iGll2vP5R0nMGa73r4ABypDipEHeHSCmgfTPzXiLhtta09bKkicVZWHH63TLSo7Qd8B3bbZY0t3WZstwVedAurzOX5-Vw_w4q9vqtVYgcFFoegD0GKkCueBsNZhit8kYNHLRTBorR6CmC9t6NxC4bTQDi_QHU3jdG:1vj2wm:uciP2BnNA2LrtjvKy89lMUkR97GYKKuoZZ4RaBvpFDE','2026-01-22 22:24:36.016021'),('da858fbepmmlahrc59ifk29y9dyxyjg1','.eJxVjDsOwyAQBe9CHSHA_DZlep8BLSwEJxGWjF1FuXtsyUXSzsx7bxZwW2vYel7CROzKFLv8sojpmdsh6IHtPvM0t3WZIj8SftrOx5ny63a2fwcVe93XlpSyTnsrI1CUSngPriStiwEoO1QmGi9QGuddErKQdYAwgMUhGaXZ5wu2wTal:1vj5qp:l1Tpuf_UE8R7nbID6nB1p9VYVuqgKp2_04TCi5KXTxE','2026-01-23 01:30:39.327170'),('eb2aylm9trleh2dya31y711kzdr4blrp','.eJxVjMsOwiAQRf-FtSHlDS7d-w1kBgapGkhKuzL-uzbpQrf3nHNfLMK21rgNWuKc2ZkJdvrdENKD2g7yHdqt89TbuszId4UfdPBrz_S8HO7fQYVRv7UWOSmPUucgiSz6CdBqhxKc16ook4xSZF3waIUxpggRhJ5CsCUAWcPeH9G-Nvk:1vgNN5:5tE3cN2A28DA_1PVb71lepPgrYBLzq5ZP3mEx3tYSMA','2026-01-15 13:36:43.688466'),('ey7n88of2njwcj5wnwbxwttpvxucjcnt','.eJxVjM0OwiAQhN-FsyHgAl08evcZCD-7UjU0Ke3J-O62SQ96m8z3zbxFiOtSw9ppDmMRF6HF6bdLMT-p7aA8YrtPMk9tmcckd0UetMvbVOh1Pdy_gxp73dasLWfFmJRHr73j7D2hxuEcXUKXzBYYgMFpMEhoWCEMzmabHLEF8fkC1AQ3Pw:1vg7HU:6uQ0tQz6x6eEPK12PMfoeLbRdXwoghT2Z3TWfiP8Blc','2026-01-14 20:25:52.722276'),('ik9dva8ri4mflib4buk0f23nd0dc5bxr','.eJxVjDsOwyAQBe9CHSHA_DZlep8BLSwEJxGWjF1FuXtsyUXSzsx7bxZwW2vYel7CROzKFLv8sojpmdsh6IHtPvM0t3WZIj8SftrOx5ny63a2fwcVe93XlpSyTnsrI1CUSngPriStiwEoO1QmGi9QGuddErKQdYAwgMUhGaXZ5wu2wTal:1viFiR:Ix282WOSRq9JiMnW6ycw33V6GuCTKyYkE-7kMxTq2u8','2026-01-20 17:50:31.664676'),('kwgzbolss8ijxpe97stnnmxw6k4zdkrz','.eJxVjDsOwyAQBe9CHSHA_DZlep8BLSwEJxGWjF1FuXtsyUXSzsx7bxZwW2vYel7CROzKFLv8sojpmdsh6IHtPvM0t3WZIj8SftrOx5ny63a2fwcVe93XlpSyTnsrI1CUSngPriStiwEoO1QmGi9QGuddErKQdYAwgMUhGaXZ5wu2wTal:1vidKU:eSb7wBYjNBE_xDfRFocYHjP5zWmezpLkazVCY3ed_vo','2026-01-21 19:03:22.489973'),('ljmr8a5xwhl76wk19rk31m02aqpptwmd','.eJxVjDsOwyAQBe9CHSHA_DZlep8BLSwEJxGWjF1FuXtsyUXSzsx7bxZwW2vYel7CROzKFLv8sojpmdsh6IHtPvM0t3WZIj8SftrOx5ny63a2fwcVe93XlpSyTnsrI1CUSngPriStiwEoO1QmGi9QGuddErKQdYAwgMUhGaXZ5wu2wTal:1vih5f:BlHRUp9r7OF_4BZx0AYe2-HYMZ69HDmckfixTFhiR9U','2026-01-21 23:04:19.958754'),('qm5bwvdd9kwog066h1tiaftv8nwv7uv9','.eJxVjDsOwyAQBe9CHSHA_DZlep8BLSwEJxGWjF1FuXtsyUXSzsx7bxZwW2vYel7CROzKFLv8sojpmdsh6IHtPvM0t3WZIj8SftrOx5ny63a2fwcVe93XlpSyTnsrI1CUSngPriStiwEoO1QmGi9QGuddErKQdYAwgMUhGaXZ5wu2wTal:1vj40j:0_8FxVep1cstWmuE_He6qKrQ19LrovxO-7rqYLgToac','2026-01-22 23:32:45.861869'),('rd4vi42xj43bsf3yrkvfvbd002e6cu5t','.eJxVjDsOwyAQBe9CHSHA_DZlep8BLSwEJxGWjF1FuXtsyUXSzsx7bxZwW2vYel7CROzKFLv8sojpmdsh6IHtPvM0t3WZIj8SftrOx5ny63a2fwcVe93XlpSyTnsrI1CUSngPriStiwEoO1QmGi9QGuddErKQdYAwgMUhGaXZ5wu2wTal:1vj4SC:uJbcu5t0MTe2hN1ouet0SmsKKDRNLeFXMpku8MYVUw4','2026-01-23 00:01:08.727134'),('t5rga3icm7n1av0dwg3xxhuw8ykevp77','.eJxVjMsOwiAQRf-FtSHlDS7d-w1kBgapGkhKuzL-uzbpQrf3nHNfLMK21rgNWuKc2ZkJdvrdENKD2g7yHdqt89TbuszId4UfdPBrz_S8HO7fQYVRv7UWOSmPUucgiSz6CdBqhxKc16ook4xSZF3waIUxpggRhJ5CsCUAWcPeH9G-Nvk:1vg8cl:cQS5OB7sG_7dTG0ZRwkYQcMCgv0eECxuPPBFo9aONEg','2026-01-14 21:51:55.790051'),('uvxif5y27obisjtn0138epqg55tjdvzi','.eJxVjDsOwyAQBe9CHSHA_DZlep8BLSwEJxGWjF1FuXtsyUXSzsx7bxZwW2vYel7CROzKFLv8sojpmdsh6IHtPvM0t3WZIj8SftrOx5ny63a2fwcVe93XlpSyTnsrI1CUSngPriStiwEoO1QmGi9QGuddErKQdYAwgMUhGaXZ5wu2wTal:1vivxw:Wj1LIfFF98RCww4vtI0bo8yj9mkHzjfNO8EEPCSSjno','2026-01-22 14:57:20.243935'),('wfayvduiri9925bi6x8xeegz7b29rr5z','.eJxVjDsOwyAQBe9CHSHA_DZlep8BLSwEJxGWjF1FuXtsyUXSzsx7bxZwW2vYel7CROzKFLv8sojpmdsh6IHtPvM0t3WZIj8SftrOx5ny63a2fwcVe93XlpSyTnsrI1CUSngPriStiwEoO1QmGi9QGuddErKQdYAwgMUhGaXZ5wu2wTal:1vjI92:u73zXIWQTW6D9S4X5Zt9K1S6Mo-NT-FM9rl8N7rxGAQ','2026-01-23 14:38:16.804755'),('wu7ub0n2butkuz5x3st7djrlzvtxkhej','.eJxVjDsOwyAQBe9CHSHA_DZlep8BLSwEJxGWjF1FuXtsyUXSzsx7bxZwW2vYel7CROzKFLv8sojpmdsh6IHtPvM0t3WZIj8SftrOx5ny63a2fwcVe93XlpSyTnsrI1CUSngPriStiwEoO1QmGi9QGuddErKQdYAwgMUhGaXZ5wu2wTal:1viFMF:zVKeqdHGo4EeM07D-Hm3eBxmzINFbaBfy7MJjLv4680','2026-01-20 17:27:35.197432');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_equipo`
--

DROP TABLE IF EXISTS `registro_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_equipo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `serial_contabilidad` varchar(50) DEFAULT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `serial` varchar(50) NOT NULL,
  `procesador` varchar(100) NOT NULL,
  `memoria_ram` varchar(50) NOT NULL,
  `capacidad_max` varchar(50) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `velocidad` varchar(50) DEFAULT NULL,
  `disco_duro` varchar(50) NOT NULL,
  `capacidad` varchar(50) NOT NULL,
  `version_windows` varchar(50) NOT NULL,
  `clave_windows` varchar(50) DEFAULT NULL,
  `version_office` varchar(50) NOT NULL,
  `clave_office` varchar(50) DEFAULT NULL,
  `ip` char(39) DEFAULT NULL,
  `any_desk` varchar(50) DEFAULT NULL,
  `clave_admin` varchar(50) DEFAULT NULL,
  `funcionario_a_cargo` varchar(100) DEFAULT NULL,
  `observaciones` longtext,
  `funcionario_registra` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial` (`serial`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_equipo`
--

LOCK TABLES `registro_equipo` WRITE;
/*!40000 ALTER TABLE `registro_equipo` DISABLE KEYS */;
INSERT INTO `registro_equipo` VALUES (1,'MP1AKKE5','LENOVO','F0D6000PLD','MP1AKKE5','AMD A9-9420 RADEON R5, 5 COMPUTE CORES 2C+3G','8 GB','8 GB','DDR3','1866','HDD','2 TB','Microsoft Windows 10 Home Single Language','99PKY-N8VQY-X9KB2-VFBW9-TF4JY','Hogar y Empresas 2016','7BPNJ-2CXX9-4G37W-GCM7H-3J3HX','192.168.92.35','1298431237','cr5CIstem@s','Pasante','Equipo pendiente por cambio de Disco Solido','CRISTIAN MANUEL ROBLES'),(2,'MP2B9BJ8','LENOVO','12K00046LS','MP2B9BJ8','13th Gen Intel(R) Core(TM) i5-13420H','16 GB','64 GB','DDR5','3200','SSD','500 GB','Windows 11 Pro','T3CQT-BNV89-D64M6-CCHWJ-33XCT','Hogar y Empresas 2019','37QJN-TXHVP-GDWK4-DF2YF-YTFRG','192.168.92.90','183005844','cr5CIstem@s','PAOLA GAVIRIA','EQUIPO NUEVO EN GARANTIA - COORDINADOR DE OPERACIONES ***21/Enero/2026***','CRISTIAN MANUEL ROBLES'),(3,'A0111667','LENOVO','001JLS','S1H06LFA','Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz (2.81 GHz)','8 GB','32 GB','DDR4','2666','SSD','500 GB','Windows 11 Pro',NULL,'Hogar y Empresas 2019','VVB4G','192.168.92.22',NULL,NULL,'RESPALDO','EQUIPO DE RESPALDO EN BUEN ESTADO, FORMATEADO Y MANTENIMIENTO EN VISITA DE 21 ENERO 2026','CRISTIAN MANUEL ROBLES'),(4,'A0111668','LENOVO','10UL001JLS','S1H06LF5','Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz.','8 GB','64 GB','DDR4','2666','SSD','250 GB','Windows 10 Pro','RNKHT-8YRMP-287RM-XQK6D-TCQGP','Hogar y Empresas 2019','D7B4G','192.168.92.25','540038648','cr5CIstem@s','KELLY MABEL GUERRERO','','CRISTIAN MANUEL ROBLES'),(5,'A011177','LENOVO','P901L9A4','P901L9A4','Intel(R) Core(TM) i3-5005U CPU @ 2.00GHz.','4 GB','64 GB','DDR3','1600','SSD','500 GB','Windows 10 Home Single Language','GKJVW-QQN23-WF7BJ-36W4K-JXCH2','Hogar y Empresas 2013','YBFP3 - REASIGNADA JEIMY','192.168.92.14','1092834454','cr5CIstem@s','JEIMIY VARGAS','EQUIPO PARA CAMBIO CON EQUIPO DEIBY SERIAL MP1A2QMW - EQUIPO QUEDA FUERA DE USO','CRISTIAN MANUEL ROBLES'),(6,'MP1A2QMW','LENOVO','MP1A2QMW','MP1A2QMW','Intel(R) Core(TM) i3-6006U CPU @ 2.00GHz','8 GB','32 GB','DDR3','2133','SSD','500 GB','Windows 10 Home Single Language','2HQ96-XN98F-T4TYY-CD4YK-DYHYP','Hogar y Empresas 2013','YBFP3','192.168.92.14','1014509477','cr5CIstem@s','JEYMY VARGAS','CAMBIO DE EQUIPO - RESPONSABLE DEIBY QUENAN - TRASLASDO DE INFORMACIÓN Y FORMATEO','CRISTIAN MANUEL ROBLES'),(7,'MJ0H5JM7','LENOVO','11CES0QN00','MJ0H5JM7','Intel(R) Core(TM) i7-10700 CPU @ 2.90GHz.','8 GB','64 GB','DDR4','3200','HDD','1 TB','Microsoft Windows 11 Pro','6MKR6-6NM77-4R2FF-37T46-QYH22','Hogar y Empresas 2016','FM6BK','192.168.92.30','244187770','cr5CIstem@s','FREDDY GUINCHIN','DIRECTOR DE AGENCIA - EQUIPO CON DOS DISCOS - SSD 128GB','CRISTIAN MANUEL ROBLES');
/*!40000 ALTER TABLE `registro_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES (1,'pbkdf2_sha256$1000000$j1lg75vY5uSrmdZcUZSDVn$n5RvKT3wxgcC6IusDbUt/uxFOXW5UwHWcSefG87UiIk=','2026-01-15 17:02:35.796439',1,'admin11','','','soportesistemas@cootep.com.co',1,1,'2025-04-04 20:09:23.280060',0),(2,'pbkdf2_sha256$1000000$00jSlY850eTwuSlxaqVthe$wgO4f70NdvF8H8sdEHGKZprHbdxCkvc3AucxcoGz1BE=','2026-01-23 14:59:46.356910',1,'CROBLES','CRISTIAN MANUEL ROBLES','','auxsistemas@cootep.com.co',1,1,'2026-01-14 21:37:35.962329',0),(3,'pbkdf2_sha256$1000000$qNVITnKnbPzkIkMrDaryl9$8eJDIDGUcbIFVgefDoO+ap3j24OETXgb7qDzXIY0w7M=',NULL,1,'JROCER','JAIME FERNANDO ROSERO SANCHEZ','','sistemas@cootep.com.co',1,1,'2026-01-14 21:39:18.337167',0),(4,'pbkdf2_sha256$1000000$LoXInRTVR0YdEq3fuuC7h0$wXaZzL2iI6NBBInrUqJwyjmsNltlIrodxXGDv6stJng=',NULL,1,'WMOREN','WILMER MORENO ESTRADA','','oficialseguridad@cootep.com.co',1,1,'2026-01-14 21:39:48.953898',0),(5,'pbkdf2_sha256$1000000$ztZir4pBwsXG8yASqLVbMK$EoOhpciWQZDFQWAoPgbMlB2eObRJkPzHntRhZzdBmFE=','2026-01-23 15:18:54.186589',1,'MYELA','MICHAEL YELA VALENCIA','','soportesistemas@cootep.com.co',1,1,'2026-01-15 17:03:25.414212',0);
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_groups`
--

DROP TABLE IF EXISTS `users_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_groups`
--

LOCK TABLES `users_user_groups` WRITE;
/*!40000 ALTER TABLE `users_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_user_permissions`
--

DROP TABLE IF EXISTS `users_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_user_permissions`
--

LOCK TABLES `users_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-23 15:19:19
