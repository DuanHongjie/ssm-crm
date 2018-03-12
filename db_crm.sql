/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : db_crm

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-03-12 12:05:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `khno` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `cusManager` varchar(20) DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL,
  `myd` varchar(30) DEFAULT NULL,
  `xyd` varchar(30) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `postCode` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `webSite` varchar(20) DEFAULT NULL,
  `yyzzzch` varchar(50) DEFAULT NULL,
  `fr` varchar(20) DEFAULT NULL,
  `zczj` varchar(20) DEFAULT NULL,
  `nyye` varchar(20) DEFAULT NULL,
  `khyh` varchar(50) DEFAULT NULL,
  `khzh` varchar(50) DEFAULT NULL,
  `dsdjh` varchar(50) DEFAULT NULL,
  `gsdjh` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('1', 'KH20180305103608', '世纪华联超市', '天津', '小张', '战略合作伙伴', '☆☆☆', '☆☆☆', '北京海淀区双榆树东里15号', '061700', '010-62263393', '010-62263393', 'www.daniu.com', '420103000057404', '张三', '1000', '5000', '中国建设银行', '6214021305924873202', '1100582460', '123456789', '0');
INSERT INTO `t_customer` VALUES ('2', 'KH20180305142804', '大润发', '天津', '小张', '重点开发客户', '☆☆', '☆☆', '天津市西青区宾水西道397号', '300387', null, null, null, null, null, null, null, '中国建设银行', '10000000', '10236589', '102335641', null);
INSERT INTO `t_customer` VALUES ('3', 'KH20180305143100', '红太阳超市', '天津', '小红', '合作伙伴', '☆', '☆', '天津市西青区宾水西道397号', '300387', null, null, null, null, null, null, null, '中国建设银行', '6214021305924873202', '1100582460', '3213', null);
INSERT INTO `t_customer` VALUES ('4', 'KH20180305164157', '快客商店', '上海', '小明', '战略合作伙伴', '☆☆☆☆☆', '☆☆☆☆☆', '天津市西青区宾水西道397号', '061700\r\n300387\r\n300387\r\n\r\n102563', null, null, null, null, null, null, null, '中国银行', '111111', '1102352565559999666', '222222', null);
INSERT INTO `t_customer` VALUES ('5', 'KH20180305164307', '喜士多超市', '天津', '小张', '重点开发客户', '☆☆', '☆☆', '天津市西青区宾水西道397号', '202236', null, null, null, null, null, null, null, '中国农业银行', '1111112', '111000222333444', '2222221', null);
INSERT INTO `t_customer` VALUES ('6', 'KH20180305164516', '美宜佳超市', '北京', '小红', '重点开发客户', '☆☆☆☆', '☆☆☆☆', '天津市西青区宾水西道397号', '', null, null, null, null, null, null, null, '邮政储蓄银行', '11111', '11025554269875', '333333', null);

-- ----------------------------
-- Table structure for t_customer_contact
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_contact`;
CREATE TABLE `t_customer_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cusId` int(11) DEFAULT NULL,
  `contactTime` date DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `overview` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_contact
-- ----------------------------
INSERT INTO `t_customer_contact` VALUES ('1', '1', '2017-10-20', '西门肯德基', '谈合作');
INSERT INTO `t_customer_contact` VALUES ('2', '1', '2017-12-28', '滨江道', '吃饭');
INSERT INTO `t_customer_contact` VALUES ('3', '3', '2017-11-09', '大悦城', '吃饭');
INSERT INTO `t_customer_contact` VALUES ('4', '2', '2018-03-08', '天津师范大学', '谈合作');

-- ----------------------------
-- Table structure for t_customer_linkman
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_linkman`;
CREATE TABLE `t_customer_linkman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cusId` int(11) DEFAULT NULL,
  `linkName` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `zhiwei` varchar(50) DEFAULT NULL,
  `officePhone` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_linkman
