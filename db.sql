/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wenhuatiyanguan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wenhuatiyanguan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wenhuatiyanguan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/wenhuatiyanguan/upload/1615620714604.png'),(2,'picture2','http://localhost:8080/wenhuatiyanguan/upload/1615620870845.jpg'),(3,'picture3','http://localhost:8080/wenhuatiyanguan/upload/1615620879042.jpg'),(6,'picture4','http://localhost:8080/wenhuatiyanguan/upload/1615620887285.jpg'),(7,'picture5','http://localhost:8080/wenhuatiyanguan/upload/1615620896296.jpg');

/*Table structure for table `discussquweishipin` */

DROP TABLE IF EXISTS `discussquweishipin`;

CREATE TABLE `discussquweishipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614769856685 DEFAULT CHARSET=utf8 COMMENT='游戏攻略评论表';

/*Data for the table `discussquweishipin` */

insert  into `discussquweishipin`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (91,'2021-03-14 15:48:49',1,1,'评论内容1','回复内容1'),(92,'2021-03-14 15:48:49',2,2,'评论内容2','回复内容2'),(93,'2021-03-14 15:48:49',3,3,'评论内容3','回复内容3'),(94,'2021-03-14 15:48:49',4,4,'评论内容4','回复内容4'),(95,'2021-03-14 15:48:49',5,5,'评论内容5','回复内容5'),(96,'2021-03-14 15:48:49',6,6,'评论内容6','回复内容6'),(1614764470916,'2021-03-03 17:41:09',2,11,'123123',NULL),(1614764527869,'2021-03-03 17:42:07',2,11,'123312213',NULL),(1614769780175,'2021-03-03 19:09:39',3,11,'1111',NULL),(1614769788426,'2021-03-03 19:09:47',3,11,'111',NULL),(1614769856684,'2021-03-03 19:10:56',3,11,'13213231',NULL);

/*Table structure for table `discusszhizuoshipin` */

DROP TABLE IF EXISTS `discusszhizuoshipin`;

CREATE TABLE `discusszhizuoshipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614769856685 DEFAULT CHARSET=utf8 COMMENT='游戏攻略评论表';

/*Data for the table `discusszhizuoshipin` */

insert  into `discusszhizuoshipin`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (91,'2021-03-14 15:48:49',1,1,'评论内容1','回复内容1'),(92,'2021-03-14 15:48:49',2,2,'评论内容2','回复内容2'),(93,'2021-03-14 15:48:49',3,3,'评论内容3','回复内容3'),(94,'2021-03-14 15:48:49',4,4,'评论内容4','回复内容4'),(95,'2021-03-14 15:48:49',5,5,'评论内容5','回复内容5'),(96,'2021-03-14 15:48:49',6,6,'评论内容6','回复内容6'),(1614764470916,'2021-03-03 17:41:09',2,11,'123123',NULL),(1614764527869,'2021-03-03 17:42:07',2,11,'123312213',NULL),(1614769780175,'2021-03-03 19:09:39',3,11,'1111',NULL),(1614769788426,'2021-03-03 19:09:47',3,11,'111',NULL),(1614769856684,'2021-03-03 19:10:56',3,11,'13213231',NULL);

/*Table structure for table `lishibeijing` */

DROP TABLE IF EXISTS `lishibeijing`;

CREATE TABLE `lishibeijing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613980949908 DEFAULT CHARSET=utf8 COMMENT='游戏资讯';

/*Data for the table `lishibeijing` */

insert  into `lishibeijing`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-03-14 15:48:49','历史背景1','历史背景简介1','http://localhost:8080/wenhuatiyanguan/upload/1615620550234.jpeg','<p>历史背景内容1</p>'),(82,'2021-03-14 15:48:49','历史背景2','历史背景简介2','http://localhost:8080/wenhuatiyanguan/upload/1615620565853.jpeg','<p>历史背景内容2</p>'),(83,'2021-03-14 15:48:49','历史背景3','历史背景简介3','http://localhost:8080/wenhuatiyanguan/upload/1615620577685.jpg','<p>历史背景内容3</p>');

/*Table structure for table `quweigushi` */

DROP TABLE IF EXISTS `quweigushi`;

CREATE TABLE `quweigushi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613980949908 DEFAULT CHARSET=utf8 COMMENT='游戏资讯';

