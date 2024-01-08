-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
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

--
-- Table structure for table `departement`
--

DROP TABLE IF EXISTS `departement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `departement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departement`
--

LOCK TABLES `departement` WRITE;
/*!40000 ALTER TABLE `departement` DISABLE KEYS */;
INSERT INTO `departement` VALUES (1,'FSI'),(2,'FBS'),(3,'ESMAB'),(4,'Santé'),(5,'Dentaire');
/*!40000 ALTER TABLE `departement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20231216233328','2023-12-16 23:35:08',600),('DoctrineMigrations\\Version20231218095852','2023-12-18 09:59:02',343),('DoctrineMigrations\\Version20231218190229','2023-12-18 19:02:42',105),('DoctrineMigrations\\Version20231218231512','2023-12-18 23:15:21',67),('DoctrineMigrations\\Version20231218233007','2023-12-18 23:30:13',175),('DoctrineMigrations\\Version20231218234118','2023-12-18 23:41:24',22),('DoctrineMigrations\\Version20231219002306','2023-12-19 00:23:18',31);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enseignant`
--

DROP TABLE IF EXISTS `enseignant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enseignant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filiere_id` int NOT NULL,
  `departement_id` int NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_81A72FA1180AA129` (`filiere_id`),
  KEY `IDX_81A72FA1CCF9E01E` (`departement_id`),
  CONSTRAINT `FK_81A72FA1180AA129` FOREIGN KEY (`filiere_id`) REFERENCES `filiere` (`id`),
  CONSTRAINT `FK_81A72FA1CCF9E01E` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enseignant`
--

