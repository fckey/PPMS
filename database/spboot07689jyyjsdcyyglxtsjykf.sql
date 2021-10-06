/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : spboot07689jyyjsdcyyglxtsjykf

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2021-04-16 13:58:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '帐号',
  `pwd` varchar(50) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'admin', '2021-04-16 13:21:31');

-- ----------------------------
-- Table structure for `chengyuan`
-- ----------------------------
DROP TABLE IF EXISTS `chengyuan`;
CREATE TABLE `chengyuan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zhanghao` varchar(50) NOT NULL COMMENT '账号',
  `mima` varchar(50) NOT NULL COMMENT '密码',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `xingbie` varchar(255) NOT NULL COMMENT '性别',
  `shengri` varchar(25) NOT NULL COMMENT '生日',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `dianhua` varchar(50) NOT NULL COMMENT '电话',
  `xiangmu` varchar(255) NOT NULL COMMENT '项目',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='成员';

-- ----------------------------
-- Records of chengyuan
-- ----------------------------
INSERT INTO `chengyuan` VALUES ('1', '100', '100', '小红', '女', '2021-04-16', '38', '13333333333', '工时填报项目', '2021-04-16 13:20:30');
INSERT INTO `chengyuan` VALUES ('2', '200', '200', '小王', '男', '2021-04-16', '22', '13333333666', '城市智能快捷项目', '2021-04-16 13:20:42');
INSERT INTO `chengyuan` VALUES ('3', '300', '300', '老王', '男', '2021-04-16', '22', '13333333444', '酒店客房管理系统', '2021-04-16 13:20:57');
INSERT INTO `chengyuan` VALUES ('4', '400', '400', '李四', '男', '2021-04-16', '22', '13333333337', '测试测试测试', '2021-04-16 13:55:07');

-- ----------------------------
-- Table structure for `xiangmuxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `xiangmuxinxi`;
CREATE TABLE `xiangmuxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xiangmubianhao` varchar(50) NOT NULL COMMENT '项目编号',
  `xiangmumingcheng` varchar(255) NOT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(50) NOT NULL COMMENT '项目类型',
  `xiangmuwendang` varchar(255) NOT NULL COMMENT '项目文档',
  `xiangmujianjie` longtext NOT NULL COMMENT '项目简介',
  `tianjiaren` varchar(50) NOT NULL COMMENT '添加人',
  `xiangmujinzhan` varchar(255) NOT NULL COMMENT '项目进展',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='项目信息';

-- ----------------------------
-- Records of xiangmuxinxi
-- ----------------------------
INSERT INTO `xiangmuxinxi` VALUES ('1', '04161319059272', '工时填报项目', 'XX', 'upload/20210416/d15c4271-7f29-49e3-9d2a-6f62f2632920.ppt', '<p>工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目工时填报项目</p>', 'admin', '待开始', '2021-04-16 13:19:14');
INSERT INTO `xiangmuxinxi` VALUES ('2', '04161319141884', '城市智能快捷项目', 'XX', 'upload/20210416/7322fefd-cabf-41fa-84e2-e534113946e7.ppt', '<p>城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目城市智能快捷项目</p>', 'admin', '待开始', '2021-04-16 13:19:24');
INSERT INTO `xiangmuxinxi` VALUES ('3', '04161319249683', '酒店客房管理系统', 'A', 'upload/20210416/9d2ad51f-294d-4bf7-a98f-88acebe4c7a6.ppt', '<p>酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统酒店客房管理系统</p>', 'admin', '进行中', '2021-04-16 13:19:40');
INSERT INTO `xiangmuxinxi` VALUES ('4', '04161354291274', '测试测试测试', 'A', 'upload/20210416/1ab6e511-332f-463b-a770-5d8d74338862.ppt', '<p>测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试</p>', 'admin', '待开始', '2021-04-16 13:54:40');

-- ----------------------------
-- Table structure for `yuanquzichan`
-- ----------------------------
DROP TABLE IF EXISTS `yuanquzichan`;
CREATE TABLE `yuanquzichan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zichanbianhao` varchar(50) NOT NULL COMMENT '资产编号',
  `zichanmingcheng` varchar(255) NOT NULL COMMENT '资产名称',
  `zichanleixing` varchar(50) NOT NULL COMMENT '资产类型',
  `zichanshuliang` int(11) NOT NULL COMMENT '资产数量',
  `zichanjianjie` varchar(50) NOT NULL COMMENT '资产简介',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='园区资产';

-- ----------------------------
-- Records of yuanquzichan
-- ----------------------------
INSERT INTO `yuanquzichan` VALUES ('1', '04161327331573', 'A资产', 'A', '329', 'XX', '2021-04-16 13:27:40');
INSERT INTO `yuanquzichan` VALUES ('2', '04161327404890', 'B资产', 'A', '332', 'XXX', '2021-04-16 13:27:46');
INSERT INTO `yuanquzichan` VALUES ('3', '04161327468860', 'C资产', 'A', '294', 'XXX', '2021-04-16 13:27:55');

-- ----------------------------
-- Table structure for `zhidaoxiangmu`
-- ----------------------------
DROP TABLE IF EXISTS `zhidaoxiangmu`;
CREATE TABLE `zhidaoxiangmu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zhuanjiaid` int(10) unsigned NOT NULL COMMENT '专家id',
  `zhuanjiabianhao` varchar(50) NOT NULL COMMENT '专家编号',
  `zhuanjiaxingming` varchar(50) NOT NULL COMMENT '专家姓名',
  `zhidaoxiangmu` text NOT NULL COMMENT '指导项目',
  `beizhu` text NOT NULL COMMENT '备注',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `zhidaoxiangmu_zhuanjiaid_index` (`zhuanjiaid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='指导项目';

