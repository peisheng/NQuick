-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: dm_comic_platform
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `black_list`
--

DROP TABLE IF EXISTS `black_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `black_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) DEFAULT NULL COMMENT '手机号',
  `phone_md5` varchar(32) DEFAULT NULL COMMENT '加密后的手机号',
  `remark` varchar(40) DEFAULT NULL COMMENT '备注',
  `addate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mobile` (`phone`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5091889 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `by_miscid_limit`
--

DROP TABLE IF EXISTS `by_miscid_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `by_miscid_limit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `miscid` varchar(4) DEFAULT NULL,
  `add_user` varchar(20) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `del_user` varchar(20) DEFAULT NULL,
  `del_time` datetime DEFAULT NULL,
  `is_del` int(1) DEFAULT '0' COMMENT '1开通  0关闭',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `city_cp_info`
--

DROP TABLE IF EXISTS `city_cp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_cp_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpName` varchar(100) DEFAULT NULL,
  `cpId` varchar(6) DEFAULT NULL,
  `cpEn` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `closed_info`
--

DROP TABLE IF EXISTS `closed_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `closed_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` int(4) NOT NULL,
  `cp_id` int(4) NOT NULL,
  `closed_per` int(3) NOT NULL COMMENT '核减比例',
  `province_id` varchar(4) NOT NULL COMMENT '省份代码',
  `add_time` datetime DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `closed_set`
--

DROP TABLE IF EXISTS `closed_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `closed_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` int(4) NOT NULL,
  `cp_id` int(4) NOT NULL,
  `closed_per` int(3) NOT NULL COMMENT '核减比例',
  `province_id` varchar(4) NOT NULL COMMENT '省份代码',
  `begin_price` int(11) NOT NULL COMMENT '核减起始金额(分)',
  `stat` int(1) NOT NULL COMMENT '1 开通  0关闭',
  `add_time` datetime DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `add_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5359 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `common_status`
--

DROP TABLE IF EXISTS `common_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(40) DEFAULT NULL,
  `field_name` varchar(20) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `introduce` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cp_cooperate_info`
--

DROP TABLE IF EXISTS `cp_cooperate_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_cooperate_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `service_type` varchar(10) DEFAULT NULL COMMENT '业务线类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=681 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cp_info`
--

DROP TABLE IF EXISTS `cp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(4) CHARACTER SET gbk DEFAULT NULL,
  `cp_cn` varchar(20) DEFAULT NULL COMMENT '中文名',
  `cp_en` varchar(20) DEFAULT NULL COMMENT '英语名、拼音',
  `coop_status` int(1) NOT NULL DEFAULT '0' COMMENT '0-开通 1-关闭',
  `coop_date` date DEFAULT NULL COMMENT '合作日期',
  `game_deduct` int(3) DEFAULT NULL COMMENT '游戏扣量比例',
  `sms_mo_deduct` int(3) DEFAULT NULL,
  `sms_mt_deduct` int(3) DEFAULT NULL,
  `mms_mo_deduct` int(3) DEFAULT NULL,
  `mms_mt_deduct` int(3) DEFAULT NULL,
  `turn_on_time` time DEFAULT NULL,
  `turn_off_time` time DEFAULT NULL,
  `url_imsp_report` varchar(200) DEFAULT NULL,
  `url_sms_mo` varchar(200) DEFAULT NULL COMMENT '短信MO同步地址',
  `url_sms_mr` varchar(200) DEFAULT NULL COMMENT '短信MR同步地址',
  `url_cmcc_comic_report` varchar(200) DEFAULT NULL COMMENT '移动同步地址',
  `url_ct_comic_report` varchar(200) DEFAULT NULL,
  `url_ct_comic_status` int(1) DEFAULT '0' COMMENT '0实时同步，1为不实时同步',
  `authkey` varchar(20) DEFAULT NULL COMMENT '鉴权密钥',
  `url_h5_report` varchar(200) DEFAULT NULL COMMENT '联通同步地址',
  `url_vc_report` varchar(200) DEFAULT NULL COMMENT '计费通知接口',
  `is_authkey` varchar(4) DEFAULT '1',
  `url_vc_month_report` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cp_id` (`cp_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COMMENT='coop_status  关闭触发  service_match 相关记录关闭';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cp_limit`
--

DROP TABLE IF EXISTS `cp_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_limit` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(4) DEFAULT NULL COMMENT '合作方',
  `limit_miscid` varchar(4) DEFAULT NULL COMMENT '限制省份',
  `limit_num` int(10) NOT NULL COMMENT '月限制条数 0默认不限制 ',
  `limit_income` int(10) NOT NULL COMMENT '月限制金额分 0默认不限制',
  `day_num` int(4) NOT NULL DEFAULT '0' COMMENT '日限制条数 0默认不限制 ',
  `day_income` int(10) NOT NULL DEFAULT '0' COMMENT '日限制金额分 0默认不限制',
  `service_type` varchar(20) DEFAULT NULL,
  `stat` int(1) NOT NULL DEFAULT '1' COMMENT '是否启用：0：启用，1：关闭',
  `close_stat` int(1) DEFAULT '0' COMMENT '0不关闭省份 1关闭省份',
  `sp_id` varchar(4) DEFAULT NULL COMMENT '公司',
  `mod_time` datetime DEFAULT NULL,
  `mod_user` varchar(30) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6746 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cp_province_deduct`
--

DROP TABLE IF EXISTS `cp_province_deduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_province_deduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(4) NOT NULL COMMENT '合作方编号',
  `province_id` varchar(4) NOT NULL COMMENT '省份编号',
  `sms_mo_deduct` int(3) NOT NULL DEFAULT '0' COMMENT '短信上行扣量',
  `sms_mr_deduct` int(3) NOT NULL DEFAULT '0' COMMENT '短信MR扣量',
  `mms_mo_deduct` int(3) NOT NULL DEFAULT '0' COMMENT '彩信上行扣量',
  `mms_mr_deduct` int(3) NOT NULL DEFAULT '0' COMMENT '彩信MR扣量',
  `operater` varchar(20) DEFAULT NULL COMMENT '最近操作人',
  `modified_datetime` datetime DEFAULT NULL COMMENT '修改时间',
  `lockstatus` int(1) NOT NULL DEFAULT '0',
  `memo` text,
  `ring_mo_deduct` int(3) NOT NULL COMMENT '彩铃mo扣量',
  PRIMARY KEY (`id`),
  KEY `cp_id` (`cp_id`),
  CONSTRAINT `cp_province_deduct_ibfk_1` FOREIGN KEY (`cp_id`) REFERENCES `cp_info` (`cp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cp_province_deduct_log`
--

DROP TABLE IF EXISTS `cp_province_deduct_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_province_deduct_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(4) CHARACTER SET gbk NOT NULL COMMENT '合作方编号',
  `province_id` varchar(4) CHARACTER SET gbk NOT NULL COMMENT '省份编号',
  `sms_mo_deduct` int(3) NOT NULL COMMENT '短信上行扣量',
  `sms_mr_deduct` int(3) NOT NULL COMMENT '短信MR扣量',
  `mms_mo_deduct` int(3) NOT NULL COMMENT '彩信上行扣量',
  `mms_mr_deduct` int(3) NOT NULL COMMENT '彩信MR扣量',
  `operater` varchar(20) CHARACTER SET gbk DEFAULT NULL COMMENT '最近操作人',
  `modified_datetime` datetime DEFAULT NULL COMMENT '修改时间',
  `acttype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily_by_report`
--

DROP TABLE IF EXISTS `daily_by_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_by_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(30) DEFAULT NULL,
  `cp_id` varchar(10) DEFAULT NULL,
  `sp_id` varchar(10) DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `nums` int(8) DEFAULT NULL,
  `count_date` date DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '1 订购 2 退订',
  `income` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65754 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily_by_report_copy`
--

DROP TABLE IF EXISTS `daily_by_report_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_by_report_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(30) DEFAULT NULL,
  `cp_id` varchar(10) DEFAULT NULL,
  `sp_id` varchar(10) DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `nums` int(8) DEFAULT NULL,
  `count_date` date DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '1 订购 2 退订',
  `income` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27720 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily_by_report_copy1`
--

DROP TABLE IF EXISTS `daily_by_report_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_by_report_copy1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(30) DEFAULT NULL,
  `cp_id` varchar(10) DEFAULT NULL,
  `sp_id` varchar(10) DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `nums` int(8) DEFAULT NULL,
  `count_date` date DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '1 订购 2 退订',
  `income` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily_by_report_today`
--

DROP TABLE IF EXISTS `daily_by_report_today`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_by_report_today` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(30) DEFAULT NULL,
  `cp_id` varchar(10) DEFAULT NULL,
  `sp_id` varchar(10) DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `nums` int(8) DEFAULT NULL,
  `count_date` date DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '1 订购 2 退订',
  `income` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `daily_by_report_view`
--

DROP TABLE IF EXISTS `daily_by_report_view`;
/*!50001 DROP VIEW IF EXISTS `daily_by_report_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `daily_by_report_view` (
 `service_id` tinyint NOT NULL,
  `cp_id` tinyint NOT NULL,
  `sp_id` tinyint NOT NULL,
  `province_id` tinyint NOT NULL,
  `service_type` tinyint NOT NULL,
  `nums` tinyint NOT NULL,
  `count_date` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `income` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `daily_byh5_report`
--

DROP TABLE IF EXISTS `daily_byh5_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_byh5_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(30) DEFAULT NULL,
  `cp_id` varchar(10) DEFAULT NULL,
  `sp_id` varchar(10) DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `nums` int(8) DEFAULT NULL,
  `count_date` date DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '1 订购 2 退订',
  `income` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily_history_by_report`
--

DROP TABLE IF EXISTS `daily_history_by_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_history_by_report` (
  `d` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(40) DEFAULT NULL,
  `cp_id` varchar(8) DEFAULT NULL,
  `sp_id` varchar(8) DEFAULT NULL,
  `province_id` varchar(8) DEFAULT NULL,
  `service_type` varchar(40) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `count_date` varchar(10) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`d`)
) ENGINE=MyISAM AUTO_INCREMENT=1521 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily_report`
--

DROP TABLE IF EXISTS `daily_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(30) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `ch_id` varchar(20) DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `order_type` int(1) DEFAULT '1' COMMENT '1 计次  9包月',
  `income` int(9) NOT NULL DEFAULT '0',
  `cp_fc` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'cp分成比例',
  `sp_fc` decimal(5,2) NOT NULL DEFAULT '100.00' COMMENT 'sp分成比例',
  `mo_all_num` int(9) NOT NULL DEFAULT '0',
  `mo_all_user_num` int(9) NOT NULL DEFAULT '0',
  `mo_succ_num` int(9) NOT NULL DEFAULT '0',
  `mo_succ_user_num` int(9) NOT NULL DEFAULT '0',
  `mt_all_num` int(9) NOT NULL DEFAULT '0',
  `mt_all_user_num` int(9) NOT NULL DEFAULT '0',
  `mt_succ_num` int(9) NOT NULL DEFAULT '0',
  `mt_succ_user_num` int(9) NOT NULL DEFAULT '0',
  `count_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `miscid` (`province_id`) USING BTREE,
  KEY `date_time` (`count_date`) USING BTREE,
  KEY `cpid` (`cp_id`) USING BTREE,
  KEY `service_id` (`service_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=270700 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily_report_today`
--

DROP TABLE IF EXISTS `daily_report_today`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_report_today` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(30) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `ch_id` varchar(20) DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `order_type` tinyint(1) DEFAULT '1' COMMENT '1 计次  9包月',
  `income` int(9) NOT NULL DEFAULT '0',
  `cp_fc` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'cp分成比例',
  `sp_fc` decimal(5,2) NOT NULL DEFAULT '100.00' COMMENT 'sp分成比例',
  `mo_all_num` int(9) NOT NULL DEFAULT '0',
  `mo_all_user_num` int(9) NOT NULL DEFAULT '0',
  `mo_succ_num` int(9) NOT NULL DEFAULT '0',
  `mo_succ_user_num` int(9) NOT NULL DEFAULT '0',
  `mt_all_num` int(9) NOT NULL DEFAULT '0',
  `mt_all_user_num` int(9) NOT NULL DEFAULT '0',
  `mt_succ_num` int(9) NOT NULL DEFAULT '0',
  `mt_succ_user_num` int(9) NOT NULL DEFAULT '0',
  `count_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `miscid` (`province_id`) USING BTREE,
  KEY `date_time` (`count_date`) USING BTREE,
  KEY `cpid` (`cp_id`) USING BTREE,
  KEY `service_id` (`service_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=725 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_info`
--

DROP TABLE IF EXISTS `game_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ch_id` varchar(20) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `game_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ch_id` (`ch_id`) USING BTREE,
  KEY `sp_id` (`sp_id`) USING BTREE,
  CONSTRAINT `game_info_ibfk_1` FOREIGN KEY (`sp_id`) REFERENCES `sp_info` (`sp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `h5_charge_record`
--

DROP TABLE IF EXISTS `h5_charge_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h5_charge_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sign` text CHARACTER SET utf8 COMMENT '¼ÓÃÜºóÑéÖ¤',
  `behavior` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ÐÐÎª (¶©¹º order ÍË¶© unsubscribe)',
  `trade_status` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT '½»Ò××´Ì¬¡£(0 ³É¹¦)',
  `trade_no` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '½»Ò×Á÷Ë®ºÅ',
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'ÊÖ»úºÅÂë',
  `province_id` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Ê¡·Ý´úÂë',
  `area_code` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT '³ÇÊÐ´úÂë',
  `product_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '²úÆ·´úÂë',
  `app_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `product_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '²úÆ·Ãû³Æ',
  `price` int(6) DEFAULT NULL COMMENT '×Ê·Ñ(·Ö)',
  `app_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Ó¦ÓÃID',
  `dg_datetime` datetime DEFAULT NULL COMMENT '½»Ò×Ê±¼ä',
  `cp_id` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ºÏ×÷·½±àºÅ',
  `src_cp_id` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ºË¼õ·½±àºÅ',
  `sp_id` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `report_stat` int(1) DEFAULT '0',
  `report_times` int(2) DEFAULT '0',
  `closed_status` int(11) DEFAULT '0',
  `service_id` varchar(20) DEFAULT NULL,
  `un_datetime` datetime DEFAULT NULL,
  `pj_cp_id` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`,`phone`),
  UNIQUE KEY `trade_no` (`trade_no`),
  KEY `phone` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=1287823 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `h5_month_appinfo`
--

DROP TABLE IF EXISTS `h5_month_appinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h5_month_appinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(20) DEFAULT NULL,
  `appname` varchar(30) DEFAULT NULL,
  `appkey` varchar(50) DEFAULT NULL,
  `sp_id` varchar(8) DEFAULT NULL,
  `price` varchar(6) DEFAULT NULL,
  `paycode` varchar(20) DEFAULT NULL,
  `sub_appname` varchar(20) DEFAULT NULL,
  `sdk_appid` varchar(20) DEFAULT NULL,
  `sdk_paycode` varchar(20) DEFAULT NULL,
  `td_paycode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `h5_month_request`
--

DROP TABLE IF EXISTS `h5_month_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h5_month_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exdate` varchar(60) DEFAULT NULL,
  `phone` varchar(15) NOT NULL DEFAULT '',
  `province_id` varchar(4) DEFAULT NULL,
  `area_code` varchar(4) DEFAULT NULL,
  `product_id` varchar(30) DEFAULT NULL,
  `substat` int(1) DEFAULT NULL,
  `price` int(6) DEFAULT NULL,
  `cp_id` varchar(4) NOT NULL DEFAULT '',
  `pj_cp_id` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `sub_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=131766 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `icity_tf`
--

DROP TABLE IF EXISTS `icity_tf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icity_tf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tf_succ_ym` varchar(10) DEFAULT NULL,
  `cp_name` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `trade_no` varchar(30) DEFAULT NULL,
  `app_name` varchar(40) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `ex_time` varchar(20) DEFAULT NULL,
  `price` varchar(6) DEFAULT NULL,
  `tf_price` varchar(6) DEFAULT NULL,
  `tf_succ_time` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `pic_url` text NOT NULL,
  `del_stat` int(1) DEFAULT '0' COMMENT '0正常 1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5856 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ismp_sms_record`
--

DROP TABLE IF EXISTS `ismp_sms_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ismp_sms_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `correlator` varchar(40) DEFAULT NULL COMMENT '流水号',
  `content` varchar(40) DEFAULT NULL COMMENT '短信内容',
  `linkId` varchar(40) DEFAULT NULL,
  `op_type` varchar(32) DEFAULT NULL COMMENT '订购状态 1点播2包月3退订',
  `product_name` varchar(20) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `price` int(6) DEFAULT NULL COMMENT '资费(分)',
  `createtime` datetime DEFAULT NULL COMMENT '请求时间',
  `substat` int(11) DEFAULT NULL COMMENT '请求状态1000成功',
  `result` int(4) DEFAULT NULL COMMENT '1订购成功',
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `src_cp_id` varchar(4) DEFAULT NULL,
  `report_stat` int(1) DEFAULT '0' COMMENT '0 未发送 1已发送',
  `report_times` int(1) DEFAULT '0' COMMENT '发送给合作方次数',
  `closed_stat` int(1) DEFAULT '0' COMMENT '0不核减 1核减',
  `province_id` varchar(4) DEFAULT NULL,
  `area_code` varchar(4) DEFAULT NULL,
  `unsubtime` datetime DEFAULT NULL,
  `port` varchar(20) DEFAULT NULL,
  `ex_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_index` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `league_cut`
--

DROP TABLE IF EXISTS `league_cut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `league_cut` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `league_id` varchar(4) DEFAULT NULL COMMENT 'cp_id  or sp_id',
  `league_type` char(2) DEFAULT NULL COMMENT '''CP'' OR ''SP''',
  `service_type` varchar(10) DEFAULT NULL COMMENT '业务类型',
  `province_id` varchar(4) DEFAULT NULL COMMENT '省份代码',
  `cut_value` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `league_id` (`league_id`,`league_type`,`service_type`,`province_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `limit_auto`
--

DROP TABLE IF EXISTS `limit_auto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `limit_auto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `opentime` int(2) DEFAULT NULL,
  `closetime` int(2) DEFAULT NULL,
  `auto_date` varchar(20) DEFAULT NULL,
  `closeprice` int(10) DEFAULT NULL COMMENT '元单位',
  `opentimestat` int(1) DEFAULT '0' COMMENT '0未执行过 1已执行过不在操作',
  `closetimestat` int(1) DEFAULT '0' COMMENT '0未执行过 1已执行过不在操作',
  `pricestat` int(1) DEFAULT '0' COMMENT '0未执行过 1已执行过不在操作',
  `add_user` varchar(30) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `closenum` int(8) DEFAULT '10000' COMMENT '到量关闭条数',
  `numstat` int(1) DEFAULT '0' COMMENT '0未执行过 1已执行过不在操作',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lovecartoon_month_record`
--

DROP TABLE IF EXISTS `lovecartoon_month_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lovecartoon_month_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL COMMENT 'subscribe 订购 unsubscribe 退订',
  `sign` text,
  `phone` varchar(15) NOT NULL DEFAULT '',
  `province_id` varchar(4) DEFAULT NULL,
  `area_code` varchar(4) DEFAULT NULL,
  `product_id` varchar(30) DEFAULT NULL,
  `price` int(6) DEFAULT NULL,
  `substat` int(1) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `ex_datetime` datetime DEFAULT NULL,
  `cp_id` varchar(4) NOT NULL DEFAULT '',
  `src_cp_id` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `closed_status` varchar(4) DEFAULT '0',
  `un_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`phone`,`cp_id`),
  KEY `phone` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=5154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mobile_miscid`
--

DROP TABLE IF EXISTS `mobile_miscid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobile_miscid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(7) NOT NULL DEFAULT '',
  `province` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(20) NOT NULL DEFAULT '',
  `postcode` varchar(6) NOT NULL DEFAULT '',
  `miscid` varchar(4) NOT NULL DEFAULT '',
  `oper` varchar(10) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` int(11) DEFAULT '0',
  UNIQUE KEY `id` (`id`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM AUTO_INCREMENT=311730 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_type_cp`
--

DROP TABLE IF EXISTS `new_type_cp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_type_cp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(4) CHARACTER SET gbk DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cp_id` (`cp_id`,`sp_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COMMENT='coop_status  关闭触发  service_match 相关记录关闭';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinceid` varchar(10) NOT NULL DEFAULT '',
  `province` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `index` (`provinceid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `province_city`
--

DROP TABLE IF EXISTS `province_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '省份名称或者城市名称',
  `code` varchar(4) NOT NULL COMMENT '省份代码或者城市代码',
  `parent_code` varchar(4) DEFAULT NULL COMMENT '省份值为空，或者为省份代码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UQ_province_city_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=642 DEFAULT CHARSET=utf8 COMMENT='省份城市表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '省份名称或者城市名称',
  `code` varchar(4) NOT NULL COMMENT '省份代码或者城市代码',
  `parent_code` varchar(4) DEFAULT NULL COMMENT '省份值为空，或者为省份代码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UQ_province_city_code` (`code`) USING BTREE,
  KEY `parent_code` (`parent_code`) USING BTREE,
  CONSTRAINT `region_ibfk_1` FOREIGN KEY (`parent_code`) REFERENCES `region` (`code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=642 DEFAULT CHARSET=gbk COMMENT='省份城市表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `service_info`
--

DROP TABLE IF EXISTS `service_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(30) DEFAULT NULL COMMENT '业务id/道具id',
  `service_name` varchar(40) DEFAULT NULL COMMENT '道具名称',
  `content` varchar(255) DEFAULT '' COMMENT '短、彩指令',
  `ch_id` varchar(20) DEFAULT NULL COMMENT '游戏id,长号码',
  `sp_id` varchar(4) DEFAULT NULL,
  `service_type` varchar(10) DEFAULT NULL COMMENT '业务线类型',
  `price` int(5) DEFAULT NULL COMMENT '资费',
  `coop_date` date DEFAULT NULL COMMENT '合作时间',
  `coop_status` int(1) NOT NULL DEFAULT '0' COMMENT '0 开通 1关闭',
  `match_type` int(1) DEFAULT '0' COMMENT '0模糊匹配  1精确匹配（短彩匹配类型）',
  `channel_id` varchar(20) DEFAULT NULL,
  `td_content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ch_id` (`ch_id`) USING BTREE,
  KEY `sp_id` (`sp_id`) USING BTREE,
  KEY `service_type` (`service_type`) USING BTREE,
  KEY `service_id_2` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=gbk COMMENT='业务、道具表\r\n\r\n\r\ncoop_status  触发service_match  update\r\n价格修改是触发  s';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `service_info_comic_fee`
--

DROP TABLE IF EXISTS `service_info_comic_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_info_comic_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(100) DEFAULT '敢玩网' COMMENT '应用名称',
  `service_id` varchar(30) DEFAULT NULL COMMENT '业务id/道具id',
  `service_name` varchar(100) DEFAULT NULL COMMENT '道具名称',
  `fee_num` varchar(8) DEFAULT NULL COMMENT '计费道具编号',
  `content` varchar(255) DEFAULT '' COMMENT '短、彩指令',
  `sms_content` varchar(255) DEFAULT NULL,
  `ch_id` varchar(20) DEFAULT NULL COMMENT '游戏id,长号码',
  `cp_id` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `service_type` varchar(10) DEFAULT NULL COMMENT '业务线类型',
  `price` int(5) DEFAULT NULL COMMENT '资费',
  `coop_date` date DEFAULT NULL COMMENT '合作时间',
  `coop_status` int(1) NOT NULL DEFAULT '0' COMMENT '0 开通 1关闭',
  `match_type` int(1) DEFAULT '0' COMMENT '0模糊匹配  1精确匹配（短彩匹配类型）',
  `channel_id` varchar(20) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `pass_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ch_id` (`ch_id`) USING BTREE,
  KEY `sp_id` (`sp_id`) USING BTREE,
  KEY `service_type` (`service_type`),
  CONSTRAINT `service_info_comic_fee_ibfk_1` FOREIGN KEY (`sp_id`) REFERENCES `sp_info` (`sp_id`) ON UPDATE CASCADE,
  CONSTRAINT `service_info_comic_fee_ibfk_2` FOREIGN KEY (`service_type`) REFERENCES `service_type` (`service_type`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1105 DEFAULT CHARSET=gbk COMMENT='业务、道具表\r\n\r\n\r\ncoop_status  触发service_match  update\r\n价格修改是触发  s';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `service_match`
--

DROP TABLE IF EXISTS `service_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(22) CHARACTER SET gbk DEFAULT NULL,
  `service_id` varchar(30) CHARACTER SET gbk DEFAULT NULL,
  `cp_id` varchar(4) CHARACTER SET gbk DEFAULT NULL,
  `sp_id` varchar(4) CHARACTER SET gbk DEFAULT NULL,
  `ch_id` varchar(20) CHARACTER SET gbk DEFAULT NULL COMMENT '游戏频道号、长号码',
  `service_type` varchar(10) CHARACTER SET gbk DEFAULT NULL,
  `price` int(6) DEFAULT NULL,
  `coop_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 开通 1关闭',
  `start_coop_date` date DEFAULT NULL,
  `stop_coop_date` date DEFAULT NULL,
  `content_start` varchar(100) DEFAULT NULL,
  `content` varchar(100) CHARACTER SET gbk DEFAULT NULL COMMENT '上行内容',
  `rank` int(1) DEFAULT '0' COMMENT '匹配优先级',
  `match_type` int(1) DEFAULT '0' COMMENT '0模糊匹配  1精确匹配  （短彩匹配类型）',
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid` (`pid`) USING BTREE,
  UNIQUE KEY `unique_all` (`service_id`,`cp_id`,`sp_id`) USING BTREE,
  KEY `cp_id` (`cp_id`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  CONSTRAINT `service_match_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service_info` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `service_match_ibfk_2` FOREIGN KEY (`cp_id`) REFERENCES `cp_info` (`cp_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `service_type`
--

DROP TABLE IF EXISTS `service_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_type` varchar(10) DEFAULT NULL,
  `type_name` varchar(20) DEFAULT NULL,
  `sign` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `service_type` (`service_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=gbk COMMENT='业务线';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sp_info`
--

DROP TABLE IF EXISTS `sp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(4) CHARACTER SET gbk DEFAULT NULL,
  `sp_name` varchar(20) CHARACTER SET gbk DEFAULT NULL,
  `coop_id` varchar(10) CHARACTER SET gbk DEFAULT '' COMMENT 'sp分配的cpid',
  `pinyin` varchar(20) CHARACTER SET gbk DEFAULT NULL,
  `url_game_check` varchar(200) CHARACTER SET gbk DEFAULT NULL,
  `url_game_purchase` varchar(200) CHARACTER SET gbk DEFAULT NULL,
  `sourceDeviceCode` varchar(20) DEFAULT NULL COMMENT '用户名',
  `sharedSecret` varchar(20) DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sp_id` (`sp_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_admin_class`
--

DROP TABLE IF EXISTS `tb_admin_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_admin_class` (
  `classid` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(100) DEFAULT NULL,
  `classpid` smallint(8) DEFAULT NULL,
  `classurl` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `orders` int(1) NOT NULL DEFAULT '0',
  `font` int(1) NOT NULL DEFAULT '0',
  `target` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_admin_dept`
--

DROP TABLE IF EXISTS `tb_admin_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_admin_dept` (
  `admin_dept_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `admin_dept_name` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_admins`
--

DROP TABLE IF EXISTS `tb_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_admins` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(20) DEFAULT NULL,
  `admin_password` varchar(50) DEFAULT NULL,
  `admin_dept` varchar(10) DEFAULT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  `admin_gender` varchar(5) DEFAULT NULL,
  `admin_tel` varchar(20) DEFAULT NULL,
  `admin_email` varchar(50) DEFAULT NULL,
  `admin_pri` text CHARACTER SET utf8,
  `in_date` date NOT NULL DEFAULT '0000-00-00',
  `in_time` time NOT NULL DEFAULT '00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `adduser` varchar(40) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `username` (`admin_username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_loginlog`
--

DROP TABLE IF EXISTS `tb_loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `logintime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(20) NOT NULL DEFAULT '',
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9895 DEFAULT CHARSET=gbk COMMENT='后台登陆记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_menu_privilege`
--

DROP TABLE IF EXISTS `tb_menu_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_menu_privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `top` int(11) NOT NULL,
  `sub` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_top` (`admin_id`,`top`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=695 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_phone1`
--

DROP TABLE IF EXISTS `temp_phone1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_phone1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `province` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `datetime` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `servicename` varchar(30) CHARACTER SET gbk COLLATE gbk_bin DEFAULT NULL,
  `price` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `channame` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `channame1` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `cpname` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `area_code` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index` (`phone`,`servicename`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=455876 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_phone2`
--

DROP TABLE IF EXISTS `temp_phone2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_phone2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `province` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(8) CHARACTER SET latin1 DEFAULT NULL,
  `datetime` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `servicename` varchar(30) CHARACTER SET gbk COLLATE gbk_bin DEFAULT NULL,
  `price` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `channame` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `channame1` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `cpname` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index` (`phone`,`servicename`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=394 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_cpn`
--

DROP TABLE IF EXISTS `ts_cpn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_cpn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  `upload_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_cpn_info`
--

DROP TABLE IF EXISTS `ts_cpn_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_cpn_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `sl_date` date DEFAULT NULL,
  `cpn` varchar(20) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `dg_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_upload`
--

DROP TABLE IF EXISTS `ts_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) DEFAULT NULL COMMENT '文件名',
  `remark` text COMMENT '备注',
  `upload_date` datetime DEFAULT NULL COMMENT '上传时间',
  `upload_user` varchar(10) DEFAULT NULL COMMENT '上传人',
  `service_type` varchar(10) DEFAULT NULL COMMENT '业务线类型',
  `sp_id` varchar(4) DEFAULT NULL COMMENT 'sp编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_upload_info`
--

DROP TABLE IF EXISTS `ts_upload_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_upload_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL COMMENT '来源于ts_upload id',
  `trade_no` varchar(40) DEFAULT NULL COMMENT '订单号',
  `accept_date` date DEFAULT NULL COMMENT '受理时间',
  `accept_dept` varchar(50) DEFAULT NULL COMMENT '受理部门',
  `cp_name` varchar(20) DEFAULT NULL COMMENT 'cp简称',
  `app_name` varchar(50) DEFAULT NULL COMMENT '应用名称',
  `ts_subject` text COMMENT '工单主题',
  `ts_phone` varchar(20) DEFAULT NULL COMMENT '投诉号码',
  `ts_provice` varchar(20) DEFAULT NULL COMMENT '归属省份',
  `accept_type` varchar(50) DEFAULT NULL COMMENT '受理方式',
  `trade_type` varchar(20) DEFAULT NULL COMMENT '订单类型',
  `ts_content` text COMMENT '投诉内容',
  `service_type` varchar(20) DEFAULT NULL COMMENT '业务线类型',
  `sp_id` varchar(4) DEFAULT NULL COMMENT '归属公司',
  PRIMARY KEY (`id`),
  KEY `ts_phone` (`ts_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=6020 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_upload_info_result`
--

DROP TABLE IF EXISTS `ts_upload_info_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_upload_info_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL COMMENT '来源于ts_upload id',
  `trade_no` varchar(40) DEFAULT NULL COMMENT '订单号',
  `accept_date` varchar(20) DEFAULT NULL COMMENT '受理时间',
  `accept_dept` varchar(50) DEFAULT NULL COMMENT '受理部门',
  `cp_name` varchar(20) DEFAULT NULL COMMENT 'cp简称',
  `app_name` varchar(50) DEFAULT NULL COMMENT '应用名称',
  `ts_subject` text COMMENT '工单主题',
  `ts_phone` varchar(20) DEFAULT NULL COMMENT '投诉号码',
  `ts_provice` varchar(20) DEFAULT NULL COMMENT '归属省份',
  `accept_type` varchar(50) DEFAULT NULL COMMENT '受理方式',
  `trade_type` varchar(20) DEFAULT NULL COMMENT '订单类型',
  `ts_content` text COMMENT '投诉内容',
  `service_type` varchar(20) DEFAULT NULL COMMENT '业务线类型',
  `sp_id` varchar(4) DEFAULT NULL COMMENT '归属公司',
  `res_province_id` varchar(4) DEFAULT NULL,
  `res_area_code` varchar(4) DEFAULT NULL,
  `res_app_name` varchar(40) DEFAULT NULL,
  `res_product_name` varchar(200) DEFAULT NULL,
  `res_price` int(6) DEFAULT NULL,
  `res_ex_datetime` datetime DEFAULT NULL,
  `res_cp_id` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ts_phone` (`ts_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=8465 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vc_sdk_appinfo`
--

DROP TABLE IF EXISTS `vc_sdk_appinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vc_sdk_appinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(30) DEFAULT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `paycode` varchar(30) DEFAULT NULL,
  `sp_id` varchar(8) DEFAULT NULL,
  `price` varchar(6) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL COMMENT '1点播  2包月',
  `appname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vc_sdk_record`
--

DROP TABLE IF EXISTS `vc_sdk_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vc_sdk_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(32) DEFAULT NULL COMMENT '交易标识',
  `type` varchar(2) DEFAULT NULL COMMENT '1点播 2包月 3退订',
  `pay_code` varchar(32) DEFAULT NULL COMMENT '计费代码',
  `mobile` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `price` int(6) DEFAULT NULL COMMENT '资费(分)',
  `createtime` datetime DEFAULT NULL COMMENT '请求时间',
  `status` int(11) DEFAULT NULL COMMENT '0:扣费成功,1:扣费失败,3:退订',
  `appid` varchar(32) DEFAULT NULL COMMENT '计费代码',
  `exdate` varchar(100) DEFAULT NULL COMMENT '透传字段',
  `sign` text COMMENT '签名',
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `report_stat` int(1) DEFAULT '0' COMMENT '0 未发送 1已发送',
  `report_times` int(1) DEFAULT '0' COMMENT '发送给合作方次数',
  `closed_stat` int(1) DEFAULT '0' COMMENT '0不核减 1核减',
  `province_id` varchar(4) DEFAULT NULL,
  `area_code` varchar(4) DEFAULT NULL,
  `unsubtime` datetime DEFAULT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `src_cp_id` varchar(4) DEFAULT NULL,
  `app_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_index` (`mobile`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vc_sms_charge_mo`
--

DROP TABLE IF EXISTS `vc_sms_charge_mo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vc_sms_charge_mo` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `sign` text,
  `phone` varchar(11) DEFAULT NULL,
  `ordersn` varchar(40) DEFAULT NULL,
  `smscontent` varchar(100) DEFAULT NULL,
  `chargeno` varchar(20) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `ex_time` datetime DEFAULT NULL,
  `status` varchar(4) NOT NULL DEFAULT '',
  `province_id` varchar(4) DEFAULT NULL,
  `area_code` varchar(4) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `app_name` varchar(40) DEFAULT NULL,
  `product_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `price` int(6) DEFAULT NULL,
  `fee_num` varchar(10) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT 'COMIC_FEE',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5112279 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vc_sms_charge_mo_succ`
--

DROP TABLE IF EXISTS `vc_sms_charge_mo_succ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vc_sms_charge_mo_succ` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `sign` text,
  `phone` varchar(11) DEFAULT NULL,
  `ordersn` varchar(40) DEFAULT NULL,
  `smscontent` varchar(100) DEFAULT NULL,
  `chargeno` varchar(20) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `ex_time` datetime DEFAULT NULL,
  `status` varchar(4) NOT NULL DEFAULT '',
  `province_id` varchar(4) DEFAULT NULL,
  `area_code` varchar(4) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `app_name` varchar(40) DEFAULT NULL,
  `product_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `price` int(6) DEFAULT NULL,
  `fee_num` varchar(10) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT 'COMIC_FEE',
  PRIMARY KEY (`id`),
  KEY `index` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5089188 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vc_sms_charge_record`
--

DROP TABLE IF EXISTS `vc_sms_charge_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vc_sms_charge_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sign` text CHARACTER SET utf8 COMMENT '¼ÓÃÜºóÑéÖ¤',
  `behavior` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ÐÐÎª (¶©¹º order ÍË¶© unsubscribe)',
  `trade_status` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT '½»Ò××´Ì¬¡£(0 ³É¹¦)',
  `trade_no` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '½»Ò×Á÷Ë®ºÅ',
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'ÊÖ»úºÅÂë',
  `province_id` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Ê¡·Ý´úÂë',
  `area_code` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT '³ÇÊÐ´úÂë',
  `product_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '²úÆ·´úÂë',
  `app_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `product_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '²úÆ·Ãû³Æ',
  `price` int(6) DEFAULT NULL COMMENT '×Ê·Ñ(·Ö)',
  `app_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Ó¦ÓÃID',
  `fee_num` varchar(10) DEFAULT NULL,
  `content` text CHARACTER SET utf8 COMMENT '·¢ËÍÄÚÈÝ(µã²¥Âë)¶ÔÓ¦Extension',
  `status` int(1) DEFAULT NULL COMMENT '0Ç©ÃûÑéÖ¤³É¹¦£¬1ÑéÖ¤Ê§°Ü,2¿ÛÁ¿',
  `ex_datetime` datetime DEFAULT NULL COMMENT '½»Ò×Ê±¼ä',
  `cp_id` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ºÏ×÷·½±àºÅ',
  `src_cp_id` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ºË¼õ·½±àºÅ',
  `sp_id` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `sync_status` int(1) DEFAULT NULL COMMENT 'Í¬²½×´Ì¬ 1³É¹¦ 0Ê§°Ü',
  `sync_datetime` datetime DEFAULT NULL COMMENT 'Í¬²½Ê±¼ä',
  `sync_times` int(2) DEFAULT NULL COMMENT 'Í¬²½´ÎÊý£¬×î¸ßÎª5´Î£¬³¬¹ý²»ÔÚÍ¬²½',
  `service_id` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `ch_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `src_trade_status` varchar(20) DEFAULT '',
  `service_type` varchar(20) DEFAULT 'COMIC_FEE',
  PRIMARY KEY (`id`,`phone`),
  UNIQUE KEY `trade_no` (`trade_no`),
  KEY `phone` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=3223233 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vc_sms_charge_record_succ`
--

DROP TABLE IF EXISTS `vc_sms_charge_record_succ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vc_sms_charge_record_succ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sign` text CHARACTER SET utf8 COMMENT '¼ÓÃÜºóÑéÖ¤',
  `behavior` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ÐÐÎª (¶©¹º order ÍË¶© unsubscribe)',
  `trade_status` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT '½»Ò××´Ì¬¡£(0 ³É¹¦)',
  `trade_no` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '½»Ò×Á÷Ë®ºÅ',
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'ÊÖ»úºÅÂë',
  `province_id` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Ê¡·Ý´úÂë',
  `area_code` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT '³ÇÊÐ´úÂë',
  `product_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '²úÆ·´úÂë',
  `app_name` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `product_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '²úÆ·Ãû³Æ',
  `price` int(6) DEFAULT NULL COMMENT '×Ê·Ñ(·Ö)',
  `app_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Ó¦ÓÃID',
  `fee_num` varchar(10) DEFAULT NULL,
  `content` text CHARACTER SET utf8 COMMENT '·¢ËÍÄÚÈÝ(µã²¥Âë)¶ÔÓ¦Extension',
  `status` int(1) DEFAULT NULL COMMENT '0Ç©ÃûÑéÖ¤³É¹¦£¬1ÑéÖ¤Ê§°Ü,2¿ÛÁ¿',
  `ex_datetime` datetime DEFAULT NULL COMMENT '½»Ò×Ê±¼ä',
  `cp_id` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ºÏ×÷·½±àºÅ',
  `src_cp_id` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ºË¼õ·½±àºÅ',
  `sp_id` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `sync_status` int(1) DEFAULT NULL COMMENT 'Í¬²½×´Ì¬ 0³É¹¦ 1Ê§°Ü',
  `sync_datetime` datetime DEFAULT NULL COMMENT 'Í¬²½Ê±¼ä',
  `sync_times` int(2) DEFAULT NULL COMMENT 'Í¬²½´ÎÊý£¬×î¸ßÎª5´Î£¬³¬¹ý²»ÔÚÍ¬²½',
  `service_id` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `ch_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `src_trade_status` varchar(20) DEFAULT '',
  `service_type` varchar(20) NOT NULL DEFAULT 'COMIC_FEE',
  PRIMARY KEY (`id`,`phone`),
  UNIQUE KEY `trade_no` (`trade_no`),
  KEY `phone` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=3210269 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vc_sms_month_appinfo`
--

DROP TABLE IF EXISTS `vc_sms_month_appinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vc_sms_month_appinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(20) DEFAULT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `sp_id` varchar(8) DEFAULT NULL,
  `price` varchar(6) DEFAULT NULL,
  `dg_content` varchar(40) DEFAULT NULL,
  `dg_prot` varchar(20) DEFAULT NULL,
  `td_content` varchar(40) DEFAULT NULL,
  `td_prot` varchar(20) DEFAULT NULL,
  `service_name` varchar(20) DEFAULT NULL,
  `app_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vc_sms_month_record`
--

DROP TABLE IF EXISTS `vc_sms_month_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vc_sms_month_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(32) DEFAULT NULL COMMENT '交易标识',
  `type` varchar(32) DEFAULT NULL COMMENT '订购状态',
  `goodssn` varchar(32) DEFAULT NULL COMMENT '商品标识',
  `sms_content` varchar(255) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `price` int(6) DEFAULT NULL COMMENT '资费(分)',
  `createtime` datetime DEFAULT NULL COMMENT '请求时间',
  `substat` int(11) DEFAULT NULL COMMENT '请求状态1000成功',
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `report_stat` int(1) DEFAULT '0' COMMENT '0 未发送 1已发送',
  `report_times` int(1) DEFAULT '0' COMMENT '发送给合作方次数',
  `closed_stat` int(1) DEFAULT '0' COMMENT '0不核减 1核减',
  `province_id` varchar(4) DEFAULT NULL,
  `area_code` varchar(4) DEFAULT NULL,
  `unsubtime` datetime DEFAULT NULL,
  `product_name` varchar(20) DEFAULT NULL,
  `src_cp_id` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_index` (`mobile`) USING BTREE,
  KEY `goodsn` (`goodssn`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=189596 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `white_list`
--

DROP TABLE IF EXISTS `white_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `white_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) DEFAULT NULL COMMENT '手机号',
  `phone_md5` varchar(32) DEFAULT NULL COMMENT '加密后的手机号',
  `remark` varchar(20) DEFAULT NULL COMMENT '备注',
  `addate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24874 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `daily_by_report_view`
--

/*!50001 DROP TABLE IF EXISTS `daily_by_report_view`*/;
/*!50001 DROP VIEW IF EXISTS `daily_by_report_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`manage`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `daily_by_report_view` AS select `daily_by_report`.`service_id` AS `service_id`,`daily_by_report`.`cp_id` AS `cp_id`,`daily_by_report`.`sp_id` AS `sp_id`,`daily_by_report`.`province_id` AS `province_id`,`daily_by_report`.`service_type` AS `service_type`,`daily_by_report`.`nums` AS `nums`,`daily_by_report`.`count_date` AS `count_date`,`daily_by_report`.`type` AS `type`,`daily_by_report`.`income` AS `income` from `daily_by_report` union select `daily_by_report_today`.`service_id` AS `service_id`,`daily_by_report_today`.`cp_id` AS `cp_id`,`daily_by_report_today`.`sp_id` AS `sp_id`,`daily_by_report_today`.`province_id` AS `province_id`,`daily_by_report_today`.`service_type` AS `service_type`,`daily_by_report_today`.`nums` AS `nums`,`daily_by_report_today`.`count_date` AS `count_date`,`daily_by_report_today`.`type` AS `type`,`daily_by_report_today`.`income` AS `income` from `daily_by_report_today` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-07 17:55:43