-- ----------------------------
INSERT INTO `t_customer_linkman` VALUES ('1', '1', '王宇', '女', '经理', '031-4567891', '15822232648');
INSERT INTO `t_customer_linkman` VALUES ('2', '2', '李峰', '男', '总经理助理', '010-7788991', '13654925781');
INSERT INTO `t_customer_linkman` VALUES ('4', '3', '段新蕊', '女', '副总经理', '022-6669999', '15965235486');
INSERT INTO `t_customer_linkman` VALUES ('5', '3', '高丽', '女', '职员', '022-9999888', '13854276529');
INSERT INTO `t_customer_linkman` VALUES ('6', '2', '张美丽', '女', '职员', '022-6666888', '13156924598');
INSERT INTO `t_customer_linkman` VALUES ('7', '1', '王丽', '女', '职员', '010-8759632', '18859642362');
INSERT INTO `t_customer_linkman` VALUES ('8', '4', '高翔', '男', '董事长', '010-1888888', '18856249999');
INSERT INTO `t_customer_linkman` VALUES ('9', '5', '曹祺', '男', '部门经理', '010-2345670', '12345678900');
INSERT INTO `t_customer_linkman` VALUES ('10', '1', '刘丽', '女', '董事长', '010-1110120', '13056985523');

-- ----------------------------
-- Table structure for t_customer_loss
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_loss`;
CREATE TABLE `t_customer_loss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cusNo` varchar(40) DEFAULT NULL,
  `cusName` varchar(20) DEFAULT NULL,
  `cusManager` varchar(20) DEFAULT NULL,
  `lastOrderTime` date DEFAULT NULL,
  `confirmLossTime` date DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `lossreason` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_loss
-- ----------------------------
INSERT INTO `t_customer_loss` VALUES ('9', 'KH20150526073022', '风驰科技', '小红', '2014-03-02', '2015-08-21', '1', '客户公司倒闭！');
INSERT INTO `t_customer_loss` VALUES ('10', 'KH20150526073023', '巨人科技', '小丽', '2014-02-03', '2018-03-11', '1', '你好');
INSERT INTO `t_customer_loss` VALUES ('11', 'KH20150729090910', '12', '小张', null, null, '0', null);
INSERT INTO `t_customer_loss` VALUES ('12', 'KH20150526073025', '好人集团', null, null, '2018-03-11', '1', '11111');
INSERT INTO `t_customer_loss` VALUES ('13', 'KH20150526073023', '巨人科技', '小丽', null, null, null, null);
INSERT INTO `t_customer_loss` VALUES ('14', 'KH20150729090910', '12', '小张', null, '2018-03-11', '1', '1');
INSERT INTO `t_customer_loss` VALUES ('15', 'KH20150526073022', '风驰科技', '小红', null, '2018-03-11', '1', '1111');
INSERT INTO `t_customer_loss` VALUES ('16', 'KH20180305164748', '鼎盛酒店', '小红', null, null, null, null);

-- ----------------------------
-- Table structure for t_customer_order
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_order`;
CREATE TABLE `t_customer_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cusId` int(11) DEFAULT NULL,
  `orderNo` varchar(40) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_order
-- ----------------------------
INSERT INTO `t_customer_order` VALUES ('1', '1', 'DD11212', '2017-11-23', '和平区', '1');
INSERT INTO `t_customer_order` VALUES ('2', '2', 'DD21321', '2017-11-23', '南开区', '1');
INSERT INTO `t_customer_order` VALUES ('3', '3', 'DD21210', '2017-12-29', '津南区', '1');
INSERT INTO `t_customer_order` VALUES ('4', '4', 'DD11213', '2017-12-30', '西青区', '0');
INSERT INTO `t_customer_order` VALUES ('5', '5', 'DD0321401', '2018-02-14', '和平区', '1');
INSERT INTO `t_customer_order` VALUES ('6', '5', 'DD030802', '2018-03-08', '南开区', '1');
INSERT INTO `t_customer_order` VALUES ('7', '4', 'DD011401', '2018-01-04', '西青区', '0');
INSERT INTO `t_customer_order` VALUES ('8', '3', 'DD021102', '2018-02-11', '天津师范大学', '0');
INSERT INTO `t_customer_order` VALUES ('9', '2', 'DD120201', '2017-12-02', '西门', '1');
INSERT INTO `t_customer_order` VALUES ('10', '1', 'DD121102', '2017-12-11', '南门', '0');

