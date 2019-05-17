/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : zhy_test

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 17/05/2019 12:17:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `type` int(5) NOT NULL DEFAULT '0' COMMENT '文章类型 默认类型0未分类',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章标题',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '文章内容',
  `author_id` int(5) NOT NULL COMMENT '文章作者id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '文章状态 0 正常 1 删除',
  `comments` int(20) DEFAULT '0' COMMENT '文章评论数',
  `createtime` int(20) NOT NULL COMMENT '文章创建时间',
  `updatetime` int(20) DEFAULT NULL COMMENT '文章更新时间',
  `dest` varchar(100) DEFAULT NULL COMMENT '对文章的简要描述',
  `views` int(20) DEFAULT '0' COMMENT '文章浏览量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES (1, 1, 'Vue学习笔记实战篇--音乐播放器·整体布局', '##创建项目\n使用vue-cli脚手架工具在自己指定的目录创建项目chain-vue-music，命令如下：\n\nvue init webpack chain-vue-music\n创建成功后，执行以下命令，安装依赖\n\ncd chain-vue-music\nnpm install\n各种依赖成功安装后，再根据我们的需求安装vue插件，这里我暂时先安装vuex, vue-router, vue-resource, mint-ui，命令如下：\n\nnpm install vuex --save\nnpm install vue-router --save\nnpm install vue-resource --save\nnpm install mint-ui --save\n以上全部安装成功后，我们可以执行以下命令，看下我们最初的项目：\n\nnpm run dev', 1, 0, 0, 1555845733, NULL, '学习第一步', NULL);
INSERT INTO `article` VALUES (2, 1, 'html基础', 'htm中的元素，div,input,button', 1, 0, 0, 1555845799, NULL, '介绍标签', 0);
INSERT INTO `article` VALUES (3, 1, 'html基础1111', 'htm中的元素，div,input,button', 1, 0, 0, 1555845799, NULL, '介绍标签', 0);
INSERT INTO `article` VALUES (4, 1, 'html基础1111', 'htm中的元素，div,input,button', 1, 0, 0, 1555845799, NULL, '介绍标签', 0);
INSERT INTO `article` VALUES (5, 1, 'djdjdjdk', 'hjfhiayeianfadsnfkaskdjlajfljadsfs', 1, 0, 0, 1557689138, 1557689138, 'jfkdjfeijjnds', 0);
INSERT INTO `article` VALUES (6, 1, '188rr', 'woshi diyi pian ', 1, 1, 0, 1557709834, 1557709834, '1111111', 0);
INSERT INTO `article` VALUES (7, 6, 'ff', 'fffff', 1, 1, 0, 1557727367, 1557727367, 'fff', 0);
INSERT INTO `article` VALUES (8, 6, 'js学习方式', '在js中字符截取函数有常用的三个slice()、substring()、substr()了，下面我来给大家介绍slice()、substring()、substr()函数在字符截取时的一些用法与区别吧。 取字符串的三个函数:slice(start,[end]),substring(start,[end])和substr(start,[length]) 相关属性： slice() 第一个参数代表开始位置,第二个参数代表结束位置的下一个位置,截取出来的字符串的长度为第二个参数与第一个参数之间的差;若参数值为负数,则将该值加上字符串长度后转为正值;若第一个参数等于大于第二个参数,则返回空字符串...', 1, 1, 0, 1557727446, 1557727446, 'js基础', 0);
INSERT INTO `article` VALUES (9, 6, 'js', 'javascript是页面制作的一个工具', 1, 0, 0, 1557728174, 1557728174, '学习js', 0);
INSERT INTO `article` VALUES (10, 6, '哈哈哈', '学习js技术，一直进步。。', 1, 1, 0, 1557728356, 1557728356, '开心学代码', 0);
COMMIT;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '权限的id',
  `permission` varchar(50) NOT NULL COMMENT '权限名称',
  `pid` int(5) NOT NULL COMMENT '父级ID',
  `url` varchar(50) DEFAULT NULL COMMENT '权限的路由地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
INSERT INTO `permissions` VALUES (1, '后台管理', 0, NULL);
INSERT INTO `permissions` VALUES (2, '权限管理', 1, NULL);
INSERT INTO `permissions` VALUES (3, '用户管理', 1, NULL);
INSERT INTO `permissions` VALUES (4, '分类管理', 1, NULL);
INSERT INTO `permissions` VALUES (5, '文章管理', 1, NULL);
INSERT INTO `permissions` VALUES (6, '权限添加', 2, NULL);
INSERT INTO `permissions` VALUES (7, '权限删除', 2, NULL);
INSERT INTO `permissions` VALUES (8, '权限修改', 2, NULL);
INSERT INTO `permissions` VALUES (9, '用户添加', 3, NULL);
INSERT INTO `permissions` VALUES (10, '用户删除', 3, NULL);
INSERT INTO `permissions` VALUES (11, '用户修改', 3, NULL);
INSERT INTO `permissions` VALUES (12, '分类添加', 4, NULL);
INSERT INTO `permissions` VALUES (13, '分类删除', 4, NULL);
INSERT INTO `permissions` VALUES (14, '分类修改', 4, NULL);
INSERT INTO `permissions` VALUES (15, '文章添加', 5, NULL);
INSERT INTO `permissions` VALUES (16, '文章删除', 5, NULL);
INSERT INTO `permissions` VALUES (17, '文章修改', 5, NULL);
COMMIT;

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `art_id` int(5) NOT NULL COMMENT '评论的文章ID',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `author_id` int(5) NOT NULL COMMENT '评论人ID',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '评论状态 0 正常 1 删除',
  `createtime` int(20) DEFAULT NULL COMMENT '评论发布时间',
  `updatetime` int(20) DEFAULT NULL COMMENT '评论更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reviews
