-- MySQL dump 10.13  Distrib 5.7.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: community_system
-- ------------------------------------------------------
-- Server version	5.7.26

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
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名称',
  `password` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `status` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` VALUES (1,'admin','123456','管理员','http://localhost:1000/file/8826e8c280cb3bec6a4fbeb61514ee74.png','123456','123456@qq.com','启用','2024-12-07 17:29:35');

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` VALUES (4,'停水通知','<p>尊敬的业主：因供水管道维修，小区将于10月15日9:00-17:00停水，请提前储水。<br>发布时间：2023-10-13 10:00<br>发布人：物业管理处</p>','2025-02-20 12:49:35'),(5,'停电通知','<p>尊敬的业主：因电力设备检修，小区将于10月20日8:00-12:00停电，请提前做好准备。<br>发布时间：2023-10-18 15:00<br>发布人：物业管理处</p>','2025-02-20 12:50:41'),(6,'电梯维护公告','<p>尊敬的业主：1号楼电梯将于10月25日9:00-11:00进行维护，请勿在此期间使用。<br>发布时间：2023-10-23 14:00<br>发布人：物业管理处</p>','2025-02-20 12:51:30'),(7,'垃圾分类宣传','<p>尊敬的业主：请按照垃圾分类要求投放垃圾，共同维护小区环境。</p><p>发布时间：2023-10-10 09:00</p><p>发布人：物业管理处</p>','2025-02-20 12:52:06'),(8,'节日活动通知','<p>尊敬的业主：小区将于10月1日举办国庆联欢活动，欢迎各位业主积极参与。<br>发布时间：2023-09-28 16:00<br>发布人：物业管理处</p>','2025-02-20 12:52:53'),(9,'消防安全提醒','<p>尊敬的业主：请勿在楼道堆放杂物，确保消防通道畅通，注意防火安全。<br>发布时间：2023-10-05 11:00<br>发布人：物业管理处</p>','2025-02-20 12:53:14'),(10,'车位登记通知','<p>尊敬的业主：请未登记车位的业主于10月30日前到物业办公室办理登记手续。<br>发布时间：2023-10-22 10:00<br>发布人：物业管理处</p>','2025-02-20 12:53:28'),(11,'宠物管理提醒','<p>尊敬的业主：请遛狗时系好牵引绳，及时清理宠物粪便，文明养宠。<br>发布时间：2023-10-12 09:30<br>发布人：物业管理处</p>','2025-02-20 12:53:50'),(12,'小区绿化维护通知','<p>尊敬的业主：小区绿化将于10月18日进行修剪，请勿在绿化带内停放车辆。<br>发布时间：2023-10-16 14:00<br>发布人：物业管理处</p>','2025-02-20 12:54:06'),(13,'疫情防控提醒','<p>尊敬的业主：请佩戴口罩、勤洗手，配合物业做好疫情防控工作。<br>发布时间：2023-10-08 10:00<br>发布人：物业管理处</p>','2025-02-20 12:54:18'),(14,'门禁系统升级通知','<p>尊敬的业主：小区门禁系统将于10月22日升级，请随身携带门禁卡。<br>发布时间：2023-10-20 09:00<br>发布人：物业管理处</p>','2025-02-20 12:54:34'),(15,'业主大会通知','<p>尊敬的业主：小区业主大会将于10月28日15:00在物业会议室召开，请准时参加。<br>发布时间：2023-10-25 16:00<br>发布人：物业管理处</p>','2025-02-20 12:54:53'),(16,'噪音控制提醒','<p>尊敬的业主：请避免在午休时间（12:00-14:00）和夜间（22:00-次日6:00）制造噪音。<br>发布时间：2023-10-14 10:00<br>发布人：物业管理处</p>','2025-02-20 12:55:06'),(17,'快递柜使用提醒','<p>尊敬的业主：请及时取走快递柜中的包裹，避免超时收费。<br>发布时间：2023-10-11 09:00<br>发布人：物业管理处</p>','2025-02-20 12:55:21'),(18,'小区清洁日通知','<p>尊敬的业主：小区将于10月30日进行大扫除，请配合清理楼道杂物。<br>发布时间：2023-10-27 14:00<br>发布人：物业管理处</p>','2025-02-20 12:55:36'),(19,'儿童游乐设施维护通知','<p>尊敬的业主：儿童游乐设施将于10月19日进行维护，暂停使用一天。<br>发布时间：2023-10-17 15:00<br>发布人：物业管理处</p>','2025-02-20 12:55:49'),(20,'冬季供暖试水通知','<p>尊敬的业主：小区供暖系统将于10月25日试水，请家中留人观察。<br>发布时间：2023-10-23 10:00<br>发布人：物业管理处</p><p><img src=\"http://127.0.0.1:1000/file/0bfa2540e5af773d8e7c1d05b59d2c7a.jpg\" alt=\"0bfa2540e5af773d8e7c1d05b59d2c7a.jpg\" data-href=\"http://127.0.0.1:1000/file/0bfa2540e5af773d8e7c1d05b59d2c7a.jpg\" style=\"\"/></p>','2025-02-20 12:56:01'),(21,'测试','<p>测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试<img src=\"http://127.0.0.1:1000/file/3ae6e6ecac42c6408f2363dfb82b9a73.jpg\" alt=\"3ae6e6ecac42c6408f2363dfb82b9a73.jpg\" data-href=\"http://127.0.0.1:1000/file/3ae6e6ecac42c6408f2363dfb82b9a73.jpg\" style=\"\"/></p>','2025-04-05 01:39:34');

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `building` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '楼宇编号',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '楼宇地址',
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '楼层数',
  `element_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '单元数',
  `house_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '户数',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='楼宇信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

INSERT INTO `building` VALUES (3,'B1栋','该楼宇底层设有商业区，包括便利店和咖啡厅。部分楼层正在进行外墙翻新，预计11月底完成。','小区中区5号','12层（含地下室1层）','2','48','商住两用楼','维修中','2025-02-20 13:25:23',NULL),(4,'C区2号楼','正常运行，但需注意15-20层部分业主反映水压不足问题，已安排维修团队检查。 备注：该楼宇顶层设有观景台，对业主开放。','小区西区12号','30层（含裙楼3层）','1','90','住宅楼','正常','2025-02-20 13:26:45',NULL),(5,'D栋公寓','正常运行，最近一次消防演练于2023年9月25日进行。 备注：该楼宇入住率较高，建议加强夜间安保巡逻。','小区南门右侧','8层（含顶层露台）','1','32','住宅楼','正常','2025-02-20 13:27:19',NULL),(6,'C座','','C座','22','2','100','住宅楼','维修中','2025-04-05 01:35:56',NULL);

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `type` int(11) DEFAULT NULL COMMENT '评论类型：1 新闻评论 2 论坛评论',
  `source_id` int(11) DEFAULT NULL COMMENT '新闻Id/论坛Id',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `parent_id` int(11) DEFAULT NULL COMMENT '父评论ID (用于回复评论)',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='评论记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--


