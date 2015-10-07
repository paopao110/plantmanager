# SQL-Front 5.1  (Build 4.16)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: plantshow
# ------------------------------------------------------
# Server version 5.5.21

#
# Source for table tb_plant
#

DROP TABLE IF EXISTS `tb_plant`;
CREATE TABLE `tb_plant` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Source for table tb_plant_category
#

DROP TABLE IF EXISTS `tb_plant_category`;
CREATE TABLE `tb_plant_category` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` varchar(40) NOT NULL DEFAULT '',
  `categorylevel` int(11) NOT NULL DEFAULT '0',
  `categoryname` varchar(255) NOT NULL DEFAULT '',
  `_parentId` int(11) DEFAULT '0',
  PRIMARY KEY (`orderid`,`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='植物类别';

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
