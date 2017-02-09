-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: dm_cmcc_ddo
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `indate` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `adduser` varchar(40) DEFAULT NULL,
  `face` varchar(100) DEFAULT NULL COMMENT '头像',
  `loginci` smallint(6) DEFAULT '0' COMMENT '登录次数',
  `lastdt` datetime DEFAULT NULL,
  `style` varchar(20) DEFAULT NULL COMMENT '皮肤颜色',
  `passkey` varchar(50) DEFAULT NULL COMMENT '密码匹配唯一值',
  `utype` tinyint(50) DEFAULT '0' COMMENT '用户类型0普通,1管理员',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_black_list`
--

DROP TABLE IF EXISTS `app_black_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_black_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imsi` varchar(15) DEFAULT NULL COMMENT '卡号',
  `remark` varchar(40) DEFAULT NULL COMMENT '备注',
  `addate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mobile` (`imsi`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4602425 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_info`
--

DROP TABLE IF EXISTS `app_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(20) DEFAULT NULL,
  `appname` varchar(30) DEFAULT NULL,
  `key` varchar(50) DEFAULT NULL,
  `cp_id` varchar(8) DEFAULT NULL,
  `sp_id` varchar(8) DEFAULT NULL,
  `sid` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_pay_record`
--

DROP TABLE IF EXISTS `app_pay_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_pay_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgType` varchar(32) DEFAULT NULL COMMENT '请求类型',
  `appid` varchar(50) DEFAULT NULL COMMENT 'app应用',
  `channelId` varchar(15) DEFAULT NULL COMMENT '渠道号',
  `imsi` varchar(15) DEFAULT NULL COMMENT '手机串号',
  `imei` varchar(15) DEFAULT NULL COMMENT '设备识别码',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `cpparam` varchar(50) DEFAULT NULL COMMENT '透传字段',
  `clientip` varchar(10) DEFAULT NULL COMMENT '客户端ip',
  `nyurl` varchar(150) DEFAULT NULL COMMENT '同步地址',
  `subtime` varchar(20) DEFAULT NULL COMMENT '请求时间',
  `result` varchar(11) DEFAULT '1' COMMENT '0表示计费成功，其它为失败',
  `deltime` varchar(20) DEFAULT NULL COMMENT '扣费时间',
  `report_stat` int(1) DEFAULT '0' COMMENT '0 未发送 1已发送',
  `report_times` int(1) DEFAULT '0' COMMENT '发送给合作方次数',
  `seqId` varchar(20) DEFAULT NULL,
  `req_message` text,
  `code_message` varchar(80) DEFAULT NULL,
  `phoneNum` varchar(20) DEFAULT NULL,
  `province_id` varchar(4) DEFAULT '0000',
  `area_code` varchar(4) DEFAULT '000',
  `src_appid` varchar(50) DEFAULT NULL,
  `src_price` int(11) DEFAULT NULL,
  `src_channelId` varchar(15) DEFAULT NULL,
  `closd_stat` varchar(4) DEFAULT '0' COMMENT '核减状态',
  `cp_id` varchar(4) DEFAULT NULL,
  `src_cp_id` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `src_sp_id` varchar(4) DEFAULT NULL,
  `result_message` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imsi_index` (`imsi`) USING BTREE,
  KEY `seqid` (`seqId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=19426798 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_pay_record_succ`
--

DROP TABLE IF EXISTS `app_pay_record_succ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_pay_record_succ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgType` varchar(32) DEFAULT NULL COMMENT '请求类型',
  `appid` varchar(50) DEFAULT NULL COMMENT 'app应用',
  `channelId` varchar(15) DEFAULT NULL COMMENT '渠道号',
  `imsi` varchar(15) DEFAULT NULL COMMENT '手机串号',
  `imei` varchar(15) DEFAULT NULL COMMENT '设备识别码',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `cpparam` varchar(50) DEFAULT NULL COMMENT '透传字段',
  `clientip` varchar(10) DEFAULT NULL COMMENT '客户端ip',
  `nyurl` varchar(150) DEFAULT NULL COMMENT '同步地址',
  `subtime` varchar(20) DEFAULT NULL COMMENT '请求时间',
  `result` varchar(11) DEFAULT '1' COMMENT '0表示计费成功，其它为失败',
  `deltime` varchar(20) DEFAULT NULL COMMENT '扣费时间',
  `report_stat` int(1) DEFAULT '0' COMMENT '0 未发送 1已发送',
  `report_times` int(1) DEFAULT '0' COMMENT '发送给合作方次数',
  `seqId` varchar(20) DEFAULT NULL,
  `req_message` text,
  `code_message` varchar(80) DEFAULT NULL,
  `phoneNum` varchar(20) NOT NULL DEFAULT '',
  `province_id` varchar(4) DEFAULT '0000',
  `area_code` varchar(4) DEFAULT '000',
  `src_appid` varchar(50) DEFAULT NULL,
  `src_price` int(11) DEFAULT NULL,
  `src_channelId` varchar(15) DEFAULT NULL,
  `closd_stat` varchar(4) DEFAULT '0' COMMENT '核减状态',
  `cp_id` varchar(4) DEFAULT NULL,
  `src_cp_id` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `src_sp_id` varchar(4) DEFAULT NULL,
  `result_message` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`,`phoneNum`),
  KEY `seqId` (`seqId`),
  KEY `phone` (`phoneNum`) USING BTREE,
  KEY `imsi_index` (`imsi`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=19092729 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `app_pay_record_view`
--

DROP TABLE IF EXISTS `app_pay_record_view`;
/*!50001 DROP VIEW IF EXISTS `app_pay_record_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `app_pay_record_view` (
 `id` tinyint NOT NULL,
  `msgType` tinyint NOT NULL,
  `appid` tinyint NOT NULL,
  `channelId` tinyint NOT NULL,
  `imsi` tinyint NOT NULL,
  `imei` tinyint NOT NULL,
  `price` tinyint NOT NULL,
  `cpparam` tinyint NOT NULL,
  `clientip` tinyint NOT NULL,
  `nyurl` tinyint NOT NULL,
  `subtime` tinyint NOT NULL,
  `result` tinyint NOT NULL,
  `deltime` tinyint NOT NULL,
  `report_stat` tinyint NOT NULL,
  `report_times` tinyint NOT NULL,
  `seqId` tinyint NOT NULL,
  `req_message` tinyint NOT NULL,
  `code_message` tinyint NOT NULL,
  `phoneNum` tinyint NOT NULL,
  `province_id` tinyint NOT NULL,
  `area_code` tinyint NOT NULL,
  `src_appid` tinyint NOT NULL,
  `src_price` tinyint NOT NULL,
  `src_channelId` tinyint NOT NULL,
  `closd_stat` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `app_record`
--

DROP TABLE IF EXISTS `app_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(32) DEFAULT NULL COMMENT '交易标识',
  `imsi` varchar(15) DEFAULT NULL COMMENT '手机串号',
  `imei` varchar(15) DEFAULT NULL COMMENT '设备识别码',
  `mobile` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `sub_stat` int(11) DEFAULT NULL COMMENT '请求状态0成功',
  `result` varchar(11) DEFAULT NULL COMMENT '0表示计费成功，其它为失败',
  `cost` int(8) NOT NULL DEFAULT '0' COMMENT '扣费金额',
  `subtime` varchar(20) DEFAULT NULL COMMENT '请求时间',
  `deltime` varchar(20) DEFAULT NULL COMMENT '扣费时间',
  `itemId` varchar(15) DEFAULT NULL COMMENT '咪咕计费点',
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `report_stat` int(1) DEFAULT '0' COMMENT '0 未发送 1已发送',
  `report_times` int(1) DEFAULT '0' COMMENT '发送给合作方次数',
  `closed_stat` int(1) NOT NULL DEFAULT '0' COMMENT '0不核减 1核减',
  `cpparam` varchar(20) DEFAULT NULL,
  `app_id` varchar(15) DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `area_code` varchar(4) DEFAULT NULL,
  `seqId` varchar(20) DEFAULT NULL,
  `req_message` varchar(4) DEFAULT NULL,
  `code_message` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imsi_index` (`imsi`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_record_succ`
--

DROP TABLE IF EXISTS `app_record_succ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_record_succ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(32) DEFAULT NULL COMMENT '交易标识',
  `imsi` varchar(15) DEFAULT NULL COMMENT '手机串号',
  `imei` varchar(15) DEFAULT NULL COMMENT '设备识别码',
  `mobile` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `sub_stat` int(11) DEFAULT NULL COMMENT '请求状态0成功',
  `result` varchar(11) DEFAULT NULL COMMENT '0表示计费成功，其它为失败',
  `cost` int(8) NOT NULL DEFAULT '0' COMMENT '扣费金额',
  `subtime` varchar(20) DEFAULT NULL COMMENT '请求时间',
  `deltime` varchar(20) DEFAULT NULL COMMENT '扣费时间',
  `itemId` varchar(15) DEFAULT NULL COMMENT '咪咕计费点',
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `report_stat` int(1) DEFAULT '0' COMMENT '0 未发送 1已发送',
  `report_times` int(1) DEFAULT '0' COMMENT '发送给合作方次数',
  `closed_stat` int(1) NOT NULL DEFAULT '0' COMMENT '0不核减 1核减',
  `cpparam` varchar(20) DEFAULT NULL,
  `app_id` varchar(15) DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `area_code` varchar(4) DEFAULT NULL,
  `seqId` varchar(20) DEFAULT NULL,
  `req_message` varchar(4) DEFAULT NULL,
  `code_message` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imsi_index` (`imsi`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2027705 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_sdk_record`
--

DROP TABLE IF EXISTS `app_sdk_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_sdk_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(32) DEFAULT NULL COMMENT '交易标识',
  `pid` varchar(10) DEFAULT NULL COMMENT '计费点代码',
  `imsi` varchar(15) DEFAULT NULL COMMENT '手机串号',
  `imei` varchar(15) DEFAULT NULL COMMENT '设备识别码',
  `mobile` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `ua` varchar(20) DEFAULT NULL COMMENT '手机型号',
  `os` varchar(20) DEFAULT NULL COMMENT '版本号',
  `ip` varchar(20) DEFAULT NULL COMMENT 'ip',
  `sub_stat` int(11) DEFAULT NULL COMMENT '请求状态0成功',
  `sub_msg` varchar(20) DEFAULT NULL COMMENT '上行返回说明',
  `sub_port` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL COMMENT '类型',
  `result` varchar(11) DEFAULT NULL COMMENT '0表示计费成功，其它为失败',
  `msg` varchar(20) DEFAULT NULL COMMENT '返回说明',
  `cost` int(8) DEFAULT '0' COMMENT '扣费金额',
  `subtime` varchar(20) DEFAULT NULL COMMENT '请求时间',
  `deltime` varchar(20) DEFAULT NULL COMMENT '扣费时间',
  `itemId` varchar(15) DEFAULT NULL COMMENT '咪咕计费点',
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `report_stat` int(1) DEFAULT '0' COMMENT '0 未发送 1已发送',
  `report_times` int(1) DEFAULT '0' COMMENT '发送给合作方次数',
  `closed_stat` int(1) DEFAULT '0' COMMENT '0不核减 1核减',
  `chid` varchar(10) DEFAULT NULL,
  `cpparam` varchar(20) DEFAULT NULL,
  `app_id` varchar(15) DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `area_code` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imsi_index` (`imsi`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_service_info`
--

DROP TABLE IF EXISTS `app_service_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_service_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(4) DEFAULT NULL,
  `app_cpid` varchar(10) CHARACTER SET gbk DEFAULT NULL COMMENT '接口cp',
  `pid` varchar(20) CHARACTER SET gbk DEFAULT NULL COMMENT '接口pid',
  `pidremark` varchar(255) CHARACTER SET gbk DEFAULT '' COMMENT '价格',
  `pidremark2` varchar(20) CHARACTER SET gbk DEFAULT NULL COMMENT '道具代码',
  `app_id` varchar(30) DEFAULT NULL,
  `itemId` varchar(20) CHARACTER SET gbk DEFAULT NULL COMMENT '指令编号',
  `price` int(5) DEFAULT NULL COMMENT '资费',
  `coop_date` date DEFAULT NULL COMMENT '合作时间',
  `coop_status` int(1) NOT NULL DEFAULT '0' COMMENT '0 开通 1关闭',
  `itemSafeLevel` varchar(20) DEFAULT NULL,
  `itemMethod` varchar(20) DEFAULT NULL,
  `itemExt` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_white_list`
--

DROP TABLE IF EXISTS `app_white_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_white_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imsi` varchar(15) DEFAULT NULL COMMENT '卡号',
  `remark` varchar(40) DEFAULT NULL COMMENT '备注',
  `addate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mobile` (`imsi`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4602425 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=MyISAM AUTO_INCREMENT=2008248 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `channel_month_appinfo`
--

DROP TABLE IF EXISTS `channel_month_appinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_month_appinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(20) DEFAULT NULL,
  `appname` varchar(30) DEFAULT NULL,
  `appkey` varchar(50) DEFAULT NULL,
  `cp_id` varchar(8) DEFAULT NULL,
  `sp_id` varchar(8) DEFAULT NULL,
  `sid` varchar(8) DEFAULT NULL,
  `price` varchar(6) DEFAULT NULL,
  `paycode` varchar(20) DEFAULT NULL,
  `sub_appname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `channel_month_cp_cooperate`
--

DROP TABLE IF EXISTS `channel_month_cp_cooperate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_month_cp_cooperate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(4) CHARACTER SET gbk DEFAULT NULL COMMENT '合作方代码',
  `sp_id` varchar(4) DEFAULT NULL COMMENT '中文名',
  `coop_status` int(1) NOT NULL DEFAULT '0' COMMENT '0-开通 1-关闭',
  `coop_date` date DEFAULT NULL COMMENT '合作日期',
  `turn_on_time` time DEFAULT NULL COMMENT '合作开始时间',
  `turn_off_time` time DEFAULT NULL COMMENT '合作关闭时间',
  `url_report` varchar(200) DEFAULT NULL,
  `url_mo` varchar(200) DEFAULT NULL COMMENT '短信MO同步地址',
  `authkey` varchar(20) DEFAULT NULL COMMENT '鉴权密钥',
  `admin_name` varchar(20) DEFAULT NULL COMMENT '操作人',
  `admin_time` datetime DEFAULT NULL COMMENT '操作时间',
  `is_m` int(11) NOT NULL COMMENT '是否同步多条：1：是；0：否',
  `is_authkey` int(1) DEFAULT '0' COMMENT '0不鉴权  1需鉴权',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='coop_status  关闭触发  service_match 相关记录关闭';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `channel_month_cp_info`
--

DROP TABLE IF EXISTS `channel_month_cp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_month_cp_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(4) CHARACTER SET gbk DEFAULT NULL COMMENT '合作方代码',
  `cp_cn` varchar(20) DEFAULT NULL COMMENT '中文名',
  `cp_en` varchar(20) DEFAULT NULL COMMENT '英语名、拼音',
  `parent_cp` varchar(200) DEFAULT NULL COMMENT '归属父级合作方',
  `src_cp_id` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cp_id` (`cp_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='coop_status  关闭触发  service_match 相关记录关闭';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `channel_month_cp_province`
--

DROP TABLE IF EXISTS `channel_month_cp_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_month_cp_province` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cpid` varchar(4) DEFAULT NULL COMMENT '合作方',
  `limit_miscid` varchar(4) DEFAULT NULL,
  `close_stat` int(1) DEFAULT '0' COMMENT '0不关闭省份 1关闭省份',
  `spid` varchar(4) DEFAULT NULL COMMENT '公司',
  `mod_time` datetime DEFAULT NULL,
  `mod_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `channel_month_order`
--

DROP TABLE IF EXISTS `channel_month_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_month_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgtype` varchar(60) DEFAULT NULL,
  `updatetype` varchar(4) DEFAULT NULL,
  `updatedesc` varchar(200) DEFAULT NULL,
  `appid` varchar(20) DEFAULT NULL,
  `paycode` varchar(20) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `fee` int(8) DEFAULT '0',
  `channelid` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `orderid` varchar(50) DEFAULT NULL,
  `ordertype` varchar(3) DEFAULT NULL,
  `ordercycle` varchar(3) DEFAULT NULL,
  `chargetime` datetime DEFAULT NULL,
  `effective_starttime` datetime DEFAULT NULL,
  `effective_endtime` datetime DEFAULT NULL,
  `istry` varchar(1) DEFAULT NULL,
  `rentsuccess` varchar(4) DEFAULT NULL,
  `faildesc` varchar(200) DEFAULT NULL,
  `report_stat` varchar(4) DEFAULT '0',
  `report_times` varchar(4) DEFAULT '0',
  `unsubtime` datetime DEFAULT NULL,
  `province_id` varchar(6) DEFAULT NULL,
  `area_code` varchar(6) DEFAULT NULL,
  `unorderid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=1109386 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `channel_month_request`
--

DROP TABLE IF EXISTS `channel_month_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_month_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requestid` varchar(50) DEFAULT NULL,
  `appid` varchar(20) DEFAULT NULL,
  `paycode` varchar(20) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `channelid` varchar(20) DEFAULT NULL,
  `signature` varchar(50) DEFAULT NULL,
  `cp_id` varchar(6) DEFAULT NULL,
  `sp_id` varchar(6) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `seqId` varchar(20) DEFAULT NULL,
  `req_message` varchar(80) DEFAULT NULL,
  `code_message` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seqid` (`seqId`) USING BTREE,
  KEY `index` (`requestid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2647281 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `channelid`
--

DROP TABLE IF EXISTS `channelid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channelid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(10) NOT NULL,
  `cp_id` varchar(10) NOT NULL,
  `channelid` varchar(20) NOT NULL,
  `status` int(1) DEFAULT '1' COMMENT '0关闭  1开通',
  `opentime` varchar(20) DEFAULT NULL COMMENT '开通时间',
  `closetime` varchar(20) DEFAULT NULL COMMENT '关闭时间',
  `openuser` varchar(20) DEFAULT NULL COMMENT '开通人',
  `closeuser` varchar(20) DEFAULT NULL COMMENT '关闭人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `closed_set_copy`
--

DROP TABLE IF EXISTS `closed_set_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `closed_set_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` int(4) NOT NULL,
  `cp_id` int(4) NOT NULL,
  `closed_per` int(3) NOT NULL COMMENT '核减比例',
  `province_id` varchar(4) NOT NULL COMMENT '省份代码',
  `begin_price` int(11) NOT NULL COMMENT '核减起始金额(分)',
  `stat` int(1) NOT NULL COMMENT '1 开通  0关闭',
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=735 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cp_cooperate`
--

DROP TABLE IF EXISTS `cp_cooperate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_cooperate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(4) CHARACTER SET gbk DEFAULT NULL COMMENT '合作方代码',
  `sp_id` varchar(4) DEFAULT NULL COMMENT '中文名',
  `coop_status` int(1) NOT NULL DEFAULT '0' COMMENT '0-开通 1-关闭',
  `coop_date` date DEFAULT NULL COMMENT '合作日期',
  `turn_on_time` time DEFAULT NULL COMMENT '合作开始时间',
  `turn_off_time` time DEFAULT NULL COMMENT '合作关闭时间',
  `url_report` varchar(200) DEFAULT NULL,
  `url_mo` varchar(200) DEFAULT NULL COMMENT '短信MO同步地址',
  `authkey` varchar(20) DEFAULT NULL COMMENT '鉴权密钥',
  `admin_name` varchar(20) DEFAULT NULL COMMENT '操作人',
  `admin_time` datetime DEFAULT NULL COMMENT '操作时间',
  `is_m` int(11) NOT NULL COMMENT '是否同步多条：1：是；0：否',
  `is_authkey` int(1) DEFAULT '0' COMMENT '0不鉴权  1需鉴权',
  `closed_per` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=398 DEFAULT CHARSET=utf8 COMMENT='coop_status  关闭触发  service_match 相关记录关闭';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cp_info`
--

DROP TABLE IF EXISTS `cp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(4) CHARACTER SET gbk DEFAULT NULL COMMENT '合作方代码',
  `cp_cn` varchar(20) DEFAULT NULL COMMENT '中文名',
  `cp_en` varchar(20) DEFAULT NULL COMMENT '英语名、拼音',
  `parent_cp` varchar(200) DEFAULT NULL COMMENT '归属父级合作方',
  `report_type` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cp_id` (`cp_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8 COMMENT='coop_status  关闭触发  service_match 相关记录关闭';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cp_limit`
--

DROP TABLE IF EXISTS `cp_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_limit` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cpid` varchar(4) DEFAULT NULL COMMENT '合作方',
  `limit_miscid` varchar(4) DEFAULT NULL COMMENT '限制省份',
  `limit_num` int(10) NOT NULL COMMENT '月限制条数 0默认不限制 ',
  `limit_income` int(10) NOT NULL COMMENT '月限制金额分 0默认不限制',
  `day_num` int(4) NOT NULL DEFAULT '0' COMMENT '日限制条数 0默认不限制 ',
  `day_income` int(10) NOT NULL DEFAULT '0' COMMENT '日限制金额分 0默认不限制',
  `stat` int(1) NOT NULL COMMENT '是否启用：0：不启用，1：启用',
  `close_stat` int(1) DEFAULT '0' COMMENT '0不关闭省份 1关闭省份',
  `spid` varchar(4) DEFAULT NULL COMMENT '公司',
  `mod_time` datetime DEFAULT NULL,
  `mod_user` varchar(30) DEFAULT NULL,
  `closed_per` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4396 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cp_service_type`
--

DROP TABLE IF EXISTS `cp_service_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_service_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(6) DEFAULT NULL,
  `sp_id` varchar(6) DEFAULT NULL,
  `status` int(1) DEFAULT '1' COMMENT '1 开通 2关闭',
  `start_date` date DEFAULT NULL COMMENT '开始合作日期',
  `authkey` varchar(30) DEFAULT NULL COMMENT '鉴权密钥',
  `is_authkey` int(1) DEFAULT '1' COMMENT '1 需鉴权 2无需鉴权',
  `service_type` varchar(30) DEFAULT NULL COMMENT '业务类型',
  `add_user` varchar(30) DEFAULT NULL COMMENT '添加人',
  `add_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cp_url`
--

DROP TABLE IF EXISTS `cp_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(6) DEFAULT NULL,
  `cp_id` varchar(6) DEFAULT NULL,
  `service_type` varchar(30) DEFAULT NULL COMMENT '业务线类型',
  `url_type` varchar(30) DEFAULT NULL COMMENT '地址类型',
  `url` varchar(200) DEFAULT NULL COMMENT '通知地址',
  `add_user` varchar(30) DEFAULT NULL COMMENT '添加/修改人',
  `add_time` datetime DEFAULT NULL COMMENT '添加/修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily_app_report`
--

DROP TABLE IF EXISTS `daily_app_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_app_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `paycode` varchar(20) DEFAULT NULL,
  `appid` varchar(20) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '1 成功  2失败',
  `nums` int(8) DEFAULT NULL,
  `tj_date` date DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `income` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=406 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily_app_report_today`
--

DROP TABLE IF EXISTS `daily_app_report_today`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_app_report_today` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `paycode` varchar(20) DEFAULT NULL,
  `appid` varchar(20) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '1 成功  2失败',
  `nums` int(8) DEFAULT NULL,
  `tj_date` date DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `income` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24518 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `daily_app_report_view`
--

DROP TABLE IF EXISTS `daily_app_report_view`;
/*!50001 DROP VIEW IF EXISTS `daily_app_report_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `daily_app_report_view` (
 `sp_id` tinyint NOT NULL,
  `cp_id` tinyint NOT NULL,
  `paycode` tinyint NOT NULL,
  `appid` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `nums` tinyint NOT NULL,
  `tj_date` tinyint NOT NULL,
  `province_id` tinyint NOT NULL,
  `income` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `daily_channel_report`
--

DROP TABLE IF EXISTS `daily_channel_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_channel_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `paycode` varchar(20) DEFAULT NULL,
  `appid` varchar(20) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '1 订购  2退订',
  `nums` int(8) DEFAULT NULL,
  `tj_date` date DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `income` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12210 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily_channel_report_today`
--

DROP TABLE IF EXISTS `daily_channel_report_today`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_channel_report_today` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `paycode` varchar(20) DEFAULT NULL,
  `appid` varchar(20) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '1 订购  2退订',
  `nums` int(8) DEFAULT NULL,
  `tj_date` date DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `income` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=659853 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `daily_channel_report_view`
--

DROP TABLE IF EXISTS `daily_channel_report_view`;
/*!50001 DROP VIEW IF EXISTS `daily_channel_report_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `daily_channel_report_view` (
 `income` tinyint NOT NULL,
  `cp_id` tinyint NOT NULL,
  `sp_id` tinyint NOT NULL,
  `appid` tinyint NOT NULL,
  `paycode` tinyint NOT NULL,
  `nums` tinyint NOT NULL,
  `tj_date` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `province_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `daily_report`
--

DROP TABLE IF EXISTS `daily_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_report` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(8) DEFAULT NULL COMMENT '归属公司',
  `cp_id` varchar(8) DEFAULT NULL COMMENT '合作方编号',
  `product_id` varchar(20) DEFAULT NULL COMMENT '业务代码',
  `province_id` varchar(8) DEFAULT NULL COMMENT '省份代码',
  `all_mo_num` int(10) NOT NULL COMMENT '上行总数',
  `all_mo_user` int(10) NOT NULL COMMENT '上行总用户数',
  `all_mo_dst_num` int(10) NOT NULL COMMENT '上行去重总数',
  `all_mo_dst_user` int(10) NOT NULL COMMENT '上行去重总用户数',
  `mo_succ_num` int(10) NOT NULL COMMENT '成功上行总数',
  `mo_succ_dst_num` int(10) NOT NULL COMMENT '成功上行去重数',
  `mo_succ_user` int(10) NOT NULL COMMENT '成功上行用户数',
  `mo_succ_dst_user` int(10) NOT NULL COMMENT '成功上行去重用户数',
  `all_mt_num` int(10) NOT NULL COMMENT '下行总数',
  `all_mt_user` int(10) NOT NULL COMMENT '下行总用户数',
  `all_mt_dst_num` int(10) NOT NULL COMMENT '下行去重总数',
  `all_mt_dst_user` int(10) NOT NULL COMMENT '下行去重用户数',
  `mt_succ_num` int(10) NOT NULL COMMENT '成功下行总数',
  `mt_succ_dst_num` int(10) NOT NULL COMMENT '成功下行去重数',
  `mt_succ_user` int(10) NOT NULL COMMENT '成功下行用户数',
  `mt_succ_dst_user` int(10) NOT NULL COMMENT '成功下行去重用户数',
  `income` int(10) NOT NULL COMMENT '总收入（分）',
  `date_time` date DEFAULT NULL COMMENT '日期',
  `closed_cpid` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155194 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily_report_ksgr`
--

DROP TABLE IF EXISTS `daily_report_ksgr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_report_ksgr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(20) DEFAULT NULL,
  `sp_id` varchar(20) DEFAULT NULL,
  `product_id` varchar(60) DEFAULT NULL,
  `province_id` varchar(20) DEFAULT NULL,
  `all_mt_num` int(11) DEFAULT '0',
  `mt_succ_num` int(11) DEFAULT '0',
  `income` int(11) DEFAULT '0',
  `mt_succ_num2` int(11) DEFAULT '0',
  `income2` int(11) DEFAULT '0',
  `date_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily_report_today`
--

DROP TABLE IF EXISTS `daily_report_today`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_report_today` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(8) DEFAULT NULL COMMENT '归属公司',
  `cp_id` varchar(8) DEFAULT NULL COMMENT '合作方编号',
  `product_id` varchar(20) DEFAULT NULL COMMENT '业务代码',
  `province_id` varchar(8) DEFAULT NULL COMMENT '省份代码',
  `all_mo_num` int(10) NOT NULL COMMENT '上行总数',
  `all_mo_user` int(10) NOT NULL COMMENT '上行总用户数',
  `all_mo_dst_num` int(10) NOT NULL COMMENT '上行去重总数',
  `all_mo_dst_user` int(10) NOT NULL COMMENT '上行去重总用户数',
  `mo_succ_num` int(10) NOT NULL COMMENT '成功上行总数',
  `mo_succ_dst_num` int(10) NOT NULL COMMENT '成功上行去重数',
  `mo_succ_user` int(10) NOT NULL COMMENT '成功上行用户数',
  `mo_succ_dst_user` int(10) NOT NULL COMMENT '成功上行去重用户数',
  `all_mt_num` int(10) NOT NULL COMMENT '下行总数',
  `all_mt_user` int(10) NOT NULL COMMENT '下行总用户数',
  `all_mt_dst_num` int(10) NOT NULL COMMENT '下行去重总数',
  `all_mt_dst_user` int(10) NOT NULL COMMENT '下行去重用户数',
  `mt_succ_num` int(10) NOT NULL COMMENT '成功下行总数',
  `mt_succ_dst_num` int(10) NOT NULL COMMENT '成功下行去重数',
  `mt_succ_user` int(10) NOT NULL COMMENT '成功下行用户数',
  `mt_succ_dst_user` int(10) NOT NULL COMMENT '成功下行去重用户数',
  `income` int(10) NOT NULL COMMENT '总收入（分）',
  `date_time` varchar(20) DEFAULT NULL COMMENT '日期',
  `closed_cpid` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6929 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `daily_report_view`
--

DROP TABLE IF EXISTS `daily_report_view`;
/*!50001 DROP VIEW IF EXISTS `daily_report_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `daily_report_view` (
 `id` tinyint NOT NULL,
  `sp_id` tinyint NOT NULL,
  `cp_id` tinyint NOT NULL,
  `product_id` tinyint NOT NULL,
  `province_id` tinyint NOT NULL,
  `all_mo_num` tinyint NOT NULL,
  `all_mo_user` tinyint NOT NULL,
  `all_mo_dst_num` tinyint NOT NULL,
  `all_mo_dst_user` tinyint NOT NULL,
  `mo_succ_num` tinyint NOT NULL,
  `mo_succ_dst_num` tinyint NOT NULL,
  `mo_succ_user` tinyint NOT NULL,
  `mo_succ_dst_user` tinyint NOT NULL,
  `all_mt_num` tinyint NOT NULL,
  `all_mt_user` tinyint NOT NULL,
  `all_mt_dst_num` tinyint NOT NULL,
  `all_mt_dst_user` tinyint NOT NULL,
  `mt_succ_num` tinyint NOT NULL,
  `mt_succ_dst_num` tinyint NOT NULL,
  `mt_succ_user` tinyint NOT NULL,
  `mt_succ_dst_user` tinyint NOT NULL,
  `income` tinyint NOT NULL,
  `date_time` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `datereport_qdb_upload`
--

DROP TABLE IF EXISTS `datereport_qdb_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datereport_qdb_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tjdate` date DEFAULT NULL COMMENT '统计时间',
  `province` varchar(20) DEFAULT NULL COMMENT '省份',
  `product_name` varchar(50) DEFAULT NULL COMMENT '业务名称',
  `spname` varchar(30) DEFAULT '' COMMENT '主渠道名称',
  `income` int(10) DEFAULT '0' COMMENT '收入',
  `price` int(8) DEFAULT NULL COMMENT '单价',
  `service_type` varchar(40) DEFAULT NULL COMMENT 'SDK类型',
  `add_time` datetime DEFAULT NULL COMMENT '导入时间',
  `add_name` varchar(15) DEFAULT NULL COMMENT '导入人',
  `ch_name` varchar(50) DEFAULT NULL COMMENT '渠道名称',
  `ch_id` varchar(20) DEFAULT NULL COMMENT '渠道id',
  `new_user` int(8) DEFAULT NULL COMMENT '新增用户数',
  `new_income` int(10) DEFAULT NULL COMMENT '新增收入',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=360728 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `datereport_qdb_upload_temp`
--

DROP TABLE IF EXISTS `datereport_qdb_upload_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datereport_qdb_upload_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tjdate` date DEFAULT NULL COMMENT '统计时间',
  `province` varchar(20) DEFAULT NULL COMMENT '省份',
  `product_name` varchar(50) DEFAULT NULL COMMENT '业务名称',
  `spname` varchar(30) DEFAULT '' COMMENT '主渠道名称',
  `income` int(10) DEFAULT '0' COMMENT '收入',
  `price` int(8) DEFAULT NULL COMMENT '单价',
  `service_type` varchar(40) DEFAULT NULL COMMENT 'SDK类型',
  `add_time` datetime DEFAULT NULL COMMENT '导入时间',
  `add_name` varchar(15) DEFAULT NULL COMMENT '导入人',
  `ch_name` varchar(50) DEFAULT NULL COMMENT '渠道名称',
  `ch_id` varchar(20) DEFAULT NULL COMMENT '渠道id',
  `new_user` int(8) DEFAULT NULL COMMENT '新增用户数',
  `new_income` int(10) DEFAULT NULL COMMENT '新增收入',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=399461 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `datereport_ts`
--

DROP TABLE IF EXISTS `datereport_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datereport_ts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tjdate` date DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `spname` varchar(20) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `u_ts` int(8) DEFAULT NULL COMMENT '不知情投诉工单量',
  `u_ts_new` int(8) DEFAULT NULL COMMENT '新增不知情投诉工单量',
  `fee_user` int(8) DEFAULT NULL COMMENT '付费用户数',
  `fee_user_all` int(8) DEFAULT NULL COMMENT '上月至今付费用户数',
  `add_time` datetime DEFAULT NULL,
  `add_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155529 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `datereport_ts_info`
--

DROP TABLE IF EXISTS `datereport_ts_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datereport_ts_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tsdate` date DEFAULT NULL COMMENT '投诉归档时间',
  `orderdate` date DEFAULT NULL COMMENT '订购时间',
  `province` varchar(20) DEFAULT NULL,
  `price` int(8) DEFAULT NULL,
  `cpname` varchar(50) DEFAULT NULL,
  `cpn` varchar(20) DEFAULT NULL COMMENT '投诉号码',
  `channel_sub` varchar(50) DEFAULT NULL,
  `channel_main` varchar(50) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT '渠道包',
  `add_time` datetime DEFAULT NULL,
  `add_name` varchar(30) DEFAULT NULL,
  `cp_id` varchar(8) DEFAULT NULL,
  `sp_id` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67299 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `datereport_ts_info_copy`
--

DROP TABLE IF EXISTS `datereport_ts_info_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datereport_ts_info_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tsdate` date DEFAULT NULL COMMENT '投诉归档时间',
  `orderdate` date DEFAULT NULL COMMENT '订购时间',
  `province` varchar(20) DEFAULT NULL,
  `price` int(8) DEFAULT NULL,
  `cpname` varchar(50) DEFAULT NULL,
  `cpn` varchar(20) DEFAULT NULL COMMENT '投诉号码',
  `channel_sub` varchar(50) DEFAULT NULL,
  `channel_main` varchar(50) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT '渠道包',
  `add_time` datetime DEFAULT NULL,
  `add_name` varchar(30) DEFAULT NULL,
  `cp_id` varchar(8) DEFAULT NULL,
  `sp_id` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1013 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `datereport_ts_remark`
--

DROP TABLE IF EXISTS `datereport_ts_remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datereport_ts_remark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(30) DEFAULT NULL,
  `spname` varchar(30) DEFAULT NULL,
  `service_type` varchar(30) DEFAULT NULL,
  `remark` text,
  `add_time` datetime DEFAULT NULL,
  `add_user` varchar(30) DEFAULT NULL,
  `stat` varchar(30) DEFAULT '开通',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2316 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `datereport_ts_temp`
--

DROP TABLE IF EXISTS `datereport_ts_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datereport_ts_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tjdate` date DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `spname` varchar(20) DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `u_ts` int(8) DEFAULT NULL COMMENT '不知情投诉工单量',
  `u_ts_new` int(8) DEFAULT NULL COMMENT '新增不知情投诉工单量',
  `fee_user` int(8) DEFAULT NULL COMMENT '付费用户数',
  `fee_user_all` int(8) DEFAULT NULL COMMENT '上月至今付费用户数',
  `add_time` datetime DEFAULT NULL,
  `add_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2099 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `datereport_upload`
--

DROP TABLE IF EXISTS `datereport_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datereport_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tjdate` date DEFAULT NULL COMMENT '统计时间',
  `app_id` varchar(30) DEFAULT NULL COMMENT '应用id',
  `province` varchar(20) DEFAULT NULL COMMENT '运用id',
  `product_name` varchar(20) DEFAULT NULL COMMENT '运用名称',
  `spname` varchar(30) DEFAULT '' COMMENT '主渠道名称',
  `income` int(10) DEFAULT '0' COMMENT '收入',
  `fee_num` int(8) DEFAULT '0' COMMENT '付费次数',
  `fee_user` int(8) DEFAULT '0' COMMENT '付费用户数',
  `price` int(8) DEFAULT NULL,
  `service_type` varchar(40) DEFAULT NULL COMMENT 'SDK类型',
  `add_time` datetime DEFAULT NULL COMMENT '导入时间',
  `add_name` varchar(15) DEFAULT NULL COMMENT '导入人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=134900 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `datereport_upload_copy`
--

DROP TABLE IF EXISTS `datereport_upload_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datereport_upload_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tjdate` date DEFAULT NULL COMMENT '统计时间',
  `app_id` varchar(30) DEFAULT NULL COMMENT '应用id',
  `province` varchar(20) DEFAULT NULL COMMENT '运用id',
  `product_name` varchar(20) DEFAULT NULL COMMENT '运用名称',
  `spname` varchar(30) DEFAULT '' COMMENT '主渠道名称',
  `income` int(10) DEFAULT '0' COMMENT '收入',
  `fee_num` int(8) DEFAULT '0' COMMENT '付费次数',
  `fee_user` int(8) DEFAULT '0' COMMENT '付费用户数',
  `price` int(8) DEFAULT NULL,
  `service_type` varchar(40) DEFAULT NULL COMMENT 'SDK类型',
  `add_time` datetime DEFAULT NULL COMMENT '导入时间',
  `add_name` varchar(15) DEFAULT NULL COMMENT '导入人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=391 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `datereport_upload_temp`
--

DROP TABLE IF EXISTS `datereport_upload_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datereport_upload_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tjdate` date DEFAULT NULL COMMENT '统计时间',
  `app_id` varchar(30) DEFAULT NULL COMMENT '应用id',
  `province` varchar(20) DEFAULT NULL COMMENT '运用id',
  `product_name` varchar(20) DEFAULT NULL COMMENT '运用名称',
  `spname` varchar(30) DEFAULT '' COMMENT '主渠道名称',
  `income` int(10) DEFAULT '0' COMMENT '收入',
  `fee_num` int(8) DEFAULT '0' COMMENT '付费次数',
  `fee_user` int(8) DEFAULT '0' COMMENT '付费用户数',
  `price` int(8) DEFAULT NULL,
  `service_type` varchar(40) DEFAULT NULL COMMENT 'SDK类型',
  `add_time` datetime DEFAULT NULL COMMENT '导入时间',
  `add_name` varchar(15) DEFAULT NULL COMMENT '导入人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=169378 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ddo_record`
--

DROP TABLE IF EXISTS `ddo_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddo_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgtype` varchar(32) DEFAULT NULL COMMENT '消息类型',
  `tradeid` varchar(32) DEFAULT NULL COMMENT '交易标识',
  `paycode` varchar(20) DEFAULT NULL,
  `appid` varchar(12) DEFAULT NULL COMMENT '应用id',
  `channelid` varchar(64) DEFAULT NULL COMMENT '渠道商代码',
  `subsid` varchar(16) DEFAULT NULL COMMENT '用户标识，为伪码',
  `cost` int(8) NOT NULL DEFAULT '0' COMMENT '消费金额，单位为：分',
  `chargetime` varchar(20) DEFAULT NULL COMMENT '扣费时间',
  `exdata` varchar(255) DEFAULT NULL COMMENT '用户自定义数据，由AP选填',
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `report_stat` int(1) DEFAULT '0' COMMENT '0 未发送 1已发送',
  `report_times` int(1) DEFAULT '0' COMMENT '发送给合作方次数',
  `status` int(11) DEFAULT '0' COMMENT '0 发起计费请求  1 计费成功请求',
  `subcose` int(8) NOT NULL DEFAULT '0' COMMENT '请求金额',
  `subtime` varchar(20) DEFAULT NULL COMMENT '请求时间',
  `phone` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `province_id` varchar(4) NOT NULL DEFAULT '0000' COMMENT '省份代码',
  `area_code` varchar(4) DEFAULT '000' COMMENT '城市代码',
  `substat` varchar(4) DEFAULT '1000',
  `closed_stat` int(1) NOT NULL DEFAULT '0' COMMENT '0不核减  1核减',
  `seqId` varchar(30) DEFAULT NULL,
  `req_message` varchar(80) DEFAULT NULL,
  `code_message` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone` (`phone`),
  KEY `exdata` (`exdata`),
  KEY `seqid` (`seqId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2233530 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ddo_record_succ`
--

DROP TABLE IF EXISTS `ddo_record_succ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddo_record_succ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgtype` varchar(32) DEFAULT NULL COMMENT '消息类型',
  `tradeid` varchar(32) DEFAULT NULL COMMENT '交易标识',
  `paycode` varchar(20) DEFAULT NULL,
  `appid` varchar(12) DEFAULT NULL COMMENT '应用id',
  `channelid` varchar(64) DEFAULT NULL COMMENT '渠道商代码',
  `subsid` varchar(16) DEFAULT NULL COMMENT '用户标识，为伪码',
  `cost` int(8) NOT NULL DEFAULT '0' COMMENT '消费金额，单位为：分',
  `chargetime` varchar(20) DEFAULT NULL COMMENT '扣费时间',
  `exdata` varchar(255) DEFAULT NULL COMMENT '用户自定义数据，由AP选填',
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `report_stat` int(1) DEFAULT '0' COMMENT '0 未发送 1已发送',
  `report_times` int(1) DEFAULT '0' COMMENT '发送给合作方次数',
  `status` int(11) DEFAULT '0' COMMENT '0 发起计费请求  1 计费成功请求',
  `subcose` int(8) NOT NULL DEFAULT '0' COMMENT '请求金额',
  `subtime` varchar(20) DEFAULT NULL COMMENT '请求时间',
  `phone` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `province_id` varchar(4) NOT NULL COMMENT '省份代码',
  `area_code` varchar(4) DEFAULT '000' COMMENT '城市代码',
  `substat` varchar(4) DEFAULT '1000',
  `closed_stat` int(3) NOT NULL DEFAULT '0' COMMENT '0不核减  1 核减',
  `seqId` varchar(30) DEFAULT NULL,
  `req_message` varchar(80) DEFAULT NULL,
  `code_message` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone` (`phone`),
  KEY `exdata` (`exdata`)
) ENGINE=InnoDB AUTO_INCREMENT=2770333 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ddo_record_temp`
--

DROP TABLE IF EXISTS `ddo_record_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddo_record_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgtype` varchar(32) DEFAULT NULL COMMENT '消息类型',
  `tradeid` varchar(32) DEFAULT NULL COMMENT '交易标识',
  `paycode` varchar(20) DEFAULT NULL,
  `appid` varchar(12) DEFAULT NULL COMMENT '应用id',
  `channelid` varchar(64) DEFAULT NULL COMMENT '渠道商代码',
  `subsid` varchar(16) DEFAULT NULL COMMENT '用户标识，为伪码',
  `cost` int(8) NOT NULL DEFAULT '0' COMMENT '消费金额，单位为：分',
  `chargetime` varchar(20) DEFAULT NULL COMMENT '扣费时间',
  `exdata` varchar(255) DEFAULT NULL COMMENT '用户自定义数据，由AP选填',
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0 发起计费请求  1 计费成功请求',
  `subcose` int(8) NOT NULL DEFAULT '0' COMMENT '请求金额',
  `subtime` varchar(20) DEFAULT NULL COMMENT '请求时间',
  `phone` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `province_id` varchar(4) NOT NULL DEFAULT '0000' COMMENT '省份代码',
  `area_code` varchar(4) DEFAULT '000' COMMENT '城市代码',
  `substat` varchar(4) DEFAULT '1000',
  `imsi` varchar(30) DEFAULT NULL,
  `imei` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone` (`phone`),
  KEY `exdata` (`exdata`)
) ENGINE=InnoDB AUTO_INCREMENT=11685 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '组名',
  `sort` tinyint(4) DEFAULT '0',
  `ispir` tinyint(4) DEFAULT '1' COMMENT '是否权限验证',
  `indate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ip_num`
--

DROP TABLE IF EXISTS `ip_num`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_num` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a1` varchar(8) DEFAULT NULL,
  `a2` varchar(8) DEFAULT NULL,
  `a3` varchar(8) DEFAULT NULL,
  `a4` varchar(8) DEFAULT NULL,
  `b1` varchar(8) DEFAULT NULL,
  `b2` varchar(8) DEFAULT NULL,
  `b3` varchar(8) DEFAULT NULL,
  `b4` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=186082 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` tinyint(4) DEFAULT '1',
  `memo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `indate` datetime DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54029 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(30) DEFAULT NULL COMMENT '编号',
  `name` varchar(100) DEFAULT NULL,
  `pid` smallint(8) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort` tinyint(1) NOT NULL DEFAULT '0',
  `indate` datetime NOT NULL,
  `icons` varchar(50) DEFAULT NULL COMMENT '图标',
  `level` tinyint(4) DEFAULT '1' COMMENT '级别',
  `color` varchar(20) DEFAULT NULL COMMENT '颜色',
  `ispir` tinyint(4) DEFAULT '1' COMMENT '是否权限验证',
  `isdev` tinyint(4) DEFAULT '0' COMMENT '是否默认菜单',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;
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
  UNIQUE KEY `id` (`id`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM AUTO_INCREMENT=243356 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `month_report`
--

DROP TABLE IF EXISTS `month_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `month_report` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(8) DEFAULT NULL COMMENT '归属公司',
  `cp_id` varchar(8) DEFAULT NULL COMMENT '合作方编号',
  `product_id` varchar(20) DEFAULT NULL COMMENT '业务代码',
  `province_id` varchar(8) DEFAULT NULL COMMENT '省份代码',
  `all_mo_num` int(10) NOT NULL COMMENT '上行总数',
  `all_mo_user` int(10) NOT NULL COMMENT '上行总用户数',
  `all_mo_dst_num` int(10) NOT NULL COMMENT '上行去重总数',
  `all_mo_dst_user` int(10) NOT NULL COMMENT '上行去重总用户数',
  `mo_succ_num` int(10) NOT NULL COMMENT '成功上行总数',
  `mo_succ_dst_num` int(10) NOT NULL COMMENT '成功上行去重数',
  `mo_succ_user` int(10) NOT NULL COMMENT '成功上行用户数',
  `mo_succ_dst_user` int(10) NOT NULL COMMENT '成功上行去重用户数',
  `all_mt_num` int(10) NOT NULL COMMENT '下行总数',
  `all_mt_user` int(10) NOT NULL COMMENT '下行总用户数',
  `all_mt_dst_num` int(10) NOT NULL COMMENT '下行去重总数',
  `all_mt_dst_user` int(10) NOT NULL COMMENT '下行去重用户数',
  `mt_succ_num` int(10) NOT NULL COMMENT '成功下行总数',
  `mt_succ_dst_num` int(10) NOT NULL COMMENT '成功下行去重数',
  `mt_succ_user` int(10) NOT NULL COMMENT '成功下行用户数',
  `mt_succ_dst_user` int(10) NOT NULL COMMENT '成功下行去重用户数',
  `income` int(10) NOT NULL COMMENT '总收入（分）',
  `date_time` varchar(7) DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12161 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phone_ip`
--

DROP TABLE IF EXISTS `phone_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(30) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `datetime` varchar(30) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phone_pwd`
--

DROP TABLE IF EXISTS `phone_pwd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_pwd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(18) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69843 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pj_app_fee`
--

DROP TABLE IF EXISTS `pj_app_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_app_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(30) DEFAULT NULL,
  `price` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=619 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pj_app_fee_copy`
--

DROP TABLE IF EXISTS `pj_app_fee_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_app_fee_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(30) DEFAULT NULL,
  `price` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=414 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pj_app_info`
--

DROP TABLE IF EXISTS `pj_app_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_app_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(20) DEFAULT NULL,
  `app_name` varchar(50) DEFAULT NULL,
  `key` varchar(50) DEFAULT NULL,
  `remark` text,
  `sp_id` varchar(4) DEFAULT NULL,
  `report_url` text,
  `app_en` varchar(20) DEFAULT NULL,
  `channelid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pj_app_price`
--

DROP TABLE IF EXISTS `pj_app_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_app_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(20) DEFAULT NULL,
  `price` int(5) DEFAULT NULL COMMENT '分为单位',
  `new_app_id` varchar(20) DEFAULT NULL,
  `new_price` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pj_channel_id`
--

DROP TABLE IF EXISTS `pj_channel_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_channel_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(6) DEFAULT NULL,
  `channel_id` varchar(20) DEFAULT NULL,
  `app_id` varchar(40) DEFAULT NULL,
  `channel_name` varchar(40) DEFAULT NULL,
  `sp_id` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pj_channelid_today`
--

DROP TABLE IF EXISTS `pj_channelid_today`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_channelid_today` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(30) DEFAULT NULL,
  `channelid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1967 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pj_cp_info`
--

DROP TABLE IF EXISTS `pj_cp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_cp_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(6) DEFAULT NULL,
  `cp_cn` varchar(50) DEFAULT NULL,
  `cp_en` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cp_id` (`cp_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pj_datereport`
--

DROP TABLE IF EXISTS `pj_datereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_datereport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(30) DEFAULT NULL,
  `channel_id` varchar(30) DEFAULT NULL,
  `price` int(6) DEFAULT NULL,
  `tj_date` date DEFAULT NULL,
  `succ_nums` int(8) DEFAULT NULL,
  `faile_nums` int(8) DEFAULT NULL,
  `miscid` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `succ_price` int(10) DEFAULT NULL,
  `faile_price` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37236 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pj_datereport_today`
--

DROP TABLE IF EXISTS `pj_datereport_today`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_datereport_today` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(30) DEFAULT NULL,
  `channel_id` varchar(30) DEFAULT NULL,
  `price` int(6) DEFAULT NULL,
  `tj_date` date DEFAULT NULL,
  `succ_nums` int(8) DEFAULT NULL,
  `faile_nums` int(8) DEFAULT NULL,
  `miscid` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `succ_price` int(10) DEFAULT NULL,
  `faile_price` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1351654 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `pj_datereport_view`
--

DROP TABLE IF EXISTS `pj_datereport_view`;
/*!50001 DROP VIEW IF EXISTS `pj_datereport_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `pj_datereport_view` (
 `id` tinyint NOT NULL,
  `appid` tinyint NOT NULL,
  `channel_id` tinyint NOT NULL,
  `price` tinyint NOT NULL,
  `tj_date` tinyint NOT NULL,
  `succ_nums` tinyint NOT NULL,
  `faile_nums` tinyint NOT NULL,
  `miscid` tinyint NOT NULL,
  `sp_id` tinyint NOT NULL,
  `cp_id` tinyint NOT NULL,
  `succ_price` tinyint NOT NULL,
  `faile_price` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pj_hj_set`
--

DROP TABLE IF EXISTS `pj_hj_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_hj_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(50) DEFAULT NULL,
  `price` int(5) DEFAULT NULL,
  `hour` varchar(2) DEFAULT NULL,
  `hj_per` int(3) DEFAULT '0' COMMENT '核减比例',
  `cp_id` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `channel_id` varchar(30) DEFAULT NULL,
  `dst_cp_id` varchar(4) DEFAULT NULL,
  `dst_sp_id` varchar(4) DEFAULT NULL,
  `dst_channel_id` varchar(30) DEFAULT NULL,
  `dst_app_id` varchar(50) DEFAULT NULL,
  `dst_price` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pj_hj_set_copy`
--

DROP TABLE IF EXISTS `pj_hj_set_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_hj_set_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(50) DEFAULT NULL,
  `price` int(5) DEFAULT NULL,
  `hour` varchar(2) DEFAULT NULL,
  `hj_per` int(3) DEFAULT '0' COMMENT '核减比例',
  `cp_id` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `channel_id` varchar(30) DEFAULT NULL,
  `dst_cp_id` varchar(4) DEFAULT NULL,
  `dst_sp_id` varchar(4) DEFAULT NULL,
  `dst_channel_id` varchar(30) DEFAULT NULL,
  `dst_app_id` varchar(50) DEFAULT NULL,
  `dst_price` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=990 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pj_sp_info`
--

DROP TABLE IF EXISTS `pj_sp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pj_sp_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` varchar(6) DEFAULT NULL,
  `sp_cn` varchar(30) DEFAULT NULL,
  `sp_en` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL COMMENT '类型',
  `mid` int(11) DEFAULT NULL COMMENT '主id',
  `sid` int(11) DEFAULT NULL COMMENT '子id',
  `indate` datetime DEFAULT NULL COMMENT '添加时间',
  `optid` int(11) DEFAULT NULL COMMENT '操作人id',
  `optname` varchar(50) DEFAULT NULL COMMENT '操作人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1230 DEFAULT CHARSET=utf8;
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
  PRIMARY KEY (`id`)
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
-- Table structure for table `qdb_ts_txt`
--

DROP TABLE IF EXISTS `qdb_ts_txt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qdb_ts_txt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  `upload_user` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='渠道包投诉txt上传';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qdb_ts_txt_info`
--

DROP TABLE IF EXISTS `qdb_ts_txt_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qdb_ts_txt_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `cpn` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qdb_ts_txt_info_temp`
--

DROP TABLE IF EXISTS `qdb_ts_txt_info_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qdb_ts_txt_info_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `cpn` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qdb_ts_txt_result`
--

DROP TABLE IF EXISTS `qdb_ts_txt_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qdb_ts_txt_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `appid` varchar(20) DEFAULT NULL,
  `paycode` varchar(20) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `sp_id` varchar(4) DEFAULT NULL,
  `fee` int(8) DEFAULT '0',
  `channelid` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `orderid` varchar(50) DEFAULT NULL,
  `chargetime` datetime DEFAULT NULL,
  `unsubtime` datetime DEFAULT NULL,
  `province_id` varchar(6) DEFAULT '0000',
  `area_code` varchar(6) DEFAULT NULL,
  `unorderid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quartz`
--

DROP TABLE IF EXISTS `quartz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(60) DEFAULT NULL,
  `group_name` varchar(60) DEFAULT NULL,
  `class_name` varchar(60) DEFAULT NULL,
  `is_alive` varchar(60) DEFAULT NULL,
  `time_exp` varchar(60) DEFAULT NULL,
  `start_time` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quartz_check`
--

DROP TABLE IF EXISTS `quartz_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `url` varchar(60) DEFAULT NULL,
  `is_alive` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quartz_local`
--

DROP TABLE IF EXISTS `quartz_local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_local` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(20) DEFAULT NULL,
  `group_name` varchar(20) DEFAULT NULL,
  `class_name` varchar(40) DEFAULT NULL,
  `is_alive` varchar(10) DEFAULT NULL,
  `time_exp` varchar(20) DEFAULT NULL,
  `start_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quartz_user`
--

DROP TABLE IF EXISTS `quartz_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UserName` (`UserName`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rdo_record`
--

DROP TABLE IF EXISTS `rdo_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdo_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(32) DEFAULT NULL COMMENT '交易标识',
  `paycode` varchar(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `cost` int(8) NOT NULL DEFAULT '0' COMMENT '消费金额，单位为：分',
  `subtime` varchar(20) DEFAULT NULL COMMENT '请求时间',
  `chargetime` varchar(20) DEFAULT NULL COMMENT '扣费时间',
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `report_stat` int(1) DEFAULT '0' COMMENT '0 未发送 1已发送',
  `report_times` int(1) DEFAULT '0' COMMENT '发送给合作方次数',
  `status` int(11) DEFAULT NULL COMMENT '0 发起计费请求  1 计费成功请求',
  `subcose` int(8) NOT NULL DEFAULT '0' COMMENT '请求金额',
  `province_id` varchar(4) NOT NULL DEFAULT '0000' COMMENT '省份代码',
  `area_code` varchar(4) DEFAULT '000' COMMENT '城市代码',
  `substat` varchar(4) DEFAULT '1000',
  `closed_stat` int(1) NOT NULL DEFAULT '0' COMMENT '0不核减  1核减',
  `type` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=18992 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rdo_record_succ`
--

DROP TABLE IF EXISTS `rdo_record_succ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdo_record_succ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(32) DEFAULT NULL COMMENT '交易标识',
  `paycode` varchar(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `cost` int(8) NOT NULL DEFAULT '0' COMMENT '消费金额，单位为：分',
  `subtime` varchar(20) DEFAULT NULL COMMENT '请求时间',
  `chargetime` varchar(20) DEFAULT NULL COMMENT '扣费时间',
  `sp_id` varchar(4) DEFAULT NULL,
  `cp_id` varchar(4) DEFAULT NULL,
  `report_stat` int(1) DEFAULT '0' COMMENT '0 未发送 1已发送',
  `report_times` int(1) DEFAULT '0' COMMENT '发送给合作方次数',
  `status` int(11) DEFAULT NULL COMMENT '0 发起计费请求  1 计费成功请求',
  `subcose` int(8) NOT NULL DEFAULT '0' COMMENT '请求金额',
  `province_id` varchar(4) NOT NULL DEFAULT '0000' COMMENT '省份代码',
  `area_code` varchar(4) DEFAULT '000' COMMENT '城市代码',
  `substat` varchar(4) DEFAULT '1000',
  `closed_stat` int(1) NOT NULL DEFAULT '0' COMMENT '0不核减  1核减',
  `type` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `service_info`
--

DROP TABLE IF EXISTS `service_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(30) CHARACTER SET gbk DEFAULT NULL COMMENT '业务id/道具id',
  `service_name` varchar(20) CHARACTER SET gbk DEFAULT NULL COMMENT '道具名称',
  `content` varchar(255) CHARACTER SET gbk DEFAULT '' COMMENT '短、彩指令',
  `ch_id` varchar(20) CHARACTER SET gbk DEFAULT NULL COMMENT '游戏id,长号码',
  `sp_id` varchar(4) CHARACTER SET gbk DEFAULT NULL,
  `service_type` varchar(10) CHARACTER SET gbk DEFAULT NULL COMMENT '业务线类型',
  `price` int(5) DEFAULT NULL COMMENT '资费',
  `coop_date` date DEFAULT NULL COMMENT '合作时间',
  `coop_status` int(1) NOT NULL DEFAULT '0' COMMENT '0 开通 1关闭',
  `match_type` int(1) DEFAULT '0' COMMENT '0模糊匹配  1精确匹配（短彩匹配类型）',
  `channel_id` varchar(20) CHARACTER SET gbk DEFAULT NULL,
  `appid` varchar(12) DEFAULT NULL COMMENT '应用id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `service_id` (`service_id`,`sp_id`) USING BTREE,
  KEY `ch_id` (`ch_id`) USING BTREE,
  KEY `sp_id` (`sp_id`) USING BTREE,
  KEY `service_type` (`service_type`) USING BTREE,
  KEY `service_id_2` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=793 DEFAULT CHARSET=utf8 COMMENT='业务、道具表\r\n\r\n\r\ncoop_status  触发service_match  update\r\n价格修改是触发  s';
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
  `content_start` varchar(100) CHARACTER SET gbk DEFAULT NULL,
  `content` varchar(100) CHARACTER SET gbk DEFAULT NULL COMMENT '上行内容',
  `rank` int(1) DEFAULT '0' COMMENT '匹配优先级',
  `match_type` int(1) DEFAULT '0' COMMENT '0模糊匹配  1精确匹配  （短彩匹配类型）',
  `sid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid` (`pid`) USING BTREE,
  UNIQUE KEY `unique_all` (`service_id`,`cp_id`,`sp_id`) USING BTREE,
  KEY `cp_id` (`cp_id`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  CONSTRAINT `service_match_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service_info` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `service_match_ibfk_2` FOREIGN KEY (`cp_id`) REFERENCES `cp_info` (`cp_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `admin_name` varchar(20) DEFAULT NULL COMMENT '操作人',
  `admin_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sp_id` (`sp_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `status_info`
--

DROP TABLE IF EXISTS `status_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_info` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL COMMENT '错误代码',
  `info` varchar(40) DEFAULT NULL COMMENT '错误代码注解',
  `table_name` varchar(20) DEFAULT NULL COMMENT '表名',
  `column` varchar(20) DEFAULT NULL COMMENT '状态位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_cp_info`
--

DROP TABLE IF EXISTS `temp_cp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_cp_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(4) CHARACTER SET gbk DEFAULT NULL COMMENT '合作方代码',
  `cp_cn` varchar(20) NOT NULL DEFAULT '' COMMENT '中文名',
  `cp_en` varchar(20) DEFAULT NULL COMMENT '英语名、拼音',
  `parent_cp` varchar(200) DEFAULT NULL COMMENT '归属父级合作方',
  `report_type` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cp_cn` (`cp_cn`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='coop_status  关闭触发  service_match 相关记录关闭';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_phone`
--

DROP TABLE IF EXISTS `temp_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_phone` (
  `phone` varchar(20) NOT NULL DEFAULT '',
  `datatime` varchar(10) DEFAULT NULL,
  KEY `index_phone` (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
  `province` varchar(8) CHARACTER SET latin1 DEFAULT NULL,
  `city` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `datetime` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `servicename` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `price` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `channame` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `channame1` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `cpname` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29271 DEFAULT CHARSET=gbk;
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
  `appid` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `paycode` varchar(50) DEFAULT NULL,
  `orderid` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8562 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_phone_HS`
--

DROP TABLE IF EXISTS `temp_phone_HS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_phone_HS` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `province` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `province_id` varchar(8) CHARACTER SET latin1 DEFAULT NULL,
  `datetime` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `cpname` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `cp_id` varchar(10) DEFAULT NULL,
  `closed_stat` int(11) DEFAULT '0',
  `new_phone` varchar(20) DEFAULT NULL,
  `ts_line` varchar(10) DEFAULT NULL,
  `ts_date` varchar(20) DEFAULT NULL,
  `ts_city` varchar(20) DEFAULT NULL,
  `ts_service` varchar(30) DEFAULT NULL,
  `ts_price` varchar(4) CHARACTER SET gbk COLLATE gbk_bin DEFAULT NULL,
  `ts_ch` varchar(10) DEFAULT NULL,
  `spname` varchar(40) DEFAULT NULL,
  `appid` varchar(30) DEFAULT NULL,
  `appname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3225 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_test`
--

DROP TABLE IF EXISTS `temp_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a` varchar(30) DEFAULT NULL,
  `b` varchar(30) DEFAULT NULL,
  `c` varchar(30) DEFAULT NULL,
  `d` varchar(30) DEFAULT NULL,
  `e` varchar(30) DEFAULT NULL,
  `f` varchar(30) DEFAULT NULL,
  `g` varchar(30) DEFAULT '',
  `l` varchar(30) DEFAULT NULL,
  `k` varchar(30) DEFAULT NULL,
  `j` varchar(30) DEFAULT NULL,
  `i` varchar(30) DEFAULT NULL,
  `m` varchar(30) DEFAULT NULL,
  `h` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5871 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_test_copy`
--

DROP TABLE IF EXISTS `temp_test_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_test_copy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a` varchar(30) DEFAULT NULL,
  `b` varchar(30) DEFAULT NULL,
  `c` varchar(30) DEFAULT NULL,
  `d` varchar(30) DEFAULT NULL,
  `e` varchar(30) DEFAULT NULL,
  `f` varchar(30) DEFAULT NULL,
  `g` varchar(30) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5871 DEFAULT CHARSET=gbk;
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
) ENGINE=MyISAM AUTO_INCREMENT=24861 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `app_pay_record_view`
--

/*!50001 DROP TABLE IF EXISTS `app_pay_record_view`*/;
/*!50001 DROP VIEW IF EXISTS `app_pay_record_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`manage`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `app_pay_record_view` AS select `app_pay_record`.`id` AS `id`,`app_pay_record`.`msgType` AS `msgType`,`app_pay_record`.`appid` AS `appid`,`app_pay_record`.`channelId` AS `channelId`,`app_pay_record`.`imsi` AS `imsi`,`app_pay_record`.`imei` AS `imei`,`app_pay_record`.`price` AS `price`,`app_pay_record`.`cpparam` AS `cpparam`,`app_pay_record`.`clientip` AS `clientip`,`app_pay_record`.`nyurl` AS `nyurl`,`app_pay_record`.`subtime` AS `subtime`,`app_pay_record`.`result` AS `result`,`app_pay_record`.`deltime` AS `deltime`,`app_pay_record`.`report_stat` AS `report_stat`,`app_pay_record`.`report_times` AS `report_times`,`app_pay_record`.`seqId` AS `seqId`,`app_pay_record`.`req_message` AS `req_message`,`app_pay_record`.`code_message` AS `code_message`,`app_pay_record`.`phoneNum` AS `phoneNum`,`app_pay_record`.`province_id` AS `province_id`,`app_pay_record`.`area_code` AS `area_code`,`app_pay_record`.`src_appid` AS `src_appid`,`app_pay_record`.`src_price` AS `src_price`,`app_pay_record`.`src_channelId` AS `src_channelId`,`app_pay_record`.`closd_stat` AS `closd_stat` from `app_pay_record` union select `app_pay_record_succ`.`id` AS `id`,`app_pay_record_succ`.`msgType` AS `msgType`,`app_pay_record_succ`.`appid` AS `appid`,`app_pay_record_succ`.`channelId` AS `channelId`,`app_pay_record_succ`.`imsi` AS `imsi`,`app_pay_record_succ`.`imei` AS `imei`,`app_pay_record_succ`.`price` AS `price`,`app_pay_record_succ`.`cpparam` AS `cpparam`,`app_pay_record_succ`.`clientip` AS `clientip`,`app_pay_record_succ`.`nyurl` AS `nyurl`,`app_pay_record_succ`.`subtime` AS `subtime`,`app_pay_record_succ`.`result` AS `result`,`app_pay_record_succ`.`deltime` AS `deltime`,`app_pay_record_succ`.`report_stat` AS `report_stat`,`app_pay_record_succ`.`report_times` AS `report_times`,`app_pay_record_succ`.`seqId` AS `seqId`,`app_pay_record_succ`.`req_message` AS `req_message`,`app_pay_record_succ`.`code_message` AS `code_message`,`app_pay_record_succ`.`phoneNum` AS `phoneNum`,`app_pay_record_succ`.`province_id` AS `province_id`,`app_pay_record_succ`.`area_code` AS `area_code`,`app_pay_record_succ`.`src_appid` AS `src_appid`,`app_pay_record_succ`.`src_price` AS `src_price`,`app_pay_record_succ`.`src_channelId` AS `src_channelId`,`app_pay_record_succ`.`closd_stat` AS `closd_stat` from `app_pay_record_succ` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `daily_app_report_view`
--

/*!50001 DROP TABLE IF EXISTS `daily_app_report_view`*/;
/*!50001 DROP VIEW IF EXISTS `daily_app_report_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`manage`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `daily_app_report_view` AS select `daily_app_report_today`.`sp_id` AS `sp_id`,`daily_app_report_today`.`cp_id` AS `cp_id`,`daily_app_report_today`.`paycode` AS `paycode`,`daily_app_report_today`.`appid` AS `appid`,`daily_app_report_today`.`type` AS `type`,`daily_app_report_today`.`nums` AS `nums`,`daily_app_report_today`.`tj_date` AS `tj_date`,`daily_app_report_today`.`province_id` AS `province_id`,`daily_app_report_today`.`income` AS `income` from `daily_app_report_today` union select `daily_app_report`.`sp_id` AS `sp_id`,`daily_app_report`.`cp_id` AS `cp_id`,`daily_app_report`.`paycode` AS `paycode`,`daily_app_report`.`appid` AS `appid`,`daily_app_report`.`type` AS `type`,`daily_app_report`.`nums` AS `nums`,`daily_app_report`.`tj_date` AS `tj_date`,`daily_app_report`.`province_id` AS `province_id`,`daily_app_report`.`income` AS `income` from `daily_app_report` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `daily_channel_report_view`
--

/*!50001 DROP TABLE IF EXISTS `daily_channel_report_view`*/;
/*!50001 DROP VIEW IF EXISTS `daily_channel_report_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`manage`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `daily_channel_report_view` AS select `daily_channel_report`.`income` AS `income`,`daily_channel_report`.`cp_id` AS `cp_id`,`daily_channel_report`.`sp_id` AS `sp_id`,`daily_channel_report`.`appid` AS `appid`,`daily_channel_report`.`paycode` AS `paycode`,`daily_channel_report`.`nums` AS `nums`,`daily_channel_report`.`tj_date` AS `tj_date`,`daily_channel_report`.`type` AS `type`,`daily_channel_report`.`province_id` AS `province_id` from `daily_channel_report` union select `daily_channel_report_today`.`income` AS `income`,`daily_channel_report_today`.`cp_id` AS `cp_id`,`daily_channel_report_today`.`sp_id` AS `sp_id`,`daily_channel_report_today`.`appid` AS `appid`,`daily_channel_report_today`.`paycode` AS `paycode`,`daily_channel_report_today`.`nums` AS `nums`,`daily_channel_report_today`.`tj_date` AS `tj_date`,`daily_channel_report_today`.`type` AS `type`,`daily_channel_report_today`.`province_id` AS `province_id` from `daily_channel_report_today` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `daily_report_view`
--

/*!50001 DROP TABLE IF EXISTS `daily_report_view`*/;
/*!50001 DROP VIEW IF EXISTS `daily_report_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`manage`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `daily_report_view` AS (select `daily_report`.`id` AS `id`,`daily_report`.`sp_id` AS `sp_id`,`daily_report`.`cp_id` AS `cp_id`,`daily_report`.`product_id` AS `product_id`,`daily_report`.`province_id` AS `province_id`,`daily_report`.`all_mo_num` AS `all_mo_num`,`daily_report`.`all_mo_user` AS `all_mo_user`,`daily_report`.`all_mo_dst_num` AS `all_mo_dst_num`,`daily_report`.`all_mo_dst_user` AS `all_mo_dst_user`,`daily_report`.`mo_succ_num` AS `mo_succ_num`,`daily_report`.`mo_succ_dst_num` AS `mo_succ_dst_num`,`daily_report`.`mo_succ_user` AS `mo_succ_user`,`daily_report`.`mo_succ_dst_user` AS `mo_succ_dst_user`,`daily_report`.`all_mt_num` AS `all_mt_num`,`daily_report`.`all_mt_user` AS `all_mt_user`,`daily_report`.`all_mt_dst_num` AS `all_mt_dst_num`,`daily_report`.`all_mt_dst_user` AS `all_mt_dst_user`,`daily_report`.`mt_succ_num` AS `mt_succ_num`,`daily_report`.`mt_succ_dst_num` AS `mt_succ_dst_num`,`daily_report`.`mt_succ_user` AS `mt_succ_user`,`daily_report`.`mt_succ_dst_user` AS `mt_succ_dst_user`,`daily_report`.`income` AS `income`,`daily_report`.`date_time` AS `date_time` from `daily_report`) union (select `daily_report_today`.`id` AS `id`,`daily_report_today`.`sp_id` AS `sp_id`,`daily_report_today`.`cp_id` AS `cp_id`,`daily_report_today`.`product_id` AS `product_id`,`daily_report_today`.`province_id` AS `province_id`,`daily_report_today`.`all_mo_num` AS `all_mo_num`,`daily_report_today`.`all_mo_user` AS `all_mo_user`,`daily_report_today`.`all_mo_dst_num` AS `all_mo_dst_num`,`daily_report_today`.`all_mo_dst_user` AS `all_mo_dst_user`,`daily_report_today`.`mo_succ_num` AS `mo_succ_num`,`daily_report_today`.`mo_succ_dst_num` AS `mo_succ_dst_num`,`daily_report_today`.`mo_succ_user` AS `mo_succ_user`,`daily_report_today`.`mo_succ_dst_user` AS `mo_succ_dst_user`,`daily_report_today`.`all_mt_num` AS `all_mt_num`,`daily_report_today`.`all_mt_user` AS `all_mt_user`,`daily_report_today`.`all_mt_dst_num` AS `all_mt_dst_num`,`daily_report_today`.`all_mt_dst_user` AS `all_mt_dst_user`,`daily_report_today`.`mt_succ_num` AS `mt_succ_num`,`daily_report_today`.`mt_succ_dst_num` AS `mt_succ_dst_num`,`daily_report_today`.`mt_succ_user` AS `mt_succ_user`,`daily_report_today`.`mt_succ_dst_user` AS `mt_succ_dst_user`,`daily_report_today`.`income` AS `income`,`daily_report_today`.`date_time` AS `date_time` from `daily_report_today`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pj_datereport_view`
--

/*!50001 DROP TABLE IF EXISTS `pj_datereport_view`*/;
/*!50001 DROP VIEW IF EXISTS `pj_datereport_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`manage`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pj_datereport_view` AS select `pj_datereport_today`.`id` AS `id`,`pj_datereport_today`.`appid` AS `appid`,`pj_datereport_today`.`channel_id` AS `channel_id`,`pj_datereport_today`.`price` AS `price`,`pj_datereport_today`.`tj_date` AS `tj_date`,`pj_datereport_today`.`succ_nums` AS `succ_nums`,`pj_datereport_today`.`faile_nums` AS `faile_nums`,`pj_datereport_today`.`miscid` AS `miscid`,`pj_datereport_today`.`sp_id` AS `sp_id`,`pj_datereport_today`.`cp_id` AS `cp_id`,`pj_datereport_today`.`succ_price` AS `succ_price`,`pj_datereport_today`.`faile_price` AS `faile_price` from `pj_datereport_today` union select `pj_datereport`.`id` AS `id`,`pj_datereport`.`appid` AS `appid`,`pj_datereport`.`channel_id` AS `channel_id`,`pj_datereport`.`price` AS `price`,`pj_datereport`.`tj_date` AS `tj_date`,`pj_datereport`.`succ_nums` AS `succ_nums`,`pj_datereport`.`faile_nums` AS `faile_nums`,`pj_datereport`.`miscid` AS `miscid`,`pj_datereport`.`sp_id` AS `sp_id`,`pj_datereport`.`cp_id` AS `cp_id`,`pj_datereport`.`succ_price` AS `succ_price`,`pj_datereport`.`faile_price` AS `faile_price` from `pj_datereport` */;
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

-- Dump completed on 2017-02-07 17:52:50
