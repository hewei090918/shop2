/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50533
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50533
File Encoding         : 65001

Date: 2017-12-29 13:57:25
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
  `price` double(8,2) DEFAULT '0.00' COMMENT '单价（原价）',
  `discount` double(5,2) DEFAULT '1.00' COMMENT '折扣百分比',
  `discount_price` double(8,2) DEFAULT '0.00' COMMENT '折扣会员价',
  `manager` int(11) DEFAULT NULL COMMENT '货物管理员',
  `up_time` datetime DEFAULT NULL COMMENT '上架时间',
  `sell_time` datetime DEFAULT NULL COMMENT '卖出时间',
  `down_time` datetime DEFAULT NULL COMMENT '下架时间',
  PRIMARY KEY (`commodity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('15', '旺仔小馒头', 'b1b17df24332', '1', '9', '1', '2', '1', '1.80', '2.00', '1.00', '2.00', '1', '2017-12-27 13:08:41', '2017-12-28 11:31:00', null);
INSERT INTO `commodity` VALUES ('16', '旺仔小馒头', 'f2d213e0b42a', '1', '9', '1', '2', '1', '1.80', '2.00', '1.00', '2.00', '1', '2017-12-27 14:08:32', '2017-12-28 11:30:58', null);
INSERT INTO `commodity` VALUES ('17', '旺仔小馒头', '8a040e900ca6', '1', '9', '1', '2', '1', '1.80', '2.00', '1.00', '2.00', '1', '2017-12-27 14:08:41', '2017-12-28 11:30:56', null);
INSERT INTO `commodity` VALUES ('18', '小天才电话手表', 'b222cc96402f', '7', '10', '1', '2', '1', '745.00', '799.00', '0.80', '639.20', '6', '2017-12-27 14:25:06', '2017-12-28 11:30:21', null);
INSERT INTO `commodity` VALUES ('19', 'iPhone X 64G', '548be5e00e74', '7', '11', '1', '2', '1', '7988.00', '8288.00', '0.90', '7459.20', '6', '2017-12-27 14:26:02', '2017-12-28 11:28:39', null);
INSERT INTO `commodity` VALUES ('20', 'Spalding篮球', 'ec3d4f74026d', '4', '12', '1', '2', '1', '245.00', '288.00', '0.85', '244.80', '8', '2017-12-27 14:26:41', '2017-12-28 11:30:17', null);
INSERT INTO `commodity` VALUES ('21', '老干妈辣酱', '9c861af493f6', '1', '13', '1', '2', '1', '17.90', '20.00', '1.00', '20.00', '10', '2017-12-27 14:27:29', '2017-12-28 08:30:06', null);
INSERT INTO `commodity` VALUES ('22', '老干妈辣酱', '5319e7c85739', '1', '13', '1', '3', '1', '17.90', '20.00', '1.00', '20.00', '10', '2017-12-27 14:28:09', null, '2017-12-28 11:24:14');
INSERT INTO `commodity` VALUES ('23', '老干妈辣酱', '569595de797b', '1', '13', '1', '3', '1', '17.90', '20.00', '1.00', '20.00', '10', '2017-12-27 14:32:47', null, '2017-12-28 11:24:16');
INSERT INTO `commodity` VALUES ('24', 'iPhone X 64G', '65584c0c8f75', '7', '11', '1', '2', '1', '7988.00', '8288.00', '0.90', '7459.20', '8', '2017-12-27 14:33:28', '2017-12-28 11:29:17', null);
INSERT INTO `commodity` VALUES ('25', '曼秀雷敦洗面奶', '562dbd9183b9', '3', '14', '1', '3', '0', '35.00', '42.00', '0.90', '37.80', '11', '2017-12-27 17:10:35', null, '2017-12-28 11:26:34');
INSERT INTO `commodity` VALUES ('26', '回力帆布鞋', '6cf373b46b7c', '8', '15', '2', '1', '0', '74.00', '78.00', '0.90', '70.20', '10', '2017-12-27 17:11:37', null, null);
INSERT INTO `commodity` VALUES ('27', '回力帆布鞋', 'eb06317cd5e9', '8', '15', '2', '3', '0', '74.00', '78.00', '0.90', '70.20', '10', '2017-12-27 17:11:58', null, '2017-12-28 11:27:41');

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
-- Table structure for storage
-- ----------------------------
DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `storage_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `storage_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品名称',
  `commodity_type` int(11) DEFAULT NULL COMMENT '商品类别',
  `amount` bigint(20) DEFAULT NULL COMMENT '库存数量',
  `first_in_time` datetime DEFAULT NULL COMMENT '首次入库时间',
  `latest_in_time` datetime DEFAULT NULL COMMENT '最新入库时间',
  `sold_out` tinyint(1) unsigned DEFAULT '0' COMMENT '是否售罄（1：售罄，0：未售罄）',
  PRIMARY KEY (`storage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of storage
-- ----------------------------
INSERT INTO `storage` VALUES ('9', '旺仔小馒头', '1', '0', '2017-12-27 13:08:41', '2017-12-27 14:08:41', '1');
INSERT INTO `storage` VALUES ('10', '小天才电话手表', '7', '0', '2017-12-27 14:25:06', '2017-12-27 14:25:06', '1');
INSERT INTO `storage` VALUES ('11', 'iPhone X 64G', '7', '0', '2017-12-27 14:26:02', '2017-12-27 14:33:27', '1');
INSERT INTO `storage` VALUES ('12', 'Spalding篮球', '4', '0', '2017-12-27 14:26:41', '2017-12-27 14:26:41', '1');
INSERT INTO `storage` VALUES ('13', '老干妈辣酱', '1', '2', '2017-12-27 14:27:29', '2017-12-27 14:32:47', '0');
INSERT INTO `storage` VALUES ('14', '曼秀雷敦洗面奶', '3', '1', '2017-12-27 17:10:35', '2017-12-27 17:10:35', '0');
INSERT INTO `storage` VALUES ('15', '回力帆布鞋', '8', '2', '2017-12-27 17:11:37', '2017-12-27 17:11:58', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('1', '杭州娃哈哈食品有限公司', '0571-88574237', '杭州市庆春路128号', '3');
INSERT INTO `supplier` VALUES ('2', '上好佳有限公司', '021-59898888', '上海市沪青平公路2277号', '1');

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
