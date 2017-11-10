-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: gusicomp
-- ------------------------------------------------------
-- Server version	5.6.22-log

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `codcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `sobrenome` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `datacadastro` varchar(45) DEFAULT NULL,
  `users_cod_user` int(11) NOT NULL,
  PRIMARY KEY (`codcliente`),
  KEY `fk_clientes_users1_idx` (`users_cod_user`),
  CONSTRAINT `fk_clientes_users1` FOREIGN KEY (`users_cod_user`) REFERENCES `users` (`cod_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_materiais`
--

DROP TABLE IF EXISTS `compra_materiais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra_materiais` (
  `cod_compra` int(11) NOT NULL AUTO_INCREMENT,
  `quantidade` varchar(45) NOT NULL,
  `users_cod_user` int(11) NOT NULL,
  `fornecedores_cod_fornecedor` int(11) NOT NULL,
  `produtos_cod_produto` int(11) NOT NULL,
  PRIMARY KEY (`cod_compra`),
  KEY `fk_compra_materiais_users1_idx` (`users_cod_user`),
  KEY `fk_compra_materiais_fornecedores1_idx` (`fornecedores_cod_fornecedor`),
  KEY `fk_compra_materiais_produtos1_idx` (`produtos_cod_produto`),
  CONSTRAINT `fk_compra_materiais_fornecedores1` FOREIGN KEY (`fornecedores_cod_fornecedor`) REFERENCES `fornecedores` (`cod_fornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_compra_materiais_produtos1` FOREIGN KEY (`produtos_cod_produto`) REFERENCES `produtos` (`cod_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_compra_materiais_users1` FOREIGN KEY (`users_cod_user`) REFERENCES `users` (`cod_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_materiais`
--

LOCK TABLES `compra_materiais` WRITE;
/*!40000 ALTER TABLE `compra_materiais` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_materiais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechamento_venda`
--

DROP TABLE IF EXISTS `fechamento_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fechamento_venda` (
  `cod_fechamento` varchar(45) NOT NULL,
  `subtotal` varchar(45) DEFAULT NULL,
  `user` int(11) NOT NULL,
  `data_fechamento` date NOT NULL,
  `venda_materiais_cod_venda` varchar(45) NOT NULL,
  `clientes_codcliente` int(11) NOT NULL,
  PRIMARY KEY (`cod_fechamento`),
  KEY `fk_fechamento_venda_users1_idx` (`user`),
  KEY `fk_fechamento_venda_venda_materiais1_idx` (`venda_materiais_cod_venda`),
  KEY `fk_fechamento_venda_clientes1_idx` (`clientes_codcliente`),
  CONSTRAINT `fk_fechamento_venda_clientes1` FOREIGN KEY (`clientes_codcliente`) REFERENCES `clientes` (`codcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fechamento_venda_users1` FOREIGN KEY (`user`) REFERENCES `users` (`cod_user`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fechamento_venda_venda_materiais1` FOREIGN KEY (`venda_materiais_cod_venda`) REFERENCES `venda_materiais` (`cod_venda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechamento_venda`
--

LOCK TABLES `fechamento_venda` WRITE;
/*!40000 ALTER TABLE `fechamento_venda` DISABLE KEYS */;
/*!40000 ALTER TABLE `fechamento_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedores` (
  `cod_fornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(45) NOT NULL,
  `cnpj` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_fornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garantia`
--

DROP TABLE IF EXISTS `garantia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garantia` (
  `cod_garantia` int(11) NOT NULL AUTO_INCREMENT,
  `data_garantia` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_garantia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garantia`
--

LOCK TABLES `garantia` WRITE;
/*!40000 ALTER TABLE `garantia` DISABLE KEYS */;
/*!40000 ALTER TABLE `garantia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_user`
--

DROP TABLE IF EXISTS `log_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_user` (
  `cod_log` int(11) NOT NULL,
  `users_cod_user` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `acao` varchar(45) NOT NULL,
  `local` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod_log`),
  KEY `fk_log_user_users1_idx` (`users_cod_user`),
  CONSTRAINT `fk_log_user_users1` FOREIGN KEY (`users_cod_user`) REFERENCES `users` (`cod_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_user`
--

LOCK TABLES `log_user` WRITE;
/*!40000 ALTER TABLE `log_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `cod_produto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `valor_unitário` varchar(45) NOT NULL,
  `estoque` int(11) DEFAULT NULL,
  `garantia_cod_garantia` int(11) NOT NULL,
  PRIMARY KEY (`cod_produto`),
  KEY `fk_produtos_garantia1_idx` (`garantia_cod_garantia`),
  CONSTRAINT `fk_produtos_garantia1` FOREIGN KEY (`garantia_cod_garantia`) REFERENCES `garantia` (`cod_garantia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `cod_user` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `permisao` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_user`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda_materiais`
--

DROP TABLE IF EXISTS `venda_materiais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venda_materiais` (
  `cod_venda` varchar(45) NOT NULL,
  `quantidade` varchar(45) NOT NULL,
  `produtos_cod_produto` int(11) NOT NULL,
  PRIMARY KEY (`cod_venda`),
  KEY `fk_venda_materiais_produtos2_idx` (`produtos_cod_produto`),
  CONSTRAINT `fk_venda_materiais_produtos2` FOREIGN KEY (`produtos_cod_produto`) REFERENCES `produtos` (`cod_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda_materiais`
--

LOCK TABLES `venda_materiais` WRITE;
/*!40000 ALTER TABLE `venda_materiais` DISABLE KEYS */;
/*!40000 ALTER TABLE `venda_materiais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gusicomp'
--

--
-- Dumping routines for database 'gusicomp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-10 19:48:06