-- ----------------------------
-- Table structure for t_customer_reprieve
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_reprieve`;
CREATE TABLE `t_customer_reprieve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lossId` int(11) DEFAULT NULL,
  `measure` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_reprieve
-- ----------------------------
INSERT INTO `t_customer_reprieve` VALUES ('1', '9', '谈合作');
INSERT INTO `t_customer_reprieve` VALUES ('2', '11', '后续再联系客户。');
INSERT INTO `t_customer_reprieve` VALUES ('3', '9', '打电话咨询客户');
INSERT INTO `t_customer_reprieve` VALUES ('4', '9', '请吃饭');
INSERT INTO `t_customer_reprieve` VALUES ('5', '10', '网上沟通交流');
INSERT INTO `t_customer_reprieve` VALUES ('6', '11', '请唱歌');
INSERT INTO `t_customer_reprieve` VALUES ('7', '12', '请喝酒');

-- ----------------------------
-- Table structure for t_customer_service
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_service`;
CREATE TABLE `t_customer_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serveType` varchar(30) DEFAULT NULL,
  `overview` varchar(500) DEFAULT NULL,
  `customer` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `servicerequest` varchar(500) DEFAULT NULL,
  `createPeople` varchar(100) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `assigner` varchar(100) DEFAULT NULL,
  `assignTime` datetime DEFAULT NULL,
  `serviceProce` varchar(500) DEFAULT NULL,
  `serviceProcePeople` varchar(20) DEFAULT NULL,
  `serviceProceTime` datetime DEFAULT NULL,
  `serviceProceResult` varchar(500) DEFAULT NULL,
  `myd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_service
-- ----------------------------
INSERT INTO `t_customer_service` VALUES ('1', '咨询', '咨询下酒的价格', '大浪技术', '已归档', '想多买优惠', '想多买优惠', '2018-03-11 20:46:39', '张三', '2018-03-11 00:00:00', '可以商量', '小红', '2017-10-27 00:00:00', '3', '☆☆☆☆');
INSERT INTO `t_customer_service` VALUES ('2', '建议', '建议发顺丰快递', '郑先生', '已归档', '建议发顺丰快递', '建议发顺丰快递', '2018-03-11 20:46:42', '张三', '2018-03-05 00:00:00', '可以', '小红', '2018-03-11 20:32:04', '3', '☆☆☆☆☆');
INSERT INTO `t_customer_service` VALUES ('3', '投诉', '投诉酒撒了', '新浪客户', '已归档', '投诉酒撒了', '投诉酒撒了', '2018-03-11 20:46:45', '张三', '2018-03-04 00:00:00', '拍照，重发快递', '小红', '2018-03-07 00:00:00', '3', '☆☆☆☆☆');
INSERT INTO `t_customer_service` VALUES ('24', '咨询', '网站什么时候建好', '郑天祺', '已归档', '尽快成立', '小张', '2018-03-11 00:00:00', '小李', '2018-03-11 00:00:00', '好的，感谢您的支持', '小张', '2018-03-11 00:00:00', '很好', '☆☆☆☆☆');
INSERT INTO `t_customer_service` VALUES ('25', '建议', '建议你们倒闭', '小明', '已归档', '1', '小张', '2018-03-11 00:00:00', '小芳', '2018-03-11 00:00:00', '杀了他', '小张', '2018-03-11 00:00:00', '我死了', '☆');

-- ----------------------------
-- Table structure for t_cus_dev_plan
-- ----------------------------
DROP TABLE IF EXISTS `t_cus_dev_plan`;
CREATE TABLE `t_cus_dev_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `saleChanceId` int(11) DEFAULT NULL,
  `planItem` varchar(100) DEFAULT NULL,
  `planDate` date DEFAULT NULL,
  `exeAffect` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_cus_dev_plan` (`saleChanceId`),
  CONSTRAINT `FK_t_cus_dev_plan` FOREIGN KEY (`saleChanceId`) REFERENCES `t_sale_chance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cus_dev_plan
-- ----------------------------
INSERT INTO `t_cus_dev_plan` VALUES ('6', '16', '西门ktv谈合作', '2018-03-06', '客户没同意');
INSERT INTO `t_cus_dev_plan` VALUES ('7', '16', '南门谈', '2018-03-07', '同意');
INSERT INTO `t_cus_dev_plan` VALUES ('8', '19', '西门', '2018-03-05', '客户没同意');
INSERT INTO `t_cus_dev_plan` VALUES ('9', '2', '南门', '2018-03-06', '同意');
INSERT INTO `t_cus_dev_plan` VALUES ('10', '2', '2', '2018-03-11', '');
INSERT INTO `t_cus_dev_plan` VALUES ('11', '21', '好', '2018-03-11', '');
INSERT INTO `t_cus_dev_plan` VALUES ('12', '22', '联系客户，介绍产品', '2018-03-11', '有点效果');
INSERT INTO `t_cus_dev_plan` VALUES ('13', '22', '请客户吃饭，洽谈', '2018-03-11', '成功了');
INSERT INTO `t_cus_dev_plan` VALUES ('14', '15', '洽谈', '2018-03-11', '可以');
INSERT INTO `t_cus_dev_plan` VALUES ('24', '1', '213', '2018-03-11', '');

