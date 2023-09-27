-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: smartfactory
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `custid` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custname` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addr` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth` date DEFAULT NULL,
  PRIMARY KEY (`custid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('bunny','강해린','대한민국 서울','01012341234','2000-02-23'),('hello','이지민','대한민국 포항','01022221234','1999-08-08'),('imminji01','강민지','영국 런던','01060001000','1995-01-11'),('jjjeee','홍은정','대한민국 서울','01099991111','2004-08-17'),('jy9987','강지연','일본 삿포로','01012312323','1996-09-01'),('kiwi','최지수','미국 뉴욕','01050005000','1990-12-25'),('lalala','홍지수','미국 로스앤젤레스','01010109090','2007-05-16'),('minjipark','박민지','프랑스 파리','01088776655','1998-04-08'),('wow123','이민혁','일본 삿포로','01011223344','1994-05-31');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promotion` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT 'x',
  `interest` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_customer`
--

DROP TABLE IF EXISTS `new_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_customer` (
  `custid` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custname` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addr` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth` date DEFAULT NULL,
  PRIMARY KEY (`custid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_customer`
--

LOCK TABLES `new_customer` WRITE;
/*!40000 ALTER TABLE `new_customer` DISABLE KEYS */;
INSERT INTO `new_customer` VALUES ('apple','이사과','대한민국 포항','01012344321','1992-06-17'),('kiwi','김키위','대한민국 서울','01012341234','1990-03-17');
/*!40000 ALTER TABLE `new_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_orders`
--

DROP TABLE IF EXISTS `new_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_orders` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `custid` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodname` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `amount` smallint NOT NULL,
  PRIMARY KEY (`orderid`),
  KEY `custid` (`custid`),
  CONSTRAINT `new_orders_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `new_customer` (`custid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_orders`
--

LOCK TABLES `new_orders` WRITE;
/*!40000 ALTER TABLE `new_orders` DISABLE KEYS */;
INSERT INTO `new_orders` VALUES (1,'kiwi','프링글스',3000,5),(2,'apple','프링글스',3000,1),(3,'kiwi','홈런볼',2000,3);
/*!40000 ALTER TABLE `new_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_user`
--

DROP TABLE IF EXISTS `new_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_user` (
  `id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date NOT NULL,
  `age` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_user`
--

LOCK TABLES `new_user` WRITE;
/*!40000 ALTER TABLE `new_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `custid` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodname` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `amount` smallint NOT NULL,
  PRIMARY KEY (`orderid`),
  KEY `custid` (`custid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'jy9987','프링글스',3500,2),(2,'kiwi','새우깡',1200,1),(3,'hello','홈런볼',4200,2),(4,'minjipark','맛동산',2400,1),(5,'bunny','오감자',1500,4),(6,'jjjeee','양파링',2000,1),(7,'hello','자갈치',1300,2),(8,'jjjeee','감자깡',1200,4),(9,'bunny','죠리퐁',1500,3),(10,'kiwi','꼬깔콘',1700,2),(11,'hello','버터링',4000,2),(12,'minjipark','칙촉',4000,1),(13,'wow123','콘초',1700,3),(14,'imminji01','꼬북칩',2000,2),(15,'bunny','썬칩',1800,5),(16,'kiwi','고구마깡',1300,3),(17,'jy9987','오징어집',1700,5),(18,'jjjeee','바나나킥',2000,4),(19,'imminji01','초코파이',5000,2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_number` int unsigned NOT NULL AUTO_INCREMENT,
  `student_name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sutdent_phone` char(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`student_number`),
  UNIQUE KEY `student number_UNIQUE` (`student_number`),
  UNIQUE KEY `sutdent phone_UNIQUE` (`sutdent_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=20183766 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (20171234,'홍길동','010-1234-5678','서울특별시 구로구 1길 1','서울특별시','0123456'),(20175678,'성춘향','010-9876-2341','충청남도 천안시 동남구 2길 2','충청남도 천안시','1357901'),(20183765,'고길동','010-2834-2984','서울특별시 강남구 3길 3','서울특별시','0246802');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date NOT NULL,
  `age` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('dvadva','k3f3ah','송하나','F','1994-06-03',22),('hanjo','jk48fn4','한조','M','1984-10-18',39),('hong1234','8o4bkg','홍길동','M','1990-01-31',33),('jungkrat','4ifha7f','정크랫','M','1975-11-11',24),('power70','qxur8sda','변사또','M','1970-05-02',53),('sexysung','87awjkdf','성춘향','F','1992-03-31',31),('widowmaker','38ewifh3','위도우',NULL,'1986-06-27',47);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-27 15:59:37