--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '投诉类型',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='投诉信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` VALUES (1,3,'设施故障','小区A栋电梯经常出现故障，尤其是早晚高峰时段，严重影响居民出行安全。','已处理','2025-02-21 04:29:30'),(2,3,'测试','<p>121</p>','未处理','2025-03-27 11:38:07');

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='论坛信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` VALUES (3,'【求助】小区停水通知，何时恢复？','<p><span style=\"color: rgb(6, 7, 31); background-color: rgb(253, 253, 254); font-size: 15px;\">大家好，我刚刚收到物业的停水通知，说是要进行管道维修。但通知里没写具体什么时候恢复供水，有人知道吗？家里还有宝宝等着冲奶粉呢，挺急的！</span></p>',3,'2025-02-20 18:11:04','正常'),(4,'【分享】小区周边新开的宠物店，超级赞！','<p><span style=\"color: rgb(6, 7, 31); background-color: rgb(253, 253, 254); font-size: 15px;\">昨天带我家狗狗去散步，发现小区对面新开了一家宠物店，环境干净，服务也很好，关键是价格还很实惠。有需要的邻居们可以去看看哦！</span></p>',3,'2025-02-20 18:11:26','正常'),(5,'【讨论】小区绿化带改造方案征集','<p><span style=\"color: rgb(6, 7, 31); background-color: rgb(253, 253, 254); font-size: 15px;\">物业最近打算对小区的绿化带进行改造升级，现面向全体业主征集改造方案。大家有什么好的想法和建议都可以在这里提出来，一起讨论一下。</span></p>',3,'2025-02-20 18:11:41','正常'),(6,'【公告】小区停电通知及应对措施','<p><span style=\"color: rgb(6, 7, 31); background-color: rgb(253, 253, 254); font-size: 15px;\">各位业主，因电网检修，小区将于本周五（10月7日）上午8:00至下午16:00停电。请大家提前做好储水、充电等准备，以免给生活带来不便。如有紧急情况，请联系物业。</span></p>',3,'2025-02-20 18:11:50','正常'),(7,'【闲置转让】九成新婴儿车，低价出售','<p><span style=\"color: rgb(6, 7, 31); background-color: rgb(253, 253, 254); font-size: 15px;\">我家宝宝长大了，现在有一辆九成新的婴儿车闲置着，有需要的邻居可以联系我，低价转让，绝对实惠！</span></p>',3,'2025-02-20 18:12:05','正常'),(8,'论坛user2数据','<p><img src=\"http://localhost:1000/file/ff953cc7e25856ca6390349ca53461a8.jpeg\" alt=\"ff953cc7e25856ca6390349ca53461a8.jpeg\" data-href=\"http://localhost:1000/file/ff953cc7e25856ca6390349ca53461a8.jpeg\" style=\"\"/></p><p>论坛user2数据论坛user2数据论坛user2数据</p>',4,'2025-02-21 06:20:27','正常');

--
-- Table structure for table `forum_comment`
--

DROP TABLE IF EXISTS `forum_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `forum_id` int(11) NOT NULL COMMENT '论坛信息ID',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `parent_id` int(11) DEFAULT NULL COMMENT '父级id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='论坛评论信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_comment`
--

INSERT INTO `forum_comment` VALUES (1,8,4,'1',NULL,'2025-02-21 07:14:01'),(2,8,4,'333',1,'2025-02-21 07:14:09'),(3,8,4,'2121',NULL,'2025-02-21 07:14:13');

--
-- Table structure for table `house`
--

DROP TABLE IF EXISTS `house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `house` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `building_id` int(11) NOT NULL COMMENT '楼宇Id',
  `user_id` int(11) NOT NULL COMMENT '户主id',
  `house_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '房屋编号',
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '房屋面积',
  `house_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '户型',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '房屋状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='房屋信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house`
--

INSERT INTO `house` VALUES (9,3,3,'101','120','三室一厅','已入住','2025-04-05 02:28:25');

--
-- Table structure for table `meter_reading`
--

