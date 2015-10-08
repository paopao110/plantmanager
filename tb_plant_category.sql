﻿# Host: 192.168.132.214  (Version: 5.5.24-log)
# Date: 2015-10-08 16:43:17
# Generator: MySQL-Front 5.3  (Build 4.211)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "tb_plant_category"
#

DROP TABLE IF EXISTS `tb_plant_category`;
CREATE TABLE `tb_plant_category` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` varchar(40) NOT NULL DEFAULT '',
  `categorylevel` int(11) NOT NULL DEFAULT '0',
  `categoryname` varchar(255) NOT NULL DEFAULT '',
  `_parentId` int(11) DEFAULT '0',
  PRIMARY KEY (`orderid`,`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='植物类别';

#
# Data for table "tb_plant_category"
#

INSERT INTO `tb_plant_category` VALUES (1,'A-00001',0,'爵床科',0),(2,'A-00002',0,'槭树科',0),(3,'A-00003',0,'猕猴桃科',0),(4,'A-00004',0,'五福花科',0),(5,'A-00005',0,'番杏科',0),(6,'A-00006',0,'八角枫科',0),(7,'A-00007',0,'泽泻科',0),(8,'A-00008',0,'苋科',0),(9,'A-00009',0,'石蒜科',0),(10,'A-00010',0,'漆树科',0),(11,'A-00011',0,'钩枝藤科',0),(12,'A-00012',0,'番荔枝科',0),(13,'A-00013',0,'夹竹桃科',0),(14,'A-00014',0,'水蕹科',0),(15,'A-00015',0,'冬青科',0),(16,'A-00016',0,'天南星科',0),(17,'A-00017',0,'五加科',0),(18,'A-00018',0,'南洋杉科',0),(19,'A-00019',0,'马兜铃科',0),(20,'A-00020',0,'萝藦科',0),(21,'B-00001',0,'蛇菰科',0),(22,'B-00002',0,'凤仙花科',0),(23,'B-00003',0,'落葵科',0),(24,'B-00004',0,'秋海棠科',0),(25,'B-00005',0,'小檗科',0),(26,'B-00006',0,'桦木科',0),(27,'B-00007',0,'紫葳科',0),(28,'B-00008',0,'红木科',0),(29,'B-00009',0,'木棉科',0),(30,'B-00010',0,'紫草科',0),(31,'B-00011',0,'伯乐树科',0),(32,'B-00012',0,'凤梨科',0),(33,'B-00013',0,'水玉簪科',0),(34,'B-00014',0,'橄榄科',0),(35,'B-00015',0,'花蔺科',0),(36,'B-00016',0,'黄杨科',0),(37,'C-00001',0,'莼菜科',0),(38,'C-00002',0,'仙人掌科',0),(39,'C-00003',0,'水马齿科',0),(40,'C-00004',0,'蜡梅科',0),(41,'C-00005',0,'桔梗科',0),(42,'C-00006',0,'大麻科',0),(43,'C-00007',0,'美人蕉科',0),(44,'C-00008',0,'忍冬科',0),(45,'C-00009',0,'番木瓜科',0),(46,'C-00010',0,'石竹科',0),(47,'C-00011',0,'木麻黄科',0),(48,'C-00012',0,'卫矛科',0),(49,'C-00013',0,'刺鳞草科',0),(50,'C-00014',0,'三尖杉科',0),(51,'C-00015',0,'金鱼藻科',0),(52,'C-00016',0,'连香树科',0),(53,'C-00017',0,'藜科',0),(54,'C-00018',0,'金粟兰科',0),(55,'C-00019',0,'半日花科',0),(56,'C-00020',0,'桤叶树科',0),(57,'C-00021',0,'使君子科',0),(58,'C-00022',0,'鸭跖草科',0),(59,'C-00023',0,'菊科',0),(60,'C-00024',0,'牛栓藤科',0),(61,'C-00025',0,'旋花科',0),(62,'C-00026',0,'马桑科',0),(63,'C-00027',0,'山茱萸科',0),(64,'C-00028',0,'景天科',0),(65,'C-00029',0,'隐翼科',0),(66,'C-00030',0,'葫芦科',0),(67,'C-00031',0,'柏科',0),(68,'C-00032',0,'苏铁科',0),(69,'C-00033',0,'锁阳科',0),(70,'C-00034',0,'莎草科',0),(71,'D-00001',0,'虎皮楠科',0),(72,'D-00002',0,'岩梅科',0),(73,'D-00003',0,'毒鼠子科',0),(74,'D-00004',0,'五桠果科',0),(75,'D-00005',0,'薯蓣科',0),(76,'D-00006',0,'川续断科',0),(77,'D-00007',0,'龙脑香科',0),(78,'D-00008',0,'茅膏菜科',0),(79,'E-00001',0,'柿科',0),(80,'E-00002',0,'胡颓子科',0),(81,'E-00003',0,'杜英科',0),(82,'E-00004',0,'沟繁缕科',0),(83,'E-00005',0,'岩高兰科',0),(84,'E-00006',0,'麻黄科',0),(85,'E-00007',0,'杜鹃花科',0),(86,'E-00008',0,'谷精草科',0),(87,'E-00009',0,'古柯科',0),(88,'E-00010',0,'杜仲科',0),(89,'E-00011',0,'大戟科',0),(90,'E-00012',0,'领春木科',0),(91,'F-00001',0,'壳斗科',0),(92,'F-00002',0,'大风子科',0),(93,'F-00003',0,'须叶藤科',0),(94,'F-00004',0,'瓣鳞花科',0),(95,'G-00001',0,'龙胆科',0),(96,'G-00002',0,'牻牛儿苗科',0),(97,'G-00003',0,'苦苣苔科',0),(98,'G-00004',0,'银杏科',0),(99,'G-00005',0,'买麻藤科',0),(100,'G-00006',0,'草海桐科',0),(101,'G-00006',0,'禾本科',0),(102,'G-00007',0,'藤黄科',0),(103,'H-00001',0,'小二仙草科',0),(104,'H-00002',0,'金缕梅科',0),(105,'H-00003',0,'莲叶桐科',0),(106,'H-00004',0,'七叶树科',0),(107,'H-00005',0,'翅子藤科',0),(108,'H-00006',0,'杉叶藻科',0),(109,'H-00007',0,'水鳖科',0),(110,'H-00008',0,'田基麻科',0),(111,'I-00001',0,'茶茱萸科',0),(112,'I-00002',0,'鸢尾科',0),(113,'J-00001',0,'胡桃科',0),(114,'J-00002',0,'灯心草科',0),(115,'L-00001',0,'唇形科',0),(116,'L-00002',0,'木通科',0),(117,'L-00003',0,'樟科',0),(118,'L-00004',0,'玉蕊科',0),(119,'L-00005',0,'豆科',0),(120,'L-00006',0,'浮萍科',0),(121,'L-00007',0,'狸藻科',0),(122,'L-00008',0,'百合科',0),(123,'L-00009',0,'亚麻科',0),(124,'L-00010',0,'马钱科',0),(125,'L-00011',0,'桑寄生科',0),(126,'L-00012',0,'千屈菜科',0),(127,'M-00001',0,'木兰科',0),(128,'M-00002',0,'金虎尾科',0),(129,'M-00003',0,'锦葵科',0),(130,'M-00004',0,'竹芋科',0),(131,'M-00005',0,'角胡麻科',0),(132,'M-00006',0,'野牡丹科',0),(133,'M-00007',0,'楝科',0),(134,'M-00008',0,'防己科',0),(135,'M-00009',0,'桑科',0),(136,'M-00010',0,'辣木科',0),(137,'M-00011',0,'芭蕉科',0),(138,'M-00012',0,'苦槛蓝科',0),(139,'M-00013',0,'杨梅科',0),(140,'M-00014',0,'肉豆蔻科',0),(141,'M-00015',0,'紫金牛科',0),(142,'M-00016',0,'桃金娘科',0),(143,'N-00001',0,'茨藻科',0),(144,'N-00002',0,'猪笼草科',0),(145,'N-00003',0,'紫茉莉科',0),(146,'N-00004',0,'睡莲科',0),(147,'N-00005',0,'蓝果树科',0),(148,'O-00001',0,'金莲木科',0),(149,'O-00002',0,'铁青树科',0),(150,'O-00003',0,'木犀科',0),(151,'O-00004',0,'柳叶菜科',0),(152,'O-00005',0,'山柚子科',0),(153,'O-00006',0,'兰科',0),(154,'O-00007',0,'列当科',0),(155,'O-00008',0,'酢浆草科',0),(156,'P-00001',0,'棕榈科',0),(157,'P-00002',0,'攀打科',0),(158,'P-00003',0,'露兜树科',0),(159,'P-00004',0,'罂粟科',0),(160,'P-00005',0,'西番莲科',0),(161,'P-00006',0,'胡麻科',0),(162,'P-00007',0,'五列木科',0),(163,'P-00008',0,'田葱科',0),(164,'P-00009',0,'商陆科',0),(165,'P-00010',0,'松科',0),(166,'P-00011',0,'胡椒科',0),(167,'P-00012',0,'海桐花科',0),(168,'P-00013',0,'车前科',0),(169,'P-00014',0,'悬铃木科',0),(170,'P-00015',0,'白花丹科',0),(171,'P-00016',0,'罗汉松科',0),(172,'P-00017',0,'川苔草科',0),(173,'P-00018',0,'花荵科',0),(174,'P-00019',0,'远志科',0),(175,'P-00020',0,'蓼科',0),(176,'P-00021',0,'雨久花科',0),(177,'P-00022',0,'马齿苋科',0),(178,'P-00023',0,'眼子菜科',0),(179,'P-00024',0,'报春花科',0),(180,'P-00025',0,'山龙眼科',0),(181,'P-00026',0,'石榴科',0),(182,'P-00027',0,'鹿蹄草科',0),(183,'R-00001',0,'大花草科',0),(184,'R-00002',0,'毛茛科',0),(185,'R-00003',0,'木犀草科',0),(186,'R-00004',0,'帚灯草科',0),(187,'R-00005',0,'鼠李科',0),(188,'R-00006',0,'红树科',0),(189,'R-00007',0,'马尾树科',0),(190,'R-00008',0,'蔷薇科',0),(191,'R-00009',0,'茜草科',0),(192,'R-00010',0,'芸香科',0),(193,'S-00001',0,'清风藤科',0),(194,'S-00002',0,'杨柳科',0),(195,'S-00003',0,'刺茉莉科',0),(196,'S-00004',0,'檀香科',0),(197,'S-00005',0,'无患子科',0),(198,'S-00006',0,'山榄科',0),(199,'S-00007',0,'三白草科',0),(200,'S-00008',0,'虎耳草科',0),(201,'S-00009',0,'冰沼草科',0),(202,'S-00010',0,'玄参科',0),(203,'S-00011',0,'苦木科',0),(204,'S-00012',0,'茄科',0),(205,'S-00013',0,'海桑科',0),(206,'S-00014',0,'黑三棱科',0),(207,'S-00015',0,'旌节花科',0),(208,'S-00016',0,'省沽油科',0),(209,'S-00017',0,'百部科',0),(210,'S-00018',0,'梧桐科',0),(211,'S-00019',0,'花柱草科',0),(212,'S-00020',0,'安息香科',0),(213,'S-00021',0,'山矾科',0),(214,'T-00001',0,'蒟蒻薯科',0),(215,'T-00002',0,'柽柳科',0),(216,'T-00003',0,'红豆杉科',0),(217,'T-00004',0,'杉科',0),(218,'T-00005',0,'山茶科',0),(219,'T-00006',0,'假繁缕科',0),(220,'T-00007',0,'瑞香科',0),(221,'T-00008',0,'椴树科',0),(222,'T-00009',0,'菱科',0),(223,'T-00010',0,'霉草科',0),(224,'T-00011',0,'昆栏树科',0),(225,'T-00012',0,'旱金莲科',0),(226,'T-00013',0,'香蒲科',0),(227,'U-00001',0,'榆科',0),(228,'U-00002',0,'伞形科',0),(229,'U-00003',0,'荨麻科',0),(230,'V-00001',0,'败酱科',0),(231,'V-00002',0,'马鞭草科',0),(232,'V-00003',0,'堇菜科',0),(233,'V-00004',0,'葡萄科',0),(234,'X-00001',0,'黄眼草科',0),(235,'Z-00001',0,'姜科',0),(236,'Z-00002',0,'蒺藜科',0),(237,'分类编号237',1,'类别名称1',1),(238,'分类编号238',1,'类别名称1',1),(239,'分类编号239',1,'类别名称5',1),(240,'分类编号240',1,'类别名称3',2),(241,'分类编号241',1,'类别名称7',2),(242,'分类编号242',1,'类别名称6',2),(243,'分类编号243',1,'类别名称5',3),(244,'分类编号244',1,'类别名称6',4),(245,'分类编号245',1,'类别名称9',5);
