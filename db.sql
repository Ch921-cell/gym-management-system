/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : db

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 28/04/2023 18:22:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_account` int NOT NULL COMMENT '管理员账号',
  `admin_password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`admin_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1001, '123456');
INSERT INTO `admin` VALUES (1002, '123456');
INSERT INTO `admin` VALUES (1003, '123456');

-- ----------------------------
-- Table structure for class_order
-- ----------------------------
DROP TABLE IF EXISTS `class_order`;
CREATE TABLE `class_order`  (
  `class_order_id` int NOT NULL AUTO_INCREMENT COMMENT '报名表id',
  `class_id` int NULL DEFAULT NULL COMMENT '课程id',
  `class_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `coach` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教练',
  `member_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '会员姓名',
  `member_account` int NULL DEFAULT NULL COMMENT '会员账号',
  `class_begin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '开课时间',
  PRIMARY KEY (`class_order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of class_order
-- ----------------------------

-- ----------------------------
-- Table structure for class_table
-- ----------------------------
DROP TABLE IF EXISTS `class_table`;
CREATE TABLE `class_table`  (
  `class_id` int NOT NULL DEFAULT 0 COMMENT '课程id',
  `class_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `class_begin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '开课时间',
  `class_time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程时长',
  `coach` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教练',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of class_table
-- ----------------------------
INSERT INTO `class_table` VALUES (1, '增肌', '2023年1月1日 15:00', '60分钟', '增肌教练');
INSERT INTO `class_table` VALUES (2, '瑜伽', '2023年1月2日 10:20', '90分钟', '瑜伽教练');
INSERT INTO `class_table` VALUES (3, '减脂', '2023年3月6日 18:00', '90分钟', '减脂教练');
INSERT INTO `class_table` VALUES (4, '运动康复', '2023年2月2日 10:00', '45分钟', '运动康复教练');
INSERT INTO `class_table` VALUES (5, '综合格斗', '2023年2月3日 15:00', '60分钟', '综合格斗教练');
INSERT INTO `class_table` VALUES (6, '塑形', '2023年2月3日 15:00', '60分钟', '塑形教练');
INSERT INTO `class_table` VALUES (7, '普拉提', '2023年3月1日 17:30', '60分钟', '普拉提教练');
INSERT INTO `class_table` VALUES (8, '爵士舞', '2023年2月22日 09:00', '90分钟', '爵士舞教练');
INSERT INTO `class_table` VALUES (9, '杠铃操', '2023年2月4日 15:00', '60分钟', '杠铃操教练');
INSERT INTO `class_table` VALUES (10, '动感单车', '2023年3月8日 15:00', '45分钟', '动感单车教练');
INSERT INTO `class_table` VALUES (11, '健美操', '2023年2月22日 18:00', '60分钟', '健美操教练');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `employee_account` int NOT NULL COMMENT '员工账号',
  `employee_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `employee_gender` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工性别',
  `employee_age` int NULL DEFAULT NULL COMMENT '员工年龄',
  `entry_time` date NULL DEFAULT NULL COMMENT '入职时间',
  `staff` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '职务',
  `employee_message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`employee_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (101034208, '保洁2', '女', 48, '2010-08-01', '保洁员', '');
INSERT INTO `employee` VALUES (101038721, '教练1', '女', 26, '2016-06-29', '健身教练', '健美冠军');
INSERT INTO `employee` VALUES (101045354, '教练4', '男', 24, '2021-01-07', '健身教练', '职业教练');
INSERT INTO `employee` VALUES (101053687, '教练3', '男', 30, '2020-06-06', '健身教练', '职业教练');
INSERT INTO `employee` VALUES (101058973, '保洁1', '女', 48, '2019-08-24', '保洁员', '模范员工');
INSERT INTO `employee` VALUES (101068283, '教练2', '男', 34, '2020-01-06', '健身教练', '职业教练');

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment`  (
  `equipment_id` int NOT NULL AUTO_INCREMENT COMMENT '器材id',
  `equipment_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '器材名称',
  `equipment_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '器材位置',
  `equipment_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '器材状态',
  `equipment_message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '器材备注信息',
  PRIMARY KEY (`equipment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES (1, '哑铃1', '1号房间', '正常', '');
INSERT INTO `equipment` VALUES (2, '杠铃1', '2号房间', '损坏', '待维修');
INSERT INTO `equipment` VALUES (3, '跑步机1', '2号房间', '维修中', '联系厂家维修');
INSERT INTO `equipment` VALUES (4, '跑步机2', '2号房间', '正常', '');
INSERT INTO `equipment` VALUES (5, '跑步机3', '2号房间', '正常', '');
INSERT INTO `equipment` VALUES (6, '杠铃1', '1号房间', '正常', '');
INSERT INTO `equipment` VALUES (7, '杠铃2', '1号房间', '正常', '');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `member_account` int NOT NULL COMMENT '会员账号',
  `member_password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '123456' COMMENT '会员密码',
  `member_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '会员姓名',
  `member_gender` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '会员性别',
  `member_age` int NULL DEFAULT NULL COMMENT '会员年龄',
  `member_height` int NULL DEFAULT NULL COMMENT '会员身高',
  `member_weight` int NULL DEFAULT NULL COMMENT '会员体重',
  `member_phone` bigint NULL DEFAULT NULL COMMENT '会员电话',
  `card_time` date NULL DEFAULT NULL COMMENT '办卡时间',
  `card_class` int NULL DEFAULT NULL COMMENT '购买课时',
  `card_next_class` int NULL DEFAULT NULL COMMENT '剩余课时',
  PRIMARY KEY (`member_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (20200986, '123456', '张三', '女', 24, 182, 60, 13515548482, '2020-06-05', 40, 40);
INSERT INTO `member` VALUES (20210078, '123456', '李四', '男', 31, 178, 60, 13131554873, '2021-01-01', 50, 50);
INSERT INTO `member` VALUES (20210672, '123456', 'Tom', '男', 24, 178, 88, 13758784959, '2021-02-26', 30, 30);
INSERT INTO `member` VALUES (20210956, '123456', '3', '2', 2, 2, 2, 15942403320, '2023-04-11', 2, 2);
INSERT INTO `member` VALUES (20222135, '123456', 'Ava', '女', 28, 160, 40, 13754457488, '2022-03-02', 30, 30);
INSERT INTO `member` VALUES (20223539, '123456', '王五', '男', 31, 178, 60, 13154875489, '2022-01-01', 40, 40);
INSERT INTO `member` VALUES (20233664, '123456', 'Lily', '女', 25, 165, 51, 15986457423, '2023-03-27', 30, 30);
INSERT INTO `member` VALUES (20235368, '123456', 'Emma', '女', 25, 173, 44, 13786457124, '2023-03-01', 50, 50);
INSERT INTO `member` VALUES (20236754, '123456', 'Mike', '男', 36, 166, 67, 13786532448, '2023-02-28', 30, 30);
INSERT INTO `member` VALUES (20237687, '123456', 'Jack', '男', 33, 177, 90, 13767546666, '2023-02-27', 30, 30);
INSERT INTO `member` VALUES (20238306, '123456', 'Tylor', '女', 19, 170, 60, 13786457488, '2023-02-27', 30, 30);
INSERT INTO `member` VALUES (20238646, '123456', '马六', '女', 23, 160, 45, 13124576857, '2023-01-16', 30, 30);
INSERT INTO `member` VALUES (20238976, '123456', 'Chloe', '女', 27, 170, 50, 13986337489, '2023-03-23', 30, 30);

SET FOREIGN_KEY_CHECKS = 1;
