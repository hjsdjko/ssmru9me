/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmru9me
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmru9me` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmru9me`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmru9me/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmru9me/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmru9me/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussxianshangyingyuan` */

DROP TABLE IF EXISTS `discussxianshangyingyuan`;

CREATE TABLE `discussxianshangyingyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='线上应援评论表';

/*Data for the table `discussxianshangyingyuan` */

insert  into `discussxianshangyingyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-04-24 14:55:27',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-04-24 14:55:27',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-04-24 14:55:27',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-04-24 14:55:27',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-04-24 14:55:27',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-04-24 14:55:27',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `goumaidingdan` */

DROP TABLE IF EXISTS `goumaidingdan`;

CREATE TABLE `goumaidingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanhao` varchar(200) DEFAULT NULL COMMENT '订单号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinjiage` int(11) DEFAULT NULL COMMENT '物品价格',
  `goumaishuliang` int(11) DEFAULT NULL COMMENT '购买数量',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dizhi` longtext COMMENT '地址',
  `goumaijine` varchar(200) DEFAULT NULL COMMENT '购买金额',
  `wupintupian` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanhao` (`dingdanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='购买订单';

/*Data for the table `goumaidingdan` */

insert  into `goumaidingdan`(`id`,`addtime`,`dingdanhao`,`wupinmingcheng`,`wupinjiage`,`goumaishuliang`,`zhanghao`,`xingming`,`dizhi`,`goumaijine`,`wupintupian`,`ispay`,`userid`) values (51,'2021-04-24 14:55:27','订单号1','物品名称1',1,1,'账号1','姓名1','地址1','购买金额1','http://localhost:8080/ssmru9me/upload/goumaidingdan_wupintupian1.jpg','未支付',1),(52,'2021-04-24 14:55:27','订单号2','物品名称2',2,2,'账号2','姓名2','地址2','购买金额2','http://localhost:8080/ssmru9me/upload/goumaidingdan_wupintupian2.jpg','未支付',2),(53,'2021-04-24 14:55:27','订单号3','物品名称3',3,3,'账号3','姓名3','地址3','购买金额3','http://localhost:8080/ssmru9me/upload/goumaidingdan_wupintupian3.jpg','未支付',3),(54,'2021-04-24 14:55:27','订单号4','物品名称4',4,4,'账号4','姓名4','地址4','购买金额4','http://localhost:8080/ssmru9me/upload/goumaidingdan_wupintupian4.jpg','未支付',4),(55,'2021-04-24 14:55:27','订单号5','物品名称5',5,5,'账号5','姓名5','地址5','购买金额5','http://localhost:8080/ssmru9me/upload/goumaidingdan_wupintupian5.jpg','未支付',5),(56,'2021-04-24 14:55:27','订单号6','物品名称6',6,6,'账号6','姓名6','地址6','购买金额6','http://localhost:8080/ssmru9me/upload/goumaidingdan_wupintupian6.jpg','未支付',6);

/*Table structure for table `jizidingdan` */

DROP TABLE IF EXISTS `jizidingdan`;

CREATE TABLE `jizidingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yingyuanmingxing` varchar(200) DEFAULT NULL COMMENT '应援明星',
  `goumaijine` int(11) DEFAULT NULL COMMENT '购买金额',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `mingxingzhaopian` varchar(200) DEFAULT NULL COMMENT '明星照片',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='集资订单';

/*Data for the table `jizidingdan` */

insert  into `jizidingdan`(`id`,`addtime`,`yingyuanmingxing`,`goumaijine`,`huodongmingcheng`,`zhanghao`,`xingming`,`mingxingzhaopian`,`ispay`,`userid`) values (71,'2021-04-24 14:55:27','应援明星1',1,'活动名称1','账号1','姓名1','http://localhost:8080/ssmru9me/upload/jizidingdan_mingxingzhaopian1.jpg','未支付',1),(72,'2021-04-24 14:55:27','应援明星2',2,'活动名称2','账号2','姓名2','http://localhost:8080/ssmru9me/upload/jizidingdan_mingxingzhaopian2.jpg','未支付',2),(73,'2021-04-24 14:55:27','应援明星3',3,'活动名称3','账号3','姓名3','http://localhost:8080/ssmru9me/upload/jizidingdan_mingxingzhaopian3.jpg','未支付',3),(74,'2021-04-24 14:55:27','应援明星4',4,'活动名称4','账号4','姓名4','http://localhost:8080/ssmru9me/upload/jizidingdan_mingxingzhaopian4.jpg','未支付',4),(75,'2021-04-24 14:55:27','应援明星5',5,'活动名称5','账号5','姓名5','http://localhost:8080/ssmru9me/upload/jizidingdan_mingxingzhaopian5.jpg','未支付',5),(76,'2021-04-24 14:55:27','应援明星6',6,'活动名称6','账号6','姓名6','http://localhost:8080/ssmru9me/upload/jizidingdan_mingxingzhaopian6.jpg','未支付',6);

/*Table structure for table `jiziyingyuan` */

DROP TABLE IF EXISTS `jiziyingyuan`;

CREATE TABLE `jiziyingyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yingyuanmingxing` varchar(200) DEFAULT NULL COMMENT '应援明星',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `yujijine` int(11) DEFAULT NULL COMMENT '预集金额',
  `mingxingzhaopian` varchar(200) DEFAULT NULL COMMENT '明星照片',
  `jizimude` longtext COMMENT '集资目的',
  `jizixiangqing` varchar(200) DEFAULT NULL COMMENT '集资详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='集资应援';

/*Data for the table `jiziyingyuan` */

insert  into `jiziyingyuan`(`id`,`addtime`,`yingyuanmingxing`,`huodongmingcheng`,`yujijine`,`mingxingzhaopian`,`jizimude`,`jizixiangqing`) values (61,'2021-04-24 14:55:27','应援明星1','活动名称1',1,'http://localhost:8080/ssmru9me/upload/jiziyingyuan_mingxingzhaopian1.jpg','集资目的1','集资详情1'),(62,'2021-04-24 14:55:27','应援明星2','活动名称2',2,'http://localhost:8080/ssmru9me/upload/jiziyingyuan_mingxingzhaopian2.jpg','集资目的2','集资详情2'),(63,'2021-04-24 14:55:27','应援明星3','活动名称3',3,'http://localhost:8080/ssmru9me/upload/jiziyingyuan_mingxingzhaopian3.jpg','集资目的3','集资详情3'),(64,'2021-04-24 14:55:27','应援明星4','活动名称4',4,'http://localhost:8080/ssmru9me/upload/jiziyingyuan_mingxingzhaopian4.jpg','集资目的4','集资详情4'),(65,'2021-04-24 14:55:27','应援明星5','活动名称5',5,'http://localhost:8080/ssmru9me/upload/jiziyingyuan_mingxingzhaopian5.jpg','集资目的5','集资详情5'),(66,'2021-04-24 14:55:27','应援明星6','活动名称6',6,'http://localhost:8080/ssmru9me/upload/jiziyingyuan_mingxingzhaopian6.jpg','集资目的6','集资详情6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='应援资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-04-24 14:55:27','标题1','简介1','http://localhost:8080/ssmru9me/upload/news_picture1.jpg','内容1'),(102,'2021-04-24 14:55:27','标题2','简介2','http://localhost:8080/ssmru9me/upload/news_picture2.jpg','内容2'),(103,'2021-04-24 14:55:27','标题3','简介3','http://localhost:8080/ssmru9me/upload/news_picture3.jpg','内容3'),(104,'2021-04-24 14:55:27','标题4','简介4','http://localhost:8080/ssmru9me/upload/news_picture4.jpg','内容4'),(105,'2021-04-24 14:55:27','标题5','简介5','http://localhost:8080/ssmru9me/upload/news_picture5.jpg','内容5'),(106,'2021-04-24 14:55:27','标题6','简介6','http://localhost:8080/ssmru9me/upload/news_picture6.jpg','内容6');

/*Table structure for table `shijipingtai` */

DROP TABLE IF EXISTS `shijipingtai`;

CREATE TABLE `shijipingtai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinxiangqing` longtext COMMENT '物品详情',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `wupinjine` varchar(200) DEFAULT NULL COMMENT '物品金额',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` longtext COMMENT '手机',
  `wupintupian` varchar(200) DEFAULT NULL COMMENT '物品图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='市集平台';

/*Data for the table `shijipingtai` */

insert  into `shijipingtai`(`id`,`addtime`,`wupinmingcheng`,`wupinxiangqing`,`beizhu`,`wupinjine`,`zhanghao`,`xingming`,`shouji`,`wupintupian`) values (81,'2021-04-24 14:55:27','物品名称1','物品详情1','备注1','物品金额1','账号1','姓名1','手机1','http://localhost:8080/ssmru9me/upload/shijipingtai_wupintupian1.jpg'),(82,'2021-04-24 14:55:27','物品名称2','物品详情2','备注2','物品金额2','账号2','姓名2','手机2','http://localhost:8080/ssmru9me/upload/shijipingtai_wupintupian2.jpg'),(83,'2021-04-24 14:55:27','物品名称3','物品详情3','备注3','物品金额3','账号3','姓名3','手机3','http://localhost:8080/ssmru9me/upload/shijipingtai_wupintupian3.jpg'),(84,'2021-04-24 14:55:27','物品名称4','物品详情4','备注4','物品金额4','账号4','姓名4','手机4','http://localhost:8080/ssmru9me/upload/shijipingtai_wupintupian4.jpg'),(85,'2021-04-24 14:55:27','物品名称5','物品详情5','备注5','物品金额5','账号5','姓名5','手机5','http://localhost:8080/ssmru9me/upload/shijipingtai_wupintupian5.jpg'),(86,'2021-04-24 14:55:27','物品名称6','物品详情6','备注6','物品金额6','账号6','姓名6','手机6','http://localhost:8080/ssmru9me/upload/shijipingtai_wupintupian6.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-24 14:55:27');

/*Table structure for table `xianshangyingyuan` */

DROP TABLE IF EXISTS `xianshangyingyuan`;

CREATE TABLE `xianshangyingyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yingyuanmingxing` varchar(200) DEFAULT NULL COMMENT '应援明星',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `mingxingzhaopian` varchar(200) DEFAULT NULL COMMENT '明星照片',
  `yingyuanbiaoyu` varchar(200) DEFAULT NULL COMMENT '应援标语',
  `yingyuanneirong` varchar(200) DEFAULT NULL COMMENT '应援内容',
  `yingyuanxiangqing` longtext COMMENT '应援详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='线上应援';

/*Data for the table `xianshangyingyuan` */

insert  into `xianshangyingyuan`(`id`,`addtime`,`yingyuanmingxing`,`zhanghao`,`xingming`,`mingxingzhaopian`,`yingyuanbiaoyu`,`yingyuanneirong`,`yingyuanxiangqing`,`thumbsupnum`,`crazilynum`) values (21,'2021-04-24 14:55:27','应援明星1','账号1','姓名1','http://localhost:8080/ssmru9me/upload/xianshangyingyuan_mingxingzhaopian1.jpg','应援标语1','应援内容1','应援详情1',1,1),(22,'2021-04-24 14:55:27','应援明星2','账号2','姓名2','http://localhost:8080/ssmru9me/upload/xianshangyingyuan_mingxingzhaopian2.jpg','应援标语2','应援内容2','应援详情2',2,2),(23,'2021-04-24 14:55:27','应援明星3','账号3','姓名3','http://localhost:8080/ssmru9me/upload/xianshangyingyuan_mingxingzhaopian3.jpg','应援标语3','应援内容3','应援详情3',3,3),(24,'2021-04-24 14:55:27','应援明星4','账号4','姓名4','http://localhost:8080/ssmru9me/upload/xianshangyingyuan_mingxingzhaopian4.jpg','应援标语4','应援内容4','应援详情4',4,4),(25,'2021-04-24 14:55:27','应援明星5','账号5','姓名5','http://localhost:8080/ssmru9me/upload/xianshangyingyuan_mingxingzhaopian5.jpg','应援标语5','应援内容5','应援详情5',5,5),(26,'2021-04-24 14:55:27','应援明星6','账号6','姓名6','http://localhost:8080/ssmru9me/upload/xianshangyingyuan_mingxingzhaopian6.jpg','应援标语6','应援内容6','应援详情6',6,6);

/*Table structure for table `xianxiayingyuan` */

DROP TABLE IF EXISTS `xianxiayingyuan`;

CREATE TABLE `xianxiayingyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongneirong` longtext COMMENT '活动内容',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `canyurenshu` varchar(200) DEFAULT NULL COMMENT '参与人数',
  `yingyuanmingxing` varchar(200) DEFAULT NULL COMMENT '应援明星',
  `mingxingzhaopian` varchar(200) DEFAULT NULL COMMENT '明星照片',
  `huodongxiangqing` longtext COMMENT '活动详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='线下应援';

/*Data for the table `xianxiayingyuan` */

insert  into `xianxiayingyuan`(`id`,`addtime`,`huodongdidian`,`huodongmingcheng`,`huodongneirong`,`zhanghao`,`xingming`,`shouji`,`canyurenshu`,`yingyuanmingxing`,`mingxingzhaopian`,`huodongxiangqing`) values (31,'2021-04-24 14:55:27','活动地点1','活动名称1','活动内容1','账号1','姓名1','手机1','参与人数1','应援明星1','http://localhost:8080/ssmru9me/upload/xianxiayingyuan_mingxingzhaopian1.jpg','活动详情1'),(32,'2021-04-24 14:55:27','活动地点2','活动名称2','活动内容2','账号2','姓名2','手机2','参与人数2','应援明星2','http://localhost:8080/ssmru9me/upload/xianxiayingyuan_mingxingzhaopian2.jpg','活动详情2'),(33,'2021-04-24 14:55:27','活动地点3','活动名称3','活动内容3','账号3','姓名3','手机3','参与人数3','应援明星3','http://localhost:8080/ssmru9me/upload/xianxiayingyuan_mingxingzhaopian3.jpg','活动详情3'),(34,'2021-04-24 14:55:27','活动地点4','活动名称4','活动内容4','账号4','姓名4','手机4','参与人数4','应援明星4','http://localhost:8080/ssmru9me/upload/xianxiayingyuan_mingxingzhaopian4.jpg','活动详情4'),(35,'2021-04-24 14:55:27','活动地点5','活动名称5','活动内容5','账号5','姓名5','手机5','参与人数5','应援明星5','http://localhost:8080/ssmru9me/upload/xianxiayingyuan_mingxingzhaopian5.jpg','活动详情5'),(36,'2021-04-24 14:55:27','活动地点6','活动名称6','活动内容6','账号6','姓名6','手机6','参与人数6','应援明星6','http://localhost:8080/ssmru9me/upload/xianxiayingyuan_mingxingzhaopian6.jpg','活动详情6');

/*Table structure for table `yingyuanjiaoliu` */

DROP TABLE IF EXISTS `yingyuanjiaoliu`;

CREATE TABLE `yingyuanjiaoliu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tiezibiaoti` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `tiezineirong` longtext COMMENT '帖子内容',
  `tiezifengmian` varchar(200) DEFAULT NULL COMMENT '帖子封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='应援交流';

/*Data for the table `yingyuanjiaoliu` */

insert  into `yingyuanjiaoliu`(`id`,`addtime`,`tiezibiaoti`,`fabushijian`,`zhanghao`,`tiezineirong`,`tiezifengmian`) values (91,'2021-04-24 14:55:27','帖子标题1','2021-04-24 14:55:27','账号1','帖子内容1','http://localhost:8080/ssmru9me/upload/yingyuanjiaoliu_tiezifengmian1.jpg'),(92,'2021-04-24 14:55:27','帖子标题2','2021-04-24 14:55:27','账号2','帖子内容2','http://localhost:8080/ssmru9me/upload/yingyuanjiaoliu_tiezifengmian2.jpg'),(93,'2021-04-24 14:55:27','帖子标题3','2021-04-24 14:55:27','账号3','帖子内容3','http://localhost:8080/ssmru9me/upload/yingyuanjiaoliu_tiezifengmian3.jpg'),(94,'2021-04-24 14:55:27','帖子标题4','2021-04-24 14:55:27','账号4','帖子内容4','http://localhost:8080/ssmru9me/upload/yingyuanjiaoliu_tiezifengmian4.jpg'),(95,'2021-04-24 14:55:27','帖子标题5','2021-04-24 14:55:27','账号5','帖子内容5','http://localhost:8080/ssmru9me/upload/yingyuanjiaoliu_tiezifengmian5.jpg'),(96,'2021-04-24 14:55:27','帖子标题6','2021-04-24 14:55:27','账号6','帖子内容6','http://localhost:8080/ssmru9me/upload/yingyuanjiaoliu_tiezifengmian6.jpg');

/*Table structure for table `yingyuanwupin` */

DROP TABLE IF EXISTS `yingyuanwupin`;

CREATE TABLE `yingyuanwupin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinjiage` int(11) DEFAULT NULL COMMENT '物品价格',
  `wupintupian` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `wupinxiangqing` longtext COMMENT '物品详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='应援物品';

/*Data for the table `yingyuanwupin` */

insert  into `yingyuanwupin`(`id`,`addtime`,`wupinmingcheng`,`wupinjiage`,`wupintupian`,`wupinxiangqing`) values (41,'2021-04-24 14:55:27','物品名称1',1,'http://localhost:8080/ssmru9me/upload/yingyuanwupin_wupintupian1.jpg','物品详情1'),(42,'2021-04-24 14:55:27','物品名称2',2,'http://localhost:8080/ssmru9me/upload/yingyuanwupin_wupintupian2.jpg','物品详情2'),(43,'2021-04-24 14:55:27','物品名称3',3,'http://localhost:8080/ssmru9me/upload/yingyuanwupin_wupintupian3.jpg','物品详情3'),(44,'2021-04-24 14:55:27','物品名称4',4,'http://localhost:8080/ssmru9me/upload/yingyuanwupin_wupintupian4.jpg','物品详情4'),(45,'2021-04-24 14:55:27','物品名称5',5,'http://localhost:8080/ssmru9me/upload/yingyuanwupin_wupintupian5.jpg','物品详情5'),(46,'2021-04-24 14:55:27','物品名称6',6,'http://localhost:8080/ssmru9me/upload/yingyuanwupin_wupintupian6.jpg','物品详情6');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-24 14:55:27','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmru9me/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-24 14:55:27','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmru9me/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-24 14:55:27','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmru9me/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-24 14:55:27','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmru9me/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-24 14:55:27','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmru9me/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-24 14:55:27','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmru9me/upload/yonghu_zhaopian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