-- ----------------------------
-- Table structure for t_datadic
-- ----------------------------
DROP TABLE IF EXISTS `t_datadic`;
CREATE TABLE `t_datadic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataDicName` varchar(50) DEFAULT NULL,
  `dataDicValue` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_datadic` (`dataDicValue`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_datadic
-- ----------------------------
INSERT INTO `t_datadic` VALUES ('1', '客户等级', '普通客户');
INSERT INTO `t_datadic` VALUES ('2', '客户等级', '重点开发客户');
INSERT INTO `t_datadic` VALUES ('3', '客户等级', '大客户');
INSERT INTO `t_datadic` VALUES ('4', '客户等级', '合作伙伴');
INSERT INTO `t_datadic` VALUES ('5', '客户等级', '战略合作伙伴');
INSERT INTO `t_datadic` VALUES ('6', '服务类型', '咨询');
INSERT INTO `t_datadic` VALUES ('7', '服务类型', '建议');
INSERT INTO `t_datadic` VALUES ('8', '服务类型', '投诉');

-- ----------------------------
-- Table structure for t_menu_tree
-- ----------------------------
DROP TABLE IF EXISTS `t_menu_tree`;
CREATE TABLE `t_menu_tree` (
  `id` int(11) NOT NULL,
  `parentid` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `iconCls` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu_tree
-- ----------------------------
INSERT INTO `t_menu_tree` VALUES ('1', null, '营销管理', '', 'icon-yxgl');
INSERT INTO `t_menu_tree` VALUES ('2', '1', '营销机会管理', 'saleChanceManage.jsp', 'icon-yxjhgl');
INSERT INTO `t_menu_tree` VALUES ('3', '1', '客户开发计划', 'cusdevplanManage.jsp', 'icon-khkfjh');
INSERT INTO `t_menu_tree` VALUES ('4', null, '客户管理', null, 'icon-khgl');
INSERT INTO `t_menu_tree` VALUES ('5', '4', '客户信息管理', 'customerManage.jsp', 'icon-khxxgl');
INSERT INTO `t_menu_tree` VALUES ('6', '4', '客户流失管理', 'customerLossManage.jsp', 'icon-khlsgl');
INSERT INTO `t_menu_tree` VALUES ('8', '7', '服务创建', 'customerServiceCreate.jsp', 'icon-fwcj');
INSERT INTO `t_menu_tree` VALUES ('9', '7', '服务分配', 'customerServiceAssign.jsp', 'icon-fwfp');
INSERT INTO `t_menu_tree` VALUES ('10', '7', '服务处理', 'customerServiceProce.jsp', 'icon-fwcl');
INSERT INTO `t_menu_tree` VALUES ('11', '7', '服务反馈', 'customerServiceFeedback.jsp', 'icon-fwfk');
INSERT INTO `t_menu_tree` VALUES ('12', '7', '服务归档', 'customerServiceFile.jsp', 'icon-fwgd');
INSERT INTO `t_menu_tree` VALUES ('13', null, '统计报表', null, 'icon-tjbb');
INSERT INTO `t_menu_tree` VALUES ('14', '13', '客户贡献分析', 'khgxfx.jsp', 'icon-khgxfx');
INSERT INTO `t_menu_tree` VALUES ('15', '13', '客户构成分析', 'khgcfx.jsp', 'icon-khgcfx');
INSERT INTO `t_menu_tree` VALUES ('16', '13', '客户服务分析', 'khfwfx.jsp', 'icon-khfwfx');
INSERT INTO `t_menu_tree` VALUES ('17', '13', '客户流失分析', 'khlsfx.jsp', 'icon-khlsfx');
INSERT INTO `t_menu_tree` VALUES ('18', null, '基础数据管理', '', 'icon-jcsjgl');
INSERT INTO `t_menu_tree` VALUES ('20', '18', '产品信息查询', 'productSearch.jsp', 'icon-cpxxgl');
INSERT INTO `t_menu_tree` VALUES ('21', '18', '用户信息管理', 'userManage.jsp', 'icon-user');
INSERT INTO `t_menu_tree` VALUES ('19', '18', '数据字典管理', 'dataDicManage.jsp', 'icon-sjzdgl');
INSERT INTO `t_menu_tree` VALUES ('7', null, '服务管理', null, 'icon-fwgl');

-- ----------------------------
-- Table structure for t_order_details
-- ----------------------------
DROP TABLE IF EXISTS `t_order_details`;
CREATE TABLE `t_order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `goodsName` varchar(100) DEFAULT NULL,
  `goodsNum` int(11) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `sum` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order_details
