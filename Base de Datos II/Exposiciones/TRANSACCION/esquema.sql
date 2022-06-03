-- MySQL dump 10.13  Distrib 8.0.24, for Linux (x86_64)
--
-- Host: localhost    Database: Empresa
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `CodigosPostales`
--

DROP TABLE IF EXISTS `CodigosPostales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CodigosPostales` (
  `CodigoPostal` varchar(5) NOT NULL,
  `Poblacion` varchar(50) DEFAULT NULL,
  `Provincia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CodigoPostal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CodigosPostales`
--

LOCK TABLES `CodigosPostales` WRITE;
/*!40000 ALTER TABLE `CodigosPostales` DISABLE KEYS */;
INSERT INTO `CodigosPostales` VALUES ('14200','Penarroya','Cordova'),('14900','Lucena','Cordova'),('28000','Madrid','Madrid'),('28004','Arganda','Madrid'),('28040','Madrid','Madrid'),('50008','Zaragoza','Zaragoza'),('8050','Parets','Barcelona');
/*!40000 ALTER TABLE `CodigosPostales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Domicilios`
--

DROP TABLE IF EXISTS `Domicilios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Domicilios` (
  `DNI` varchar(9) DEFAULT NULL,
  `Calle` varchar(50) DEFAULT NULL,
  `CodigoPostal` varchar(5) DEFAULT NULL,
  KEY `DNI` (`DNI`),
  CONSTRAINT `Domicilios_ibfk_1` FOREIGN KEY (`DNI`) REFERENCES `Empleados` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Domicilios`
--

LOCK TABLES `Domicilios` WRITE;
/*!40000 ALTER TABLE `Domicilios` DISABLE KEYS */;
INSERT INTO `Domicilios` VALUES ('12345678A','Avda. Complutense','28040'),('12345678A','Cantaro','28004'),('12345678P','Diamante','15200'),('12345678P','Carbon','14900'),('12345678L','Diamante','14200');
/*!40000 ALTER TABLE `Domicilios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleados`
--

DROP TABLE IF EXISTS `Empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleados` (
  `DNI` varchar(9) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Sueldo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleados`
--

LOCK TABLES `Empleados` WRITE;
/*!40000 ALTER TABLE `Empleados` DISABLE KEYS */;
INSERT INTO `Empleados` VALUES ('12345678A',' Antonio Arjona','5000'),('12345678C',' Carlota Cerezo','1000'),('12345678L','Laura Lopez','3000'),('12345678M','Juan','500'),('12345678N','Ana','700'),('12345678P','Pedro Perez','2000');
/*!40000 ALTER TABLE `Empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Telefonos`
--

DROP TABLE IF EXISTS `Telefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Telefonos` (
  `DNI` varchar(9) DEFAULT NULL,
  `Telefono` varchar(9) DEFAULT NULL,
  KEY `DNI` (`DNI`),
  CONSTRAINT `Telefonos_ibfk_1` FOREIGN KEY (`DNI`) REFERENCES `Empleados` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Telefonos`
--

LOCK TABLES `Telefonos` WRITE;
/*!40000 ALTER TABLE `Telefonos` DISABLE KEYS */;
INSERT INTO `Telefonos` VALUES ('12345678C','61111111'),('12345678C','931111111'),('12345678L','91333333'),('12345678P','91333333'),('12345678P','64444444');
/*!40000 ALTER TABLE `Telefonos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-02 12:56:15