-- ----------------------------
-- Records of zhidaoxiangmu
-- ----------------------------
INSERT INTO `zhidaoxiangmu` VALUES ('1', '1', '04161321351027', '东阳', '酒店客房管理系统,工时填报项目', 'XX', '2021-04-16 13:26:31');
INSERT INTO `zhidaoxiangmu` VALUES ('2', '2', '04161321442806', '汉堡', '城市智能快捷项目,工时填报项目', 'X', '2021-04-16 13:26:41');
INSERT INTO `zhidaoxiangmu` VALUES ('3', '3', '04161355361311', '测试专家', '测试测试测试,酒店客房管理系统,工时填报项目', 'XX', '2021-04-16 13:55:49');

-- ----------------------------
-- Table structure for `zhuanjia`
-- ----------------------------
DROP TABLE IF EXISTS `zhuanjia`;
CREATE TABLE `zhuanjia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zhuanjiabianhao` varchar(50) NOT NULL COMMENT '专家编号',
  `zhuanjiaxingming` varchar(50) NOT NULL COMMENT '专家姓名',
  `zhuanjiaxingbie` varchar(255) NOT NULL COMMENT '专家性别',
  `dianhua` varchar(50) NOT NULL COMMENT '电话',
  `jiguan` varchar(50) NOT NULL COMMENT '籍贯',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='专家';

-- ----------------------------
-- Records of zhuanjia
-- ----------------------------
INSERT INTO `zhuanjia` VALUES ('1', '04161321351027', '东阳', '男', '13333333337', '北京', '2021-04-16 13:21:43');
INSERT INTO `zhuanjia` VALUES ('2', '04161321442806', '汉堡', '男', '13333333668', '山东', '2021-04-16 13:21:52');
INSERT INTO `zhuanjia` VALUES ('3', '04161355361311', '测试专家', '男', '13333333337', '山东', '2021-04-16 13:55:43');

-- ----------------------------
-- Table structure for `zichanfenpei`
-- ----------------------------
DROP TABLE IF EXISTS `zichanfenpei`;
CREATE TABLE `zichanfenpei` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yuanquzichanid` int(10) unsigned NOT NULL COMMENT '园区资产id',
  `fenpeibianhao` varchar(50) NOT NULL COMMENT '分配编号',
  `zichanbianhao` varchar(50) NOT NULL COMMENT '资产编号',
  `zichanmingcheng` varchar(255) NOT NULL COMMENT '资产名称',
  `zichanleixing` varchar(50) NOT NULL COMMENT '资产类型',
  `fenpeidaoxiangmu` varchar(255) NOT NULL COMMENT '分配到项目',
  `peifenshuliang` int(11) NOT NULL COMMENT '配分数量',
  `fenpeibeizhu` text NOT NULL COMMENT '分配备注',
  `caozuoren` varchar(50) NOT NULL COMMENT '操作人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `zichanfenpei_yuanquzichanid_index` (`yuanquzichanid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='资产分配';