-- ----------------------------
INSERT INTO `t_order_details` VALUES ('1', '5', '飞天茅台酒', '2', '箱', '8994', '17988');
INSERT INTO `t_order_details` VALUES ('2', '5', '五星茅台酒', '4', '箱', '8934', '35736');
INSERT INTO `t_order_details` VALUES ('3', '2', '茅台纪念酒', '10', '箱', '1059', '10590');
INSERT INTO `t_order_details` VALUES ('4', '3', '陈年茅台酒', '20', '瓶', '7999', '159980');
INSERT INTO `t_order_details` VALUES ('5', '3', '礼盒茅台酒', '5', '箱', '3699', '18495');
INSERT INTO `t_order_details` VALUES ('6', '4', '茅台迎宾酒', '1', '箱', '564', '564');
INSERT INTO `t_order_details` VALUES ('7', '4', '茅台王子酒', '30', '箱', '1644', '49320');
INSERT INTO `t_order_details` VALUES ('8', '6', '茅台王子酒', '3', '箱', '1644', '4932');
INSERT INTO `t_order_details` VALUES ('9', '7', '茅台迎宾酒', '1', '箱', '564', '564');
INSERT INTO `t_order_details` VALUES ('10', '8', '茅台纪念酒', '10', '箱', '1059', '10590');
INSERT INTO `t_order_details` VALUES ('11', '9', '礼盒茅台酒', '5', '箱', '3699', '18495');
INSERT INTO `t_order_details` VALUES ('12', '10', '茅台迎宾酒', '1', '箱', '564', '564');
INSERT INTO `t_order_details` VALUES ('13', '11', '五星茅台酒', '4', '箱', '8934', '35736');
INSERT INTO `t_order_details` VALUES ('14', null, '陈年茅台酒', '20', '瓶', '7999', '159980');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(300) DEFAULT NULL,
  `model` varchar(150) DEFAULT NULL,
  `unit` varchar(60) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `store` double DEFAULT NULL,
  `remark` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('1', '联想笔记本', 'Y450', '台', '4500', '120', '好');

