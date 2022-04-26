-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: registros
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `Nombre` varchar(150) NOT NULL,
  `Boleta` int NOT NULL,
  `Grupo` varchar(4) NOT NULL,
  `ID_Reporte` int NOT NULL,
  PRIMARY KEY (`Boleta`),
  KEY `ID_Reporte` (`ID_Reporte`),
  CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`ID_Reporte`) REFERENCES `laboratorio` (`ID_Reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES ('Axel Gómez Herrera',2021090613,'4IV7',1);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `Boleta` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `appat` varchar(30) NOT NULL,
  `apmat` varchar(30) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `asignatura` varchar(10) NOT NULL,
  PRIMARY KEY (`Boleta`)
) ENGINE=InnoDB AUTO_INCREMENT=2223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (2222,'un','prof','ejemplo','1234567890','BD');
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo` (
  `Etiqueta` varchar(4) NOT NULL,
  `CPU` varchar(20) NOT NULL,
  `Marca` varchar(10) NOT NULL,
  `Monitor` varchar(50) NOT NULL,
  `Accesorios` varchar(50) NOT NULL,
  `Configuracion` varchar(50) NOT NULL,
  `ID_Reporte` int NOT NULL,
  PRIMARY KEY (`Etiqueta`),
  KEY `ID_Reporte` (`ID_Reporte`),
  CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`ID_Reporte`) REFERENCES `laboratorio` (`ID_Reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` VALUES ('LBD9','Esta bien','DELL','Falta la pantalla','Se robaron la PC','Instalaron mal Linux',1);
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info` (
  `Asignatura` varchar(10) NOT NULL,
  `Docente` varchar(150) NOT NULL,
  `Estado` varchar(20) NOT NULL,
  `ID_Reporte` int NOT NULL,
  PRIMARY KEY (`Estado`),
  KEY `ID_Reporte` (`ID_Reporte`),
  CONSTRAINT `info_ibfk_1` FOREIGN KEY (`ID_Reporte`) REFERENCES `laboratorio` (`ID_Reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorio`
--

DROP TABLE IF EXISTS `laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratorio` (
  `Lab` varchar(3) NOT NULL,
  `ID_Lab` varchar(1) NOT NULL,
  `ID_Reporte` int NOT NULL AUTO_INCREMENT,
  `Fecha_reporte` date NOT NULL,
  `Hora_reporte` time NOT NULL,
  `Fecha_previa` date NOT NULL,
  `Hora_previa` time NOT NULL,
  `Responsable` varchar(10) NOT NULL,
  `Prioridad` varchar(10) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_Reporte`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorio`
--

LOCK TABLES `laboratorio` WRITE;
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
INSERT INTO `laboratorio` VALUES ('LBD','1',1,'2022-04-22','23:59:59','2002-04-02','23:58:59','UDI','Baja','pendiente');
/*!40000 ALTER TABLE `laboratorio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-25 10:58:44
