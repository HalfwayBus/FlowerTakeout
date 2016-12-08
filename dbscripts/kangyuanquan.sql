/*
Navicat MySQL Data Transfer

Source Server         : 128
Source Server Version : 50712
Source Host           : 192.168.103.128:3306
Source Database       : kangyuanquan

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-12-08 11:33:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for db_fhdb
-- ----------------------------
DROP TABLE IF EXISTS `db_fhdb`;
CREATE TABLE `db_fhdb` (
  `FHDB_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `BACKUP_TIME` varchar(32) DEFAULT NULL COMMENT '备份时间',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `SQLPATH` varchar(300) DEFAULT NULL COMMENT '存储位置',
  `TYPE` int(1) NOT NULL COMMENT '类型',
  `DBSIZE` varchar(10) DEFAULT NULL COMMENT '文件大小',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHDB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_fhdb
-- ----------------------------

-- ----------------------------
-- Table structure for db_timingbackup
-- ----------------------------
DROP TABLE IF EXISTS `db_timingbackup`;
CREATE TABLE `db_timingbackup` (
  `TIMINGBACKUP_ID` varchar(100) NOT NULL,
  `JOBNAME` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `CREATE_TIME` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `STATUS` int(1) NOT NULL COMMENT '类型',
  `FHTIME` varchar(30) DEFAULT NULL COMMENT '时间规则',
  `TIMEEXPLAIN` varchar(100) DEFAULT NULL COMMENT '规则说明',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TIMINGBACKUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_timingbackup
-- ----------------------------
INSERT INTO `db_timingbackup` VALUES ('311e06c34a5e4518a86d5d30799f9b55', 'sys_app_user_515762', '2016-04-11 17:04:55', 'sys_app_user', '2', '1/2 * * ? * *', '每个月的 每周 每天 每小时执行一次', '备份任务');

-- ----------------------------
-- Table structure for ky_activitymanage
-- ----------------------------
DROP TABLE IF EXISTS `ky_activitymanage`;
CREATE TABLE `ky_activitymanage` (
  `ACTIVITYMANAGE_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `DESCRIBES` varchar(255) DEFAULT NULL COMMENT '描述',
  `ISSHOW` varchar(5) DEFAULT NULL COMMENT '是否展示在首页',
  `ADDTIME` datetime DEFAULT NULL COMMENT '添加时间',
  `ADDUSER` varchar(100) DEFAULT NULL COMMENT '添加人',
  `RELEASEPEOPLE` varchar(255) DEFAULT NULL COMMENT '发布人',
  `IMG_PATH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ACTIVITYMANAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ky_activitymanage
-- ----------------------------
INSERT INTO `ky_activitymanage` VALUES ('1', '测试', '<h1>这里写你的初始化内容</h1>', '0', '2016-11-28 21:26:31', 'admin', '1', '/static/images/75697f71849f45629dc89540a0b1f7c1_.png');
INSERT INTO `ky_activitymanage` VALUES ('ce4f1106c2c642bd8ae0252df9f89607', '测试2', '这是一件可以秒杀大只豪的毒品', '是', '2016-11-28 11:11:53', 'admin', '康园圈开发方', '/static/images/d75066dcff3640398a7ed3a04e090fba_.png');

-- ----------------------------
-- Table structure for ky_goods
-- ----------------------------
DROP TABLE IF EXISTS `ky_goods`;
CREATE TABLE `ky_goods` (
  `GOODS_ID` varchar(100) NOT NULL,
  `STOP_ID` varchar(100) DEFAULT NULL COMMENT '店铺ID',
  `PRICE` varchar(255) DEFAULT NULL COMMENT '价格',
  `DETAIL` varchar(255) DEFAULT NULL COMMENT '描述',
  `IMG_PATH` varchar(255) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`GOODS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ky_goods
-- ----------------------------
INSERT INTO `ky_goods` VALUES ('b797e8d157ea429db40828998675caa6', '2ba152c19c644b1c87ac189a34d66218', '12', '111', '/static/images/1a595454da6a403e85d885d766ffb989_.jpg');

-- ----------------------------
-- Table structure for ky_insiderecommended
-- ----------------------------
DROP TABLE IF EXISTS `ky_insiderecommended`;
CREATE TABLE `ky_insiderecommended` (
  `INSIDERECOMMENDED_ID` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'ID',
  `IMG_PATH` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片路径',
  `LINK` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '链接',
  `ADD_USER` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '添加人',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `SORT` int(11) DEFAULT NULL COMMENT '优先数',
  PRIMARY KEY (`INSIDERECOMMENDED_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='站内推荐表';

-- ----------------------------
-- Records of ky_insiderecommended
-- ----------------------------
INSERT INTO `ky_insiderecommended` VALUES ('0ccaefcafd2b42a89768c302f00991fe', '/static/images/827ede82abb748afa486bacf90c1be86_.jpg', 'app_index/goConnectUs', 'admin', '2016-09-09 10:24:00', '3');
INSERT INTO `ky_insiderecommended` VALUES ('374fd277422343dd8184adeaac69eed1', '/static/images/ed8f1228b686426cb85d7506210dd70d_.jpg', 'app_index/goConnectUs', 'admin', '2016-11-28 20:23:25', '4');
INSERT INTO `ky_insiderecommended` VALUES ('b06704021df644e990172283f9fa93ba', '/static/images/8fbf838e079f4570afc4e1ec2000e81f_.jpg', 'app_index/goConnectUs', 'admin', '2016-09-12 20:16:19', '2');

-- ----------------------------
-- Table structure for ky_message
-- ----------------------------
DROP TABLE IF EXISTS `ky_message`;
CREATE TABLE `ky_message` (
  `MESSAGE_ID` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'ID',
  `NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `PHONE` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '手机',
  `EMAIL` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `MESSAGECONTENT` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT '留言内容',
  `MESSAGETIME` datetime DEFAULT NULL COMMENT '留言时间',
  `ISHANDLED` int(1) DEFAULT '0' COMMENT '是否已处理',
  `HANDLE_PERSON` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `DEALINGUSER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处理人',
  PRIMARY KEY (`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='留言表';

-- ----------------------------
-- Records of ky_message
-- ----------------------------
INSERT INTO `ky_message` VALUES ('0c6f3a9417f24b57a477d9148f1baed7', '', '', null, null, '2016-08-23 22:18:32', '1', 'admin', null);
INSERT INTO `ky_message` VALUES ('15c022b939ef472d81800f853900cf73', '梁植淋2', '18926147086', '891004865@qq.com', 'fdshsdfhdfgjgfjjgf', '2016-08-17 00:00:00', '1', 'admin', 'admin');
INSERT INTO `ky_message` VALUES ('222b189ac35f4893bd202d017915ec2f', 'fsdgf', '353456', null, null, '2016-08-23 22:16:50', '0', '--', null);
INSERT INTO `ky_message` VALUES ('394ed30193d746f3b6cfdef0e43d1d14', '', '', '', '', '2016-08-24 11:02:00', '1', 'admin', null);
INSERT INTO `ky_message` VALUES ('4310ab931fed4246b00d2f8d6f2b74ab', 'dfhj', '4356247427537', 'gdfhgdf', 'hdf', '2016-08-17 00:00:00', '1', 'admin', null);
INSERT INTO `ky_message` VALUES ('45cde1c78412433ba1bda41f63a2cb8b', '354353', '34535', '435435@126.com', '53535', '2016-08-24 11:02:16', '1', 'admin', null);
INSERT INTO `ky_message` VALUES ('540a17d83d11473d8cf27fe1794843bc', 'fsdgf', '353456', null, null, '2016-08-23 22:16:52', '0', '--', null);
INSERT INTO `ky_message` VALUES ('72a34d9d8eae4bbbaafb002fab233eea', '梁植淋', '18926147086', '891004865@qq.com', '385云天化国际快递发货时间看公司电话', '2016-08-16 00:00:00', '1', 'admin', null);
INSERT INTO `ky_message` VALUES ('7c71ece1a0e04e40b61dac05bdbc9bde', 'fhasi', '1', '1', '1', '2016-08-17 00:00:00', '1', 'admin', null);
INSERT INTO `ky_message` VALUES ('7dfaa878121e40b1be0bf21250936d4c', '354353', '34535', '435435', '53535', '2016-08-24 11:02:08', '0', '--', null);
INSERT INTO `ky_message` VALUES ('829a3eff6d4e47d087c0ccbb0b50eb13', 'fsdgfas', 'fasd', null, null, '2016-08-23 22:17:26', '0', '--', null);
INSERT INTO `ky_message` VALUES ('90439ab340ef4f91bd8fcb2ca8ec7866', 'fdsgf', 'fa', null, null, '2016-08-23 22:18:50', '0', '--', null);
INSERT INTO `ky_message` VALUES ('ae9e96935609472d8fd040bbd8a51025', '梁植淋', '18926147086', '891004865@qq.com', '请官至豪吃饭', '2016-08-23 21:21:47', '0', '--', null);
INSERT INTO `ky_message` VALUES ('b2a345c50ab7432082a21318a1cd4585', '354353', '34535', '435435@126.com', '53535', '2016-08-24 11:02:13', '0', '--', null);
INSERT INTO `ky_message` VALUES ('bd492e935e51477eab8b366bc0292eab', '请尽快安排课程，谢谢！', '3434534', null, null, '2016-08-23 22:16:25', '0', '--', null);
INSERT INTO `ky_message` VALUES ('c3fd771baf484093847a868b37f503e0', 'dg', 'gfsd', '89@qq,com', 'dgdfs', null, null, null, null);
INSERT INTO `ky_message` VALUES ('ea58e5e975d74dda986e9661af21f20f', '张三', '18926147086', '891004865@qq.com', '植淋哥哥你好', null, '0', '--', null);

-- ----------------------------
-- Table structure for ky_stopmanage
-- ----------------------------
DROP TABLE IF EXISTS `ky_stopmanage`;
CREATE TABLE `ky_stopmanage` (
  `STOPMANAGE_ID` varchar(100) NOT NULL,
  `OWNER` varchar(100) DEFAULT NULL COMMENT '店主',
  `STOPNAME` varchar(255) DEFAULT NULL COMMENT '店铺名',
  `INTRODUCTION` varchar(255) DEFAULT NULL COMMENT '描述',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '地址',
  `PHONE` varchar(20) DEFAULT NULL COMMENT '电话',
  `LOGO` varchar(255) DEFAULT NULL COMMENT '图标',
  `STOPIMG` varchar(255) DEFAULT NULL COMMENT '店内图',
  PRIMARY KEY (`STOPMANAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ky_stopmanage
-- ----------------------------
INSERT INTO `ky_stopmanage` VALUES ('2ba152c19c644b1c87ac189a34d66218', '1', '1', '1', '1', '1', '/static/images/62b8c65853d5469f8a6ed91a6cda5caa_.png', '/static/images/ead7a2f3b78541878536f114fbfde594_.png');
INSERT INTO `ky_stopmanage` VALUES ('dc8137c0f6d44014ae2e5ba1713d5fdd', '2', null, '2', '2', '2', null, null);

-- ----------------------------
-- Table structure for oa_department
-- ----------------------------
DROP TABLE IF EXISTS `oa_department`;
CREATE TABLE `oa_department` (
  `DEPARTMENT_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `NAME_EN` varchar(50) DEFAULT NULL COMMENT '英文',
  `BIANMA` varchar(50) DEFAULT NULL COMMENT '编码',
  `PARENT_ID` varchar(100) DEFAULT NULL COMMENT '上级ID',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `HEADMAN` varchar(30) DEFAULT NULL COMMENT '负责人',
  `TEL` varchar(50) DEFAULT NULL COMMENT '电话',
  `FUNCTIONS` varchar(255) DEFAULT NULL COMMENT '部门职能',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`DEPARTMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_department
-- ----------------------------
INSERT INTO `oa_department` VALUES ('0956d8c279274fca92f4091f2a69a9ad', '销售会计', 'xiaokuai', '05896', 'd41af567914a409893d011aa53eda797', '', '', '', '', '');
INSERT INTO `oa_department` VALUES ('3e7227e11dc14b4d9e863dd1a1fcedf6', '成本会计', 'chengb', '03656', 'd41af567914a409893d011aa53eda797', '', '', '', '', '');
INSERT INTO `oa_department` VALUES ('5cccdb7c432449d8b853c52880058140', 'B公司', 'b', '002', '0', '冶铁', '李四', '112', '冶铁', '河北');
INSERT INTO `oa_department` VALUES ('83a25761c618457cae2fa1211bd8696d', '销售B组', 'xiaob', '002365', 'cbbc84eddde947ba8af7d509e430eb70', '', '李四', '', '', '');
INSERT INTO `oa_department` VALUES ('8f8b045470f342fdbc4c312ab881d62b', '销售A组', 'xiaoA', '0326', 'cbbc84eddde947ba8af7d509e430eb70', '', '张三', '0201212', '', '');
INSERT INTO `oa_department` VALUES ('a0982dea52554225ab682cd4b421de47', '1队', 'yidui', '02563', '8f8b045470f342fdbc4c312ab881d62b', '', '小王', '12356989', '', '');
INSERT INTO `oa_department` VALUES ('a6c6695217ba4a4dbfe9f7e9d2c06730', 'A公司', 'a', '001', '0', '挖煤', '张三', '110', '洼煤矿', '山西');
INSERT INTO `oa_department` VALUES ('cbbc84eddde947ba8af7d509e430eb70', '销售部', 'xiaoshoubu', '00201', '5cccdb7c432449d8b853c52880058140', '推销商品', '小明', '11236', '推销商品', '909办公室');
INSERT INTO `oa_department` VALUES ('d41af567914a409893d011aa53eda797', '财务部', 'caiwubu', '00101', 'a6c6695217ba4a4dbfe9f7e9d2c06730', '负责发工资', '王武', '11236', '管理财务', '308办公室');

-- ----------------------------
-- Table structure for sys_app_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_user`;
CREATE TABLE `sys_app_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL COMMENT '班级id',
  `PHONE` varchar(100) DEFAULT NULL,
  `SFID` varchar(100) DEFAULT NULL,
  `START_TIME` varchar(100) DEFAULT NULL,
  `END_TIME` varchar(100) DEFAULT NULL,
  `YEARS` int(10) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_app_user
-- ----------------------------
INSERT INTO `sys_app_user` VALUES ('', '123', '202cb962ac59075b964b07152d234b70', '会员甲', '', '115b386ff04f4352b060dffcd2b5d1da', '2016-09-18 21:14:47', '', '1', '472c27417fff4fd9956972afbca3acf5', '1212', '1212', '2015-12-02', '2015-12-25', '2', '111', '313596790@qq.com');
INSERT INTO `sys_app_user` VALUES ('21f169882b884fd68aeea2fdc345302a', '梁', '202cb962ac59075b964b07152d234b70', '1', '', '1b67fc82ce89457a8347ae53e43a347e', '', '', '1', '', '1', '1', '', '2017-09-03', '1', '', '1@qq.com');
INSERT INTO `sys_app_user` VALUES ('31edd4b0e393426f9c241c5497bbe491', '201600003', '202cb962ac59075b964b07152d234b70', '测试', '', '1b67fc82ce89457a8347ae53e43a347e', '', '', '1', '', '12312312312', '123123213123213213123', '', '2017-09-01', '1', '', '123@123.com');
INSERT INTO `sys_app_user` VALUES ('a38019c7ba65494f900eb3eb414d3a0b', '201600002', '202cb962ac59075b964b07152d234b70', '123', '', '1b67fc82ce89457a8347ae53e43a347e', '', '', '1', '472c27417fff4fd9956972afbca3acf5', '123', '23', '', '2017-09-01', '1', '', '123123213@111.com');
INSERT INTO `sys_app_user` VALUES ('b94e1b51e6e5404ba2bf31887c74665a', '201600001', '202cb962ac59075b964b07152d234b70', '123123', '', '1b67fc82ce89457a8347ae53e43a347e', '2016-09-05 09:28:01', '', '1', '472c27417fff4fd9956972afbca3acf5', '123', '123', '', '1233-09-01', '1', '', '12321@123.com');
INSERT INTO `sys_app_user` VALUES ('ead1f56708e4409c8d071e0a699e5633', 'a2', 'bcbe3365e6ac95ea2c0343a2395834dd', '会员乙', '', '1b67fc82ce89457a8347ae53e43a347e', '', '', '0', '', '', '', '2015-12-01', '2015-12-24', '1', '121', '978336446@qq.com');

-- ----------------------------
-- Table structure for sys_dictionaries
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionaries`;
CREATE TABLE `sys_dictionaries` (
  `DICTIONARIES_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `NAME_EN` varchar(50) DEFAULT NULL COMMENT '英文',
  `BIANMA` varchar(50) DEFAULT NULL COMMENT '编码',
  `ORDER_BY` int(11) NOT NULL COMMENT '排序',
  `PARENT_ID` varchar(100) DEFAULT NULL COMMENT '上级ID',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `TBSNAME` varchar(100) DEFAULT NULL COMMENT '排查表',
  PRIMARY KEY (`DICTIONARIES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
INSERT INTO `sys_dictionaries` VALUES ('096e4ec8986149d994b09e604504e38d', '黄浦区', 'huangpu', '0030201', '1', 'f1ea30ddef1340609c35c88fb2919bee', '黄埔', '');
INSERT INTO `sys_dictionaries` VALUES ('12a62a3e5bed44bba0412b7e6b733c93', '北京', 'beijing', '00301', '2', 'be4a8c5182c744d28282a5345783a77f', '北京', '');
INSERT INTO `sys_dictionaries` VALUES ('507fa87a49104c7c8cdb52fdb297da12', '宣武区', 'xuanwuqu', '0030101', '3', '12a62a3e5bed44bba0412b7e6b733c93', '宣武区', '');
INSERT INTO `sys_dictionaries` VALUES ('8994f5995f474e2dba6cfbcdfe5ea07a', '语文', 'yuwen', '00201', '1', 'fce20eb06d7b4b4d8f200eda623f725c', '语文', '');
INSERT INTO `sys_dictionaries` VALUES ('8ea7c44af25f48b993a14f791c8d689f', '分类', 'fenlei', '001', '1', '0', '分类', '');
INSERT INTO `sys_dictionaries` VALUES ('be4a8c5182c744d28282a5345783a77f', '地区', 'diqu', '003', '3', '0', '地区', '');
INSERT INTO `sys_dictionaries` VALUES ('d428594b0494476aa7338d9061e23ae3', '红色', 'red', '00101', '1', '8ea7c44af25f48b993a14f791c8d689f', '红色', '');
INSERT INTO `sys_dictionaries` VALUES ('de9afadfbed0428fa343704d6acce2c4', '绿色', 'green', '00102', '2', '8ea7c44af25f48b993a14f791c8d689f', '绿色', '');
INSERT INTO `sys_dictionaries` VALUES ('f1ea30ddef1340609c35c88fb2919bee', '上海', 'shanghai', '00302', '1', 'be4a8c5182c744d28282a5345783a77f', '上海', '');
INSERT INTO `sys_dictionaries` VALUES ('fce20eb06d7b4b4d8f200eda623f725c', '课程', 'kecheng', '002', '2', '0', '课程', '');

-- ----------------------------
-- Table structure for sys_fhbutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_fhbutton`;
CREATE TABLE `sys_fhbutton` (
  `FHBUTTON_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `QX_NAME` varchar(50) DEFAULT NULL COMMENT '权限标识',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHBUTTON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_fhbutton
-- ----------------------------
INSERT INTO `sys_fhbutton` VALUES ('3542adfbda73410c976e185ffe50ad06', '导出EXCEL', 'toExcel', '导出EXCEL');
INSERT INTO `sys_fhbutton` VALUES ('46992ea280ba4b72b29dedb0d4bc0106', '发邮件', 'email', '发送电子邮件');
INSERT INTO `sys_fhbutton` VALUES ('4efa162fce8340f0bd2dcd3b11d327ec', '导入EXCEL', 'FromExcel', '导入EXCEL到系统用户');
INSERT INTO `sys_fhbutton` VALUES ('cc51b694d5344d28a9aa13c84b7166cd', '发短信', 'sms', '发送短信');
INSERT INTO `sys_fhbutton` VALUES ('da7fd386de0b49ce809984f5919022b8', '站内信', 'FHSMS', '发送站内信');

-- ----------------------------
-- Table structure for sys_fhsms
-- ----------------------------
DROP TABLE IF EXISTS `sys_fhsms`;
CREATE TABLE `sys_fhsms` (
  `FHSMS_ID` varchar(100) NOT NULL,
  `CONTENT` varchar(1000) DEFAULT NULL COMMENT '内容',
  `TYPE` varchar(5) DEFAULT NULL COMMENT '类型',
  `TO_USERNAME` varchar(255) DEFAULT NULL COMMENT '收信人',
  `FROM_USERNAME` varchar(255) DEFAULT NULL COMMENT '发信人',
  `SEND_TIME` varchar(100) DEFAULT NULL COMMENT '发信时间',
  `STATUS` varchar(5) DEFAULT NULL COMMENT '状态',
  `SANME_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`FHSMS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_fhsms
-- ----------------------------
INSERT INTO `sys_fhsms` VALUES ('05879f5868824f35932ee9f2062adc03', '你好', '2', 'admin', 'san', '2016-01-25 14:05:31', '1', 'b311e893228f42d5a05dbe16917fd16f');
INSERT INTO `sys_fhsms` VALUES ('2635dd035c6f4bb5a091abdd784bd899', '你好', '2', 'san', 'admin', '2016-01-25 14:05:02', '2', '1b7637306683460f89174c2b025862b5');
INSERT INTO `sys_fhsms` VALUES ('52378ccd4e2d4fe08994d1652af87c68', '你好', '1', 'admin', 'san', '2016-01-25 16:26:44', '1', '920b20dafdfb4c09b560884eb277c51d');
INSERT INTO `sys_fhsms` VALUES ('77ed13f9c49a4c4bb460c41b8580dd36', 'gggg', '2', 'admin', 'san', '2016-01-24 21:22:43', '2', 'dd9ee339576e48c5b046b94fa1901d00');
INSERT INTO `sys_fhsms` VALUES ('98a6869f942042a1a037d9d9f01cb50f', '你好', '1', 'admin', 'san', '2016-01-25 14:05:02', '2', '1b7637306683460f89174c2b025862b5');
INSERT INTO `sys_fhsms` VALUES ('9e00295529014b6e8a27019cbccb3da1', '柔柔弱弱', '1', 'admin', 'san', '2016-01-24 21:22:57', '1', 'a29603d613ea4e54b5678033c1bf70a6');
INSERT INTO `sys_fhsms` VALUES ('d3aedeb430f640359bff86cd657a8f59', '你好', '1', 'admin', 'san', '2016-01-24 21:22:12', '1', 'f022fbdce3d845aba927edb698beb90b');
INSERT INTO `sys_fhsms` VALUES ('e5376b1bd54b489cb7f2203632bd74ec', '管理员好', '2', 'admin', 'san', '2016-01-25 14:06:13', '2', 'b347b2034faf43c79b54be4627f3bd2b');
INSERT INTO `sys_fhsms` VALUES ('e613ac0fcc454f32895a70b747bf4fb5', '你也好', '2', 'admin', 'san', '2016-01-25 16:27:54', '2', 'ce8dc3b15afb40f28090f8b8e13f078d');
INSERT INTO `sys_fhsms` VALUES ('f25e00cfafe741a3a05e3839b66dc7aa', '你好', '2', 'san', 'admin', '2016-01-25 16:26:44', '1', '920b20dafdfb4c09b560884eb277c51d');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` varchar(100) DEFAULT NULL,
  `MENU_ICON` varchar(60) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  `MENU_STATE` int(1) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '#', '0', '1', 'menu-icon fa fa-desktop blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('2', '权限管理', '#', '1', '1', 'menu-icon fa fa-lock black', '1', '1');
INSERT INTO `sys_menu` VALUES ('8', '性能监控', 'druid/index.html', '9', '8', 'menu-icon fa fa-tachometer red', '1', '1');
INSERT INTO `sys_menu` VALUES ('9', '系统工具', '#', '0', '3', 'menu-icon fa fa-cog black', '2', '1');
INSERT INTO `sys_menu` VALUES ('20', '在线管理', 'onlinemanager/list.do', '1', '5', 'menu-icon fa fa-laptop green', '1', '1');
INSERT INTO `sys_menu` VALUES ('22', '一级菜单', '#', '0', '10', 'menu-icon fa fa-fire orange', '2', '0');
INSERT INTO `sys_menu` VALUES ('23', '二级菜单', '#', '22', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('24', '三级菜单', '#', '23', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('36', '角色(基础权限)', 'role.do', '2', '1', 'menu-icon fa fa-key orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('37', '按钮权限', 'buttonrights/list.do', '2', '2', 'menu-icon fa fa-key green', '1', '1');
INSERT INTO `sys_menu` VALUES ('38', '菜单管理', 'menu/listAllMenu.do', '1', '3', 'menu-icon fa fa-folder-open-o brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('39', '按钮管理', 'fhbutton/list.do', '1', '2', 'menu-icon fa fa-download orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('40', '用户管理', '#', '0', '2', 'menu-icon fa fa-users blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('41', '系统用户', 'user/listUsers.do', '40', '1', 'menu-icon fa fa-users green', '1', '1');
INSERT INTO `sys_menu` VALUES ('42', '会员管理', 'happuser/listUsers.do', '40', '2', 'menu-icon fa fa-users orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('43', '数据字典', 'dictionaries/listAllDict.do?DICTIONARIES_ID=0', '1', '4', 'menu-icon fa fa-book purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('54', '数据库管理', '#', '0', '9', 'menu-icon fa fa-hdd-o blue', '2', '0');
INSERT INTO `sys_menu` VALUES ('55', '数据库备份', 'brdb/listAllTable.do', '54', '1', 'menu-icon fa fa-cloud-upload blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('56', '数据库还原', 'brdb/list.do', '54', '3', 'menu-icon fa fa-cloud-download blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('57', '备份定时器', 'timingbackup/list.do', '54', '2', 'menu-icon fa fa-tachometer blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('58', 'SQL编辑器', 'sqledit/view.do', '54', '4', 'menu-icon fa fa-pencil-square-o blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('59', 'OA办公', '#', '0', '6', 'menu-icon fa fa-laptop pink', '2', '0');
INSERT INTO `sys_menu` VALUES ('60', '组织机构', 'department/listAllDepartment.do?DEPARTMENT_ID=0', '59', '1', 'menu-icon fa fa-users green', '1', '1');
INSERT INTO `sys_menu` VALUES ('61', '前台页面管理', '#', '0', '2', 'menu-icon fa fa-leaf black', '2', '1');
INSERT INTO `sys_menu` VALUES ('62', '馆局介绍管理', '#', '61', '1', 'menu-icon fa fa-leaf black', '1', '0');
INSERT INTO `sys_menu` VALUES ('63', '店铺管理', 'stopmanage/list.do', '61', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('64', '留言管理', 'message/list.do', '61', '3', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('65', '档案动态管理', 'documenttrends/list.do', '61', '4', 'menu-icon fa fa-leaf black', '1', '0');
INSERT INTO `sys_menu` VALUES ('66', '业务指导管理', '#', '61', '5', 'menu-icon fa fa-leaf black', '1', '0');
INSERT INTO `sys_menu` VALUES ('67', '利用中心管理', 'supportcenter/list.do', '61', '6', 'menu-icon fa fa-leaf black', '1', '0');
INSERT INTO `sys_menu` VALUES ('68', '网上展厅管理', '#', '61', '7', 'menu-icon fa fa-leaf black', '1', '0');
INSERT INTO `sys_menu` VALUES ('69', '联系我们管理', '#', '61', '8', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('70', '站内推荐管理', 'insiderecommended/list.do', '61', '9', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('71', '介绍文档', 'documentintro/list.do', '62', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('72', '介绍图集', 'photoalbum/list.do', '62', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('75', '业务培训', 'businesstraining/list.do', '66', '3', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('76', '联系方式', 'connection/list.do', '69', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('77', '在线报名', '#', '66', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('78', '可报名课程', 'course/list.do', '77', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('79', '业务指南', 'businessmanual/list.do', '66', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('80', '留言管理', 'message/list.do', '69', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('82', '专题内容', 'exhibition/list.do', '68', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('83', '专题管理', 'subject/list.do', '68', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('84', '报名记录', 'signup/list.do', '77', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('85', '活动公告管理', 'activitymanage/list.do', '61', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('86', '商品管理', 'goods/list.do', '61', '3', 'menu-icon fa fa-leaf black', '1', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理组', '152296319054549183129191174', '0', '1', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('115b386ff04f4352b060dffcd2b5d1da', '中级会员', '498', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('1b67fc82ce89457a8347ae53e43a347e', '初级会员', '498', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('2', '会员组', '498', '0', '0', '0', '0', '1');
INSERT INTO `sys_role` VALUES ('3264c8e83d0248bb9e3ea6195b4c0216', '一级管理员', '152296319054549183129191174', '1', '2244102192095174', '2251798773489606', '1125898866646982', '560135202614009798');
INSERT INTO `sys_role` VALUES ('46294b31a71c4600801724a6eb06bb26', '职位组', '', '0', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('5466347ac07044cb8d82990ec7f3a90e', '主管', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('68f8e4a39efe47c7bb869e9d15ab925d', '二级管理员', '152296319054549183129191174', '1', '0', '0', '2251798773489606', '0');
INSERT INTO `sys_role` VALUES ('856849f422774ad390a4e564054d8cc8', '经理', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('8b70a7e67f2841e7aaba8a4d92e5ff6f', '高级会员', '498', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('c21cecf84048434b93383182b1d98cba', '组长', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('d449195cd8e7491080688c58e11452eb', '总监', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('de9de2f006e145a29d52dfadda295353', '三级管理员', '152296319054549183129191174', '1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for sys_role_fhbutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_fhbutton`;
CREATE TABLE `sys_role_fhbutton` (
  `RB_ID` varchar(100) NOT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `BUTTON_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RB_ID`),
  KEY `角色表外键` (`ROLE_ID`) USING BTREE,
  KEY `fbutton` (`BUTTON_ID`),
  CONSTRAINT `fbutton` FOREIGN KEY (`BUTTON_ID`) REFERENCES `sys_fhbutton` (`FHBUTTON_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `frole` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`ROLE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_fhbutton
-- ----------------------------
INSERT INTO `sys_role_fhbutton` VALUES ('14b5c28ea6ae4508b57d2d272ab3d5f1', '3264c8e83d0248bb9e3ea6195b4c0216', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('1743733f366240c693c4295b527d1b0e', 'de9de2f006e145a29d52dfadda295353', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('3768e60edd1c4b5c9f1dd861188ae2f9', '3264c8e83d0248bb9e3ea6195b4c0216', 'cc51b694d5344d28a9aa13c84b7166cd');
INSERT INTO `sys_role_fhbutton` VALUES ('8231c216fb514b4188e4162e629c6237', '3264c8e83d0248bb9e3ea6195b4c0216', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('9412d1d05162464c83658c7f89ab03f0', '68f8e4a39efe47c7bb869e9d15ab925d', '3542adfbda73410c976e185ffe50ad06');
INSERT INTO `sys_role_fhbutton` VALUES ('96567633dd3548c9b75d28f430adf5a3', '3264c8e83d0248bb9e3ea6195b4c0216', 'da7fd386de0b49ce809984f5919022b8');
INSERT INTO `sys_role_fhbutton` VALUES ('a1478f27c852459fa9cad04b642f4fb7', 'de9de2f006e145a29d52dfadda295353', '3542adfbda73410c976e185ffe50ad06');
INSERT INTO `sys_role_fhbutton` VALUES ('ba6696b8761044618e44c7e02c9ba89e', '68f8e4a39efe47c7bb869e9d15ab925d', 'cc51b694d5344d28a9aa13c84b7166cd');
INSERT INTO `sys_role_fhbutton` VALUES ('f0329033d0914faf8ea6e9ff252cc5e6', '68f8e4a39efe47c7bb869e9d15ab925d', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('f627982cc9d4479dbc03af726dc6ac58', 'de9de2f006e145a29d52dfadda295353', 'cc51b694d5344d28a9aa13c84b7166cd');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `SKIN` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL,
  `PIC` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 'FH', '1133671055321055258374707980945218933803269864762743594642571294', '1', '2016-12-08 08:52:51', '127.0.0.1', '0', 'admin', 'default', 'QQ313596790@main.com', '001', '18788888888', null);
INSERT INTO `sys_user` VALUES ('69177258a06e4927b4639ab1684c3320', 'san', '47c4a8dc64ac2f0bb46bbd8813b037c9718f9349', '三', '', '3264c8e83d0248bb9e3ea6195b4c0216', '2016-04-07 21:14:09', '127.0.0.1', '0', '111', 'default', '978336446@qq.com', '333', '13562202556', null);
INSERT INTO `sys_user` VALUES ('9991f4d7782a4ccfb8a65bd96ea7aafa', 'lisi', '2612ade71c1e48cd7150b5f4df152faa699cedfe', '李四', '', '3264c8e83d0248bb9e3ea6195b4c0216', '2016-03-21 17:41:57', '127.0.0.1', '0', '小李', 'default', '313596790@qq.com', '1102', '13566233663', null);
INSERT INTO `sys_user` VALUES ('e29149962e944589bb7da23ad18ddeed', 'zhangsan', 'c2da1419caf053885c492e10ebde421581cdc03f', '张三', '', '3264c8e83d0248bb9e3ea6195b4c0216', '', '', '0', '小张', 'default', 'zhangsan@www.com', '1101', '2147483647', null);
