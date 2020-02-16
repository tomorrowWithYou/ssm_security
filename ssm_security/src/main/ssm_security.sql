
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for persistent_logins
-- ----------------------------
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of persistent_logins
-- ----------------------------
BEGIN;
INSERT INTO `persistent_logins` VALUES ('xhc1', 'wAxh9uRFBXeJNs5OU8Fqig==', 'cF80i3AiOJwPE/kvqzvKtQ==', '2020-02-13 11:35:23');
COMMIT;

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `permName` varchar(255) DEFAULT '' COMMENT '权限名称',
  `permTag` varchar(255) DEFAULT '' COMMENT '权限标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
BEGIN;
INSERT INTO `sys_permission` VALUES (1, '商品显示', 'ROLE_LIST_GOODS');
INSERT INTO `sys_permission` VALUES (2, '商品添加', 'ROLE_ADD_GOODS');
INSERT INTO `sys_permission` VALUES (3, '商品删除', 'ROLE_DELETE_GOODS');
INSERT INTO `sys_permission` VALUES (4, '删除修改', 'ROLE_UPDATE_GOODS');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `roleName` varchar(255) DEFAULT '' COMMENT '角色名称',
  `roleDesc` varchar(255) DEFAULT '' COMMENT '角色描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '普通操作员', '普通操作员');
INSERT INTO `sys_role` VALUES (2, '高级操作员', '高级操作员');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_id` int(11) DEFAULT NULL,
  `perm_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_permission` VALUES (1, 1, 1);
INSERT INTO `sys_role_permission` VALUES (2, 1, 2);
INSERT INTO `sys_role_permission` VALUES (3, 2, 3);
INSERT INTO `sys_role_permission` VALUES (4, 2, 4);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `realname` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `createDate` datetime DEFAULT NULL COMMENT '创建日期',
  `lastLoginTime` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `enabled` int(2) DEFAULT '1',
  `accountNonExpired` int(2) DEFAULT '1',
  `accountNonLocked` int(2) DEFAULT '1',
  `credentialsNonExpired` int(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'xhc1', '许洪昌', '$2a$10$SuJ/wEYR562TcQypj.HTfO5dX433wYGhmsydUvJx5fmkSTOt4jz4S', '2020-02-10 19:28:25', NULL, 1, 1, 1, 1);
INSERT INTO `sys_user` VALUES (2, 'xhc2', '小许', '$2a$10$8Gwb5oqDAyqOuzWYReV.iOmClLKCUi3SCCryXxRTbWbquqMNS92sm', '2020-02-04 19:28:49', NULL, 1, 1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (1, 1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2, 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