DROP TABLE IF EXISTS `meter_reading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meter_reading` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `building_id` int(11) NOT NULL COMMENT '楼宇Id',
  `house_id` int(11) NOT NULL COMMENT '房屋Id',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '抄表类型',
  `reading` float DEFAULT NULL COMMENT '读数',
  `reading_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '抄表日期',
  `fee` float DEFAULT NULL COMMENT '费用',
  `read_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '抄表人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='抄表信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meter_reading`
--

INSERT INTO `meter_reading` VALUES (6,2,4,'水费',1,'2025-02-13',2,'admin','2025-02-21 02:03:44'),(7,2,4,'水费',121,'2025-03-28',25,'1','2025-03-28 10:49:57');

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面图',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='新闻信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

INSERT INTO `news` VALUES (4,'通过居民自治，这个小区电梯改造更新实现从无到有','<p><br></p><p style=\"text-align: justify;\">随着城市化进程的加快和居民生活需求日益提高，既有商品房小区的电梯更新工程成为优化社区环境、排除安全隐患的重要举措。在徐汇区龙华街道红馨居民区的强生花苑，“能人坊”议事小组正引领着居民群众探索出一条社区治理的新路径。</p><p style=\"text-align: justify;\">2024年，该小区通过成立电梯更新专班，实现了居民自治、责任共担，成功完成了从无到有、从0到6的换梯突破，为社区治理提供了新的样板。</p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/01/11/fe61900c-49be-4c65-925c-99bac81fa635.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/01/11/fe8361d4-ac94-40a0-a5fc-c25b569f0bd1.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: justify;\">强生花苑小区</p><p style=\"text-align: justify;\">自2017年起，强生居民区就一直面临着商品房小区普遍存在的难题——居民民主意识强，但矛盾突出。如何将居民的不同诉求统一起来，形成有效的治理模式，成为摆在社区党总支面前的一大挑战。在党总支书记吴菊玲的带领下，强生居民区成立了“能人坊”议事小组，致力于通过党建引领下的民主协商，推动社区治理的创新发展。</p><p style=\"text-align: justify;\">“党建引领不是套话，而是实实在在的行动。我们通过成立能人坊，将社区内有丰富社会治理经验的老领导、老党员组织起来，形成一个‘智囊团’，为社区治理出谋划策。”吴菊玲表示。能人坊的成员不仅具备丰富的管理经验，对社区工作也充满热情。在大家的参与下，能人坊迅速成为社区治理的重要力量。</p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/01/11/d1d4e2b6-8d8f-411c-8871-1a7e7f74381c.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: justify;\">“能人坊”议事小组考察电梯更新进度</p><p style=\"text-align: justify;\">据了解，强生花苑1、2、3号楼自1999年竣工，电梯已经超龄服役，强生居民区一期6台运行了25年的电梯亟待更新。面对这一难题，社区党总支决定将电梯改造更新工作作为重点任务，成立电梯更新专班。专班成员包含了小区机电技术人才、能人坊成员、律师、物业经理及业委会党的工作小组等成员。“2024年2月专班成立后由每栋楼成立的三人小组，负责收集居民意见、确定电梯型号和内饰等具体事宜。”业委会主任王祥荣介绍道。</p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/01/11/79a94deb-b99f-49bd-bae1-7b9e6ada2a6e.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: justify;\">强生花苑1、2、3号楼电梯更新签约仪式</p><p style=\"text-align: justify;\">在专班的精心组织和居民的积极参与下，电梯改造更新得以推进。能人坊成员利用小区资源，找到了在三菱公司工作的居民，成功将电梯价格降至最低。</p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/01/11/5385a642-5ac5-4de7-bf8b-d226305674c3.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: justify;\">强生花苑电梯更新开工仪式</p><p style=\"text-align: justify;\">2024年12月6日，经历了近两年的筹备，强生花苑电梯更新工程开工典礼举行。此次电梯更新工程是强生花苑建成以来最大规模的设施改造工程，是全体小区业主生活中的一件喜事。</p><p style=\"text-align: justify;\">从听取意见、分析现状、核算资金、制定初步方案，到组织外出参观学习、筛选电梯品种、竞选施工单位以及根据政府出台的政策一次一次地调整工作方案。在这期间，居委领导、业委会、物业公司、相关楼栋的业主，特别是电梯更新专班的成员各司其职、各展其能，辛勤的付出终于换来了小区电梯更新工程的顺利开工。据悉，强生花苑小区一期现已有两台电梯完工一台施工，预计今年春节前完成相关验收工作。</p><p style=\"text-align: justify;\">在项目推进过程中居民们提出了许多宝贵意见。三人小组在选择电梯型号和内饰时，通过微信群投票的方式，让每栋楼的居民都能表达自己的意愿。最终，根据居民的投票结果，选择了最受欢迎的电梯方案。</p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/01/11/38da8d35-d18f-45d0-9987-61362425500e.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/01/11/bf0e222d-f8ed-4d77-bf10-84013e6291bc.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: justify;\">小区铁栅栏改造前后</p><p style=\"text-align: justify;\">“专班、专办不包办。”吴菊玲总结道，“专班只负责抓方向、组织和协调，具体事情由居民小组来决定和实施。我们将构建更为高效的沟通协作体系，确保更多提升居住环境的项目能够顺畅推进，从而更加巩固社区团结力，提升居民幸福感。”</p><p style=\"text-align: justify;\">记者：张旺</p><p style=\"text-align: justify;\">编辑：叶芳芳</p><p style=\"text-align: justify;\">校对：耿洁玉</p><p style=\"text-align: justify;\">审校：韦丽</p><p style=\"text-align: justify;\">转载请注明来自上海徐汇官方账号</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">上观号作者：徐汇通</p><p style=\"text-align: justify;\">特别声明：本文经上观新闻客户端的“上观号”入驻单位授权发布，仅代表该入驻单位观点，“上观新闻”仅为信息发布平台，如您认为发布内容侵犯您的相关权益，请联系删除!</p>','2025-02-20 12:57:50','http://127.0.0.1:1000/file/ab35fbf7fa564c3ff3f727a13ccf9296.jpg'),(5,'便民】为老服务喜迎升级！“物业+养老”扩展到更多小区','<p><br></p><p><br></p><p>2025年开年，欧阳路街道多个小区喜迎升级，“物业+养老”模式进驻多个小区，融入老年人的日常生活，让他们感受到科技带来的温暖与便捷。</p><p>作为虹口区老龄化程度最高的街道，欧阳路街道60岁以上老人2.8万，约占户籍总人口数的46%。自2022年底起，欧阳路街道发挥物业服务企业、贴近千家万户的优势，积极探索社会力量参与养老服务。</p><p><br></p><p>蒋家桥小区率先启动“物业+养老”服务模式，通过物业资源与老年需求的深度融合，提供包括上门服务、健康监测等在内的多元化养老服务，显著提升了老年居民的生活质量和幸福感。</p><p>今年，欧阳路街道更多小区在蒋家桥小区的成功经验上，进一步开展“物业+养老”服务。这些小区延续了蒋家桥小区的优质服务项目，如上门理发、代买药、倒垃圾等，还根据各自社区的特点和老年居民的需求，进行了服务创新和升级。</p><p><br></p><p style=\"text-align: center;\"><strong>蒋家桥小区门卫室变身安全“中枢”</strong></p><p style=\"text-align: center;\"><br></p><p>2025年，蒋家桥小区的门卫室变身安全中枢，门卫室新安装的物联大屏如同小区的“神经中枢”，实时显示着环境监测数据、火灾预警信息以及燃气安全状况。大屏还专门设置了弱势人群关注模块，确保他们的安全与健康得到实时监控。</p><p><br></p><p style=\"text-align: center;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/02/25/ea08706f-32cb-4ca9-b36f-f205b04cbe1f.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: center;\"><br></p><p>虹达物业的负责人介绍，经过深入细致的调研，发现小区内高龄老人占比显著，他们大多腿脚不便，常年局限于家中。为了能让这些老人也能享受到户外的新鲜空气，小区引进了爬楼机服务，化解了老年人上下楼的难题，让他们在社区内行动自如，不再受楼梯的束缚。</p><p><br></p><p style=\"text-align: center;\"><strong>天宝第二小区一键呼叫，服务上门</strong></p><p style=\"text-align: center;\"><br></p><p>欧阳路街道的其他小区也推出了各具特色的“物业+养老”服务。天宝第二小区物业中心近日引入了一键呼叫视频功能，为社区老人带来了极大的便利。老人们只需轻唤一声口令，即可实现与物业中心的实时视频通话，轻松表达各种需求。这一智能升级有效突破了传统紧急呼叫按钮的局限，让居家养老更加安全、舒适。</p><p><br></p><p style=\"text-align: center;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/02/25/0020e9e3-1120-49ec-b591-75fe508af81d.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: center;\"><br></p><p>同时，虹达物业公司精心挑选的区域党建单位还为老人提供理发、扦脚、推拿、艾灸等上门服务，深受老年人欢迎。李奶奶常年患有风湿病，自从使用上门艾灸服务后，她感觉身体明显轻松了许多。“每次艾灸后，我都觉得全身暖洋洋的，关节也不那么疼了。”李奶奶介绍。</p><p><br></p><p style=\"text-align: center;\"><strong>邮电新村应急服务暖人心</strong></p><p style=\"text-align: center;\"><br></p><p>邮电新村的德律风物业在日常服务的基础上增加了应急援助服务。每天一次的看望和代叫出租车服务，让老年人在紧急情况下能够及时得到帮助。此外，小区还定期开展心理咨询、法律咨询和健康讲座等活动，丰富老年人的精神生活。</p><p><br></p><p style=\"text-align: center;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/02/25/e65432a9-fecb-4bd1-bbf6-91f561cb96a4.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: center;\"><br></p><p>张爷爷是邮电新村的一位独居老人，有一次他突发身体不适，急需前往医院。他通过物业的代叫出租车服务，迅速得到了帮助。“那天多亏了物业的小伙子，他们帮我叫了出租车，还陪我到医院，真的让我感到很温暖。”张爷爷说。</p><p><br></p><p style=\"text-align: center;\"><strong>上字裕群小区理疗送到家门口</strong></p><p style=\"text-align: center;\"><br></p><p>上字裕群小区则将“物业+养老”服务做得更细致。为高龄老人代扔生活垃圾、提供高血压治疗仪等服务项目备受好评。王爷爷是上字裕群小区的一位高血压患者，他每天都会使用物业提供的高血压治疗仪。“自从用了这个仪器，我感觉舒服多了，血压也稳定了许多。”王爷爷满意地说，“物业真的为我们老年人考虑得很周到。”</p><p><br></p><p style=\"text-align: center;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/02/25/a4375159-7ee8-430c-aae6-4c54386dd615.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: center;\"><br></p><p>在欧阳路街道城运中心的指导下，各物业公司积极响应，深入了解老年居民的需求，灵活调整服务项目。未来，街道城运中心将持续关注辖区内各物业推出的为老服务，不断进行优化与改进，致力于提升服务品质。</p><p>正如一位老人所言：“在这里生活，我们感到非常幸福和满足。”欧阳路街道的“物业+养老”模式带来的幸福，将让更多的老年人享受到美好的晚年生活。</p>','2025-02-20 12:58:07','http://127.0.0.1:1000/file/ed917e1d57498610c43a2788e65d6b27.jpg'),(6,'老旧小区焕发新颜，居民幸福感满满','<p><br></p><p><br></p><h1>老旧小区焕新颜，居民乐享宜居生活</h1><p><br></p><p>探索老旧小区的“焕新”之旅，发现美好生活新篇章。<br><img src=\"https://pic.rmb.bdstatic.com/bjh/news/424ffbd3424a5d1f64924a217e3ab9b0.png\" alt=\"\" data-href=\"\" style=\"\"/><br>老旧小区改造，倾听民声至关重要。在锦江区金红苑的改造过程中，我们坚持问需于民，让居民们自己担任“规划师”的角色。如今，小区的外立面换上了崭新的“衣裳”，道路经过黑化处理后显得干净又整洁，而重新规划的停车位更是井然有序。在这样的环境下，居民们能够悠闲地在院中享受阳光，畅聊家常。秋日的午后，阳光温暖而柔和，金红苑的居民甘阿姨看着眼前焕然一新的小区，满心欢喜地表示：“以前大家都想着要搬走，现在却舍不得离开了。”<br><img src=\"https://pic.rmb.bdstatic.com/bjh/news/c4a0b37d5468d35e3bb09749660da66c.png\" alt=\"\" data-href=\"\" style=\"\"/><br>难以置信的是，仅仅经过一年的时间，这里就发生了翻天覆地的变化。曾经，路面凹凸不平，每逢雨季便积水成患；夜晚的小区昏暗不明，居民们回家时总是提心吊胆；而楼道内，各种线缆如同纠结的乱麻，令人望而生畏。然而，随着锦江区老旧小区改造工程的深入推进，金红苑小区迎来了崭新的面貌。<br><img src=\"https://pic.rmb.bdstatic.com/bjh/news/33ba83815a029bb04997a24298433057.png\" alt=\"\" data-href=\"\" style=\"\"/></p><p><br></p><h1>改造前的金红苑与改造后的对比</h1><p><br></p><p>金红苑在改造前后的变化可谓天壤之别。曾经，这里的路面坑洼不平，每逢雨季便积水严重，给居民的生活带来了诸多不便。夜晚的小区更是昏暗不明，回家的路上，居民们总是提心吊胆，生怕发生意外。而楼道内，各种线缆杂乱无章，如同纠结的乱麻，不仅影响了美观，更给居民的生活带来了安全隐患。然而，经过锦江区老旧小区改造工程的精心打造，金红苑如今已经焕然一新。<br><img src=\"https://pic.rmb.bdstatic.com/bjh/news/e7fb6d9ee8b3f795ead8fe2d25172764.png\" alt=\"\" data-href=\"\" style=\"\"/><br>老旧小区改造，这一关乎千家万户福祉的重大工程，面临着诸多复杂而细致的工作。那么，应该如何进行改造，又该听取谁的意见呢？锦江区锦华路街道的相关负责人明确指出：“广泛征求居民意见，并统一意见，这是改造工作的首要步骤。”基于此，一系列小区坝坝会应运而生，汇聚了居民代表、楼栋长、党员代表等各方力量，共同商讨老旧小区改造的各项事宜。工作人员精心整理并分类归纳了居民们的意见，确保在后续的改造过程中能够一一落实。<br><img src=\"https://pic.rmb.bdstatic.com/bjh/news/4192bacc00ae3e26b96c8f6675cc464d.png\" alt=\"\" data-href=\"\" style=\"\"/><br>在老旧小区改造的过程中，广泛征集居民的意见显得尤为重要。只有让居民深度参与，才能确保改造工作更加贴近实际需求，更加符合民意。因此，在锦江区锦华路街道的老旧小区改造项目中，我们积极倾听并采纳了居民的建议和意见，共同商讨改造方案，让每一个细节都体现民意，让居民真正成为改造的参与者。<br><img src=\"https://pic.rmb.bdstatic.com/bjh/news/e9adefe8fe897e029f1eeafed2f5c4c2.png\" alt=\"\" data-href=\"\" style=\"\"/><br>“要让居民成为‘设计师’和‘规划师’，这样才能真正解决他们最关心、最直接、最现实的问题。”锦江区公园城市局的相关负责人强调，通过居民的深度参与，老旧小区的改造将更加贴合居民的实际需求，从而提升他们的获得感、幸福感和安全感。<br>此外，老旧小区的改造不仅是一项系统工程，更需要从多个维度进行提升，包括基础设施、配套功能等。在这次改造中，锦江区不仅梳理了详细的改造需求清单，还同步实施了基础类、安全类以及完善类的改造工作。<br><img src=\"https://pic.rmb.bdstatic.com/bjh/news/f145b2d0b8c3c4476095d0b3c93a7e66.png\" alt=\"\" data-href=\"\" style=\"\"/><br>“在应对基础设施滞后的问题时，我们首要的任务是进行基础性和安全性提升改造。”锦江区锦华路街道的相关负责人详细介绍了改造措施，包括更新地下雨污水管网、路面黑化、外立面翻新，以及增设路灯和监控安防设备等。同时，该小区还同步开展了楼道改造和楼道内管线的序化工作，旨在焕发小区的新生。<br><img src=\"https://pic.rmb.bdstatic.com/bjh/news/0e9d46cc55692f0094f33a41e94bf0bb.png\" alt=\"\" data-href=\"\" style=\"\"/></p><p><br></p><h1><strong>改造前后对比</strong></h1><p><br></p><p>在改造之前，金红苑小区的环境显得陈旧，基础设施滞后，给居民的生活带来了诸多不便。然而，经过一系列的基础性和安全性提升改造后，小区焕发出新的生机与活力。无论是外观翻新的楼道，还是新增设的路灯和监控安防设备，都让居民们感受到了改造带来的显著变化。<br><img src=\"https://pic.rmb.bdstatic.com/bjh/news/599cf3ce881fce1039aba255638f3e7c.png\" alt=\"\" data-href=\"\" style=\"\"/><br>与此同时，金红苑小区还进行了多项基础设施的新建与翻新工作。包括新建围墙、非机动车棚，对临街围墙进行翻新，以及新建大门门头等。此外，还进行了树木移栽和新增灌木等绿化工作。在短短几个月内，小区就完成了从陈旧到崭新的转变，不仅外观更加美观，居住体验也得到了显著提升。</p><p><br></p><p>同时，锦华路街道党工委也积极推进违法建设治理工作。他们组建了由城管、安办、社区等多部门组成的工作小组，通过上门宣讲、一对一沟通等方式，耐心地与居民进行交流，逐渐转变他们的思想观念。在引导下，部分住户主动拆除了违法建设，共计32处，为全体居民创造了一个更加干净、清爽的公共空间。<br><img src=\"https://pic.rmb.bdstatic.com/bjh/news/ca0ad66a8078a35790d57b8e81e255eb.png\" alt=\"\" data-href=\"\" style=\"\"/><br>老旧小区焕发新貌，居民们幸福满溢！锦江区公园城市局正持续推动老旧小区改造进程，致力于“六个一批”示范项目的建设，旨在优化人居环境，为幸福生活增添亮丽色彩，使“宜居美好”成为这些老旧小区的新标签。</p>','2025-02-20 12:58:22','http://127.0.0.1:1000/file/424ffbd3424a5d1f64924a217e3ab9b0.png'),(7,'焕然一新！这个老旧小区迎来华丽蝶变','<p><br></p><p style=\"text-align: justify;\">玉兰园居民区位于徐汇区康健街道西南角，地处徐汇区与闵行区的交界处，毗邻中环绿廊，南依沪闵高架，地理位置得天独厚，交通便利。自1989年建成，这片土地就承载着1031户居民的生活记忆，其中超过半数的居民是与这里血脉相连的本地征地农民。然而，历经35年的时光洗礼，小区的基础设施日渐老化，环境破旧等问题日益突出，居民的生活质量受到影响。近年来，随着“三旧”变“三新”老旧小区改造工程的稳步推进，转机悄然降临。</p><p style=\"text-align: justify;\">2023年8月，徐汇区房管局将玉兰园纳入“三旧”变“三新”老旧小区改造项目之中。整个改造工程秉持着需求导向的原则，深入调研居民的实际需求，聚焦于居民们最关心、最直接、最现实的问题。截至目前，玉兰园已签约24台电梯，20台已投入使用，2台正在建造。</p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/02/25/d9551873-785c-4820-afad-6dceb46cc311.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: justify;\"><strong>景观升级，老旧小区华丽转身</strong></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/02/25/740a8a6a-b941-4c58-8745-c3664d29a23e.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: justify;\">大门头焕然一新，从小区的外立面到楼道内的公共设施，都进行了全方位的改造。曾经斑驳破旧的外立面经过修缮与粉刷后，焕然一新。楼道内的照明变得更亮了，楼梯扶手也更加稳固，居民出行变得更加安全便捷。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/02/25/a12c7566-fef8-48bd-be2a-a3b40348488e.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: justify;\">曾经平淡的玉兰亭广场如今焕然一新。重新规划后，空间更加开阔。</p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/02/25/7d965363-0c7b-47b9-a5e3-cff44e11d97e.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: justify;\">新增的儿童游乐设施，为孩子们提供了嬉戏玩耍的场地。同时，广场也为老人们打造了惬意的休闲角落。</p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/02/25/44c0a646-9498-4df3-af69-83a4d2db8f0f.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: justify;\">兰馨花园改造后</p><p style=\"text-align: justify;\">新增的四季步道融入春夏秋冬四季元素，让居民漫步其中可感受四季更迭。雨水回收装置的安装，实现水资源的有效收集与利用，助力花园可持续养护。废旧轮胎变身创意“绿色景观”，信号箱、电线杆披上童趣彩绘“新衣”，巧妙融入文明养宠与环保理念。</p><p style=\"text-align: justify;\"><strong>倾听民意，精准改造</strong></p><p style=\"text-align: justify;\">在改造过程中，街道相关部门联合玉兰园“三驾马车”（居委、业委会和物业）广泛征求居民意见，精心设计改造方案。如今，小区道路平坦宽阔，排水管道畅通无阻，活动区域分布合理，居民楼屋顶也做了防水处理，居民们住得安心、舒心。</p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/02/25/bc8dab24-0a05-4ded-a861-a4a213b5c4e1.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: justify;\">圆弧形阳台户型的“华丽转身”</p><p style=\"text-align: justify;\">在玉兰园小区，有一批独具特色的圆弧形阳台户型，它们凭借优雅的造型，一度成为小区内别具一格的风景线。然而，这独特的房型却暗藏隐患。由于楼顶天沟构造特殊，随着逐渐老化，排水不畅，容易积水，每逢雨天，阳台顶部便成了“蓄水池”，导致顶楼居民家中出现屋顶和墙面渗水等问题。</p><p style=\"text-align: justify;\">趁着此次“三旧”变“三新”项目的启动，小区“三驾马车”迅速行动，联合施工队对问题进行了全面细致的勘察。经过深入调研，施工队制定了针对性的修缮方案，专门对这类圆弧形阳台实施了“平改坡”工程。通过优化屋顶坡度，彻底解决了排水不畅的问题，消除了困扰居民的难题。</p><p style=\"text-align: justify;\"><strong>“堵心路”变“舒心道”</strong></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/02/25/a21d66d0-2025-43ef-bf30-fbf506f66c05.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: justify;\">长期以来，玉兰园1—4号楼居民前往垃圾房及桂江路大门的通道存在封闭路段，这一直是玉兰园居民生活中的痛点难题，1—4号楼居民需要绕行较远的距离，才能完成扔垃圾、进出小区，给居民的日常生活带来不便。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">此次玉兰园改造工程，街道相关部门携手玉兰园 “三驾马车”，积极深入社区，全方位、多层次地广泛收集居民意见。施工队根据居民需求制定针对性改造方案，打通1—4号楼通往垃圾房和桂江路大门的道路，开辟小道，优化排水系统，同时在小道两旁增设绿化景观与照明设施。居民纷纷表示对这一改变非常满意，生活更加舒心、便捷了。</p><p style=\"text-align: start;\"><br></p><p style=\"text-align: start;\"><img src=\"https://sghimages.shobserver.com/img/catch/2025/02/25/b6209d97-78eb-48ab-8468-b7d7377d6909.jpg\" alt=\"\" data-href=\"\" style=\"\"></p><p style=\"text-align: start;\"><br></p><p style=\"text-align: justify;\">“三旧”变“三新”老旧小区改造工程，不仅仅是硬件设施的更新换代，更是对玉兰园居民生活品质的重塑与提升，对社区文化的传承与弘扬。它让玉兰园重新焕发出勃勃生机，居民的生活发生了翻天覆地的变化。如今的玉兰园面貌焕然一新，居民们开启了全新的生活篇章，向着更加幸福美好的未来迈进。</p><p style=\"text-align: justify;\">来源：上海徐汇</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">上观号作者：房可圆</p><p style=\"text-align: justify;\">特别声明：本文经上观新闻客户端的“上观号”入驻单位授权发布，仅代表该入驻单位观点，“上观新闻”仅为信息发布平台，如您认为发布内容侵犯您的相关权益，请联系删除!</p>','2025-02-20 13:04:10','http://127.0.0.1:1000/file/c90509df90d1d3d5a692584c1e63902d.jpg'),(8,'运城杏林嘉园小区：“业主自治”下的幸福生活','<p><br></p><p><br></p><p>　近日，盐湖区杏林嘉园小区凭借其业主自治管理的创新实践，在2024年第四届中国幸福社区范例奖颁奖评选活动中，荣获“第四届中国幸福社区（公益类）基层治理创新范例奖”。第四届中国幸福社区范例奖评委会对杏林嘉园给予高度评价，称赞“他们以创新之勇点燃基层治理的新希望；他们敢于突破传统，探索新模式、新方法，从细微之处着手，解决社区(小区)的实际问题；他们用智慧和汗水，为基层治理注入新的活力。”</p><p><img src=\"https://pics4.baidu.com/feed/1b4c510fd9f9d72aae9c47cc959ff63a369bbbaf.jpeg@f_auto?token=9e1823f10d225ef141e94dff26258ada\" alt=\"\" data-href=\"\" style=\"width: 699.828px;\"/></p><p><br></p><p>　　杏林嘉园为何实行业主自治管理？如何实施？又带来了哪些变化？带着这些疑问，近日，记者探访了杏林嘉园业委会，通过实地观察和亲身体验等方式，了解该小区自治管理新模式的实际情况。</p><p><br></p><p><strong>业主自治 从破旧到焕新</strong></p><p><br></p><p>　　走进位于盐湖区信和名都社区的杏林嘉园小区，一幅秋意盎然又生机勃勃的画面映入眼帘。杨树、柳树、梧桐树披上了秋的彩衣，而绿化带里的冬青苗和女贞树依旧郁郁葱葱，一枝娇艳的月季花在枝头傲然绽放，为小区增添了几分生机与活力。</p><p><img src=\"https://pics4.baidu.com/feed/a6efce1b9d16fdfa52b08011f53a525a96ee7bb1.jpeg@f_auto?token=5697332b9393d41a0dd22737363ed4ec\" alt=\"\" data-href=\"\" style=\"width: 699.828px;\"/></p><p><br></p><p>　　在修剪整齐的花园内，老人们坐在新增的休闲座椅上悠闲地聊天，脸上洋溢着满足和幸福的笑容。通往小花园的28条小路已全部被改造成无障碍通道，为行动不便的业主提供了极大便利。</p><p><br></p><p>　　“以前我们小区路面坑凹下沉，绿化也无人管理，环境卫生不好。现在看看这景色，真是天壤之别！这都多亏了业委会的努力！”杏林嘉园小区居民李女士感慨地说。</p><p><br></p><p><strong>据了解，杏林嘉园小区</strong></p><p><br></p><p>　　于2008年底投入使用，占地80余亩，建筑面积15余万平方米，拥有900余户业主和3000余名常住人口。其中，市中心医院职工和离退休人员占比高达80%以上，小区地理位置优越，业主文化素质普遍较高。</p><p><br></p><p>　　然而，在小区交付使用后的十年间，由于前置物业公司服务水平逐渐下降，小区内的基础设施、绿化环境等逐渐变差，全体业主的公共利益被逐渐侵害，业主有了不满情绪。在业主代表与物业公司多次沟通无果后，业主王泉淼、石天恩、张平等人牵头召集成立业筹组。</p><p><br></p><p>　　据悉，业筹组历时7个月，于2017年11月5日召开了杏林嘉园首届业主大会，选举成立了第一届业委会。</p><p><br></p><p>　　2018年10月14日，杏林嘉园第二次业主大会如期举行，大会以77.33%的赞同率通过了小区实行物业自治管理的方案，选举产生了监审组，行使对业委会的监督和财务审计。</p><p><br></p><p>　　2018年12月8日，业委会全面接手小区物业管理，小区的所有收费都进入了属于全体业主的公共账户。从此，杏林嘉园小区开始探索业主自治管理小区物业的新模式，实现从破旧到焕新的华丽转身。</p><p><br></p><p><strong>党建引领 从创新到服务</strong></p><p><br></p><p>　　今年，杏林嘉园小区8号楼二单元居民向该楼单元代表黄翠霞反映，该单元顶楼防水年久失修，经常出现房顶墙潮湿的情况。黄翠霞立即将搜集到的居民意见汇总到小区业委会办公室。经业委会实地查验，确认存在业主所反映的问题。随后，该小区业委会立马着手安排人员，对破损的楼顶渗水部分进行防水维修。最终，在今年雨季来临之前，该单元楼破损的楼顶渗水部分已被全部维修。</p><p><br></p><p>　　“没想到防水维修速度这么快、这么细致！所有能够做防水的边边角角都进行了维修，这下我们心里可踏实了，也不再担心下大雨了。”杏林嘉园小区8号楼二单元居民王斌满意地说。</p><p><img src=\"https://pics7.baidu.com/feed/55e736d12f2eb938798fce7697d75b3be7dd6f9c.jpeg@f_auto?token=373233a0ae8acee6e9f90c80c48e6bf7\" alt=\"\" data-href=\"\" style=\"width: 699.828px;\"/></p><p><br></p><p> 这一事例是杏林嘉园制定单元代表管理办法的具体实践，而单元代表管理办法仅是该小区实行业主自治管理的一个方面。据了解，自成立以来，杏林嘉园小区业委会通过“走出去”“引进来”，确定了“以党的建设为引领，以文化建设为纽带，以服务业主为中心，以文明和谐为目标，共建和谐幸福家园”的工作宗旨，制定小区物业管理制度、财务管理制度、业主自治管理公约、业主文明公约等，同时配合社区建立健全网格化管理，制定小区单元代表管理办法，设立各单元代表，成立财务、工程维修、消防、安保等机构，逐步完善客服、维修、保安、保洁和绿化等工作岗位职责，进一步提升服务水平，增强居民的归属感和幸福感，不断完善小区可持续发展的新思路。</p><p><img src=\"https://pics4.baidu.com/feed/d043ad4bd11373f061bcb66fe5ba95f5f9ed0487.jpeg@f_auto?token=78540fca4d1155fdb08ab540baabe3bd\" alt=\"\" data-href=\"\" style=\"width: 699.828px;\"/></p><p><br></p><p><strong>党建引领和“以服务业主为目的”是杏林嘉园小区持续实行业主自治管理的根本动力。</strong></p><p><br></p><p> 据介绍，杏林嘉园业委会中，党员人数占比达82%，在各项决策上坚持民主集中制原则，具有群众性、合理性和可行性。同时，业主自治将前置物业公司“以营利为目的”变为‘以服务业主为目的”，业委会坚持把业主的钱看紧、管好，把利于业主的实事办好，得到了广大业主的大力支持。</p><p><br></p><p>　　此外，就杏林嘉园小区的业主自治管理模式而言，业委会的人员至关重要。“因为业委会成员不领工资，那么就一定要有公益、奉献的心态。在最初成立业委会时，我们的成员包括了企业高管、单位职工、律师等等，他们在各领域的专业技能和服务精神，使得业委会能够团结一致，共同为业主服务。”业委会主任张平说。</p><p><br></p><p><strong>幸福生活 从变化到品质</strong></p><p><br></p><p>　　10月28日晚，随着夜幕的降临，杏林嘉园小区中心广场新建成的200平方米文化休闲长廊灯火通明，欢声笑语此起彼伏。孩子们在长廊下追逐嬉戏，大人们则聚在一起享受着难得的休闲时光，聊天谈笑。这一温馨和谐的场景，正是杏林嘉园小区在业主自治管理下，不断提升居民生活品质的生动写照。</p><p><img src=\"https://pics3.baidu.com/feed/d50735fae6cd7b89af199cf24d919ca9d8330e89.jpeg@f_auto?token=3cde7a3ca0ce740ce2ad930b5782bd08\" alt=\"\" data-href=\"\" style=\"width: 699.828px;\"/></p><p><br></p><p>　　据悉，近年来，杏林嘉园小区在业主自治管理的探索与实践中取得一定成果。该小区对南、中、北3个地下车库进行了全面整修，采用先进的固化剂技术修复了破损不堪的车库路面，并对墙体和顶层进行了全面粉刷，使车库面貌焕然一新。特别是北车库西通道和小区东门面房地下室的渗水问题得到了彻底解决，有效消除了危及住宅楼体和电梯安全的重大隐患。</p><p><img src=\"https://pics1.baidu.com/feed/d01373f082025aaf34d90b85b958756a014f1adc.jpeg@f_auto?token=3b6c92b65e8b28304958d9bd07ede268\" alt=\"\" data-href=\"\" style=\"width: 699.828px;\"/></p><p><br></p><p>　　为了进一步提升居民的生活质量，杏林嘉园小区增设了一台300千瓦的备用发电机，确保停电期间电梯、上水等关键生活设施的电力供应。同时，新购置了小型警用巡逻车，增添126台高清监控摄像头，并安装电梯五方通话设备，进一步提升小区的安全管理水平。在文化休闲方面，杏林嘉园小区也下足了功夫。新改建的临时党群活动中心内，台球桌、乒乓球桌、棋牌桌等娱乐活动设施一应俱全，新时代大讲堂、展览室等功能区也配备完善。居民们在这里不仅可以享受运动的快乐，还能参与各种文化活动，丰富精神生活。此外，杏林嘉园小区还注重绿化美化工作，补栽了法国梧桐、牡丹、樱花、碧桃、桂花等多种树木和花卉，为小区增添了更多绿意和生机。</p><p><img src=\"https://pics2.baidu.com/feed/8644ebf81a4c510f1325b41c22ecfb23d52aa513.jpeg@f_auto?token=f7d882a8ad6f78a58db34b7f19c6c2fe\" alt=\"\" data-href=\"\" style=\"width: 699.828px;\"/></p><p><br></p><p>　　下一步，为满足小区业主日益增长的多样化需求，杏林嘉园将筹备修建更完善的小区党群活动中心，进一步做好小区的维修、保洁等工作，积极开展丰富多彩的文化体育活动，用创新的理念全心全意为全体业主打造安宁与幸福的生活。</p><p><br></p><p>【来源：运城新闻网】</p><p><br></p>','2025-02-20 13:04:23','http://127.0.0.1:1000/file/ef454236e7dec0510535dad872de8a8f.webp'),(9,'【新闻聚焦】哈市一批老旧小区拟实施改造，涉及39栋楼','<p><br></p><p><strong>近日，</strong><span style=\"color: rgb(0, 122, 170);\"><strong>哈市南岗区</strong></span></p><p><span style=\"color: rgb(0, 122, 170);\"><strong>2025年老旧小区改造项目</strong></span></p><p><span style=\"color: rgb(0, 122, 170);\"><strong>经相关部门批准建设</strong></span></p><p>南岗区住房和城乡建设局</p><p>现对该项目工程设计进行</p><p>公开招标</p><p style=\"text-align: center;\">▽</p><p style=\"text-align: center;\"><strong>依据招标文件，该项目主要建设内容：共涉及住宅楼39栋，总建筑面积249814.42平方米，总住户4332户。主要改造内容包括屋面、外墙、门窗、楼梯间、地沟、排水立管、地沟维修等工程，小区道路、人行道、停车场地以及小区内景观绿化、小品设施、休闲健身器材、垃圾桶等，同时更换小区内配套给水、排水、雨水及供热管网；增设小区庭院监控及入口车辆管理闸机系统。 </strong></p><p><br></p>','2025-02-20 13:04:36','http://127.0.0.1:1000/file/7f8a82e9303bfba7f9cd59bd3fd91eef.webp'),(18,'幸福2024——市级重点民生实事成绩单丨老旧小区焕新颜 居民生活更舒心','<p><br></p><p>【来源：威海晚报】</p><p><br></p><p>居住环境影响着人们生活的幸福感。</p><p><br></p><p>近年来，</p><p><br></p><p>我市持续推进老旧小区改造，</p><p><br></p><p>不断改善群众的居住体验。</p><p><br></p><p>2024年，</p><p><br></p><p>随着又一批老旧小区改造完成，</p><p><br></p><p>环境更整洁、设施更便利的小区生活，</p><p><br></p><p>让居民感受到了别样幸福。</p><p><br></p><p>项目内容</p><p><br></p><p>持续改造老旧小区，改善居民生活环境。按照基础设施全面修复、居住环境明显改善、物业管理有效提升的标准，持续改造老旧小区40个，惠及城区居民1.9万户。</p><p><br></p><p>民生现场</p><p><br></p><p>老旧小区改造让居民更有幸福感</p><p><br></p><p>“滴——”1月14日上午，高区凤凰城小区一期的居民孙建荣外出归来，刚一露面，小区入口新安装的人脸识别系统就“认”出了她，自动为她打开了门。</p><p><img src=\"https://pics3.baidu.com/feed/a686c9177f3e6709ef8c84b37133c632fadc55f5.jpeg@f_auto?token=a664f85dbdfa85a99a751da2c6a65b22\" alt=\"\" data-href=\"\" style=\"width: 699.828px;\"/></p><p><br></p><p>凤凰城小区一期增设了游园。记者 孙维 摄</p><p><br></p><p>尽管回家的路还是那一条，但孙建荣如今的感受却大不相同。“我今年62岁，一直住在这小区，对这里很有感情。自从去年小区改造完工之后，那变化可真是太大了。”孙建荣感慨道。</p><p><br></p><p>凤凰城小区一期始建于2004年，共有8栋楼，300多户居民，是个名副其实的老旧小区。在孙建荣等居民的记忆中，改造前的小区，路面破损很严重，到处坑坑洼洼，道路也比较狭窄，许多设施设备也逐渐老化，给大家的生活带来很多不便，小区改造成了居民们共同的心愿。</p><p><img src=\"https://pics5.baidu.com/feed/0eb30f2442a7d9333ed18091e4bf881c71f001de.jpeg@f_auto?token=e287a1f44daa4b07c1db61f3a18e1068\" alt=\"\" data-href=\"\" style=\"width: 699.828px;\"/></p><p><br></p><p>凤凰城小区一期地面整治一新。记者 孙维 摄</p><p><br></p><p>2024年5月，在大家的翘首期盼中，凤凰城小区一期改造工程正式启动。为了保障居民出行，施工队在雨季来临前完成了小区7000多米地下管网和1.3万平方米混凝土硬化。小区内部及周边停车区域也进行了重新规划，增加60个停车位，在一定程度上缓解了老小区停车难的问题。同时，充分利用小区内部空间，增设了2处游园广场、3处电动车充电桩。不仅如此，小区消防设施也被纳入改造范围，室外消防水管道、泵房消防控制设备、报警主机等设施均进行了改造提升，老旧小区的消防功能得到有效保障。</p><p><img src=\"https://pics6.baidu.com/feed/1b4c510fd9f9d72a578650e99ede713b369bbb63.jpeg@f_auto?token=59caf6185d780690e020407c6ccc6505\" alt=\"\" data-href=\"\" style=\"width: 699.828px;\"/></p><p><br></p><p>凤凰城小区一期道路拓宽了。记者 孙维 摄</p><p><br></p><p>“看到小区现在变得这么干净、敞亮，居民们的心情也特别好。”小区居民刘秀华说，以前小区路面破损严重，人来车往，尘土较大，家里的窗户也很容易脏。现在路面拓宽了，并重新铺设了沥青，不但宽敞整洁，而且连灰尘都少了很多。“如今，每次从窗户往外面看，眼前都是美景。”刘秀华说，等到春暖花开时，小区一定会更加美丽。</p><p><img src=\"https://pics0.baidu.com/feed/dcc451da81cb39dbe6b3b4719be2502baa1830ad.jpeg@f_auto?token=6a0f40302cfa49d804ee88960e36f35f\" alt=\"\" data-href=\"\" style=\"width: 699.828px;\"/></p><p><br></p><p>春天花园小区车辆停放有序。记者 姚威 摄</p><p><br></p><p>经开区的春天花园小区，去年也进行了老旧小区改造。改造前的春天花园小区，基础设施陈旧，雨污管道老化，道路面层坑洼不平，照明灯具脱落缺失，智慧化安防系统也未覆盖，影响着居民们的生活品质。</p><p><img src=\"https://pics5.baidu.com/feed/2fdda3cc7cd98d1024ba8af968cbe10179ec908b.jpeg@f_auto?token=83f7827e7aba01ce4ef8a374d6cd77a8\" alt=\"\" data-href=\"\" style=\"width: 699.828px;\"/></p><p><br></p><p>春天花园小区的人脸识别门禁系统。记者 姚威 摄</p><p><br></p><p>2024年11月底，春天花园小区的改造全面完工，经过半年的改造施工，小区面貌焕然一新。全新优化的“人车分流”设计，让人行空间更加宽敞；更新后的活动场地，可为广大居民提供全龄友好的活动空间；绿化全面升级，居民楼间的闲置场地也做了“微整形微改造”，公共空间变得更加开放；智慧安防系统全新“上岗”，实现小区监控全覆盖……现在的春天花园小区，让居民更有幸福感。</p><p><img src=\"https://pics1.baidu.com/feed/0824ab18972bd407f4329b44317dc75e0db30991.jpeg@f_auto?token=81f54bb9a4dff8adcfed517270564db8\" alt=\"\" data-href=\"\" style=\"width: 699.828px;\"/></p><p><br></p><p>改造后的春天花园小区游乐场更加美观实用。记者 姚威 摄</p><p><br></p><p>部门声音</p><p><br></p><p>积极倾听群众心声 改造方案更接地气</p><p><br></p><p>老旧小区改造事关千家万户。2024年，我市共完成老旧小区改造56个。其中，第一批40个老旧小区改造计划已全部完工，第二批增补的42个老旧小区改造计划目前已超前完工16个，预计2025年11月底前全部完工。</p><p><br></p><p>“在推进老旧小区改造过程中，我们主张改造方案应充分考虑到老年人这一群体的养老需求，重点考虑道路、坡道、单元入口、台阶、扶手等养老服务设施。”市住房城乡建设局工作人员介绍，2024年，在适老化改造方面，我市实施照明设施改造小区32个，实施无障碍改造小区19个。</p><p><img src=\"https://pics6.baidu.com/feed/91529822720e0cf305cfb0a440b2ab10bf09aabd.jpeg@f_auto?token=096f7ced3caebf616cf21399a2a984b4\" alt=\"\" data-href=\"\" style=\"width: 699.828px;\"/></p><p><br></p><p>春天花园小区新安装的太阳能路灯。记者 姚威 摄</p><p><br></p><p>在改造前期的意见征求和方案设计阶段，各改造项目充分发挥了社区的纽带作用，号召广大居民参与其中，积极提供意见和建议，力争让设计方案更加科学和接地气，也更贴近居民的实际需求。</p><p><br></p><p>此外，为了保障老旧小区改造工作的高质量推进，市住房城乡建设局还建立了通报督办制度，实施全过程监督指导，确保改造工作的高效推进和顺利完成。</p>','2025-02-25 16:00:50','http://127.0.0.1:1000/file/0c60011e159dad9e3361115c326996fe.webp'),(19,'幸福感哪里来，南桥“微治理”暖到了居民心窝里→','<p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0);\">今朝天气暖洋洋，在这里举办小区活动刚刚好。”</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0);\">“以前总觉得这个喷水池破损老旧，不美观还占地方，现在终于物尽其用了。”</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0);\">“改造了以后，平时有空就能在这里晒晒太阳，和邻居唠唠家常，蛮好。”</span></p><p style=\"text-align: justify;\">这个居民交口称赞的“小改造”</p><p style=\"text-align: justify;\">位于南桥镇阳光春城小区内的喷水池</p><p style=\"text-align: justify;\">从居民怨声载道的“脏乱差”</p><p style=\"text-align: justify;\">到干净整洁的“公共空间”</p><p style=\"text-align: justify;\">一起来看看</p><p style=\"text-align: justify;\">昔日老旧喷水池是如何摇身一变</p><p style=\"text-align: justify;\">成为居民都爱去的人气聚集地吧！</p><p style=\"text-align: justify;\">阳光春城小区喷水池已闲置多年，喷水设施已无法使用，地面瓷砖开裂脱落。久而久之，随手乱扔垃圾、乱晾晒等情况时有发生，严重影响了居民的生活环境，不少居民呼吁要对这块区域进行改造。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">*喷水池改造前</p><p style=\"text-align: justify;\">小区居委会于2023年上半年组织小区居民代表征集自治项目，会上经过居民代表们的开放式讨论，对阳光春城小区喷水池改建项目意愿达成高度一致。随后，在阳光春城“三位一会”会议中，将喷水池改建列为重点工作，提出将部分小水池改建为花坛，大水池铺设塑胶地板作为居民休闲场所。居委、业委会、物业公司共同来到喷水池实地查看，对改建部位进行了现场讨论，形成了初步方案。</p><p style=\"text-align: justify;\">*“三位一体”实地查看</p><p style=\"text-align: justify;\">2023年9月，业委会、物业公司随同开发商工程部来到现场，就工程进行细致部署，确保工程顺利开工。10月10日，工程项目启动动工，随后阳光春城“三位一体”对工程的具体施工进行随时跟进和监督。工程开工后，施工噪音引发喷水池附近部分居民的不理解和抱怨，居委迅速开展调解工作，耐心和居民说明了喷水池存在的弊端和改建后的益处，平息了居民们的怨气，使工程得以顺利动工。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">*喷水池改造项目施工中</p><p style=\"text-align: justify;\">12月初，改造后的喷水池迎来了首场便民志愿活动，依然是居民们熟悉的免费理发、磨刀、口腔检查、测量血糖血压、中医搭脉以及法律咨询等便民活动，但不同的是，活动场地设置在了改造后的喷水池，居民们一个个笑逐颜开，参与活动的热情更加高涨，现场气氛十分热烈。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">*喷水池改造后</p><p style=\"text-align: justify;\">2023年自第二批主题教育开展以来，贝港二居党总支结合小区实际，深入群众，大兴调查研究，了解居民“急难愁盼”。在基层走访过程中，几户居民反映，自己家中的水电设备坏了，子女不在身边，自己又不懂维修。他们也求助过物业，但家中的设施不属于物业维修范围，而且要自己承担维修费用，考虑到这些因素，就一直搁置没有维修。</p><p style=\"text-align: justify;\">对于这些有相同诉求的居民，贝港二居党总支认真筹划帮困方案，10月18日上午，组织有水电维修经验的热心党员上门为困难老人更换破损水电，免费为3户老人更换电灯2只，水龙头1个，马桶开关1个，保障了老人正常使用水电的基本生活需求。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">前期在南桥镇六墩村“长凳夜话”走访中，六墩7组村民反映污水纳管后，由于沉降、受压、管道老化等诸多原因，污水管道破损、污水外泄，希望得到修复。村里通过排摸，发现了在红星11、12组，轿行3、4组污水泵站存在的污水处理能力不足的问题，上报镇相关职能部门进行了立项，切实用心为村民解决关系群众日常生活的污水处理问题。</p><p style=\"text-align: justify;\">2023年10月，通过紧急管道抢修，修复了受损污水管道，解决污水外泄问题，惠及六墩村7组251人。后续将取消处理容量不够的红星11、12组，轿行3、4组污水泵站，直接纳管。污水纳管提标增效项目已经完成立项，即将开始动工，预计完工后将惠及红星11、12组，轿行3、4组共计1911人。</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">老旧小区改造过程中产生的停车问题是困扰居委、物业和居民的一大难题。平安中心党支部在调查走访中得知曙光新区由于旧房改造施工，居民不得不在小区外的汇智路停车而屡遭违停罚单后，立即指导居委召开“三位一体”会议，协调交警、派出所共同制定错时临停方案。</p><p style=\"text-align: justify;\">在确保安全可行的情况下，设立临时停车点，规定曙光新区改造期间，工作日下午17:30至次日上午7:30、双休日及节假日全天在汇智路南侧允许临时停放，其余时间禁止停车，并增设临时停放告示牌，由专人进行停车秩序自治管理。极大缓解了曙光新区综合整新改造期间小区内停车压力，满足小区居民停车需求的同时也减轻了交警、派出所的警情及投诉压力，周围受益的小区居民都竖起了大拇指。</p><p style=\"text-align: justify;\">贝港第六社区党总支在走访中收到居民反映，由于现在晚上天黑得早了，小区西侧田字绿廊健康步道路灯开启时间还是夏令时，影响居民晚间散步健身，自开展第二批主题教育以来，贝港第六社区党总支聚焦“我为群众办实事”，着力解决好居民群众反映的强烈问题，居委及时联系区相关部门，通过协调，将路灯开放时间调整为17:00至22:00，提前半小时亮灯为居民点亮健康之路。</p><p style=\"text-align: justify;\">报送：周燕萍（南桥镇）</p><p style=\"text-align: justify;\">编辑：何海丹</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><br></p>','2025-02-25 16:01:39','http://127.0.0.1:1000/file/bda954657c94bfa2949546e8c5eb9e61.jpg');

--
-- Table structure for table `news_comment`
--

DROP TABLE IF EXISTS `news_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `news_id` int(11) NOT NULL COMMENT '新闻id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `parent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '父级id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='新闻评论信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_comment`
--


