CREATE DATABASE  IF NOT EXISTS `telovendousuarios` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `telovendousuarios`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: telovendousuarios
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactos` (
  `id_contacto` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `numero_de_telefono` int NOT NULL,
  `correo_electronico` varchar(45) NOT NULL,
  PRIMARY KEY (`id_contacto`),
  KEY `FK_usuarios_contactos_idx` (`id_usuario`),
  CONSTRAINT `FK_usuarios_contactos` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fecha_hora`
--

DROP TABLE IF EXISTS `fecha_hora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fecha_hora` (
  `id_ingreso` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `fecha_hora_ingreso` timestamp(6) NOT NULL,
  PRIMARY KEY (`id_ingreso`),
  UNIQUE KEY `id_ingreso` (`id_ingreso`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fecha_hora`
--

LOCK TABLES `fecha_hora` WRITE;
/*!40000 ALTER TABLE `fecha_hora` DISABLE KEYS */;
INSERT INTO `fecha_hora` VALUES (1,1,'2023-05-08 23:11:30.000000'),(2,2,'2023-05-08 23:11:30.000000'),(3,3,'2023-05-08 23:11:30.000000'),(4,4,'2023-05-08 23:11:30.000000'),(5,5,'2023-05-08 23:11:30.000000'),(6,6,'2023-05-08 23:11:30.000000'),(7,7,'2023-05-08 23:11:30.000000'),(8,8,'2023-05-08 23:11:30.000000');
/*!40000 ALTER TABLE `fecha_hora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `zonahoraria` timestamp(6) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `numero_de_telefono` int NOT NULL,
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Fernanda','Reyes','af8354637','2023-05-09 00:55:47.000000','F',942371873),(2,'Pablo','Hernandez','ghgcnsbdtejrn','2023-05-09 00:55:47.000000','M',950053784),(3,'Catalina','Correa','gc8364638','2023-05-09 00:55:47.000000','F',954681425),(4,'Carlos','Marín','gcv373432932','2023-05-09 00:55:47.000000','M',965781537),(5,'Pedro','Aguirre','hfg836630','2023-05-09 00:55:47.000000','M',934571943),(6,'Juan','Lopez','fgfjh83738','2023-05-09 00:55:47.000000','M',973491835),(7,'Carla','Gutierrez','vm8364647','2023-05-09 00:55:47.000000','F',985562829),(8,'Francisca','Salinas','hfg9746637','2023-05-09 00:55:47.000000','F',974692920);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'telovendousuarios'
--

--
-- Dumping routines for database 'telovendousuarios'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-08 21:34:43