/*Data for the table `quweigushi` */

insert  into `quweigushi`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-03-14 15:48:49','趣味故事1','趣味故事简介1','http://localhost:8080/wenhuatiyanguan/upload/1615620407373.jpg','<p>趣味故事内容1</p>'),(82,'2021-03-14 15:48:49','趣味故事2','趣味故事简介2','http://localhost:8080/wenhuatiyanguan/upload/1615620423610.jpg','<p>趣味故事内容2</p>'),(83,'2021-03-14 15:48:49','趣味故事3','趣味故事简介3','http://localhost:8080/wenhuatiyanguan/upload/1615620433193.jpg','<p>趣味故事内容3</p>');

/*Table structure for table `quweishipin` */

DROP TABLE IF EXISTS `quweishipin`;

CREATE TABLE `quweishipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `jianjie` longtext COMMENT '简介',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `banned` int(11) DEFAULT '0' COMMENT '是否禁言',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615622292666 DEFAULT CHARSET=utf8 COMMENT='游戏攻略';

/*Data for the table `quweishipin` */

insert  into `quweishipin`(`id`,`addtime`,`biaoti`,`fenlei`,`fengmian`,`shipin`,`wenjian`,`riqi`,`jianjie`,`xiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`banned`) values (1615620194529,'2021-03-13 15:23:14','趣味视频1','趣味视频','http://localhost:8080/wenhuatiyanguan/upload/1615620159638.gif','http://localhost:8080/wenhuatiyanguan/upload/1615620165440.mp4','http://localhost:8080/wenhuatiyanguan/upload/1615620179136.gif','2021-03-02','趣味视频简介1','<p>趣味视频详情1</p>',0,0,NULL,0,0),(1615620224344,'2021-03-13 15:23:43','趣味视频2','趣味视频','http://localhost:8080/wenhuatiyanguan/upload/1615620205638.gif','http://localhost:8080/wenhuatiyanguan/upload/1615620208995.mp4','http://localhost:8080/wenhuatiyanguan/upload/1615620212285.gif','2021-03-02','趣味视频简介2','<p>趣味视频详情2</p>',0,0,'2021-03-13 16:06:18',1,0),(1615620258374,'2021-03-13 15:24:18','趣味视频3','趣味视频','http://localhost:8080/wenhuatiyanguan/upload/1615620234923.jpg','http://localhost:8080/wenhuatiyanguan/upload/1615620244854.mp4','http://localhost:8080/wenhuatiyanguan/upload/1615620240670.jpg','2021-03-18','趣味视频简介3','<p>趣味视频详情3</p>',0,0,NULL,0,0);

/*Table structure for table `shipinfenlei` */

DROP TABLE IF EXISTS `shipinfenlei`;