--
-- Table structure for table `parking_fee`
--

DROP TABLE IF EXISTS `parking_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parking_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parking_space_id` int(11) NOT NULL COMMENT '车位ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `fee` float NOT NULL COMMENT '费用',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '支付状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='车位收费信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_fee`
--

INSERT INTO `parking_fee` VALUES (1,8,3,1,'已支付','2025-02-20 16:28:07'),(2,8,NULL,111,'未支付','2025-03-28 11:29:24'),(3,8,NULL,1,'未支付','2025-03-28 11:34:35'),(4,8,3,1,'未支付','2025-03-28 11:34:55'),(5,8,3,1,'已支付','2025-04-05 01:27:51'),(6,8,3,10,'未支付','2025-04-05 02:29:30');

--
-- Table structure for table `parking_lot`
--

DROP TABLE IF EXISTS `parking_lot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parking_lot` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '停车场名称',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '停车场地址',
  `parking_num` int(11) NOT NULL COMMENT '车位数量',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '停车场状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='停车场信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_lot`
--

INSERT INTO `parking_lot` VALUES (3,'A区停车场','小区东门入口右侧',150,'正常','2025-02-20 13:37:48'),(4,'B区地下停车场','B区住宅楼地下',200,'正常','2025-02-20 13:38:13'),(5,'C区临时停车场','小区中心广场旁',80,'正常','2025-02-20 13:38:35'),(6,'D区访客停车场','小区西门入口左侧',30,'维修中','2025-02-20 13:38:53'),(7,'F区临时停车场','小区南门外',2,'正常','2025-02-20 14:07:28');

--
-- Table structure for table `parking_space`
--

DROP TABLE IF EXISTS `parking_space`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parking_space` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parking_lot_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '停车场Id',
  `space_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '车位编号',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '车位类型',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `price` float NOT NULL COMMENT '小时费用',
  `month_price` float NOT NULL COMMENT '月租价格',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `remake` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='车位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_space`
