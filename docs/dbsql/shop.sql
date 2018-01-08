/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50533
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50533
File Encoding         : 65001

Date: 2018-01-08 13:52:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `area_id` int(11) NOT NULL COMMENT '主键',
  `area_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '省名',
  `abbr` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '省份简称',
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '上海', '沪');
INSERT INTO `area` VALUES ('2', '江苏', '苏');
INSERT INTO `area` VALUES ('3', '浙江', '浙');
INSERT INTO `area` VALUES ('4', '安徽', '皖');
INSERT INTO `area` VALUES ('5', '北京', '京');
INSERT INTO `area` VALUES ('6', '天津', '津');
INSERT INTO `area` VALUES ('7', '广东', '粤');
INSERT INTO `area` VALUES ('8', '河北', '冀');
INSERT INTO `area` VALUES ('9', '河南', '豫');
INSERT INTO `area` VALUES ('10', '山东', '鲁');
INSERT INTO `area` VALUES ('11', '山西', '晋');
INSERT INTO `area` VALUES ('12', '湖北', '鄂');
INSERT INTO `area` VALUES ('13', '湖南', '湘');
INSERT INTO `area` VALUES ('14', '江西', '赣');
INSERT INTO `area` VALUES ('15', '福建', '闽');
INSERT INTO `area` VALUES ('16', '四川', '川');
INSERT INTO `area` VALUES ('17', '重庆', '渝');
INSERT INTO `area` VALUES ('18', '广西', '桂');
INSERT INTO `area` VALUES ('19', '辽宁', '辽');
INSERT INTO `area` VALUES ('20', '吉林', '吉');
INSERT INTO `area` VALUES ('21', '黑龙江', '黑');
INSERT INTO `area` VALUES ('22', '贵州', '贵');
INSERT INTO `area` VALUES ('23', '陕西', '陕');
INSERT INTO `area` VALUES ('24', '云南', '滇');
INSERT INTO `area` VALUES ('25', '内蒙古', '蒙');
INSERT INTO `area` VALUES ('26', '甘肃', '甘');
INSERT INTO `area` VALUES ('27', '青海', '青');
INSERT INTO `area` VALUES ('28', '宁夏', '宁');
INSERT INTO `area` VALUES ('29', '新疆', '新');
INSERT INTO `area` VALUES ('30', '海南', '琼');
INSERT INTO `area` VALUES ('31', '西藏', '藏');
INSERT INTO `area` VALUES ('32', '香港', '港');
INSERT INTO `area` VALUES ('33', '澳门', '澳');
INSERT INTO `area` VALUES ('34', '台湾', '台');

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `commodity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `commodity_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品名称',
  `commodity_code` varchar(20) DEFAULT NULL COMMENT '商品编码',
  `commodity_type` int(11) NOT NULL COMMENT '商品类别',
  `storage_id` int(11) DEFAULT NULL COMMENT '仓库ID',
  `supplier_id` int(11) DEFAULT NULL COMMENT '供应商ID',
  `status` char(1) DEFAULT '1' COMMENT '在售状态（1：在售，2：卖出，3：下架）',
  `is_hot` tinyint(1) unsigned DEFAULT '0' COMMENT '是否热卖（1：是，0：否）',
  `cost_price` double(8,2) DEFAULT '0.00' COMMENT '成本价格',
  `price` double(8,2) DEFAULT '0.00' COMMENT '单价（售价）',
  `discount` double(5,2) DEFAULT '1.00' COMMENT '折扣百分比',
  `discount_price` double(8,2) DEFAULT '0.00' COMMENT '折扣会员价',
  `manager` int(11) DEFAULT NULL COMMENT '货物管理员',
  `up_time` datetime DEFAULT NULL COMMENT '上架时间',
  `sell_time` datetime DEFAULT NULL COMMENT '卖出时间',
  `down_time` datetime DEFAULT NULL COMMENT '下架时间',
  PRIMARY KEY (`commodity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of commodity
