/*
Navicat MySQL Data Transfer

Source Server         : 虚拟机Ubuntu14.04
Source Server Version : 50550
Source Host           : 192.168.171.128:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2016-09-07 20:28:46
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `author`
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `signature` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of author
-- ----------------------------
INSERT INTO `author` VALUES ('1', 'zhl', '12', 'I am the god!');
INSERT INTO `author` VALUES ('2', 'tcl', '18', 'focus!');
INSERT INTO `author` VALUES ('3', 'lxf', '23', 'old man');
INSERT INTO `author` VALUES ('4', 'zlc', '28', 'good!');
INSERT INTO `author` VALUES ('5', 'mage', '23', 'brilliant!');

-- ----------------------------
-- Table structure for `blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `body` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', 'zhl\'s blog', '1', 'I am zhl,I love song and girl');
INSERT INTO `blog` VALUES ('2', 'lxf\'s blog', '3', 'I am lxf, and I love game');
INSERT INTO `blog` VALUES ('3', 'zlc\'s blog', '4', 'I am lc_master,and I love reading');

-- ----------------------------
-- Table structure for `follows`
-- ----------------------------
DROP TABLE IF EXISTS `follows`;
CREATE TABLE `follows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `follow_time` datetime NOT NULL,
  `blog_id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of follows
-- ----------------------------
INSERT INTO `follows` VALUES ('1', '2016-09-07 20:05:58', '1', 'coment_id:1,blog:1');
INSERT INTO `follows` VALUES ('2', '2016-09-07 20:06:06', '1', 'coment_id:2,blog:1');
INSERT INTO `follows` VALUES ('3', '2016-09-07 20:06:08', '1', 'coment_id:3,blog:1');
INSERT INTO `follows` VALUES ('4', '2016-09-07 20:06:12', '2', 'coment_id:4,blog:2');
INSERT INTO `follows` VALUES ('5', '2016-09-07 20:06:29', '2', 'coment_id:5,blog:2');
INSERT INTO `follows` VALUES ('6', '2016-09-07 20:06:32', '3', 'coment_id:6,blog:3');
INSERT INTO `follows` VALUES ('7', '2016-09-07 20:06:36', '3', 'coment_id:7,blog:3');
INSERT INTO `follows` VALUES ('8', '2016-09-07 20:06:39', '3', 'coment_id:8,blog:3');
