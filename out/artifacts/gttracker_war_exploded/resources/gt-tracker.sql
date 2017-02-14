CREATE DATABASE  IF NOT EXISTS `gt_tracker` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gt_tracker`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: gt_tracker
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `customers`
--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `primary_email` varchar(45) DEFAULT NULL,
  `status`  varchar(25) DEFAULT NULL,
  `disposition` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

-- LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;

INSERT INTO `customers` VALUES 
	(1,'David','Adams','david@gmail.com','active', 'happy'),
	(2,'John','Doe','john@gmail.com', 'active','happy'),
	(3,'Ajay','Rao','ajay@gmail.com', 'active','happy'),
	(4,'Mary','Public','mary@gmail.com', 'active','happy'),
	(5,'Maxwell','Dixon','max@gmail.com', 'active','happy');

/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_sku` varchar(45) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `brand_name` varchar(45) DEFAULT NULL,
  `model_number` varchar(30) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` DECIMAL(7,2) DEFAULT NULL,
  `imagename` varchar(50) DEFAULT NULL,
  `status`  varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

-- LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` VALUES 
	(1,'CoolProd1','The Cool Product','Acme', 'XT2000', 'The Coolest Product Ever!', 'Necessity', '2',120.00, '','active'),
	(2,'HotNess','The New Hotness','Apple', 'IHot', 'The Hotest Product Ever!', 'Luxury', '100', 23.30, '','active'),
	(3,'MOI','The Mother Of Inventions','Sony', 'PL120', 'The Mother of all Mothers', '', '40',25.99, '','active'),
	(4,'Cannon','The Cannon for blowing stuff up','Acme', 'BSU1', 'A very destructive product', 'War', '2', 13.98, 'Cannon.png','active');

/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- DROP TABLE IF EXISTS `product_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_code` varchar(20) DEFAULT NULL,
  `feature1` varchar(255) DEFAULT NULL,
  `feature2` varchar(255) DEFAULT NULL,
  `feature3` varchar(255) DEFAULT NULL,
  `feature4` varchar(255) DEFAULT NULL,
  `feature5` varchar(255) DEFAULT NULL,
  `feature6` varchar(255) DEFAULT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

-- LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `product_features` DISABLE KEYS */;

INSERT INTO `product_features` VALUES
	(1,'100','Hot', 'Cold', 'Warm', 'Tepid','Cool','Smoking'),
	(2,'101','Red', 'Blue','Green', 'Yellow','Purple','Black');

/*!40000 ALTER TABLE `product_features` ENABLE KEYS */;


DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_sess` varchar(50) DEFAULT NULL,
  `cart_itemcode` varchar(20) DEFAULT NULL,
  `cart_quantity` int DEFAULT NULL,
  `cart_item_name` varchar(100) DEFAULT NULL,
  `cart_price` DECIMAL(7,2) DEFAULT NULL,
  `status`  varchar(25) DEFAULT NULL, 
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

-- LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;

INSERT INTO `cart` VALUES 
	(1,'193492',8,'3', '1st Cart',100.00,'active'),
	(2,'4948938',9,'5','2nd Cart',200.00,'active'),
	(3,'5959684',10,'1','3rd Cart',9.99,'active'),
	(4,'58-8902A',11,'2','4th Cart',50.00,'active');

/*!40000 ALTER TABLE `cart` ENABLE KEYS */;




DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` int DEFAULT NULL,
  `order_date` DATETIME DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `shipping_address_line_1` varchar(255) DEFAULT NULL,
  `shipping_address_line_2` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(50) DEFAULT NULL,
  `shipping_state` varchar(50) DEFAULT NULL,
  `shipping_country` varchar(50) DEFAULT NULL,
  `shipping_zipcode` varchar(15) DEFAULT NULL,
  `status`  varchar(25) DEFAULT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

-- LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` VALUES 
	(1,'1','2017-04-21','david@gmail.com','David Adams','123 Main','Suite 199','Denver','CO','USA','80021','active'),
	(3,'3','2017-02-10','ajay@gmail.com','Ajay Rao','6533 Dustin Rd.','Apt 2','Broomfield','CO','USA','80220','active'),
	(4,'5','2017-01-11','mary@gmail.com','Mary Public','5 Catfish Blvd.','Suite 100','Westminster','CO','USA','80031-2215','active');

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` int DEFAULT NULL,
  `item_code` varchar(20) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` DECIMAL(7,2) DEFAULT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

-- LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;

INSERT INTO `order_details` VALUES 
	(1,'493934','Code44','Cool Item',2,34.99),
	(3,'58989','Code1','The Item',3,22.45),
	(4,'67433','Code99','Another Item',4,8.45);

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;



DROP TABLE IF EXISTS `payment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(20) DEFAULT NULL,
  `name_on_card` varchar(30) DEFAULT NULL,
  `card_number` varchar(20) DEFAULT NULL,
  `expriration_date` DATETIME DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_details`
--

-- LOCK TABLES `payment_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;

INSERT INTO `payment_details` VALUES 
	(1,'Visa','David Adams','4444-2121-2222-4441','2019-10-20','active'),
	(3,'MasterCard','John Doe','5212-4444-2222-2222','2018-04-03','active'),
	(4,'Diners Club','Ajay Rao','5550-3333-2222-3333','2017-05-24','active');

/*!40000 ALTER TABLE `payment_details` ENABLE KEYS */;


-- UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-24 21:50:59
