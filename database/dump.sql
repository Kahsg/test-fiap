/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: mariadb    Database: test-fiap
-- ------------------------------------------------------
-- Server version	11.4.2-MariaDB-ubu2404

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

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alunos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` uuid NOT NULL,
  `nome` text NOT NULL COMMENT 'Nome do aluno',
  `nascimento` date NOT NULL COMMENT 'Data de nascimento',
  `usuario` varchar(255) NOT NULL COMMENT 'Usuário',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alunos_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'53eaed1d-da9c-37f5-8293-04691a91e9d2','Srta. Valentina Lorena Ferminiano','2013-03-24','amelia97',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(2,'652003ab-262d-336e-82c4-aa38389b671e','Elaine Luísa Ferreira Jr.','2022-12-20','sergio.delvalle',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(3,'ea466ede-fd2b-3ec6-829d-2c28ec9cced3','Gabriela de Aguiar','1990-11-13','thiago58',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(4,'5fed2927-e540-36e5-8c1a-f06b1c539599','Cristina Grego Gonçalves','1986-01-22','mvalente',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(5,'c8c6bb59-3c66-3f09-9341-468c9450f446','Sra. Eunice Furtado Matos','1994-11-16','souza.milene',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(6,'3d5c8b37-b1f7-3f78-8b01-8c3f2e16931f','Thomas Lourenço Marques Filho','2021-12-16','arthur23',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(7,'9b1c9d95-815c-3c17-b0ab-cd48663b6281','Leonardo Bittencourt Jr.','1980-06-17','sanches.andrea',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(8,'ac3ba3c7-7f94-3ec5-99e3-85c9dd655347','Ellen Delvalle','2004-04-26','yohanna84',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(9,'79a144df-ae0d-3771-994d-e032d4f0f70f','Tessália Vila Bittencourt Sobrinho','1976-09-22','czaragoca',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(10,'3ce47e1c-a82d-388b-860e-952879033554','Sr. Wesley Felipe Santiago Sobrinho','1995-01-25','mauricio.galvao',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(11,'76c68ac1-48cc-347d-9e73-2eddc6758f4f','Sra. Fernanda Jimenes','2015-11-30','jvale',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(12,'6fe3d81d-9a91-33b5-8e4b-8188328924a0','Daniela Mascarenhas Grego','1991-07-27','simao.cordeiro',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(13,'53193c83-aed9-3d3e-af25-041da20dbf34','Tatiana Medina Jr.','1972-03-22','cserra',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(14,'bfe2492a-8372-3ef0-abb4-41dbc57f234c','Sr. Emílio Lovato','2018-11-21','uchoa.claudia',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(15,'f83b91c7-79c2-3b05-816d-79b6fe32008c','Sra. Isabelly Perez','1994-03-17','maicon63',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(16,'33e253dd-02e3-3db4-87ef-57cada57e4e6','Kelly Rezende Marques Sobrinho','2021-06-04','barbara06',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(17,'121365c7-8505-396f-97ed-6551df6f47bc','Iasmin Prado Jr.','2016-07-14','maya12',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(18,'d4bb73e9-c07c-3130-9e0e-076797aa21e1','Dr. Dayane Gusmão','1975-11-16','smadeira',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(19,'19082f02-c394-3a80-b5be-c7c2947dde0e','Sandro Grego Sobrinho','2001-11-30','duarte.benedito',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(20,'77af655f-4a6a-3d75-b909-908c1c331091','Dr. Rodolfo Toledo Perez Sobrinho','1985-06-17','amaral.adriana',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(21,'26b833cf-584e-3eb2-9555-2589f89a326f','Aparecida Furtado Montenegro','1976-06-28','hernani80',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(22,'82f5aac8-92f1-33c8-9973-a7f90d79733e','Alessandro Antônio Grego Jr.','1983-03-20','aaguiar',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(23,'9459daf3-8e27-3973-bf5b-3c7ea6fa8cc3','Dr. Luciano Campos','1992-12-22','george68',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(24,'c3a742bc-fb6c-3f40-a00a-c12f8968c2e2','Sr. Jefferson Molina','2019-02-25','qbranco',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(25,'2e018e52-e076-3039-a8de-93a58761a460','Thiago Rodrigo Aragão','2010-01-10','breno10',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(26,'44ba2a51-f3d2-38ad-b48d-9c443c29b856','Janaina Galindo Jr.','2022-12-07','sonia05',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(27,'0723941a-b21a-3a6e-ac4c-95bde3b3ec89','Sr. Alonso Yuri Sanches','1987-03-04','beatriz21',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(28,'29318fa4-121a-3ee3-98db-b4f3fd177496','Srta. Bárbara Chaves Bittencourt','2002-06-06','raysa.balestero',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(29,'2c12dc08-7c2d-3886-abd0-763f0da6c183','Cláudio Neves Serna','1998-01-30','milena.carvalho',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(30,'02917a18-4624-3eab-854b-c7708aff3618','Sr. Nicolas Jefferson Rios','2014-09-24','dasilva.murilo',NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriculas`
--

