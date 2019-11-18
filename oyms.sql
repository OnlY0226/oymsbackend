/*
Navicat MySQL Data Transfer

Source Server         : oy
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : oyms

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-11-18 02:19:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auditstatus`
-- ----------------------------
DROP TABLE IF EXISTS `auditstatus`;
CREATE TABLE `auditstatus` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `audit_statu` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auditstatus
-- ----------------------------
INSERT INTO `auditstatus` VALUES ('1', '审核通过');
INSERT INTO `auditstatus` VALUES ('2', '审核不通过');
INSERT INTO `auditstatus` VALUES ('3', '待审核');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goodName` varchar(255) DEFAULT NULL,
  `goodtype_id` int(255) DEFAULT NULL,
  `goodprice` float DEFAULT NULL,
  `goodnum` bigint(20) DEFAULT NULL,
  `goodsaled` bigint(20) DEFAULT '0',
  `gooddesc` varchar(255) DEFAULT NULL,
  `goodImgUrl` varchar(255) DEFAULT NULL,
  `isDelete` tinyint(4) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goodtype_id` (`goodtype_id`),
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`goodtype_id`) REFERENCES `goodtype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('54', '运动裤', null, '50', '50', '0', '', 'http://lrplt.cn-bj.ufileos.com/898e4c35-ea4a-48ea-890d-30a248b1926b.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=wCmeWGb9mmMfbP97Ep7dcwg0t0o%3D&Expires=1888586043', '0', '2019-11-08 23:14:06');
INSERT INTO `goods` VALUES ('55', 'a', '87', '1', '1', '0', '', '', '0', '2019-11-09 00:23:57');
INSERT INTO `goods` VALUES ('56', '红马甲', '95', '12', '3', '0', '马甲', 'http://lrplt.cn-bj.ufileos.com/fa5727f0-db66-4d63-a408-42abee14e331.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=YLiKDdV5c6UVSV%2FkicWqV40J%2Btg%3D&Expires=1889367126', '0', '2019-11-18 00:12:11');
INSERT INTO `goods` VALUES ('57', '黑帽子', '90', '12', '3', '0', '帽子', 'http://lrplt.cn-bj.ufileos.com/8de937b9-d02a-4026-871c-42cbb86903a4.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=iMj8hWxFk4xZ%2F3baokrOcH6cS8E%3D&Expires=1889367155', '0', '2019-11-18 00:12:39');
INSERT INTO `goods` VALUES ('58', '白体恤', '87', '22', '12', '0', 'T恤', 'http://lrplt.cn-bj.ufileos.com/b1f41903-35ca-4cca-8cca-e4265d298f9e.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=krAgLqqEe4Qft7sXCrCLRO0BIBA%3D&Expires=1889367183', '0', '2019-11-18 00:13:07');
INSERT INTO `goods` VALUES ('59', '蓝色polo衫', '88', '34', '21', '0', '12', 'http://lrplt.cn-bj.ufileos.com/68a4e1af-2efe-4be8-bec2-16c0421823a8.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=Lbmk8jZN0ix2mCjI7PoMJkR8mM0%3D&Expires=1889367224', '0', '2019-11-18 00:13:48');
INSERT INTO `goods` VALUES ('60', '寿司大衣', '96', '44', '1', '0', '3', 'http://lrplt.cn-bj.ufileos.com/34312596-4177-41f9-afd3-be8e699af3a2.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=LgwdXreAeTjfxvYrftQQr0EOl6c%3D&Expires=1889367259', '0', '2019-11-18 00:14:22');
INSERT INTO `goods` VALUES ('61', '爆款运动型帽', '91', '44', '12', '0', '爆款', 'http://lrplt.cn-bj.ufileos.com/c3a28a53-e3bb-42f9-858e-afc5dd3cff0a.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=lfPqcpCvbdbWXC%2Fb8%2BHbm0Tw9r4%3D&Expires=1889367297', '0', '2019-11-18 00:15:02');
INSERT INTO `goods` VALUES ('62', '乌龟马甲', '95', '55', '1', '0', '乌龟型马甲', 'http://lrplt.cn-bj.ufileos.com/a5de671b-8450-471e-99b0-ab8472090dd6.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=0YmWN3C63VOLhkwnVSWp4yibjr8%3D&Expires=1889367378', '0', '2019-11-18 00:16:24');
INSERT INTO `goods` VALUES ('63', '沙滩型短裤', '97', '33', '1', '0', '沙滩短裤', 'http://lrplt.cn-bj.ufileos.com/88204fe2-dfe4-45cf-96c7-7ea9d4e780a5.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=Pt%2BmsQsw1kaxZL6Vuq9ncjPwfXU%3D&Expires=1889367423', '0', '2019-11-18 00:17:10');
INSERT INTO `goods` VALUES ('64', '透气毛衣', '89', '44', '1', '0', '透气', 'http://lrplt.cn-bj.ufileos.com/104ca7b8-08cd-46a7-bd74-a9b4d06038d9.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=UtG2uRF40Q26KkkEff%2B5fEWGxSY%3D&Expires=1889367449', '0', '2019-11-18 00:17:33');
INSERT INTO `goods` VALUES ('65', '牛仔裙', '85', '23', '2', '0', '牛仔', 'http://lrplt.cn-bj.ufileos.com/38e01c69-6122-41be-ace5-dbde8e1bc3ee.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=oCQWVUcergrfw%2Bsaqm6IKrIL98Q%3D&Expires=1889367472', '0', '2019-11-18 00:18:03');
INSERT INTO `goods` VALUES ('66', '好看的吊带', '93', '455', '12', '0', '好看的', 'http://lrplt.cn-bj.ufileos.com/cfdb2197-4496-46b2-9894-18ab91a04764.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=7QQDoPFLA%2BGC4khu2IsAGSS%2Bfi0%3D&Expires=1889367505', '0', '2019-11-18 00:18:34');

-- ----------------------------
-- Table structure for `goodtype`
-- ----------------------------
DROP TABLE IF EXISTS `goodtype`;
CREATE TABLE `goodtype` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `isdelete` tinyint(4) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `img_src` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `goodtype_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `parenttype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodtype
-- ----------------------------
INSERT INTO `goodtype` VALUES ('85', '37', '短裙', '0', '2019-11-08 01:18:27', 'http://lrplt.cn-bj.ufileos.com/109eeb26-7e69-4b6f-b092-ca4e52f5f298.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=jLo19jGLXIHgkqV07761wkwZguc%3D&Expires=1888507106');
INSERT INTO `goodtype` VALUES ('86', '37', '长裙', '0', '2019-11-08 01:18:44', 'http://lrplt.cn-bj.ufileos.com/fba5c560-f092-419e-8c08-d3e75d9e63e5.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=ESFux6axrontO8Fxm6QOAxIBkIA%3D&Expires=1888507123');
INSERT INTO `goodtype` VALUES ('87', '38', 'T-恤', '0', '2019-11-08 01:20:05', 'http://lrplt.cn-bj.ufileos.com/a13e9ea7-6964-43e3-ac6d-ef2e3de0dc99.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=DgiXW%2BuarOwDsok4cV9VPjCwRAY%3D&Expires=1888507203');
INSERT INTO `goodtype` VALUES ('88', '38', 'polo衫', '0', '2019-11-08 01:20:17', 'http://lrplt.cn-bj.ufileos.com/4071570c-5ce9-4208-8321-ec5719e4e9cf.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=0hfhDr5NidsU9rXoC1BUZZuq45k%3D&Expires=1888507216');
INSERT INTO `goodtype` VALUES ('89', '39', '毛衣', '0', '2019-11-08 01:20:32', 'http://lrplt.cn-bj.ufileos.com/6cb90178-bd80-4652-8a6c-e2c602399b4e.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=onNi5pHhU6t%2B%2Fsb59MKXQV5PU1w%3D&Expires=1888507231');
INSERT INTO `goodtype` VALUES ('90', '40', '鸭嘴帽', '0', '2019-11-08 01:20:46', 'http://lrplt.cn-bj.ufileos.com/dbf96e61-026b-42de-9034-150dbcdc60dd.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=KUOu09MPHUOe5ePM8KOUzoeiOio%3D&Expires=1888507245');
INSERT INTO `goodtype` VALUES ('91', '40', '随意帽', '1', '2019-11-08 01:20:59', '');
INSERT INTO `goodtype` VALUES ('92', '40', '随意', '0', '2019-11-08 01:21:15', 'http://lrplt.cn-bj.ufileos.com/53fef001-0496-4d1a-96ad-c6d573fc2fc6.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=JViLwpZrRHinXzE2IAQQyTb3QzA%3D&Expires=1888507259');
INSERT INTO `goodtype` VALUES ('93', '37', '吊带裙', '0', '2019-11-08 23:10:20', 'http://lrplt.cn-bj.ufileos.com/e6f0e2a8-36c4-440e-b6f8-287b9f27eb20.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=GtMRfckQSuqarOypQ3BPjMW%2BTNA%3D&Expires=1888585813');
INSERT INTO `goodtype` VALUES ('94', '37', '连衣裙', '0', '2019-11-08 23:10:33', 'http://lrplt.cn-bj.ufileos.com/470f11df-93c5-4302-b7e6-cf3fe88ccc5e.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=dmvr25pbT0%2FRTQSNkVrW85VvNzs%3D&Expires=1888585828');
INSERT INTO `goodtype` VALUES ('95', '50', '马甲', '0', '2019-11-08 23:10:49', 'http://lrplt.cn-bj.ufileos.com/241e5503-0e86-4779-9af0-ffd416c85117.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=nm2mhFUliiwEZx9SwubN0IDprig%3D&Expires=1888585847');
INSERT INTO `goodtype` VALUES ('96', '50', '呢子大衣', '0', '2019-11-08 23:11:02', 'http://lrplt.cn-bj.ufileos.com/a4f98a51-ed77-4035-b4d1-53c80318cef7.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=QDejKu2FL%2BbELxnEeY62gFscCUI%3D&Expires=1888585857');
INSERT INTO `goodtype` VALUES ('97', '47', '短裤', '0', '2019-11-08 23:12:03', 'http://lrplt.cn-bj.ufileos.com/624e76d7-d320-4235-aa41-19a2dbc4c899.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=NbuK9W2Kfueka69nJz9rprHhON4%3D&Expires=1888585921');
INSERT INTO `goodtype` VALUES ('98', '47', '牛仔裤', '0', '2019-11-08 23:12:17', 'http://lrplt.cn-bj.ufileos.com/421684c6-8b24-46b1-95fd-76e5d21c1a23.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=2eGlVcyevYUAupK4%2FOXCK%2BcKULM%3D&Expires=1888585932');
INSERT INTO `goodtype` VALUES ('99', '40', '运动裤', '1', '2019-11-08 23:12:32', 'http://lrplt.cn-bj.ufileos.com/2de8002e-fa95-4085-9898-1b2d8603e57e.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=%2FRdg3lMbGRrikl39n1VQpM%2Brgqg%3D&Expires=1888585942');
INSERT INTO `goodtype` VALUES ('100', '47', '运动裤', '0', '2019-11-08 23:13:36', 'http://lrplt.cn-bj.ufileos.com/1d52ae45-813c-4202-8e4f-13a0fe61f7c3.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=brrCq5PjOitn6zROEtd9R7%2FPTbY%3D&Expires=1888586008');
INSERT INTO `goodtype` VALUES ('101', '37', 'dd', '1', '2019-11-09 00:35:07', 'http://lrplt.cn-bj.ufileos.com/6f2a5e30-812d-4787-825b-3fb0f4e4a0ef.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=M0L%2FuVLjnFjwGLcwspwP3Z6V%2FmM%3D&Expires=1888590905');

-- ----------------------------
-- Table structure for `parenttype`
-- ----------------------------
DROP TABLE IF EXISTS `parenttype`;
CREATE TABLE `parenttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) NOT NULL,
  `isdelete` tinyint(4) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pname` (`pname`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parenttype
-- ----------------------------
INSERT INTO `parenttype` VALUES ('37', '裙子', '0', 'http://lrplt.cn-bj.ufileos.com/67debd0a-1b2c-4a13-9d31-7719bb54bb1d.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=ymZDN77pJZ01ALGS13xWuqlatrE%3D&Expires=1888407212');
INSERT INTO `parenttype` VALUES ('38', '短袖', '0', 'http://lrplt.cn-bj.ufileos.com/36f4aed6-fcd8-419b-99e3-25de854ef79e.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=cPIRCoATl5y8gcBtPm4gL1wj12o%3D&Expires=1888407223');
INSERT INTO `parenttype` VALUES ('39', '长袖', '0', 'http://lrplt.cn-bj.ufileos.com/07d735aa-9782-46b0-b0b7-e6666e400ba5.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=9MdmrwHEA4WguRaRLWkihYpn2zY%3D&Expires=1888407266');
INSERT INTO `parenttype` VALUES ('40', '帽子', '0', 'http://lrplt.cn-bj.ufileos.com/9a26d330-e308-4c1a-a5c3-8404977fc304.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=djT04S9QNui%2F7mTHiyM3QhZ7Hqo%3D&Expires=1888407278');
INSERT INTO `parenttype` VALUES ('41', '丝巾', '0', 'http://lrplt.cn-bj.ufileos.com/6e7723e1-9b87-4ac9-b486-e5b8d7d730d3.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=aTx0qviFe2K0XdI4hqJzBsCZLVo%3D&Expires=1888407288');
INSERT INTO `parenttype` VALUES ('47', '裤子', '0', 'http://lrplt.cn-bj.ufileos.com/1ae0733f-54ed-4f8e-a21f-6d88cc9938e6.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=EMp8CCXapUrYyA1VDRG7EfHZVoE%3D&Expires=1888585714');
INSERT INTO `parenttype` VALUES ('48', '西服', '0', 'http://lrplt.cn-bj.ufileos.com/29378bdb-6337-47b5-b18d-6f050d1ad469.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=JibVwr6Azeaogc2c5WwS6Q7KGlc%3D&Expires=1888585731');
INSERT INTO `parenttype` VALUES ('49', '套装', '0', 'http://lrplt.cn-bj.ufileos.com/70d48150-34f0-461f-94a7-4a5fcc5c1647.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=QsRV0qTUdfte%2BP0bJyBWuX3sgOg%3D&Expires=1888585750');
INSERT INTO `parenttype` VALUES ('50', '外套', '0', 'http://lrplt.cn-bj.ufileos.com/e62f3bff-8076-481c-a268-65fdc703967e.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=uXylD6caoguReztOQOvjKS16KUY%3D&Expires=1888585767');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员');
INSERT INTO `role` VALUES ('2', '普通管理员');
INSERT INTO `role` VALUES ('3', '普通用户');
INSERT INTO `role` VALUES ('4', '无权限用户');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) DEFAULT NULL,
  `userPassword` varchar(100) DEFAULT NULL,
  `userImg` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `role_id` int(11) DEFAULT '4',
  `audit` int(2) DEFAULT '3',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `audit` (`audit`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`audit`) REFERENCES `auditstatus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6', 'admin', '1', 'http://lrplt.cn-bj.ufileos.com/2d2b52c6-77e0-4b9c-a697-851d09e1b88e.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=Ps7cIwkUX9%2BomcLMwmVDYO7W3yc%3D&Expires=1887416181', '2019-10-26 00:00:00', '1', '1');
INSERT INTO `user` VALUES ('13', 'admi', '1', 'http://lrplt.cn-bj.ufileos.com/a3058be9-3f08-476e-be05-d9f3ee06e069.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=WPp4us%2F6hAtTtQB6TR0HrQ6XfEo%3D&Expires=1887844022', '2019-10-29 09:10:50', '4', '1');
INSERT INTO `user` VALUES ('14', 'adm1', '12345678', 'http://lrplt.cn-bj.ufileos.com/a3058be9-3f08-476e-be05-d9f3ee06e069.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=WPp4us%2F6hAtTtQB6TR0HrQ6XfEo%3D&Expires=1887844022', '2019-10-29 09:12:49', '4', '1');
INSERT INTO `user` VALUES ('15', 'dddd', '12345678', 'http://lrplt.cn-bj.ufileos.com/a3058be9-3f08-476e-be05-d9f3ee06e069.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=WPp4us%2F6hAtTtQB6TR0HrQ6XfEo%3D&Expires=1887844022', '2019-10-31 09:07:03', '2', '1');
INSERT INTO `user` VALUES ('16', '啊', '1', 'http://lrplt.cn-bj.ufileos.com/a3058be9-3f08-476e-be05-d9f3ee06e069.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=WPp4us%2F6hAtTtQB6TR0HrQ6XfEo%3D&Expires=1887844022', null, '4', '1');
INSERT INTO `user` VALUES ('17', '大猪蹄子', '1', 'http://lrplt.cn-bj.ufileos.com/a3058be9-3f08-476e-be05-d9f3ee06e069.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=WPp4us%2F6hAtTtQB6TR0HrQ6XfEo%3D&Expires=1887844022', null, '4', '1');
INSERT INTO `user` VALUES ('18', '大猪蹄子2', '1', 'http://lrplt.cn-bj.ufileos.com/a3058be9-3f08-476e-be05-d9f3ee06e069.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=WPp4us%2F6hAtTtQB6TR0HrQ6XfEo%3D&Expires=1887844022', null, '4', '1');
INSERT INTO `user` VALUES ('19', '大猪蹄子', '1', 'http://lrplt.cn-bj.ufileos.com/a3058be9-3f08-476e-be05-d9f3ee06e069.png?UCloudPublicKey=TOKEN_2e336c63-c95d-4ea9-b750-e8342bcd185f&Signature=WPp4us%2F6hAtTtQB6TR0HrQ6XfEo%3D&Expires=1887844022', null, '4', '1');
INSERT INTO `user` VALUES ('22', '111', '12345678', '', '2019-11-03 22:19:59', '2', '1');
INSERT INTO `user` VALUES ('23', '12345', '12345678', '', '2019-11-03 22:22:07', '2', '2');
