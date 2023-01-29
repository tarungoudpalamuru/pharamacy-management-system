/*
SQLyog Ultimate v9.20 
MySQL - 5.0.22-community-nt : Database - pharmacy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pharmacy` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pharmacy`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('admin','admin');

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

insert  into `customer`(`username`,`emailid`,`password`,`mobileno`,`address`,`otp1`) values ('prabu','chennai.java@pantechmail.com','1234567','9025725656','chennai','hevJMD');

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

insert  into `fedbk`(`sno`,`cname`,`shopnm`,`fedbk`) values (1,'anbu','applo','             \r\n         wrwerwerew'),(2,'anbu','applo','    adasdasdasd         \r\n         ');

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

insert  into `medicine`(`sno`,`drugcomposition`,`pharmacyname`,`amount`,`quantity`,`brand`,`dosage`,`symptom`,`expirydate`,`location`,`mobile`,`status`) values (1,'para','apollo','14','200g','ipca labs','250mg','fever','may 2018','chennai','8989898989','Approved'),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pending');

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

insert  into `payment`(`sno`,`cusnm`,`mednm`,`brandnm`,`amount`,`quantity`,`uaccno`,`ucvvno`,`tamnt`) values (1,'prabu','paracetamal','ipca labs','14','10',NULL,NULL,NULL),(2,'prabu','paracetamal','ipca labs','14','10','12345678901','123','140');

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

insert  into `pharmacyowner`(`username`,`password`,`emailid`,`mobileno`,`shopname`,`address`) values ('anbu','gdsgfgnh','priya@gmail.com','9025725656','apollo','chennai'),('prabu','12345678','priya@gmail.com','9876543212','apollo','chennai');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
