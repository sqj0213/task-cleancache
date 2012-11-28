-- MySQL dump 10.11
--
-- Host: localhost    Database: webadmin
-- ------------------------------------------------------
-- Server version	5.1.40-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `influence`
--

DROP TABLE IF EXISTS `influence`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `influence` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `keyValueID` tinyint(4) NOT NULL DEFAULT '0',
  `regTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nodeLevel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `influence`
--

LOCK TABLES `influence` WRITE;
/*!40000 ALTER TABLE `influence` DISABLE KEYS */;
INSERT INTO `influence` VALUES (48,'超级管理员',33,'2008-02-15 09:27:09',0),(51,'普通用户',33,'2008-11-20 08:36:13',0);
/*!40000 ALTER TABLE `influence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyValue`
--

DROP TABLE IF EXISTS `keyValue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `keyValue` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `keyName` varchar(20) NOT NULL DEFAULT '',
  `typeFlag` tinyint(4) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `delFlag` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(20) NOT NULL DEFAULT '',
  `pid` bigint(20) NOT NULL DEFAULT '0',
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `keyValue`
--

LOCK TABLES `keyValue` WRITE;
/*!40000 ALTER TABLE `keyValue` DISABLE KEYS */;
INSERT INTO `keyValue` VALUES (6,'禁用角色',1,1,0,'角色管理用',0,'2007-12-27 04:54:35'),(20,'山西省',4,1,0,'省市名称',0,'2008-01-02 05:07:22'),(21,'内蒙古',4,2,0,'省市名称',0,'2008-01-02 05:09:24'),(22,'北京市',4,3,0,'省市名称',0,'2008-01-02 05:09:50'),(23,'河北省',4,4,0,'省市名称',0,'2008-01-02 05:10:02'),(24,'陕西省',4,5,0,'省市名称',0,'2008-01-02 05:10:20'),(25,'辽宁省',4,6,0,'省市名称',0,'2008-01-02 05:10:34'),(26,'黑龙江',4,7,0,'省市名称',0,'2008-01-02 05:10:54'),(27,'新疆',4,8,0,'省市名称',0,'2008-01-02 05:11:14'),(28,'四川',4,9,0,'省市名称',0,'2008-01-02 05:11:48'),(29,'云南',4,10,0,'省市名称',0,'2008-01-02 05:12:11'),(30,'河南省',4,11,0,'省市名称',0,'2008-01-02 05:12:59'),(33,'正常角色',1,2,0,'用户角色管理',0,'2008-01-03 03:01:26'),(43,'asdasf',2,10,0,'2spersonadminssd',29,'2008-02-18 09:56:28'),(47,'东城区',5,2232,0,'22323',20,'2008-02-18 09:59:47'),(48,'asdsfssaf',22,22,0,'33232',0,'2008-02-29 00:03:13');
/*!40000 ALTER TABLE `keyValue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optlog`
--

DROP TABLE IF EXISTS `optlog`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `optlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `text` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `userID` bigint(20) NOT NULL DEFAULT '0',
  `clubID` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `regTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `optlog`
--

LOCK TABLES `optlog` WRITE;
/*!40000 ALTER TABLE `optlog` DISABLE KEYS */;
INSERT INTO `optlog` VALUES (1,'',',原密码[asdf],登录密码[****],确认密码[****]',18,0,'127.0.0.1','2010-06-22 03:21:47'),(2,'',',原密码[asdf],登录密码[****],确认密码[****]',18,0,'127.0.0.1','2010-06-22 03:21:53'),(3,'',',原密码[asdf],登录密码[****],确认密码[****]',18,0,'127.0.0.1','2010-06-22 03:23:35'),(4,'',',原密码[asdf],登录密码[****],确认密码[****]',18,0,'127.0.0.1','2010-06-22 03:23:50'),(5,'',',原密码[asdf],登录密码[****],确认密码[****]',18,0,'127.0.0.1','2010-06-22 03:24:17'),(6,'',',原密码[asdf],登录密码[****],确认密码[****]',18,0,'127.0.0.1','2010-06-22 03:24:34'),(7,'',',原密码[ASDF],登录密码[****],确认密码[****]',18,0,'127.0.0.1','2010-06-22 03:25:12'),(8,'',',原密码[ASDF],登录密码[****],确认密码[****]',18,0,'127.0.0.1','2010-06-22 03:26:02'),(9,'??????�??????�\0',',原密码[ASDF],登录密码[****],确认密码[****]',18,0,'127.0.0.1','2010-06-22 03:27:08'),(10,'??????�??????�\0',',原密码[asdf],登录密码[****],确认密码[****]',18,0,'127.0.0.1','2010-06-22 03:27:26'),(11,'???????????�??????????????[quanjun@staff.sina.com.cn],????????????�??�???�?????','',18,0,'127.0.0.1','2010-06-22 03:48:19'),(12,'???????????�??????????????[quanjun@staff.sina.com.cn],????????????�??�???�?????','',18,0,'127.0.0.1','2010-06-22 03:48:27'),(13,'???????????�??????????????[quanjun@staff.sina.com.cn],????????????�??�???�?????','',18,0,'127.0.0.1','2010-06-22 03:48:48'),(14,'???????????�??????????????[quanjun@staff.sina.com.cn]','',18,0,'127.0.0.1','2010-06-22 03:49:26'),(15,'???????????�??????????????[quanjun@staff.sina.com.cn]','',18,0,'127.0.0.1','2010-06-22 03:49:33'),(16,'updatePassword','密码修改成功,帐号[quanjun@staff.sina.com.cn]',18,0,'127.0.0.1','2010-06-22 03:50:56'),(17,'???????????�?\0',',角色名称[SD2SADF],角色状态[33]',18,0,'127.0.0.1','2010-06-22 06:10:25'),(18,'??????�???�??�?\0',',角色名称[SD2SADF],角色状态[33]',18,0,'127.0.0.1','2010-06-22 06:22:40'),(19,'??????�???�??�?\0',',角色名称[SD2SADF],角色状态[33]',18,0,'127.0.0.1','2010-06-22 06:23:24'),(20,'?????�????�??�\0',',角色名称[SD2SADF3],角色状态[33]',18,0,'127.0.0.1','2010-06-22 06:23:28'),(21,'??????�???�??�?\0',',角色名称[SD2SADF3],角色状态[33]',18,0,'127.0.0.1','2010-06-22 06:23:30'),(22,'?????�????�??�\0',',角色名称[SD2SADF34],角色状态[33]',18,0,'127.0.0.1','2010-06-22 06:23:35'),(23,'??????�???�??�?\0',',角色名称[SD2SADF34],角色状态[33]',18,0,'127.0.0.1','2010-06-22 06:23:52'),(24,'?????�????�??�\0',',角色名称[SD2SADF34],角色状态[33]',18,0,'127.0.0.1','2010-06-22 06:24:09'),(25,'??????�???�??�?\0',',角色名称[SD2SADF34],角色状态[33]',18,0,'127.0.0.1','2010-06-22 06:24:11'),(26,'?????�????�??�\0',',角色名称[SD2SADF34],角色状态[33]',18,0,'127.0.0.1','2010-06-22 06:34:46'),(27,'???????????????????????????�???�???�?<br><br>?????�?????SD2SADF34<br><br>?????�?????SD2ASDFA<br><br>','',18,0,'127.0.0.1','2010-06-22 06:46:12'),(28,'???????????????????????????�???�???�?<br><br>?????�?????322sdd<br><br>?????�?????sddssd<br><br>','',18,0,'127.0.0.1','2010-06-22 06:46:19'),(29,'???????????????????????????�???�???�?<br><br>?????�?????ASDF<br><br>','',18,0,'127.0.0.1','2010-06-22 06:50:51'),(30,'???????????????????????????�???�???�?<br><br>?????�?????asdf2<br><br>?????�?????32SDSD23<br><br>','',18,0,'127.0.0.1','2010-06-22 06:51:08'),(31,'',',编号[Array]',18,0,'127.0.0.1','2010-06-22 06:54:31'),(32,'??????�????????�????\0',',用户角色[48],姓名[孙全军]',18,0,'127.0.0.1','2010-06-22 06:56:36'),(33,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 12:24:24'),(34,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 12:25:04'),(35,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 12:25:17'),(36,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 12:25:37'),(37,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 12:26:17'),(38,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 12:32:18'),(39,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 12:32:28'),(40,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 12:32:54'),(41,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 12:33:31'),(42,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 12:35:53'),(43,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 12:46:40'),(44,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 12:46:56'),(45,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 12:52:05'),(46,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 12:52:26'),(47,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 12:52:36'),(48,'','成功退出系统!',18,0,'60.247.30.1','2010-12-12 13:12:16'),(49,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 13:17:22'),(50,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 13:17:31'),(51,'updatePassword','密码修改失败,帐号[quanjun@staff.sina.com.cn],原密码输入错误',18,0,'60.247.30.1','2010-12-12 13:19:06'),(52,'updatePassword','密码修改失败,帐号[quanjun@staff.sina.com.cn],原密码输入错误',18,0,'60.247.30.1','2010-12-12 13:19:20'),(53,'updatePassword','密码修改失败,帐号[quanjun@staff.sina.com.cn],原密码输入错误',18,0,'60.247.30.1','2010-12-12 13:19:51'),(54,'updatePassword','密码修改失败,帐号[quanjun@staff.sina.com.cn],原密码输入错误',18,0,'60.247.30.1','2010-12-12 13:20:41'),(55,'updatePassword','密码修改成功,帐号[quanjun@staff.sina.com.cn]',18,0,'60.247.30.1','2010-12-12 13:21:25'),(56,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 13:24:58'),(57,'??????????????????\0',',用户角色[51],用户邮箱[ewwew@22323.com],登录密码[****],姓名[r23r23r]',18,0,'60.247.30.1','2010-12-12 13:26:27'),(58,'??????�??????�\0',',类型名称[正常角色],类型标识[1],类型标识值[2],类型说明前16位字符[用户角色管�]',18,0,'60.247.30.1','2010-12-12 13:27:44'),(59,'??????�????????�????\0',',用户角色[79],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 13:34:19'),(60,'??????�????????�????\0',',用户角色[51],姓名[孙全军]',18,0,'60.247.30.1','2010-12-12 13:34:35'),(61,'??????�????????�????\0',',用户角色[51],姓名[r23r23r]',18,0,'60.247.30.1','2010-12-12 13:35:02'),(62,'??????????????????\0',',用户角色[48],用户邮箱前16位字符[zhangminsong@ku6],登录密码[****],姓名[zhang]',18,0,'60.247.30.3','2010-12-21 17:42:07'),(63,'','成功退出系统!',18,0,'60.247.30.3','2010-12-21 17:42:17'),(64,'','成功退出系统!',65,0,'60.247.30.3','2010-12-21 17:42:48'),(65,'','成功退出系统!',18,0,'60.247.30.3','2010-12-21 17:46:06'),(66,'','成功退出系统!',65,0,'60.247.30.1','2011-01-18 06:38:23'),(67,'','成功退出系统!',65,0,'60.247.30.1','2011-01-18 06:40:14'),(68,'','成功退出系统!',18,0,'60.247.30.1','2011-01-18 06:42:32'),(69,'','成功退出系统!',65,0,'60.247.30.1','2011-01-18 08:03:57'),(70,'','成功退出系统!',18,0,'60.247.30.1','2011-01-18 09:36:53'),(71,'','成功退出系统!',65,0,'60.247.30.3','2011-01-23 12:19:14'),(72,'','成功退出系统!',18,0,'60.247.30.3','2011-01-23 12:20:57'),(73,'','成功退出系统!',65,0,'60.247.30.1','2011-01-24 02:17:58'),(74,'','成功退出系统!',18,0,'60.247.30.1','2011-01-24 02:41:29'),(75,'','成功退出系统!',65,0,'60.247.30.1','2011-01-24 02:41:58'),(76,'','成功退出系统!',65,0,'60.247.30.1','2011-01-25 06:45:06'),(77,'','成功退出系统!',65,0,'60.247.30.1','2011-01-25 07:42:58'),(78,'','成功退出系统!',18,0,'60.247.30.1','2011-01-25 09:30:37'),(79,'','成功退出系统!',65,0,'60.247.30.1','2011-01-25 09:31:07'),(80,'','成功退出系统!',65,0,'60.247.30.1','2011-01-26 01:50:07'),(81,'','成功退出系统!',65,0,'60.247.30.1','2011-02-09 02:01:50'),(82,'','成功退出系统!',18,0,'60.247.30.1','2011-02-09 02:04:58'),(83,'','成功退出系统!',18,0,'211.151.188.19','2011-02-09 02:16:56'),(84,'',',编号[30]',18,0,'192.168.2.53','2011-04-27 23:29:52'),(85,'',',编号[63]',18,0,'192.168.2.53','2011-04-27 23:30:27'),(86,'',',编号[61]',18,0,'192.168.2.53','2011-04-27 23:30:54'),(87,'',',编号[29]',18,0,'192.168.2.53','2011-04-27 23:31:19'),(88,'',',编号[64]',18,0,'192.168.2.53','2011-04-27 23:31:38'),(89,'',',编号[65]',18,0,'192.168.2.53','2011-04-27 23:37:06'),(90,'编辑系统用户',',用户角色[79],姓名[孙全军]',18,0,'192.168.2.53','2011-04-27 23:38:16'),(91,'编辑系统用户',',用户角色[48],姓名[孙全军]',18,0,'192.168.2.53','2011-04-27 23:39:03'),(92,'编辑系统用户',',用户角色[48],姓名[孙全军]',18,0,'192.168.2.53','2011-04-27 23:40:14'),(93,'编辑系统用户',',用户角色[48],姓名[孙全军]',18,0,'192.168.2.53','2011-04-27 23:44:46'),(94,'编辑系统用户',',用户角色[48],姓名[孙全军]',18,0,'192.168.2.53','2011-04-27 23:45:46'),(95,'编辑系统用户',',用户角色[48],姓名[孙全军]',18,0,'192.168.2.53','2011-04-27 23:47:22'),(96,'编辑系统用户',',用户角色[48],姓名[孙全军]',18,0,'192.168.2.53','2011-04-27 23:48:46'),(97,'编辑系统用户',',用户角色[48],姓名[孙全军]',18,0,'192.168.2.53','2011-04-27 23:48:58'),(98,'编辑系统用户',',用户角色[48],姓名[孙全军]',18,0,'192.168.2.53','2011-04-27 23:49:09'),(99,'编辑系统用户',',用户角色[48],姓名[孙全军]',18,0,'192.168.2.53','2011-04-27 23:49:55'),(100,'编辑系统用户',',用户角色[48],姓名[孙全军]',18,0,'192.168.2.53','2011-04-27 23:51:09'),(101,'编辑系统用户',',用户角色[48],姓名[孙全军]',18,0,'192.168.2.53','2011-04-27 23:54:26'),(102,'编辑系统用户',',用户角色[48],姓名[孙全军]',18,0,'192.168.2.53','2011-04-27 23:55:18'),(103,'编辑系统用户',',用户角色[48],姓名[孙全军]',18,0,'192.168.2.53','2011-04-27 23:56:05'),(104,'编辑系统用户',',用户角色[48],姓名[孙全军]',18,0,'192.168.2.53','2011-04-27 23:56:20'),(105,'删除成功，删除列表如下:<br><br>角色为:asdf23sd<br><br>角色为:asdfdasf<br><br>角色为:ads2sd<br><br>角色为:23sdsdsd<br><br>角色为:asdsd<br><br>','',18,0,'192.168.2.53','2011-04-27 23:56:55'),(106,'','成功退出系统!',18,0,'192.168.2.53','2011-04-28 00:00:03'),(107,'','成功退出系统!',18,0,'192.168.2.53','2011-04-28 02:54:27'),(108,'','??????!',18,0,'127.0.0.1','2011-04-28 08:22:01');
/*!40000 ALTER TABLE `optlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `test` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'????'),(2,'??????'),(3,'????');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treemenu`
--

DROP TABLE IF EXISTS `treemenu`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `treemenu` (
  `MenuId` int(11) NOT NULL AUTO_INCREMENT,
  `MenuName` varchar(50) NOT NULL DEFAULT 'test',
  `MenuPId` int(4) DEFAULT NULL,
  `MenuLink` varchar(255) NOT NULL DEFAULT '../blank.php?flag=1',
  `MenuLevel` smallint(6) NOT NULL DEFAULT '0',
  `MenuEndFlag` enum('0','1') NOT NULL DEFAULT '1',
  `InfluenceItemList` varchar(1024) NOT NULL DEFAULT '??:style=popUp:addFlag=1|??:style=mulSele:delFlag=1|??:style=singleSele:editFlag=1|??:style=null:readFlag=1|??:style=null:listFlag=1|????:style=null:menuFlag=1|???:style=selfDef:customInfluenceList=1',
  `SortValue` int(11) NOT NULL DEFAULT '1',
  `regTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`MenuId`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `treemenu`
--

LOCK TABLES `treemenu` WRITE;
/*!40000 ALTER TABLE `treemenu` DISABLE KEYS */;
INSERT INTO `treemenu` VALUES (1,'注册用户',0,'../usermanager/showtmpl.php?flag=1&opt=listFlag',0,'1','填� :style=location:addFlag=1|� 除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|自定义:style=selfDef:customInfluenceList=1',96,'2007-09-03 09:09:44'),(2,'角色管理',0,'../acl/showtmpl.php?flag=1&opt=listFlag',0,'1','填� :style=location:addFlag=1|� 除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|自定义:style=selfDef:customInfluenceList=1',97,'2007-12-17 09:12:27'),(3,'类型管理',0,'../typedata/showtmpl.php?flag=1&opt=listFlag',0,'0','填� :style=location:addFlag=1|� 除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|自定义:style=selfDef:customInfluenceList=1',80,'2007-12-17 09:12:50'),(16,'修改密码',0,'../updpassword/showtmpl.php?flag=1&opt=editFlag',0,'1','填�� :style=location:addFlag=1|�� 除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|自定义:style=selfDef:customInfluenceList=1',99,'2007-12-20 10:12:52'),(24,'用户信息',0,'../mainFrame/blank.php?flag=1&opt=listFlag',0,'1','填�� :style=location:addFlag=1|�� 除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|自定义:style=selfDef:customInfluenceList=1',95,'2007-12-29 03:12:16'),(26,'内容管理',0,'http://adminapi.ktv.ku6.com/adminui/note.html?',0,'0','填�� :style=location:addFlag=1|�� 除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|自定义:style=selfDef:customInfluenceList=1',4,'2008-01-02 04:01:13'),(28,'角色状态',3,'../keyValue/showtmpl.php?flag=1&opt=listFlag&typeFlag=1',1,'1','填� :style=location:addFlag=1|� 除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|自定义:style=selfDef:customInfluenceList=1',0,'2007-12-17 09:12:50'),(36,'操作日志',0,'../optlog/showtmpl.php?flag=1&opt=listFlag',0,'1','填�� :style=location:addFlag=1|�� 除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|自定义:style=selfDef:customInfluenceList=1',82,'2008-01-02 08:01:07'),(38,'操作记录',0,'../optlog/showtmpl.php?flag=2&opt=listFlag',0,'1','填� :style=location:addFlag=1|� 除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|自定义:style=selfDef:customInfluenceList=1',4,'2008-10-27 02:41:13'),(40,'用户编辑',0,'../usermanager/showtmpl.php?flag=1&opt=editFlag&editFlag=menu',0,'1','填� :style=location:addFlag=1|� 除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|自定义:style=selfDef:customInfluenceList=1',96,'2008-01-16 00:01:23'),(41,'安全退出',0,'../mainFrame/logout.php?flag=1&opt=logout',0,'1','菜单显示:style=null:menuFlag=1',100,'2008-01-16 12:01:10'),(147,'boxAnyWhere发布',144,'http://webadmin.cloudway.cn/project/cloudway.cn/publicCloudServer.php?flag=1&menuID=111',1,'1','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2011-04-28 00:04:19'),(98,'光盘管理',0,'../frame/blank.php?flag=1&opt=listFlag',0,'0','填加:style=location:addFlag=1|删除 除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|自定义:style=selfDef:customInfluenceList=1',1,'2008-08-28 00:08:49'),(146,'cloudServer发布',144,'http://webadmin.cloudway.cn/project/cloudway.cn/publicCloudServer.php?flag=1&menuID=111',1,'1','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2011-04-28 00:04:19'),(144,'版本发布',0,'http://webadmin.cloudway.cn/project/cloudway.cn/publicCloudServer.php?flag=1&menuID=111',0,'0','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2011-04-28 00:04:19'),(111,'光盘制作',98,'http://webadmin.cloudway.cn/project/cloudway.cn/buildISOConf.php?flag=0&opt=addFlag',1,'1','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2008-08-28 00:08:49'),(112,'光盘列表',98,'http://webadmin.cloudway.cn/project/cloudway.cn/ISIOList.php&menuID=111',1,'1','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2008-08-28 00:08:49'),(113,'光盘发布',98,'http://webadmin.cloudway.cn/project/cloudway.cn/ISIOList.php&menuID=111',1,'1','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2008-08-28 00:08:49'),(114,'代理商管理',0,'http://webadmin.cloudway.cn/project/cloudway.cn/agentManager.php?flag=0&menuID=111',0,'0','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2010-12-21 09:12:26'),(115,'注册代理商',114,'http://webadmin.cloudway.cn/project/cloudway.cn/registerAgent.php?flag=1&menuID=111',1,'1','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2010-12-21 09:12:26'),(116,'代理商列表',114,'http://webadmin.cloudway.cn/project/cloudway.cn/ISIOList.php&menuID=111',1,'1','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2010-12-21 09:12:26'),(118,'内容列表',26,'http://adminapi.ktv.ku6.com/adminui/note.html?',1,'1','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2008-01-02 04:01:13'),(119,'添加内容',26,'http://adminapi.ktv.ku6.com/adminui/note_info_add.html?',1,'1','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2008-01-02 04:01:13'),(120,'添加广告',26,'http://adminapi.ktv.ku6.com/adminui/note_adv_add.html?',1,'1','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2008-01-02 04:01:13'),(121,'企业审核',0,'http://webadmin.cloudway.cn/project/cloudway.cn/ISIOList.php&menuID=111',0,'0','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2010-12-21 09:12:01'),(122,'待审核企业',121,'http://webadmin.cloudway.cn/project/cloudway.cn/checnEnterprise.php?flag=1&menuID=111',1,'1','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2010-12-21 09:12:01'),(127,'企业列表',121,'http://webadmin.cloudway.cn/project/cloudway.cn/enterpriseList.php?flag=1&menuID=111',1,'1','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2011-01-24 02:22:44'),(145,'liveDesk发布',144,'http://webadmin.cloudway.cn/project/cloudway.cn/publicCloudServer.php?flag=1&menuID=111',1,'1','填加:style=location:addFlag=1|删除:style=delSele:delFlag=1|修改:style=singleSele:editFlag=1|只读:style=null:readFlag=1|列表:style=null:listFlag=1|菜单显示:style=null:menuFlag=1|权限分配:style=singleSele:editPower=1|自定义:style=selfDef:customInfluenceList=1',1,'2011-04-28 00:04:19');
/*!40000 ALTER TABLE `treemenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `passwd` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `userName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `sex` enum('0','1') COLLATE utf8_bin NOT NULL DEFAULT '0',
  `cityID` int(11) NOT NULL DEFAULT '0',
  `hometown` char(255) COLLATE utf8_bin DEFAULT NULL,
  `birthday` date DEFAULT '1978-02-13',
  `address` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `qq` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `msn` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `homepage` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `company` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `job` char(64) COLLATE utf8_bin DEFAULT '0',
  `note` text COLLATE utf8_bin,
  `influenceID` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` datetime DEFAULT '0000-00-00 00:00:00',
  `regTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (18,'quanjun@staff.sina.com.cn','asdfasdf','孙全军','1',25,'asdfasd','1978-02-13','asdfasdfasf','414301929','quanjun@staff.sina.com.cn','13520410732','asdfasdf','asdfasdf','asdfasdf','',48,0,'2011-04-28 16:51:01','2009-01-20 03:09:55');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpower`
--

DROP TABLE IF EXISTS `userpower`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `userpower` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treemenuID` int(11) NOT NULL DEFAULT '0',
  `influenceID` int(11) NOT NULL DEFAULT '0',
  `readFlag` enum('0','1') NOT NULL DEFAULT '0',
  `editFlag` enum('0','1') NOT NULL DEFAULT '0',
  `delFlag` enum('0','1') NOT NULL DEFAULT '0',
  `addFlag` enum('0','1') NOT NULL DEFAULT '0',
  `listFlag` enum('0','1') NOT NULL DEFAULT '0',
  `menuFlag` enum('0','1') NOT NULL DEFAULT '0',
  `editPower` enum('0','1') NOT NULL DEFAULT '0',
  `customInfluenceList` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '''''',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9604 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `userpower`
--

LOCK TABLES `userpower` WRITE;
/*!40000 ALTER TABLE `userpower` DISABLE KEYS */;
INSERT INTO `userpower` VALUES (9211,35,78,'0','0','0','0','0','0','0',''),(9212,98,78,'0','0','0','0','0','0','0',''),(9213,26,78,'0','0','0','0','0','0','0',''),(9214,38,78,'0','0','0','0','0','0','0',''),(9215,61,78,'0','0','0','0','0','0','0',''),(9216,104,78,'0','0','0','0','0','0','0',''),(9217,3,78,'0','0','0','0','0','0','0',''),(9218,27,78,'0','0','0','0','0','0','0',''),(9219,28,78,'0','0','0','0','0','0','0',''),(9220,31,78,'0','0','0','0','0','0','0',''),(9221,45,78,'0','0','0','0','0','0','0',''),(9222,46,78,'0','0','0','0','0','0','0',''),(9223,36,78,'0','0','0','0','0','0','0',''),(9224,57,78,'0','0','0','0','0','0','0',''),(9225,59,78,'0','0','0','0','0','0','0',''),(9226,24,78,'0','0','0','0','0','0','0',''),(9227,1,78,'0','0','0','0','0','0','0',''),(9228,84,78,'0','0','0','0','0','0','0',''),(9229,93,78,'0','0','0','0','0','0','0',''),(9230,40,78,'0','0','0','0','0','0','0',''),(9231,99,78,'0','0','0','0','0','0','0',''),(9232,100,78,'0','0','0','0','0','0','0',''),(9233,101,78,'0','0','0','0','0','0','0',''),(9234,102,78,'0','0','0','0','0','0','0',''),(9235,103,78,'0','0','0','0','0','0','0',''),(9236,2,78,'0','0','0','0','0','0','0',''),(9237,16,78,'0','0','0','0','0','0','0',''),(9238,41,78,'0','0','0','0','0','0','0',''),(9267,35,73,'0','0','0','0','0','0','0',''),(9268,98,73,'0','0','0','0','0','0','0',''),(9269,26,73,'0','0','0','0','0','0','0',''),(9270,38,73,'0','0','0','0','0','0','0',''),(9271,61,73,'0','0','0','0','0','0','0',''),(9272,104,73,'0','0','0','0','0','0','0',''),(9273,3,73,'0','0','0','0','0','0','0',''),(9274,27,73,'0','0','0','0','0','0','0',''),(9275,28,73,'0','0','0','0','0','0','0',''),(9276,31,73,'0','0','0','0','0','0','0',''),(9277,45,73,'0','0','0','0','0','0','0',''),(9278,46,73,'0','0','0','0','0','0','0',''),(9279,36,73,'0','0','0','0','0','0','0',''),(9280,57,73,'0','0','0','0','0','0','0',''),(9281,59,73,'0','0','0','0','0','0','0',''),(9282,24,73,'0','0','0','0','0','0','0',''),(9283,1,73,'0','0','0','0','0','0','0',''),(9284,84,73,'0','0','0','0','0','0','0',''),(9285,93,73,'0','0','0','0','0','0','0',''),(9286,40,73,'0','0','0','0','0','0','0',''),(9287,99,73,'0','0','0','0','0','0','0',''),(9288,100,73,'0','0','0','0','0','0','0',''),(9289,101,73,'0','0','0','0','0','0','0',''),(9290,102,73,'0','0','0','0','0','0','0',''),(9291,103,73,'0','0','0','0','0','0','0',''),(9292,2,73,'0','0','0','0','0','0','0',''),(9293,16,73,'0','0','0','0','0','0','0',''),(9294,41,73,'0','0','0','0','0','0','0',''),(9295,35,51,'0','0','0','0','0','0','0',''),(9296,98,51,'0','0','0','0','0','0','0',''),(9297,26,51,'0','0','0','0','0','0','0',''),(9298,38,51,'0','0','0','0','0','0','0',''),(9299,61,51,'0','0','0','0','0','0','0',''),(9300,104,51,'0','0','0','0','0','0','0',''),(9301,3,51,'0','0','0','0','0','0','0',''),(9302,27,51,'0','0','0','0','0','0','0',''),(9303,28,51,'0','0','0','0','0','0','0',''),(9304,31,51,'0','0','0','0','0','0','0',''),(9305,45,51,'0','0','0','0','0','0','0',''),(9306,46,51,'0','0','0','0','0','0','0',''),(9307,36,51,'0','0','0','0','0','0','0',''),(9308,57,51,'0','0','0','0','0','0','0',''),(9309,59,51,'0','0','0','0','0','0','0',''),(9310,24,51,'0','0','0','0','0','0','0',''),(9311,1,51,'0','0','0','0','0','0','0',''),(9312,84,51,'0','0','0','0','0','0','0',''),(9313,93,51,'0','0','0','0','0','0','0',''),(9314,40,51,'0','0','0','0','0','0','0',''),(9315,99,51,'0','0','0','0','0','0','0',''),(9316,100,51,'0','0','0','0','0','0','0',''),(9317,101,51,'0','0','0','0','0','0','0',''),(9318,102,51,'0','0','0','0','0','0','0',''),(9319,103,51,'0','0','0','0','0','0','0',''),(9320,2,51,'1','1','1','1','1','1','0','编辑权限:style=null:editPower=1|我的公文包:style=location:myDocument=1'),(9321,16,51,'0','1','0','0','0','1','0',''),(9322,41,51,'0','0','0','0','0','1','0',''),(9323,35,82,'0','0','0','0','0','0','0',''),(9324,98,82,'0','0','0','0','0','0','0',''),(9325,26,82,'0','0','0','0','0','0','0',''),(9326,38,82,'0','0','0','0','0','0','0',''),(9327,61,82,'0','0','0','0','0','0','0',''),(9328,104,82,'0','0','0','0','0','0','0',''),(9329,3,82,'0','0','0','0','0','0','0',''),(9330,27,82,'0','0','0','0','0','0','0',''),(9331,28,82,'0','0','0','0','0','0','0',''),(9332,31,82,'0','0','0','0','0','0','0',''),(9333,45,82,'0','0','0','0','0','0','0',''),(9334,46,82,'0','0','0','0','0','0','0',''),(9335,36,82,'0','0','0','0','0','0','0',''),(9336,57,82,'0','0','0','0','0','0','0',''),(9337,59,82,'0','0','0','0','0','0','0',''),(9338,24,82,'0','0','0','0','0','0','0',''),(9339,1,82,'0','0','0','0','0','0','0',''),(9340,84,82,'0','0','0','0','0','0','0',''),(9341,93,82,'0','0','0','0','0','0','0',''),(9342,40,82,'0','0','0','0','0','0','0',''),(9343,99,82,'0','0','0','0','0','0','0',''),(9344,100,82,'1','1','1','1','1','1','0',''),(9345,101,82,'0','0','0','0','0','0','0',''),(9346,102,82,'0','0','0','0','0','0','0',''),(9347,103,82,'0','0','0','0','0','0','0',''),(9348,2,82,'0','0','0','0','0','0','0',''),(9349,16,82,'0','0','0','0','0','0','0',''),(9350,41,82,'0','0','0','0','0','0','0',''),(9603,41,48,'0','0','0','0','0','1','0',''),(9602,16,48,'1','1','1','1','1','1','0',''),(9601,2,48,'1','1','1','1','1','1','0',''),(9600,40,48,'1','1','1','1','1','1','0',''),(9599,1,48,'1','1','1','1','1','1','0',''),(9598,24,48,'1','1','1','1','1','1','0',''),(9597,36,48,'1','1','1','1','1','1','0',''),(9596,28,48,'1','1','1','1','1','1','0',''),(9595,3,48,'0','0','0','0','0','1','0',''),(9594,104,48,'1','1','1','1','1','1','0',''),(9593,61,48,'0','0','0','0','0','1','0',''),(9592,38,48,'1','1','1','1','1','1','0',''),(9591,141,48,'0','0','0','0','0','0','0',''),(9590,120,48,'1','1','1','1','1','1','0',''),(9589,119,48,'1','1','1','1','1','1','0',''),(9588,118,48,'1','1','1','1','1','1','0',''),(9587,26,48,'0','0','0','0','0','1','0',''),(9586,126,48,'1','1','1','1','1','1','0',''),(9585,143,48,'0','0','0','0','0','0','0',''),(9584,125,48,'0','0','0','0','0','1','0',''),(9583,124,48,'1','1','1','1','1','1','0',''),(9582,123,48,'0','0','0','0','0','1','0',''),(9581,138,48,'1','1','1','1','0','1','0',''),(9580,127,48,'1','1','1','1','1','1','0',''),(9579,122,48,'1','1','1','1','1','1','0',''),(9578,121,48,'0','0','0','0','0','1','0',''),(9577,117,48,'1','1','1','1','1','1','0',''),(9576,116,48,'1','1','1','1','1','1','0',''),(9575,115,48,'1','1','1','1','1','1','0',''),(9574,114,48,'0','0','0','0','0','1','0',''),(9573,113,48,'1','1','1','1','1','1','0',''),(9572,112,48,'1','1','1','1','1','1','0',''),(9571,111,48,'1','1','1','1','1','1','0',''),(9570,109,48,'1','1','1','1','1','1','0',''),(9569,108,48,'1','1','1','1','1','1','0',''),(9568,107,48,'1','1','1','1','1','1','0',''),(9567,98,48,'0','0','0','0','0','1','0','');
/*!40000 ALTER TABLE `userpower` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-04-28  8:56:13
