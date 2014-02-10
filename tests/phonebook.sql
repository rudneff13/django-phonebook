-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (x86_64)
--
-- Host: 192.168.10.85    Database: ssldjango
-- ------------------------------------------------------
-- Server version	5.5.27-log

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
-- Table structure for table `phonebook_category`
--

DROP TABLE IF EXISTS `phonebook_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phonebook_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_category_id` int(11) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `order_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phonebook_category_6bb36718` (`parent_category_id`),
  KEY `phonebook_category_965c50cb` (`order_time`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phonebook_category`
--

LOCK TABLES `phonebook_category` WRITE;
/*!40000 ALTER TABLE `phonebook_category` DISABLE KEYS */;
INSERT INTO `phonebook_category` VALUES (1,NULL,'物业服务',1,'2014-02-10 15:41:31'),(2,NULL,'搬家快递',1,'2014-02-10 15:41:47'),(3,NULL,'外送外卖',1,'2014-02-10 15:41:56'),(4,1,'开锁',1,'2014-02-10 15:42:07'),(5,1,'维修',1,'2014-02-10 15:42:19'),(6,1,'投诉',1,'2014-02-10 15:42:30'),(7,2,'搬家',1,'2014-02-10 15:42:40'),(8,2,'快递',1,'2014-02-10 15:42:49'),(9,3,'送水',1,'2014-02-10 15:43:01'),(10,3,'送餐',1,'2014-02-10 15:43:11');
/*!40000 ALTER TABLE `phonebook_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phonebook_phonebook`
--

DROP TABLE IF EXISTS `phonebook_phonebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phonebook_phonebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `order_time` datetime NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phonebook_phonebook_42dc49bc` (`category_id`),
  KEY `phonebook_phonebook_965c50cb` (`order_time`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phonebook_phonebook`
--

LOCK TABLES `phonebook_phonebook` WRITE;
/*!40000 ALTER TABLE `phonebook_phonebook` DISABLE KEYS */;
INSERT INTO `phonebook_phonebook` VALUES (1,4,'金方园锁具(全市110联动)',1,'2014-02-10 15:47:18','010-57123459'),(2,4,'速捷胜华锁具(全市110联动)',1,'2014-02-10 15:47:35','4000000811'),(3,4,'亿家开锁(全市110联动)',1,'2014-02-10 15:47:53','010-80639683'),(4,4,'京安开锁(全市110联动)',1,'2014-02-10 15:48:10','13051085200'),(5,4,'诚通锁业(全市110联动)',1,'2014-02-10 15:48:24','010-57152555'),(6,5,'供水报修',1,'2014-02-10 15:48:43','96116'),(7,5,'供电报修',1,'2014-02-10 15:48:58','95598'),(8,5,'供气报修',1,'2014-02-10 15:49:16','96777'),(9,5,'京瑞通下水疏通(全市服务)',1,'2014-02-10 15:50:00','010-68210560'),(10,5,'吉祥好运下水疏通(全市服务)',1,'2014-02-10 15:50:20','13641230060'),(11,5,'优佳下水疏通清洁服务(全市)',1,'2014-02-10 15:50:35','13683583804'),(12,5,'天丰利得下水疏通(全市服务)',1,'2014-02-10 15:50:51','13552165703'),(13,6,'黑中介投诉-市建委24小时热线',1,'2014-02-10 15:51:08','010-59958811'),(14,6,'社区服务热线',1,'2014-02-10 15:51:22','96156'),(15,6,'公安部打黑除恶举报',1,'2014-02-10 15:51:37','010-66264666'),(16,7,'兄弟搬家(小编验真)',1,'2014-02-10 15:51:58','010-81733388'),(17,7,'利康搬家(小编验真)',1,'2014-02-10 15:52:13','4006563699'),(18,7,'中铁快运(跨城搬家首选)',1,'2014-02-10 15:52:30','95572'),(19,7,'彩虹搬家',1,'2014-02-10 15:52:45','010-57116234'),(20,8,'韵达快递',1,'2014-02-10 15:53:02','4008216789'),(21,8,'顺丰快递',1,'2014-02-10 15:53:16','4008111111'),(22,8,'中通快递',1,'2014-02-10 15:53:31','4008270270'),(23,8,'EMS',1,'2014-02-10 15:53:44','11183'),(24,8,'申通快递',1,'2014-02-10 15:54:00','4008895543'),(25,8,'天天快递',1,'2014-02-10 15:54:18','4001888888'),(26,9,'雀巢送水',1,'2014-02-10 15:54:33','4008208898'),(27,9,'依云送水',1,'2014-02-10 15:54:49','4008207006'),(28,9,'乐百氏送水',1,'2014-02-10 15:55:02','4006051684'),(29,9,'屈臣氏送水',1,'2014-02-10 15:55:15','4008896888'),(30,10,'肯德基(24小时)',1,'2014-02-10 15:55:30','4008823823'),(31,10,'麦当劳(24小时)',1,'2014-02-10 15:55:44','4008517517'),(32,10,'必胜客(10:00-22:00)',1,'2014-02-10 15:56:07','4008123123'),(33,10,'真功夫(8:00-20:00)',1,'2014-02-10 15:57:26','4006927927'),(34,10,'嘉禾一品粥(10:00-22:00)',1,'2014-02-10 15:57:39','4001007008'),(35,10,'丽华快餐(10:30-19:30)',1,'2014-02-10 15:57:52','4008800400'),(36,10,'元祖蛋糕(8:00-21:00)',1,'2014-02-10 15:58:07','4001103737'),(37,10,'永和大王(10:00-21:00)',1,'2014-02-10 15:58:20','4000979797'),(38,10,'棒约翰披萨-免费送',1,'2014-02-10 15:58:33','4008107272'),(39,10,'吉野家',1,'2014-02-10 15:58:44','4008197197');
/*!40000 ALTER TABLE `phonebook_phonebook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-10 18:43:37