CREATE TABLE `shipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615622193494 DEFAULT CHARSET=utf8 COMMENT='游戏分类';

/*Data for the table `shipinfenlei` */

insert  into `shipinfenlei`(`id`,`addtime`,`fenlei`) values (1615619667414,'2021-03-13 15:14:27','剪纸教程'),(1615619679526,'2021-03-13 15:14:39','陶瓷制作教程'),(1615619694879,'2021-03-13 15:14:53','趣味视频');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615622780230 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615620957203,'2021-03-13 15:35:56',11,1615619989889,'zhizuoshipin','剪纸教程2','http://localhost:8080/wenhuatiyanguan/upload/1615619971296.jpg'),(1615622780229,'2021-03-13 16:06:19',11,1615620224344,'quweishipin','趣味视频2','http://localhost:8080/wenhuatiyanguan/upload/1615620205638.gif');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ppzhky45y1r4yyxl3ueacx8lcs3imqi9','2021-03-14 15:51:04','2021-03-13 17:28:38'),(2,11,'001','yonghu','用户','ywe38qzvng82jnmy3tz0rkv9rd8blewk','2021-03-14 15:56:36','2021-03-13 16:58:38'),(3,1613980983448,'002','yonghu','用户','ed23kml3sxqukh0blhjicid364vuvvns','2021-03-14 16:03:09','2021-03-14 17:03:10');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-03-14 15:48:50');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `banned` int(255) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`zhaopian`,`banned`) values (11,'2021-03-14 15:48:49','111','111','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/wenhuatiyanguan/upload/yonghu_zhaopian1.jpg',0),(12,'2021-03-14 15:48:49','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/wenhuatiyanguan/upload/yonghu_zhaopian2.jpg',0),(13,'2021-03-14 15:48:49','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/wenhuatiyanguan/upload/yonghu_zhaopian3.jpg',0),(14,'2021-03-14 15:48:49','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/wenhuatiyanguan/upload/yonghu_zhaopian4.jpg',0),(15,'2021-03-14 15:48:49','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/wenhuatiyanguan/upload/yonghu_zhaopian5.jpg',0),(16,'2021-03-14 15:48:49','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/wenhuatiyanguan/upload/yonghu_zhaopian6.jpg',0);

/*Table structure for table `zhizuoshipin` */

DROP TABLE IF EXISTS `zhizuoshipin`;

CREATE TABLE `zhizuoshipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `jianjie` longtext COMMENT '简介',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `banned` int(11) DEFAULT '0' COMMENT '是否禁言',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615622241677 DEFAULT CHARSET=utf8 COMMENT='游戏攻略';

/*Data for the table `zhizuoshipin` */

insert  into `zhizuoshipin`(`id`,`addtime`,`biaoti`,`fenlei`,`fengmian`,`shipin`,`wenjian`,`riqi`,`jianjie`,`xiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`banned`) values (1615619889999,'2021-03-13 15:18:09','剪纸教程1','剪纸教程','http://localhost:8080/wenhuatiyanguan/upload/1615619733600.jpg','http://localhost:8080/wenhuatiyanguan/upload/1615619885765.mp4','http://localhost:8080/wenhuatiyanguan/upload/1615619740293.jpg','2021-03-11','剪纸简介1','<p>剪纸详情1</p>',0,0,'2021-03-13 15:59:01',1,0),(1615619959293,'2021-03-13 15:19:18','陶瓷教程1','陶瓷制作教程','http://localhost:8080/wenhuatiyanguan/upload/1615619940181.png','http://localhost:8080/wenhuatiyanguan/upload/1615619943911.mp4','http://localhost:8080/wenhuatiyanguan/upload/1615619947193.png','2021-03-18','陶瓷简介1','<p>陶瓷详情1</p>',0,0,'2021-03-13 15:59:16',4,0),(1615619989889,'2021-03-13 15:19:49','剪纸教程2','剪纸教程','http://localhost:8080/wenhuatiyanguan/upload/1615619971296.jpg','http://localhost:8080/wenhuatiyanguan/upload/1615619975167.mp4','http://localhost:8080/wenhuatiyanguan/upload/1615619978629.jpg','2021-03-26','剪纸简介2','<p>剪纸详情2</p>',3,0,'2021-03-13 15:58:54',2,0),(1615620026107,'2021-03-13 15:20:25','陶瓷教程2','陶瓷制作教程','http://localhost:8080/wenhuatiyanguan/upload/1615620001712.jpg','http://localhost:8080/wenhuatiyanguan/upload/1615620005375.mp4','http://localhost:8080/wenhuatiyanguan/upload/1615620009046.jpg','2021-03-04','陶瓷简介2','<p>陶瓷详情2</p>',0,0,NULL,0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
