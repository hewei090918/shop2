/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50533
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50533
File Encoding         : 65001

Date: 2017-12-22 15:19:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `commodity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `commodity_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品名称',
  `commodity_code` varchar(20) DEFAULT NULL COMMENT '商品编码',
  `commodity_type` int(11) NOT NULL COMMENT '商品类别',
  `up_time` datetime DEFAULT NULL COMMENT '上架时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '在售状态（1：在售，0：停售）',
  `down_time` datetime DEFAULT NULL COMMENT '下架时间',
  `is_hot` tinyint(1) DEFAULT '0' COMMENT '是否热卖（1：是，0：否）',
  `amount` bigint(20) unsigned DEFAULT '0' COMMENT '库存数量',
  `manager` int(11) DEFAULT NULL COMMENT '货物管理员',
  `xjbz` char(1) DEFAULT '0' COMMENT '下架标识（1：下架，0：未下架）',
  PRIMARY KEY (`commodity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('2', '台式烤香肠', 'S0876H233344', '1', '2017-12-20 13:48:56', '1', null, '0', '200', '6', '0');
INSERT INTO `commodity` VALUES ('3', '大宝SOD蜜', '4552F4845566', '3', '2017-12-08 14:09:24', '0', '2017-12-21 08:00:00', '0', '100', '8', '0');

-- ----------------------------
-- Table structure for commodity_type
-- ----------------------------
DROP TABLE IF EXISTS `commodity_type`;
CREATE TABLE `commodity_type` (
  `type_id` int(11) NOT NULL COMMENT '主键',
  `type_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品类别名称',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of commodity_type
-- ----------------------------
INSERT INTO `commodity_type` VALUES ('1', '食品饮料类');
INSERT INTO `commodity_type` VALUES ('2', '家电类');
INSERT INTO `commodity_type` VALUES ('3', '日用品类');
INSERT INTO `commodity_type` VALUES ('4', '运动器材类');
INSERT INTO `commodity_type` VALUES ('5', '文具类');
INSERT INTO `commodity_type` VALUES ('7', '3C数码类');
INSERT INTO `commodity_type` VALUES ('8', '服装类');
INSERT INTO `commodity_type` VALUES ('9', '其它');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL COMMENT '主键',
  `dept_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '部门名称',
  `dept_code` varchar(50) DEFAULT NULL COMMENT '部门编号',
  `dept_desc` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '部门描述',
  `parent_id` int(11) DEFAULT NULL COMMENT '上级部门ID',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', 'XX超市', '001', '乡巴佬', '0');
INSERT INTO `dept` VALUES ('2', '人事部', '001001', '乡巴佬', '1');
INSERT INTO `dept` VALUES ('3', '综合部', '001002', '乡巴佬', '1');
INSERT INTO `dept` VALUES ('4', '采购部', '001003', '乡巴佬', '1');
INSERT INTO `dept` VALUES ('5', '销售部', '001004', '乡巴佬', '1');
INSERT INTO `dept` VALUES ('6', '财务部', '001005', '乡巴佬', '1');
INSERT INTO `dept` VALUES ('7', '技术部', '001006', '乡巴佬', '1');

-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession` (
  `profession_id` int(11) NOT NULL COMMENT '职位ID',
  `profession_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '职位名称',
  PRIMARY KEY (`profession_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES ('1', '总经理');
INSERT INTO `profession` VALUES ('2', '收银员');
INSERT INTO `profession` VALUES ('3', '采购员');
INSERT INTO `profession` VALUES ('4', '导购员');
INSERT INTO `profession` VALUES ('5', '保洁员');
INSERT INTO `profession` VALUES ('6', '技术员');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '角色名称',
  `role_desc` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '角色描述',
  `is_admin` tinyint(1) DEFAULT '0' COMMENT '是否管理员（1：是，0：否）',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员', '管理员', '1');
INSERT INTO `role` VALUES ('2', '普通用户', '普通用户', '0');
INSERT INTO `role` VALUES ('3', '顾客', '顾客', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `realname` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '真实姓名',
  `gender` tinyint(1) DEFAULT NULL COMMENT '性别（1：男，2：女）',
  `idCard` varchar(50) DEFAULT NULL COMMENT '身份证号码',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系方式',
  `profession_id` int(11) DEFAULT NULL COMMENT '职位',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `avatar` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像存放位置',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '家庭住址',
  `locked` tinyint(1) DEFAULT '0' COMMENT '是否锁定（1：锁定，0：启用）',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'hew', '123456', '何维', '1', null, '1990-11-24', '13064725160', '1', '3', '1', null, null, '0');
INSERT INTO `user` VALUES ('2', 'alice', '123456', '爱丽丝', '0', null, '1996-06-20', '15064785623', '2', '2', '2', null, null, '0');
INSERT INTO `user` VALUES ('3', 'victor', '123456', '张三丰', '1', null, '1993-10-02', '13145285632', '6', '7', '2', null, null, '1');
INSERT INTO `user` VALUES ('6', 'jane', '123456', '张丽丽', '0', null, '2004-12-19', '15125634521', '3', '6', '2', null, null, '0');
INSERT INTO `user` VALUES ('8', 'richard', '123456', '刘洋', '1', null, '2000-05-10', '15025417852', '3', '4', '2', null, null, '0');
INSERT INTO `user` VALUES ('10', 'tank', '123456', '何天明', '1', null, '1994-10-10', '13074128568', '3', '4', '2', null, null, '0');
INSERT INTO `user` VALUES ('11', 'lorry', '123456', '张一凡', '1', null, '1999-09-30', '15124526398', '4', '3', '2', null, null, '0');
INSERT INTO `user` VALUES ('15', 'kee', '123456', '科凯', '1', null, '1995-11-23', '13054127842', '4', '5', '2', null, null, '0');
