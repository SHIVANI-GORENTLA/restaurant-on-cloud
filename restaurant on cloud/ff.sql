/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.67-community-nt : Database - hotel_order
*********************************************************************
Server version : 5.0.67-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `hotel_order`;

USE `hotel_order`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(70) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='details of all categoried';

/*Data for the table `category` */

insert  into `category`(`id`,`name`) values (1,'Starters'),(2,'BreakFast'),(3,'Lunch'),(4,'Snacks and Drinks'),(5,'pizza');

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `category_id` int(10) unsigned NOT NULL default '0',
  `name` varchar(45) NOT NULL default '',
  `qnt` int(10) unsigned NOT NULL default '0',
  `cost` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COMMENT='item detail';

/*Data for the table `item` */

insert  into `item`(`id`,`category_id`,`name`,`qnt`,`cost`) values (1,1,'Papad',1,'20'),(2,1,'Soup',1,'50'),(3,2,'Omlette',2,'100'),(4,3,'Biryani',1,'80'),(5,5,'veg',1,'200'),(6,3,'white rice',20,'100'),(7,2,'idly',20,'10'),(8,1,'chilly',30,'1');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_name` varchar(45) NOT NULL default '',
  `pass` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`user_name`,`pass`) values (1,'cook','cook'),(2,'1','table1'),(3,'2','table2'),(4,'3','table3'),(5,'4','table4'),(6,'5','table5');

/*Table structure for table `order_details` */

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `order_id` int(10) unsigned NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `qnt` int(10) unsigned NOT NULL default '0',
  `status` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `order_details` */

insert  into `order_details`(`id`,`order_id`,`item_id`,`qnt`,`status`) values (13,13,1,6,'STARTED'),(14,14,2,23,'STARTED'),(15,15,3,2,'STARTED'),(16,16,1,1,'IN_PROCESS'),(17,17,2,3,'COOKED'),(18,17,2,3,'COOKED'),(19,18,2,1,'STARTED'),(20,18,2,1,'STARTED'),(21,19,1,1,'STARTED'),(23,21,5,1,'STARTED'),(24,22,6,0,'STARTED'),(25,23,8,1,'STARTED'),(26,24,5,2,'STARTED'),(27,25,5,2,'STARTED'),(28,26,5,2,'STARTED');

/*Table structure for table `order_master` */

DROP TABLE IF EXISTS `order_master`;

CREATE TABLE `order_master` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `table_no` int(10) unsigned NOT NULL default '0',
  `name` varchar(20) NOT NULL default '',
  `order_date` date NOT NULL default '0000-00-00',
  `order_time` time NOT NULL default '00:00:00',
  `status` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `order_master` */

insert  into `order_master`(`id`,`table_no`,`name`,`order_date`,`order_time`,`status`) values (13,1,'11','2018-11-07','11:04:29','IN_PROCESS'),(14,1,'23','2018-11-07','11:04:57','COOKED'),(15,1,'NOW!','2018-11-07','16:55:48','JUST_ORDERED'),(16,1,'1','2018-11-08','15:40:55','IN_PROCESS'),(17,1,'Starterss!','2018-11-08','16:30:18','JUST_ORDERED'),(18,1,'1','2018-11-08','16:30:57','JUST_ORDERED'),(19,1,'1','2018-11-08','16:31:12','JUST_ORDERED'),(23,1,'chilly','2022-12-05','21:31:06','DELIVERED'),(24,1,'pizza','2022-12-05','21:35:05','JUST_ORDERED'),(25,2,'pizza','2022-12-05','21:35:48','JUST_ORDERED'),(26,1,'veg','2022-12-05','21:38:39','JUST_ORDERED');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
