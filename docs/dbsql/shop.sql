/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50533
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50533
File Encoding         : 65001

Date: 2018-01-12 13:49:08
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1', '蚕丝面膜', '820EA609', '3', '2', '3', '1', '1', '12.00', '15.00', '1.00', '15.00', '6', '2018-01-11 10:14:01', null, null);
INSERT INTO `commodity` VALUES ('2', '蚕丝面膜', '660B0D33', '3', '2', '3', '1', '0', '12.00', null, null, null, null, '2018-01-11 10:14:01', null, null);
INSERT INTO `commodity` VALUES ('3', '蚕丝面膜', '14C1F4C8', '3', '2', '3', '1', '0', '12.00', null, null, null, null, '2018-01-11 10:14:01', null, null);
INSERT INTO `commodity` VALUES ('4', '蚕丝面膜', '45CE75BC', '3', '2', '3', '3', '0', '12.00', null, null, null, null, '2018-01-11 10:14:01', null, '2018-01-12 11:05:02');
INSERT INTO `commodity` VALUES ('5', '蚕丝面膜', '08AB9EFB', '3', '2', '3', '3', '0', '12.00', null, null, null, null, '2018-01-11 10:14:01', null, '2018-01-12 11:05:02');
INSERT INTO `commodity` VALUES ('6', '蚕丝面膜', 'F05CDD86', '3', '2', '3', '3', '0', '12.00', null, null, null, null, '2018-01-11 10:14:01', null, '2018-01-12 11:05:02');
INSERT INTO `commodity` VALUES ('7', '蚕丝面膜', 'C2D6FE4A', '3', '2', '3', '3', '0', '12.00', null, null, null, null, '2018-01-11 10:14:01', null, '2018-01-12 11:05:02');
INSERT INTO `commodity` VALUES ('8', '蚕丝面膜', '52EFFF75', '3', '2', '3', '3', '0', '12.00', null, null, null, null, '2018-01-11 10:14:01', null, '2018-01-12 11:05:01');
INSERT INTO `commodity` VALUES ('9', '蚕丝面膜', '7966F053', '3', '2', '3', '3', '0', '12.00', null, null, null, null, '2018-01-11 10:14:01', null, '2018-01-12 11:05:01');
INSERT INTO `commodity` VALUES ('10', '蚕丝面膜', '3B8E5E67', '3', '2', '3', '3', '0', '12.00', null, null, null, null, '2018-01-11 10:14:01', null, '2018-01-12 11:05:01');
INSERT INTO `commodity` VALUES ('11', '蚕丝面膜', '9BD336C3', '3', '2', '3', '2', '1', '12.00', '15.00', '0.85', '12.75', '2', '2018-01-11 10:26:40', '2018-01-12 10:14:10', null);
INSERT INTO `commodity` VALUES ('12', '蚕丝面膜', '42AF29C1', '3', '2', '3', '2', '1', '12.00', '15.00', '0.90', '13.50', '2', '2018-01-11 10:26:40', '2018-01-12 10:14:10', null);
INSERT INTO `commodity` VALUES ('13', '蚕丝面膜', '33A3A3C0', '3', '2', '3', '2', '1', '12.00', '15.00', '0.90', '13.50', '2', '2018-01-11 10:27:55', '2018-01-12 10:14:10', null);
INSERT INTO `commodity` VALUES ('14', '蚕丝面膜', '333D56B8', '3', '2', '3', '1', '1', '12.00', '15.00', '1.00', '15.00', '6', '2018-01-11 10:27:55', null, null);
INSERT INTO `commodity` VALUES ('15', '蚕丝面膜', '21079165', '3', '2', '3', '1', '1', '12.00', '15.00', '1.00', '15.00', '6', '2018-01-11 10:28:52', null, null);
INSERT INTO `commodity` VALUES ('16', '中华2B铅笔', '5EF370CD', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:09', null, null);
INSERT INTO `commodity` VALUES ('17', '中华2B铅笔', '11E3B963', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:09', null, null);
INSERT INTO `commodity` VALUES ('18', '中华2B铅笔', '836871BF', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:09', null, null);
INSERT INTO `commodity` VALUES ('19', '中华2B铅笔', '06E46FD5', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:09', null, null);
INSERT INTO `commodity` VALUES ('20', '中华2B铅笔', '8CF849C5', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:09', null, null);
INSERT INTO `commodity` VALUES ('21', '中华2B铅笔', 'CD4D5D98', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:09', null, null);
INSERT INTO `commodity` VALUES ('22', '中华2B铅笔', '5D0AB183', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:09', null, null);
INSERT INTO `commodity` VALUES ('23', '中华2B铅笔', '8F29339B', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:09', null, null);
INSERT INTO `commodity` VALUES ('24', '中华2B铅笔', '278BBA81', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:09', null, null);
INSERT INTO `commodity` VALUES ('25', '中华2B铅笔', '67DF8EB2', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:10', null, null);
INSERT INTO `commodity` VALUES ('26', '中华2B铅笔', '8D998604', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:10', null, null);
INSERT INTO `commodity` VALUES ('27', '中华2B铅笔', 'AD839D3C', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:10', null, null);
INSERT INTO `commodity` VALUES ('28', '中华2B铅笔', 'DBE7E627', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:10', null, null);
INSERT INTO `commodity` VALUES ('29', '中华2B铅笔', '1BA6D995', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:10', null, null);
INSERT INTO `commodity` VALUES ('30', '中华2B铅笔', '81BE24D7', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:10', null, null);
INSERT INTO `commodity` VALUES ('31', '中华2B铅笔', 'A0EA7502', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:10', null, null);
INSERT INTO `commodity` VALUES ('32', '中华2B铅笔', '786B058C', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:10', null, null);
INSERT INTO `commodity` VALUES ('33', '中华2B铅笔', '17C6C532', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:10', null, null);
INSERT INTO `commodity` VALUES ('34', '中华2B铅笔', '7F6BC3CD', '5', '5', '7', '1', '0', '0.50', null, null, null, null, '2018-01-11 10:29:10', null, null);
INSERT INTO `commodity` VALUES ('35', '中华2B铅笔', 'F9334616', '5', '5', '7', '2', '0', '0.50', '0.80', '1.00', '0.80', '8', '2018-01-11 10:29:10', '2018-01-12 10:14:21', null);
INSERT INTO `commodity` VALUES ('36', 'AD钙奶', '6AE8C178', '1', '1', '1', '1', '0', '1.50', null, null, null, null, '2018-01-11 10:30:01', null, null);
INSERT INTO `commodity` VALUES ('37', 'AD钙奶', '7DD3E8F9', '1', '1', '1', '1', '0', '1.50', null, null, null, null, '2018-01-11 10:30:01', null, null);
INSERT INTO `commodity` VALUES ('38', 'AD钙奶', '867794C2', '1', '1', '1', '1', '0', '1.50', null, null, null, null, '2018-01-11 10:30:01', null, null);
INSERT INTO `commodity` VALUES ('39', 'AD钙奶', 'D816E07A', '1', '1', '1', '1', '0', '1.50', null, null, null, null, '2018-01-11 10:30:01', null, null);
INSERT INTO `commodity` VALUES ('40', 'AD钙奶', '8F1840D3', '1', '1', '1', '1', '0', '1.50', null, null, null, null, '2018-01-11 10:30:01', null, null);
INSERT INTO `commodity` VALUES ('41', 'AD钙奶', '28A5E96E', '1', '1', '1', '1', '0', '1.50', null, null, null, null, '2018-01-11 10:30:01', null, null);
INSERT INTO `commodity` VALUES ('42', 'AD钙奶', '3A9005BF', '1', '1', '1', '1', '0', '1.50', null, null, null, null, '2018-01-11 10:30:02', null, null);
INSERT INTO `commodity` VALUES ('43', 'AD钙奶', 'CCC758B4', '1', '1', '1', '1', '0', '1.50', null, null, null, null, '2018-01-11 10:30:02', null, null);
INSERT INTO `commodity` VALUES ('44', 'AD钙奶', 'F83C5111', '1', '1', '1', '1', '0', '1.50', null, null, null, null, '2018-01-11 10:30:02', null, null);
INSERT INTO `commodity` VALUES ('45', 'AD钙奶', '386D5940', '1', '1', '1', '2', '1', '1.50', '2.00', '1.00', '2.00', '11', '2018-01-11 10:30:02', '2018-01-12 10:14:16', null);
INSERT INTO `commodity` VALUES ('46', 'MacBook 12寸', '4BE558D7', '7', '4', '4', '1', '0', '8500.00', null, null, null, null, '2018-01-11 10:32:04', null, null);
INSERT INTO `commodity` VALUES ('47', 'MacBook 12寸', '979E28F2', '7', '4', '4', '1', '0', '8500.00', null, null, null, null, '2018-01-11 10:32:04', null, null);
INSERT INTO `commodity` VALUES ('48', 'Apple Watch', '94426D22', '7', '4', '4', '1', '0', '1800.00', null, null, null, null, '2018-01-11 14:33:08', null, null);
INSERT INTO `commodity` VALUES ('49', 'Apple Watch', '64E5EE01', '7', '4', '4', '1', '0', '1800.00', null, null, null, null, '2018-01-11 14:33:08', null, null);
INSERT INTO `commodity` VALUES ('50', 'Apple Watch', '58DFC4A6', '7', '4', '4', '1', '0', '1800.00', null, null, null, null, '2018-01-11 14:33:08', null, null);
INSERT INTO `commodity` VALUES ('51', 'Apple Watch', 'DEF74DE8', '7', '4', '4', '1', '0', '1800.00', null, null, null, null, '2018-01-12 10:30:58', null, null);
INSERT INTO `commodity` VALUES ('52', 'Apple Watch', 'D759C35E', '7', '4', '4', '1', '0', '1800.00', null, null, null, null, '2018-01-12 10:30:59', null, null);
INSERT INTO `commodity` VALUES ('53', 'MacBook 12寸', '36678DF0', '7', '4', '4', '1', '0', '8500.00', null, null, null, null, '2018-01-12 10:31:45', null, null);
INSERT INTO `commodity` VALUES ('54', 'MacBook 12寸', 'BE62EE12', '7', '4', '4', '1', '0', '8500.00', null, null, null, null, '2018-01-12 10:31:45', null, null);
INSERT INTO `commodity` VALUES ('55', 'MacBook 12寸', '5720A2D9', '7', '4', '4', '1', '0', '8500.00', null, null, null, null, '2018-01-12 10:31:45', null, null);

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
INSERT INTO `purchase` VALUES ('1', 'AD钙奶', '1', '1', '1', '1.50', '90');
INSERT INTO `purchase` VALUES ('2', '蚕丝面膜', '3', '2', '3', '12.00', '42');
INSERT INTO `purchase` VALUES ('3', '妮维雅护肤霜', '3', '2', '3', '32.50', '200');
INSERT INTO `purchase` VALUES ('4', 'Apple Watch', '7', '4', '4', '1800.00', '0');
INSERT INTO `purchase` VALUES ('5', 'MacBook 12寸', '7', '4', '4', '8500.00', '0');
INSERT INTO `purchase` VALUES ('6', '中华2B铅笔', '5', '5', '7', '0.50', '1480');

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
INSERT INTO `storage` VALUES ('1', '1号仓库', '2018-01-01 12:12:00', '2018-01-03 14:12:31', '90', '0');
INSERT INTO `storage` VALUES ('2', '2号仓库', '2018-01-01 12:12:12', '2018-01-03 14:13:54', '242', '0');
INSERT INTO `storage` VALUES ('3', '3号仓库', '2018-01-01 15:00:00', '2018-01-03 14:14:19', '0', '1');
INSERT INTO `storage` VALUES ('4', '5号仓库', '2018-01-08 13:21:51', '2018-01-08 13:24:38', '0', '1');
INSERT INTO `storage` VALUES ('5', '8号仓库', '2018-01-08 13:28:44', '2018-01-08 13:28:44', '1480', '0');
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
