-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: pikka
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `locker`
--

DROP TABLE IF EXISTS `locker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locker` (
  `lockerNo` varchar(10) NOT NULL,
  `lockerStatus` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`lockerNo`),
  UNIQUE KEY `lockerNo_UNIQUE` (`lockerNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locker`
--

LOCK TABLES `locker` WRITE;
/*!40000 ALTER TABLE `locker` DISABLE KEYS */;
INSERT INTO `locker` VALUES ('1A',1),('1B',0),('1C',0),('1D',0),('1E',0),('1F',1),('2A',0),('2B',0),('2C',0),('2D',0),('2E',0),('2F',0),('3A',0),('3B',0),('3C',1),('3D',0),('3E',0),('3F',1),('4A',0),('4B',0),('4C',0),('4D',1),('4E',0),('4F',0),('5A',0),('5B',0),('5C',0),('5D',0),('5E',0),('5F',0),('6A',0),('6B',0),('6C',0),('6D',0),('6E',0),('6F',0),('7A',0),('7B',0),('7C',0),('7D',0),('7E',0),('7F',0);
/*!40000 ALTER TABLE `locker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lockerticket`
--

DROP TABLE IF EXISTS `lockerticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lockerticket` (
  `lockerTicketNo` int NOT NULL AUTO_INCREMENT,
  `lockerNo` varchar(10) NOT NULL,
  `userId` varchar(45) NOT NULL,
  `lockerUseDays` int NOT NULL,
  `lockerUsePrice` int NOT NULL,
  `lockerStartDate` date NOT NULL,
  `lockerEndDate` date NOT NULL,
  PRIMARY KEY (`lockerTicketNo`),
  UNIQUE KEY `lockerTicketNo_UNIQUE` (`lockerTicketNo`),
  UNIQUE KEY `userId_UNIQUE` (`userId`),
  UNIQUE KEY `lockerNo_UNIQUE` (`lockerNo`),
  KEY `fk_user_idx` (`userId`),
  KEY `fk_locker_idx` (`lockerNo`),
  CONSTRAINT `fk_locker` FOREIGN KEY (`lockerNo`) REFERENCES `locker` (`lockerNo`),
  CONSTRAINT `fk_user` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lockerticket`
--

LOCK TABLES `lockerticket` WRITE;
/*!40000 ALTER TABLE `lockerticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `lockerticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistent_logins`
--

LOCK TABLES `persistent_logins` WRITE;
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `seatNo` varchar(45) NOT NULL,
  `seatStatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`seatNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES ('1','1'),('10','0'),('11','0'),('12','0'),('13','0'),('14','0'),('15','0'),('16','0'),('17','0'),('18','0'),('19','0'),('2','0'),('20','0'),('21','0'),('22','0'),('23','0'),('24','0'),('25','0'),('3','1'),('4','0'),('5','1'),('6','0'),('7','0'),('8','0'),('9','1');
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seatticket`
--

DROP TABLE IF EXISTS `seatticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seatticket` (
  `seatTicketNo` int NOT NULL AUTO_INCREMENT,
  `seatNo` varchar(45) DEFAULT NULL,
  `userId` varchar(45) DEFAULT NULL,
  `seatType` int DEFAULT NULL,
  `seatPrice` int DEFAULT NULL,
  `seatStartTime` time DEFAULT NULL,
  `seatEndTime` time DEFAULT NULL,
  `seatAvailableTime` time DEFAULT NULL,
  PRIMARY KEY (`seatTicketNo`),
  KEY `fk_seatTicket_user1_idx` (`seatTicketNo`),
  KEY `fk_01_idx` (`seatNo`),
  KEY `fk_02_idx` (`userId`),
  CONSTRAINT `fk_01` FOREIGN KEY (`seatNo`) REFERENCES `seat` (`seatNo`),
  CONSTRAINT `fk_02` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seatticket`
--

LOCK TABLES `seatticket` WRITE;
/*!40000 ALTER TABLE `seatticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `seatticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` varchar(45) NOT NULL,
  `userPw` varchar(100) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `userTel` varchar(13) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userId_UNIQUE` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('178109051','$2a$10$CpdR4cjZLUUFeG9JVSupVeY6jF0ntT3Xyod1oAYoUYOI23WpCX4Eu','신규가입자','01012341234'),('jj123','$2a$10$LN442/JoTLrZr5sUs2TFueQPyPYI2KWj2To/8FXyq9IJpuf5Z00Nu','123','123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth`
--

DROP TABLE IF EXISTS `user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_auth` (
  `userId` varchar(45) NOT NULL,
  `auth` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userId_UNIQUE` (`userId`),
  CONSTRAINT `dd` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth`
--

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` VALUES ('178109051','ROLE_MEMBER'),('jj123','ROLE_MEMBER');
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-10 12:35:16
