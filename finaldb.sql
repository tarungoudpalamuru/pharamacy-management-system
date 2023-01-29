/*
SQLyog - Free MySQL GUI v5.13
Host - 5.0.22-community-nt : Database - pharmacy
*********************************************************************
Server version : 5.0.22-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `pharmacy`;

USE `pharmacy`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert into `admin` (`username`,`password`) values ('admin','admin');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `username` varchar(50) default NULL,
  `emailid` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `mobileno` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `otp1` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert into `customer` (`username`,`emailid`,`password`,`mobileno`,`address`,`otp1`) values ('prabu','karunyaanu1997@gmail.com','1234567','9025725656','chennai','KYBaVx'),('sandhiya','santhiya.cs20@gmail.com','123456','9876543212','chennai','037T');

/*Table structure for table `fedbk` */

DROP TABLE IF EXISTS `fedbk`;

CREATE TABLE `fedbk` (
  `sno` int(10) NOT NULL auto_increment,
  `cname` varchar(100) default NULL,
  `shopnm` varchar(100) default NULL,
  `fedbk` varchar(500) default NULL,
  PRIMARY KEY  (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fedbk` */

insert into `fedbk` (`sno`,`cname`,`shopnm`,`fedbk`) values (1,'anbu','apollo','             \r\n         wrwerwerew'),(2,'anbu','apollo','    adasdasdasd         \r\n         ');

/*Table structure for table `medicine` */

DROP TABLE IF EXISTS `medicine`;

CREATE TABLE `medicine` (
  `sno` int(10) NOT NULL auto_increment,
  `drugcomposition` varchar(50) default NULL,
  `pharmacyname` varchar(50) default NULL,
  `amount` varchar(50) default NULL,
  `quantity` varchar(50) default NULL,
  `brand` varchar(50) default NULL,
  `dosage` varchar(50) default NULL,
  `symptom` varchar(50) default NULL,
  `expirydate` varchar(50) default NULL,
  `location` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  `status` varchar(100) default 'Pending',
  PRIMARY KEY  (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `medicine` */

insert into `medicine` (`sno`,`drugcomposition`,`pharmacyname`,`amount`,`quantity`,`brand`,`dosage`,`symptom`,`expirydate`,`location`,`mobile`,`status`) values (1,'paracetamol','apollo','14','20','ipca labs','250mg','fever','may 2020','chennai','8989898989','Approved'),(2,'medfest','apollo','20','15','ipca labs','500mg','sugar','jan 2020','tondairpet','9876543234','Approved');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `sno` int(10) NOT NULL auto_increment,
  `cusnm` varchar(100) default NULL,
  `mednm` varchar(100) default NULL,
  `brandnm` varchar(100) default NULL,
  `amount` varchar(100) default NULL,
  `quantity` varchar(100) default NULL,
  `uaccno` varchar(100) default NULL,
  `ucvvno` varchar(10) default NULL,
  `tamnt` varchar(100) default NULL,
  PRIMARY KEY  (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert into `payment` (`sno`,`cusnm`,`mednm`,`brandnm`,`amount`,`quantity`,`uaccno`,`ucvvno`,`tamnt`) values (1,'prabu','paracetamol','ipca labs','14','10',NULL,NULL,NULL),(2,'prabu','paracetamol','ipca labs','14','10','12345678901','123','140'),(3,'prabu','paracetamol','ipca labs','14','2','1234567890','1234','28'),(4,'prabu','paracetamol','ipca labs','14','5','12','2345','70'),(5,'prabu','medfest','ipca labs','20','5','1234567890','2345','100'),(6,'sandhiya','paracetamol','ipca labs','14','7','1234567890','3456','98'),(7,'sandhiya','paracetamol','ipca labs','14','9','13243545','123','126'),(8,'sandhiya','paracetamol','ipca labs','14','9','1234567890','1234','126'),(9,'sandhiya','paracetamol','ipca labs','14','9','12347689790','2365','126');

/*Table structure for table `pharmacyowner` */

DROP TABLE IF EXISTS `pharmacyowner`;

CREATE TABLE `pharmacyowner` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `emailid` varchar(50) default NULL,
  `mobileno` varchar(50) default NULL,
  `shopname` varchar(50) default NULL,
  `address` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pharmacyowner` */

insert into `pharmacyowner` (`username`,`password`,`emailid`,`mobileno`,`shopname`,`address`) values ('anbu','gdsgfgnh','priya@gmail.com','9025725656','apollo','chennai'),('prabu','12345678','priya@gmail.com','9876543212','apollo','chennai');

SET SQL_MODE=@OLD_SQL_MODE;