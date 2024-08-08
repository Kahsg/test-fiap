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
INSERT INTO `alunos` VALUES (1,'a5374ab2-03e9-3fa5-ae23-bc7ddf43e2b9','Ohana Vanessa Ortiz','2011-03-09','renan.dasdores',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(2,'cb1c2a5c-3921-35b3-94de-4010b7627824','Daniele Furtado Serna','2014-04-26','ndasneves',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(3,'a9bb2791-6088-322a-9550-63c2bad1414d','Madalena Mayara Estrada Neto','2013-11-21','luisa40',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(4,'ad948222-7c93-3ba8-8bb1-b47599697ac7','Dr. Aparecida Ferminiano','1991-04-06','stephany32',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(5,'ca5afa58-574b-3a55-b1ab-bd55985ba6d0','Regiane Beltrão Pacheco','2020-09-26','elizabeth.estrada',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(6,'33225932-59ff-3d14-90f1-0d39744d61be','Rogério Fabrício Furtado','2009-09-29','verdara.marilia',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(7,'da8f0f62-fdd4-3e4e-a67a-4c9a38119d8f','Dr. Simon Sebastião Reis Neto','1999-03-26','gisele.leon',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(8,'4b8a9a7d-eaa4-38a4-b533-53765a0717a0','Cristiano Horácio Teles Neto','1982-09-08','joao.alcantara',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(9,'18ecb0b1-e248-3527-bd9a-9dab9bb50178','Sra. Nicole de Oliveira Valdez','1975-09-09','murilo37',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(10,'8f8f857f-60a7-3dd2-9109-5a9fbf23093d','Michael Marco Garcia Jr.','1977-09-28','sara48',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(11,'177fe979-b665-3d8a-8370-b7229cff92ee','Sra. Renata Tábata Paz Filho','2007-12-05','torres.nathalia',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(12,'46bbff23-7dca-3d0c-b8ad-792e2fe89916','William Thales Vasques Jr.','1986-02-07','mqueiros',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(13,'453f6c81-1467-3621-bfc7-65debc60e97c','Dr. Caio Francisco Santacruz Sobrinho','1979-02-22','luara96',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(14,'fcee8893-b0fb-34bf-bd22-f60a1e44404f','Walter Oliveira Ferreira Jr.','2017-02-17','renata.matias',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(15,'bbb5680d-b801-30c4-a260-5aafd81e1d42','Srta. Emily Faro Saito','1994-02-13','escobar.norma',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(16,'878094ae-df48-3e59-a935-7ed879fa3196','Dr. James das Neves Filho','2001-02-10','vitoria35',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(17,'201a9583-aa74-3c77-9322-ac454c821da0','Jácomo Aguiar Barros Neto','1973-03-26','lucia06',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(18,'48b0e74f-178c-3cb0-9c76-b5efb6544cf2','Sr. Manuel Rosa Jr.','1990-11-01','lucio.sanches',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(19,'8f3a5994-17db-3fd6-874a-02951cba676e','Dr. Angélica Juliana Benites Filho','1983-01-06','willian00',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(20,'3c67287a-8b4e-3938-b0f3-94778bcada29','Moisés Moisés Lutero Neto','2003-07-09','luiza.rios',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(21,'b557a235-8bd3-36c1-b70c-6269da1af6c5','Srta. Ana Burgos Cervantes Sobrinho','1987-02-20','reis.matias',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(22,'4ad6dcf9-ce76-37f9-b6df-f4c667fadd08','Dr. Léia Martines Furtado Jr.','1979-11-08','luisa.flores',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(23,'f955a529-b3b0-3be8-870a-0bbdc1d88d7b','Dr. Sergio Dias Zambrano Filho','2001-08-13','rezende.lucia',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(24,'39f13ba6-eb89-3238-a335-ca0069f58cbe','Dr. Emerson Alonso Vieira Neto','2014-05-09','poliana56',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(25,'98dfcf4d-426f-3a2a-8934-b82e871cc8a0','Dr. Christian Fidalgo Zaragoça','2009-05-01','dearruda.marina',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(26,'0969675f-252a-39ce-8345-fbdc9e5c3b08','Dr. Filipe Lourenço Zaragoça','2000-01-31','hbalestero',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(27,'534af595-f4b7-391f-b588-63b7383cb75d','Srta. Abgail Aranda Saraiva Neto','1978-07-12','carol.aguiar',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(28,'01c2579c-4062-3afb-accc-b2cce0dd0a96','Sra. Giovana Urias Saito Filho','1973-04-24','vasques.priscila',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(29,'19cbffa9-47b3-3661-8b3c-d05ba82f12ca','Marcos Santiago Serna Sobrinho','1972-07-23','andres12',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(30,'fe66f71d-fdf2-3562-b266-bae4357ab1b7','Ayla Serra Maldonado','2002-11-24','jcarmona',NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52');
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
INSERT INTO `matriculas` VALUES (1,'12491f09-3852-4e04-bd44-1ef5e8745e3c',1,4,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(2,'b7536e64-acfb-457b-892f-87d5b8787351',1,28,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(3,'74b7d98f-b5ed-4d73-9924-61766afacab7',2,21,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(4,'66f5f318-1377-44ea-8d32-5951794d8496',5,12,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(5,'7a3c145c-e1f3-4943-8e60-8965c04e0889',4,9,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(6,'4edc530a-0bb6-44b6-bec0-156ca5b901b2',8,7,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(7,'112cc2a2-392c-4372-a7fa-6ba4dd6b4c33',3,5,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(8,'7819972c-7fd5-4762-813a-54b439f773b2',1,11,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(9,'f98f19bb-7f9f-433b-9453-cdc7416229ad',1,22,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(10,'aad359c6-8476-4d22-95f0-42193ebe21fe',4,27,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(11,'e790827f-4c62-41e5-8fa7-b479d863f219',3,6,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52');
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
INSERT INTO `sessions` VALUES ('OHUWEb5bKzDmpKAJV9yUDyLOeotiJtsU6LEKAyfa',NULL,'172.18.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1E0akFKeEhkZFFURWRFbEFLTDM0STFwSkJNelBxamUwZzJKQ2JkUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODEvYWx1bm9zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1723080693);
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
INSERT INTO `turma_tipos` VALUES (1,'3f59239b-1e55-4b81-a501-a7f8f3174297','Graduação',NULL,'2024-08-07 00:00:00','2024-08-07 00:00:00'),(2,'c3360051-5de7-404c-832a-2632ecbc15b2','Pós Tech',NULL,'2024-08-07 00:00:00','2024-08-07 00:00:00'),(3,'c3cda0e2-9396-46ce-914d-886f5bc89207','MBA',NULL,'2024-08-07 00:00:00','2024-08-07 00:00:00'),(4,'cc13d9af-562b-4a1c-a035-b2ea08dba631','Cursos de curta duração',NULL,'2024-08-07 00:00:00','2024-08-07 00:00:00');
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
INSERT INTO `turmas` VALUES (1,'1a4fc58c-5bd6-376e-96d2-9e9f6ad3c12f','Administração - Presencial','Eos ut dicta rerum est.',4,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(2,'4850b894-999e-3a13-bea7-f8d3086e878d','Administração - Online','Harum ea iste itaque totam.',2,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(3,'af26eee7-22b0-3e6b-93c3-48ba8334b778','Análise e desenvolvimento de sistemas','Eligendi repellat aut esse.',1,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(4,'0ab84721-f195-3d06-8b40-810bf080399d','Computação em nuvem','Fuga laborum esse sint id.',1,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(5,'e5553557-95f7-301d-a90d-843a4528a619','Data Science','Sit ut ut laudantium vero.',3,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(6,'1fac14b7-94e1-3eff-b869-ee526fd24040','Design Digital','Esse cum minus debitis qui.',4,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(7,'450cabe2-3477-33a2-afee-ca01be43fd70','Web Design - Presencial','Aut odio incidunt numquam.',3,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52'),(8,'c08cefa7-8289-3150-b3f3-14e4df8e5fd4','Web Design - Online','Aut minima iste voluptatem.',2,NULL,'2024-08-08 01:30:52','2024-08-08 01:30:52');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2024-08-08  1:39:07