-- ----------------------------

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
INSERT INTO `dept` VALUES ('1', '欧尚超市', '001', '欧尚超市', '0');
INSERT INTO `dept` VALUES ('2', '人事部', '001001', '人事部', '1');
INSERT INTO `dept` VALUES ('3', '综合部', '001002', '综合部', '1');
INSERT INTO `dept` VALUES ('4', '采购部', '001003', '采购部', '1');
INSERT INTO `dept` VALUES ('5', '销售部', '001004', '销售部', '1');
INSERT INTO `dept` VALUES ('6', '财务部', '001005', '财务部', '1');
INSERT INTO `dept` VALUES ('7', '技术部', '001006', '技术部', '1');

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
-- Table structure for purchase
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `purchase_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pur_commodity_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '采购商品名称',
  `pur_commodity_type` int(11) DEFAULT NULL COMMENT '采购商品类别',
  `pur_storage_id` int(11) DEFAULT NULL COMMENT '仓库ID',
  `pur_supplier_id` int(11) DEFAULT NULL COMMENT '供应商ID',
  `purchase_price` double(8,2) DEFAULT NULL COMMENT '采购价格（进货价格）',
  `purchase_amount` bigint(20) DEFAULT NULL COMMENT '采购数量',
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of purchase
-- ----------------------------
INSERT INTO `purchase` VALUES ('1', 'AD钙奶', '1', '1', '1', '1.50', '100');
INSERT INTO `purchase` VALUES ('2', '蚕丝面膜', '3', '2', '3', '12.00', '50');
INSERT INTO `purchase` VALUES ('3', '妮维雅护肤霜', '3', '2', '3', '32.50', '200');
INSERT INTO `purchase` VALUES ('4', 'Apple Watch', '7', '4', '4', '1800.00', '5');
INSERT INTO `purchase` VALUES ('5', 'MacBook 12寸', '7', '4', '4', '8500.00', '5');
INSERT INTO `purchase` VALUES ('6', '中华2B铅笔', '5', '5', '7', '0.50', '1500');

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
-- Table structure for storage
-- ----------------------------
DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `storage_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `storage_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '仓库名称',
  `first_in_time` datetime DEFAULT NULL COMMENT '首次入库时间',
  `latest_in_time` datetime DEFAULT NULL COMMENT '最新入库时间',
  `amount` bigint(20) DEFAULT '0' COMMENT '库存数量',
  `sold_out` tinyint(1) unsigned DEFAULT '1' COMMENT '是否售罄（1：售罄，0：未售罄）',
  PRIMARY KEY (`storage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of storage
-- ----------------------------
INSERT INTO `storage` VALUES ('1', '1号仓库', '2018-01-01 12:12:00', '2018-01-03 14:12:31', '100', '0');
INSERT INTO `storage` VALUES ('2', '2号仓库', '2018-01-01 12:12:12', '2018-01-03 14:13:54', '250', '0');
INSERT INTO `storage` VALUES ('3', '3号仓库', '2018-01-01 15:00:00', '2018-01-03 14:14:19', '0', '1');
INSERT INTO `storage` VALUES ('4', '5号仓库', '2018-01-08 13:21:51', '2018-01-08 13:24:38', '10', '0');
INSERT INTO `storage` VALUES ('5', '8号仓库', '2018-01-08 13:28:44', '2018-01-08 13:28:44', '1500', '0');
INSERT INTO `storage` VALUES ('6', '10号仓库', null, null, '0', '1');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `supplier_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '供应商名称',
  `tel` varchar(50) DEFAULT NULL COMMENT '联系方式',
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '详细地址',
  `area_id` int(11) DEFAULT NULL COMMENT '所在地区',
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('1', '杭州娃哈哈食品有限公司', '0571-88574237', '杭州市庆春路128号', '3');
INSERT INTO `supplier` VALUES ('2', '上好佳有限公司', '021-59898888', '上海市沪青平公路2277号', '1');
INSERT INTO `supplier` VALUES ('3', '相宜本草化妆品有限公司', '0571-88697354', '杭州市延安路688号', '3');
INSERT INTO `supplier` VALUES ('4', '海尔电器', null, '青岛市', '10');
INSERT INTO `supplier` VALUES ('5', '迪卡侬运动器材有限公司', '0554-85214563', '宁波市海曙区药行街68号', '3');
INSERT INTO `supplier` VALUES ('6', '森马服饰', '010-77668888', '北京市长安街110号', '5');
INSERT INTO `supplier` VALUES ('7', '得力文具', '021-88696634', '上海市静安区', '1');
INSERT INTO `supplier` VALUES ('8', '苹果中国官方旗舰店', '010-88888800', '北京市海淀区中关村', '5');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `realname` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '真实姓名',
  `gender` tinyint(1) unsigned DEFAULT NULL COMMENT '性别（1：男，2：女）',
  `idCard` varchar(50) DEFAULT NULL COMMENT '身份证号码',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系方式',
  `profession_id` int(11) DEFAULT NULL COMMENT '职位',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `avatar` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像存放位置',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '家庭住址',
  `locked` tinyint(1) unsigned DEFAULT '0' COMMENT '是否锁定（1：锁定，0：启用）',
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
