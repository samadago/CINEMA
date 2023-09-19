-- MariaDB dump 10.19  Distrib 10.5.20-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	10.5.20-MariaDB

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id_client` int(11) NOT NULL,
  `motpasse_admin` varchar(100) NOT NULL,
  PRIMARY KEY (`id_client`),
  CONSTRAINT `fk_id_client` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'yes'),(3,'yes');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cinemas`
--

DROP TABLE IF EXISTS `cinemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cinemas` (
  `id_cinema` int(11) NOT NULL,
  `nom_cinema` varchar(50) NOT NULL,
  `adresse_cinema` varchar(255) NOT NULL,
  `id_client` int(11) NOT NULL,
  PRIMARY KEY (`id_cinema`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinemas`
--

LOCK TABLES `cinemas` WRITE;
/*!40000 ALTER TABLE `cinemas` DISABLE KEYS */;
INSERT INTO `cinemas` VALUES (1,'CGR Mantes la jolie','Place Henri Durant 78200 Mantes la jolie',1),(2,'Cinema Intercommunal les 2 scènes','place des fetes Henri durant 78580 Moule',2),(3,'UGC Plaisir','1170 Avenue de saint-Germain 78370 Plaisir',3),(4,'UGC Roxane','7 rue rameau 78000 Versailles',5);
/*!40000 ALTER TABLE `cinemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(50) NOT NULL,
  `prenom_client` varchar(50) NOT NULL,
  `adresse_client` varchar(255) NOT NULL,
  `email_client` varchar(100) NOT NULL,
  `motpasse_client` varchar(100) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_client`),
  UNIQUE KEY `email_client` (`email_client`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Dupond','Amelie','1 rue du val 78200 Mantes la jolie','dupond@gmail.com','yes',1),(2,'Uwimana','Roger','2 Allée du bel air 78711 Mantes la ville','uwimana@gmail.com','yes',0),(3,'Ladouce ','Diane','place georges-pompidou 75004 Paris','ladouce@yahoo.fr','yes',1),(5,'Lemat','George','3 Avenue Jean Jaures','lemat@gmail.com','yes',0),(6,'Isaro','Louane','7 avenue du president-wilson 78520 Limay','isaro@gmail.com','yes',0),(7,'Isimbi','Kethia','10 Rue Gabriel-péri  78200 Buchelay','isimbi@gmail.com','yes',0);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factures`
--

DROP TABLE IF EXISTS `factures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factures` (
  `id_facture` int(11) NOT NULL AUTO_INCREMENT,
  `date_facture` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `montant_facture` decimal(10,2) NOT NULL,
  `id_client` int(11) NOT NULL,
  PRIMARY KEY (`id_facture`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factures`
--

LOCK TABLES `factures` WRITE;
/*!40000 ALTER TABLE `factures` DISABLE KEYS */;
INSERT INTO `factures` VALUES (1,'2023-07-07 12:22:21',18.40,1),(2,'2023-07-07 12:22:21',18.40,2),(3,'2023-07-07 12:22:21',9.20,3),(4,'2023-07-07 12:22:21',36.20,5),(5,'2023-07-07 12:22:21',30.30,6),(6,'2023-07-07 12:22:21',22.70,7);
/*!40000 ALTER TABLE `factures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `films` (
  `id_film` int(11) NOT NULL,
  `titre_film` varchar(255) NOT NULL,
  PRIMARY KEY (`id_film`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'La petite Sirène'),(2,'Super Mario Bros'),(3,'Lamour et les forets'),(4,'Fast & Furious'),(5,'Sexygénaires'),(6,'Les Gardiens de la Galaxie 3');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horaires`
--

DROP TABLE IF EXISTS `horaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horaires` (
  `id_horaire` int(11) NOT NULL,
  `heure_debut` datetime NOT NULL,
  `heure_fin` datetime NOT NULL,
  PRIMARY KEY (`id_horaire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horaires`
--

LOCK TABLES `horaires` WRITE;
/*!40000 ALTER TABLE `horaires` DISABLE KEYS */;
INSERT INTO `horaires` VALUES (1,'2023-06-05 10:15:00','2023-06-05 14:15:00'),(2,'2023-06-05 15:30:00','2023-06-05 18:30:00'),(3,'2023-06-05 11:15:00','2023-06-05 15:15:00'),(4,'2023-06-05 14:30:00','2023-06-05 18:15:00'),(5,'2023-06-05 12:15:00','2023-06-05 16:15:00'),(6,'2023-06-05 14:30:00','2023-06-05 17:30:00');
/*!40000 ALTER TABLE `horaires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horaires_films`
--

DROP TABLE IF EXISTS `horaires_films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horaires_films` (
  `id_film` int(11) NOT NULL,
  `id_horaire` int(11) NOT NULL,
  PRIMARY KEY (`id_film`,`id_horaire`),
  KEY `fk_id_horaire` (`id_horaire`),
  CONSTRAINT `fk_id_film` FOREIGN KEY (`id_film`) REFERENCES `films` (`id_film`),
  CONSTRAINT `fk_id_horaire` FOREIGN KEY (`id_horaire`) REFERENCES `horaires` (`id_horaire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horaires_films`
--

LOCK TABLES `horaires_films` WRITE;
/*!40000 ALTER TABLE `horaires_films` DISABLE KEYS */;
INSERT INTO `horaires_films` VALUES (1,4),(1,6),(2,1),(2,3),(2,6),(3,2),(4,1),(4,3),(5,1),(5,4),(6,3),(6,5);
/*!40000 ALTER TABLE `horaires_films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `id_place` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL,
  `id_cinema` int(11) NOT NULL,
  PRIMARY KEY (`id_place`,`id_salle`,`id_cinema`),
  KEY `fk_id_salle` (`id_salle`),
  KEY `id_cinema` (`id_cinema`),
  CONSTRAINT `fk_id_salle` FOREIGN KEY (`id_salle`) REFERENCES `salles` (`id_salle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (1,1,1),(1,1,2),(1,1,3),(1,1,4),(1,2,1),(1,2,2),(1,2,3),(1,2,4),(1,3,1),(1,3,2),(1,3,4),(1,4,1),(2,1,1),(2,1,2),(2,1,3),(2,1,4),(2,2,1),(2,2,2),(2,2,3),(2,2,4),(2,3,1),(2,3,2),(2,3,4),(2,4,1),(3,1,1),(3,1,2),(3,1,3),(3,1,4),(3,2,1),(3,2,2),(3,2,3),(3,2,4),(3,3,1),(3,3,2),(3,3,4),(3,4,1),(4,1,1),(4,1,2),(4,1,3),(4,1,4),(4,2,1),(4,2,2),(4,2,3),(4,2,4),(4,3,1),(4,3,2),(4,3,4),(4,4,1),(5,1,1),(5,1,2),(5,1,3),(5,1,4),(5,2,1),(5,2,2),(5,2,3),(5,2,4),(5,3,1),(5,3,2),(5,3,4),(5,4,1),(6,1,1),(6,1,2),(6,1,3),(6,1,4),(6,2,2),(6,2,3),(6,2,4),(6,3,2),(6,3,4),(7,1,2),(7,1,3),(7,1,4),(7,2,2),(7,2,3),(7,2,4),(7,3,2),(8,1,2),(8,1,3),(8,1,4),(8,2,2),(8,2,3),(8,2,4),(8,3,2),(9,1,2),(9,1,3),(9,1,4),(9,2,2),(9,2,3),(9,2,4),(9,3,2),(10,1,2),(10,1,3),(10,1,4),(10,2,2),(10,2,3),(10,2,4),(10,3,2);
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programmations`
--

DROP TABLE IF EXISTS `programmations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programmations` (
  `id_cinema` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `id_horaire` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  PRIMARY KEY (`id_cinema`,`id_salle`,`id_film`,`id_horaire`,`id_client`),
  KEY `id_cinema` (`id_cinema`),
  KEY `id_salle` (`id_salle`),
  KEY `id_film` (`id_film`),
  KEY `id_horaire` (`id_horaire`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programmations`
--

LOCK TABLES `programmations` WRITE;
/*!40000 ALTER TABLE `programmations` DISABLE KEYS */;
INSERT INTO `programmations` VALUES (1,1,1,2,1),(1,2,1,2,1),(2,2,4,3,2),(2,3,6,4,3),(3,2,2,1,5),(3,3,5,1,2),(4,1,2,6,5),(4,4,3,6,3);
/*!40000 ALTER TABLE `programmations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quantites`
--

DROP TABLE IF EXISTS `quantites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quantites` (
  `nom_tarif` varchar(50) NOT NULL,
  `id_film` int(11) NOT NULL,
  `id_horaire` int(11) NOT NULL,
  `id_cinema` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL,
  `id_reservation` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  PRIMARY KEY (`nom_tarif`,`id_film`,`id_horaire`,`id_cinema`,`id_salle`,`id_reservation`),
  KEY `id_film` (`id_film`),
  KEY `id_horaire` (`id_horaire`),
  KEY `id_cinema` (`id_cinema`),
  KEY `id_salle` (`id_salle`),
  KEY `fk_id_reservation` (`id_reservation`),
  CONSTRAINT `fk_id_reservation` FOREIGN KEY (`id_reservation`) REFERENCES `reservations` (`id_reservation`),
  CONSTRAINT `fk_nom_tarif` FOREIGN KEY (`nom_tarif`) REFERENCES `tarifs` (`nom_tarif`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantites`
--

LOCK TABLES `quantites` WRITE;
/*!40000 ALTER TABLE `quantites` DISABLE KEYS */;
INSERT INTO `quantites` VALUES ('plein tarif',1,2,1,1,1,2),('plein tarif',1,4,5,3,2,2),('plein tarif',1,6,5,4,3,1),('plein tarif',2,1,3,2,4,1),('plein tarif',2,1,3,3,3,1),('plein tarif',2,6,4,1,6,1),('tarif etudiant',2,1,3,2,4,2),('tarif etudiant',2,1,3,3,5,2),('tarif etudiant',2,6,4,1,6,2),('tarif moins de 14 ans',2,1,3,3,5,2),('tarif moins de 14 ans',2,6,4,1,6,1);
/*!40000 ALTER TABLE `quantites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quantites_places`
--

DROP TABLE IF EXISTS `quantites_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quantites_places` (
  `nom_tarif` varchar(50) NOT NULL,
  `id_film` int(11) NOT NULL,
  `id_horaire` int(11) NOT NULL,
  `id_cinema` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL,
  `id_place` int(11) NOT NULL,
  `id_reservation` int(11) NOT NULL,
  PRIMARY KEY (`nom_tarif`,`id_film`,`id_horaire`,`id_cinema`,`id_salle`,`id_place`,`id_reservation`),
  KEY `nom_tarif` (`nom_tarif`),
  KEY `id_film` (`id_film`),
  KEY `id_horaire` (`id_horaire`),
  KEY `id_cinema` (`id_cinema`),
  KEY `id_salle` (`id_salle`),
  KEY `id_reservation` (`id_reservation`),
  KEY `fk_id_place` (`id_place`),
  CONSTRAINT `fk_id_place` FOREIGN KEY (`id_place`) REFERENCES `places` (`id_place`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantites_places`
--

LOCK TABLES `quantites_places` WRITE;
/*!40000 ALTER TABLE `quantites_places` DISABLE KEYS */;
INSERT INTO `quantites_places` VALUES ('plein tarif',1,2,1,1,1,1),('plein tarif',1,2,1,1,2,1),('plein tarif',1,4,1,3,2,2),('plein tarif',1,4,4,3,1,2),('plein tarif',2,6,4,1,3,6),('tarif etudiant',2,6,4,1,7,6),('tarif etudiant',2,6,4,1,8,6),('tarif moins de 14 ans',2,6,4,1,5,6);
/*!40000 ALTER TABLE `quantites_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `id_reservation` int(11) NOT NULL AUTO_INCREMENT,
  `date_reservation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_facture` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  PRIMARY KEY (`id_reservation`),
  KEY `fk_id_facture` (`id_facture`),
  KEY `id_client` (`id_client`),
  CONSTRAINT `fk_id_facture` FOREIGN KEY (`id_facture`) REFERENCES `factures` (`id_facture`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,'2023-07-07 12:23:09',1,1),(2,'2023-07-07 12:23:09',2,2),(3,'2023-07-07 12:23:09',3,3),(4,'2023-07-07 12:23:09',4,4),(5,'2023-07-07 12:23:09',5,5),(6,'2023-07-07 12:23:09',6,6);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salles`
--

DROP TABLE IF EXISTS `salles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salles` (
  `id_salle` int(11) NOT NULL,
  `nom_salle` varchar(50) NOT NULL,
  `nombrePlaces_salle` int(11) NOT NULL,
  `id_cinema` int(11) NOT NULL,
  PRIMARY KEY (`id_salle`,`id_cinema`),
  KEY `fk_id_cinema` (`id_cinema`),
  CONSTRAINT `fk_id_cinema` FOREIGN KEY (`id_cinema`) REFERENCES `cinemas` (`id_cinema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salles`
--

LOCK TABLES `salles` WRITE;
/*!40000 ALTER TABLE `salles` DISABLE KEYS */;
INSERT INTO `salles` VALUES (1,'Jolie salle',300,1),(1,'belle scènes',400,2),(1,'Grand plaisir',500,3),(1,'La belle roxane',350,4),(2,'Le Grand Mantes',150,1),(2,'Grande scènes',500,2),(2,'Plaisir',250,3),(2,'Petite roxane',150,4),(3,'Bon cinema',250,1),(3,'Petite scènes',150,2),(3,' Petit plaisir',100,3),(3,'Grande roxane',400,4),(4,'Le Petit Mantes',70,1);
/*!40000 ALTER TABLE `salles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifs`
--

DROP TABLE IF EXISTS `tarifs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifs` (
  `nom_tarif` varchar(50) NOT NULL,
  `prix_tarif` decimal(10,2) NOT NULL,
  PRIMARY KEY (`nom_tarif`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifs`
--

LOCK TABLES `tarifs` WRITE;
/*!40000 ALTER TABLE `tarifs` DISABLE KEYS */;
INSERT INTO `tarifs` VALUES ('plein tarif',9.20),('tarif etudiant',7.60),('tarif moins de 14 ans',5.90);
/*!40000 ALTER TABLE `tarifs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-19  9:56:29
