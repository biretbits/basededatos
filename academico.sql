-- MariaDB dump 10.19  Distrib 10.6.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: academico
-- ------------------------------------------------------
-- Server version	10.6.16-MariaDB-0ubuntu0.22.04.1

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
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `cod_area` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_area` char(45) DEFAULT NULL,
  `direccion_area` char(45) DEFAULT NULL,
  `telefono_area` char(45) DEFAULT NULL,
  PRIMARY KEY (`cod_area`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Tecnologia','maria barzola','73451278'),(2,'Salud','Calle uncia','73451279'),(3,'Sociales','siglo xx','77457845');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignatura` (
  `cod_asig` int(11) NOT NULL AUTO_INCREMENT,
  `sigla_asig` char(50) DEFAULT NULL,
  `nombre_asig` char(100) DEFAULT NULL,
  `ht` int(11) DEFAULT NULL,
  `hl` int(11) DEFAULT NULL,
  `th` int(11) DEFAULT NULL,
  `pre_req` char(50) DEFAULT NULL,
  `cod_pe` int(11) NOT NULL,
  `cod_carrera` int(11) NOT NULL,
  `cod_grado` int(11) NOT NULL,
  `estado` char(15) DEFAULT NULL,
  PRIMARY KEY (`cod_asig`,`cod_pe`,`cod_carrera`,`cod_grado`),
  KEY `cod_pe` (`cod_pe`,`cod_carrera`),
  KEY `cod_grado` (`cod_grado`),
  CONSTRAINT `asignatura_ibfk_1` FOREIGN KEY (`cod_pe`, `cod_carrera`) REFERENCES `plan_de_estudio` (`cod_pe`, `cod_carrera`),
  CONSTRAINT `asignatura_ibfk_2` FOREIGN KEY (`cod_grado`) REFERENCES `grado` (`cod_grado`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (1,'MAT-1100','ALGEBRA SUPERIOR Y LINEAL',4,0,4,'MOD INGRESO',2,1,1,NULL),(2,'MAT-1101','ANALISIS MATEMATICOS',4,0,4,'MOD INGRESO',2,1,1,NULL),(3,'FIS-1100','FISICA I',4,0,4,'MOD INGRESO',2,1,1,NULL),(4,'INF-1100','METODOLOGIA DE LA PROGRAMACION',4,2,4,'MOD INGRESO',2,1,1,NULL),(5,'INF-1101','ARQUITECTURA DE COMPUTADORAS Y DE DISPOSITIVOS MOVILES',2,2,4,'MOD INGRESO',2,1,1,NULL),(6,'INF-1102','CONTABILIDAD BASICA ADMINISTRACION GENERAL',2,2,4,'MOD INGRESO',2,1,1,NULL),(7,'INF-1120','TALLER DE PROGRAMACION I',0,4,4,'MOD INGRESO',2,1,1,NULL),(8,'INF-1103','METODOLOGIA DE LA INVESTIGACION',2,0,2,'MOD INGRESO',2,1,1,NULL),(9,'INF-1102','ANALISIS MATEMATICO II',4,0,4,'MAT-1102',2,1,2,NULL),(10,'FIS-1101','FISICA II',4,0,4,'FIS-1100',2,1,2,NULL),(11,'INF-2100','DESARROLLO WEB',2,2,4,'INF-1120',2,1,2,NULL),(12,'INF-2230','DISENO Y ADMINISTRACION DE BASE DE DATOS',2,2,4,'INF-1100',2,1,2,NULL),(13,'INF-2104','TALLER DE DESARROLLO DE SOFTWARE',2,2,4,'INF-1100',2,1,2,NULL),(14,'INF-2106','SISTEMAS OPERATIVOS',2,2,4,'INF-1100',2,1,2,NULL),(15,'INF-2210','ESTRUCTURA DE DATOS',2,2,4,'INF-1100',2,1,2,NULL),(16,'INF-2220','ESTADISTICA Y PROBABILIDAD',2,2,4,'INF-1100',2,1,2,NULL),(17,'INF-2240','ANALISIS Y DESENO DE SISTEMAS',2,2,4,'INF-1100',2,1,2,NULL),(18,'INF-3100','INVESTIGACION OPERATIVA',2,2,4,'MAT-1101',2,1,3,NULL),(19,'INF-3101','SIMULACION DE SISTEMAS',2,0,4,'INF-1101',2,1,3,NULL),(20,'INF-3300','REDES I',2,2,4,'INF-1101',2,1,3,NULL),(21,'INF-3630','MICROPROCESADORES Y MICROCONTROLADORES',2,2,4,'INF-1101',2,1,3,NULL),(22,'INF-3720','TECNOLOGIAS EMERGENTES',2,2,4,'INF-1101',2,1,3,NULL),(23,'INF-3740','TELECOMUNICACIONES',2,2,4,'INF-1101',2,1,3,NULL),(24,'INF-3200','PROGRAMACION DE DISPOSITIVOS MOVILES',2,2,4,'INF-2130 INF-2104',2,1,3,NULL),(25,'INF-3201','DESARROLLO DE VIDEO JUEGOS PARA DISPOSITIVOS MOVILES',2,2,4,'INF-1101',2,1,3,NULL),(26,'INF-3202','REDES MOVILES Y CLUD COMPUTING',2,2,4,'INF-1101',2,1,3,NULL),(27,'INF-3203','DESARROLLO DE APLICACIONES MOVILES PARA GEOLOCALIZACION',2,2,4,'INF-2100',2,1,3,NULL),(28,'INF-3400','CRIPTOGRAFIA Y ESTEGANOGRAFIA',2,2,4,'INF-2201',2,1,3,NULL),(29,'INF-3401','SERVIDORES Y SEGURIDAD EN REDES',2,2,4,'INF-2106',2,1,3,NULL),(30,'INF-3402','SEGURIDAD EN SISTEMAS DE INFORMACION Y BASE DE DATOS',2,2,4,'INF-2106',2,1,3,NULL),(31,'INF-4100','INGENIERIA DE SOFTWARE',2,2,4,'INF-2240',2,1,4,NULL),(32,'INF-4200','INTELIGENCIA ARTIFICIAL',2,2,4,'INF-2220',2,1,4,NULL),(33,'INF-4300','INGENIERIA DE SISTEMAS',2,0,4,'INF-1102',2,1,4,NULL),(34,'INF-4300','PROGRAMACION GRAFICA',2,2,4,'INF-2210',2,1,4,NULL),(35,'INF-4700','ELECTIVA I',2,2,4,'',2,1,4,NULL),(36,'INF-4500','REALIDAD VIRTUAL Y AUMENTADA',2,2,4,'INF-3201',2,1,4,NULL),(37,'INF-4501','TALLER DE DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MOVILES',2,2,4,'INF-3200',2,1,4,NULL),(38,'INF-4502','INTERNET DE LAS COSAS',2,2,4,'INF-3202',2,1,4,NULL),(39,'INF-4503','VISION ARTIFICIAL PARA DISPOSITIVOS MOVILES',2,2,4,'INF-3200',2,1,4,NULL),(40,'INF-4600','INFORMATICA FORENSE',2,2,4,'INF-3403',2,1,4,NULL),(41,'INF-4601','INTELIGENCIA DE AMENAZAS Y ETHICAL HACKING',2,2,4,'INF-3401',2,1,4,NULL),(42,'INF-4602','SISTEMAS DE GESTION DE SEGURIDAD DE TECNOLOGIAS DE LA INFORMACION',2,2,4,'INF-3100',2,1,4,NULL),(43,'INF-4603','AUDITORIA INFORMATICA',2,2,4,'INF-3401',2,1,4,NULL),(44,'INF-5200','TALLER DE GRADUACION',2,2,4,'4TO AÑO VENCIDO',2,1,5,NULL),(45,'INF-5201','PRACTICAS PROFESIONALES',2,0,4,'4TO AÑO VENCIDO',2,1,5,NULL),(46,'INF-5202','EMPRENDIMIENTO, PREPARACION, EVALUACION Y GESTION DE PROYECTOS Y ALTA GERENCIA',2,2,4,'INF-4300',2,1,5,NULL),(47,'INF-5203','ELECTIVA II',2,4,6,'',2,1,5,NULL);
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera` (
  `cod_carrera` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_carrera` char(100) DEFAULT NULL,
  `direccion_carrera` char(200) DEFAULT NULL,
  `cod_area` int(11) DEFAULT NULL,
  `estado` char(15) DEFAULT NULL,
  PRIMARY KEY (`cod_carrera`),
  KEY `cod_area` (`cod_area`),
  CONSTRAINT `carrera_ibfk_1` FOREIGN KEY (`cod_area`) REFERENCES `area` (`cod_area`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Ingenieria Informatica','maria barzola',1,'activo'),(2,'Ingenieria civil','maria barzola',1,'activo'),(3,'Ingenieria de minas','maria barzola',1,'activo'),(4,'Ingenieria electromecanica','maria barzola',1,'activo'),(5,'Ingenieria mecanica automotriz','maria barzola',1,'activo'),(6,'Ingenieria agronomica','maria barzola',1,'activo'),(7,'Ingenieria evaporiticos del litio','llallagua',1,'activo'),(8,'Derecho','siglo xx',3,'activo'),(9,'Ciencias de la Educacion','catavi',3,'activo'),(10,'contaduria','llallagua',3,'activo'),(11,'Odontologia','siglo xx',2,'activo'),(12,'Laboratorio Clinico','llallagua',2,'activo'),(13,'Enfermeria','catavi',2,'activo'),(14,'Medicina','siglo xx',2,'activo'),(15,'Ingenieria bio medica','siglo xx',1,'activo');
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursa_asignatura`
--

DROP TABLE IF EXISTS `cursa_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursa_asignatura` (
  `cod_cursa` int(11) NOT NULL AUTO_INCREMENT,
  `ano` year(4) DEFAULT NULL,
  `calificacion` int(11) DEFAULT NULL,
  `estado_asignatura` char(50) DEFAULT NULL,
  `desercion` char(20) DEFAULT NULL,
  `cod_es` int(11) NOT NULL,
  `cod_dicta` int(11) NOT NULL,
  `cod_docente` int(11) NOT NULL,
  `cod_asig` int(11) NOT NULL,
  `cod_pe` int(11) NOT NULL,
  `cod_carrera` int(11) NOT NULL,
  `cod_grado` int(11) NOT NULL,
  `estado` char(15) DEFAULT NULL,
  PRIMARY KEY (`cod_cursa`,`cod_es`,`cod_dicta`,`cod_docente`,`cod_asig`,`cod_pe`,`cod_carrera`,`cod_grado`),
  KEY `cod_es` (`cod_es`),
  KEY `cod_dicta` (`cod_dicta`,`cod_docente`,`cod_asig`,`cod_pe`,`cod_carrera`,`cod_grado`),
  CONSTRAINT `cursa_asignatura_ibfk_1` FOREIGN KEY (`cod_es`) REFERENCES `estudiante` (`cod_es`),
  CONSTRAINT `cursa_asignatura_ibfk_2` FOREIGN KEY (`cod_dicta`, `cod_docente`, `cod_asig`, `cod_pe`, `cod_carrera`, `cod_grado`) REFERENCES `dicta_asignatura` (`cod_dicta`, `cod_docente`, `cod_asig`, `cod_pe`, `cod_carrera`, `cod_grado`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursa_asignatura`
--

LOCK TABLES `cursa_asignatura` WRITE;
/*!40000 ALTER TABLE `cursa_asignatura` DISABLE KEYS */;
INSERT INTO `cursa_asignatura` VALUES (1,2023,0,'activo','no',1,1,1,2,2,1,1,'activo'),(2,2023,0,'activo','no',1,2,1,3,2,1,1,'activo'),(3,2023,0,'activo','no',2,1,1,2,2,1,1,'activo'),(4,2023,0,'activo','no',3,1,1,2,2,1,1,'activo'),(5,2023,0,'activo','no',4,1,1,2,2,1,1,'activo'),(6,2023,0,'activo','no',5,1,1,2,2,1,1,'activo'),(7,2023,0,'activo','no',6,1,1,2,2,1,1,'activo'),(8,2023,0,'activo','no',7,1,1,2,2,1,1,'activo'),(9,2023,0,'activo','no',8,1,1,2,2,1,1,'activo'),(10,2023,0,'activo','no',9,1,1,2,2,1,1,'activo'),(11,2023,0,'activo','no',10,1,1,2,2,1,1,'activo'),(12,2023,0,'activo','no',11,1,1,2,2,1,1,'activo'),(13,2023,0,'activo','no',12,1,1,2,2,1,1,'activo'),(14,2023,0,'activo','no',13,1,1,2,2,1,1,'activo'),(15,2023,0,'activo','no',14,1,1,2,2,1,1,'activo'),(16,2023,0,'activo','no',15,67,2,2,2,1,1,'activo'),(17,2023,0,'activo','no',23,68,3,3,2,1,1,'activo'),(18,2023,0,'activo','no',24,69,10,4,2,1,1,'desactivo'),(19,2023,0,'activo','no',25,69,10,4,2,1,1,'activo'),(20,2023,0,'activo','no',26,70,11,5,2,1,1,'desactivo'),(21,2023,0,'activo','no',27,71,12,6,2,1,1,'activo'),(23,2023,0,'activo','no',28,24,3,10,2,1,2,'activo'),(24,2023,0,'activo','no',28,25,10,11,2,1,2,'activo'),(25,2023,0,'activo','no',28,26,11,12,2,1,2,'activo'),(26,2023,0,'activo','no',28,27,12,12,2,1,2,'activo'),(27,2023,0,'activo','no',28,28,13,13,2,1,2,'activo'),(28,2023,0,'activo','no',28,29,14,14,2,1,2,'activo'),(29,2023,0,'activo','no',28,30,15,15,2,1,2,'activo'),(33,2023,0,'activo','no',28,32,15,17,2,1,2,'activo'),(35,2023,0,'activo','no',29,24,3,10,2,1,2,'activo'),(36,2023,0,'activo','no',29,25,10,11,2,1,2,'activo'),(37,2023,0,'activo','no',29,26,11,12,2,1,2,'activo'),(38,2023,0,'activo','no',29,27,12,12,2,1,2,'activo'),(39,2023,0,'activo','no',29,28,13,13,2,1,2,'activo'),(40,2023,0,'activo','no',29,29,14,14,2,1,2,'activo'),(41,2023,0,'activo','no',29,30,15,15,2,1,2,'activo'),(42,2023,0,'activo','no',29,32,15,17,2,1,2,'activo'),(44,2023,0,'activo','no',30,24,3,10,2,1,2,'activo'),(45,2023,0,'activo','no',30,25,10,11,2,1,2,'activo'),(46,2023,0,'activo','no',30,26,11,12,2,1,2,'activo'),(47,2023,0,'activo','no',30,27,12,12,2,1,2,'activo'),(48,2023,0,'activo','no',30,28,13,13,2,1,2,'activo'),(49,2023,0,'activo','no',30,29,14,14,2,1,2,'activo'),(50,2023,0,'activo','no',30,30,15,15,2,1,2,'activo'),(51,2023,0,'activo','no',30,32,15,17,2,1,2,'activo'),(53,2023,0,'activo','no',31,24,3,10,2,1,2,'activo'),(54,2023,0,'activo','no',31,25,10,11,2,1,2,'activo'),(55,2023,0,'activo','no',31,26,11,12,2,1,2,'activo'),(56,2023,0,'activo','no',31,27,12,12,2,1,2,'activo'),(57,2023,0,'activo','no',31,28,13,13,2,1,2,'activo'),(58,2023,0,'activo','no',31,29,14,14,2,1,2,'activo'),(59,2023,0,'activo','no',31,30,15,15,2,1,2,'activo'),(60,2023,0,'activo','no',31,32,15,17,2,1,2,'activo'),(62,2023,0,'activo','no',32,24,3,10,2,1,2,'activo'),(63,2023,0,'activo','no',32,25,10,11,2,1,2,'activo'),(64,2023,0,'activo','no',32,26,11,12,2,1,2,'activo'),(65,2023,0,'activo','no',32,27,12,12,2,1,2,'activo'),(66,2023,0,'activo','no',32,28,13,13,2,1,2,'activo'),(67,2023,0,'activo','no',32,29,14,14,2,1,2,'activo'),(68,2023,0,'activo','no',32,30,15,15,2,1,2,'activo'),(69,2023,0,'activo','no',32,32,15,17,2,1,2,'activo'),(71,2023,0,'activo','no',33,24,3,10,2,1,2,'activo'),(72,2023,0,'activo','no',33,25,10,11,2,1,2,'activo'),(73,2023,0,'activo','no',33,26,11,12,2,1,2,'activo'),(74,2023,0,'activo','no',33,27,12,12,2,1,2,'activo'),(75,2023,0,'activo','no',33,28,13,13,2,1,2,'activo'),(76,2023,0,'activo','no',33,29,14,14,2,1,2,'activo'),(77,2023,0,'activo','no',33,30,15,15,2,1,2,'activo'),(78,2023,0,'activo','no',33,32,15,17,2,1,2,'activo'),(80,2023,0,'activo','no',34,24,3,10,2,1,2,'activo'),(81,2023,0,'activo','no',34,25,10,11,2,1,2,'activo'),(82,2023,0,'activo','no',34,26,11,12,2,1,2,'activo'),(83,2023,0,'activo','no',34,27,12,12,2,1,2,'activo'),(84,2023,0,'activo','no',34,28,13,13,2,1,2,'activo'),(85,2023,0,'activo','no',34,29,14,14,2,1,2,'activo'),(86,2023,0,'activo','no',34,30,15,15,2,1,2,'activo'),(87,2023,0,'activo','no',34,32,15,17,2,1,2,'activo'),(89,2023,0,'activo','no',35,24,3,10,2,1,2,'activo'),(90,2023,0,'activo','no',35,25,10,11,2,1,2,'activo'),(91,2023,0,'activo','no',35,26,11,12,2,1,2,'activo'),(92,2023,0,'activo','no',35,27,12,12,2,1,2,'activo'),(93,2023,0,'activo','no',35,28,13,13,2,1,2,'activo'),(94,2023,0,'activo','no',35,29,14,14,2,1,2,'activo'),(95,2023,0,'activo','no',35,30,15,15,2,1,2,'activo'),(96,2023,0,'activo','no',35,32,15,17,2,1,2,'activo'),(98,2023,0,'activo','no',36,24,3,10,2,1,2,'activo'),(99,2023,0,'activo','no',36,25,10,11,2,1,2,'activo'),(100,2023,0,'activo','no',36,26,11,12,2,1,2,'activo'),(101,2023,0,'activo','no',36,27,12,12,2,1,2,'activo'),(102,2023,0,'activo','no',36,28,13,13,2,1,2,'activo'),(103,2023,0,'activo','no',36,29,14,14,2,1,2,'activo'),(104,2023,0,'activo','no',36,30,15,15,2,1,2,'activo'),(105,2023,0,'activo','no',36,32,15,17,2,1,2,'activo'),(107,2023,0,'activo','no',37,24,3,10,2,1,2,'activo'),(108,2023,0,'activo','no',37,25,10,11,2,1,2,'activo'),(109,2023,0,'activo','no',37,26,11,12,2,1,2,'activo'),(110,2023,0,'activo','no',37,27,12,12,2,1,2,'activo'),(111,2023,0,'activo','no',37,28,13,13,2,1,2,'activo'),(112,2023,0,'activo','no',37,29,14,14,2,1,2,'activo'),(113,2023,0,'activo','no',37,30,15,15,2,1,2,'activo'),(114,2023,0,'activo','no',37,32,15,17,2,1,2,'activo'),(116,2023,0,'activo','no',38,24,3,10,2,1,2,'desactivo'),(117,2023,0,'activo','no',38,25,10,11,2,1,2,'desactivo'),(118,2023,0,'activo','no',38,26,11,12,2,1,2,'desactivo'),(119,2023,0,'activo','no',38,27,12,12,2,1,2,'desactivo'),(120,2023,0,'activo','no',38,28,13,13,2,1,2,'desactivo'),(121,2023,0,'activo','no',38,29,14,14,2,1,2,'desactivo'),(122,2023,0,'activo','no',38,30,15,15,2,1,2,'desactivo'),(123,2023,0,'activo','no',38,32,15,17,2,1,2,'desactivo'),(125,2023,0,'activo','no',39,24,3,10,2,1,2,'activo'),(126,2023,0,'activo','no',39,25,10,11,2,1,2,'activo'),(127,2023,0,'activo','no',39,26,11,12,2,1,2,'activo'),(128,2023,0,'activo','no',39,27,12,12,2,1,2,'activo'),(129,2023,0,'activo','no',39,28,13,13,2,1,2,'activo'),(130,2023,0,'activo','no',39,29,14,14,2,1,2,'activo'),(131,2023,0,'activo','no',39,30,15,15,2,1,2,'activo'),(132,2023,0,'activo','no',39,32,15,17,2,1,2,'activo'),(134,2023,0,'activo','no',40,24,3,10,2,1,2,'desactivo'),(135,2023,0,'activo','no',40,25,10,11,2,1,2,'desactivo'),(136,2023,0,'activo','no',40,26,11,12,2,1,2,'desactivo'),(137,2023,0,'activo','no',40,27,12,12,2,1,2,'desactivo'),(138,2023,0,'activo','no',40,28,13,13,2,1,2,'desactivo'),(139,2023,0,'activo','no',40,29,14,14,2,1,2,'desactivo'),(140,2023,0,'activo','no',40,30,15,15,2,1,2,'desactivo'),(141,2023,0,'activo','no',40,32,15,17,2,1,2,'desactivo'),(142,2023,0,'activo','no',42,33,1,18,2,1,3,'activo'),(143,2023,0,'activo','no',42,34,2,19,2,1,3,'activo'),(144,2023,0,'activo','no',42,35,3,20,2,1,3,'activo'),(145,2023,0,'activo','no',42,36,10,21,2,1,3,'activo'),(146,2023,0,'activo','no',42,37,11,22,2,1,3,'activo'),(147,2023,0,'activo','no',42,38,12,23,2,1,3,'activo'),(148,2023,0,'activo','no',42,39,13,24,2,1,3,'activo'),(149,2023,0,'activo','no',42,40,13,25,2,1,3,'activo'),(150,2023,0,'activo','no',42,41,14,26,2,1,3,'activo'),(151,2023,0,'activo','no',43,33,1,18,2,1,3,'desactivo'),(152,2023,0,'activo','no',43,34,2,19,2,1,3,'desactivo'),(153,2023,0,'activo','no',43,35,3,20,2,1,3,'desactivo'),(154,2023,0,'activo','no',43,36,10,21,2,1,3,'desactivo'),(155,2023,0,'activo','no',43,37,11,22,2,1,3,'desactivo'),(156,2023,0,'activo','no',43,38,12,23,2,1,3,'desactivo'),(157,2023,0,'activo','no',43,39,13,24,2,1,3,'desactivo'),(158,2023,0,'activo','no',43,40,13,25,2,1,3,'desactivo'),(159,2023,0,'activo','no',43,41,14,26,2,1,3,'desactivo'),(160,2023,0,'activo','no',44,33,1,18,2,1,3,'activo'),(161,2023,0,'activo','no',44,34,2,19,2,1,3,'activo'),(162,2023,0,'activo','no',44,35,3,20,2,1,3,'activo'),(163,2023,0,'activo','no',44,36,10,21,2,1,3,'activo'),(164,2023,0,'activo','no',44,37,11,22,2,1,3,'activo'),(165,2023,0,'activo','no',44,38,12,23,2,1,3,'activo'),(166,2023,0,'activo','no',44,39,13,24,2,1,3,'activo'),(167,2023,0,'activo','no',44,40,13,25,2,1,3,'activo'),(168,2023,0,'activo','no',44,41,14,26,2,1,3,'activo'),(169,2023,0,'activo','no',45,33,1,18,2,1,3,'desactivo'),(170,2023,0,'activo','no',45,34,2,19,2,1,3,'desactivo'),(171,2023,0,'activo','no',45,35,3,20,2,1,3,'desactivo'),(172,2023,0,'activo','no',45,36,10,21,2,1,3,'desactivo'),(173,2023,0,'activo','no',45,37,11,22,2,1,3,'desactivo'),(174,2023,0,'activo','no',45,38,12,23,2,1,3,'desactivo'),(175,2023,0,'activo','no',45,39,13,24,2,1,3,'desactivo'),(176,2023,0,'activo','no',45,40,13,25,2,1,3,'desactivo'),(177,2023,0,'activo','no',45,41,14,26,2,1,3,'desactivo'),(178,2023,0,'activo','no',46,33,1,18,2,1,3,'activo'),(179,2023,0,'activo','no',46,34,2,19,2,1,3,'activo'),(180,2023,0,'activo','no',46,35,3,20,2,1,3,'activo'),(181,2023,0,'activo','no',46,36,10,21,2,1,3,'activo'),(182,2023,0,'activo','no',46,37,11,22,2,1,3,'activo'),(183,2023,0,'activo','no',46,38,12,23,2,1,3,'activo'),(184,2023,0,'activo','no',46,39,13,24,2,1,3,'activo'),(185,2023,0,'activo','no',46,40,13,25,2,1,3,'activo'),(186,2023,0,'activo','no',46,41,14,26,2,1,3,'activo'),(187,2023,0,'activo','no',47,33,1,18,2,1,3,'activo'),(188,2023,0,'activo','no',47,34,2,19,2,1,3,'activo'),(189,2023,0,'activo','no',47,35,3,20,2,1,3,'activo'),(190,2023,0,'activo','no',47,36,10,21,2,1,3,'activo'),(191,2023,0,'activo','no',47,37,11,22,2,1,3,'activo'),(192,2023,0,'activo','no',47,38,12,23,2,1,3,'activo'),(193,2023,0,'activo','no',47,39,13,24,2,1,3,'activo'),(194,2023,0,'activo','no',47,40,13,25,2,1,3,'activo'),(195,2023,0,'activo','no',47,41,14,26,2,1,3,'activo'),(196,2023,0,'activo','no',48,33,1,18,2,1,3,'activo'),(197,2023,0,'activo','no',48,34,2,19,2,1,3,'activo'),(198,2023,0,'activo','no',48,35,3,20,2,1,3,'activo'),(199,2023,0,'activo','no',48,36,10,21,2,1,3,'activo'),(200,2023,0,'activo','no',48,37,11,22,2,1,3,'activo'),(201,2023,0,'activo','no',48,38,12,23,2,1,3,'activo'),(202,2023,0,'activo','no',48,39,13,24,2,1,3,'activo'),(203,2023,0,'activo','no',48,40,13,25,2,1,3,'activo'),(204,2023,0,'activo','no',48,41,14,26,2,1,3,'activo'),(205,2023,0,'activo','no',49,33,1,18,2,1,3,'activo'),(206,2023,0,'activo','no',49,34,2,19,2,1,3,'activo'),(207,2023,0,'activo','no',49,35,3,20,2,1,3,'activo'),(208,2023,0,'activo','no',49,36,10,21,2,1,3,'activo'),(209,2023,0,'activo','no',49,37,11,22,2,1,3,'activo'),(210,2023,0,'activo','no',49,38,12,23,2,1,3,'activo'),(211,2023,0,'activo','no',49,39,13,24,2,1,3,'activo'),(212,2023,0,'activo','no',49,40,13,25,2,1,3,'activo'),(213,2023,0,'activo','no',49,41,14,26,2,1,3,'activo'),(214,2023,0,'activo','no',50,33,1,18,2,1,3,'activo'),(215,2023,0,'activo','no',50,34,2,19,2,1,3,'activo'),(216,2023,0,'activo','no',50,35,3,20,2,1,3,'activo'),(217,2023,0,'activo','no',50,36,10,21,2,1,3,'activo'),(218,2023,0,'activo','no',50,37,11,22,2,1,3,'activo'),(219,2023,0,'activo','no',50,38,12,23,2,1,3,'activo'),(220,2023,0,'activo','no',50,39,13,24,2,1,3,'activo'),(221,2023,0,'activo','no',50,40,13,25,2,1,3,'activo'),(222,2023,0,'activo','no',50,41,14,26,2,1,3,'activo'),(223,2023,0,'activo','no',51,33,1,18,2,1,3,'activo'),(224,2023,0,'activo','no',51,34,2,19,2,1,3,'activo'),(225,2023,0,'activo','no',51,35,3,20,2,1,3,'activo'),(226,2023,0,'activo','no',51,36,10,21,2,1,3,'activo'),(227,2023,0,'activo','no',51,37,11,22,2,1,3,'activo'),(228,2023,0,'activo','no',51,38,12,23,2,1,3,'activo'),(229,2023,0,'activo','no',51,39,13,24,2,1,3,'activo'),(230,2023,0,'activo','no',51,40,13,25,2,1,3,'activo'),(231,2023,0,'activo','no',51,41,14,26,2,1,3,'activo'),(232,2023,0,'activo','no',52,46,1,31,2,1,4,'activo'),(233,2023,0,'activo','no',52,47,2,32,2,1,4,'activo'),(234,2023,0,'activo','no',52,48,3,33,2,1,4,'activo'),(235,2023,0,'activo','no',52,49,10,34,2,1,4,'activo'),(236,2023,0,'activo','no',52,50,11,35,2,1,4,'activo'),(237,2023,0,'activo','no',52,51,12,36,2,1,4,'activo'),(238,2023,0,'activo','no',52,52,13,37,2,1,4,'activo'),(239,2023,0,'activo','no',52,53,14,38,2,1,4,'activo'),(240,2023,0,'activo','no',52,54,15,39,2,1,4,'activo'),(241,2023,0,'activo','no',52,55,1,40,2,1,4,'activo'),(242,2023,0,'activo','no',53,46,1,31,2,1,4,'activo'),(243,2023,0,'activo','no',53,47,2,32,2,1,4,'activo'),(244,2023,0,'activo','no',53,48,3,33,2,1,4,'activo'),(245,2023,0,'activo','no',53,49,10,34,2,1,4,'activo'),(246,2023,0,'activo','no',53,50,11,35,2,1,4,'activo'),(247,2023,0,'activo','no',53,51,12,36,2,1,4,'activo'),(248,2023,0,'activo','no',53,52,13,37,2,1,4,'activo'),(249,2023,0,'activo','no',53,53,14,38,2,1,4,'activo'),(250,2023,0,'activo','no',53,54,15,39,2,1,4,'activo'),(251,2023,0,'activo','no',53,55,1,40,2,1,4,'activo'),(252,2023,0,'activo','no',54,46,1,31,2,1,4,'activo'),(253,2023,0,'activo','no',54,47,2,32,2,1,4,'activo'),(254,2023,0,'activo','no',54,48,3,33,2,1,4,'activo'),(255,2023,0,'activo','no',54,49,10,34,2,1,4,'activo'),(256,2023,0,'activo','no',54,50,11,35,2,1,4,'activo'),(257,2023,0,'activo','no',54,51,12,36,2,1,4,'activo'),(258,2023,0,'activo','no',54,52,13,37,2,1,4,'activo'),(259,2023,0,'activo','no',54,53,14,38,2,1,4,'activo'),(260,2023,0,'activo','no',54,54,15,39,2,1,4,'activo'),(261,2023,0,'activo','no',54,55,1,40,2,1,4,'activo'),(262,2023,0,'activo','no',55,46,1,31,2,1,4,'activo'),(263,2023,0,'activo','no',55,47,2,32,2,1,4,'activo'),(264,2023,0,'activo','no',55,48,3,33,2,1,4,'activo'),(265,2023,0,'activo','no',55,49,10,34,2,1,4,'activo'),(266,2023,0,'activo','no',55,50,11,35,2,1,4,'activo'),(267,2023,0,'activo','no',55,51,12,36,2,1,4,'activo'),(268,2023,0,'activo','no',55,52,13,37,2,1,4,'activo'),(269,2023,0,'activo','no',55,53,14,38,2,1,4,'activo'),(270,2023,0,'activo','no',55,54,15,39,2,1,4,'activo'),(271,2023,0,'activo','no',55,55,1,40,2,1,4,'activo'),(272,2023,0,'activo','no',56,46,1,31,2,1,4,'activo'),(273,2023,0,'activo','no',56,47,2,32,2,1,4,'activo'),(274,2023,0,'activo','no',56,48,3,33,2,1,4,'activo'),(275,2023,0,'activo','no',56,49,10,34,2,1,4,'activo'),(276,2023,0,'activo','no',56,50,11,35,2,1,4,'activo'),(277,2023,0,'activo','no',56,51,12,36,2,1,4,'activo'),(278,2023,0,'activo','no',56,52,13,37,2,1,4,'activo'),(279,2023,0,'activo','no',56,53,14,38,2,1,4,'activo'),(280,2023,0,'activo','no',56,54,15,39,2,1,4,'activo'),(281,2023,0,'activo','no',56,55,1,40,2,1,4,'activo'),(282,2023,0,'activo','no',57,46,1,31,2,1,4,'activo'),(283,2023,0,'activo','no',57,47,2,32,2,1,4,'activo'),(284,2023,0,'activo','no',57,48,3,33,2,1,4,'activo'),(285,2023,0,'activo','no',57,49,10,34,2,1,4,'activo'),(286,2023,0,'activo','no',57,50,11,35,2,1,4,'activo'),(287,2023,0,'activo','no',57,51,12,36,2,1,4,'activo'),(288,2023,0,'activo','no',57,52,13,37,2,1,4,'activo'),(289,2023,0,'activo','no',57,53,14,38,2,1,4,'activo'),(290,2023,0,'activo','no',57,54,15,39,2,1,4,'activo'),(291,2023,0,'activo','no',57,55,1,40,2,1,4,'activo'),(292,2023,0,'activo','no',58,46,1,31,2,1,4,'desactivo'),(293,2023,0,'activo','no',58,47,2,32,2,1,4,'desactivo'),(294,2023,0,'activo','no',58,48,3,33,2,1,4,'desactivo'),(295,2023,0,'activo','no',58,49,10,34,2,1,4,'desactivo'),(296,2023,0,'activo','no',58,50,11,35,2,1,4,'desactivo'),(297,2023,0,'activo','no',58,51,12,36,2,1,4,'desactivo'),(298,2023,0,'activo','no',58,52,13,37,2,1,4,'desactivo'),(299,2023,0,'activo','no',58,53,14,38,2,1,4,'desactivo'),(300,2023,0,'activo','no',58,54,15,39,2,1,4,'desactivo'),(301,2023,0,'activo','no',58,55,1,40,2,1,4,'desactivo'),(302,2023,0,'activo','no',59,46,1,31,2,1,4,'desactivo'),(303,2023,0,'activo','no',59,47,2,32,2,1,4,'desactivo'),(304,2023,0,'activo','no',59,48,3,33,2,1,4,'desactivo'),(305,2023,0,'activo','no',59,49,10,34,2,1,4,'desactivo'),(306,2023,0,'activo','no',59,50,11,35,2,1,4,'desactivo'),(307,2023,0,'activo','no',59,51,12,36,2,1,4,'desactivo'),(308,2023,0,'activo','no',59,52,13,37,2,1,4,'desactivo'),(309,2023,0,'activo','no',59,53,14,38,2,1,4,'desactivo'),(310,2023,0,'activo','no',59,54,15,39,2,1,4,'desactivo'),(311,2023,0,'activo','no',59,55,1,40,2,1,4,'desactivo'),(312,2023,0,'activo','no',60,46,1,31,2,1,4,'activo'),(313,2023,0,'activo','no',60,47,2,32,2,1,4,'activo'),(314,2023,0,'activo','no',60,48,3,33,2,1,4,'activo'),(315,2023,0,'activo','no',60,49,10,34,2,1,4,'activo'),(316,2023,0,'activo','no',60,50,11,35,2,1,4,'activo'),(317,2023,0,'activo','no',60,51,12,36,2,1,4,'activo'),(318,2023,0,'activo','no',60,52,13,37,2,1,4,'activo'),(319,2023,0,'activo','no',60,53,14,38,2,1,4,'activo'),(320,2023,0,'activo','no',60,54,15,39,2,1,4,'activo'),(321,2023,0,'activo','no',60,55,1,40,2,1,4,'activo'),(322,2023,56,'activo','no',61,59,1,44,2,1,5,'activo'),(323,2023,90,'activo','no',61,60,3,45,2,1,5,'activo'),(324,2023,65,'activo','no',61,61,10,46,2,1,5,'activo'),(325,2023,60,'activo','no',61,62,11,47,2,1,5,'activo'),(326,2023,60,'activo','no',61,63,2,44,2,1,5,'activo'),(327,2023,60,'activo','no',61,64,12,45,2,1,5,'activo'),(328,2023,60,'activo','no',61,65,13,46,2,1,5,'activo'),(329,2023,60,'activo','no',61,66,15,47,2,1,5,'activo'),(330,2023,80,'activo','no',62,59,1,44,2,1,5,'activo'),(331,2023,75,'activo','no',62,60,3,45,2,1,5,'activo'),(332,2023,50,'activo','no',62,61,10,46,2,1,5,'activo'),(333,2023,50,'activo','no',62,62,11,47,2,1,5,'activo'),(334,2023,50,'activo','no',62,63,2,44,2,1,5,'activo'),(335,2023,50,'activo','no',62,64,12,45,2,1,5,'activo'),(336,2023,65,'activo','no',62,65,13,46,2,1,5,'activo'),(337,2023,50,'activo','no',62,66,15,47,2,1,5,'activo'),(338,2023,65,'activo','no',63,59,1,44,2,1,5,'activo'),(339,2023,65,'activo','no',63,60,3,45,2,1,5,'activo'),(340,2023,65,'activo','no',63,61,10,46,2,1,5,'activo'),(341,2023,65,'activo','no',63,62,11,47,2,1,5,'activo'),(342,2023,75,'activo','no',63,63,2,44,2,1,5,'activo'),(343,2023,65,'activo','no',63,64,12,45,2,1,5,'activo'),(344,2023,59,'activo','no',63,65,13,46,2,1,5,'activo'),(345,2023,59,'activo','no',63,66,15,47,2,1,5,'activo'),(346,2023,90,'activo','no',64,59,1,44,2,1,5,'activo'),(347,2023,50,'activo','no',64,60,3,45,2,1,5,'activo'),(348,2023,75,'activo','no',64,61,10,46,2,1,5,'activo'),(349,2023,50,'activo','no',64,62,11,47,2,1,5,'activo'),(350,2023,50,'activo','no',64,63,2,44,2,1,5,'activo'),(351,2023,50,'activo','no',64,64,12,45,2,1,5,'activo'),(352,2023,65,'activo','no',64,65,13,46,2,1,5,'activo'),(353,2023,75,'activo','no',64,66,15,47,2,1,5,'activo'),(354,2023,75,'activo','no',65,59,1,44,2,1,5,'activo'),(355,2023,80,'activo','no',65,60,3,45,2,1,5,'activo'),(356,2023,80,'activo','no',65,61,10,46,2,1,5,'activo'),(357,2023,80,'activo','no',65,62,11,47,2,1,5,'activo'),(358,2023,80,'activo','no',65,63,2,44,2,1,5,'activo'),(359,2023,80,'activo','no',65,64,12,45,2,1,5,'activo'),(360,2023,75,'activo','no',65,65,13,46,2,1,5,'activo'),(361,2023,60,'activo','no',65,66,15,47,2,1,5,'activo'),(362,2023,65,'activo','no',66,59,1,44,2,1,5,'activo'),(363,2023,50,'activo','no',66,60,3,45,2,1,5,'activo'),(364,2023,75,'activo','no',66,61,10,46,2,1,5,'activo'),(365,2023,50,'activo','no',66,62,11,47,2,1,5,'activo'),(366,2023,75,'activo','no',66,63,2,44,2,1,5,'activo'),(367,2023,50,'activo','no',66,64,12,45,2,1,5,'activo'),(368,2023,65,'activo','no',66,65,13,46,2,1,5,'activo'),(369,2023,90,'activo','no',66,66,15,47,2,1,5,'activo'),(370,2023,59,'activo','no',67,59,1,44,2,1,5,'activo'),(371,2023,68,'activo','no',67,60,3,45,2,1,5,'activo'),(372,2023,68,'activo','no',67,61,10,46,2,1,5,'activo'),(373,2023,58,'activo','no',67,62,11,47,2,1,5,'activo'),(374,2023,58,'activo','no',67,63,2,44,2,1,5,'activo'),(375,2023,58,'activo','no',67,64,12,45,2,1,5,'activo'),(376,2023,90,'activo','no',67,65,13,46,2,1,5,'activo'),(377,2023,90,'activo','no',67,66,15,47,2,1,5,'activo');
/*!40000 ALTER TABLE `cursa_asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defensa`
--

DROP TABLE IF EXISTS `defensa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defensa` (
  `cod_def` int(11) NOT NULL AUTO_INCREMENT,
  `estado_def` char(20) DEFAULT NULL,
  `cod_es` int(11) NOT NULL,
  `cod_mt` int(11) NOT NULL,
  `cod_pe` int(11) NOT NULL,
  `cod_carrera` int(11) NOT NULL,
  `estado` char(15) DEFAULT NULL,
  PRIMARY KEY (`cod_def`,`cod_es`,`cod_mt`,`cod_pe`,`cod_carrera`),
  KEY `cod_es` (`cod_es`),
  KEY `cod_mt` (`cod_mt`,`cod_pe`,`cod_carrera`),
  CONSTRAINT `defensa_ibfk_1` FOREIGN KEY (`cod_es`) REFERENCES `estudiante` (`cod_es`),
  CONSTRAINT `defensa_ibfk_2` FOREIGN KEY (`cod_mt`, `cod_pe`, `cod_carrera`) REFERENCES `modalidad_titulacion` (`cod_mt`, `cod_pe`, `cod_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defensa`
--

LOCK TABLES `defensa` WRITE;
/*!40000 ALTER TABLE `defensa` DISABLE KEYS */;
INSERT INTO `defensa` VALUES (1,'habilitado',61,21,2,1,'activo'),(2,'habilitado',63,21,2,1,'activo'),(3,'habilitado',65,18,2,1,'activo'),(4,'habilitado',67,18,2,1,'activo');
/*!40000 ALTER TABLE `defensa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dicta_asignatura`
--

DROP TABLE IF EXISTS `dicta_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dicta_asignatura` (
  `cod_dicta` int(11) NOT NULL AUTO_INCREMENT,
  `ano_dicta` year(4) DEFAULT NULL,
  `cod_docente` int(11) NOT NULL,
  `cod_asig` int(11) NOT NULL,
  `cod_pe` int(11) NOT NULL,
  `cod_carrera` int(11) NOT NULL,
  `cod_grado` int(11) NOT NULL,
  `estado` char(15) DEFAULT NULL,
  PRIMARY KEY (`cod_dicta`,`cod_docente`,`cod_asig`,`cod_pe`,`cod_carrera`,`cod_grado`),
  KEY `cod_docente` (`cod_docente`),
  KEY `cod_asig` (`cod_asig`,`cod_pe`,`cod_carrera`,`cod_grado`),
  CONSTRAINT `dicta_asignatura_ibfk_1` FOREIGN KEY (`cod_docente`) REFERENCES `docente` (`cod_docente`),
  CONSTRAINT `dicta_asignatura_ibfk_2` FOREIGN KEY (`cod_asig`, `cod_pe`, `cod_carrera`, `cod_grado`) REFERENCES `asignatura` (`cod_asig`, `cod_pe`, `cod_carrera`, `cod_grado`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dicta_asignatura`
--

LOCK TABLES `dicta_asignatura` WRITE;
/*!40000 ALTER TABLE `dicta_asignatura` DISABLE KEYS */;
INSERT INTO `dicta_asignatura` VALUES (1,2023,1,2,2,1,1,'activo'),(2,2023,1,3,2,1,1,'activo'),(3,2023,1,4,2,1,1,'activo'),(4,2023,1,5,2,1,1,'activo'),(5,2023,1,6,2,1,1,'activo'),(6,2023,1,7,2,1,1,'activo'),(7,2023,1,8,2,1,1,'activo'),(9,2023,2,11,2,1,2,'activo'),(10,2023,2,12,2,1,2,'activo'),(11,2023,2,13,2,1,2,'activo'),(12,2023,2,14,2,1,2,'activo'),(13,2023,2,15,2,1,2,'activo'),(14,2023,2,16,2,1,2,'activo'),(15,2023,2,17,2,1,2,'activo'),(16,2023,3,18,2,1,3,'activo'),(17,2023,3,19,2,1,3,'activo'),(18,2023,3,20,2,1,3,'activo'),(19,2023,3,21,2,1,3,'activo'),(20,2023,3,22,2,1,3,'activo'),(21,2023,3,23,2,1,3,'activo'),(22,2023,3,24,2,1,3,'activo'),(23,2023,2,9,2,1,2,'activo'),(24,2023,3,10,2,1,2,'activo'),(25,2023,10,11,2,1,2,'activo'),(26,2023,11,12,2,1,2,'activo'),(27,2023,12,12,2,1,2,'activo'),(28,2023,13,13,2,1,2,'activo'),(29,2023,14,14,2,1,2,'activo'),(30,2023,15,15,2,1,2,'activo'),(31,2023,13,16,2,1,2,'activo'),(32,2023,15,17,2,1,2,'activo'),(33,2023,1,18,2,1,3,'activo'),(34,2023,2,19,2,1,3,'activo'),(35,2023,3,20,2,1,3,'activo'),(36,2023,10,21,2,1,3,'activo'),(37,2023,11,22,2,1,3,'activo'),(38,2023,12,23,2,1,3,'activo'),(39,2023,13,24,2,1,3,'activo'),(40,2023,13,25,2,1,3,'activo'),(41,2023,14,26,2,1,3,'activo'),(42,2023,15,27,2,1,3,'activo'),(43,2023,10,28,2,1,3,'activo'),(44,2023,11,29,2,1,3,'activo'),(45,2023,12,30,2,1,3,'activo'),(46,2023,1,31,2,1,4,'activo'),(47,2023,2,32,2,1,4,'activo'),(48,2023,3,33,2,1,4,'activo'),(49,2023,10,34,2,1,4,'activo'),(50,2023,11,35,2,1,4,'activo'),(51,2023,12,36,2,1,4,'activo'),(52,2023,13,37,2,1,4,'activo'),(53,2023,14,38,2,1,4,'activo'),(54,2023,15,39,2,1,4,'activo'),(55,2023,1,40,2,1,4,'activo'),(56,2023,2,41,2,1,4,'activo'),(57,2023,3,42,2,1,4,'activo'),(58,2023,10,43,2,1,4,'activo'),(59,2023,1,44,2,1,5,'activo'),(60,2023,3,45,2,1,5,'activo'),(61,2023,10,46,2,1,5,'activo'),(62,2023,11,47,2,1,5,'activo'),(63,2023,2,44,2,1,5,'activo'),(64,2023,12,45,2,1,5,'activo'),(65,2023,13,46,2,1,5,'activo'),(66,2023,15,47,2,1,5,'activo'),(67,2023,2,2,2,1,1,'activo'),(68,2023,3,3,2,1,1,'activo'),(69,2023,10,4,2,1,1,'activo'),(70,2023,11,5,2,1,1,'activo'),(71,2023,12,6,2,1,1,'activo'),(72,2023,13,7,2,1,1,'activo');
/*!40000 ALTER TABLE `dicta_asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docente` (
  `cod_docente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_docente` char(50) DEFAULT NULL,
  `ap_docente` char(50) DEFAULT NULL,
  `am_docente` char(50) DEFAULT NULL,
  `ci_docente` int(11) DEFAULT NULL,
  `profesion` char(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `pais` char(50) DEFAULT NULL,
  `departamento` char(100) DEFAULT NULL,
  `ciudad` char(50) DEFAULT NULL,
  `sexo` char(50) DEFAULT NULL,
  `cod_carrera` int(11) DEFAULT NULL,
  `estado` char(15) DEFAULT NULL,
  PRIMARY KEY (`cod_docente`),
  KEY `cod_carrera` (`cod_carrera`),
  CONSTRAINT `docente_ibfk_1` FOREIGN KEY (`cod_carrera`) REFERENCES `carrera` (`cod_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (1,'Roger','torrico','manrique',7845125,'Ingenierio en computacion',78451235,'Bolivia','La paz','Oruro','masculino',1,'activo'),(2,'Manuel','huanca','ayaviri',78784125,'Ingenierio Informatico',7845456,'Bolivia','La paz','el alto','masculino',1,'activo'),(3,'Maria','nina','callahuara',73784512,'Ingenierio telecomunicaciones',67457845,'Bolivia','Oruro','Poopo','femenino',1,'activo'),(4,'Isabel','pantoja','manrique',7774125,'Licenciada en Enfermeria',67458912,'Bolivia','Cochabamba','quillacollo','femenino',12,'activo'),(5,'Roman','Ayaviri','nina',7374125,'Licenciado en Enfermeria',67898912,'Bolivia','Cochabamba','quillacollo','masculino',12,'activo'),(6,'Carlos','mamani','quispe',777754,'Licenciado en Enfermeria',67457889,'Bolivia','Potosi','Llalagua','masculino',12,'activo'),(7,'Isabel','carrion','janco',7777889,'Ingenieria de minas',67458952,'Bolivia','Cochabamba','quillacollo','masculino',2,'activo'),(8,'Roberto carlos','mamani','quispe',7774178,'Ingenierio electromecanico',68458912,'Bolivia','Cochabamba','quillacollo','femenino',3,'activo'),(9,'JUan jose','LOpez','manrique',7994125,'Ingenierio agronomo',67778912,'Bolivia','POtosi','Uncia','masculino',4,'activo'),(10,'JUan pablo','luna','Martines',7394125,'Ingenierio Informatico',63778912,'Bolivia','POtosi','Uncia','masculino',1,'activo'),(11,'nelson','ayaviri','nian',53394125,'Ingenierio Informatico',63779912,'Bolivia','POtosi','llallagua','masculino',1,'activo'),(12,'mario','dias','lia',6394125,'Ingenierio computacion',73778912,'Bolivia','Oruro','oruro','masculino',1,'activo'),(13,'mari','lovera','lopes',7794125,'Ingenierio Informatico',63738912,'Bolivia','POtosi','Uncia','femenino',1,'activo'),(14,'Pablo','canaviri','villca',8394125,'Ingenierio en sistemas',77778912,'Bolivia','Cochabamba','quillacollo','masculino',1,'activo'),(15,'juana','lia','canaviri',9394125,'Ingenierio Informatico',63578912,'Bolivia','sucre','sucre','femenino',1,'activo');
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiante` (
  `cod_es` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_es` char(50) DEFAULT NULL,
  `ap_es` char(50) DEFAULT NULL,
  `am_es` char(50) DEFAULT NULL,
  `titulo_bachiller` char(10) DEFAULT NULL,
  `ci` int(11) DEFAULT NULL,
  `pais_es` char(50) DEFAULT NULL,
  `departamento` char(50) DEFAULT NULL,
  `provincia` char(100) DEFAULT NULL,
  `ciudad` char(50) DEFAULT NULL,
  `region` char(50) DEFAULT NULL,
  `sexo` char(50) DEFAULT NULL,
  `cod_carrera` int(11) DEFAULT NULL,
  `estado` char(20) DEFAULT NULL,
  PRIMARY KEY (`cod_es`),
  KEY `cod_carrera` (`cod_carrera`),
  CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`cod_carrera`) REFERENCES `carrera` (`cod_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,'Carlos','Villca','Calani','si',78451256,'Bolivia','Oruro','eduardo avaroa','Challapata','Challapata','masculino',1,'activo'),(2,'Roberto carlos','titi','Huanca','si',7991256,'Bolivia','potosi','bustillos','Llallagua','llallagua','masculino',1,'activo'),(3,'Geraldine','Condori','Calani','si',73737421,'Bolivia','Potosi','bustillos','Uncia','Uncia','femenino',1,'activo'),(4,'Rosmeri','Villcaes','chura','si',73457812,'Bolivia','Oruro','pagador','Huari','Huari','femenino',1,'activo'),(5,'Hilarion','callahuara','ayaviri','si',7995656,'Bolivia','Potosi','bustillos','Caripuyo','Caripuyo','masculino',1,'activo'),(6,'Josefina','sola','villca','si',73454512,'Bolivia','Cochabamba','independencia','toro toro','Toro toro','femenino',1,'activo'),(7,'Elizabet','manriques','Calani','si',79794545,'Bolivia','Oruro','eduardo avaroa','Challapata','Challapata','femenino',1,'activo'),(8,'Martha','Carrion','Jancoña','si',71457812,'Bolivia','Oruro','Cercado','sica sica','sica sica','femenino',1,'activo'),(9,'Fabian','sierra','acarapi','si',75457812,'Bolivia','potosi','bustillos','Caripuyo','Caripuyo','masculino',1,'activo'),(10,'Mario','DIaz','negrete','si',7754216,'Bolivia','Oruro','eduardo avaroa','Challapata','Challapata','masculino',1,'activo'),(11,'ROmane','DIaz','negrete','si',7754216,'Bolivia','Oruro','eduardo avaroa','Challapata','Challapata','femenino',1,'activo'),(12,'Carla','negrete','negrete','si',7554216,'Bolivia','Oruro','eduardo avaroa','Quillacas','Quillacas','femenino',1,'activo'),(13,'israel','jani jani','negrete','si',7754555,'Bolivia','Cochabamba','cercado','vinto','vinto','masculino',1,'activo'),(14,'Jhofan','Angulo','marizel','si',9854216,'Bolivia','Oruro','Poopo','Poopo','Poopo','masculino',1,'activo'),(15,'Rosemari','DIaz','Huanca','si',789854216,'Bolivia','Oruro','eduardo avaroa','Challapata','Challapata','masculino',1,'activo'),(16,'Juan jose','nina','gomez','si',7777755,'Bolivia','Santa cruz','lagunillas','puerto quijaro','puerto quijaro','masculino',2,'activo'),(17,'Rosmeri','Calani','Huanca','si',78784512,'Bolivia','Oruro','eduardo avaroa','Challapata','Challapata','masculino',3,'activo'),(18,'Roger','Gomes','titi','si',789854,'Bolivia','Oruro','eduardo avaroa','Challapata','Challapata','masculino',4,'activo'),(19,'JUlian','DIaz','Nina','si',7854216,'Bolivia','Oruro','eduardo avaroa','Qaqachaca','Qaqachaca','masculino',5,'activo'),(20,'estefania','lila','mamani','si',7956216,'Bolivia','potosi','bustillos','uncia','uncias','masculino',6,'activo'),(21,'Rosaura','Nina','Nina','si',7945122,'Bolivia','la paz','Murillo','viacha','viacha','femenino',7,'activo'),(22,'Ronal','Coyo','camino','si',789854216,'Bolivia','La paz','Murillo','viacha','viacha','masculino',8,'activo'),(23,'JUana','Coyo','nina','si',7898516,'Bolivia','La paz','Murillo','viacha','viacha','femenino',1,'desactivo'),(24,'Roberto','Carlos','mamani','si',788516,'Bolivia','La paz','Murillo','viacha','viacha','masculino',1,'desactivo'),(25,'Gladis','titi','villca','si',7956451,'Bolivia','Oruro','Pagador','san pedro de condo','san pedro de condo','femenino',1,'desactivo'),(26,'Nicolas','Huanca','romane','si',7895555,'Bolivia','La paz','Murillo','viacha','viacha','masculino',1,'desactivo'),(27,'Roman','zeballos','nina','si',7728516,'Bolivia','Potosi','bustillos','llallagua','chiroya','masculino',1,'desactivo'),(28,'juan javier','lipiri','mitma','si',7978975,'Bolivia','Oruro','eduardo avaroa','Challapata','churacani','masculino',1,'desactivo'),(29,'Juan','Garcia','Perez','si',774512,'Bolivia','Oruro','Poopo','Poopo','Poopo','masculino',1,'activo'),(30,'maria','Martines','Lopez','si',7784512,'Bolivia','santa cruz','porongo','porongo','porongo','femenino',1,'activo'),(31,'pedro','lopez','gonzales','si',7974512,'Bolivia','Cochabamba','quillacollo','quillacollo','quillacollo','masculino',1,'activo'),(32,'Ana','Gonsales','Martines','si',7574512,'Bolivia','Oruro','Poopo','Poopo','Poopo','femenino',1,'activo'),(33,'Luis','rodriguez','fernandez','si',74174512,'Bolivia','Oruro','Poopo','Poopo','Poopo','masculino',1,'activo'),(34,'Laura','fernandez','Perez','si',5674512,'Bolivia','Oruro','Poopo','Poopo','Poopo','masculino',1,'activo'),(35,'Carlos','Perez','sanchez','si',5374512,'Bolivia','Oruro','Pagador','pagador','huari','masculino',1,'activo'),(36,'Marta','sanchez','sanchez','si',75774512,'Bolivia','La paz','Aroma','Poopo','Poopo','femenino',1,'activo'),(37,'jose','Gonsales','rodriguez','si',74274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','masculino',1,'activo'),(38,'isabel','Martines','perez','si',54274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(39,'francisco','lopez','Garcia','si',56274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(40,'Lucia','perez','Martines','si',42274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(41,'Miguel','rodriguez','rodriguez','si',52274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','masculino',1,'activo'),(42,'Elena','sanchez','fernandez','si',12274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(43,'Antonio','Garcia','perez','si',51274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','masculino',1,'activo'),(44,'Carmen','fernandez','Gonsales','si',77274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(45,'Manuel','Martines','lopez','si',8974512,'Bolivia','Potosi','bustillos','llallagua','llallagua','masculino',1,'activo'),(46,'Alicia','lopez','perez','si',84274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(47,'DIego','perez','sanchez','si',774512,'Bolivia','Potosi','bustillos','llallagua','llallagua','masculino',1,'activo'),(48,'Rosa','sanchez','Martines','si',274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(49,'Daniel','Gonsales','rodriguez','si',74274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','masculino',1,'activo'),(50,'Andrea','rodriguez','perez','si',74274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(51,'Javier','Martines','sanchez','si',774512,'Bolivia','Potosi','bustillos','llallagua','llallagua','masculino',1,'activo'),(52,'Sara','lopez','gonzales','si',54274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(53,'Angel','perez','rodriguez','si',774512,'Bolivia','Potosi','bustillos','llallagua','llallagua','masculino',1,'activo'),(54,'Patricia','garcia','lopez','si',744512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(55,'david','fernandez','garcia','si',7274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','masculino',1,'activo'),(56,'Paula','Martines','perez','si',79274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(57,'Pablo','Gonsales','sanchez','si',55274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','masculino',1,'activo'),(58,'Eva','rodrigues','Martines','si',7400512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(59,'Jorge','lia','rodriguez','si',742102,'Bolivia','Potosi','bustillos','llallagua','llallagua','masculino',1,'activo'),(60,'Clara','sanchez','peres','si',4274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(61,'JUan carlos','lopez','peres','si',74274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','masculino',1,'activo'),(62,'Elena','garcia','rodriguez','si',74274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(63,'Alejandro','Martines','lopez','si',744512,'Bolivia','Potosi','bustillos','llallagua','llallagua','masculino',1,'activo'),(64,'Laura','villca','ayaviri','si',9974512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(65,'Victor hugo','canaviri','sola','si',74274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','masculino',1,'activo'),(66,'Ana','ayaviri','villcaes','si',724512,'Bolivia','Potosi','bustillos','llallagua','llallagua','femenino',1,'activo'),(67,'Raul','fernandez','garcia','si',74274512,'Bolivia','Potosi','bustillos','llallagua','llallagua','masculino',1,'activo'),(68,'Maria','Jose','peres','si',274512,'Bolivia','Oruro','cercado','oruro','oruro','femenino',1,'activo'),(69,'sergio','peres','aguero','si',6274512,'Bolivia','Oruro','cercado','oruro','oruro','masculino',1,'activo'),(70,'Julia','canaviri','paredes','si',5274512,'Bolivia','Oruro','cercado','oruro','oruro','femenino',1,'activo'),(71,'Lucia','rodrigues','mirana','si',55274512,'Bolivia','Oruro','cercado','oruro','oruro','femenino',1,'activo'),(72,'Gabriela','canaviri','coyo','si',78274512,'Bolivia','Oruro','cercado','oruro','oruro','femenino',1,'activo'),(73,'tomas','miranda','torrico','si',2777512,'Bolivia','Oruro','cercado','oruro','oruro','masculino',1,'activo'),(74,'Marina','gutierres','paredes','si',98274512,'Bolivia','Oruro','cercado','oruro','oruro','femenino',1,'activo'),(75,'Adrian','callahuara','peres','si',8274512,'Bolivia','Oruro','cercado','oruro','oruro','masculino',1,'activo'),(76,'Irene','garcia','coco','si',78274512,'Bolivia','Oruro','cercado','oruro','oruro','femenino',1,'activo'),(77,'Carina','mamani','rodrigues','si',3874512,'Bolivia','Potosi','bustillos','Caripuyo','Caripuyo','femenino',1,'activo'),(78,'Claudia','nina','rodrigues','si',3874512,'Bolivia','Potosi','bustillos','Caripuyo','Caripuyo','femenino',1,'activo'),(79,'fabiola','lia','lopez','si',38747512,'Bolivia','Potosi','bustillos','Caripuyo','Caripuyo','femenino',1,'activo'),(80,'Carina','mamani','rodrigues','si',3874512,'Bolivia','Potosi','bustillos','Caripuyo','Caripuyo','femenino',1,'activo'),(81,'Pablo','rodrigues','pacheco','si',3874512,'Bolivia','Potosi','bustillos','uncia','uncia','masculino',1,'activo'),(82,'Andrea','lopes','lopes','si',73874512,'Bolivia','Potosi','bustillos','uncia','uncia','femenino',1,'activo'),(83,'Alejandra','jani jani','pacheco','si',3874512,'Bolivia','Potosi','bustillos','uncia','uncia','femenino',1,'activo'),(84,'Luz clara','jorge','michaga','si',73874512,'Bolivia','Potosi','bustillos','uncia','uncia','femenino',1,'activo'),(85,'gonsalo','lipiri','condori','si',43874512,'Bolivia','Potosi','bustillos','uncia','uncia','masculino',1,'activo');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grado`
--

DROP TABLE IF EXISTS `grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grado` (
  `cod_grado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_grado` char(50) DEFAULT NULL,
  `estado` char(15) DEFAULT NULL,
  PRIMARY KEY (`cod_grado`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
INSERT INTO `grado` VALUES (1,'1er año','activo'),(2,'2do año','activo'),(3,'3er año','activo'),(4,'4to año','activo'),(5,'5to año','activo');
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidad_titulacion`
--

DROP TABLE IF EXISTS `modalidad_titulacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalidad_titulacion` (
  `cod_mt` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_mt` char(200) DEFAULT NULL,
  `cod_pe` int(11) NOT NULL,
  `cod_carrera` int(11) NOT NULL,
  `estado` char(15) DEFAULT NULL,
  PRIMARY KEY (`cod_mt`,`cod_pe`,`cod_carrera`),
  KEY `cod_pe` (`cod_pe`,`cod_carrera`),
  CONSTRAINT `modalidad_titulacion_ibfk_1` FOREIGN KEY (`cod_pe`, `cod_carrera`) REFERENCES `plan_de_estudio` (`cod_pe`, `cod_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidad_titulacion`
--

LOCK TABLES `modalidad_titulacion` WRITE;
/*!40000 ALTER TABLE `modalidad_titulacion` DISABLE KEYS */;
INSERT INTO `modalidad_titulacion` VALUES (1,'Proyecto de grado',1,1,'activo'),(2,'trabajo dirigido',1,1,'activo'),(3,'tesis',1,1,'activo'),(4,'excelencia',1,1,'activo'),(5,'Proyecto de grado',4,4,'activo'),(6,'trabajo dirigido',4,4,'activo'),(7,'tesis',4,4,'activo'),(8,'excelencia',4,4,'activo'),(9,'Proyecto de grado',5,13,'activo'),(10,'trabajo dirigido',5,13,'activo'),(11,'tesis',5,13,'activo'),(12,'excelencia',5,13,'activo'),(13,'Proyecto de grado',3,5,'activo'),(14,'trabajo dirigido',3,5,'activo'),(15,'tesis',3,5,'activo'),(16,'excelencia',3,5,'activo'),(17,'internado',3,5,'activo'),(18,'trabajo dirigido',2,1,'activo'),(19,'tesis',2,1,'activo'),(20,'excelencia academica',2,1,'activo'),(21,'Proyecto de grado',2,1,'activo');
/*!40000 ALTER TABLE `modalidad_titulacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_de_estudio`
--

DROP TABLE IF EXISTS `plan_de_estudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_de_estudio` (
  `cod_pe` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_pe` char(200) DEFAULT NULL,
  `ano_pe` year(4) DEFAULT NULL,
  `fecha_pe` date DEFAULT NULL,
  `cod_carrera` int(11) NOT NULL,
  `cod_area` int(11) DEFAULT NULL,
  `estado` char(15) DEFAULT NULL,
  PRIMARY KEY (`cod_pe`,`cod_carrera`),
  KEY `cod_carrera` (`cod_carrera`),
  CONSTRAINT `plan_de_estudio_ibfk_1` FOREIGN KEY (`cod_carrera`) REFERENCES `carrera` (`cod_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_de_estudio`
--

LOCK TABLES `plan_de_estudio` WRITE;
/*!40000 ALTER TABLE `plan_de_estudio` DISABLE KEYS */;
INSERT INTO `plan_de_estudio` VALUES (1,'malla curricular Informatica',1999,'1999-12-05',1,1,'activo'),(2,'malla curricular Informatica 2',2018,'2018-01-01',1,1,'activo'),(3,'malla curricular mecanica',2002,'2002-01-01',5,1,'activo'),(4,'malla curricular electromecanica',2001,'2001-01-01',4,1,'activo'),(5,'malla curricular Enfermeria',1991,'1991-01-01',13,2,'activo');
/*!40000 ALTER TABLE `plan_de_estudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titulado`
--

DROP TABLE IF EXISTS `titulado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titulado` (
  `cod_titu` int(11) NOT NULL AUTO_INCREMENT,
  `estado_titu` char(20) DEFAULT NULL,
  `nota_titu` int(11) DEFAULT NULL,
  `cod_def` int(11) NOT NULL,
  `cod_es` int(11) NOT NULL,
  `cod_mt` int(11) NOT NULL,
  `cod_pe` int(11) NOT NULL,
  `cod_carrera` int(11) NOT NULL,
  `estado` char(15) DEFAULT NULL,
  PRIMARY KEY (`cod_titu`,`cod_def`,`cod_es`,`cod_mt`,`cod_pe`,`cod_carrera`),
  KEY `cod_def` (`cod_def`,`cod_es`,`cod_mt`,`cod_pe`,`cod_carrera`),
  CONSTRAINT `titulado_ibfk_1` FOREIGN KEY (`cod_def`, `cod_es`, `cod_mt`, `cod_pe`, `cod_carrera`) REFERENCES `defensa` (`cod_def`, `cod_es`, `cod_mt`, `cod_pe`, `cod_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titulado`
--

LOCK TABLES `titulado` WRITE;
/*!40000 ALTER TABLE `titulado` DISABLE KEYS */;
INSERT INTO `titulado` VALUES (1,'aprobado',65,1,61,21,2,1,'activo'),(2,'en proceso',0,2,63,21,2,1,'activo'),(3,'aprobado',80,3,65,18,2,1,'activo'),(4,'reprobado',50,4,67,18,2,1,'activo');
/*!40000 ALTER TABLE `titulado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferencia`
--

DROP TABLE IF EXISTS `transferencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transferencia` (
  `cod_transferencia` int(11) NOT NULL AUTO_INCREMENT,
  `transferencia` char(10) DEFAULT NULL,
  `universidad_transferencia` char(200) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `cod_es` int(11) NOT NULL,
  `estado` char(20) DEFAULT NULL,
  PRIMARY KEY (`cod_transferencia`,`cod_es`),
  KEY `cod_es` (`cod_es`),
  CONSTRAINT `transferencia_ibfk_1` FOREIGN KEY (`cod_es`) REFERENCES `estudiante` (`cod_es`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferencia`
--

LOCK TABLES `transferencia` WRITE;
/*!40000 ALTER TABLE `transferencia` DISABLE KEYS */;
INSERT INTO `transferencia` VALUES (1,'si','UTO','2020-05-15 14:30:00',28,'activo'),(2,'si','Univeridad tecnica de Oruro','2015-05-15 13:30:00',29,'activo'),(3,'si','Univeridad tecnica de Oruro','2016-05-15 14:30:00',32,'activo'),(4,'si','UTO','2014-05-15 14:30:00',33,'activo'),(5,'si','UTO','2014-05-15 15:30:00',34,'activo'),(6,'si','Universidad tomas frias','2015-05-15 14:50:00',35,'activo');
/*!40000 ALTER TABLE `transferencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferir`
--

DROP TABLE IF EXISTS `transferir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transferir` (
  `cod_transferir` int(11) NOT NULL AUTO_INCREMENT,
  `transferir` char(10) DEFAULT NULL,
  `universidad_trans` char(200) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `cod_cursa` int(11) NOT NULL,
  `cod_es` int(11) NOT NULL,
  `cod_dicta` int(11) NOT NULL,
  `cod_docente` int(11) NOT NULL,
  `cod_asig` int(11) NOT NULL,
  `cod_pe` int(11) NOT NULL,
  `cod_carrera` int(11) NOT NULL,
  `cod_grado` int(11) NOT NULL,
  `estado` char(15) DEFAULT NULL,
  PRIMARY KEY (`cod_transferir`,`cod_cursa`,`cod_es`,`cod_dicta`,`cod_docente`,`cod_asig`,`cod_pe`,`cod_carrera`,`cod_grado`),
  KEY `cod_cursa` (`cod_cursa`,`cod_es`,`cod_dicta`,`cod_docente`,`cod_asig`,`cod_pe`,`cod_carrera`,`cod_grado`),
  CONSTRAINT `transferir_ibfk_1` FOREIGN KEY (`cod_cursa`, `cod_es`, `cod_dicta`, `cod_docente`, `cod_asig`, `cod_pe`, `cod_carrera`, `cod_grado`) REFERENCES `cursa_asignatura` (`cod_cursa`, `cod_es`, `cod_dicta`, `cod_docente`, `cod_asig`, `cod_pe`, `cod_carrera`, `cod_grado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferir`
--

LOCK TABLES `transferir` WRITE;
/*!40000 ALTER TABLE `transferir` DISABLE KEYS */;
INSERT INTO `transferir` VALUES (1,'si','Universidad del valle','2022-05-15 14:30:00',302,59,46,1,31,2,1,4,'activo'),(2,'si','Universidad mayor de san andres','2018-05-15 14:30:00',292,58,46,1,31,2,1,4,'activo'),(3,'si','Universidad tomas frias','2021-05-15 14:30:00',116,38,24,3,10,2,1,2,'activo'),(4,'si','Universidad del valle','2022-05-15 14:30:00',151,43,33,1,18,2,1,3,'activo'),(5,'si','Universidad del valle','2022-05-15 14:30:00',169,45,33,1,18,2,1,3,'activo'),(6,'si','Universidad del valle','2022-05-15 14:30:00',134,40,24,3,10,2,1,2,'activo'),(7,'si','Universidad del valle','2022-05-15 14:30:00',302,59,46,1,31,2,1,4,'activo'),(8,'si','Universidad del valle','2022-05-15 14:30:00',18,24,69,10,4,2,1,1,'activo'),(9,'si','Universidad tomas frias','2022-05-15 14:30:00',302,59,46,1,31,2,1,4,'activo'),(10,'si','Universidad de san simon','2023-05-15 14:30:00',20,26,70,11,5,2,1,1,'activo');
/*!40000 ALTER TABLE `transferir` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-15 18:18:17
