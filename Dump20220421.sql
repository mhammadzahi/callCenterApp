CREATE DATABASE  IF NOT EXISTS `table1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `table1`;
-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: table1
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `centres`
--

DROP TABLE IF EXISTS `centres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Centre` varchar(100) NOT NULL,
  `Email_du_centre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centres`
--

LOCK TABLES `centres` WRITE;
/*!40000 ALTER TABLE `centres` DISABLE KEYS */;
INSERT INTO `centres` VALUES (1,'Point S - Casa Chefchaouni','centre.chefchaouni@imperial-pneu.ma'),(2,'Point S - Agadir','centre.agadir@imperial-pneu.ma'),(3,'Point S - Kenitra','centre.kenitra@imperial-pneu.ma'),(4,'Point S - Khouribga','centre.khouribga@imperial-pneu.ma'),(5,'Point S - Marrakech Tichka','centre.tichka@imperial-pneu.ma'),(6,'Point S - Meknès','centre.meknes@imperial-pneu.ma'),(7,'Point S - Tanger','centre.tanger@imperial-pneu.ma'),(8,'Point S - El Jadida','pointseljadida@gmail.com'),(9,'Point S - Oujda','contact@currusauto.com'),(10,'Point S - Marrakech Z.I','fastpneukech@gmail.com'),(11,'Point S - Mohammedia','green.auto.repairs.s@gmail.com'),(12,'Point S - Salé','psidoscar@gmail.com'),(13,'Point S - Casa Nouvelle Zenata','n.zenata@point-s.ma'),(14,'Point S - Dar Bouazza','ps.darbouazza@gmail.com'),(15,'Point S - Rabat Hassan','s2kautos@gmail.com'),(16,'Point S - Temara','s2krabat.hassan@gmail.com'),(17,'Point S - Casa Zenata','dt.technoinvest1@gmail.com'),(18,'Point S - Casa Drissia','y.tanki@uasmaroc.com'),(19,'Point S - Casa Emile Zola','pointsemilezola5@gmail.com'),(20,'Point S - Casa Hay Mohammadi','ice7auto@gmail.com'),(21,'Point S - Fès - Centre Ville','benaissa.ammi54@gmail.com');
/*!40000 ALTER TABLE `centres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etats`
--

DROP TABLE IF EXISTS `etats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Etat` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etats`
--

LOCK TABLES `etats` WRITE;
/*!40000 ALTER TABLE `etats` DISABLE KEYS */;
INSERT INTO `etats` VALUES (1,'NRP'),(2,'RDV'),(3,'Sans RDV'),(4,'Non intéressé');
/*!40000 ALTER TABLE `etats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_table`
--

DROP TABLE IF EXISTS `general_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Numero` varchar(15) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Service1` varchar(255) NOT NULL,
  `Service2` varchar(255) NOT NULL,
  `Service3` varchar(255) NOT NULL,
  `Etat` varchar(50) NOT NULL,
  `Date_de_rdv` date NOT NULL,
  `Centre` varchar(255) NOT NULL,
  `Observation` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_table`
--

LOCK TABLES `general_table` WRITE;
/*!40000 ALTER TABLE `general_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numero_de_client`
--

DROP TABLE IF EXISTS `numero_de_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `numero_de_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Numero` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numero_de_client`
--

LOCK TABLES `numero_de_client` WRITE;
/*!40000 ALTER TABLE `numero_de_client` DISABLE KEYS */;
INSERT INTO `numero_de_client` VALUES (1,'06 80 17 25 50'),(2,'06 66 30 42 41');
/*!40000 ALTER TABLE `numero_de_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Service` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Les services du pneu'),(2,'Amortisseurs'),(3,'Climatisation'),(4,'Échappement'),(5,'Vidange'),(6,'Révision'),(7,'Vitrages'),(8,'Freinage'),(9,'Carrosserie'),(10,'Batterie et circuit de charge');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-21  1:36:48