DROP TABLE IF EXISTS `matriculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matriculas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` uuid NOT NULL,
  `turma_id` bigint(20) unsigned NOT NULL COMMENT 'Id da turma',
  `aluno_id` bigint(20) unsigned NOT NULL COMMENT 'Id do aluno',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `matriculas_uuid_unique` (`uuid`),
  KEY `turma_id_foreign` (`turma_id`),
  KEY `aluno_id_foreign` (`aluno_id`),
  CONSTRAINT `matriculas_aluno_id_foreign` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`),
  CONSTRAINT `matriculas_turma_id_foreign` FOREIGN KEY (`turma_id`) REFERENCES `turmas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculas`
--

LOCK TABLES `matriculas` WRITE;
/*!40000 ALTER TABLE `matriculas` DISABLE KEYS */;
INSERT INTO `matriculas` VALUES (1,'2fdc6917-95da-417b-a0d6-1ec6944b0139',1,4,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(2,'710b6258-49de-4dd1-a743-b804ba069596',1,28,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(3,'9c9c90d7-1a31-4e43-b6f5-407106a1ecef',2,21,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(4,'ca6d9fef-0793-40ae-aa57-28854dba0425',5,12,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(5,'d7d7c109-9b99-4122-a9a2-e364492194b8',4,9,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(6,'24f3887a-65e2-4663-aa44-bc53e539ce55',8,7,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(7,'65922ed8-7c82-4988-bce5-248b9dc0742d',3,5,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(8,'5c54bf60-03f5-4748-9ec8-da16401e2dbb',1,11,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(9,'c8737c36-73b4-4c54-ab58-e6ff3fb06387',1,22,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(10,'5b921aed-5f64-46d0-b767-a7ea8ee01dbd',4,27,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(11,'336cfd93-903e-4e1f-b9d2-860a92a5fe65',3,6,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44');
/*!40000 ALTER TABLE `matriculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_08_05_000001_create_alunos_table',1),(5,'2024_08_07_000001_create_turma_tipos_table',1),(6,'2024_08_07_000001_create_turmas_table',1),(7,'2024_08_07_000002_create_matriculas_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('jHRYlDse3Abwxqn42ckOYS97tjZA5IIxBnnfQhGK',1,'172.18.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiR01pSk41TlRNNzlxWkF4cEtVcHhSMnJlWXFjeDRzSzFQcGZ0bzZLSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI2OiJodHRwOi8vbG9jYWxob3N0OjgxL2FsdW5vcyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==',1723119486);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma_tipos`
--

DROP TABLE IF EXISTS `turma_tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turma_tipos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` uuid NOT NULL,
  `descricao` varchar(255) NOT NULL COMMENT 'Descricao do tipo de turma',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `turma_tipos_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma_tipos`
--

LOCK TABLES `turma_tipos` WRITE;
/*!40000 ALTER TABLE `turma_tipos` DISABLE KEYS */;
INSERT INTO `turma_tipos` VALUES (1,'0284b393-7fff-4157-94fe-9c5e49331da3','Graduação',NULL,'2024-08-07 00:00:00','2024-08-07 00:00:00'),(2,'6f131c45-be92-4119-a664-032691ebc714','Pós Tech',NULL,'2024-08-07 00:00:00','2024-08-07 00:00:00'),(3,'bf078daa-d6da-4d2e-8056-b17d582e540a','MBA',NULL,'2024-08-07 00:00:00','2024-08-07 00:00:00'),(4,'84853055-0477-48d0-b22b-39538c0125d7','Cursos de curta duração',NULL,'2024-08-07 00:00:00','2024-08-07 00:00:00');
/*!40000 ALTER TABLE `turma_tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turmas`
--

DROP TABLE IF EXISTS `turmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turmas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` uuid NOT NULL,
  `nome` varchar(255) NOT NULL COMMENT 'Nome da turma',
  `descricao` text NOT NULL COMMENT 'Descrição da turma',
  `tipo` bigint(20) unsigned NOT NULL COMMENT 'Id do tipo de turma',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `turmas_uuid_unique` (`uuid`),
  KEY `tipo_foreign` (`tipo`),
  CONSTRAINT `turmas_tipo_foreign` FOREIGN KEY (`tipo`) REFERENCES `turma_tipos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turmas`
--

LOCK TABLES `turmas` WRITE;
/*!40000 ALTER TABLE `turmas` DISABLE KEYS */;
INSERT INTO `turmas` VALUES (1,'da76c126-2693-339a-aeb0-7cd74f44b342','Administração - Presencial','Sint cumque a vel illo.',2,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(2,'8b2340ee-ed7c-3b38-ac7c-ec8e2b977694','Administração - Online','Quae sit porro cumque ut qui.',4,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(3,'08e2c92b-4415-3beb-be38-f0042dc9bd56','Análise e desenvolvimento de sistemas','Hic eum omnis enim.',3,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(4,'d4a5ec4f-0b8b-38b4-9d0d-d22b146276f4','Computação em nuvem','Ullam rerum rem illum eum.',1,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(5,'2b384e6b-2cf2-32ab-b416-0b88493abe3b','Data Science','Soluta est saepe est natus.',4,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(6,'01c5354c-8b74-3a97-84d2-ace2caa56ec4','Design Digital','Quis illo tempora eos et.',4,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(7,'65dcce4a-eb3f-3682-88e3-56396640af07','Web Design - Presencial','Saepe ex ipsum dolore.',4,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44'),(8,'5d105b0a-1a0a-34aa-9a6f-ef0faee0f479','Web Design - Online','Aperiam recusandae est et ut.',1,NULL,'2024-08-08 11:55:44','2024-08-08 11:55:44');
/*!40000 ALTER TABLE `turmas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@email.com.br','2024-08-08 11:55:43','$2y$12$8GSVNZ3L5v/ds.pj7hHx7uTkMG/Tpl1HqJeOQlS/UY4PdUyV8zaf6','OO510M3WNccBAYBO70hmwgrnwvE5vbwJ5s9aWvv1WFUbpL6Sc5fuerPk7Ore','2024-08-08 11:55:43','2024-08-08 11:55:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-08 12:19:34
