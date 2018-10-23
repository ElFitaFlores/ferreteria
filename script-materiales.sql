-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: materiales
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bodprod`
--

DROP TABLE IF EXISTS `bodprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bodprod` (
  `ID_BODPROD` int(11) NOT NULL AUTO_INCREMENT,
  `COD_PRODUCTO` int(11) NOT NULL,
  `COD_PROVEEDOR` int(11) NOT NULL,
  `ID_COMPRPAPROD` int(11) NOT NULL,
  `ID_VENPPROD` int(11) NOT NULL,
  `EXISTENCIA` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NUM_EXISTENCIA` int(11) NOT NULL,
  `NOMBREPROD` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_BODPROD`),
  KEY `COD_PRODUCTO_idx` (`COD_PRODUCTO`),
  CONSTRAINT `COD_PRODUCTO` FOREIGN KEY (`COD_PRODUCTO`) REFERENCES `pedido` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodprod`
--

LOCK TABLES `bodprod` WRITE;
/*!40000 ALTER TABLE `bodprod` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodprod` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRbodProd` BEFORE INSERT ON `bodprod` FOR EACH ROW Insert into trigger_bodprod(
ID_BODPROD2
,COD_PRODUCTO2
,COD_PROVEEDOR2
,ID_COMPRPAPROD2
,ID_VENPPROD2
,EXISTENCIA2
,NUM_EXISTENCIA2
,NOMBREPROD2
,USUARIO
,FECHA
) values (
ID_BODPROD
,COD_PRODUCTO
,COD_PROVEEDOR
,ID_COMPRPAPROD
,ID_VENPPROD
,EXISTENCIA
,NUM_EXISTENCIA
,NOMBREPROD
,current_user()
,NOW()
) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Tbodprod` AFTER INSERT ON `bodprod` FOR EACH ROW Insert into trigger_bodprod(
ID_BODPROD2
,COD_PRODUCTO2
,COD_PROVEEDOR2
,ID_COMPRPAPROD2
,ID_VENPPROD2
,EXISTENCIA2
,NUM_EXISTENCIA2
,NOMBREPROD2
,USUARIO
,FECHA
) values (
ID_BODPROD
,COD_PRODUCTO
,COD_PROVEEDOR
,ID_COMPRPAPROD
,ID_VENPPROD
,EXISTENCIA
,NUM_EXISTENCIA
,NOMBREPROD
,current_user()
,NOW()
) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `catalogo`
--

DROP TABLE IF EXISTS `catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `catalogo` (
  `PRODUCTO_ID` int(11) NOT NULL,
  `PROVEEDOR_ID` int(11) NOT NULL,
  `PRECIO` decimal(10,0) NOT NULL,
  PRIMARY KEY (`PRODUCTO_ID`,`PROVEEDOR_ID`),
  KEY `fk_CATALOGO_PROVEEDOR1_idx` (`PROVEEDOR_ID`),
  CONSTRAINT `fk_CATALOGO_PRODUCTO1` FOREIGN KEY (`PRODUCTO_ID`) REFERENCES `producto` (`id`),
  CONSTRAINT `fk_CATALOGO_PROVEEDOR1` FOREIGN KEY (`PROVEEDOR_ID`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo`
--

LOCK TABLES `catalogo` WRITE;
/*!40000 ALTER TABLE `catalogo` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cliente` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `NIT` varchar(45) NOT NULL,
  `DIRECCION` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NIT_UNIQUE` (`NIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (11,'Diego','8890894-1','sjp');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprod`
--

DROP TABLE IF EXISTS `comprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comprod` (
  `ID_COMPRAPROD` int(11) NOT NULL AUTO_INCREMENT,
  `CODPRODUCTO` int(11) NOT NULL,
  `PRECIO_CORRECTO` decimal(2,0) NOT NULL,
  `PRECIO_REAL` decimal(2,0) NOT NULL,
  `PROVEEDOR_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID_COMPRAPROD`),
  KEY `PROVEEDOR_ID_idx` (`PROVEEDOR_ID`) /*!80000 INVISIBLE */,
  KEY `CODPRODUCTO_idx` (`CODPRODUCTO`),
  CONSTRAINT `CODPRODUCTO` FOREIGN KEY (`CODPRODUCTO`) REFERENCES `venprod` (`cod_producto`),
  CONSTRAINT `PROVEEDOR_ID` FOREIGN KEY (`PROVEEDOR_ID`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprod`
--

LOCK TABLES `comprod` WRITE;
/*!40000 ALTER TABLE `comprod` DISABLE KEYS */;
/*!40000 ALTER TABLE `comprod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detalle_pedido` (
  `ID_PEDIDO` int(11) NOT NULL AUTO_INCREMENT,
  `CANTIDAD` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `VALOR_PRODUCTO` decimal(2,0) NOT NULL,
  `VALTOTPROD` decimal(2,0) NOT NULL,
  PRIMARY KEY (`ID_PEDIDO`),
  CONSTRAINT `ID_PEDIDO` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedido` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallefactura`
--

DROP TABLE IF EXISTS `detallefactura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detallefactura` (
  `NUMFACTURA` int(11) NOT NULL,
  `CANTPRODUCTOS` int(11) NOT NULL,
  `TOTALFACTURA` decimal(2,0) NOT NULL,
  `FACTURA` int(11) NOT NULL,
  PRIMARY KEY (`NUMFACTURA`),
  KEY `NUMFACUTURA` (`NUMFACTURA`),
  KEY `FACTURA_idx` (`FACTURA`),
  CONSTRAINT `FACTURA` FOREIGN KEY (`FACTURA`) REFERENCES `fact` (`numfactura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallefactura`
--

LOCK TABLES `detallefactura` WRITE;
/*!40000 ALTER TABLE `detallefactura` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallefactura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrega`
--

DROP TABLE IF EXISTS `entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `entrega` (
  `ID` int(11) NOT NULL,
  `FECHA` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega`
--

LOCK TABLES `entrega` WRITE;
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrega_detalle`
--

DROP TABLE IF EXISTS `entrega_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `entrega_detalle` (
  `ID` int(11) NOT NULL,
  `ENTREGA_ID` int(11) NOT NULL,
  `PEDIDO_DETALLE_ID` int(11) NOT NULL,
  `PRECIO` decimal(10,0) DEFAULT NULL,
  `CANTIDAD` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_ENTREGA_has_PEDIDO_ENTREGA1_idx` (`ENTREGA_ID`),
  KEY `fk_ENTREGA_DETALLE_PEDIDO_DETALLE1_idx` (`PEDIDO_DETALLE_ID`),
  CONSTRAINT `fk_ENTREGA_DETALLE_PEDIDO_DETALLE1` FOREIGN KEY (`PEDIDO_DETALLE_ID`) REFERENCES `pedido_detalle` (`id`),
  CONSTRAINT `fk_ENTREGA_has_PEDIDO_ENTREGA1` FOREIGN KEY (`ENTREGA_ID`) REFERENCES `entrega` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega_detalle`
--

LOCK TABLES `entrega_detalle` WRITE;
/*!40000 ALTER TABLE `entrega_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrega_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact`
--

DROP TABLE IF EXISTS `fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fact` (
  `NUMFACTURA` int(11) NOT NULL,
  `SERIEFACTURA` varchar(45) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `HORA` time NOT NULL,
  `NOMBRECLIENTE` varchar(45) NOT NULL,
  `NITCLIENTE` int(11) NOT NULL,
  `DIRECCIONCLIENTE` varchar(45) DEFAULT NULL,
  `FORMADEPAGO` varchar(45) DEFAULT NULL,
  `ID_USUARIO` varchar(45) NOT NULL,
  PRIMARY KEY (`NUMFACTURA`),
  KEY `NUMFACTURA` (`NUMFACTURA`) /*!80000 INVISIBLE */
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact`
--

LOCK TABLES `fact` WRITE;
/*!40000 ALTER TABLE `fact` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `factura` (
  `ID` int(11) NOT NULL,
  `FECHA` datetime NOT NULL,
  `SERIE` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pedido` (
  `ID` int(11) NOT NULL,
  `FECHA` datetime DEFAULT NULL,
  `PROVEEDOR_ID` int(11) NOT NULL,
  `COMPLETO` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_PEDIDO_PROVEEDOR1_idx` (`PROVEEDOR_ID`),
  CONSTRAINT `fk_PEDIDO_PROVEEDOR1` FOREIGN KEY (`PROVEEDOR_ID`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_cliente`
--

DROP TABLE IF EXISTS `pedido_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pedido_cliente` (
  `ID` int(11) NOT NULL,
  `FECHA` datetime NOT NULL,
  `PRESUPUESTO_ID` int(11) DEFAULT NULL,
  `PAGADO` tinyint(4) DEFAULT NULL,
  `FACTURA_ID` int(11) DEFAULT NULL,
  `CLIENTE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_PEDIDO_CLIENTE_PRESUPUESTO1_idx` (`PRESUPUESTO_ID`),
  KEY `fk_PEDIDO_CLIENTE_FACTURA1_idx` (`FACTURA_ID`),
  KEY `fk_PEDIDO_CLIENTE_CLIENTE1_idx` (`CLIENTE_ID`),
  CONSTRAINT `fk_PEDIDO_CLIENTE_CLIENTE1` FOREIGN KEY (`CLIENTE_ID`) REFERENCES `cliente` (`id`),
  CONSTRAINT `fk_PEDIDO_CLIENTE_FACTURA1` FOREIGN KEY (`FACTURA_ID`) REFERENCES `factura` (`id`),
  CONSTRAINT `fk_PEDIDO_CLIENTE_PRESUPUESTO1` FOREIGN KEY (`PRESUPUESTO_ID`) REFERENCES `presupuesto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_cliente`
--

LOCK TABLES `pedido_cliente` WRITE;
/*!40000 ALTER TABLE `pedido_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_cliente_detalle`
--

DROP TABLE IF EXISTS `pedido_cliente_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pedido_cliente_detalle` (
  `ID` int(11) NOT NULL,
  `PEDIDO_CLIENTE_ID` int(11) NOT NULL,
  `PRODUCTO_ID` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `PRECIO` decimal(10,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_PEDIDO_CLIENTE_DETALLE_PEDIDO_CLIENTE1_idx` (`PEDIDO_CLIENTE_ID`),
  KEY `fk_PEDIDO_CLIENTE_DETALLE_PRODUCTO1_idx` (`PRODUCTO_ID`),
  CONSTRAINT `fk_PEDIDO_CLIENTE_DETALLE_PEDIDO_CLIENTE1` FOREIGN KEY (`PEDIDO_CLIENTE_ID`) REFERENCES `pedido_cliente` (`id`),
  CONSTRAINT `fk_PEDIDO_CLIENTE_DETALLE_PRODUCTO1` FOREIGN KEY (`PRODUCTO_ID`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_cliente_detalle`
--

LOCK TABLES `pedido_cliente_detalle` WRITE;
/*!40000 ALTER TABLE `pedido_cliente_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_cliente_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_detalle`
--

DROP TABLE IF EXISTS `pedido_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pedido_detalle` (
  `ID` int(11) NOT NULL,
  `PEDIDO_ID` int(11) NOT NULL,
  `PRODUCTO_ID` int(11) NOT NULL,
  `CANTIDAD` int(11) DEFAULT NULL,
  `PRECIO` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_PEDIDO_DETALLE_PEDIDO1_idx` (`PEDIDO_ID`),
  KEY `fk_PEDIDO_DETALLE_PRODUCTO1_idx` (`PRODUCTO_ID`),
  CONSTRAINT `fk_PEDIDO_DETALLE_PEDIDO1` FOREIGN KEY (`PEDIDO_ID`) REFERENCES `pedido` (`id`),
  CONSTRAINT `fk_PEDIDO_DETALLE_PRODUCTO1` FOREIGN KEY (`PRODUCTO_ID`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_detalle`
--

LOCK TABLES `pedido_detalle` WRITE;
/*!40000 ALTER TABLE `pedido_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personaprov`
--

DROP TABLE IF EXISTS `personaprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `personaprov` (
  `ID_USUARIOPROV` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `TELEFONO` int(11) NOT NULL,
  PRIMARY KEY (`ID_USUARIOPROV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personaprov`
--

LOCK TABLES `personaprov` WRITE;
/*!40000 ALTER TABLE `personaprov` DISABLE KEYS */;
/*!40000 ALTER TABLE `personaprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presupuesto`
--

DROP TABLE IF EXISTS `presupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `presupuesto` (
  `ID` int(11) NOT NULL,
  `FECHA` datetime NOT NULL,
  `CLIENTE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_PRESUPUESTO_CLIENTE1_idx` (`CLIENTE_ID`),
  CONSTRAINT `fk_PRESUPUESTO_CLIENTE1` FOREIGN KEY (`CLIENTE_ID`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presupuesto`
--

LOCK TABLES `presupuesto` WRITE;
/*!40000 ALTER TABLE `presupuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `presupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presupuesto_detalle`
--

DROP TABLE IF EXISTS `presupuesto_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `presupuesto_detalle` (
  `ID` int(11) NOT NULL,
  `PRESUPUESTO_ID` int(11) NOT NULL,
  `PRODUCTO_ID` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `PRECIO` decimal(10,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_PRESUPUESTO_DETALLE_PRESUPUESTO1_idx` (`PRESUPUESTO_ID`),
  KEY `fk_PRESUPUESTO_DETALLE_PRODUCTO1_idx` (`PRODUCTO_ID`),
  CONSTRAINT `fk_PRESUPUESTO_DETALLE_PRESUPUESTO1` FOREIGN KEY (`PRESUPUESTO_ID`) REFERENCES `presupuesto` (`id`),
  CONSTRAINT `fk_PRESUPUESTO_DETALLE_PRODUCTO1` FOREIGN KEY (`PRODUCTO_ID`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presupuesto_detalle`
--

LOCK TABLES `presupuesto_detalle` WRITE;
/*!40000 ALTER TABLE `presupuesto_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `presupuesto_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `producto` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `EXISTENCIAS` int(10) unsigned NOT NULL,
  `IMAGEN` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_proveedor`
--

DROP TABLE IF EXISTS `producto_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `producto_proveedor` (
  `PROVEEDOR_ID` int(11) NOT NULL,
  `PRODUCTO_ID` int(11) NOT NULL,
  PRIMARY KEY (`PROVEEDOR_ID`,`PRODUCTO_ID`),
  KEY `fk_PROVEEDOR_has_PRODUCTO_PRODUCTO1_idx` (`PRODUCTO_ID`),
  KEY `fk_PROVEEDOR_has_PRODUCTO_PROVEEDOR1_idx` (`PROVEEDOR_ID`),
  CONSTRAINT `fk_PROVEEDOR_has_PRODUCTO_PRODUCTO1` FOREIGN KEY (`PRODUCTO_ID`) REFERENCES `producto` (`id`),
  CONSTRAINT `fk_PROVEEDOR_has_PRODUCTO_PROVEEDOR1` FOREIGN KEY (`PROVEEDOR_ID`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_proveedor`
--

LOCK TABLES `producto_proveedor` WRITE;
/*!40000 ALTER TABLE `producto_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proveedor` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `NIT` varchar(45) NOT NULL,
  `TELEFONO` varchar(45) DEFAULT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NIT_UNIQUE` (`NIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'CEMENTO, S.A.','1245789-0','5555-5555','email@gmail.com');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trigger_bodprod`
--

DROP TABLE IF EXISTS `trigger_bodprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trigger_bodprod` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_BODPROD2` int(11) NOT NULL,
  `COD_PRODUCTO2` int(11) NOT NULL,
  `COD_PROVEEDOR2` int(11) NOT NULL,
  `ID_COMPRPAPROD2` int(11) NOT NULL,
  `ID_VENPPROD2` int(11) NOT NULL,
  `EXISTENCIA2` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NUM_EXISTENCIA2` int(11) NOT NULL,
  `NOMBREPROD2` varchar(45) NOT NULL,
  `USUARIO` varchar(45) NOT NULL,
  `FECHA` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trigger_bodprod`
--

LOCK TABLES `trigger_bodprod` WRITE;
/*!40000 ALTER TABLE `trigger_bodprod` DISABLE KEYS */;
/*!40000 ALTER TABLE `trigger_bodprod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trigger_dfactura`
--

DROP TABLE IF EXISTS `trigger_dfactura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trigger_dfactura` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NUMFACTURA` int(11) NOT NULL,
  `CANTPRODUCTOS` int(11) NOT NULL,
  `TOTALFACTURA` decimal(2,0) NOT NULL,
  `FACTURA` int(11) NOT NULL,
  `USUARIO` varchar(45) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trigger_dfactura`
--

LOCK TABLES `trigger_dfactura` WRITE;
/*!40000 ALTER TABLE `trigger_dfactura` DISABLE KEYS */;
/*!40000 ALTER TABLE `trigger_dfactura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venprod`
--

DROP TABLE IF EXISTS `venprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `venprod` (
  `ID_VENPROD` int(11) NOT NULL,
  `COD_PRODUCTO` int(11) NOT NULL,
  `PRECIOVENTA` decimal(2,0) NOT NULL,
  `EXISTENCIA` int(11) NOT NULL,
  `NOMBREPROD` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_VENPROD`),
  KEY `ID_COMPRAPROD` (`COD_PRODUCTO`),
  CONSTRAINT `ID_COMPRAPROD` FOREIGN KEY (`COD_PRODUCTO`) REFERENCES `pedido` (`id`),
  CONSTRAINT `ID_VENPROD` FOREIGN KEY (`ID_VENPROD`) REFERENCES `bodprod` (`id_bodprod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venprod`
--

LOCK TABLES `venprod` WRITE;
/*!40000 ALTER TABLE `venprod` DISABLE KEYS */;
/*!40000 ALTER TABLE `venprod` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-21 19:52:10
