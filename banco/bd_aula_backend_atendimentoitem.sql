-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_aula_backend
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `atendimentoitem`
--

DROP TABLE IF EXISTS `atendimentoitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atendimentoitem` (
  `idatendimento` int NOT NULL,
  `iditem` int NOT NULL,
  `idfuncionario` int DEFAULT NULL,
  `quantidade_item` int NOT NULL,
  `valorunitario_entrada` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idatendimento`,`iditem`),
  KEY `fk_atendimentoitem_item` (`iditem`),
  KEY `fk_atendimentoitem_funcionario` (`idfuncionario`),
  CONSTRAINT `fk_atendimentoitem_atendimento` FOREIGN KEY (`idatendimento`) REFERENCES `atendimento` (`idatendimento`),
  CONSTRAINT `fk_atendimentoitem_funcionario` FOREIGN KEY (`idfuncionario`) REFERENCES `funcionario` (`idpessoa`),
  CONSTRAINT `fk_atendimentoitem_item` FOREIGN KEY (`iditem`) REFERENCES `item` (`iditem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atendimentoitem`
--

LOCK TABLES `atendimentoitem` WRITE;
/*!40000 ALTER TABLE `atendimentoitem` DISABLE KEYS */;
INSERT INTO `atendimentoitem` VALUES (1,1,4,1,120.00),(1,22,4,2,64.80),(2,9,4,1,90.00),(3,9,4,1,90.00);
/*!40000 ALTER TABLE `atendimentoitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-26 19:54:55