-- ----------------------------
BEGIN;
INSERT INTO `reviews` VALUES (1, 1, '我是第一个评论呀？？？', 1, 0, 1546322400, 1546322400);
INSERT INTO `reviews` VALUES (2, 1, '技术分享很好，共同进步', 1, 1, 1546322499, 1546322500);
INSERT INTO `reviews` VALUES (3, 2, '很时尚', 1, 0, 1546326000, 1546326003);
INSERT INTO `reviews` VALUES (4, 2, '哈哈哈啊', 1, 1, 1546326003, 1546326003);
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `dest` varchar(20) DEFAULT NULL COMMENT '角色描述',
  `permission_list` varchar(255) NOT NULL COMMENT '权限列表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES (1, 'super', '超级管理员', '');
INSERT INTO `role` VALUES (2, 'reg', '注册用户', '');
COMMIT;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_icelandic_ci NOT NULL,
  `content_type` int(5) NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
BEGIN;
INSERT INTO `test` VALUES (1, 'tom', 0, 'html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试html测试', 'html测试', 'my');
INSERT INTO `test` VALUES (2, 'jack', 1, 'js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试js测试', 'js测试', 'my');
INSERT INTO `test` VALUES (3, '张三', 2, 'node测试node测试node测试node测试node测试node测试node测试node测试node测试node测试node测试node测试node测试node测试node测试node测试node测试node测试node测试node测试node测试node测试node测试', 'node测试', 'my');
INSERT INTO `test` VALUES (4, '李四', 3, 'vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试vue测试', 'vue测试', 'my');
COMMIT;

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `status` int(1) DEFAULT '0' COMMENT '0 正常 1 删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
BEGIN;
INSERT INTO `type` VALUES (1, 'HTML', 1);
INSERT INTO `type` VALUES (2, 'JavaScript', 0);
INSERT INTO `type` VALUES (3, 'Vue', 0);
INSERT INTO `type` VALUES (4, 'Element', 0);
INSERT INTO `type` VALUES (5, '其他', 1);
INSERT INTO `type` VALUES (6, 'js', 0);
INSERT INTO `type` VALUES (7, 'javascript', 1);
INSERT INTO `type` VALUES (8, '其他-js', 1);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码(原密码md5后加上加盐字段再次md5)',
  `pwd_salt` int(5) NOT NULL COMMENT '密码随机数',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名字',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `gender` tinyint(1) DEFAULT '0' COMMENT '性别  0 女  1 男',
  `introduce` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '个人介绍',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户状态 0 正常 1 禁用',
  `identity` tinyint(1) DEFAULT '1' COMMENT '用户身份 0 管理员 1 注册 暂不使用',
  `role_id` int(5) NOT NULL DEFAULT '0' COMMENT '角色id',
  `createtime` int(20) DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'super', '123456a', 12345, '超管', '2019-05-07 00:00:00', 0, 'hahahahahahaah', 0, 0, 1, 1557719491);
INSERT INTO `user` VALUES (2, 'zhy', 'zhy123', 12345, '超管', '2019-05-07 00:00:00', 0, 'hahahahahahaah', 0, NULL, 2, 1546322000);
INSERT INTO `user` VALUES (3, 'my', '123456', 12345, '我呀', '2019-05-07 00:00:00', 1, '', 0, 0, 2, 1557719497);
INSERT INTO `user` VALUES (4, 'jack', '123456', 123456, '桃木', '2019-05-07 00:00:00', 1, NULL, 0, 0, 2, 1546322000);
INSERT INTO `user` VALUES (5, 'tom', '123456', 12345, '系数', '2019-05-07 00:00:00', 1, NULL, 0, 0, 2, 1546322000);
INSERT INTO `user` VALUES (6, 'hshhsh', '123456a', 12345, 'zhy', NULL, 0, '', 1, 0, 2, 1557717392);
INSERT INTO `user` VALUES (7, '哈哈哈', '123456a', 12345, 'zhy', NULL, 0, 'hshhshshsh', 1, 0, 2, 1557719393);
INSERT INTO `user` VALUES (8, '2019-8', '1234567', 12345, '月月', NULL, 0, '我是哈哈哈', 0, 0, 2, 1557725300);
INSERT INTO `user` VALUES (9, 'jacks', '123456', 12345, '哈哈哈', NULL, 1, '我是开心的人', 1, 0, 2, 1557727935);
INSERT INTO `user` VALUES (10, 'jacksss', '123456', 12345, '哈哈哈', NULL, 0, '开心的一天', 1, 0, 2, 1557728131);
INSERT INTO `user` VALUES (11, 'yiyu', '1234567', 12345, '一月', NULL, 1, '19年第一个月出生', 1, 0, 2, 1557728302);
INSERT INTO `user` VALUES (12, 'yiyi', '123456', 12345, '一一', NULL, 0, 'haahahaha哈哈哈', 0, 0, 2, 1557728501);
INSERT INTO `user` VALUES (13, 'hahahha', '123456', 12345, '哈哈哈', NULL, 0, 'hhahhah', 0, 0, 2, 1557995213);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