-- ----------------------------
-- Records of zichanfenpei
-- ----------------------------
INSERT INTO `zichanfenpei` VALUES ('1', '3', '04161328557912', '04161327468860', 'C资产', 'A', '酒店客房管理系统', '20', 'X', 'admin', '2021-04-16 13:29:07');
INSERT INTO `zichanfenpei` VALUES ('2', '3', '04161329082765', '04161327468860', 'C资产', 'A', '城市智能快捷项目', '30', 'X', 'admin', '2021-04-16 13:29:12');
INSERT INTO `zichanfenpei` VALUES ('3', '3', '04161329136320', '04161327468860', 'C资产', 'A', '工时填报项目', '100', 'X', 'admin', '2021-04-16 13:29:16');
INSERT INTO `zichanfenpei` VALUES ('4', '2', '04161329191854', '04161327404890', 'B资产', 'A', '酒店客房管理系统', '43', 'X', 'admin', '2021-04-16 13:29:23');
INSERT INTO `zichanfenpei` VALUES ('5', '2', '04161329236375', '04161327404890', 'B资产', 'A', '城市智能快捷项目', '32', 'X', 'admin', '2021-04-16 13:29:28');
INSERT INTO `zichanfenpei` VALUES ('6', '2', '04161329406210', '04161327404890', 'B资产', 'A', '工时填报项目', '63', 'X', 'admin', '2021-04-16 13:29:44');
INSERT INTO `zichanfenpei` VALUES ('7', '1', '04161329458926', '04161327331573', 'A资产', 'A', '城市智能快捷项目', '80', 'X', 'admin', '2021-04-16 13:29:49');
INSERT INTO `zichanfenpei` VALUES ('8', '1', '04161329501815', '04161327331573', 'A资产', 'A', '工时填报项目', '60', 'X', 'admin', '2021-04-16 13:29:53');
INSERT INTO `zichanfenpei` VALUES ('9', '1', '04161329566520', '04161327331573', 'A资产', 'A', '酒店客房管理系统', '31', 'X', 'admin', '2021-04-16 13:30:00');
INSERT INTO `zichanfenpei` VALUES ('10', '3', '04161355591986', '04161327468860', 'C资产', 'A', '测试测试测试', '56', 'XX', 'admin', '2021-04-16 13:56:04');
INSERT INTO `zichanfenpei` VALUES ('11', '2', '04161356069701', '04161327404890', 'B资产', 'A', '测试测试测试', '30', 'XX', 'admin', '2021-04-16 13:56:09');

-- ----------------------------
-- Table structure for `zichanxiaohao`
-- ----------------------------
DROP TABLE IF EXISTS `zichanxiaohao`;
CREATE TABLE `zichanxiaohao` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yuanquzichanid` int(10) unsigned NOT NULL COMMENT '园区资产id',
  `zichanbianhao` varchar(50) NOT NULL COMMENT '资产编号',
  `zichanmingcheng` varchar(255) NOT NULL COMMENT '资产名称',
  `zichanleixing` varchar(50) NOT NULL COMMENT '资产类型',
  `xiangmu` varchar(255) NOT NULL COMMENT '项目',
  `xiaohaoshuliang` int(11) NOT NULL COMMENT '消耗数量',
  `beizhu` text NOT NULL COMMENT '备注',
  `caozuoren` varchar(50) NOT NULL COMMENT '操作人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `zichanxiaohao_yuanquzichanid_index` (`yuanquzichanid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='资产消耗';

-- ----------------------------
-- Records of zichanxiaohao
-- ----------------------------
INSERT INTO `zichanxiaohao` VALUES ('1', '3', '04161327468860', 'C资产', 'A', '酒店客房管理系统', '30', 'X', 'admin', '2021-04-16 13:30:44');
INSERT INTO `zichanxiaohao` VALUES ('2', '3', '04161327468860', 'C资产', 'A', '酒店客房管理系统', '10', 'X', 'admin', '2021-04-16 13:30:49');
INSERT INTO `zichanxiaohao` VALUES ('3', '2', '04161327404890', 'B资产', 'A', '城市智能快捷项目', '12', 'XXX', 'admin', '2021-04-16 13:30:56');
INSERT INTO `zichanxiaohao` VALUES ('4', '2', '04161327404890', 'B资产', 'A', '城市智能快捷项目', '12', 'XXX', 'admin', '2021-04-16 13:31:02');
INSERT INTO `zichanxiaohao` VALUES ('5', '1', '04161327331573', 'A资产', 'A', '工时填报项目', '16', 'XXX', 'admin', '2021-04-16 13:31:09');
INSERT INTO `zichanxiaohao` VALUES ('6', '3', '04161327468860', 'C资产', 'A', '测试测试测试', '10', 'X', 'admin', '2021-04-16 13:56:14');
INSERT INTO `zichanxiaohao` VALUES ('7', '2', '04161327404890', 'B资产', 'A', '测试测试测试', '20', 'X', 'admin', '2021-04-16 13:56:25');
