-- MySQL dump 10.16  Distrib 10.1.44-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: abcbank
-- ------------------------------------------------------
-- Server version	10.1.44-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `Account_Id` varchar(50) NOT NULL,
  `Account_name` varchar(45) NOT NULL,
  `account_address` varchar(100) NOT NULL,
  `account_status` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile_number` varchar(55) NOT NULL,
  `account_type` varchar(45) NOT NULL,
  `date_open` datetime NOT NULL,
  `date_closed` datetime NOT NULL,
  PRIMARY KEY (`Account_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('1','testuser','testuseraddress','inactive','test@123','56789045','checking','2011-12-12 00:00:00','2020-11-11 00:00:00'),('2','testuse2_put','testuseraddress2','inactive','test@12.com','5678902','checking','2012-12-12 00:00:00','2021-11-11 00:00:00'),('3','testuse2_put3','testuseraddress3','inactive','test@123.com','56789023','checking','2013-12-12 00:00:00','2023-11-11 00:00:00'),('4','testuse2_put4','testuseraddress4','active','test@1234.com','567890234','checking','2014-12-12 00:00:00','2024-11-11 00:00:00');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_transaction`
--

DROP TABLE IF EXISTS `account_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_transaction` (
  `account_id` int(11) NOT NULL,
  `transaction_number` varchar(45) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `transaction_account` varchar(45) NOT NULL,
  `transaction_type` varchar(45) NOT NULL,
  `loan_id` varchar(45) NOT NULL,
  `payee_id` varchar(45) NOT NULL,
  `account_balence` varchar(45) NOT NULL,
  PRIMARY KEY (`account_id`,`transaction_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_transaction`
--

LOCK TABLES `account_transaction` WRITE;
/*!40000 ALTER TABLE `account_transaction` DISABLE KEYS */;
INSERT INTO `account_transaction` VALUES (1,'1','2010-11-11 00:00:00','1000','deposit','1','1',''),(2,'2','2012-11-11 00:00:00','2000','deposit','2','2','');
/*!40000 ALTER TABLE `account_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_payee`
--

DROP TABLE IF EXISTS `bill_payee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_payee` (
  `payee_Id` varchar(20) NOT NULL,
  `user_id` int(15) NOT NULL,
  `payee_account_number` varchar(50) NOT NULL,
  `payee_Address` varchar(100) NOT NULL,
  `payee_phone` varchar(50) NOT NULL,
  PRIMARY KEY (`payee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_payee`
--

LOCK TABLES `bill_payee` WRITE;
/*!40000 ALTER TABLE `bill_payee` DISABLE KEYS */;
INSERT INTO `bill_payee` VALUES ('1',1,'123','121,abc colony','5467899'),('2',2,'222','222,abc colony','22222');
/*!40000 ALTER TABLE `bill_payee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan` (
  `loan_id` varchar(45) NOT NULL,
  `loan_type` varchar(45) NOT NULL,
  `loan_amount` varchar(45) NOT NULL,
  `user_id` int(15) NOT NULL,
  `account_id` varchar(45) NOT NULL,
  `loan_open_date` datetime NOT NULL,
  `loan_status` varchar(45) NOT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES ('1','house','1000',1,'1','2011-01-01 00:00:00','approved'),('2','car','2000',2,'2','2012-01-11 00:00:00','approved');
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'srujana','vuppala','srujana42@gmail.com','31','27sru442',''),(3,'test3','lase3','test3@gmail.com','33451','27sr3','testmiddle'),(5,'srujana2','vp2','sru2123.com','325667','12345','test');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_account` (
  `user_id` varchar(50) NOT NULL,
  `account_Id` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`,`account_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES ('1','1');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-20 18:47:13
