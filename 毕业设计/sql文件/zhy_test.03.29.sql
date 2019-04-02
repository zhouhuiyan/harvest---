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

 Date: 29/03/2019 17:57:27
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
  `title` varchar(0) NOT NULL COMMENT '文章标题',
  `content` mediumtext NOT NULL COMMENT '文章内容',
  `author_id` int(5) NOT NULL COMMENT '文章作者id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '文章状态 0 正常 1 删除',
  `comments` int(50) DEFAULT '0' COMMENT '文章评论数',
  `createtime` int(20) NOT NULL COMMENT '文章创建时间',
  `updatetime` int(20) NOT NULL COMMENT '文章更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
BEGIN;
INSERT INTO `type` VALUES (1, 'HTML');
INSERT INTO `type` VALUES (2, 'JavaScript');
INSERT INTO `type` VALUES (3, 'Vue');
INSERT INTO `type` VALUES (4, 'Element');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(5) NOT NULL COMMENT '用户ID',
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码(原密码md5后加上加盐字段再次md5)',
  `pwd_salt` int(5) NOT NULL COMMENT '密码随机数',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名字',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `gender` tinyint(4) DEFAULT '0' COMMENT '性别  0 女  1 男',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '个人介绍',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户状态 0 正常 1 禁用',
  `identity` tinyint(1) DEFAULT '1' COMMENT '用户身份 0 管理员 1 注册 暂不使用',
  `role_id` int(5) NOT NULL DEFAULT '0' COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'admin', '8bf7170ba510bb5f9b881936a2bc2e12', 12345, '超级管理员', NULL, NULL, NULL, 0, NULL, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
