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


-- The entity is the album/movie/product created --

DROP TABLE IF EXISTS `entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity` (
  `entiy_id` int(11) NOT NULL AUTO_INCREMENT,
  `performer` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `time` time default NULL,
  `genre` varchar(100) default NULL,
  `year` year(4) default NULL,
  `stars` double default NULL,
  `vote` int(6) default NULL,
  `publisher` varchar(255) default NULL,
  `status` varchar(25) DEFAULT NULL,
   PRIMARY KEY (`entiy_id`),
   UNIQUE KEY `id` (`entiy_id`),
   KEY `artist` (`performer`),
   KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity`
--

-- LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `entity` DISABLE KEYS */;

INSERT INTO `entity` VALUES 
  (1,'Beatles','The White Album','3:43','Rock','1967','4.3', 'yes','Apple Music','verified'),
  (2,'Tom Petty','The Black Album', '33:51','Rock','1973','4.1', 'yes','Apple Music','verified'),
  (3,'Cameo','Strange', '40:43','RnB','1977','5.0','yes','Chocolate City','verified');

/*!40000 ALTER TABLE `artist` ENABLE KEYS */;


-- This would be the primary person on the entity created --

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_or_group_name` varchar(50) DEFAULT NULL,
  `group_members` varchar(30) DEFAULT NULL,
  `corporate_entity` varchar(20) DEFAULT NULL,
  -- body_of_work is discograpy --
  `body_of_work` varchar(120) DEFAULT NULL,
  `notes` varchar (255) DEFAULT NULL,
  `aka` varchar(50),
  `status` varchar(25) DEFAULT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

-- LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;

INSERT INTO `artist` VALUES 
  (1,'John Doe','David Adams, Mickey Mouse','RCA','Album1, Album2','Cool Note', 'JD', 'verified'),
  (2,'John Legend','Fred F, Mickey Mouse','Sony','Album1, Album2','Note 1', 'JohnL', 'in-process'),
  (3,'John Moe','Humpty, Donald Duck','Paramount','Album1, Album2','A Note', 'JMoe', 'new');

/*!40000 ALTER TABLE `artist` ENABLE KEYS */;



--
-- Table structure for table `entity_artist_xref`
--

/*!40000 ALTER TABLE `entity_artist_xref` ENABLE KEYS */;


-- This would be the primary person on the entity created --

DROP TABLE IF EXISTS `entity_artist_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_artist_xref` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `performers_id` int(11) NOT NULL,
  KEY `album_id_2` (`entiy_id`, `performers_id`)  
  ) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_artist_xref`
--

-- LOCK TABLES `entity_artist_xref` WRITE;
/*!40000 ALTER TABLE `entity_artist_xref` DISABLE KEYS */;

INSERT INTO `entity_artist_xref` VALUES 
  (1,2),
  (2,3),
  (3,3);

/*!40000 ALTER TABLE `entity_artist_xref` ENABLE KEYS */;




-- This would be the musicians/actors table people who performed on product -- 

DROP TABLE IF EXISTS `performers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performers` (
  `performers_id` int(11) NOT NULL AUTO_INCREMENT,
  `performer_name` varchar(200) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
   PRIMARY KEY (`performers_id`),
   KEY  `performer_name`(`performer_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performers`
--

-- LOCK TABLES `performers` WRITE;
/*!40000 ALTER TABLE `performers` DISABLE KEYS */;

INSERT INTO `performers` VALUES 
  (1,'William Shakespeare','verified'),
  (2,'William Shatner', 'in-process'),
  (3,'Tony Bennet','new');

/*!40000 ALTER TABLE `artist` ENABLE KEYS */;

-- This would be the cover art or movie poster -- 

DROP TABLE IF EXISTS `artwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artwork` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` longblob NOT NULL,
  `mime` varchar(15) DEFAULT NULL,
  `pg` int(1) NOT NULL DEFAULT '1',
   PRIMARY KEY (`entity_id`)
   ) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artwork`
--

-- LOCK TABLES `artwork` WRITE;
/*!40000 ALTER TABLE `artwork` DISABLE KEYS */;
INSERT INTO `artwork` VALUES 
  (1,'SpongebobPic','jpg', 'pg'),
  (2,'NakedPic', 'png', 'pg'),
  (3,'MommyPic','bmp', 'pg');

/*!40000 ALTER TABLE `artwork` ENABLE KEYS */;



--
-- Table structure for table `instruments`
--

/*!40000 ALTER TABLE `instruments` ENABLE KEYS */;


-- This would be the instruments on the entity created --

DROP TABLE IF EXISTS `instruments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instruments` (
  `instruments_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`instruments_id`),
  UNIQUE KEY `instruments_id` (`instruments_id`)  
  ) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instruments`
--

-- LOCK TABLES `instruments` WRITE;
/*!40000 ALTER TABLE `entity_artist_xref` DISABLE KEYS */;

INSERT INTO `instruments` VALUES 
  (1,'Tuba'),
  (2,'Bass'),
  (3,'Guitar');

/*!40000 ALTER TABLE `instruments` ENABLE KEYS */;



--
-- Table structure for table `nexus`
--

/*!40000 ALTER TABLE `nexut` ENABLE KEYS */;


-- This would be the primary person on the entity created --

DROP TABLE IF EXISTS `nexus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nexus` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `performers_id` int(11) NOT NULL,
  `instruments_id` int(6) DEFAULT NULL,
  KEY `entity_id` (`entiy_id`, `performers_id`)  
  ) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nexus`
--

-- LOCK TABLES `nexus` WRITE;
/*!40000 ALTER TABLE `nexus` DISABLE KEYS */;

INSERT INTO `nexus` VALUES 
  (1,2),
  (2,3),
  (3,3);

/*!40000 ALTER TABLE `nexus` ENABLE KEYS */;



/*!40000 ALTER TABLE `shelf` ENABLE KEYS */;


-- This would be a holding area like a cart i think --

DROP TABLE IF EXISTS `shelf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shelf` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `storage` varchar(128) DEFAULT NULL,
  `quality` varchar(32) DEFAULT NULL,
  `format` varchar(32) DEFAULT NULL,
  `comment` varchar(25) DEFAULT NULL,
   KEY `entity_id` (`entity_id`, `user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelf`
--

-- LOCK TABLES `shelf` WRITE;
/*!40000 ALTER TABLE `shelf` DISABLE KEYS */;

INSERT INTO `shelf` VALUES 
  (1,1,'200Mb','High','Disk','Cool Comment'),
  (2,3,'100Mb','Low','Tape','Nice Comment'),
  (3,4,'300Mb','Med','BluRay','Bad Comment');

/*!40000 ALTER TABLE `shelf` ENABLE KEYS */;





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
