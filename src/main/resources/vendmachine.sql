/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : vendmachine

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-10-09 01:26:26
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `code_catalog`
-- ----------------------------
DROP TABLE IF EXISTS `code_catalog`;
CREATE TABLE `code_catalog` (
  `CODENO` varchar(50) NOT NULL COMMENT '类别编号',
  `CODENAME` varchar(50) DEFAULT NULL COMMENT '类别名称',
  `CODEDESCRIBE` varchar(50) DEFAULT NULL COMMENT '类别描述',
  `ITEMNOLENGTH` int(11) DEFAULT NULL COMMENT '编码长度',
  `KIND` varchar(50) DEFAULT NULL COMMENT '种类',
  `PARENTCODENO` varchar(50) DEFAULT NULL COMMENT '上级编码',
  PRIMARY KEY (`CODENO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code_catalog
-- ----------------------------
INSERT INTO code_catalog VALUES ('ACCOUNTTYPE', '账户操作类型4325', '农户的账户操作类型', null, null, null);
INSERT INTO code_catalog VALUES ('ADSCREEN', '广告屏幕样式', '广告的屏幕样式', null, null, null);
INSERT INTO code_catalog VALUES ('ADTYPE', '广告类型', '广告类型', null, null, null);
INSERT INTO code_catalog VALUES ('CLEANSTATUS', '是否自动清洗', '是否自动清洗', null, null, null);
INSERT INTO code_catalog VALUES ('COUPONAREA', '优惠活动地区', '优惠活动的地区设置', null, null, null);
INSERT INTO code_catalog VALUES ('COUPONTYPE', '优惠活动类型', '优惠活动类型', null, null, null);
INSERT INTO code_catalog VALUES ('CUPSTATUS', '储杯情况', '储杯情况', null, null, null);
INSERT INTO code_catalog VALUES ('HEATSTATUS', '加热状态', '加热状态', null, null, null);
INSERT INTO code_catalog VALUES ('ORDERTYPE', '订单的类型', '订单的类型', null, null, null);
INSERT INTO code_catalog VALUES ('QRCODETYPE', '二维码类型', '二维码类型', null, null, null);
INSERT INTO code_catalog VALUES ('UPFILETYPE', '文件类型', '上传的文件类型', null, null, null);
INSERT INTO code_catalog VALUES ('UPPICTYPE', '图片类型', '上传的图片类型', null, null, null);
INSERT INTO code_catalog VALUES ('UPVIDEOTYPE', '视频类型', '上传的视频类型', null, null, null);
INSERT INTO code_catalog VALUES ('USESTATUS', '机器状态', '机器的状态', null, null, null);
INSERT INTO code_catalog VALUES ('WATERSTATUS', '储水情况', '储水情况', null, null, null);
INSERT INTO code_catalog VALUES ('WECHATPUBNO', '微信公众号信息', '微信公众号信息', null, null, null);

-- ----------------------------
-- Table structure for `code_library`
-- ----------------------------
DROP TABLE IF EXISTS `code_library`;
CREATE TABLE `code_library` (
  `id` varchar(32) NOT NULL,
  `codeno` varchar(32) DEFAULT NULL COMMENT '类别代码',
  `itemno` varchar(11) DEFAULT NULL COMMENT '序号',
  `itemname` varchar(200) DEFAULT NULL COMMENT '分类名字',
  `addtime` datetime DEFAULT NULL,
  `extend2` varchar(120) DEFAULT NULL,
  `extend3` varchar(120) DEFAULT NULL,
  `extend4` varchar(120) DEFAULT NULL,
  `extend1` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code_library
-- ----------------------------
INSERT INTO code_library VALUES ('06d1e53f7ccf4a7297465e8efca02101', 'UPFILETYPE', '5', 'xlsx', '2017-08-28 10:28:31', null, null, null, null);
INSERT INTO code_library VALUES ('0779e016cc324a2b8315427c12c70503', 'ADSCREEN', '9', '风格9', '2017-09-04 14:25:13', null, null, null, '上面二维码和机器码，下面视频');
INSERT INTO code_library VALUES ('0a2822b21a934ea7816ad097642fbd8e', 'COUPONAREA', '7', 'zhumadian', '2017-09-11 17:20:26', null, null, null, '驻马店');
INSERT INTO code_library VALUES ('13971e88639248f4a1d00bcd488740ef', 'USESTATUS', '3', '待审核', '2017-09-05 16:15:02', null, null, null, '机器待审核');
INSERT INTO code_library VALUES ('1544158fd2d1487ab321dd73efa2ccc4', 'COUPONAREA', '2', 'xuchang', '2017-09-11 17:16:18', null, null, null, '许昌');
INSERT INTO code_library VALUES ('16a5f9620529489892f8ac87cf8d94aa', 'UPPICTYPE', '2', 'JPG', '2017-08-28 10:22:21', null, null, null, null);
INSERT INTO code_library VALUES ('1c6920ae56354383b607aad8532f3002', 'QRCODETYPE', '2', '小程序二维码', '2017-08-28 15:19:43', null, null, null, null);
INSERT INTO code_library VALUES ('1e48d87e4c6b4af4abbc454e36ddbfaa', 'HEATSTATUS', '3', '加热完成', '2017-09-05 15:51:48', null, null, null, '');
INSERT INTO code_library VALUES ('20b702be56834dc2a8861b166ac2a884', 'ACCOUNTTYPE', '3', '购买', '2017-08-29 14:01:20', null, null, null, null);
INSERT INTO code_library VALUES ('241d8e3c7b724ffaacb4d92eb8b627b2', 'CUPSTATUS', '2', '无杯', '2017-09-05 15:51:04', null, null, null, '');
INSERT INTO code_library VALUES ('24fdaea96ed240b2bf2b41931e1d8a18', 'UPFILETYPE', '8', 'docx', '2017-08-28 10:29:11', null, null, null, null);
INSERT INTO code_library VALUES ('25e1d3cf4e514a8c94458b38df3e7a56', 'UPFILETYPE', '1', 'txt', '2017-08-28 10:26:31', null, null, null, null);
INSERT INTO code_library VALUES ('2e612f5a29ca4c0d9e8784bae5cf445d', 'UPPICTYPE', '3', 'BMP', '2017-08-28 10:23:30', null, null, null, null);
INSERT INTO code_library VALUES ('306c9f59a93f4fab925d7a3f65bd05f8', 'ADSCREEN', '5', '风格5', '2017-09-04 14:21:32', null, null, null, '上面图片，中间视频，下面二维码和机器码');
INSERT INTO code_library VALUES ('310b77bae3854805913cc71e5eae00da', 'UPVIDEOTYPE', '6', 'RMVB', '2017-08-28 10:31:10', null, null, null, null);
INSERT INTO code_library VALUES ('31bf5f7385674f0493dc1d83c9a67aaf', 'CUPSTATUS', '1', '有杯', '2017-09-05 15:50:55', null, null, null, '');
INSERT INTO code_library VALUES ('372cc3a779834463a9773ba844c60fd7', 'ADSCREEN', '4', '风格4', '2017-09-04 14:14:36', null, null, null, '上面机器码和二维码，中间图片，下面视频');
INSERT INTO code_library VALUES ('3e7cddd7636a40b7929634d5d7eecb7b', 'UPFILETYPE', '2', 'pdf', '2017-08-28 10:26:38', null, null, null, null);
INSERT INTO code_library VALUES ('417a14adf8e44b6eb1482a74eda56579', 'UPVIDEOTYPE', '4', 'MKV', '2017-08-28 10:30:40', null, null, null, null);
INSERT INTO code_library VALUES ('41e629947d73400f9a0aa271ddc94a5d', 'WATERSTATUS', '2', '无水', '2017-09-05 15:35:12', null, null, null, '无水');
INSERT INTO code_library VALUES ('48d9f64bc2344d28b10a6cd7000fc69b', 'ADSCREEN', '10', '风格10', '2017-09-04 14:24:52', null, null, null, '上面视频，下面二维码和机器码');
INSERT INTO code_library VALUES ('496e0906dc894027bd5d504ea548c615', 'UPPICTYPE', '4', 'PNG', '2017-08-28 10:23:38', null, null, null, null);
INSERT INTO code_library VALUES ('4a79f1a48fb54d5b8730e7a5fda16860', 'UPVIDEOTYPE', '5', 'FLV', '2017-08-28 10:30:57', null, null, null, null);
INSERT INTO code_library VALUES ('500e15976e0e429990a612adde08150a', 'UPFILETYPE', '7', 'zip', '2017-08-28 10:29:01', null, null, null, null);
INSERT INTO code_library VALUES ('506fc5e34620452fb2e6ae7d0d84bb14', 'COUPONTYPE', '2', '活动', '2017-09-10 16:14:47', null, null, null, '');
INSERT INTO code_library VALUES ('58793f71315e4f76b30705578cfe55c2', 'CLEANSTATUS', '1', '自动清洗', '2017-09-05 15:52:37', null, null, null, '');
INSERT INTO code_library VALUES ('58883f88c5fc46159e805396a6bbd964', 'ADTYPE', '3', '视频广告', '2017-08-25 11:31:01', null, null, null, null);
INSERT INTO code_library VALUES ('6081dc2c17a64173916003506e6f7f1e', 'ADSCREEN', '2', '风格2', '2017-09-04 14:08:34', null, null, null, '上面视频，中间图片，下面二维码和机器码');
INSERT INTO code_library VALUES ('63335262275847249428310d2f31a951', 'WATERSTATUS', '1', '有水', '2017-09-05 15:35:01', null, null, null, '有水');
INSERT INTO code_library VALUES ('6465e72de1de446baa8c3d22bba63df6', 'COUPONAREA', '8', 'shangqiu', '2017-09-16 10:18:56', null, null, null, '商丘');
INSERT INTO code_library VALUES ('687d27951d50426b9e6b00a95a53e21d', 'ADSCREEN', '7', '风格7', '2017-09-04 14:23:10', null, null, null, '上面图片，下面二维码和机器码');
INSERT INTO code_library VALUES ('74017c8f29d74ca3923ddd30cf72d086', 'USESTATUS', '2', '未启用', '2017-09-04 20:20:25', null, null, null, '机器关机');
INSERT INTO code_library VALUES ('74fe8bb8ff5543a5b65ed7c7f2970df7', 'ADSCREEN', '3', '风格3', '2017-09-04 14:13:59', null, null, null, '上面机器码和二维码，中间视频，下面图片');
INSERT INTO code_library VALUES ('7d2a9fffba54435281931903c3c29f6f', 'UPVIDEOTYPE', '3', '3GP', '2017-08-28 10:30:29', null, null, null, null);
INSERT INTO code_library VALUES ('7ebc0bd02fc44e3fb71a84dd797133f0', 'QRCODETYPE', '1', '商户二维码', '2017-08-28 15:19:34', null, null, null, null);
INSERT INTO code_library VALUES ('919eb58bde734131b1bc7f8b6607a6fe', 'HEATSTATUS', '1', '未加热', '2017-09-05 15:51:28', null, null, null, '');
INSERT INTO code_library VALUES ('920ee5c12aa24151b6f8573ace909d5d', 'ADTYPE', '1', '文字广告', '2017-08-25 11:30:37', null, null, null, null);
INSERT INTO code_library VALUES ('971be2d525484f6cb12a54fd232dbce8', 'ACCOUNTTYPE', '1', '充值', '2017-08-29 14:00:54', null, null, null, null);
INSERT INTO code_library VALUES ('99f6924f5a684541809b58e38181538c', 'UPVIDEOTYPE', '2', 'WMV', '2017-08-28 10:30:20', null, null, null, null);
INSERT INTO code_library VALUES ('a0efb4fdf23545dda7e9466f0f258981', 'UPPICTYPE', '1', 'JPEG', '2017-08-28 10:22:13', null, null, null, null);
INSERT INTO code_library VALUES ('a77ca80193d7479bbad84fba2109e241', 'UPVIDEOTYPE', '7', 'MP4', '2017-08-28 10:31:58', null, null, null, null);
INSERT INTO code_library VALUES ('a93d8afbdd274de3ba3c17d680a71468', 'ADSCREEN', '6', '风格6', '2017-09-04 14:22:08', null, null, null, '上面图片，中间二维码和机器码，下面视频');
INSERT INTO code_library VALUES ('ad59d3f3739743ceb88cb97e6f44a1f0', 'COUPONAREA', '1', 'zhengzhou', '2017-09-11 17:16:08', null, null, null, '郑州');
INSERT INTO code_library VALUES ('b2567b141f464cb0a3e0a58b97686b68', 'COUPONAREA', '4', 'luoyang', '2017-09-11 17:19:39', null, null, null, '洛阳');
INSERT INTO code_library VALUES ('b5ec7f65025a475a928c34731131af3b', 'UPFILETYPE', '6', 'rar', '2017-08-28 10:28:43', null, null, null, null);
INSERT INTO code_library VALUES ('bb1de1fd6b044c2b8c34a7817b7df215', 'UPPICTYPE', '5', 'GIF', '2017-08-28 10:23:58', null, null, null, null);
INSERT INTO code_library VALUES ('bd6ee3a9cb7c4710a9f58ab4e087abb0', 'ADSCREEN', '1', '风格1', '2017-09-04 14:08:18', null, null, null, '上面视频，中间二维码和机器码，下面图片');
INSERT INTO code_library VALUES ('c5a70c591f82445b9ad1954c84ed7e42', 'COUPONAREA', '3', 'kaifeng', '2017-09-11 17:16:43', null, null, null, '开封');
INSERT INTO code_library VALUES ('c93936ca5c474f64a5315c3e0290dc27', 'COUPONAREA', '6', 'luohe', '2017-09-11 17:20:09', null, null, null, '漯河');
INSERT INTO code_library VALUES ('caf868e9bac046239cfd8a02dbb84f66', 'HEATSTATUS', '2', '加热中', '2017-09-05 15:51:38', null, null, null, '');
INSERT INTO code_library VALUES ('cfd726aa3f944dddaf2e7ac16916ae4b', 'ACCOUNTTYPE', '2', '提现', '2017-08-29 14:01:04', null, null, null, null);
INSERT INTO code_library VALUES ('d2bea9a04ca247ae84e0bafcadccf67b', 'ADSCREEN', '8', '风格8', '2017-09-04 14:23:31', null, null, null, '上面二维码和机器码，下面图片');
INSERT INTO code_library VALUES ('d506876ed6584ac5ae86ff48c37b4a34', 'WECHATPUBNO', 'dyancheng', 'wxcf691127925c056b', '2017-09-29 10:56:56', null, null, null, '172485d2efdff5b1662e643ce361b636');
INSERT INTO code_library VALUES ('d506876ed6584ac5ae86ff48c37b4aab', 'USESTATUS', '1', '启用', '2017-09-04 20:20:15', null, null, null, '机器正在使用');
INSERT INTO code_library VALUES ('de379d2f392945ad9756dca39b3349d3', 'UPFILETYPE', '3', 'doc', '2017-08-28 10:26:49', null, null, null, null);
INSERT INTO code_library VALUES ('e33ab7b219de4629b6976ea930917f87', 'ADTYPE', '2', '图片广告', '2017-08-25 11:30:51', null, null, null, null);
INSERT INTO code_library VALUES ('e57f1d63a95544e0a1da2b196e38b4bc', 'UPVIDEOTYPE', '1', 'AVI', '2017-08-28 10:29:38', null, null, null, null);
INSERT INTO code_library VALUES ('f4805ab0197b42f291084b969fee27a2', 'ORDERTYPE', '1', '购买', '2017-09-07 16:29:52', null, null, null, null);
INSERT INTO code_library VALUES ('f4805ab0197b42f291084b969fee27a4', 'ORDERTYPE', '2', '充值', '2017-09-07 16:30:54', null, null, null, null);
INSERT INTO code_library VALUES ('f4805ab0197b42f291084b969fee27a9', 'UPFILETYPE', '4', 'xls', '2017-08-28 10:28:15', null, null, null, null);
INSERT INTO code_library VALUES ('f6374a3a452447cfbca0c5eb39580661', 'COUPONAREA', '5', 'jiaozuo', '2017-09-11 17:19:53', null, null, null, '焦作');
INSERT INTO code_library VALUES ('f68cb7a8039146e482360bd72570e8d1', 'CLEANSTATUS', '2', '不自动清洗', '2017-09-05 15:52:44', null, null, null, '');
INSERT INTO code_library VALUES ('f9b0655bac654642a2ecadb6040126d6', 'COUPONTYPE', '1', '优惠券', '2017-09-10 16:14:29', null, null, null, '');

-- ----------------------------
-- Table structure for `menuitem`
-- ----------------------------
DROP TABLE IF EXISTS `menuitem`;
CREATE TABLE `menuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `parent_id` int(11) DEFAULT NULL COMMENT '父菜单ID',
  `menu_name` varchar(200) DEFAULT NULL COMMENT '菜单名',
  `uri` varchar(100) DEFAULT NULL COMMENT '访问地址',
  `icon` varchar(32) DEFAULT NULL COMMENT '菜单图标',
  `valid` varchar(2) DEFAULT NULL COMMENT '有效标志（0无效，1有效）',
  `create_time` datetime DEFAULT NULL,
  `updata_time` datetime DEFAULT NULL,
  `extend1` varchar(200) DEFAULT NULL,
  `extend2` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menuitem
-- ----------------------------
INSERT INTO menuitem VALUES ('1', '0', '根目录', '-', '-', null, null, null, null, null);
INSERT INTO menuitem VALUES ('2', '1', '数据统计', 'welcome', 'icon-home', null, '2017-08-25 15:47:30', '2017-08-25 15:47:33', '1', null);
INSERT INTO menuitem VALUES ('3', '1', '商品管理', '-', 'icon-briefcase', null, '2017-08-25 15:04:08', '2017-08-25 15:04:08', '4', null);
INSERT INTO menuitem VALUES ('4', '3', '商品列表', 'goods/goodss', '-', null, '2017-08-25 15:19:53', '2017-08-25 15:19:53', null, null);
INSERT INTO menuitem VALUES ('5', '1', '广告投放', '-', 'icon-volume-up', null, '2017-08-25 15:20:53', '2017-08-25 15:20:53', '7', null);
INSERT INTO menuitem VALUES ('6', '5', '广告列表', 'ad/ads', '-', null, '2017-08-25 15:21:23', '2017-08-25 15:21:23', null, null);
INSERT INTO menuitem VALUES ('7', '1', '菜单管理', '-', 'icon-align-justify', null, '2017-08-25 15:21:49', '2017-08-25 15:21:49', null, null);
INSERT INTO menuitem VALUES ('8', '7', '菜单列表', 'menuitem/menuitems', '-', null, '2017-08-25 15:22:09', '2017-08-25 15:22:09', null, null);
INSERT INTO menuitem VALUES ('9', '1', '角色权限管理', '-', 'icon-user', null, '2017-08-25 15:22:42', '2017-08-25 15:22:42', '2', null);
INSERT INTO menuitem VALUES ('10', '9', '用户管理', 'user/users', '-', null, '2017-08-25 15:23:15', '2017-08-25 15:23:15', null, null);
INSERT INTO menuitem VALUES ('11', '9', '角色管理', 'role/roles', '-', null, '2017-08-25 15:50:38', '2017-08-25 15:50:38', null, null);
INSERT INTO menuitem VALUES ('12', '9', '权限设置', 'permission/permissions', '-', null, '2017-08-25 15:51:27', '2017-08-25 15:51:27', null, null);
INSERT INTO menuitem VALUES ('13', '1', '订单管理', '-', 'icon-file-alt', null, '2017-08-25 15:52:01', '2017-08-25 15:52:01', '9', null);
INSERT INTO menuitem VALUES ('14', '13', '订单列表', 'order/orders', '-', null, '2017-08-25 15:52:21', '2017-08-25 15:52:21', null, null);
INSERT INTO menuitem VALUES ('15', '1', '分类管理', '-', 'icon-th', null, '2017-08-25 15:52:44', '2017-08-25 15:52:44', null, null);
INSERT INTO menuitem VALUES ('16', '15', '参数列表', 'codeCatalog/codeCatalogs', '-', null, '2017-08-25 15:53:07', '2017-08-25 15:53:07', null, null);
INSERT INTO menuitem VALUES ('17', '1', '优惠活动管理', '-', 'icon-strikethrough', null, '2017-08-26 17:04:46', '2017-08-26 17:04:46', '5', null);
INSERT INTO menuitem VALUES ('18', '17', '优惠券列表', 'coupon/coupons', '-', null, '2017-08-26 17:05:26', '2017-08-26 17:05:26', null, null);
INSERT INTO menuitem VALUES ('19', '1', '二维码管理', '-', 'icon-qrcode', null, '2017-08-28 14:25:03', '2017-08-28 14:25:03', '6', null);
INSERT INTO menuitem VALUES ('20', '19', '二维码列表', 'qrcode/qrcodes', '-', null, '2017-08-28 14:25:32', '2017-08-28 14:25:32', null, null);
INSERT INTO menuitem VALUES ('21', '19', '二维码关注列表', 'qrcodeAtt/qrcodeAtts', '-', null, '2017-08-28 17:04:00', '2017-08-28 17:04:00', null, null);
INSERT INTO menuitem VALUES ('22', '1', '用户账户管理', '-', 'icon-credit-card', null, '2017-08-29 10:44:19', '2017-08-29 10:44:19', '3', null);
INSERT INTO menuitem VALUES ('23', '22', '账户列表', 'account/accounts', '-', null, '2017-08-29 10:44:44', '2017-08-29 10:44:44', null, null);
INSERT INTO menuitem VALUES ('24', '22', '账户操作纪录', 'accountdetail/accountdetails', '-', null, '2017-08-29 14:00:05', '2017-08-29 14:00:05', null, null);
INSERT INTO menuitem VALUES ('25', '5', '广告屏样式', 'codeLibrary/adscreen', '-', null, '2017-09-04 11:44:28', '2017-09-04 11:44:28', null, null);
INSERT INTO menuitem VALUES ('26', '1', '机器管理', '-', 'icon-coffee', null, '2017-09-04 19:29:50', '2017-09-04 19:29:50', '8', null);
INSERT INTO menuitem VALUES ('27', '26', '机器列表', 'machine/machines', '-', null, '2017-09-04 19:30:18', '2017-09-04 19:30:18', null, null);
INSERT INTO menuitem VALUES ('28', '22', '用户提现申请', 'accountdetail/draw', '-', null, '2017-09-09 09:15:42', '2017-09-09 09:15:42', null, null);
INSERT INTO menuitem VALUES ('30', '1', '系统参数管理', '--', 'icon-cog', null, '2017-09-15 17:47:17', '2017-09-15 17:47:17', null, null);
INSERT INTO menuitem VALUES ('31', '30', '系统参数列表', 'para/paras', '-', null, '2017-09-15 17:47:43', '2017-09-15 17:47:43', null, null);
INSERT INTO menuitem VALUES ('32', '17', '优惠地区设置', 'codeLibrary/areaset', '-', null, '2017-09-16 09:36:43', '2017-09-16 09:36:43', null, null);
INSERT INTO menuitem VALUES ('34', '26', '分机销售统计', 'machine/sales', '-', null, '2017-09-24 08:58:02', '2017-09-24 08:58:02', null, null);
INSERT INTO menuitem VALUES ('35', '26', '生成机器ID', 'machine/togenerateId', '-', null, '2017-09-24 13:41:11', '2017-09-24 13:41:11', null, null);
INSERT INTO menuitem VALUES ('36', '17', '充值优惠活动', 'coupon/chargecoupons', '-', null, '2017-10-08 10:05:42', '2017-10-08 10:05:42', null, null);

-- ----------------------------
-- Table structure for `user_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `user_coupon`;
CREATE TABLE `user_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usercode` varchar(50) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `extend1` varchar(100) DEFAULT NULL,
  `extend2` varchar(100) DEFAULT NULL,
  `extend3` varchar(100) DEFAULT NULL,
  `extend4` varchar(100) DEFAULT NULL,
  `extend5` varchar(200) DEFAULT NULL,
  `extend6` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_coupon
-- ----------------------------
INSERT INTO user_coupon VALUES ('1', 'VM2017083115230747', '1', '2017-09-13 15:55:07', '1', '2017-09-12', '2017-10-15', '2', '优惠券', '用户首次注册会获得的优惠券');
INSERT INTO user_coupon VALUES ('2', 'VM2017083115230747', '2', '2017-09-13 15:56:18', '1', '2017-09-10', '2017-10-15', '4.5', '活动优惠券', '活动优惠券,在活动期间该活动适用地区的用户都会自动获得一张该优惠券');
INSERT INTO user_coupon VALUES ('3', 'VM2017092216353547', '1', '2017-09-22 16:35:35', null, null, null, null, null, null);
INSERT INTO user_coupon VALUES ('4', 'VM2017092418041683', '1', '2017-09-24 18:04:16', null, null, null, null, null, null);
INSERT INTO user_coupon VALUES ('5', 'VM2017092917014772', '1', '2017-09-29 17:01:47', null, null, null, null, null, null);
INSERT INTO user_coupon VALUES ('6', 'VM2017093010392578', '1', '2017-09-30 10:39:25', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `vend_account`
-- ----------------------------
DROP TABLE IF EXISTS `vend_account`;
CREATE TABLE `vend_account` (
  `usercode` varchar(50) NOT NULL COMMENT '用户code',
  `own_amount` decimal(11,2) DEFAULT NULL COMMENT '账户余额',
  `moneyencrypt` varchar(100) DEFAULT NULL COMMENT '资金加密串',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `extend1` varchar(100) DEFAULT NULL,
  `extend2` varchar(100) DEFAULT NULL,
  `extend3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`usercode`),
  UNIQUE KEY `idx_usercode` (`usercode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户资金账户信息表';

-- ----------------------------
-- Records of vend_account
-- ----------------------------
INSERT INTO vend_account VALUES ('VM000', '0.00', '51fe78b0a1d09990', '2017-09-10 14:08:36', '2017-09-10 14:08:39', null, null, null);
INSERT INTO vend_account VALUES ('VM001', '0.00', '51fe78b0a1d09990', '2017-09-07 20:18:06', '2017-09-07 20:18:09', null, null, null);
INSERT INTO vend_account VALUES ('VM2017083115230747', '34.00', '99372b283e74495df5e27848373fcad8155a94bc0847dcec', '2017-08-31 15:23:07', '2017-09-13 17:56:21', null, null, null);
INSERT INTO vend_account VALUES ('VM2017091210521279', '0.00', '4ad237b7c7a066d7', '2017-09-12 10:52:12', '2017-09-12 10:52:12', null, null, null);
INSERT INTO vend_account VALUES ('VM2017091211292506', '0.00', '4ad237b7c7a066d7', '2017-09-12 11:29:25', '2017-09-12 11:29:25', null, null, null);
INSERT INTO vend_account VALUES ('VM2017092216353547', '0.00', '4ad237b7c7a066d7', '2017-09-22 16:35:35', '2017-09-22 16:35:35', null, null, null);
INSERT INTO vend_account VALUES ('VM2017092418041683', '0.00', '4ad237b7c7a066d7', '2017-09-24 18:04:16', '2017-09-24 18:04:16', null, null, null);
INSERT INTO vend_account VALUES ('VM2017092917014772', '0.00', '4ad237b7c7a066d7', '2017-09-29 17:01:47', '2017-09-29 17:01:47', null, null, null);
INSERT INTO vend_account VALUES ('VM2017093010392578', '0.00', '4ad237b7c7a066d7', '2017-09-30 10:39:25', '2017-09-30 10:39:25', null, null, null);

-- ----------------------------
-- Table structure for `vend_accountdetail`
-- ----------------------------
DROP TABLE IF EXISTS `vend_accountdetail`;
CREATE TABLE `vend_accountdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usercode` varchar(50) DEFAULT NULL COMMENT '用户code',
  `type` varchar(10) DEFAULT NULL COMMENT '1,充值。2，提现。3,购买',
  `amount` decimal(11,2) DEFAULT NULL COMMENT '充值或提现金额',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `extend1` varchar(100) DEFAULT NULL,
  `extend2` varchar(100) DEFAULT NULL,
  `extend3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='消费用户的充值提现记录表';

-- ----------------------------
-- Records of vend_accountdetail
-- ----------------------------
INSERT INTO vend_accountdetail VALUES ('1', 'VM2017083115230747', '1', '0.01', '2017-09-08 18:44:49', null, null, null);
INSERT INTO vend_accountdetail VALUES ('2', 'VM2017083115230747', '1', '0.01', '2017-09-08 18:44:53', null, null, null);
INSERT INTO vend_accountdetail VALUES ('3', 'VM2017083115230747', '1', '0.01', '2017-09-08 18:45:48', null, null, null);
INSERT INTO vend_accountdetail VALUES ('4', 'VM2017083115230747', '2', '0.01', '2017-09-09 09:02:03', '已同意提现', null, null);
INSERT INTO vend_accountdetail VALUES ('5', 'VM2017083115230747', '3', '5.00', '2017-09-09 11:34:18', null, null, null);
INSERT INTO vend_accountdetail VALUES ('6', 'VM2017083115230747', '3', '5.00', '2017-09-09 11:37:39', null, null, null);
INSERT INTO vend_accountdetail VALUES ('7', 'VM2017083115230747', '3', '1.00', '2017-09-09 11:41:34', null, null, null);
INSERT INTO vend_accountdetail VALUES ('8', 'VM2017083115230747', '3', '1.00', '2017-09-09 11:42:57', null, null, null);
INSERT INTO vend_accountdetail VALUES ('9', 'VM2017083115230747', '3', '3.00', '2017-09-13 17:54:56', null, null, null);
INSERT INTO vend_accountdetail VALUES ('10', 'VM2017083115230747', '3', '1.00', '2017-09-13 17:56:21', null, null, null);
INSERT INTO vend_accountdetail VALUES ('11', 'VM2017083115230747', '2', '2.00', '2017-09-23 10:55:35', null, null, null);

-- ----------------------------
-- Table structure for `vend_ad`
-- ----------------------------
DROP TABLE IF EXISTS `vend_ad`;
CREATE TABLE `vend_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(100) DEFAULT NULL COMMENT '广告名字',
  `pic_interval` int(11) DEFAULT NULL COMMENT '图片轮播时间间隔',
  `pic1` varchar(200) DEFAULT NULL COMMENT '图片1地址',
  `pic2` varchar(200) DEFAULT NULL COMMENT '图片2地址',
  `pic3` varchar(200) DEFAULT NULL COMMENT '图片3地址',
  `pic4` varchar(200) DEFAULT NULL COMMENT '图片4地址',
  `pic5` varchar(200) DEFAULT NULL COMMENT '图片5地址',
  `pic6` varchar(200) DEFAULT NULL COMMENT '图片6地址',
  `video` varchar(255) DEFAULT NULL COMMENT '视频地址',
  `height` varchar(100) DEFAULT NULL COMMENT '高度设置',
  `width` varchar(100) DEFAULT NULL COMMENT '宽度设置',
  `start_time` datetime DEFAULT NULL COMMENT '有效期开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '有效期结束时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `extend1` varchar(100) DEFAULT NULL,
  `extend2` varchar(100) DEFAULT NULL,
  `extend3` varchar(100) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL COMMENT '广告类型',
  `machine_id` varchar(100) DEFAULT NULL,
  `usercode` varchar(100) DEFAULT NULL,
  `ismachineuse` varchar(10) DEFAULT NULL,
  `extend4` varchar(100) DEFAULT NULL,
  `extend5` varchar(100) DEFAULT NULL,
  `extend6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Records of vend_ad
-- ----------------------------
INSERT INTO vend_ad VALUES ('1', '广告2', '3', '/userfiles/pic/201709281027237670.jpg', '/userfiles/pic/201709281027272161.gif', '', '', '', '', '/userfiles/video/201709281027438810.mp4', '45', '45', '2017-09-28 10:27:07', '2017-09-28 10:27:07', '2017-09-04 14:57:56', '2017-09-04 14:57:56', '水电费', '4', null, null, null, null, null, null, null, null);
INSERT INTO vend_ad VALUES ('2', '广告1', '6', '/userfiles/pic/201709281029144688.jpg', '/userfiles/pic/201709281029173580.jpg', '', '', '', '', '/userfiles/video/201709281029000206.mp4', '67', '67', '2017-09-28 10:28:51', '2017-09-28 10:28:51', '2017-09-04 15:23:17', '2017-09-04 15:23:17', '电饭锅', '5', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `vend_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `vend_coupon`;
CREATE TABLE `vend_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(100) DEFAULT NULL COMMENT '优惠券名字',
  `coupon_info` varchar(600) DEFAULT NULL COMMENT '优惠券信息',
  `coupon_scale` decimal(11,2) DEFAULT NULL COMMENT '优惠金额',
  `goods_id` int(11) DEFAULT NULL COMMENT '对应商品id',
  `area_id` varchar(600) DEFAULT NULL COMMENT '投放区域',
  `start_time` datetime DEFAULT NULL COMMENT '有效期开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '有效期结束时间',
  `valid` varchar(10) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `extend1` varchar(100) DEFAULT NULL,
  `extend2` varchar(100) DEFAULT NULL,
  `extend3` varchar(100) DEFAULT NULL,
  `extend4` varchar(100) DEFAULT NULL,
  `extend5` varchar(100) DEFAULT NULL,
  `extend6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='优惠券表';

-- ----------------------------
-- Records of vend_coupon
-- ----------------------------
INSERT INTO vend_coupon VALUES ('1', '优惠券', '用户首次注册会获得的优惠券', '2.00', null, 'zhengzhou,xuchang,', '2017-10-07 00:00:00', '2017-10-07 00:00:00', '0', '2017-08-26 17:54:43', '2017-08-26 17:54:43', '1', '1', null, null, null, null);
INSERT INTO vend_coupon VALUES ('2', '活动优惠券', '活动优惠券,在活动期间该活动适用地区的用户都会自动获得一张该优惠券', '4.00', null, 'xuchang,', '2017-09-14 00:00:00', '2017-09-20 00:00:00', '1', '2017-09-13 10:07:55', '2017-09-13 10:07:55', '1', '1', null, null, null, null);
INSERT INTO vend_coupon VALUES ('4', '冲1送10', null, '1.00', null, null, '2017-10-08 00:00:00', '2017-10-08 00:00:00', '1', '2017-10-08 20:10:19', '2017-10-08 20:10:19', '3', null, '1', '10', null, null);
INSERT INTO vend_coupon VALUES ('5', '冲200送20', null, '1.00', null, null, '2017-10-08 00:00:00', '2017-10-08 00:00:00', '1', '2017-10-08 20:22:45', '2017-10-08 20:22:45', '3', null, '200', '20', null, null);

-- ----------------------------
-- Table structure for `vend_goods`
-- ----------------------------
DROP TABLE IF EXISTS `vend_goods`;
CREATE TABLE `vend_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(100) DEFAULT NULL COMMENT '商品名字',
  `pic` varchar(100) DEFAULT NULL COMMENT '图片',
  `price` decimal(11,2) DEFAULT NULL COMMENT '价格',
  `goods_info` varchar(600) DEFAULT NULL,
  `heat_chNo` int(2) DEFAULT NULL COMMENT '热饮通道号',
  `cold_chNo` int(2) DEFAULT NULL COMMENT '冷饮通道号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `pic1` varchar(100) DEFAULT NULL,
  `pic2` varchar(100) DEFAULT NULL,
  `pic3` varchar(100) DEFAULT NULL,
  `extend1` varchar(100) DEFAULT NULL,
  `extend2` varchar(100) DEFAULT NULL,
  `extend3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='商品信息表';

-- ----------------------------
-- Records of vend_goods
-- ----------------------------
INSERT INTO vend_goods VALUES ('23', '雪碧', '/userfiles/pic/201709301624567980.jpg', '5.00', '雪碧美国发展速度领先的主要非酒精饮料产品之一', '1', '17', '2017-08-22 14:29:50', '2017-08-22 14:29:50', null, null, null, null, null, null);
INSERT INTO vend_goods VALUES ('24', '芬达', '/userfiles/pic/201709301625567184.jpg', '1.00', '芬达汽水（Fanta）是1940年代在欧洲开始风行的饮料', '2', '18', '2017-08-22 14:31:22', '2017-08-22 14:31:22', null, null, null, null, null, null);
INSERT INTO vend_goods VALUES ('25', '王老吉', '/userfiles/pic/201709301625438636.jpg', '6.00', '王老吉是王老吉凉茶的品牌，创立于清道光年间（1828年），被公认为凉茶始祖', '3', '19', '2017-08-22 14:32:08', '2017-08-22 14:32:08', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `vend_machine`
-- ----------------------------
DROP TABLE IF EXISTS `vend_machine`;
CREATE TABLE `vend_machine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `machine_name` varchar(100) DEFAULT NULL COMMENT '机器名',
  `machine_id` varchar(10) DEFAULT NULL,
  `machine_code` varchar(100) DEFAULT NULL COMMENT '机器码',
  `usercode` varchar(32) DEFAULT NULL COMMENT '所属账号',
  `machine_type` varchar(32) DEFAULT NULL COMMENT '咖啡机型号',
  `use_status` varchar(11) DEFAULT NULL COMMENT '机器使用状态',
  `water_status` varchar(11) DEFAULT NULL COMMENT '放水情况',
  `cup_status` varchar(11) DEFAULT NULL COMMENT '储杯情况',
  `heat_status` varchar(11) DEFAULT NULL COMMENT '加热状态',
  `clean_status` varchar(11) DEFAULT NULL COMMENT '清洗状态',
  `client_qrcode` int(11) DEFAULT NULL COMMENT '客户端固定二维码',
  `shop_qrcode` int(11) DEFAULT NULL COMMENT '商户二维码',
  `ad_id` int(11) DEFAULT NULL COMMENT '所选广告',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `extend1` varchar(100) DEFAULT NULL,
  `extend2` varchar(100) DEFAULT NULL,
  `extend3` varchar(100) DEFAULT NULL,
  `extend4` varchar(100) DEFAULT NULL,
  `extend5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_machine_code` (`machine_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vend_machine
-- ----------------------------
INSERT INTO vend_machine VALUES ('3', '机器1', '1g8p5865c', '10000', 'VM2017092216353547', 'gyp206', '1', '0', null, '0', '0', null, null, null, '2017-09-22 17:09:05', '2017-09-22 17:09:05', null, null, null, null, null);

-- ----------------------------
-- Table structure for `vend_machine_int`
-- ----------------------------
DROP TABLE IF EXISTS `vend_machine_int`;
CREATE TABLE `vend_machine_int` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `belong_machine` int(19) DEFAULT NULL COMMENT '机器的id',
  `goods_id` int(19) DEFAULT NULL COMMENT '商品id',
  `goods_name` varchar(150) DEFAULT NULL COMMENT '商品名',
  `ware_name` varchar(150) DEFAULT NULL,
  `hot_status` varchar(10) DEFAULT NULL COMMENT '冷热状态，0冷，1热',
  `water_out_time` int(19) DEFAULT NULL COMMENT '出水时间',
  `grain_out_time` int(19) DEFAULT NULL COMMENT '出料时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `extend1` varchar(150) DEFAULT NULL,
  `extend2` varchar(150) DEFAULT NULL,
  `extend3` varchar(150) DEFAULT NULL,
  `extend4` varchar(150) DEFAULT NULL,
  `extend5` varchar(150) DEFAULT NULL,
  `extend6` varchar(150) DEFAULT NULL,
  `extend7` varchar(150) DEFAULT NULL,
  `extend8` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='机器初始化信息';

-- ----------------------------
-- Records of vend_machine_int
-- ----------------------------
INSERT INTO vend_machine_int VALUES ('1', '3', '23', '雪碧3455', '嘎嘎vg', '0', '22', '22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO vend_machine_int VALUES ('2', '3', '23', '雪碧3455', '', '1', '22', '22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO vend_machine_int VALUES ('3', '3', '24', '芬达', '', '0', '28', '22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO vend_machine_int VALUES ('4', '3', '24', '芬达', '', '1', '22', '22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO vend_machine_int VALUES ('5', '3', '25', '王老吉', '', '0', '25', '22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO vend_machine_int VALUES ('6', '3', '25', '王老吉', '', '1', '23', '22', null, null, null, null, null, null, null, null, null, null);
INSERT INTO vend_machine_int VALUES ('7', '4', '23', '雪碧', null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO vend_machine_int VALUES ('8', '4', '23', '雪碧', null, '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO vend_machine_int VALUES ('9', '4', '24', '芬达', null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO vend_machine_int VALUES ('10', '4', '24', '芬达', null, '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO vend_machine_int VALUES ('11', '4', '25', '王老吉', null, '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO vend_machine_int VALUES ('12', '4', '25', '王老吉', null, '1', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `vend_order`
-- ----------------------------
DROP TABLE IF EXISTS `vend_order`;
CREATE TABLE `vend_order` (
  `order_id` varchar(32) NOT NULL COMMENT '订单ID',
  `machine_code` varchar(32) DEFAULT NULL COMMENT '机器码',
  `usercode` varchar(50) DEFAULT NULL COMMENT '购买用户',
  `shopusercode` varchar(50) DEFAULT NULL COMMENT '商家代码',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `pay_type` varchar(50) DEFAULT NULL COMMENT '支付方式',
  `num` int(11) DEFAULT NULL COMMENT '购买数量',
  `amount` decimal(11,2) DEFAULT NULL COMMENT '订单金额',
  `free_status` varchar(11) DEFAULT NULL COMMENT '免费状态 0表示免费，1表示是不免费',
  `orderstate` varchar(50) DEFAULT NULL COMMENT '订单状态（1，已支付。2，未支付）',
  `create_time` datetime DEFAULT NULL COMMENT '订单创建时间',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `extend1` varchar(200) DEFAULT NULL COMMENT '订单类型',
  `extend2` varchar(200) DEFAULT NULL,
  `extend3` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品订单表';

-- ----------------------------
-- Records of vend_order
-- ----------------------------
INSERT INTO vend_order VALUES ('C1709071641412674', '1000', 'VM2017100616002855', '', '23', '微信支付', '1', '5.00', null, '0', '2017-09-20 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709071946115877', '1000', 'VM2017100616002855', '', '24', '微信支付', '1', '4.00', null, '0', '2017-09-20 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709071948072832', '1000', 'VM2017100616002855', '', '24', '微信支付', '1', '0.01', null, '0', '2017-09-19 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709071948555009', '1000', 'VM2017100616002855', '', '24', '微信支付', '1', '0.01', null, '0', '2017-09-19 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709071949376207', '1000', 'VM2017100616002855', '', '24', '微信支付', '1', '0.10', null, '0', '2017-09-18 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709071950086204', '1000', 'VM2017100616002855', '', '24', '微信支付', '1', '0.10', null, '0', '2017-09-18 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709071950146207', '1000', 'VM2017100616002855', '', '24', '微信支付', '1', '1.00', null, '0', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709071952033137', '1000', 'VM2017100616002855', '', '24', '微信支付', '1', '1.00', null, '0', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709081757254889', '1000', 'VM2017100616002855', '', '0', '微信充值', '1', '1.00', null, '0', '2017-09-21 16:41:43', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1709081802039280', '1000', 'VM2017100616002855', '', '0', '微信充值', '1', '0.10', null, '0', '2017-09-21 16:41:43', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1709081805040939', '1000', 'VM2017100616002855', '', '0', '微信充值', '1', '0.10', null, '0', '2017-09-21 16:41:43', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1709081806396288', '1000', 'VM2017100616002855', '', '0', '微信充值', '1', '0.10', null, '0', '2017-09-21 16:41:43', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1709081807152238', '1000', 'VM2017100616002855', '', '0', '微信充值', '1', '0.10', null, '0', '2017-09-21 16:41:43', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1709081809145216', '1000', 'VM2017100616002855', '', '0', '微信充值', '1', '0.01', null, '0', '2017-09-21 16:41:43', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1709081824056990', '1000', 'VM2017100616002855', '', '0', '微信充值', '1', '0.01', null, '0', '2017-09-21 16:41:43', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1709081831015475', '1000', 'VM2017100616002855', '', '0', '微信充值', '1', '0.01', null, '0', '2017-09-21 16:41:43', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1709081834566972', '1000', 'VM2017100616002855', '', '0', '微信充值', '1', '0.01', null, '0', '2017-09-21 16:41:43', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1709081839494463', '1000', 'VM2017100616002855', '', '0', '微信充值', '1', '0.01', null, '0', '2017-09-21 16:41:43', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1709081841299005', '1000', 'VM2017100616002855', '', '0', '微信充值', '1', '0.01', null, '0', '2017-09-21 16:41:43', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1709081842570155', '1000', 'VM2017100616002855', '', '0', '微信充值', '1', '0.01', null, '1', '2017-09-21 16:41:43', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1709081844143775', '1000', 'VM2017100616002855', '', '0', '微信充值', '1', '0.01', null, '1', '2017-09-21 16:41:43', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1709081845146512', '1000', 'VM2017100616002855', '', '0', '微信充值', '1', '0.01', null, '1', '2017-09-21 16:41:43', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1709081952080076', '1000', 'VM2017100616002855', '', '24', '微信支付', '1', '1.00', null, '0', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709091134174865', '1000', 'VM2017100616002855', '', '23', '余额支付', '1', '5.00', null, '1', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709091137195158', '1000', 'VM2017100616002855', '', '23', '微信支付', '1', '5.00', '1', '0', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709091137341418', '1000', 'VM2017100616002855', '', '23', '余额支付', '1', '5.00', '1', '1', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709091141349137', '1000', 'VM2017100616002855', '', '24', '余额支付', '1', '1.00', null, '1', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709091142429537', '1000', 'VM2017100616002855', '', '24', '余额支付', '1', '1.00', '1', '1', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709091522470055', '1000', 'VM2017100616002855', '', '0', '微信充值', '1', '1.00', '1', '0', '2017-09-21 16:41:43', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1709111424268971', '1000', 'VM2017100616002855', '', '24', '微信支付', '1', '1.00', '0', '0', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709111435251039', '1000', 'VM2017100616002855', '', '24', '微信支付', '1', '1.00', '0', '0', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709111438448272', '1000', 'VM2017100616002855', '', '24', '免费券支付', '1', '0.00', '1', '1', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709131746308168', '1000', 'VM2017100616002855', '', '23', '微信支付', '1', '3.00', '0', '0', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709131748359187', '1000', 'VM2017100616002855', '', '23', '微信支付', '1', '1.00', '0', '1', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709131752310981', '1000', 'VM2017100616002855', '', '23', '微信支付', '1', '1.00', '0', '1', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709131754405589', '1000', 'VM2017100616002855', '', '23', '余额支付', '1', '3.00', '0', '1', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709131756219480', '1000', 'VM2017100616002855', '', '24', '余额支付', '1', '1.00', '0', '1', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709140942363820', '1000', 'VM2017100616002855', '', '23', '微信支付', '1', '50.00', '0', '0', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709140944347870', '1000', 'VM2017100616002855', '', '23', '微信支付', '1', '0.50', '0', '1', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709140952225455', '1000', 'VM2017100616002855', '', '23', '微信支付', '1', '0.50', '0', '1', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709140955183822', '1000', 'VM2017100616002855', '', '23', '微信支付', '1', '0.50', '0', '1', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709160914087063', '1000', 'VM2017100616002855', '', '24', '微信支付', '1', '1.00', '0', '0', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709160914135951', '1000', 'VM2017100616002855', '', '24', '微信支付', '1', '1.00', '0', '0', '2017-09-21 16:41:43', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709301635531078', '10000', 'VM2017100616002855', 'VM2017092216353547', '24', '扫描二维码免费领取', '1', '0.00', '1', '1', '2017-09-30 16:35:53', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1709301646575245', '10000', 'VM2017100616002855', 'VM2017092216353547', '24', '扫描二维码免费领取', '1', '0.00', '1', '1', '2017-09-30 16:46:57', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1710031102280307', '10000', 'VM2017100616002855', 'VM2017092216353547', '24', '扫描二维码免费领取', '1', '0.00', '1', '1', '2017-10-03 11:02:28', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1710031103542250', '10000', 'VM2017100616002855', 'VM2017092216353547', '24', '扫描二维码免费领取', '1', '0.00', '1', '1', '2017-10-03 11:03:54', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1710070943472700', '10000', 'VM2017100616002855', 'VM2017092216353547', '24', '微信支付', '1', '1.00', '0', '0', '2017-10-07 09:43:47', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1710081725007879', '10000', 'VM2017100616002855', 'VM2017092216353547', '25', '微信支付', '1', '6.00', '0', '0', '2017-10-08 17:25:00', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1710081726329848', '10000', 'VM2017100616002855', 'VM2017092216353547', '25', '微信支付', '1', '6.00', '0', '0', '2017-10-08 17:26:31', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1710081743592080', '10000', 'VM2017100616002855', 'VM2017092216353547', '24', '微信支付', '1', '1.00', '0', '0', '2017-10-08 17:43:59', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1710082120419010', '', 'VM2017100616002855', '', '0', '微信充值', '1', '1.00', null, '0', '2017-10-08 21:20:41', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1710082121472504', '', 'VM2017100616002855', '', '0', '微信充值', '1', '1.00', null, '0', '2017-10-08 21:21:47', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1710082122071270', '', 'VM2017100616002855', '', '0', '微信充值', '1', '1.00', null, '0', '2017-10-08 21:22:07', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1710082122443029', '', 'VM2017100616002855', '', '0', '微信充值', '1', '0.10', null, '0', '2017-10-08 21:22:44', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1710082123483606', '', 'VM2017100616002855', '', '0', '微信充值', '1', '0.10', null, '0', '2017-10-08 21:23:48', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1710082125371132', '', 'VM2017100616002855', '', '0', '微信充值', '1', '0.10', null, '0', '2017-10-08 21:25:37', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1710082126214277', '', 'VM2017100616002855', '', '0', '微信充值', '1', '1.00', null, '0', '2017-10-08 21:26:21', null, '2', null, null);
INSERT INTO vend_order VALUES ('C1710082127133705', '10000', 'VM2017100616002855', 'VM2017092216353547', '23', '微信支付', '1', '5.00', '0', '0', '2017-10-08 21:27:13', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1710082127504050', '10000', 'VM2017100616002855', 'VM2017092216353547', '23', '微信支付', '1', '5.00', '0', '0', '2017-10-08 21:27:50', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1710082129125104', '10000', 'VM2017100616002855', 'VM2017092216353547', '23', '微信支付', '1', '5.00', '0', '0', '2017-10-08 21:29:12', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1710082129542288', '10000', 'VM2017100616002855', 'VM2017092216353547', '23', '微信支付', '1', '5.00', '0', '0', '2017-10-08 21:29:53', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1710082132147976', '10000', 'VM2017100616002855', 'VM2017092216353547', '23', '微信支付', '1', '5.00', '0', '0', '2017-10-08 21:32:14', null, '1', null, null);
INSERT INTO vend_order VALUES ('C1710082202158350', '10000', 'VM2017100616002855', 'VM2017092216353547', '23', '微信支付', '1', '5.00', '0', '0', '2017-10-08 22:02:15', null, '1', null, null);

-- ----------------------------
-- Table structure for `vend_para`
-- ----------------------------
DROP TABLE IF EXISTS `vend_para`;
CREATE TABLE `vend_para` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `para_code` varchar(50) DEFAULT NULL,
  `para_content` varchar(150) DEFAULT NULL,
  `extend1` varchar(150) DEFAULT NULL,
  `extend2` varchar(150) DEFAULT NULL,
  `extend3` varchar(150) DEFAULT NULL,
  `desprision` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vend_para
-- ----------------------------
INSERT INTO vend_para VALUES ('1', 'appid', 'wx61085e86760cb2ca', '', '', '', '微信公众号APPID');
INSERT INTO vend_para VALUES ('2', 'key', 'HNBBNdwl65990055zzy8891695585565', '', '', '', '微信支付公众号设置的key');
INSERT INTO vend_para VALUES ('3', 'mch_id', '1488575892', '', '', '', '微信支付商户号');
INSERT INTO vend_para VALUES ('4', 'appsecret', '0afc728dca13ffb5a840e667c38146f5', '', '', '', '微信小程序appSecret');
INSERT INTO vend_para VALUES ('5', 'coupon_price', '5', null, null, null, '优惠券最高价');
INSERT INTO vend_para VALUES ('6', 'basePath', 'http://www.vm.com/ROOT', null, null, null, '项目相对路径');
INSERT INTO vend_para VALUES ('7', 'absolutePath', 'F:\\workspace_tmms\\VendingMachine\\src\\main\\webapp', null, null, null, '项目绝对路径');
INSERT INTO vend_para VALUES ('8', 'access_token', null, null, null, null, '公众号的access_token');
INSERT INTO vend_para VALUES ('9', 'redirect_uri', 'https://zdypx.benbenniaokeji.com/mobile/getcode', null, null, null, '获取微信用户信息的微信回调地址');

-- ----------------------------
-- Table structure for `vend_permission`
-- ----------------------------
DROP TABLE IF EXISTS `vend_permission`;
CREATE TABLE `vend_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL COMMENT '父ID',
  `permission_name` varchar(200) DEFAULT NULL COMMENT '权限名字',
  `permission_description` varchar(200) DEFAULT NULL COMMENT '权限描述',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `extend1` varchar(200) DEFAULT NULL,
  `extend2` varchar(200) DEFAULT NULL,
  `extend3` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inx_permission_name` (`permission_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COMMENT='管理后台权限表\r\n\r\n\r\n';

-- ----------------------------
-- Records of vend_permission
-- ----------------------------
INSERT INTO vend_permission VALUES ('1', '0', 'root', '根目录', null, null, null, null, null);
INSERT INTO vend_permission VALUES ('12', '1', 'good', '商品', '2017-09-04 11:09:53', '2017-09-04 11:09:53', null, null, null);
INSERT INTO vend_permission VALUES ('13', '1', 'ad', '广告', '2017-09-04 11:10:13', '2017-09-04 11:10:13', null, null, null);
INSERT INTO vend_permission VALUES ('14', '1', 'menuitem', '菜单', '2017-09-04 11:10:27', '2017-09-04 11:10:27', null, null, null);
INSERT INTO vend_permission VALUES ('15', '1', 'permission', '权限', '2017-09-04 11:11:18', '2017-09-04 11:11:18', null, null, null);
INSERT INTO vend_permission VALUES ('16', '1', 'order', '订单', '2017-09-04 11:11:29', '2017-09-04 11:11:29', null, null, null);
INSERT INTO vend_permission VALUES ('17', '1', 'codeCatalog', '分类', '2017-09-04 11:11:59', '2017-09-04 11:11:59', null, null, null);
INSERT INTO vend_permission VALUES ('18', '1', 'coupon', '优惠券', '2017-09-04 11:12:14', '2017-09-04 11:12:14', null, null, null);
INSERT INTO vend_permission VALUES ('19', '1', 'qrcode', '二维码', '2017-09-04 11:12:23', '2017-09-04 11:12:23', null, null, null);
INSERT INTO vend_permission VALUES ('20', '1', 'account', '用户账户', '2017-09-04 11:12:37', '2017-09-04 11:12:37', null, null, null);
INSERT INTO vend_permission VALUES ('21', '12', 'goods:goodss', '商品列表', '2017-09-04 11:13:01', '2017-09-04 11:13:01', null, null, null);
INSERT INTO vend_permission VALUES ('22', '12', 'goods:add', '商品添加', '2017-09-04 11:13:11', '2017-09-04 11:13:11', null, null, null);
INSERT INTO vend_permission VALUES ('23', '12', 'goods:edit', '商品修改', '2017-09-04 11:13:19', '2017-09-04 11:13:19', null, null, null);
INSERT INTO vend_permission VALUES ('24', '12', 'good:dels', '商品批量删除', '2017-09-04 11:14:06', '2017-09-04 11:14:06', null, null, null);
INSERT INTO vend_permission VALUES ('25', '13', 'ad:ads', '广告列表', '2017-09-04 11:14:28', '2017-09-04 11:14:28', null, null, null);
INSERT INTO vend_permission VALUES ('26', '13', 'ad:add', '广告添加', '2017-09-04 11:14:40', '2017-09-04 11:14:40', null, null, null);
INSERT INTO vend_permission VALUES ('27', '13', 'ad:edit', '广告修改', '2017-09-04 11:14:50', '2017-09-04 11:14:50', null, null, null);
INSERT INTO vend_permission VALUES ('28', '13', 'ad:del', '广告删除', '2017-09-04 11:15:00', '2017-09-04 11:15:00', null, null, null);
INSERT INTO vend_permission VALUES ('29', '13', 'ad:dels', '广告批量删除', '2017-09-04 11:15:08', '2017-09-04 11:15:08', null, null, null);
INSERT INTO vend_permission VALUES ('30', '12', 'goods:del', '商品删除', '2017-09-04 11:15:33', '2017-09-04 11:15:33', null, null, null);
INSERT INTO vend_permission VALUES ('31', '14', 'menuitem:menuitems', '菜单列表', '2017-09-04 11:17:09', '2017-09-04 11:17:09', null, null, null);
INSERT INTO vend_permission VALUES ('32', '14', 'menuitem:add', '菜单添加', '2017-09-04 11:17:19', '2017-09-04 11:17:19', null, null, null);
INSERT INTO vend_permission VALUES ('33', '14', 'menuitem:edit', '菜单修改', '2017-09-04 11:17:31', '2017-09-04 11:17:31', null, null, null);
INSERT INTO vend_permission VALUES ('34', '14', 'menuitem:del', '菜单删除', '2017-09-04 11:17:44', '2017-09-04 11:17:44', null, null, null);
INSERT INTO vend_permission VALUES ('35', '14', 'menuitem:dels', '菜单批量删除', '2017-09-04 11:17:54', '2017-09-04 11:17:54', null, null, null);
INSERT INTO vend_permission VALUES ('36', '15', 'permission:permissions', '权限列表', '2017-09-04 11:18:13', '2017-09-04 11:18:13', null, null, null);
INSERT INTO vend_permission VALUES ('37', '15', 'permission:add', '权限添加', '2017-09-04 11:18:24', '2017-09-04 11:18:24', null, null, null);
INSERT INTO vend_permission VALUES ('38', '15', 'permission:edit', '权限修改', '2017-09-04 11:18:34', '2017-09-04 11:18:34', null, null, null);
INSERT INTO vend_permission VALUES ('39', '15', 'permission:del', '权限删除', '2017-09-04 11:18:44', '2017-09-04 11:18:44', null, null, null);
INSERT INTO vend_permission VALUES ('40', '15', 'permission:dels', '权限批量删除', '2017-09-04 11:19:08', '2017-09-04 11:19:08', null, null, null);
INSERT INTO vend_permission VALUES ('41', '16', 'order:orders', '订单列表', '2017-09-04 11:22:35', '2017-09-04 11:22:35', null, null, null);
INSERT INTO vend_permission VALUES ('42', '16', 'order:add', '订单添加', '2017-09-04 11:22:45', '2017-09-04 11:22:45', null, null, null);
INSERT INTO vend_permission VALUES ('43', '16', 'order:edit', '订单修改', '2017-09-04 11:22:54', '2017-09-04 11:22:54', null, null, null);
INSERT INTO vend_permission VALUES ('44', '16', 'order:del', '订单删除', '2017-09-04 11:23:13', '2017-09-04 11:23:13', null, null, null);
INSERT INTO vend_permission VALUES ('45', '16', 'order:dels', '订单批量删除', '2017-09-04 11:23:22', '2017-09-04 11:23:22', null, null, null);
INSERT INTO vend_permission VALUES ('46', '17', 'codeCatalog:codeCatalogs', '分类列表', '2017-09-04 11:23:44', '2017-09-04 11:23:44', null, null, null);
INSERT INTO vend_permission VALUES ('47', '17', 'codeCatalog:add', '分类添加', '2017-09-04 11:24:07', '2017-09-04 11:24:07', null, null, null);
INSERT INTO vend_permission VALUES ('48', '17', 'codeCatalog:edit', '分类修改', '2017-09-04 11:24:18', '2017-09-04 11:24:18', null, null, null);
INSERT INTO vend_permission VALUES ('49', '17', 'codeCatalog:del', '分类删除', '2017-09-04 11:24:29', '2017-09-04 11:24:29', null, null, null);
INSERT INTO vend_permission VALUES ('50', '17', 'codeCatalog:dels', '分类批量删除', '2017-09-04 11:24:39', '2017-09-04 11:24:39', null, null, null);
INSERT INTO vend_permission VALUES ('51', '18', 'coupon:coupons', '优惠券列表', '2017-09-04 11:25:12', '2017-09-04 11:25:12', null, null, null);
INSERT INTO vend_permission VALUES ('52', '18', 'coupon:add', '优惠券添加', '2017-09-04 11:25:21', '2017-09-04 11:25:21', null, null, null);
INSERT INTO vend_permission VALUES ('53', '18', 'coupon:edit', '优惠券修改', '2017-09-04 11:25:29', '2017-09-04 11:25:29', null, null, null);
INSERT INTO vend_permission VALUES ('54', '18', 'coupon:del', '优惠券删除', '2017-09-04 11:25:39', '2017-09-04 11:25:39', null, null, null);
INSERT INTO vend_permission VALUES ('55', '18', 'coupon:dels', '优惠券批量删除', '2017-09-04 11:25:50', '2017-09-04 11:25:50', null, null, null);
INSERT INTO vend_permission VALUES ('56', '19', 'qrcode:qrcodes', '二维码列表', '2017-09-04 11:26:12', '2017-09-04 11:26:12', null, null, null);
INSERT INTO vend_permission VALUES ('57', '19', 'qrcode:add', '二维码添加', '2017-09-04 11:26:20', '2017-09-04 11:26:20', null, null, null);
INSERT INTO vend_permission VALUES ('58', '19', 'qrcode:edit', '二维码修改', '2017-09-04 11:26:32', '2017-09-04 11:26:32', null, null, null);
INSERT INTO vend_permission VALUES ('59', '19', 'qrcode:del', '二维码删除', '2017-09-04 11:26:44', '2017-09-04 11:26:44', null, null, null);
INSERT INTO vend_permission VALUES ('60', '19', 'qrcode:dels', '二维码批量删除', '2017-09-04 11:26:51', '2017-09-04 11:26:51', null, null, null);
INSERT INTO vend_permission VALUES ('61', '20', 'account:accounts', '用户账户列表', '2017-09-04 11:27:17', '2017-09-04 11:27:17', null, null, null);
INSERT INTO vend_permission VALUES ('62', '20', 'account:add', '用户账户添加', '2017-09-04 11:27:28', '2017-09-04 11:27:28', null, null, null);
INSERT INTO vend_permission VALUES ('64', '20', 'account:del', '用户账户删除', '2017-09-04 11:27:48', '2017-09-04 11:27:48', null, null, null);
INSERT INTO vend_permission VALUES ('65', '20', 'account:dels', '用户账户批量删除', '2017-09-04 11:27:58', '2017-09-04 11:27:58', null, null, null);
INSERT INTO vend_permission VALUES ('66', '1', 'codeLibrary', '分类参数', '2017-09-04 13:38:27', '2017-09-04 13:38:29', null, null, null);
INSERT INTO vend_permission VALUES ('67', '66', 'codeLibrary:codeLibrarys', '分类参数列表', '2017-09-04 13:39:16', '2017-09-04 13:39:16', null, null, null);
INSERT INTO vend_permission VALUES ('68', '66', 'codeLibrary:add', '分类参数添加', '2017-09-04 13:39:25', '2017-09-04 13:39:25', null, null, null);
INSERT INTO vend_permission VALUES ('69', '66', 'codeLibrary:edit', '分类参数修改', '2017-09-04 13:39:33', '2017-09-04 13:39:33', null, null, null);
INSERT INTO vend_permission VALUES ('70', '66', 'codeLibrary:del', '分类参数删除', '2017-09-04 13:39:40', '2017-09-04 13:39:40', null, null, null);
INSERT INTO vend_permission VALUES ('71', '66', 'codeLibrary:dels', '分类参数批量删除', '2017-09-04 13:39:48', '2017-09-04 13:39:48', null, null, null);
INSERT INTO vend_permission VALUES ('72', '17', 'codeCatalogs:codelibrarylist', '某参数的分类情况查看', '2017-09-04 14:11:41', '2017-09-04 14:11:41', null, null, null);
INSERT INTO vend_permission VALUES ('73', '1', 'user', '用户', '2017-09-04 15:15:24', '2017-09-04 15:15:24', null, null, null);
INSERT INTO vend_permission VALUES ('74', '73', 'user:users', '用户列表', '2017-09-04 15:15:40', '2017-09-04 15:15:40', null, null, null);
INSERT INTO vend_permission VALUES ('75', '73', 'user:add', '用户添加', '2017-09-04 15:15:51', '2017-09-04 15:15:51', null, null, null);
INSERT INTO vend_permission VALUES ('76', '73', 'user:edit', '用户修改', '2017-09-04 15:16:02', '2017-09-04 15:16:02', null, null, null);
INSERT INTO vend_permission VALUES ('77', '73', 'user:del', '用户删除', '2017-09-04 15:16:14', '2017-09-04 15:16:14', null, null, null);
INSERT INTO vend_permission VALUES ('78', '73', 'user:dels', '用户批量删除', '2017-09-04 15:16:22', '2017-09-04 15:16:22', null, null, null);
INSERT INTO vend_permission VALUES ('79', '1', 'machine', '机器', '2017-09-04 19:31:31', '2017-09-04 19:31:31', null, null, null);
INSERT INTO vend_permission VALUES ('80', '79', 'machine:machines', '机器列表', '2017-09-04 19:31:47', '2017-09-04 19:31:47', null, null, null);
INSERT INTO vend_permission VALUES ('81', '79', 'machine:add', '机器添加', '2017-09-04 19:32:00', '2017-09-04 19:32:00', null, null, null);
INSERT INTO vend_permission VALUES ('82', '79', 'machine:edit', '机器修改', '2017-09-04 19:32:09', '2017-09-04 19:32:09', null, null, null);
INSERT INTO vend_permission VALUES ('83', '79', 'machine:dels', '机器批量删除', '2017-09-04 19:32:29', '2017-09-04 19:32:29', null, null, null);
INSERT INTO vend_permission VALUES ('84', '1', 'qrcodeattend', '二维码关注', '2017-09-10 11:37:36', '2017-09-10 11:37:36', null, null, null);
INSERT INTO vend_permission VALUES ('85', '84', 'qrcodeattend:edit', '二维码关注修改', '2017-09-10 11:38:27', '2017-09-10 11:38:27', null, null, null);
INSERT INTO vend_permission VALUES ('86', '84', 'qrcodeattend:del', '二维码关注删除', '2017-09-10 11:38:38', '2017-09-10 11:38:38', null, null, null);
INSERT INTO vend_permission VALUES ('87', '84', 'qrcodeattend:dels', '二维码关注批量删除', '2017-09-10 11:38:46', '2017-09-10 11:38:46', null, null, null);
INSERT INTO vend_permission VALUES ('88', '20', 'account:draw', '提现', '2017-09-10 11:48:25', '2017-09-10 11:48:25', null, null, null);
INSERT INTO vend_permission VALUES ('90', '84', 'qrcodeattend:qrcodeattends', '二维码关注列表', '2017-09-11 14:03:07', '2017-09-11 14:03:07', null, null, null);
INSERT INTO vend_permission VALUES ('91', '73', 'user:addpermission', '用户权限添加', '2017-09-12 14:16:25', '2017-09-12 14:16:25', null, null, null);
INSERT INTO vend_permission VALUES ('92', '1', '系统参数', '系统参数设置', '2017-09-15 17:48:41', '2017-09-15 17:48:41', null, null, null);
INSERT INTO vend_permission VALUES ('93', '92', 'para:paras', '系统参数列表', '2017-09-15 17:49:09', '2017-09-15 17:49:09', null, null, null);
INSERT INTO vend_permission VALUES ('94', '92', 'para:add', '系统参数添加', '2017-09-15 17:49:20', '2017-09-15 17:49:20', null, null, null);
INSERT INTO vend_permission VALUES ('95', '92', 'para:edit', '系统参数修改', '2017-09-15 17:49:31', '2017-09-15 17:49:31', null, null, null);
INSERT INTO vend_permission VALUES ('96', '92', 'para:del', '系统参数删除', '2017-09-15 17:49:46', '2017-09-15 17:49:46', null, null, null);
INSERT INTO vend_permission VALUES ('97', '1', 'login:log', '日志查看', '2017-09-22 20:34:27', '2017-09-22 20:34:27', null, null, null);
INSERT INTO vend_permission VALUES ('98', '79', 'qrcodeputon', '二维码投放', '2017-09-26 11:03:21', '2017-09-26 11:03:21', null, null, null);
INSERT INTO vend_permission VALUES ('99', '79', 'adputon', '广告投放', '2017-09-26 11:03:36', '2017-09-26 11:03:36', null, null, null);
INSERT INTO vend_permission VALUES ('100', '73', 'lrbl:show', '利润比例设置', '2017-09-27 10:52:44', '2017-09-27 10:52:44', null, null, null);
INSERT INTO vend_permission VALUES ('101', '18', 'coupon:chargecoupons', '充值活动列表', '2017-10-08 10:06:54', '2017-10-08 10:06:54', null, null, null);
INSERT INTO vend_permission VALUES ('102', '18', 'coupon:rechargeadd', '充值活动添加', '2017-10-08 10:07:29', '2017-10-08 10:07:29', null, null, null);
INSERT INTO vend_permission VALUES ('103', '18', 'coupon:rechargeedit', '修改充值活动', '2017-10-08 10:08:41', '2017-10-08 10:08:41', null, null, null);

-- ----------------------------
-- Table structure for `vend_qrcode_attend`
-- ----------------------------
DROP TABLE IF EXISTS `vend_qrcode_attend`;
CREATE TABLE `vend_qrcode_attend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL COMMENT '关注的二维码ID',
  `goods_name` varchar(100) DEFAULT NULL,
  `usercode` varchar(50) DEFAULT NULL COMMENT '关注二维码的用户',
  `attend_time` datetime DEFAULT NULL COMMENT '关注时间',
  `shusercode` varchar(100) DEFAULT NULL COMMENT '被关注人',
  `extend1` varchar(100) DEFAULT NULL,
  `extend2` varchar(100) DEFAULT NULL,
  `extend3` varchar(100) DEFAULT NULL,
  `extend4` varchar(100) DEFAULT NULL,
  `extend5` varchar(100) DEFAULT NULL,
  `extend6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='商家二维码关注情况表';

-- ----------------------------
-- Records of vend_qrcode_attend
-- ----------------------------
INSERT INTO vend_qrcode_attend VALUES ('1', null, null, 'VM2017083115230747', '2017-09-29 20:45:40', 'VM2017092216353547', null, null, null, null, null, null);
INSERT INTO vend_qrcode_attend VALUES ('2', null, null, 'VM2017083115230747', '2017-09-30 09:06:29', 'VM2017092216353547', null, null, null, null, null, null);
INSERT INTO vend_qrcode_attend VALUES ('3', null, null, 'VM2017083115230747', '2017-09-30 09:41:26', 'VM2017092216353547', null, null, null, null, null, null);
INSERT INTO vend_qrcode_attend VALUES ('4', null, null, 'VM2017083115230747', '2017-09-30 10:49:59', 'VM2017092216353547', null, null, null, null, null, null);
INSERT INTO vend_qrcode_attend VALUES ('5', null, null, 'VM2017083115230747', '2017-09-30 13:28:17', 'VM2017092216353547', null, null, null, null, null, null);
INSERT INTO vend_qrcode_attend VALUES ('6', null, null, 'VM2017083115230747', '2017-09-30 16:35:37', 'VM2017092216353547', null, null, null, null, null, null);
INSERT INTO vend_qrcode_attend VALUES ('7', null, null, 'VM2017083115230747', '2017-09-30 16:45:11', 'VM2017092216353547', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `vend_role`
-- ----------------------------
DROP TABLE IF EXISTS `vend_role`;
CREATE TABLE `vend_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `role_name` varchar(20) DEFAULT NULL COMMENT '角色名称',
  `role_description` varchar(1000) DEFAULT NULL COMMENT '角色描述',
  `create_time` datetime DEFAULT NULL COMMENT '表创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '表最后一次更新时间',
  `extend1` varchar(600) DEFAULT NULL,
  `extend2` varchar(600) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1' COMMENT '表示角色当前的状态，0表示冻结，1表示正常',
  `proportion` decimal(4,2) DEFAULT NULL COMMENT '付款比例',
  `extend3` varchar(600) DEFAULT NULL,
  `extend4` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='管理后台角色类型';

-- ----------------------------
-- Records of vend_role
-- ----------------------------
INSERT INTO vend_role VALUES ('1', '0', '开发者后台', '最高权限', '2017-08-24 13:33:16', '2017-08-24 13:33:19', ',1,2,3,4,5,6,25,7,8,9,10,11,12,13,14,15,16,17,18,32,36,19,20,21,22,23,24,28,26,27,34,35,30,31,', null, '1', null, null, null);
INSERT INTO vend_role VALUES ('2', '1', '总后台', '客户总权限用户', '2017-08-22 14:33:17', '2017-08-22 14:33:17', ',1,9,2,3,4,5,6,25,10,11,13,14,17,18,32,36,19,20,21,22,23,24,28,26,27,34,35,30,31,', '', '1', null, '', '');
INSERT INTO vend_role VALUES ('3', '2', '代理后台', '代理总后台管理一部分商户', '2017-08-22 14:33:44', '2017-08-22 14:33:44', ',1,17,22,26,2,3,4,5,6,25,9,10,11,13,14,18,19,20,21,23,24,27,34,', null, '1', null, null, null);
INSERT INTO vend_role VALUES ('4', '3', '商家', '普通商户', '2017-08-22 14:33:58', '2017-08-22 14:33:58', ',1,2,3,4,5,6,25,9,10,11,13,14,17,18,19,20,21,22,23,24,26,27,34,', null, '1', null, null, null);
INSERT INTO vend_role VALUES ('5', '4', '消费用户', '利用客户端购买商品的消费用户', '2017-08-22 14:34:25', '2017-08-22 14:34:25', null, null, '1', null, null, null);

-- ----------------------------
-- Table structure for `vend_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `vend_role_permission`;
CREATE TABLE `vend_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `permission_id` int(11) DEFAULT NULL COMMENT '权限ID',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `extend1` varchar(100) DEFAULT NULL,
  `extend2` varchar(100) DEFAULT NULL,
  `extend3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_role_permission` (`role_id`,`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=632 DEFAULT CHARSET=utf8 COMMENT='角色权限对照表';

-- ----------------------------
-- Records of vend_role_permission
-- ----------------------------
INSERT INTO vend_role_permission VALUES ('100', '1', '21', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('103', '1', '24', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('104', '1', '30', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('105', '1', '13', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('106', '1', '25', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('107', '1', '26', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('108', '1', '27', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('109', '1', '28', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('110', '1', '29', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('111', '1', '14', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('112', '1', '31', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('113', '1', '32', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('114', '1', '33', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('115', '1', '34', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('116', '1', '35', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('129', '1', '17', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('130', '1', '46', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('131', '1', '47', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('132', '1', '48', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('133', '1', '49', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('134', '1', '50', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('137', '1', '52', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('138', '1', '53', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('139', '1', '54', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('140', '1', '55', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('141', '1', '19', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('142', '1', '56', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('143', '1', '57', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('144', '1', '58', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('145', '1', '59', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('146', '1', '60', '2017-09-04 11:34:09', '2017-09-04 11:34:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('153', '1', '66', '2017-09-04 13:40:07', '2017-09-04 13:40:07', null, null, null);
INSERT INTO vend_role_permission VALUES ('154', '1', '67', '2017-09-04 13:40:07', '2017-09-04 13:40:07', null, null, null);
INSERT INTO vend_role_permission VALUES ('155', '1', '68', '2017-09-04 13:40:07', '2017-09-04 13:40:07', null, null, null);
INSERT INTO vend_role_permission VALUES ('156', '1', '69', '2017-09-04 13:40:07', '2017-09-04 13:40:07', null, null, null);
INSERT INTO vend_role_permission VALUES ('157', '1', '70', '2017-09-04 13:40:07', '2017-09-04 13:40:07', null, null, null);
INSERT INTO vend_role_permission VALUES ('158', '1', '71', '2017-09-04 13:40:07', '2017-09-04 13:40:07', null, null, null);
INSERT INTO vend_role_permission VALUES ('159', '1', '72', '2017-09-04 14:12:02', '2017-09-04 14:12:02', null, null, null);
INSERT INTO vend_role_permission VALUES ('160', '1', '73', '2017-09-04 15:16:36', '2017-09-04 15:16:36', null, null, null);
INSERT INTO vend_role_permission VALUES ('161', '1', '74', '2017-09-04 15:16:36', '2017-09-04 15:16:36', null, null, null);
INSERT INTO vend_role_permission VALUES ('162', '1', '75', '2017-09-04 15:16:36', '2017-09-04 15:16:36', null, null, null);
INSERT INTO vend_role_permission VALUES ('163', '1', '76', '2017-09-04 15:16:36', '2017-09-04 15:16:36', null, null, null);
INSERT INTO vend_role_permission VALUES ('164', '1', '77', '2017-09-04 15:16:36', '2017-09-04 15:16:36', null, null, null);
INSERT INTO vend_role_permission VALUES ('165', '1', '78', '2017-09-04 15:16:36', '2017-09-04 15:16:36', null, null, null);
INSERT INTO vend_role_permission VALUES ('166', '1', '79', '2017-09-04 19:32:41', '2017-09-04 19:32:41', null, null, null);
INSERT INTO vend_role_permission VALUES ('167', '1', '80', '2017-09-04 19:32:41', '2017-09-04 19:32:41', null, null, null);
INSERT INTO vend_role_permission VALUES ('168', '1', '81', '2017-09-04 19:32:41', '2017-09-04 19:32:41', null, null, null);
INSERT INTO vend_role_permission VALUES ('169', '1', '82', '2017-09-04 19:32:41', '2017-09-04 19:32:41', null, null, null);
INSERT INTO vend_role_permission VALUES ('170', '1', '83', '2017-09-04 19:32:41', '2017-09-04 19:32:41', null, null, null);
INSERT INTO vend_role_permission VALUES ('303', '2', '16', '2017-09-05 13:43:01', '2017-09-05 13:43:01', null, null, null);
INSERT INTO vend_role_permission VALUES ('309', '1', '18', '2017-09-08 14:27:02', '2017-09-08 14:27:02', null, null, null);
INSERT INTO vend_role_permission VALUES ('310', '1', '51', '2017-09-08 14:27:02', '2017-09-08 14:27:02', null, null, null);
INSERT INTO vend_role_permission VALUES ('312', '1', '15', '2017-09-08 16:09:23', '2017-09-08 16:09:23', null, null, null);
INSERT INTO vend_role_permission VALUES ('313', '1', '36', '2017-09-08 16:09:23', '2017-09-08 16:09:23', null, null, null);
INSERT INTO vend_role_permission VALUES ('314', '1', '37', '2017-09-08 16:09:23', '2017-09-08 16:09:23', null, null, null);
INSERT INTO vend_role_permission VALUES ('315', '1', '38', '2017-09-08 16:09:23', '2017-09-08 16:09:23', null, null, null);
INSERT INTO vend_role_permission VALUES ('316', '1', '39', '2017-09-08 16:09:23', '2017-09-08 16:09:23', null, null, null);
INSERT INTO vend_role_permission VALUES ('317', '1', '40', '2017-09-08 16:09:23', '2017-09-08 16:09:23', null, null, null);
INSERT INTO vend_role_permission VALUES ('318', '1', '16', '2017-09-08 16:09:23', '2017-09-08 16:09:23', null, null, null);
INSERT INTO vend_role_permission VALUES ('319', '1', '41', '2017-09-08 16:09:23', '2017-09-08 16:09:23', null, null, null);
INSERT INTO vend_role_permission VALUES ('320', '1', '42', '2017-09-08 16:09:23', '2017-09-08 16:09:23', null, null, null);
INSERT INTO vend_role_permission VALUES ('321', '1', '43', '2017-09-08 16:09:23', '2017-09-08 16:09:23', null, null, null);
INSERT INTO vend_role_permission VALUES ('322', '1', '44', '2017-09-08 16:09:23', '2017-09-08 16:09:23', null, null, null);
INSERT INTO vend_role_permission VALUES ('323', '1', '45', '2017-09-08 16:09:23', '2017-09-08 16:09:23', null, null, null);
INSERT INTO vend_role_permission VALUES ('324', '1', '84', '2017-09-10 11:49:48', '2017-09-10 11:49:48', null, null, null);
INSERT INTO vend_role_permission VALUES ('325', '1', '85', '2017-09-10 11:49:48', '2017-09-10 11:49:48', null, null, null);
INSERT INTO vend_role_permission VALUES ('326', '1', '86', '2017-09-10 11:49:48', '2017-09-10 11:49:48', null, null, null);
INSERT INTO vend_role_permission VALUES ('327', '1', '87', '2017-09-10 11:49:48', '2017-09-10 11:49:48', null, null, null);
INSERT INTO vend_role_permission VALUES ('329', '1', '20', '2017-09-10 11:52:00', '2017-09-10 11:52:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('330', '1', '61', '2017-09-10 11:52:00', '2017-09-10 11:52:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('335', '1', '88', '2017-09-10 11:52:00', '2017-09-10 11:52:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('336', '2', '12', '2017-09-10 11:52:40', '2017-09-10 11:52:40', null, null, null);
INSERT INTO vend_role_permission VALUES ('342', '2', '13', '2017-09-10 11:52:40', '2017-09-10 11:52:40', null, null, null);
INSERT INTO vend_role_permission VALUES ('348', '2', '19', '2017-09-10 11:52:40', '2017-09-10 11:52:40', null, null, null);
INSERT INTO vend_role_permission VALUES ('349', '2', '73', '2017-09-10 11:52:40', '2017-09-10 11:52:40', null, null, null);
INSERT INTO vend_role_permission VALUES ('351', '2', '18', '2017-09-10 11:52:40', '2017-09-10 11:52:40', null, null, null);
INSERT INTO vend_role_permission VALUES ('352', '2', '84', '2017-09-10 11:52:40', '2017-09-10 11:52:40', null, null, null);
INSERT INTO vend_role_permission VALUES ('353', '2', '20', '2017-09-10 11:52:40', '2017-09-10 11:52:40', null, null, null);
INSERT INTO vend_role_permission VALUES ('364', '2', '61', '2017-09-10 11:53:04', '2017-09-10 11:53:04', null, null, null);
INSERT INTO vend_role_permission VALUES ('378', '2', '79', '2017-09-10 14:05:09', '2017-09-10 14:05:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('383', '1', '1', '2017-09-10 16:05:30', '2017-09-10 16:05:30', null, null, null);
INSERT INTO vend_role_permission VALUES ('384', '1', '12', '2017-09-10 16:05:30', '2017-09-10 16:05:30', null, null, null);
INSERT INTO vend_role_permission VALUES ('386', '1', '23', '2017-09-10 16:05:30', '2017-09-10 16:05:30', null, null, null);
INSERT INTO vend_role_permission VALUES ('397', '3', '61', '2017-09-11 14:01:20', '2017-09-11 14:01:20', null, null, null);
INSERT INTO vend_role_permission VALUES ('398', '3', '88', '2017-09-11 14:01:20', '2017-09-11 14:01:20', null, null, null);
INSERT INTO vend_role_permission VALUES ('399', '3', '73', '2017-09-11 14:01:20', '2017-09-11 14:01:20', null, null, null);
INSERT INTO vend_role_permission VALUES ('405', '3', '79', '2017-09-11 14:01:20', '2017-09-11 14:01:20', null, null, null);
INSERT INTO vend_role_permission VALUES ('410', '1', '90', '2017-09-11 15:28:15', '2017-09-11 15:28:15', null, null, null);
INSERT INTO vend_role_permission VALUES ('411', '3', '12', '2017-09-11 16:03:08', '2017-09-11 16:03:08', null, null, null);
INSERT INTO vend_role_permission VALUES ('412', '3', '13', '2017-09-11 16:03:08', '2017-09-11 16:03:08', null, null, null);
INSERT INTO vend_role_permission VALUES ('413', '3', '16', '2017-09-11 16:03:08', '2017-09-11 16:03:08', null, null, null);
INSERT INTO vend_role_permission VALUES ('414', '3', '18', '2017-09-11 16:03:08', '2017-09-11 16:03:08', null, null, null);
INSERT INTO vend_role_permission VALUES ('415', '3', '19', '2017-09-11 16:03:08', '2017-09-11 16:03:08', null, null, null);
INSERT INTO vend_role_permission VALUES ('416', '3', '20', '2017-09-11 16:03:08', '2017-09-11 16:03:08', null, null, null);
INSERT INTO vend_role_permission VALUES ('417', '4', '12', '2017-09-11 16:06:31', '2017-09-11 16:06:31', null, null, null);
INSERT INTO vend_role_permission VALUES ('419', '4', '13', '2017-09-11 16:06:31', '2017-09-11 16:06:31', null, null, null);
INSERT INTO vend_role_permission VALUES ('420', '4', '16', '2017-09-11 16:06:31', '2017-09-11 16:06:31', null, null, null);
INSERT INTO vend_role_permission VALUES ('421', '4', '18', '2017-09-11 16:06:31', '2017-09-11 16:06:31', null, null, null);
INSERT INTO vend_role_permission VALUES ('422', '4', '19', '2017-09-11 16:06:31', '2017-09-11 16:06:31', null, null, null);
INSERT INTO vend_role_permission VALUES ('423', '4', '20', '2017-09-11 16:06:31', '2017-09-11 16:06:31', null, null, null);
INSERT INTO vend_role_permission VALUES ('424', '4', '61', '2017-09-11 16:06:31', '2017-09-11 16:06:31', null, null, null);
INSERT INTO vend_role_permission VALUES ('425', '4', '88', '2017-09-11 16:06:31', '2017-09-11 16:06:31', null, null, null);
INSERT INTO vend_role_permission VALUES ('426', '4', '73', '2017-09-11 16:06:31', '2017-09-11 16:06:31', null, null, null);
INSERT INTO vend_role_permission VALUES ('432', '4', '79', '2017-09-11 16:06:31', '2017-09-11 16:06:31', null, null, null);
INSERT INTO vend_role_permission VALUES ('433', '4', '80', '2017-09-11 16:06:31', '2017-09-11 16:06:31', null, null, null);
INSERT INTO vend_role_permission VALUES ('434', '4', '81', '2017-09-11 16:06:31', '2017-09-11 16:06:31', null, null, null);
INSERT INTO vend_role_permission VALUES ('435', '4', '82', '2017-09-11 16:06:31', '2017-09-11 16:06:31', null, null, null);
INSERT INTO vend_role_permission VALUES ('436', '4', '83', '2017-09-11 16:06:31', '2017-09-11 16:06:31', null, null, null);
INSERT INTO vend_role_permission VALUES ('444', '4', '56', '2017-09-11 16:08:00', '2017-09-11 16:08:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('445', '4', '57', '2017-09-11 16:08:00', '2017-09-11 16:08:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('446', '1', '91', '2017-09-12 14:16:40', '2017-09-12 14:16:40', null, null, null);
INSERT INTO vend_role_permission VALUES ('447', '2', '1', '2017-09-12 14:18:54', '2017-09-12 14:18:54', null, null, null);
INSERT INTO vend_role_permission VALUES ('514', '2', '88', '2017-09-12 14:26:03', '2017-09-12 14:26:03', null, null, null);
INSERT INTO vend_role_permission VALUES ('529', '3', '1', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('530', '3', '21', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('531', '3', '25', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('532', '3', '26', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('533', '3', '41', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('534', '3', '51', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('535', '3', '56', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('536', '3', '57', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('537', '3', '58', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('538', '3', '59', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('539', '3', '60', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('540', '3', '74', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('541', '3', '75', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('542', '3', '76', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('543', '3', '77', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('544', '3', '78', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('545', '3', '91', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('546', '3', '80', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('547', '3', '81', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('548', '3', '82', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('549', '3', '83', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('550', '3', '84', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('551', '3', '85', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('552', '3', '86', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('553', '3', '87', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('554', '3', '90', '2017-09-12 14:27:00', '2017-09-12 14:27:00', null, null, null);
INSERT INTO vend_role_permission VALUES ('555', '4', '1', '2017-09-12 14:27:33', '2017-09-12 14:27:33', null, null, null);
INSERT INTO vend_role_permission VALUES ('556', '4', '84', '2017-09-12 14:27:33', '2017-09-12 14:27:33', null, null, null);
INSERT INTO vend_role_permission VALUES ('559', '1', '92', '2017-09-15 17:49:59', '2017-09-15 17:49:59', null, null, null);
INSERT INTO vend_role_permission VALUES ('560', '1', '93', '2017-09-15 17:49:59', '2017-09-15 17:49:59', null, null, null);
INSERT INTO vend_role_permission VALUES ('561', '1', '94', '2017-09-15 17:49:59', '2017-09-15 17:49:59', null, null, null);
INSERT INTO vend_role_permission VALUES ('562', '1', '95', '2017-09-15 17:49:59', '2017-09-15 17:49:59', null, null, null);
INSERT INTO vend_role_permission VALUES ('563', '1', '96', '2017-09-15 17:49:59', '2017-09-15 17:49:59', null, null, null);
INSERT INTO vend_role_permission VALUES ('564', '4', '74', '2017-09-16 09:32:49', '2017-09-16 09:32:49', null, null, null);
INSERT INTO vend_role_permission VALUES ('565', '4', '75', '2017-09-16 09:32:49', '2017-09-16 09:32:49', null, null, null);
INSERT INTO vend_role_permission VALUES ('566', '4', '76', '2017-09-16 09:32:49', '2017-09-16 09:32:49', null, null, null);
INSERT INTO vend_role_permission VALUES ('567', '4', '77', '2017-09-16 09:32:49', '2017-09-16 09:32:49', null, null, null);
INSERT INTO vend_role_permission VALUES ('568', '4', '78', '2017-09-16 09:32:49', '2017-09-16 09:32:49', null, null, null);
INSERT INTO vend_role_permission VALUES ('569', '4', '41', '2017-09-16 09:33:25', '2017-09-16 09:33:25', null, null, null);
INSERT INTO vend_role_permission VALUES ('570', '4', '51', '2017-09-16 09:33:25', '2017-09-16 09:33:25', null, null, null);
INSERT INTO vend_role_permission VALUES ('571', '4', '90', '2017-09-16 09:33:25', '2017-09-16 09:33:25', null, null, null);
INSERT INTO vend_role_permission VALUES ('572', '4', '21', '2017-09-16 09:33:35', '2017-09-16 09:33:35', null, null, null);
INSERT INTO vend_role_permission VALUES ('573', '4', '25', '2017-09-16 09:33:35', '2017-09-16 09:33:35', null, null, null);
INSERT INTO vend_role_permission VALUES ('574', '4', '26', '2017-09-16 09:33:35', '2017-09-16 09:33:35', null, null, null);
INSERT INTO vend_role_permission VALUES ('575', '3', '27', '2017-09-16 09:34:19', '2017-09-16 09:34:19', null, null, null);
INSERT INTO vend_role_permission VALUES ('576', '2', '21', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('577', '2', '22', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('578', '2', '23', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('579', '2', '24', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('580', '2', '30', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('581', '2', '25', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('582', '2', '26', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('583', '2', '27', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('584', '2', '28', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('585', '2', '29', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('586', '2', '14', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('587', '2', '31', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('588', '2', '32', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('589', '2', '33', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('590', '2', '34', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('591', '2', '35', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('592', '2', '41', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('593', '2', '51', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('594', '2', '52', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('595', '2', '53', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('596', '2', '54', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('597', '2', '55', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('598', '2', '56', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('599', '2', '57', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('600', '2', '58', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('601', '2', '59', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('602', '2', '60', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('603', '2', '74', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('604', '2', '75', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('605', '2', '76', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('606', '2', '77', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('607', '2', '78', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('608', '2', '91', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('609', '2', '80', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('610', '2', '81', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('611', '2', '82', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('612', '2', '83', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('613', '2', '85', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('614', '2', '86', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('615', '2', '87', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('616', '2', '90', '2017-09-19 19:45:18', '2017-09-19 19:45:18', null, null, null);
INSERT INTO vend_role_permission VALUES ('617', '1', '97', '2017-09-22 20:34:49', '2017-09-22 20:34:49', null, null, null);
INSERT INTO vend_role_permission VALUES ('618', '2', '97', '2017-09-22 20:34:59', '2017-09-22 20:34:59', null, null, null);
INSERT INTO vend_role_permission VALUES ('622', '1', '99', '2017-09-26 12:03:59', '2017-09-26 12:03:59', null, null, null);
INSERT INTO vend_role_permission VALUES ('623', '1', '98', '2017-09-26 12:12:24', '2017-09-26 12:12:24', null, null, null);
INSERT INTO vend_role_permission VALUES ('624', '1', '22', '2017-09-27 10:53:09', '2017-09-27 10:53:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('625', '1', '100', '2017-09-27 10:53:09', '2017-09-27 10:53:09', null, null, null);
INSERT INTO vend_role_permission VALUES ('626', '2', '100', '2017-09-27 10:53:30', '2017-09-27 10:53:30', null, null, null);
INSERT INTO vend_role_permission VALUES ('627', '2', '98', '2017-09-30 10:54:42', '2017-09-30 10:54:42', null, null, null);
INSERT INTO vend_role_permission VALUES ('628', '2', '99', '2017-09-30 10:54:42', '2017-09-30 10:54:42', null, null, null);
INSERT INTO vend_role_permission VALUES ('629', '1', '101', '2017-10-08 10:09:23', '2017-10-08 10:09:23', null, null, null);
INSERT INTO vend_role_permission VALUES ('630', '1', '102', '2017-10-08 10:09:23', '2017-10-08 10:09:23', null, null, null);
INSERT INTO vend_role_permission VALUES ('631', '1', '103', '2017-10-08 10:09:23', '2017-10-08 10:09:23', null, null, null);

-- ----------------------------
-- Table structure for `vend_shop_qrcode`
-- ----------------------------
DROP TABLE IF EXISTS `vend_shop_qrcode`;
CREATE TABLE `vend_shop_qrcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usercode` varchar(50) DEFAULT NULL COMMENT '对应商家code',
  `qrcode` varchar(100) DEFAULT NULL COMMENT '二维码信息',
  `atten_num` int(11) DEFAULT NULL COMMENT '关注数量',
  `create_time` datetime DEFAULT NULL COMMENT '订单创建时间',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `extend1` varchar(100) DEFAULT NULL,
  `extend2` varchar(100) DEFAULT NULL,
  `extend3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商家二维码信息表';

-- ----------------------------
-- Records of vend_shop_qrcode
-- ----------------------------
INSERT INTO vend_shop_qrcode VALUES ('1', '', '/userfiles/pic/201710071444496962.jpg', null, null, null, '23', '1', null);
INSERT INTO vend_shop_qrcode VALUES ('2', '', '/userfiles/pic/201709041500074560.jpg', null, null, null, '挂号费', '1', null);

-- ----------------------------
-- Table structure for `vend_syslog`
-- ----------------------------
DROP TABLE IF EXISTS `vend_syslog`;
CREATE TABLE `vend_syslog` (
  `id` int(19) NOT NULL AUTO_INCREMENT COMMENT '主键,32未序列',
  `usercode` varchar(100) NOT NULL COMMENT '操作ID',
  `username` varchar(100) NOT NULL COMMENT '操作人',
  `oper_ip` varchar(30) NOT NULL COMMENT '操作会员IP',
  `oper_time` datetime NOT NULL COMMENT '操作日期',
  `oper_url` varchar(255) DEFAULT NULL,
  `oper_description` varchar(255) DEFAULT NULL,
  `extend1` varchar(150) DEFAULT NULL,
  `extend2` varchar(150) DEFAULT NULL,
  `extend3` varchar(150) DEFAULT NULL,
  `extend4` varchar(150) DEFAULT NULL,
  `extend5` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vend_syslog
-- ----------------------------
INSERT INTO vend_syslog VALUES ('1', 'VM001', 'admin', '127.0.0.1', '2017-09-22 20:33:28', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('2', 'VM000', 'system', '127.0.0.1', '2017-09-22 20:33:57', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('3', 'VM000', 'system', '127.0.0.1', '2017-09-23 09:14:26', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('4', 'VM000', 'system', '127.0.0.1', '2017-09-23 09:21:40', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('5', 'VM000', 'system', '127.0.0.1', '2017-09-23 10:17:49', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('6', 'VM000', 'system', '127.0.0.1', '2017-09-23 10:51:33', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('7', 'VM000', 'system', '127.0.0.1', '2017-09-23 10:58:29', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('8', 'VM000', 'system', '127.0.0.1', '2017-09-23 11:22:47', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('9', 'VM000', 'system', '127.0.0.1', '2017-09-23 11:26:56', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('10', 'VM000', 'system', '127.0.0.1', '2017-09-23 11:29:53', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('11', 'VM000', 'system', '127.0.0.1', '2017-09-23 11:30:58', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('12', 'VM000', 'system', '127.0.0.1', '2017-09-23 11:34:20', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('13', 'VM000', 'system', '127.0.0.1', '2017-09-23 11:39:59', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('14', 'VM000', 'system', '127.0.0.1', '2017-09-23 11:48:13', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('15', 'VM000', 'system', '127.0.0.1', '2017-09-23 11:48:43', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('16', 'VM000', 'system', '127.0.0.1', '2017-09-23 11:52:04', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('17', 'VM000', 'system', '127.0.0.1', '2017-09-23 11:59:07', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('18', 'VM000', 'system', '127.0.0.1', '2017-09-23 17:44:21', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('19', 'VM000', 'system', '127.0.0.1', '2017-09-24 08:56:25', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('20', 'VM000', 'system', '127.0.0.1', '2017-09-24 09:33:35', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('21', 'VM000', 'system', '127.0.0.1', '2017-09-24 09:45:19', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('22', 'VM000', 'system', '127.0.0.1', '2017-09-24 09:49:37', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('23', 'VM000', 'system', '127.0.0.1', '2017-09-24 09:58:44', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('24', 'VM000', 'system', '127.0.0.1', '2017-09-24 10:07:15', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('25', 'VM000', 'system', '127.0.0.1', '2017-09-24 10:20:23', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('26', 'VM000', 'system', '127.0.0.1', '2017-09-24 11:10:22', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('27', 'VM000', 'system', '127.0.0.1', '2017-09-24 11:33:32', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('28', 'VM000', 'system', '127.0.0.1', '2017-09-24 13:34:57', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('29', 'VM000', 'system', '127.0.0.1', '2017-09-24 13:38:09', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('30', 'VM000', 'system', '127.0.0.1', '2017-09-24 14:34:11', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('31', 'VM000', 'system', '127.0.0.1', '2017-09-24 14:47:27', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('32', 'VM000', 'system', '127.0.0.1', '2017-09-24 15:27:42', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('33', 'VM000', 'system', '127.0.0.1', '2017-09-24 15:39:15', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('34', 'VM000', 'system', '127.0.0.1', '2017-09-24 15:51:27', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('35', 'VM000', 'system', '127.0.0.1', '2017-09-24 17:45:49', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('36', 'VM000', 'system', '127.0.0.1', '2017-09-25 11:18:46', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('37', 'VM000', 'system', '127.0.0.1', '2017-09-25 11:35:10', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('38', 'VM000', 'system', '127.0.0.1', '2017-09-25 14:18:14', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('39', 'VM000', 'system', '127.0.0.1', '2017-09-25 14:46:18', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('40', 'VM000', 'system', '127.0.0.1', '2017-09-25 14:53:05', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('41', 'VM000', 'system', '127.0.0.1', '2017-09-25 14:54:38', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('42', 'VM000', 'system', '127.0.0.1', '2017-09-25 15:05:54', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('43', 'VM000', 'system', '127.0.0.1', '2017-09-25 15:14:08', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('44', 'VM000', 'system', '127.0.0.1', '2017-09-25 15:23:34', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('45', 'VM000', 'system', '127.0.0.1', '2017-09-25 15:50:33', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('46', 'VM000', 'system', '127.0.0.1', '2017-09-25 16:03:07', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('47', 'VM000', 'system', '127.0.0.1', '2017-09-25 17:23:23', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('48', 'VM000', 'system', '127.0.0.1', '2017-09-25 17:41:07', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('49', 'VM000', 'system', '127.0.0.1', '2017-09-25 18:39:38', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('50', 'VM000', 'system', '127.0.0.1', '2017-09-25 18:47:21', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('51', 'VM000', 'system', '127.0.0.1', '2017-09-25 19:05:09', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('52', 'VM000', 'system', '127.0.0.1', '2017-09-25 20:13:44', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('53', 'VM000', 'system', '127.0.0.1', '2017-09-25 20:48:31', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('54', 'VM000', 'system', '127.0.0.1', '2017-09-25 22:25:31', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('55', 'VM000', 'system', '127.0.0.1', '2017-09-25 22:38:55', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('56', 'VM000', 'system', '127.0.0.1', '2017-09-25 22:46:54', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('57', 'VM000', 'system', '127.0.0.1', '2017-09-25 23:02:17', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('58', 'VM000', 'system', '127.0.0.1', '2017-09-26 08:44:38', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('59', 'VM000', 'system', '127.0.0.1', '2017-09-26 10:03:12', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('60', 'VM000', 'system', '127.0.0.1', '2017-09-26 10:10:04', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('61', 'VM000', 'system', '127.0.0.1', '2017-09-26 10:11:35', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('62', 'VM000', 'system', '127.0.0.1', '2017-09-26 10:19:31', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('63', 'VM000', 'system', '127.0.0.1', '2017-09-26 10:24:12', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('64', 'VM000', 'system', '127.0.0.1', '2017-09-26 11:02:47', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('65', 'VM000', 'system', '127.0.0.1', '2017-09-26 11:12:34', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('66', 'VM000', 'system', '127.0.0.1', '2017-09-26 11:17:05', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('67', 'VM001', 'admin', '127.0.0.1', '2017-09-26 11:25:28', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('68', 'VM000', 'system', '127.0.0.1', '2017-09-26 11:29:40', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('69', 'VM000', 'system', '127.0.0.1', '2017-09-26 11:33:06', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('70', 'VM000', 'system', '127.0.0.1', '2017-09-26 11:39:23', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('71', 'VM000', 'system', '127.0.0.1', '2017-09-26 11:43:02', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('72', 'VM2017092216353547', 'SJ1', '127.0.0.1', '2017-09-26 11:47:34', null, '登录成功', '商家', null, null, null, null);
INSERT INTO vend_syslog VALUES ('73', 'VM000', 'system', '127.0.0.1', '2017-09-26 12:00:35', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('74', 'VM001', 'admin', '1.192.121.236', '2017-09-26 12:12:37', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('75', 'VM001', 'admin', '125.41.153.50', '2017-09-26 14:01:21', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('76', 'VM001', 'admin', '1.192.121.236', '2017-09-27 08:12:15', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('77', 'VM000', 'system', '1.192.121.236', '2017-09-27 08:19:29', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('78', 'VM001', 'admin', '1.192.121.236', '2017-09-27 10:49:46', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('79', 'VM000', 'system', '1.192.121.236', '2017-09-27 10:50:11', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('80', 'VM000', 'system', '1.192.121.236', '2017-09-27 19:40:06', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('81', 'VM000', 'system', '1.192.121.236', '2017-09-27 20:10:00', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('82', 'VM000', 'system', '1.192.121.236', '2017-09-28 08:19:53', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('83', 'VM2017083115230747', 'wujiyuan', '1.192.121.236', '2017-09-28 08:48:10', null, '登录成功', '消费用户', null, null, null, null);
INSERT INTO vend_syslog VALUES ('84', 'VM000', 'system', '1.192.121.236', '2017-09-28 09:22:07', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('85', 'VM000', 'system', '1.192.121.236', '2017-09-28 10:26:09', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('86', 'VM000', 'system', '1.192.121.236', '2017-09-28 10:37:47', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('87', 'VM000', 'system', '1.192.121.236', '2017-09-28 11:10:49', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('88', 'VM001', 'admin', '221.15.163.1', '2017-09-29 08:23:15', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('89', 'VM000', 'system', '1.192.121.236', '2017-09-29 12:49:58', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('90', 'VM001', 'admin', '221.15.163.1', '2017-09-29 16:12:24', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('91', 'VM001', 'admin', '221.15.163.1', '2017-09-29 17:00:18', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('92', 'VM000', 'system', '1.192.121.236', '2017-09-29 17:03:37', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('93', 'VM2017092917014772', '燕子', '221.15.163.1', '2017-09-29 17:57:10', null, '登录成功', '代理后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('94', 'VM001', 'admin', '218.28.150.42', '2017-09-30 10:04:06', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('95', 'VM001', 'admin', '218.28.150.42', '2017-09-30 10:09:54', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('96', 'VM001', 'admin', '218.28.150.42', '2017-09-30 10:22:59', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('97', 'VM001', 'admin', '218.28.150.42', '2017-09-30 10:38:17', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('98', 'VM000', 'system', '1.192.121.236', '2017-09-30 10:40:00', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('99', 'VM001', 'admin', '218.28.150.42', '2017-09-30 10:50:37', null, '登录成功', '', null, null, null, null);
INSERT INTO vend_syslog VALUES ('100', 'VM001', 'admin', '218.28.150.42', '2017-09-30 10:50:42', null, '登录成功', '', null, null, null, null);
INSERT INTO vend_syslog VALUES ('101', 'VM001', 'admin', '1.192.121.236', '2017-09-30 10:54:56', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('102', 'VM000', 'system', '1.192.121.236', '2017-09-30 10:55:22', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('103', 'VM001', 'admin', '1.192.121.236', '2017-09-30 10:56:04', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('104', 'VM2017092917014772', '燕子', '218.28.150.42', '2017-09-30 11:28:53', null, '登录成功', '代理后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('105', 'VM2017092917014772', '燕子', '218.28.150.42', '2017-09-30 11:29:47', null, '登录成功', '代理后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('106', 'VM001', 'admin', '1.192.121.236', '2017-09-30 16:12:48', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('107', 'VM001', 'admin', '1.192.121.236', '2017-09-30 16:24:12', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('108', 'VM001', 'admin', '127.0.0.1', '2017-10-02 14:34:34', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('109', 'VM000', 'system', '127.0.0.1', '2017-10-02 14:40:44', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('110', 'VM000', 'system', '127.0.0.1', '2017-10-02 14:42:31', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('111', 'VM000', 'system', '127.0.0.1', '2017-10-02 15:09:10', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('112', 'VM000', 'system', '127.0.0.1', '2017-10-02 15:14:59', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('113', 'VM000', 'system', '127.0.0.1', '2017-10-02 15:32:22', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('114', 'VM001', 'admin', '127.0.0.1', '2017-10-06 15:31:56', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('115', 'VM000', 'system', '127.0.0.1', '2017-10-07 11:10:27', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('116', 'VM001', 'admin', '127.0.0.1', '2017-10-07 11:30:33', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('117', 'VM001', 'admin', '127.0.0.1', '2017-10-07 11:42:11', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('118', 'VM2017092216353547', 'SJ1', '127.0.0.1', '2017-10-07 11:43:11', null, '登录成功', '商家', null, null, null, null);
INSERT INTO vend_syslog VALUES ('119', 'VM000', 'system', '127.0.0.1', '2017-10-07 11:43:36', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('120', 'VM000', 'system', '127.0.0.1', '2017-10-07 11:54:14', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('121', 'VM001', 'admin', '127.0.0.1', '2017-10-07 12:01:22', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('122', 'VM001', 'admin', '127.0.0.1', '2017-10-07 13:22:23', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('123', 'VM001', 'admin', '127.0.0.1', '2017-10-07 13:28:09', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('124', 'VM001', 'admin', '127.0.0.1', '2017-10-07 13:39:42', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('125', 'VM001', 'admin', '127.0.0.1', '2017-10-07 13:43:31', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('126', 'VM001', 'admin', '127.0.0.1', '2017-10-07 13:47:20', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('127', 'VM001', 'admin', '127.0.0.1', '2017-10-07 13:49:47', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('128', 'VM001', 'admin', '127.0.0.1', '2017-10-07 13:57:48', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('129', 'VM001', 'admin', '127.0.0.1', '2017-10-07 14:12:03', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('130', 'VM001', 'admin', '127.0.0.1', '2017-10-07 14:21:30', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('131', 'VM001', 'admin', '127.0.0.1', '2017-10-07 14:26:03', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('132', 'VM001', 'admin', '127.0.0.1', '2017-10-07 14:33:12', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('133', 'VM001', 'admin', '127.0.0.1', '2017-10-07 14:40:35', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('134', 'VM001', 'admin', '127.0.0.1', '2017-10-07 15:35:41', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('135', 'VM001', 'admin', '127.0.0.1', '2017-10-07 15:42:47', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('136', 'VM001', 'admin', '127.0.0.1', '2017-10-07 16:13:53', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('137', 'VM001', 'admin', '127.0.0.1', '2017-10-07 16:29:59', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('138', 'VM001', 'admin', '127.0.0.1', '2017-10-07 16:35:14', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('139', 'VM001', 'admin', '127.0.0.1', '2017-10-07 16:36:49', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('140', 'VM001', 'admin', '127.0.0.1', '2017-10-07 16:40:05', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('141', 'VM001', 'admin', '127.0.0.1', '2017-10-07 16:41:42', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('142', 'VM001', 'admin', '127.0.0.1', '2017-10-07 16:48:32', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('143', 'VM001', 'admin', '127.0.0.1', '2017-10-07 16:53:38', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('144', 'VM001', 'admin', '127.0.0.1', '2017-10-07 17:15:22', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('145', 'VM001', 'admin', '127.0.0.1', '2017-10-07 17:37:38', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('146', 'VM001', 'admin', '127.0.0.1', '2017-10-07 18:01:19', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('147', 'VM001', 'admin', '127.0.0.1', '2017-10-07 18:03:37', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('148', 'VM000', 'system', '127.0.0.1', '2017-10-08 10:04:09', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('149', 'VM000', 'system', '127.0.0.1', '2017-10-08 10:12:15', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('150', 'VM000', 'system', '127.0.0.1', '2017-10-08 10:24:40', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('151', 'VM000', 'system', '127.0.0.1', '2017-10-08 10:30:09', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('152', 'VM000', 'system', '127.0.0.1', '2017-10-08 12:59:47', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('153', 'VM000', 'system', '127.0.0.1', '2017-10-08 13:05:38', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('154', 'VM000', 'system', '127.0.0.1', '2017-10-08 13:09:52', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('155', 'VM000', 'system', '127.0.0.1', '2017-10-08 14:57:58', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('156', 'VM001', 'admin', '127.0.0.1', '2017-10-08 17:48:37', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('157', 'VM000', 'system', '127.0.0.1', '2017-10-08 17:49:11', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('158', 'VM001', 'admin', '127.0.0.1', '2017-10-08 17:49:42', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('159', 'VM001', 'admin', '127.0.0.1', '2017-10-08 17:51:19', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('160', 'VM000', 'system', '127.0.0.1', '2017-10-08 19:08:17', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('161', 'VM000', 'system', '127.0.0.1', '2017-10-08 19:15:33', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('162', 'VM001', 'admin', '127.0.0.1', '2017-10-08 20:03:19', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('163', 'VM000', 'system', '127.0.0.1', '2017-10-08 20:18:40', null, '登录成功', '开发者后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('164', 'VM2017083115230747', 'wujiyuan', '127.0.0.1', '2017-10-08 21:09:35', null, '登录成功', '消费用户', null, null, null, null);
INSERT INTO vend_syslog VALUES ('165', 'VM001', 'admin', '127.0.0.1', '2017-10-08 21:41:43', null, '登录成功', '总后台', null, null, null, null);
INSERT INTO vend_syslog VALUES ('166', 'VM2017083115230747', 'wujiyuan', '127.0.0.1', '2017-10-08 21:51:53', null, '登录成功', '消费用户', null, null, null, null);
INSERT INTO vend_syslog VALUES ('167', 'VM2017083115230747', 'wujiyuan', '127.0.0.1', '2017-10-08 23:13:02', null, '登录成功', '消费用户', null, null, null, null);
INSERT INTO vend_syslog VALUES ('168', 'VM2017083115230747', 'wujiyuan', '127.0.0.1', '2017-10-08 23:13:18', null, '登录成功', '消费用户', null, null, null, null);
INSERT INTO vend_syslog VALUES ('169', 'VM2017083115230747', 'wujiyuan', '127.0.0.1', '2017-10-08 23:22:05', null, '登录成功', '消费用户', null, null, null, null);
INSERT INTO vend_syslog VALUES ('170', 'VM2017083115230747', 'wujiyuan', '127.0.0.1', '2017-10-08 23:24:44', null, '登录成功', '消费用户', null, null, null, null);
INSERT INTO vend_syslog VALUES ('171', 'VM001', 'admin', '127.0.0.1', '2017-10-08 23:44:49', null, '登录成功', '总后台', null, null, null, null);

-- ----------------------------
-- Table structure for `vend_user`
-- ----------------------------
DROP TABLE IF EXISTS `vend_user`;
CREATE TABLE `vend_user` (
  `usercode` varchar(50) NOT NULL,
  `parent_usercode` varchar(50) DEFAULT NULL COMMENT '建立该账号的上级账号',
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role_id` int(12) DEFAULT NULL,
  `mobile` varchar(22) DEFAULT NULL COMMENT '电话',
  `address` varchar(400) DEFAULT NULL COMMENT '地址',
  `linkman` varchar(100) DEFAULT NULL COMMENT '联系人',
  `wechatpub_no` varchar(150) DEFAULT NULL COMMENT '商家微信公众号的号码',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `permission_list` varchar(400) DEFAULT NULL COMMENT '权限列表',
  `extend1` varchar(150) DEFAULT NULL,
  `extend2` varchar(100) DEFAULT NULL,
  `extend3` varchar(100) DEFAULT NULL,
  `extend4` varchar(150) DEFAULT NULL,
  `extend5` varchar(100) DEFAULT NULL,
  `extend6` varchar(100) DEFAULT NULL,
  `attend_num` int(19) DEFAULT NULL COMMENT '关注人数',
  PRIMARY KEY (`usercode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of vend_user
-- ----------------------------
INSERT INTO vend_user VALUES ('VM000', null, 'system', '3fcc1919615533f1', '1', '18640214798', null, '4564', null, '2017-08-22 16:12:39', '2017-08-22 16:12:39', null, '1', null, null, null, null, null, null);
INSERT INTO vend_user VALUES ('VM001', 'VM000', 'admin', '3fcc1919615533f1', '2', null, null, null, null, '2017-09-10 11:55:35', '2017-09-10 11:55:38', null, null, null, null, null, null, null, null);
INSERT INTO vend_user VALUES ('VM2017083115230747', null, 'wujiyuan', '3fcc1919615533f1', '5', '18640214798', 'Zhengzhou', null, null, '2017-08-31 15:23:07', '2017-08-31 15:23:07', null, '1', '20', null, null, null, null, null);
INSERT INTO vend_user VALUES ('VM2017091211292506', 'VM001', 'dl2', '3fcc1919615533f1', '3', '18934572345', null, '2342', null, '2017-09-12 11:29:25', '2017-09-12 11:29:25', null, null, null, null, null, null, null, null);
INSERT INTO vend_user VALUES ('VM2017092216353547', 'VM001', 'SJ1', '3fcc1919615533f1', '4', '13256789098', '河南郑州', '小明', 'dyancheng', '2017-09-22 16:35:35', '2017-09-22 16:35:35', null, null, null, null, null, null, null, null);
INSERT INTO vend_user VALUES ('VM2017092917014772', 'VM001', '燕子', '3fcc1919615533f1', '3', '15565055655', '河南郑州', '张', '', '2017-09-29 17:01:47', '2017-09-29 17:01:47', null, null, null, null, '', null, null, null);
INSERT INTO vend_user VALUES ('VM2017093010392578', 'VM001', 'dl1', '3fcc1919615533f1', '3', '15863742059', '郑州市', '李', '', '2017-09-30 10:39:25', '2017-09-30 10:39:25', null, null, null, null, '', null, null, null);
INSERT INTO vend_user VALUES ('VM2017100616002855', null, '燕子', '3fcc1919615533f1', '5', '15565055655', 'Zhengzhou', null, null, '2017-10-06 16:00:28', '2017-10-06 16:00:28', null, null, null, null, null, null, null, null);