--

INSERT INTO `parking_space` VALUES (8,'3','A101','固定车位','A区停车场，第1排，第1个车位',3,10,300,'2025-02-20 14:30:24','已出租',NULL),(9,'4','E510','电动车充电车位','E区电动车充电停车场，第5排，第10个车位（含充电桩）',3,10,300,'2025-02-20 14:39:21','空闲','充电费用按实际电量计费，外加每月50元车位管理费（已缴纳至2023年11月）');

--
-- Table structure for table `property_fee`
--

DROP TABLE IF EXISTS `property_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `house_id` int(11) NOT NULL COMMENT '房屋Id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `fee` float DEFAULT NULL COMMENT '费用',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '支付状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='物业收费信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_fee`
--


--
-- Table structure for table `repair`
--

DROP TABLE IF EXISTS `repair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repair` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `house_id` int(11) NOT NULL COMMENT '房屋id',
  `user_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `urgency_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '紧急程度',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `appointment_time` datetime DEFAULT NULL COMMENT '预约时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='报修信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair`
--


--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头像',
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT ' 电话',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `balance` float(11,2) NOT NULL COMMENT '余额',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

INSERT INTO `user` VALUES (3,'user1','user1','123456','http://localhost:1000/file/4a257f65c36236982d6d89bf55bdedf7.png','user1user1','user1',10.00,'启用','2025-02-20 10:59:36'),(4,'user2','user2','123456','http://localhost:1000/file/4a257f65c36236982d6d89bf55bdedf7.png',NULL,NULL,100.00,'启用','2025-02-21 06:19:12');

--
-- Table structure for table `utility_bill_fee`
--

DROP TABLE IF EXISTS `utility_bill_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utility_bill_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `house_id` int(11) NOT NULL COMMENT '房屋Id',
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收费类型',
  `reading` float DEFAULT NULL COMMENT '读数',
  `fee` float DEFAULT NULL COMMENT '费用',
  `reading_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '抄表日期',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '支付状态',
  `charge_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收费时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='水电收费信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility_bill_fee`
--

INSERT INTO `utility_bill_fee` VALUES (11,9,3,'水费',10,10,'2025-04-05','未支付',NULL,'2025-04-05 02:28:38');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-12 14:37:45
