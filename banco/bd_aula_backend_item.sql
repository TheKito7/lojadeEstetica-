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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `iditem` int NOT NULL AUTO_INCREMENT,
  `idcategoria` int NOT NULL,
  `item` varchar(45) NOT NULL,
  `descricao_item` varchar(200) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `tipo_item` char(1) NOT NULL,
  `ativo_produto_servico` char(1) DEFAULT NULL,
  PRIMARY KEY (`iditem`),
  KEY `fk_item_categoria` (`idcategoria`),
  CONSTRAINT `fk_item_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,1,'Limpeza de Pele Profunda','Limpeza de pele profunda com higienizacao, esfoliacao, extracao e hidratacao.',120.00,'S','S'),(2,1,'Limpeza de Pele Express','Limpeza facial rapida para remocao de impurezas e oleosidade.',80.00,'S','S'),(3,2,'Tratamento Facial Hidratante','Tratamento facial para hidratacao e revitalizacao da pele.',150.00,'S','S'),(4,2,'Tratamento Facial Antiacne','Tratamento facial direcionado para controle da oleosidade e acne.',160.00,'S','S'),(5,3,'Tratamento Corporal Modelador','Tratamento corporal estetico para modelagem e definicao do contorno corporal.',180.00,'S','S'),(6,3,'Tratamento Corporal Redutor','Tratamento estetico corporal para auxiliar na reducao de medidas.',200.00,'S','S'),(7,4,'Massagem Relaxante','Massagem corporal relaxante para alivio de tensoes musculares.',100.00,'S','S'),(8,4,'Massagem Modeladora','Massagem corporal com tecnicas de modelagem e estimulacao circulatoria.',130.00,'S','S'),(9,5,'Depilacao Pernas','Depilacao completa das pernas com cera.',90.00,'S','S'),(10,5,'Depilacao Axilas','Depilacao das axilas com cera.',35.00,'S','S'),(11,6,'Design de Sobrancelhas','Modelagem e definicao das sobrancelhas de acordo com o formato do rosto.',45.00,'S','S'),(12,6,'Design de Sobrancelhas com Henna','Design de sobrancelhas com aplicacao de henna.',65.00,'S','S'),(13,7,'Micropigmentacao de Sobrancelhas','Procedimento estetico para definicao e preenchimento das sobrancelhas.',450.00,'S','S'),(14,8,'Extensao de Cilios','Aplicacao de extensao de cilios para alongamento e volume.',180.00,'S','S'),(15,9,'Lash Lifting','Procedimento para curvatura e realce dos cilios naturais.',150.00,'S','S'),(16,10,'Peeling Facial','Procedimento de renovacao da pele por meio de peeling facial.',180.00,'S','S'),(17,11,'Drenagem Linfatica','Massagem corporal com tecnica de drenagem linfatica.',120.00,'S','S'),(18,12,'Radiofrequencia Facial','Procedimento estetico facial utilizando tecnologia de radiofrequencia.',180.00,'S','S'),(19,12,'Radiofrequencia Corporal','Procedimento estetico corporal utilizando tecnologia de radiofrequencia.',220.00,'S','S'),(20,13,'Tratamento Capilar Hidratante','Tratamento capilar para hidratacao e recuperacao dos fios.',100.00,'S','S'),(22,13,'Shampoo Hidratante Teste','Shampoo para cuidados capilares',2.00,'P','S');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
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
