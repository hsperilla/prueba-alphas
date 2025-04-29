-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: startup
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `clases`
--

DROP TABLE IF EXISTS `clases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `idPonderacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idPonderacion` (`idPonderacion`),
  CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`idPonderacion`) REFERENCES `ponderacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clases`
--

LOCK TABLES `clases` WRITE;
/*!40000 ALTER TABLE `clases` DISABLE KEYS */;
INSERT INTO `clases` VALUES (1,'Vocabulario sobre Trabajo en Inglés',1),(2,'Conversaciones de Trabajo en Inglés',1),(3,'Categorías gramaticales en tiempo presente',1),(4,'Categorías gramaticales en tiempo pasado',1),(5,'Categorías gramaticales en tiempo futuro',1),(6,'Comprensión auditiva',2),(7,'Expresion oral',2),(8,'Cultura e historia de habla inglesa',2),(9,'Lectura',2),(10,'Escritura',2);
/*!40000 ALTER TABLE `clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examenes`
--

DROP TABLE IF EXISTS `examenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idClase` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `idTipoExamen` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idTipoExamen` (`idTipoExamen`),
  KEY `idClase` (`idClase`),
  CONSTRAINT `examenes_ibfk_1` FOREIGN KEY (`idTipoExamen`) REFERENCES `tipoexamen` (`id`),
  CONSTRAINT `examenes_ibfk_2` FOREIGN KEY (`idClase`) REFERENCES `clases` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examenes`
--

LOCK TABLES `examenes` WRITE;
/*!40000 ALTER TABLE `examenes` DISABLE KEYS */;
INSERT INTO `examenes` VALUES (1,2,'Trabajos y ocupaciones en Inglés',1),(2,9,'Exámen oral',2),(3,10,'Exámen de lectura',4),(4,4,'Uso de categorías gramaticales',3),(5,6,'Exámen final',2);
/*!40000 ALTER TABLE `examenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ponderacion`
--

DROP TABLE IF EXISTS `ponderacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ponderacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ponderacion`
--

LOCK TABLES `ponderacion` WRITE;
/*!40000 ALTER TABLE `ponderacion` DISABLE KEYS */;
INSERT INTO `ponderacion` VALUES (1,'5/5'),(2,'10/10');
/*!40000 ALTER TABLE `ponderacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoexamen`
--

DROP TABLE IF EXISTS `tipoexamen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoexamen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoexamen`
--

LOCK TABLES `tipoexamen` WRITE;
/*!40000 ALTER TABLE `tipoexamen` DISABLE KEYS */;
INSERT INTO `tipoexamen` VALUES (1,'Selección'),(2,'Pregunta'),(3,'Respuesta'),(4,'Completación');
/*!40000 ALTER TABLE `tipoexamen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'startup'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-29  5:13:07