LOCK TABLES `enseignant` WRITE;
/*!40000 ALTER TABLE `enseignant` DISABLE KEYS */;
INSERT INTO `enseignant` VALUES (3,1,1,'Zakaria','Itahriouan'),(4,3,1,'Imane','Halkhams'),(5,1,1,'Boukil','Nawal'),(6,5,2,'El Ouadi','Khalid'),(7,5,3,'Hachim','Mohammed');
/*!40000 ALTER TABLE `enseignant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etudiant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filiere_id` int DEFAULT NULL,
  `departement_id` int NOT NULL,
  `stage_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stage_validee` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_717E22E3180AA129` (`filiere_id`),
  KEY `IDX_717E22E3CCF9E01E` (`departement_id`),
  KEY `IDX_717E22E32298D193` (`stage_id`),
  CONSTRAINT `FK_717E22E3180AA129` FOREIGN KEY (`filiere_id`) REFERENCES `filiere` (`id`),
  CONSTRAINT `FK_717E22E32298D193` FOREIGN KEY (`stage_id`) REFERENCES `stage` (`id`),
  CONSTRAINT `FK_717E22E3CCF9E01E` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etudiant`
--

LOCK TABLES `etudiant` WRITE;
/*!40000 ALTER TABLE `etudiant` DISABLE KEYS */;
INSERT INTO `etudiant` VALUES (1,2,1,2,'Achraf','Ettaftafi',0),(2,5,2,2,'Lamiae','Berradouane',1),(3,1,1,3,'Salma','El Yadouni',0),(4,4,1,1,'Ibtissam','Rhrich',0),(5,1,1,3,'Rim','Lahlou',0);
/*!40000 ALTER TABLE `etudiant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filiere`
--

DROP TABLE IF EXISTS `filiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filiere` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filiere` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filiere`
--

LOCK TABLES `filiere` WRITE;
/*!40000 ALTER TABLE `filiere` DISABLE KEYS */;
INSERT INTO `filiere` VALUES (1,'Genie Informatique'),(2,'Genie Civil'),(3,'Genie System Embarquée'),(4,'Genie Energitique'),(5,'Audit et Finance'),(6,'AI'),(7,'Machine learning');
/*!40000 ALTER TABLE `filiere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observation`
--

DROP TABLE IF EXISTS `observation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `observation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sujet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `entreprise` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encadrent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `binome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `piece_a_joindre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `observation`
--

LOCK TABLES `observation` WRITE;
/*!40000 ALTER TABLE `observation` DISABLE KEYS */;
INSERT INTO `observation` VALUES (1,'Gestion de restauration','2023-12-23 00:00:00','2023-12-31 00:00:00','Alten','Hamza El Founassi',NULL,'1.png','Ashraf','Ettaftafi'),(2,'Gestion de stage','2024-01-01 00:00:00','2024-03-03 00:00:00','CGI','Sanae Faquir',NULL,'2.png','Ibtissam','Rhrich'),(3,'Gestion d\'hotel','2023-12-04 00:00:00','2024-02-03 00:00:00','Alten','Hakim Fadili','Salma Elyadouni','CV-Achraf ETTAFTAFI V2.pdf','Lamiae','Berradouane'),(4,'gestion de location','2023-12-30 00:00:00','2024-01-07 00:00:00','Capgemini','Boukil Nawal','Soumia Bentabet','Capture d’écran (205).png','Rim','Lahlou'),(5,'Gestion d\'absence','2024-01-07 00:00:00','2024-02-11 00:00:00','Twins Groupe','Hajji Tarik',NULL,'Capture d\'écran 2023-05-31 154927.png','Zakaria','El Anigri'),(6,'Gestion d\'ecole','2024-04-26 00:00:00','2024-06-02 00:00:00','Project Dev','Jamal Riffi',NULL,'Capture d\'écran 2023-07-21 100716.png','Hamza','El farij');
/*!40000 ALTER TABLE `observation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pfa`
--

DROP TABLE IF EXISTS `pfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pfa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sujet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `entreprise` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encadrent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `binome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `piece_a_joindre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pfa`
--

LOCK TABLES `pfa` WRITE;
/*!40000 ALTER TABLE `pfa` DISABLE KEYS */;
INSERT INTO `pfa` VALUES (1,'Marouane','Bllilita','Google meet','2024-02-10 00:00:00','2024-02-04 00:00:00','UPF','Zakaria Itahriouan',NULL,'Capture d\'écran 2023-12-02 135938.png'),(2,'Ismail','Alami','Gestion d\'hopital','2023-12-29 00:00:00','2024-02-03 00:00:00','Alten','Hamza',NULL,'CV-Achraf ETTAFTAFI V3(A4).pdf');
/*!40000 ALTER TABLE `pfa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pfe`
--

DROP TABLE IF EXISTS `pfe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pfe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `encadrent_universitaire_id` int NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sujet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `encadrent_de_stage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `binome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `piece_a_joindre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entreprise` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A5CFE8B4EB816FB2` (`encadrent_universitaire_id`),
  CONSTRAINT `FK_A5CFE8B4EB816FB2` FOREIGN KEY (`encadrent_universitaire_id`) REFERENCES `enseignant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pfe`
--

LOCK TABLES `pfe` WRITE;
/*!40000 ALTER TABLE `pfe` DISABLE KEYS */;
INSERT INTO `pfe` VALUES (1,5,'Ashraf','Ettaftafi','Application Mobile','2024-02-04 00:00:00','2024-02-11 00:00:00','Michael',NULL,'Capture d\'écran_20221116_111917.png','Google');
/*!40000 ALTER TABLE `pfe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stage`
--

DROP TABLE IF EXISTS `stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `typestage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage`
--

LOCK TABLES `stage` WRITE;
/*!40000 ALTER TABLE `stage` DISABLE KEYS */;
INSERT INTO `stage` VALUES (1,'Stage D\'observation'),(2,'Stage PFA'),(3,'PFE');
/*!40000 ALTER TABLE `stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'BoukilNawal@gmail.com','UPF1234','admin'),(2,'SanaeFakir@gmail.com','UPF1100','admin'),(3,'AshrafEttaftafi@gmail.com','Lifee','student'),(4,'Lamiaebarradouane@gmail.com','Lifee1234','student'),(5,'rimlahlou@gmail.com','1100','admin');
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

-- Dump completed on 2023-12-25 20:52:49