-- ----------------------------
-- Table structure for t_sale_chance
-- ----------------------------
DROP TABLE IF EXISTS `t_sale_chance`;
CREATE TABLE `t_sale_chance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chanceSource` varchar(300) DEFAULT NULL,
  `customerName` varchar(100) DEFAULT NULL,
  `cgjl` int(11) DEFAULT NULL,
  `overview` varchar(300) DEFAULT NULL,
  `linkMan` varchar(100) DEFAULT NULL,
  `linkPhone` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `createMan` varchar(100) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `assignMan` varchar(100) DEFAULT NULL,
  `assignTime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `devResult` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sale_chance
-- ----------------------------
INSERT INTO `t_sale_chance` VALUES ('1', '销售上门推销', '世纪华联超市', '80', '有意购买五星茅台酒', '段女士', '13524600195', '大超市销售速度快。。', '小张', '2018-02-22 17:59:00', '小王', '2018-03-05 00:00:00', '1', '3');
INSERT INTO `t_sale_chance` VALUES ('2', '采购茅台酒意向', '大润发超市', '70', '有意购买茅台王子酒', '王先生', '13524500195', '', '小张', '2018-02-22 18:00:00', '小张', '2018-03-05 00:00:00', '1', '2');
INSERT INTO `t_sale_chance` VALUES ('8', '打电话咨询', '家乐福超市', '100', '有意购买茅台纪念酒', '张先生', '13132557692', '', '小张', '2018-02-23 09:00:00', '小红', '2018-03-05 00:00:00', '1', '2');
INSERT INTO `t_sale_chance` VALUES ('9', '网络沟通', '沃尔玛', '95', '有意购买茅台迎宾酒', '刘女士', '18732559785', '', '小张', '2018-02-23 00:00:00', '小胡', '2018-03-05 00:00:00', '0', '0');
INSERT INTO `t_sale_chance` VALUES ('10', '偶然机会', '红太阳超市', '10', '有意购买茅台迎宾酒', '郑先生', '13053466717', '', '小张', '2018-02-23 00:00:00', '小胡', '2018-03-05 00:00:00', '0', '0');
INSERT INTO `t_sale_chance` VALUES ('11', '电话联系', '海底捞火锅', '50', '有意购买飞天茅台酒', '李先生', '12345754326', '', '小张', '2018-01-25 19:03:49', '小王', '2018-03-08 00:00:00', '0', '0');
INSERT INTO `t_sale_chance` VALUES ('12', '广告宣传', '百联超市', '80', '有意购买茅台迎宾酒', '周先生', '18101010108', '通过广告看到的', '小张', '2018-02-25 00:00:00', '小红', '2018-02-08 19:07:59', '0', '0');
INSERT INTO `t_sale_chance` VALUES ('13', '电话咨询', '永辉超市', '80', '有意购买五星茅台酒', '陈先生', '18303517744', '', '小张', '2018-02-28 19:05:21', '小张', '2018-03-08 19:08:07', '0', '0');
INSERT INTO `t_sale_chance` VALUES ('14', '电话咨询', '物美超市', '90', '有意购买陈年茅台酒', '蒋先生', '13950035537', '', '小张', '2018-02-28 19:05:27', '小张', '2018-03-08 19:08:11', '0', '0');
INSERT INTO `t_sale_chance` VALUES ('15', '网络沟通', '银座超市', '70', '有意购买茅台王子酒', '杨先生', '13966427550', '', '小张', '2018-02-28 19:05:35', '小胡', '2018-03-09 19:08:15', '1', '3');
INSERT INTO `t_sale_chance` VALUES ('16', '销售上门推销', '陶然居大饭店', '60', '有意购买几种茅台产品', '王先生', '13947766628', '', '小张', '2018-03-02 19:05:40', '小胡', '2018-03-10 19:08:19', '1', '3');
INSERT INTO `t_sale_chance` VALUES ('17', '上门推销', '全聚德', '80', '有意购买茅台王子酒', '王女士', '19263502140', '', '小张', '2018-03-03 19:05:45', '小红', '2018-03-10 19:08:44', '0', '0');
INSERT INTO `t_sale_chance` VALUES ('18', '上门推销', '俏江南', '98', '想要和公司长期合作', '沈女士', '13961332155', '', '小张', '2018-03-04 19:05:49', '小红', '2018-03-10 19:09:23', '0', '0');
INSERT INTO `t_sale_chance` VALUES ('19', '网络沟通', '许留山', '60', '想要了解一下合作意向', '韩女士', '13937401011', '', '小张', '2018-03-04 19:05:53', '小张', '2018-03-10 19:09:28', '1', '3');
INSERT INTO `t_sale_chance` VALUES ('20', '网络沟通', '仙踪林', '50', '有意购买礼盒茅台酒', '魏先生', '13964507501', '', '小张', '2018-03-05 19:05:57', '小胡', '2018-03-10 19:09:32', '0', '0');
INSERT INTO `t_sale_chance` VALUES ('21', '上门推销', '鼎泰丰', '30', '有意和公司合作', '何女士', '13901784558', '', '小张', '2018-03-06 00:00:00', '小张', '2018-03-10 00:00:00', '1', '3');
INSERT INTO `t_sale_chance` VALUES ('22', '电话咨询', '外婆家', '30', '想要了解一下酒的质量', '许女士', '13943250086 ', '', '小张', '2018-03-08 19:06:04', '', '2018-03-11 20:45:29', '1', '2');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `trueName` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `roleName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'xiaozhang', '123', '小张', 'xiaozhang123@qq.com', '136695473260', '系统管理员');
INSERT INTO `t_user` VALUES ('2', 'xiaowang', '123', '小王', 'xiaowang@163.com', '13725409301', '销售主管');
INSERT INTO `t_user` VALUES ('3', 'admin', '123', '小芳', 'xiaofang@qq.com', '13053455769', '客户经理');
INSERT INTO `t_user` VALUES ('4', 'xiaohong', '123', '小红', 'xiaohong@qq.com', '13615092473', '客户经理');
INSERT INTO `t_user` VALUES ('5', 'xiaoli', '123', '小李', 'xiaoli@qq.com', '18750623850', '客户经理');
INSERT INTO `t_user` VALUES ('6', 'xiaohu', '123', '小胡', 'xiaohu@163.com', '18695432050', '销售主管');
INSERT INTO `t_user` VALUES ('7', 'xiaoming', '123', '小明', 'xiaoming@qq.com', '18726305011', '系统管理员');
INSERT INTO `t_user` VALUES ('9', 'xiaozheng', '123', '小郑', 'xiaozheng@qq.com', '13098767890', '销售主管');
