/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50717
Source Host           : localhost:3307
Source Database       : dbgirl

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-31 18:22:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blacklist
-- ----------------------------
DROP TABLE IF EXISTS `blacklist`;
CREATE TABLE `blacklist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '物理主键',
  `category` varchar(10) NOT NULL DEFAULT '' COMMENT '分类：内部（inner）；中介（agency）',
  `reason` varchar(50) NOT NULL DEFAULT '' COMMENT '原因',
  `content` varchar(50) NOT NULL DEFAULT '' COMMENT '内容',
  `type` int(10) NOT NULL DEFAULT '0' COMMENT '类型',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '名称',
  `source` varchar(30) DEFAULT '' COMMENT '来源',
  `product` varchar(30) NOT NULL DEFAULT '' COMMENT '产品线（对应SQLServer的OriginSource）',
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否被删除@0：未删除@1：已删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录添加时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录最后更新时间',
  `update_by` varchar(36) NOT NULL DEFAULT '' COMMENT '记录更新者',
  PRIMARY KEY (`id`),
  KEY `ix_category_content` (`category`,`content`,`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='黑名单表';

-- ----------------------------
-- Records of blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for girl
-- ----------------------------
DROP TABLE IF EXISTS `girl`;
CREATE TABLE `girl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `cup_size` varchar(255) NOT NULL,
  `money` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of girl
-- ----------------------------
INSERT INTO `girl` VALUES ('1', '15', 'F', '1000');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(30) NOT NULL DEFAULT '' COMMENT '密码',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否被删除@0：未删除@1：已删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录最后更新时间',
  `update_by` varchar(30) NOT NULL DEFAULT '' COMMENT '记录更新者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
