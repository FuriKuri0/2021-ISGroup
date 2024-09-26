/*
 Navicat Premium Data Transfer

 Source Server         : qg
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 39.98.41.126:3306
 Source Schema         : qg_final

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 20/08/2022 15:02:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for DSG_10_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_10_1000_adjacency`;
CREATE TABLE `DSG_10_1000_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_10_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_10_1000_location`;
CREATE TABLE `DSG_10_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_10_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_10_200_adjacency`;
CREATE TABLE `DSG_10_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_10_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_10_200_location`;
CREATE TABLE `DSG_10_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_10_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_10_400_adjacency`;
CREATE TABLE `DSG_10_400_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_10_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_10_400_location`;
CREATE TABLE `DSG_10_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_10_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_10_600_adjacency`;
CREATE TABLE `DSG_10_600_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_10_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_10_600_location`;
CREATE TABLE `DSG_10_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_10_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_10_800_adjacency`;
CREATE TABLE `DSG_10_800_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_10_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_10_800_location`;
CREATE TABLE `DSG_10_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_1_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_1_1000_adjacency`;
CREATE TABLE `DSG_1_1000_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_1_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_1_1000_location`;
CREATE TABLE `DSG_1_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_1_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_1_200_adjacency`;
CREATE TABLE `DSG_1_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_1_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_1_200_location`;
CREATE TABLE `DSG_1_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_1_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_1_400_adjacency`;
CREATE TABLE `DSG_1_400_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_1_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_1_400_location`;
CREATE TABLE `DSG_1_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_1_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_1_600_adjacency`;
CREATE TABLE `DSG_1_600_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_1_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_1_600_location`;
CREATE TABLE `DSG_1_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_1_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_1_800_adjacency`;
CREATE TABLE `DSG_1_800_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_1_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_1_800_location`;
CREATE TABLE `DSG_1_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_2_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_2_1000_adjacency`;
CREATE TABLE `DSG_2_1000_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_2_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_2_1000_location`;
CREATE TABLE `DSG_2_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_2_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_2_200_adjacency`;
CREATE TABLE `DSG_2_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_2_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_2_200_location`;
CREATE TABLE `DSG_2_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_2_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_2_400_adjacency`;
CREATE TABLE `DSG_2_400_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_2_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_2_400_location`;
CREATE TABLE `DSG_2_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_2_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_2_600_adjacency`;
CREATE TABLE `DSG_2_600_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_2_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_2_600_location`;
CREATE TABLE `DSG_2_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_2_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_2_800_adjacency`;
CREATE TABLE `DSG_2_800_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_2_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_2_800_location`;
CREATE TABLE `DSG_2_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_3_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_3_1000_adjacency`;
CREATE TABLE `DSG_3_1000_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_3_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_3_1000_location`;
CREATE TABLE `DSG_3_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_3_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_3_200_adjacency`;
CREATE TABLE `DSG_3_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_3_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_3_200_location`;
CREATE TABLE `DSG_3_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_3_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_3_400_adjacency`;
CREATE TABLE `DSG_3_400_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_3_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_3_400_location`;
CREATE TABLE `DSG_3_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_3_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_3_600_adjacency`;
CREATE TABLE `DSG_3_600_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_3_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_3_600_location`;
CREATE TABLE `DSG_3_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_3_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_3_800_adjacency`;
CREATE TABLE `DSG_3_800_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_3_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_3_800_location`;
CREATE TABLE `DSG_3_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_4_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_4_1000_adjacency`;
CREATE TABLE `DSG_4_1000_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_4_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_4_1000_location`;
CREATE TABLE `DSG_4_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_4_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_4_200_adjacency`;
CREATE TABLE `DSG_4_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_4_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_4_200_location`;
CREATE TABLE `DSG_4_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_4_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_4_400_adjacency`;
CREATE TABLE `DSG_4_400_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_4_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_4_400_location`;
CREATE TABLE `DSG_4_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_4_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_4_600_adjacency`;
CREATE TABLE `DSG_4_600_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_4_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_4_600_location`;
CREATE TABLE `DSG_4_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_4_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_4_800_adjacency`;
CREATE TABLE `DSG_4_800_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_4_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_4_800_location`;
CREATE TABLE `DSG_4_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_5_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_5_1000_adjacency`;
CREATE TABLE `DSG_5_1000_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_5_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_5_1000_location`;
CREATE TABLE `DSG_5_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_5_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_5_200_adjacency`;
CREATE TABLE `DSG_5_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_5_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_5_200_location`;
CREATE TABLE `DSG_5_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_5_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_5_400_adjacency`;
CREATE TABLE `DSG_5_400_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_5_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_5_400_location`;
CREATE TABLE `DSG_5_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_5_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_5_600_adjacency`;
CREATE TABLE `DSG_5_600_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_5_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_5_600_location`;
CREATE TABLE `DSG_5_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_5_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_5_800_adjacency`;
CREATE TABLE `DSG_5_800_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_5_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_5_800_location`;
CREATE TABLE `DSG_5_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_6_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_6_1000_adjacency`;
CREATE TABLE `DSG_6_1000_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_6_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_6_1000_location`;
CREATE TABLE `DSG_6_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_6_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_6_200_adjacency`;
CREATE TABLE `DSG_6_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_6_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_6_200_location`;
CREATE TABLE `DSG_6_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_6_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_6_400_adjacency`;
CREATE TABLE `DSG_6_400_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_6_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_6_400_location`;
CREATE TABLE `DSG_6_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_6_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_6_600_adjacency`;
CREATE TABLE `DSG_6_600_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_6_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_6_600_location`;
CREATE TABLE `DSG_6_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_6_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_6_800_adjacency`;
CREATE TABLE `DSG_6_800_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_6_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_6_800_location`;
CREATE TABLE `DSG_6_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_7_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_7_1000_adjacency`;
CREATE TABLE `DSG_7_1000_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_7_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_7_1000_location`;
CREATE TABLE `DSG_7_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_7_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_7_200_adjacency`;
CREATE TABLE `DSG_7_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_7_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_7_200_location`;
CREATE TABLE `DSG_7_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_7_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_7_400_adjacency`;
CREATE TABLE `DSG_7_400_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_7_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_7_400_location`;
CREATE TABLE `DSG_7_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_7_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_7_600_adjacency`;
CREATE TABLE `DSG_7_600_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_7_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_7_600_location`;
CREATE TABLE `DSG_7_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_7_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_7_800_adjacency`;
CREATE TABLE `DSG_7_800_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_7_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_7_800_location`;
CREATE TABLE `DSG_7_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_8_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_8_1000_adjacency`;
CREATE TABLE `DSG_8_1000_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_8_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_8_1000_location`;
CREATE TABLE `DSG_8_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_8_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_8_200_adjacency`;
CREATE TABLE `DSG_8_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_8_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_8_200_location`;
CREATE TABLE `DSG_8_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_8_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_8_400_adjacency`;
CREATE TABLE `DSG_8_400_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_8_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_8_400_location`;
CREATE TABLE `DSG_8_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_8_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_8_600_adjacency`;
CREATE TABLE `DSG_8_600_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_8_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_8_600_location`;
CREATE TABLE `DSG_8_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_8_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_8_800_adjacency`;
CREATE TABLE `DSG_8_800_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_8_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_8_800_location`;
CREATE TABLE `DSG_8_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_9_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_9_1000_adjacency`;
CREATE TABLE `DSG_9_1000_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_9_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_9_1000_location`;
CREATE TABLE `DSG_9_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_9_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_9_200_adjacency`;
CREATE TABLE `DSG_9_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_9_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_9_200_location`;
CREATE TABLE `DSG_9_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_9_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_9_400_adjacency`;
CREATE TABLE `DSG_9_400_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_9_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_9_400_location`;
CREATE TABLE `DSG_9_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_9_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_9_600_adjacency`;
CREATE TABLE `DSG_9_600_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_9_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_9_600_location`;
CREATE TABLE `DSG_9_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_9_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_9_800_adjacency`;
CREATE TABLE `DSG_9_800_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_9_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_9_800_location`;
CREATE TABLE `DSG_9_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_10_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_10_1000_adjacency`;
CREATE TABLE `DSG_DP_10_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_10_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_10_1000_location`;
CREATE TABLE `DSG_DP_10_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_10_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_10_200_adjacency`;
CREATE TABLE `DSG_DP_10_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_10_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_10_200_location`;
CREATE TABLE `DSG_DP_10_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_10_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_10_400_adjacency`;
CREATE TABLE `DSG_DP_10_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_10_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_10_400_location`;
CREATE TABLE `DSG_DP_10_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_10_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_10_600_adjacency`;
CREATE TABLE `DSG_DP_10_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_10_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_10_600_location`;
CREATE TABLE `DSG_DP_10_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_10_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_10_800_adjacency`;
CREATE TABLE `DSG_DP_10_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_10_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_10_800_location`;
CREATE TABLE `DSG_DP_10_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_1_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_1_1000_adjacency`;
CREATE TABLE `DSG_DP_1_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_1_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_1_1000_location`;
CREATE TABLE `DSG_DP_1_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_1_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_1_200_adjacency`;
CREATE TABLE `DSG_DP_1_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_1_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_1_200_location`;
CREATE TABLE `DSG_DP_1_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_1_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_1_400_adjacency`;
CREATE TABLE `DSG_DP_1_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_1_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_1_400_location`;
CREATE TABLE `DSG_DP_1_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_1_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_1_600_adjacency`;
CREATE TABLE `DSG_DP_1_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_1_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_1_600_location`;
CREATE TABLE `DSG_DP_1_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_1_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_1_800_adjacency`;
CREATE TABLE `DSG_DP_1_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_1_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_1_800_location`;
CREATE TABLE `DSG_DP_1_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_2_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_2_1000_adjacency`;
CREATE TABLE `DSG_DP_2_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_2_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_2_1000_location`;
CREATE TABLE `DSG_DP_2_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_2_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_2_200_adjacency`;
CREATE TABLE `DSG_DP_2_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_2_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_2_200_location`;
CREATE TABLE `DSG_DP_2_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_2_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_2_400_adjacency`;
CREATE TABLE `DSG_DP_2_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_2_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_2_400_location`;
CREATE TABLE `DSG_DP_2_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_2_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_2_600_adjacency`;
CREATE TABLE `DSG_DP_2_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_2_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_2_600_location`;
CREATE TABLE `DSG_DP_2_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_2_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_2_800_adjacency`;
CREATE TABLE `DSG_DP_2_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_2_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_2_800_location`;
CREATE TABLE `DSG_DP_2_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_3_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_3_1000_adjacency`;
CREATE TABLE `DSG_DP_3_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_3_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_3_1000_location`;
CREATE TABLE `DSG_DP_3_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_3_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_3_200_adjacency`;
CREATE TABLE `DSG_DP_3_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_3_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_3_200_location`;
CREATE TABLE `DSG_DP_3_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_3_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_3_400_adjacency`;
CREATE TABLE `DSG_DP_3_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_3_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_3_400_location`;
CREATE TABLE `DSG_DP_3_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_3_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_3_600_adjacency`;
CREATE TABLE `DSG_DP_3_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_3_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_3_600_location`;
CREATE TABLE `DSG_DP_3_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_3_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_3_800_adjacency`;
CREATE TABLE `DSG_DP_3_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_3_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_3_800_location`;
CREATE TABLE `DSG_DP_3_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_4_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_4_1000_adjacency`;
CREATE TABLE `DSG_DP_4_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_4_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_4_1000_location`;
CREATE TABLE `DSG_DP_4_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_4_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_4_200_adjacency`;
CREATE TABLE `DSG_DP_4_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_4_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_4_200_location`;
CREATE TABLE `DSG_DP_4_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_4_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_4_400_adjacency`;
CREATE TABLE `DSG_DP_4_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_4_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_4_400_location`;
CREATE TABLE `DSG_DP_4_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_4_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_4_600_adjacency`;
CREATE TABLE `DSG_DP_4_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_4_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_4_600_location`;
CREATE TABLE `DSG_DP_4_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_4_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_4_800_adjacency`;
CREATE TABLE `DSG_DP_4_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_4_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_4_800_location`;
CREATE TABLE `DSG_DP_4_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_5_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_5_1000_adjacency`;
CREATE TABLE `DSG_DP_5_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_5_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_5_1000_location`;
CREATE TABLE `DSG_DP_5_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_5_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_5_200_adjacency`;
CREATE TABLE `DSG_DP_5_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_5_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_5_200_location`;
CREATE TABLE `DSG_DP_5_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_5_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_5_400_adjacency`;
CREATE TABLE `DSG_DP_5_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_5_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_5_400_location`;
CREATE TABLE `DSG_DP_5_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_5_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_5_600_adjacency`;
CREATE TABLE `DSG_DP_5_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_5_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_5_600_location`;
CREATE TABLE `DSG_DP_5_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_5_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_5_800_adjacency`;
CREATE TABLE `DSG_DP_5_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_5_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_5_800_location`;
CREATE TABLE `DSG_DP_5_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_6_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_6_1000_adjacency`;
CREATE TABLE `DSG_DP_6_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_6_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_6_1000_location`;
CREATE TABLE `DSG_DP_6_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_6_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_6_200_adjacency`;
CREATE TABLE `DSG_DP_6_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_6_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_6_200_location`;
CREATE TABLE `DSG_DP_6_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_6_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_6_400_adjacency`;
CREATE TABLE `DSG_DP_6_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_6_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_6_400_location`;
CREATE TABLE `DSG_DP_6_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_6_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_6_600_adjacency`;
CREATE TABLE `DSG_DP_6_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_6_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_6_600_location`;
CREATE TABLE `DSG_DP_6_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_6_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_6_800_adjacency`;
CREATE TABLE `DSG_DP_6_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_6_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_6_800_location`;
CREATE TABLE `DSG_DP_6_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_7_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_7_1000_adjacency`;
CREATE TABLE `DSG_DP_7_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_7_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_7_1000_location`;
CREATE TABLE `DSG_DP_7_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_7_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_7_200_adjacency`;
CREATE TABLE `DSG_DP_7_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_7_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_7_200_location`;
CREATE TABLE `DSG_DP_7_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_7_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_7_400_adjacency`;
CREATE TABLE `DSG_DP_7_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_7_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_7_400_location`;
CREATE TABLE `DSG_DP_7_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_7_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_7_600_adjacency`;
CREATE TABLE `DSG_DP_7_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_7_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_7_600_location`;
CREATE TABLE `DSG_DP_7_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_7_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_7_800_adjacency`;
CREATE TABLE `DSG_DP_7_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_7_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_7_800_location`;
CREATE TABLE `DSG_DP_7_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_8_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_8_1000_adjacency`;
CREATE TABLE `DSG_DP_8_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_8_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_8_1000_location`;
CREATE TABLE `DSG_DP_8_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_8_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_8_200_adjacency`;
CREATE TABLE `DSG_DP_8_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_8_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_8_200_location`;
CREATE TABLE `DSG_DP_8_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_8_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_8_400_adjacency`;
CREATE TABLE `DSG_DP_8_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_8_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_8_400_location`;
CREATE TABLE `DSG_DP_8_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_8_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_8_600_adjacency`;
CREATE TABLE `DSG_DP_8_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_8_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_8_600_location`;
CREATE TABLE `DSG_DP_8_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_8_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_8_800_adjacency`;
CREATE TABLE `DSG_DP_8_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_8_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_8_800_location`;
CREATE TABLE `DSG_DP_8_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_9_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_9_1000_adjacency`;
CREATE TABLE `DSG_DP_9_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_9_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_9_1000_location`;
CREATE TABLE `DSG_DP_9_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_9_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_9_200_adjacency`;
CREATE TABLE `DSG_DP_9_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_9_200_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_9_200_location`;
CREATE TABLE `DSG_DP_9_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_9_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_9_400_adjacency`;
CREATE TABLE `DSG_DP_9_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_9_400_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_9_400_location`;
CREATE TABLE `DSG_DP_9_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_9_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_9_600_adjacency`;
CREATE TABLE `DSG_DP_9_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_9_600_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_9_600_location`;
CREATE TABLE `DSG_DP_9_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_9_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_9_800_adjacency`;
CREATE TABLE `DSG_DP_9_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for DSG_DP_9_800_location
-- ----------------------------
DROP TABLE IF EXISTS `DSG_DP_9_800_location`;
CREATE TABLE `DSG_DP_9_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_10_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_10_1000_adjacency`;
CREATE TABLE `HSB_10_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_10_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_10_1000_location`;
CREATE TABLE `HSB_10_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_10_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_10_200_adjacency`;
CREATE TABLE `HSB_10_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_10_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_10_200_location`;
CREATE TABLE `HSB_10_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_10_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_10_400_adjacency`;
CREATE TABLE `HSB_10_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_10_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_10_400_location`;
CREATE TABLE `HSB_10_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_10_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_10_600_adjacency`;
CREATE TABLE `HSB_10_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_10_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_10_600_location`;
CREATE TABLE `HSB_10_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_10_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_10_800_adjacency`;
CREATE TABLE `HSB_10_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_10_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_10_800_location`;
CREATE TABLE `HSB_10_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_1_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_1_1000_adjacency`;
CREATE TABLE `HSB_1_1000_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_1_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_1_1000_location`;
CREATE TABLE `HSB_1_1000_location`  (
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL,
  `id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_1_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_1_200_adjacency`;
CREATE TABLE `HSB_1_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_1_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_1_200_location`;
CREATE TABLE `HSB_1_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_1_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_1_400_adjacency`;
CREATE TABLE `HSB_1_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_1_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_1_400_location`;
CREATE TABLE `HSB_1_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_1_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_1_600_adjacency`;
CREATE TABLE `HSB_1_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_1_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_1_600_location`;
CREATE TABLE `HSB_1_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_1_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_1_800_adjacency`;
CREATE TABLE `HSB_1_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_1_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_1_800_location`;
CREATE TABLE `HSB_1_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_2_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_2_1000_adjacency`;
CREATE TABLE `HSB_2_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_2_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_2_1000_location`;
CREATE TABLE `HSB_2_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_2_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_2_200_adjacency`;
CREATE TABLE `HSB_2_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_2_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_2_200_location`;
CREATE TABLE `HSB_2_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_2_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_2_400_adjacency`;
CREATE TABLE `HSB_2_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_2_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_2_400_location`;
CREATE TABLE `HSB_2_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_2_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_2_600_adjacency`;
CREATE TABLE `HSB_2_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_2_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_2_600_location`;
CREATE TABLE `HSB_2_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_2_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_2_800_adjacency`;
CREATE TABLE `HSB_2_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_2_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_2_800_location`;
CREATE TABLE `HSB_2_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_3_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_3_1000_adjacency`;
CREATE TABLE `HSB_3_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_3_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_3_1000_location`;
CREATE TABLE `HSB_3_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_3_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_3_200_adjacency`;
CREATE TABLE `HSB_3_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_3_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_3_200_location`;
CREATE TABLE `HSB_3_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_3_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_3_400_adjacency`;
CREATE TABLE `HSB_3_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_3_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_3_400_location`;
CREATE TABLE `HSB_3_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_3_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_3_600_adjacency`;
CREATE TABLE `HSB_3_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_3_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_3_600_location`;
CREATE TABLE `HSB_3_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_3_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_3_800_adjacency`;
CREATE TABLE `HSB_3_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_3_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_3_800_location`;
CREATE TABLE `HSB_3_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_4_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_4_1000_adjacency`;
CREATE TABLE `HSB_4_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_4_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_4_1000_location`;
CREATE TABLE `HSB_4_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_4_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_4_200_adjacency`;
CREATE TABLE `HSB_4_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_4_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_4_200_location`;
CREATE TABLE `HSB_4_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_4_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_4_400_adjacency`;
CREATE TABLE `HSB_4_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_4_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_4_400_location`;
CREATE TABLE `HSB_4_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_4_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_4_600_adjacency`;
CREATE TABLE `HSB_4_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_4_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_4_600_location`;
CREATE TABLE `HSB_4_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_4_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_4_800_adjacency`;
CREATE TABLE `HSB_4_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_4_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_4_800_location`;
CREATE TABLE `HSB_4_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_5_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_5_1000_adjacency`;
CREATE TABLE `HSB_5_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_5_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_5_1000_location`;
CREATE TABLE `HSB_5_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_5_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_5_200_adjacency`;
CREATE TABLE `HSB_5_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_5_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_5_200_location`;
CREATE TABLE `HSB_5_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_5_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_5_400_adjacency`;
CREATE TABLE `HSB_5_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_5_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_5_400_location`;
CREATE TABLE `HSB_5_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_5_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_5_600_adjacency`;
CREATE TABLE `HSB_5_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_5_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_5_600_location`;
CREATE TABLE `HSB_5_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_5_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_5_800_adjacency`;
CREATE TABLE `HSB_5_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_5_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_5_800_location`;
CREATE TABLE `HSB_5_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_6_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_6_1000_adjacency`;
CREATE TABLE `HSB_6_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_6_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_6_1000_location`;
CREATE TABLE `HSB_6_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_6_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_6_200_adjacency`;
CREATE TABLE `HSB_6_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_6_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_6_200_location`;
CREATE TABLE `HSB_6_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_6_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_6_400_adjacency`;
CREATE TABLE `HSB_6_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_6_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_6_400_location`;
CREATE TABLE `HSB_6_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_6_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_6_600_adjacency`;
CREATE TABLE `HSB_6_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_6_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_6_600_location`;
CREATE TABLE `HSB_6_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_6_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_6_800_adjacency`;
CREATE TABLE `HSB_6_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_6_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_6_800_location`;
CREATE TABLE `HSB_6_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_7_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_7_1000_adjacency`;
CREATE TABLE `HSB_7_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_7_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_7_1000_location`;
CREATE TABLE `HSB_7_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_7_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_7_200_adjacency`;
CREATE TABLE `HSB_7_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_7_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_7_200_location`;
CREATE TABLE `HSB_7_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_7_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_7_400_adjacency`;
CREATE TABLE `HSB_7_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_7_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_7_400_location`;
CREATE TABLE `HSB_7_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_7_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_7_600_adjacency`;
CREATE TABLE `HSB_7_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_7_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_7_600_location`;
CREATE TABLE `HSB_7_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_7_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_7_800_adjacency`;
CREATE TABLE `HSB_7_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_7_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_7_800_location`;
CREATE TABLE `HSB_7_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_8_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_8_1000_adjacency`;
CREATE TABLE `HSB_8_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_8_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_8_1000_location`;
CREATE TABLE `HSB_8_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_8_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_8_200_adjacency`;
CREATE TABLE `HSB_8_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_8_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_8_200_location`;
CREATE TABLE `HSB_8_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_8_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_8_400_adjacency`;
CREATE TABLE `HSB_8_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_8_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_8_400_location`;
CREATE TABLE `HSB_8_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_8_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_8_600_adjacency`;
CREATE TABLE `HSB_8_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_8_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_8_600_location`;
CREATE TABLE `HSB_8_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_8_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_8_800_adjacency`;
CREATE TABLE `HSB_8_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_8_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_8_800_location`;
CREATE TABLE `HSB_8_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_9_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_9_1000_adjacency`;
CREATE TABLE `HSB_9_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_9_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_9_1000_location`;
CREATE TABLE `HSB_9_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_9_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_9_200_adjacency`;
CREATE TABLE `HSB_9_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_9_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_9_200_location`;
CREATE TABLE `HSB_9_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_9_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_9_400_adjacency`;
CREATE TABLE `HSB_9_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_9_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_9_400_location`;
CREATE TABLE `HSB_9_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_9_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_9_600_adjacency`;
CREATE TABLE `HSB_9_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_9_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_9_600_location`;
CREATE TABLE `HSB_9_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_9_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_9_800_adjacency`;
CREATE TABLE `HSB_9_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_9_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_9_800_location`;
CREATE TABLE `HSB_9_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_10_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_10_1000_adjacency`;
CREATE TABLE `HSB_DP_10_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_10_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_10_1000_location`;
CREATE TABLE `HSB_DP_10_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_10_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_10_200_adjacency`;
CREATE TABLE `HSB_DP_10_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_10_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_10_200_location`;
CREATE TABLE `HSB_DP_10_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_10_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_10_400_adjacency`;
CREATE TABLE `HSB_DP_10_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_10_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_10_400_location`;
CREATE TABLE `HSB_DP_10_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_10_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_10_600_adjacency`;
CREATE TABLE `HSB_DP_10_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_10_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_10_600_location`;
CREATE TABLE `HSB_DP_10_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_10_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_10_800_adjacency`;
CREATE TABLE `HSB_DP_10_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_10_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_10_800_location`;
CREATE TABLE `HSB_DP_10_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_1_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_1_1000_adjacency`;
CREATE TABLE `HSB_DP_1_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_1_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_1_1000_location`;
CREATE TABLE `HSB_DP_1_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_1_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_1_200_adjacency`;
CREATE TABLE `HSB_DP_1_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_1_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_1_200_location`;
CREATE TABLE `HSB_DP_1_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_1_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_1_400_adjacency`;
CREATE TABLE `HSB_DP_1_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_1_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_1_400_location`;
CREATE TABLE `HSB_DP_1_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_1_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_1_600_adjacency`;
CREATE TABLE `HSB_DP_1_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_1_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_1_600_location`;
CREATE TABLE `HSB_DP_1_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_1_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_1_800_adjacency`;
CREATE TABLE `HSB_DP_1_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_1_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_1_800_location`;
CREATE TABLE `HSB_DP_1_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_2_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_2_1000_adjacency`;
CREATE TABLE `HSB_DP_2_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_2_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_2_1000_location`;
CREATE TABLE `HSB_DP_2_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_2_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_2_200_adjacency`;
CREATE TABLE `HSB_DP_2_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_2_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_2_200_location`;
CREATE TABLE `HSB_DP_2_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_2_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_2_400_adjacency`;
CREATE TABLE `HSB_DP_2_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_2_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_2_400_location`;
CREATE TABLE `HSB_DP_2_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_2_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_2_600_adjacency`;
CREATE TABLE `HSB_DP_2_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_2_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_2_600_location`;
CREATE TABLE `HSB_DP_2_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_2_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_2_800_adjacency`;
CREATE TABLE `HSB_DP_2_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_2_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_2_800_location`;
CREATE TABLE `HSB_DP_2_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_3_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_3_1000_adjacency`;
CREATE TABLE `HSB_DP_3_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_3_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_3_1000_location`;
CREATE TABLE `HSB_DP_3_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_3_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_3_200_adjacency`;
CREATE TABLE `HSB_DP_3_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_3_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_3_200_location`;
CREATE TABLE `HSB_DP_3_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_3_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_3_400_adjacency`;
CREATE TABLE `HSB_DP_3_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_3_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_3_400_location`;
CREATE TABLE `HSB_DP_3_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_3_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_3_600_adjacency`;
CREATE TABLE `HSB_DP_3_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_3_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_3_600_location`;
CREATE TABLE `HSB_DP_3_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_3_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_3_800_adjacency`;
CREATE TABLE `HSB_DP_3_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_3_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_3_800_location`;
CREATE TABLE `HSB_DP_3_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_4_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_4_1000_adjacency`;
CREATE TABLE `HSB_DP_4_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_4_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_4_1000_location`;
CREATE TABLE `HSB_DP_4_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_4_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_4_200_adjacency`;
CREATE TABLE `HSB_DP_4_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_4_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_4_200_location`;
CREATE TABLE `HSB_DP_4_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_4_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_4_400_adjacency`;
CREATE TABLE `HSB_DP_4_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_4_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_4_400_location`;
CREATE TABLE `HSB_DP_4_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_4_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_4_600_adjacency`;
CREATE TABLE `HSB_DP_4_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_4_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_4_600_location`;
CREATE TABLE `HSB_DP_4_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_4_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_4_800_adjacency`;
CREATE TABLE `HSB_DP_4_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_4_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_4_800_location`;
CREATE TABLE `HSB_DP_4_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_5_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_5_1000_adjacency`;
CREATE TABLE `HSB_DP_5_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_5_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_5_1000_location`;
CREATE TABLE `HSB_DP_5_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_5_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_5_200_adjacency`;
CREATE TABLE `HSB_DP_5_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_5_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_5_200_location`;
CREATE TABLE `HSB_DP_5_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_5_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_5_400_adjacency`;
CREATE TABLE `HSB_DP_5_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_5_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_5_400_location`;
CREATE TABLE `HSB_DP_5_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_5_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_5_600_adjacency`;
CREATE TABLE `HSB_DP_5_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_5_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_5_600_location`;
CREATE TABLE `HSB_DP_5_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_5_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_5_800_adjacency`;
CREATE TABLE `HSB_DP_5_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_5_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_5_800_location`;
CREATE TABLE `HSB_DP_5_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_6_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_6_1000_adjacency`;
CREATE TABLE `HSB_DP_6_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_6_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_6_1000_location`;
CREATE TABLE `HSB_DP_6_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_6_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_6_200_adjacency`;
CREATE TABLE `HSB_DP_6_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_6_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_6_200_location`;
CREATE TABLE `HSB_DP_6_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_6_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_6_400_adjacency`;
CREATE TABLE `HSB_DP_6_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_6_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_6_400_location`;
CREATE TABLE `HSB_DP_6_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_6_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_6_600_adjacency`;
CREATE TABLE `HSB_DP_6_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_6_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_6_600_location`;
CREATE TABLE `HSB_DP_6_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_6_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_6_800_adjacency`;
CREATE TABLE `HSB_DP_6_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_6_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_6_800_location`;
CREATE TABLE `HSB_DP_6_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_7_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_7_1000_adjacency`;
CREATE TABLE `HSB_DP_7_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_7_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_7_1000_location`;
CREATE TABLE `HSB_DP_7_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_7_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_7_200_adjacency`;
CREATE TABLE `HSB_DP_7_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_7_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_7_200_location`;
CREATE TABLE `HSB_DP_7_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_7_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_7_400_adjacency`;
CREATE TABLE `HSB_DP_7_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_7_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_7_400_location`;
CREATE TABLE `HSB_DP_7_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_7_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_7_600_adjacency`;
CREATE TABLE `HSB_DP_7_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_7_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_7_600_location`;
CREATE TABLE `HSB_DP_7_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_7_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_7_800_adjacency`;
CREATE TABLE `HSB_DP_7_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_7_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_7_800_location`;
CREATE TABLE `HSB_DP_7_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_8_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_8_1000_adjacency`;
CREATE TABLE `HSB_DP_8_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_8_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_8_1000_location`;
CREATE TABLE `HSB_DP_8_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_8_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_8_200_adjacency`;
CREATE TABLE `HSB_DP_8_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_8_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_8_200_location`;
CREATE TABLE `HSB_DP_8_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_8_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_8_400_adjacency`;
CREATE TABLE `HSB_DP_8_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_8_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_8_400_location`;
CREATE TABLE `HSB_DP_8_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_8_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_8_600_adjacency`;
CREATE TABLE `HSB_DP_8_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_8_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_8_600_location`;
CREATE TABLE `HSB_DP_8_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_8_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_8_800_adjacency`;
CREATE TABLE `HSB_DP_8_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_8_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_8_800_location`;
CREATE TABLE `HSB_DP_8_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_9_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_9_1000_adjacency`;
CREATE TABLE `HSB_DP_9_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_9_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_9_1000_location`;
CREATE TABLE `HSB_DP_9_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_9_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_9_200_adjacency`;
CREATE TABLE `HSB_DP_9_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_9_200_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_9_200_location`;
CREATE TABLE `HSB_DP_9_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_9_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_9_400_adjacency`;
CREATE TABLE `HSB_DP_9_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_9_400_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_9_400_location`;
CREATE TABLE `HSB_DP_9_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_9_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_9_600_adjacency`;
CREATE TABLE `HSB_DP_9_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_9_600_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_9_600_location`;
CREATE TABLE `HSB_DP_9_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_9_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_9_800_adjacency`;
CREATE TABLE `HSB_DP_9_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for HSB_DP_9_800_location
-- ----------------------------
DROP TABLE IF EXISTS `HSB_DP_9_800_location`;
CREATE TABLE `HSB_DP_9_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_10_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_10_1000_adjacency`;
CREATE TABLE `MWMS_J_10_1000_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_10_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_10_1000_location`;
CREATE TABLE `MWMS_J_10_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_10_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_10_200_adjacency`;
CREATE TABLE `MWMS_J_10_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_10_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_10_200_location`;
CREATE TABLE `MWMS_J_10_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_10_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_10_400_adjacency`;
CREATE TABLE `MWMS_J_10_400_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_10_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_10_400_location`;
CREATE TABLE `MWMS_J_10_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_10_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_10_600_adjacency`;
CREATE TABLE `MWMS_J_10_600_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_10_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_10_600_location`;
CREATE TABLE `MWMS_J_10_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_10_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_10_800_adjacency`;
CREATE TABLE `MWMS_J_10_800_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_10_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_10_800_location`;
CREATE TABLE `MWMS_J_10_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_1_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_1_1000_adjacency`;
CREATE TABLE `MWMS_J_1_1000_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_1_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_1_1000_location`;
CREATE TABLE `MWMS_J_1_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_1_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_1_200_adjacency`;
CREATE TABLE `MWMS_J_1_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_1_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_1_200_location`;
CREATE TABLE `MWMS_J_1_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_1_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_1_400_adjacency`;
CREATE TABLE `MWMS_J_1_400_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_1_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_1_400_location`;
CREATE TABLE `MWMS_J_1_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_1_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_1_600_adjacency`;
CREATE TABLE `MWMS_J_1_600_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_1_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_1_600_location`;
CREATE TABLE `MWMS_J_1_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_1_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_1_800_adjacency`;
CREATE TABLE `MWMS_J_1_800_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_1_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_1_800_location`;
CREATE TABLE `MWMS_J_1_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_2_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_2_1000_adjacency`;
CREATE TABLE `MWMS_J_2_1000_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_2_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_2_1000_location`;
CREATE TABLE `MWMS_J_2_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_2_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_2_200_adjacency`;
CREATE TABLE `MWMS_J_2_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_2_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_2_200_location`;
CREATE TABLE `MWMS_J_2_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_2_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_2_400_adjacency`;
CREATE TABLE `MWMS_J_2_400_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_2_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_2_400_location`;
CREATE TABLE `MWMS_J_2_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_2_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_2_600_adjacency`;
CREATE TABLE `MWMS_J_2_600_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_2_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_2_600_location`;
CREATE TABLE `MWMS_J_2_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_2_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_2_800_adjacency`;
CREATE TABLE `MWMS_J_2_800_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_2_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_2_800_location`;
CREATE TABLE `MWMS_J_2_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_3_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_3_1000_adjacency`;
CREATE TABLE `MWMS_J_3_1000_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_3_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_3_1000_location`;
CREATE TABLE `MWMS_J_3_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_3_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_3_200_adjacency`;
CREATE TABLE `MWMS_J_3_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_3_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_3_200_location`;
CREATE TABLE `MWMS_J_3_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_3_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_3_400_adjacency`;
CREATE TABLE `MWMS_J_3_400_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_3_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_3_400_location`;
CREATE TABLE `MWMS_J_3_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_3_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_3_600_adjacency`;
CREATE TABLE `MWMS_J_3_600_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_3_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_3_600_location`;
CREATE TABLE `MWMS_J_3_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_3_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_3_800_adjacency`;
CREATE TABLE `MWMS_J_3_800_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_3_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_3_800_location`;
CREATE TABLE `MWMS_J_3_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_4_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_4_1000_adjacency`;
CREATE TABLE `MWMS_J_4_1000_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_4_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_4_1000_location`;
CREATE TABLE `MWMS_J_4_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_4_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_4_200_adjacency`;
CREATE TABLE `MWMS_J_4_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_4_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_4_200_location`;
CREATE TABLE `MWMS_J_4_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_4_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_4_400_adjacency`;
CREATE TABLE `MWMS_J_4_400_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_4_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_4_400_location`;
CREATE TABLE `MWMS_J_4_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_4_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_4_600_adjacency`;
CREATE TABLE `MWMS_J_4_600_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_4_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_4_600_location`;
CREATE TABLE `MWMS_J_4_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_4_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_4_800_adjacency`;
CREATE TABLE `MWMS_J_4_800_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_4_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_4_800_location`;
CREATE TABLE `MWMS_J_4_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_5_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_5_1000_adjacency`;
CREATE TABLE `MWMS_J_5_1000_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_5_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_5_1000_location`;
CREATE TABLE `MWMS_J_5_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_5_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_5_200_adjacency`;
CREATE TABLE `MWMS_J_5_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_5_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_5_200_location`;
CREATE TABLE `MWMS_J_5_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_5_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_5_400_adjacency`;
CREATE TABLE `MWMS_J_5_400_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_5_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_5_400_location`;
CREATE TABLE `MWMS_J_5_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_5_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_5_600_adjacency`;
CREATE TABLE `MWMS_J_5_600_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_5_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_5_600_location`;
CREATE TABLE `MWMS_J_5_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_5_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_5_800_adjacency`;
CREATE TABLE `MWMS_J_5_800_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_5_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_5_800_location`;
CREATE TABLE `MWMS_J_5_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_6_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_6_1000_adjacency`;
CREATE TABLE `MWMS_J_6_1000_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_6_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_6_1000_location`;
CREATE TABLE `MWMS_J_6_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_6_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_6_200_adjacency`;
CREATE TABLE `MWMS_J_6_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_6_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_6_200_location`;
CREATE TABLE `MWMS_J_6_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_6_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_6_400_adjacency`;
CREATE TABLE `MWMS_J_6_400_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_6_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_6_400_location`;
CREATE TABLE `MWMS_J_6_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_6_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_6_600_adjacency`;
CREATE TABLE `MWMS_J_6_600_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_6_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_6_600_location`;
CREATE TABLE `MWMS_J_6_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_6_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_6_800_adjacency`;
CREATE TABLE `MWMS_J_6_800_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_6_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_6_800_location`;
CREATE TABLE `MWMS_J_6_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_7_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_7_1000_adjacency`;
CREATE TABLE `MWMS_J_7_1000_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_7_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_7_1000_location`;
CREATE TABLE `MWMS_J_7_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_7_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_7_200_adjacency`;
CREATE TABLE `MWMS_J_7_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_7_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_7_200_location`;
CREATE TABLE `MWMS_J_7_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_7_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_7_400_adjacency`;
CREATE TABLE `MWMS_J_7_400_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_7_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_7_400_location`;
CREATE TABLE `MWMS_J_7_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_7_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_7_600_adjacency`;
CREATE TABLE `MWMS_J_7_600_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_7_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_7_600_location`;
CREATE TABLE `MWMS_J_7_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_7_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_7_800_adjacency`;
CREATE TABLE `MWMS_J_7_800_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_7_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_7_800_location`;
CREATE TABLE `MWMS_J_7_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_8_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_8_1000_adjacency`;
CREATE TABLE `MWMS_J_8_1000_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_8_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_8_1000_location`;
CREATE TABLE `MWMS_J_8_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_8_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_8_200_adjacency`;
CREATE TABLE `MWMS_J_8_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_8_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_8_200_location`;
CREATE TABLE `MWMS_J_8_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_8_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_8_400_adjacency`;
CREATE TABLE `MWMS_J_8_400_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_8_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_8_400_location`;
CREATE TABLE `MWMS_J_8_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_8_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_8_600_adjacency`;
CREATE TABLE `MWMS_J_8_600_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_8_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_8_600_location`;
CREATE TABLE `MWMS_J_8_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_8_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_8_800_adjacency`;
CREATE TABLE `MWMS_J_8_800_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_8_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_8_800_location`;
CREATE TABLE `MWMS_J_8_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_9_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_9_1000_adjacency`;
CREATE TABLE `MWMS_J_9_1000_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_9_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_9_1000_location`;
CREATE TABLE `MWMS_J_9_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_9_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_9_200_adjacency`;
CREATE TABLE `MWMS_J_9_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_9_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_9_200_location`;
CREATE TABLE `MWMS_J_9_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_9_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_9_400_adjacency`;
CREATE TABLE `MWMS_J_9_400_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_9_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_9_400_location`;
CREATE TABLE `MWMS_J_9_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_9_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_9_600_adjacency`;
CREATE TABLE `MWMS_J_9_600_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_9_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_9_600_location`;
CREATE TABLE `MWMS_J_9_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_9_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_9_800_adjacency`;
CREATE TABLE `MWMS_J_9_800_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_9_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_9_800_location`;
CREATE TABLE `MWMS_J_9_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_10_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_10_1000_adjacency`;
CREATE TABLE `MWMS_J_DP_10_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_10_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_10_1000_location`;
CREATE TABLE `MWMS_J_DP_10_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_10_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_10_200_adjacency`;
CREATE TABLE `MWMS_J_DP_10_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_10_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_10_200_location`;
CREATE TABLE `MWMS_J_DP_10_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_10_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_10_400_adjacency`;
CREATE TABLE `MWMS_J_DP_10_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_10_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_10_400_location`;
CREATE TABLE `MWMS_J_DP_10_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_10_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_10_600_adjacency`;
CREATE TABLE `MWMS_J_DP_10_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_10_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_10_600_location`;
CREATE TABLE `MWMS_J_DP_10_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_10_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_10_800_adjacency`;
CREATE TABLE `MWMS_J_DP_10_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_10_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_10_800_location`;
CREATE TABLE `MWMS_J_DP_10_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_1_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_1_1000_adjacency`;
CREATE TABLE `MWMS_J_DP_1_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_1_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_1_1000_location`;
CREATE TABLE `MWMS_J_DP_1_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_1_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_1_200_adjacency`;
CREATE TABLE `MWMS_J_DP_1_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_1_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_1_200_location`;
CREATE TABLE `MWMS_J_DP_1_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_1_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_1_400_adjacency`;
CREATE TABLE `MWMS_J_DP_1_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_1_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_1_400_location`;
CREATE TABLE `MWMS_J_DP_1_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_1_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_1_600_adjacency`;
CREATE TABLE `MWMS_J_DP_1_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_1_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_1_600_location`;
CREATE TABLE `MWMS_J_DP_1_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_1_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_1_800_adjacency`;
CREATE TABLE `MWMS_J_DP_1_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_1_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_1_800_location`;
CREATE TABLE `MWMS_J_DP_1_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_2_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_2_1000_adjacency`;
CREATE TABLE `MWMS_J_DP_2_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_2_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_2_1000_location`;
CREATE TABLE `MWMS_J_DP_2_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_2_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_2_200_adjacency`;
CREATE TABLE `MWMS_J_DP_2_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_2_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_2_200_location`;
CREATE TABLE `MWMS_J_DP_2_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_2_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_2_400_adjacency`;
CREATE TABLE `MWMS_J_DP_2_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_2_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_2_400_location`;
CREATE TABLE `MWMS_J_DP_2_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_2_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_2_600_adjacency`;
CREATE TABLE `MWMS_J_DP_2_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_2_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_2_600_location`;
CREATE TABLE `MWMS_J_DP_2_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_2_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_2_800_adjacency`;
CREATE TABLE `MWMS_J_DP_2_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_2_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_2_800_location`;
CREATE TABLE `MWMS_J_DP_2_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_3_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_3_1000_adjacency`;
CREATE TABLE `MWMS_J_DP_3_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_3_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_3_1000_location`;
CREATE TABLE `MWMS_J_DP_3_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_3_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_3_200_adjacency`;
CREATE TABLE `MWMS_J_DP_3_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_3_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_3_200_location`;
CREATE TABLE `MWMS_J_DP_3_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_3_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_3_400_adjacency`;
CREATE TABLE `MWMS_J_DP_3_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_3_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_3_400_location`;
CREATE TABLE `MWMS_J_DP_3_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_3_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_3_600_adjacency`;
CREATE TABLE `MWMS_J_DP_3_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_3_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_3_600_location`;
CREATE TABLE `MWMS_J_DP_3_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_3_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_3_800_adjacency`;
CREATE TABLE `MWMS_J_DP_3_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_3_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_3_800_location`;
CREATE TABLE `MWMS_J_DP_3_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_4_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_4_1000_adjacency`;
CREATE TABLE `MWMS_J_DP_4_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_4_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_4_1000_location`;
CREATE TABLE `MWMS_J_DP_4_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_4_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_4_200_adjacency`;
CREATE TABLE `MWMS_J_DP_4_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_4_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_4_200_location`;
CREATE TABLE `MWMS_J_DP_4_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_4_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_4_400_adjacency`;
CREATE TABLE `MWMS_J_DP_4_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_4_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_4_400_location`;
CREATE TABLE `MWMS_J_DP_4_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_4_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_4_600_adjacency`;
CREATE TABLE `MWMS_J_DP_4_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_4_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_4_600_location`;
CREATE TABLE `MWMS_J_DP_4_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_4_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_4_800_adjacency`;
CREATE TABLE `MWMS_J_DP_4_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_4_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_4_800_location`;
CREATE TABLE `MWMS_J_DP_4_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_5_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_5_1000_adjacency`;
CREATE TABLE `MWMS_J_DP_5_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_5_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_5_1000_location`;
CREATE TABLE `MWMS_J_DP_5_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_5_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_5_200_adjacency`;
CREATE TABLE `MWMS_J_DP_5_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_5_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_5_200_location`;
CREATE TABLE `MWMS_J_DP_5_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_5_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_5_400_adjacency`;
CREATE TABLE `MWMS_J_DP_5_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_5_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_5_400_location`;
CREATE TABLE `MWMS_J_DP_5_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_5_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_5_600_adjacency`;
CREATE TABLE `MWMS_J_DP_5_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_5_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_5_600_location`;
CREATE TABLE `MWMS_J_DP_5_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_5_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_5_800_adjacency`;
CREATE TABLE `MWMS_J_DP_5_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_5_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_5_800_location`;
CREATE TABLE `MWMS_J_DP_5_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_6_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_6_1000_adjacency`;
CREATE TABLE `MWMS_J_DP_6_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_6_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_6_1000_location`;
CREATE TABLE `MWMS_J_DP_6_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_6_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_6_200_adjacency`;
CREATE TABLE `MWMS_J_DP_6_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_6_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_6_200_location`;
CREATE TABLE `MWMS_J_DP_6_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_6_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_6_400_adjacency`;
CREATE TABLE `MWMS_J_DP_6_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_6_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_6_400_location`;
CREATE TABLE `MWMS_J_DP_6_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_6_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_6_600_adjacency`;
CREATE TABLE `MWMS_J_DP_6_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_6_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_6_600_location`;
CREATE TABLE `MWMS_J_DP_6_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_6_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_6_800_adjacency`;
CREATE TABLE `MWMS_J_DP_6_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_6_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_6_800_location`;
CREATE TABLE `MWMS_J_DP_6_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_7_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_7_1000_adjacency`;
CREATE TABLE `MWMS_J_DP_7_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_7_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_7_1000_location`;
CREATE TABLE `MWMS_J_DP_7_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_7_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_7_200_adjacency`;
CREATE TABLE `MWMS_J_DP_7_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_7_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_7_200_location`;
CREATE TABLE `MWMS_J_DP_7_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_7_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_7_400_adjacency`;
CREATE TABLE `MWMS_J_DP_7_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_7_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_7_400_location`;
CREATE TABLE `MWMS_J_DP_7_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_7_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_7_600_adjacency`;
CREATE TABLE `MWMS_J_DP_7_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_7_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_7_600_location`;
CREATE TABLE `MWMS_J_DP_7_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_7_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_7_800_adjacency`;
CREATE TABLE `MWMS_J_DP_7_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_7_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_7_800_location`;
CREATE TABLE `MWMS_J_DP_7_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_8_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_8_1000_adjacency`;
CREATE TABLE `MWMS_J_DP_8_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_8_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_8_1000_location`;
CREATE TABLE `MWMS_J_DP_8_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_8_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_8_200_adjacency`;
CREATE TABLE `MWMS_J_DP_8_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_8_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_8_200_location`;
CREATE TABLE `MWMS_J_DP_8_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_8_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_8_400_adjacency`;
CREATE TABLE `MWMS_J_DP_8_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_8_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_8_400_location`;
CREATE TABLE `MWMS_J_DP_8_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_8_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_8_600_adjacency`;
CREATE TABLE `MWMS_J_DP_8_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_8_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_8_600_location`;
CREATE TABLE `MWMS_J_DP_8_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_8_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_8_800_adjacency`;
CREATE TABLE `MWMS_J_DP_8_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_8_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_8_800_location`;
CREATE TABLE `MWMS_J_DP_8_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_9_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_9_1000_adjacency`;
CREATE TABLE `MWMS_J_DP_9_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_9_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_9_1000_location`;
CREATE TABLE `MWMS_J_DP_9_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_9_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_9_200_adjacency`;
CREATE TABLE `MWMS_J_DP_9_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_9_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_9_200_location`;
CREATE TABLE `MWMS_J_DP_9_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_9_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_9_400_adjacency`;
CREATE TABLE `MWMS_J_DP_9_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_9_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_9_400_location`;
CREATE TABLE `MWMS_J_DP_9_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_9_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_9_600_adjacency`;
CREATE TABLE `MWMS_J_DP_9_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_9_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_9_600_location`;
CREATE TABLE `MWMS_J_DP_9_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_9_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_9_800_adjacency`;
CREATE TABLE `MWMS_J_DP_9_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_J_DP_9_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_J_DP_9_800_location`;
CREATE TABLE `MWMS_J_DP_9_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_10_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_10_1000_adjacency`;
CREATE TABLE `MWMS_S_10_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_10_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_10_1000_location`;
CREATE TABLE `MWMS_S_10_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_10_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_10_200_adjacency`;
CREATE TABLE `MWMS_S_10_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_10_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_10_200_location`;
CREATE TABLE `MWMS_S_10_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_10_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_10_400_adjacency`;
CREATE TABLE `MWMS_S_10_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_10_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_10_400_location`;
CREATE TABLE `MWMS_S_10_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_10_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_10_600_adjacency`;
CREATE TABLE `MWMS_S_10_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_10_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_10_600_location`;
CREATE TABLE `MWMS_S_10_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_10_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_10_800_adjacency`;
CREATE TABLE `MWMS_S_10_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_10_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_10_800_location`;
CREATE TABLE `MWMS_S_10_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_1_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_1_1000_adjacency`;
CREATE TABLE `MWMS_S_1_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_1_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_1_1000_location`;
CREATE TABLE `MWMS_S_1_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_1_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_1_200_adjacency`;
CREATE TABLE `MWMS_S_1_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_1_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_1_200_location`;
CREATE TABLE `MWMS_S_1_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_1_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_1_400_adjacency`;
CREATE TABLE `MWMS_S_1_400_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_1_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_1_400_location`;
CREATE TABLE `MWMS_S_1_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_1_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_1_600_adjacency`;
CREATE TABLE `MWMS_S_1_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_1_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_1_600_location`;
CREATE TABLE `MWMS_S_1_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_1_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_1_800_adjacency`;
CREATE TABLE `MWMS_S_1_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_1_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_1_800_location`;
CREATE TABLE `MWMS_S_1_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_2_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_2_1000_adjacency`;
CREATE TABLE `MWMS_S_2_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_2_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_2_1000_location`;
CREATE TABLE `MWMS_S_2_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_2_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_2_200_adjacency`;
CREATE TABLE `MWMS_S_2_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_2_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_2_200_location`;
CREATE TABLE `MWMS_S_2_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_2_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_2_400_adjacency`;
CREATE TABLE `MWMS_S_2_400_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_2_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_2_400_location`;
CREATE TABLE `MWMS_S_2_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_2_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_2_600_adjacency`;
CREATE TABLE `MWMS_S_2_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_2_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_2_600_location`;
CREATE TABLE `MWMS_S_2_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_2_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_2_800_adjacency`;
CREATE TABLE `MWMS_S_2_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_2_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_2_800_location`;
CREATE TABLE `MWMS_S_2_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_3_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_3_1000_adjacency`;
CREATE TABLE `MWMS_S_3_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_3_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_3_1000_location`;
CREATE TABLE `MWMS_S_3_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_3_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_3_200_adjacency`;
CREATE TABLE `MWMS_S_3_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_3_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_3_200_location`;
CREATE TABLE `MWMS_S_3_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_3_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_3_400_adjacency`;
CREATE TABLE `MWMS_S_3_400_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_3_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_3_400_location`;
CREATE TABLE `MWMS_S_3_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_3_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_3_600_adjacency`;
CREATE TABLE `MWMS_S_3_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_3_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_3_600_location`;
CREATE TABLE `MWMS_S_3_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_3_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_3_800_adjacency`;
CREATE TABLE `MWMS_S_3_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_3_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_3_800_location`;
CREATE TABLE `MWMS_S_3_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_4_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_4_1000_adjacency`;
CREATE TABLE `MWMS_S_4_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_4_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_4_1000_location`;
CREATE TABLE `MWMS_S_4_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_4_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_4_200_adjacency`;
CREATE TABLE `MWMS_S_4_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_4_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_4_200_location`;
CREATE TABLE `MWMS_S_4_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_4_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_4_400_adjacency`;
CREATE TABLE `MWMS_S_4_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_4_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_4_400_location`;
CREATE TABLE `MWMS_S_4_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_4_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_4_600_adjacency`;
CREATE TABLE `MWMS_S_4_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_4_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_4_600_location`;
CREATE TABLE `MWMS_S_4_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_4_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_4_800_adjacency`;
CREATE TABLE `MWMS_S_4_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_4_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_4_800_location`;
CREATE TABLE `MWMS_S_4_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_5_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_5_1000_adjacency`;
CREATE TABLE `MWMS_S_5_1000_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_5_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_5_1000_location`;
CREATE TABLE `MWMS_S_5_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_5_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_5_200_adjacency`;
CREATE TABLE `MWMS_S_5_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_5_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_5_200_location`;
CREATE TABLE `MWMS_S_5_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_5_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_5_400_adjacency`;
CREATE TABLE `MWMS_S_5_400_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_5_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_5_400_location`;
CREATE TABLE `MWMS_S_5_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_5_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_5_600_adjacency`;
CREATE TABLE `MWMS_S_5_600_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_5_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_5_600_location`;
CREATE TABLE `MWMS_S_5_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_5_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_5_800_adjacency`;
CREATE TABLE `MWMS_S_5_800_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_5_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_5_800_location`;
CREATE TABLE `MWMS_S_5_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_6_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_6_1000_adjacency`;
CREATE TABLE `MWMS_S_6_1000_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_6_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_6_1000_location`;
CREATE TABLE `MWMS_S_6_1000_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_6_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_6_200_adjacency`;
CREATE TABLE `MWMS_S_6_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_6_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_6_200_location`;
CREATE TABLE `MWMS_S_6_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_6_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_6_400_adjacency`;
CREATE TABLE `MWMS_S_6_400_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_6_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_6_400_location`;
CREATE TABLE `MWMS_S_6_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_6_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_6_600_adjacency`;
CREATE TABLE `MWMS_S_6_600_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_6_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_6_600_location`;
CREATE TABLE `MWMS_S_6_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_6_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_6_800_adjacency`;
CREATE TABLE `MWMS_S_6_800_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_6_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_6_800_location`;
CREATE TABLE `MWMS_S_6_800_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_7_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_7_1000_adjacency`;
CREATE TABLE `MWMS_S_7_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_7_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_7_1000_location`;
CREATE TABLE `MWMS_S_7_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_7_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_7_200_adjacency`;
CREATE TABLE `MWMS_S_7_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_7_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_7_200_location`;
CREATE TABLE `MWMS_S_7_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_7_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_7_400_adjacency`;
CREATE TABLE `MWMS_S_7_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_7_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_7_400_location`;
CREATE TABLE `MWMS_S_7_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_7_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_7_600_adjacency`;
CREATE TABLE `MWMS_S_7_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_7_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_7_600_location`;
CREATE TABLE `MWMS_S_7_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_7_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_7_800_adjacency`;
CREATE TABLE `MWMS_S_7_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_7_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_7_800_location`;
CREATE TABLE `MWMS_S_7_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_8_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_8_1000_adjacency`;
CREATE TABLE `MWMS_S_8_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_8_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_8_1000_location`;
CREATE TABLE `MWMS_S_8_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_8_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_8_200_adjacency`;
CREATE TABLE `MWMS_S_8_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_8_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_8_200_location`;
CREATE TABLE `MWMS_S_8_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_8_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_8_400_adjacency`;
CREATE TABLE `MWMS_S_8_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_8_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_8_400_location`;
CREATE TABLE `MWMS_S_8_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_8_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_8_600_adjacency`;
CREATE TABLE `MWMS_S_8_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_8_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_8_600_location`;
CREATE TABLE `MWMS_S_8_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_8_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_8_800_adjacency`;
CREATE TABLE `MWMS_S_8_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_8_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_8_800_location`;
CREATE TABLE `MWMS_S_8_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_9_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_9_1000_adjacency`;
CREATE TABLE `MWMS_S_9_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_9_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_9_1000_location`;
CREATE TABLE `MWMS_S_9_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_9_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_9_200_adjacency`;
CREATE TABLE `MWMS_S_9_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_9_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_9_200_location`;
CREATE TABLE `MWMS_S_9_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_9_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_9_400_adjacency`;
CREATE TABLE `MWMS_S_9_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_9_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_9_400_location`;
CREATE TABLE `MWMS_S_9_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_9_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_9_600_adjacency`;
CREATE TABLE `MWMS_S_9_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_9_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_9_600_location`;
CREATE TABLE `MWMS_S_9_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_9_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_9_800_adjacency`;
CREATE TABLE `MWMS_S_9_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_9_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_9_800_location`;
CREATE TABLE `MWMS_S_9_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_10_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_10_1000_adjacency`;
CREATE TABLE `MWMS_S_DP_10_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_10_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_10_1000_location`;
CREATE TABLE `MWMS_S_DP_10_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_10_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_10_200_adjacency`;
CREATE TABLE `MWMS_S_DP_10_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_10_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_10_200_location`;
CREATE TABLE `MWMS_S_DP_10_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_10_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_10_400_adjacency`;
CREATE TABLE `MWMS_S_DP_10_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_10_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_10_400_location`;
CREATE TABLE `MWMS_S_DP_10_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_10_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_10_600_adjacency`;
CREATE TABLE `MWMS_S_DP_10_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_10_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_10_600_location`;
CREATE TABLE `MWMS_S_DP_10_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_10_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_10_800_adjacency`;
CREATE TABLE `MWMS_S_DP_10_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_10_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_10_800_location`;
CREATE TABLE `MWMS_S_DP_10_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_1_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_1_1000_adjacency`;
CREATE TABLE `MWMS_S_DP_1_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_1_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_1_1000_location`;
CREATE TABLE `MWMS_S_DP_1_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_1_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_1_200_adjacency`;
CREATE TABLE `MWMS_S_DP_1_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_1_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_1_200_location`;
CREATE TABLE `MWMS_S_DP_1_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_1_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_1_400_adjacency`;
CREATE TABLE `MWMS_S_DP_1_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_1_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_1_400_location`;
CREATE TABLE `MWMS_S_DP_1_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_1_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_1_600_adjacency`;
CREATE TABLE `MWMS_S_DP_1_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_1_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_1_600_location`;
CREATE TABLE `MWMS_S_DP_1_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_1_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_1_800_adjacency`;
CREATE TABLE `MWMS_S_DP_1_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_1_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_1_800_location`;
CREATE TABLE `MWMS_S_DP_1_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_2_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_2_1000_adjacency`;
CREATE TABLE `MWMS_S_DP_2_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_2_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_2_1000_location`;
CREATE TABLE `MWMS_S_DP_2_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_2_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_2_200_adjacency`;
CREATE TABLE `MWMS_S_DP_2_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_2_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_2_200_location`;
CREATE TABLE `MWMS_S_DP_2_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_2_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_2_400_adjacency`;
CREATE TABLE `MWMS_S_DP_2_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_2_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_2_400_location`;
CREATE TABLE `MWMS_S_DP_2_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_2_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_2_600_adjacency`;
CREATE TABLE `MWMS_S_DP_2_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_2_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_2_600_location`;
CREATE TABLE `MWMS_S_DP_2_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_2_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_2_800_adjacency`;
CREATE TABLE `MWMS_S_DP_2_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_2_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_2_800_location`;
CREATE TABLE `MWMS_S_DP_2_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_3_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_3_1000_adjacency`;
CREATE TABLE `MWMS_S_DP_3_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_3_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_3_1000_location`;
CREATE TABLE `MWMS_S_DP_3_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_3_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_3_200_adjacency`;
CREATE TABLE `MWMS_S_DP_3_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_3_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_3_200_location`;
CREATE TABLE `MWMS_S_DP_3_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_3_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_3_400_adjacency`;
CREATE TABLE `MWMS_S_DP_3_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_3_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_3_400_location`;
CREATE TABLE `MWMS_S_DP_3_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_3_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_3_600_adjacency`;
CREATE TABLE `MWMS_S_DP_3_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_3_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_3_600_location`;
CREATE TABLE `MWMS_S_DP_3_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_3_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_3_800_adjacency`;
CREATE TABLE `MWMS_S_DP_3_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_3_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_3_800_location`;
CREATE TABLE `MWMS_S_DP_3_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_4_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_4_1000_adjacency`;
CREATE TABLE `MWMS_S_DP_4_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_4_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_4_1000_location`;
CREATE TABLE `MWMS_S_DP_4_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_4_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_4_200_adjacency`;
CREATE TABLE `MWMS_S_DP_4_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_4_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_4_200_location`;
CREATE TABLE `MWMS_S_DP_4_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_4_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_4_400_adjacency`;
CREATE TABLE `MWMS_S_DP_4_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_4_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_4_400_location`;
CREATE TABLE `MWMS_S_DP_4_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_4_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_4_600_adjacency`;
CREATE TABLE `MWMS_S_DP_4_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_4_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_4_600_location`;
CREATE TABLE `MWMS_S_DP_4_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_4_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_4_800_adjacency`;
CREATE TABLE `MWMS_S_DP_4_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_4_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_4_800_location`;
CREATE TABLE `MWMS_S_DP_4_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_5_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_5_1000_adjacency`;
CREATE TABLE `MWMS_S_DP_5_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_5_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_5_1000_location`;
CREATE TABLE `MWMS_S_DP_5_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_5_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_5_200_adjacency`;
CREATE TABLE `MWMS_S_DP_5_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_5_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_5_200_location`;
CREATE TABLE `MWMS_S_DP_5_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_5_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_5_400_adjacency`;
CREATE TABLE `MWMS_S_DP_5_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_5_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_5_400_location`;
CREATE TABLE `MWMS_S_DP_5_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_5_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_5_600_adjacency`;
CREATE TABLE `MWMS_S_DP_5_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_5_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_5_600_location`;
CREATE TABLE `MWMS_S_DP_5_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_5_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_5_800_adjacency`;
CREATE TABLE `MWMS_S_DP_5_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_5_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_5_800_location`;
CREATE TABLE `MWMS_S_DP_5_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_6_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_6_1000_adjacency`;
CREATE TABLE `MWMS_S_DP_6_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_6_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_6_1000_location`;
CREATE TABLE `MWMS_S_DP_6_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_6_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_6_200_adjacency`;
CREATE TABLE `MWMS_S_DP_6_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_6_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_6_200_location`;
CREATE TABLE `MWMS_S_DP_6_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_6_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_6_400_adjacency`;
CREATE TABLE `MWMS_S_DP_6_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_6_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_6_400_location`;
CREATE TABLE `MWMS_S_DP_6_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_6_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_6_600_adjacency`;
CREATE TABLE `MWMS_S_DP_6_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_6_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_6_600_location`;
CREATE TABLE `MWMS_S_DP_6_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_6_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_6_800_adjacency`;
CREATE TABLE `MWMS_S_DP_6_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_6_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_6_800_location`;
CREATE TABLE `MWMS_S_DP_6_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_7_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_7_1000_adjacency`;
CREATE TABLE `MWMS_S_DP_7_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_7_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_7_1000_location`;
CREATE TABLE `MWMS_S_DP_7_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_7_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_7_200_adjacency`;
CREATE TABLE `MWMS_S_DP_7_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_7_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_7_200_location`;
CREATE TABLE `MWMS_S_DP_7_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_7_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_7_400_adjacency`;
CREATE TABLE `MWMS_S_DP_7_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_7_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_7_400_location`;
CREATE TABLE `MWMS_S_DP_7_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_7_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_7_600_adjacency`;
CREATE TABLE `MWMS_S_DP_7_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_7_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_7_600_location`;
CREATE TABLE `MWMS_S_DP_7_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_7_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_7_800_adjacency`;
CREATE TABLE `MWMS_S_DP_7_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_7_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_7_800_location`;
CREATE TABLE `MWMS_S_DP_7_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_8_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_8_1000_adjacency`;
CREATE TABLE `MWMS_S_DP_8_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_8_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_8_1000_location`;
CREATE TABLE `MWMS_S_DP_8_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_8_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_8_200_adjacency`;
CREATE TABLE `MWMS_S_DP_8_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_8_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_8_200_location`;
CREATE TABLE `MWMS_S_DP_8_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_8_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_8_400_adjacency`;
CREATE TABLE `MWMS_S_DP_8_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_8_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_8_400_location`;
CREATE TABLE `MWMS_S_DP_8_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_8_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_8_600_adjacency`;
CREATE TABLE `MWMS_S_DP_8_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_8_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_8_600_location`;
CREATE TABLE `MWMS_S_DP_8_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_8_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_8_800_adjacency`;
CREATE TABLE `MWMS_S_DP_8_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_8_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_8_800_location`;
CREATE TABLE `MWMS_S_DP_8_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_9_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_9_1000_adjacency`;
CREATE TABLE `MWMS_S_DP_9_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_9_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_9_1000_location`;
CREATE TABLE `MWMS_S_DP_9_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_9_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_9_200_adjacency`;
CREATE TABLE `MWMS_S_DP_9_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_9_200_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_9_200_location`;
CREATE TABLE `MWMS_S_DP_9_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_9_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_9_400_adjacency`;
CREATE TABLE `MWMS_S_DP_9_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_9_400_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_9_400_location`;
CREATE TABLE `MWMS_S_DP_9_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_9_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_9_600_adjacency`;
CREATE TABLE `MWMS_S_DP_9_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_9_600_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_9_600_location`;
CREATE TABLE `MWMS_S_DP_9_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_9_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_9_800_adjacency`;
CREATE TABLE `MWMS_S_DP_9_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for MWMS_S_DP_9_800_location
-- ----------------------------
DROP TABLE IF EXISTS `MWMS_S_DP_9_800_location`;
CREATE TABLE `MWMS_S_DP_9_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_10_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_10_1000_adjacency`;
CREATE TABLE `RSRSP_10_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_10_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_10_1000_location`;
CREATE TABLE `RSRSP_10_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_10_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_10_200_adjacency`;
CREATE TABLE `RSRSP_10_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_10_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_10_200_location`;
CREATE TABLE `RSRSP_10_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_10_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_10_400_adjacency`;
CREATE TABLE `RSRSP_10_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_10_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_10_400_location`;
CREATE TABLE `RSRSP_10_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_10_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_10_600_adjacency`;
CREATE TABLE `RSRSP_10_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_10_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_10_600_location`;
CREATE TABLE `RSRSP_10_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_10_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_10_800_adjacency`;
CREATE TABLE `RSRSP_10_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_10_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_10_800_location`;
CREATE TABLE `RSRSP_10_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_1_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_1_1000_adjacency`;
CREATE TABLE `RSRSP_1_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_1_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_1_1000_location`;
CREATE TABLE `RSRSP_1_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_1_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_1_200_adjacency`;
CREATE TABLE `RSRSP_1_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_1_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_1_200_location`;
CREATE TABLE `RSRSP_1_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_1_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_1_400_adjacency`;
CREATE TABLE `RSRSP_1_400_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_1_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_1_400_location`;
CREATE TABLE `RSRSP_1_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_1_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_1_600_adjacency`;
CREATE TABLE `RSRSP_1_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_1_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_1_600_location`;
CREATE TABLE `RSRSP_1_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_1_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_1_800_adjacency`;
CREATE TABLE `RSRSP_1_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_1_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_1_800_location`;
CREATE TABLE `RSRSP_1_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_2_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_2_1000_adjacency`;
CREATE TABLE `RSRSP_2_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_2_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_2_1000_location`;
CREATE TABLE `RSRSP_2_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_2_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_2_200_adjacency`;
CREATE TABLE `RSRSP_2_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_2_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_2_200_location`;
CREATE TABLE `RSRSP_2_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_2_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_2_400_adjacency`;
CREATE TABLE `RSRSP_2_400_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_2_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_2_400_location`;
CREATE TABLE `RSRSP_2_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_2_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_2_600_adjacency`;
CREATE TABLE `RSRSP_2_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_2_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_2_600_location`;
CREATE TABLE `RSRSP_2_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_2_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_2_800_adjacency`;
CREATE TABLE `RSRSP_2_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_2_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_2_800_location`;
CREATE TABLE `RSRSP_2_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_3_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_3_1000_adjacency`;
CREATE TABLE `RSRSP_3_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_3_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_3_1000_location`;
CREATE TABLE `RSRSP_3_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_3_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_3_200_adjacency`;
CREATE TABLE `RSRSP_3_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_3_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_3_200_location`;
CREATE TABLE `RSRSP_3_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_3_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_3_400_adjacency`;
CREATE TABLE `RSRSP_3_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_3_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_3_400_location`;
CREATE TABLE `RSRSP_3_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_3_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_3_600_adjacency`;
CREATE TABLE `RSRSP_3_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_3_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_3_600_location`;
CREATE TABLE `RSRSP_3_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_3_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_3_800_adjacency`;
CREATE TABLE `RSRSP_3_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_3_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_3_800_location`;
CREATE TABLE `RSRSP_3_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_4_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_4_1000_adjacency`;
CREATE TABLE `RSRSP_4_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_4_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_4_1000_location`;
CREATE TABLE `RSRSP_4_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_4_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_4_200_adjacency`;
CREATE TABLE `RSRSP_4_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_4_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_4_200_location`;
CREATE TABLE `RSRSP_4_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_4_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_4_400_adjacency`;
CREATE TABLE `RSRSP_4_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_4_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_4_400_location`;
CREATE TABLE `RSRSP_4_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_4_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_4_600_adjacency`;
CREATE TABLE `RSRSP_4_600_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_4_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_4_600_location`;
CREATE TABLE `RSRSP_4_600_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_4_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_4_800_adjacency`;
CREATE TABLE `RSRSP_4_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_4_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_4_800_location`;
CREATE TABLE `RSRSP_4_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_5_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_5_1000_adjacency`;
CREATE TABLE `RSRSP_5_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_5_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_5_1000_location`;
CREATE TABLE `RSRSP_5_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_5_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_5_200_adjacency`;
CREATE TABLE `RSRSP_5_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_5_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_5_200_location`;
CREATE TABLE `RSRSP_5_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_5_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_5_400_adjacency`;
CREATE TABLE `RSRSP_5_400_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_5_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_5_400_location`;
CREATE TABLE `RSRSP_5_400_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_5_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_5_600_adjacency`;
CREATE TABLE `RSRSP_5_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_5_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_5_600_location`;
CREATE TABLE `RSRSP_5_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_5_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_5_800_adjacency`;
CREATE TABLE `RSRSP_5_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_5_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_5_800_location`;
CREATE TABLE `RSRSP_5_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_6_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_6_1000_adjacency`;
CREATE TABLE `RSRSP_6_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_6_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_6_1000_location`;
CREATE TABLE `RSRSP_6_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_6_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_6_200_adjacency`;
CREATE TABLE `RSRSP_6_200_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_6_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_6_200_location`;
CREATE TABLE `RSRSP_6_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_6_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_6_400_adjacency`;
CREATE TABLE `RSRSP_6_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_6_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_6_400_location`;
CREATE TABLE `RSRSP_6_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_6_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_6_600_adjacency`;
CREATE TABLE `RSRSP_6_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_6_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_6_600_location`;
CREATE TABLE `RSRSP_6_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_6_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_6_800_adjacency`;
CREATE TABLE `RSRSP_6_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_6_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_6_800_location`;
CREATE TABLE `RSRSP_6_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_7_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_7_1000_adjacency`;
CREATE TABLE `RSRSP_7_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_7_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_7_1000_location`;
CREATE TABLE `RSRSP_7_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_7_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_7_200_adjacency`;
CREATE TABLE `RSRSP_7_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_7_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_7_200_location`;
CREATE TABLE `RSRSP_7_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_7_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_7_400_adjacency`;
CREATE TABLE `RSRSP_7_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_7_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_7_400_location`;
CREATE TABLE `RSRSP_7_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_7_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_7_600_adjacency`;
CREATE TABLE `RSRSP_7_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_7_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_7_600_location`;
CREATE TABLE `RSRSP_7_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_7_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_7_800_adjacency`;
CREATE TABLE `RSRSP_7_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_7_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_7_800_location`;
CREATE TABLE `RSRSP_7_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_8_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_8_1000_adjacency`;
CREATE TABLE `RSRSP_8_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_8_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_8_1000_location`;
CREATE TABLE `RSRSP_8_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_8_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_8_200_adjacency`;
CREATE TABLE `RSRSP_8_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_8_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_8_200_location`;
CREATE TABLE `RSRSP_8_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_8_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_8_400_adjacency`;
CREATE TABLE `RSRSP_8_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_8_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_8_400_location`;
CREATE TABLE `RSRSP_8_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_8_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_8_600_adjacency`;
CREATE TABLE `RSRSP_8_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_8_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_8_600_location`;
CREATE TABLE `RSRSP_8_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_8_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_8_800_adjacency`;
CREATE TABLE `RSRSP_8_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_8_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_8_800_location`;
CREATE TABLE `RSRSP_8_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_9_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_9_1000_adjacency`;
CREATE TABLE `RSRSP_9_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_9_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_9_1000_location`;
CREATE TABLE `RSRSP_9_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_9_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_9_200_adjacency`;
CREATE TABLE `RSRSP_9_200_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_9_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_9_200_location`;
CREATE TABLE `RSRSP_9_200_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_9_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_9_400_adjacency`;
CREATE TABLE `RSRSP_9_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_9_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_9_400_location`;
CREATE TABLE `RSRSP_9_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_9_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_9_600_adjacency`;
CREATE TABLE `RSRSP_9_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_9_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_9_600_location`;
CREATE TABLE `RSRSP_9_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_9_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_9_800_adjacency`;
CREATE TABLE `RSRSP_9_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_9_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_9_800_location`;
CREATE TABLE `RSRSP_9_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL,
  `y` float(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_10_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_10_1000_adjacency`;
CREATE TABLE `RSRSP_DP_10_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_10_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_10_1000_location`;
CREATE TABLE `RSRSP_DP_10_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_10_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_10_200_adjacency`;
CREATE TABLE `RSRSP_DP_10_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_10_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_10_200_location`;
CREATE TABLE `RSRSP_DP_10_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_10_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_10_400_adjacency`;
CREATE TABLE `RSRSP_DP_10_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_10_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_10_400_location`;
CREATE TABLE `RSRSP_DP_10_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_10_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_10_600_adjacency`;
CREATE TABLE `RSRSP_DP_10_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_10_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_10_600_location`;
CREATE TABLE `RSRSP_DP_10_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_10_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_10_800_adjacency`;
CREATE TABLE `RSRSP_DP_10_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_10_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_10_800_location`;
CREATE TABLE `RSRSP_DP_10_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_1_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_1_1000_adjacency`;
CREATE TABLE `RSRSP_DP_1_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_1_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_1_1000_location`;
CREATE TABLE `RSRSP_DP_1_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_1_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_1_200_adjacency`;
CREATE TABLE `RSRSP_DP_1_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_1_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_1_200_location`;
CREATE TABLE `RSRSP_DP_1_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_1_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_1_400_adjacency`;
CREATE TABLE `RSRSP_DP_1_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_1_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_1_400_location`;
CREATE TABLE `RSRSP_DP_1_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_1_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_1_600_adjacency`;
CREATE TABLE `RSRSP_DP_1_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_1_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_1_600_location`;
CREATE TABLE `RSRSP_DP_1_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_1_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_1_800_adjacency`;
CREATE TABLE `RSRSP_DP_1_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_1_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_1_800_location`;
CREATE TABLE `RSRSP_DP_1_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_2_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_2_1000_adjacency`;
CREATE TABLE `RSRSP_DP_2_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_2_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_2_1000_location`;
CREATE TABLE `RSRSP_DP_2_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_2_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_2_200_adjacency`;
CREATE TABLE `RSRSP_DP_2_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_2_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_2_200_location`;
CREATE TABLE `RSRSP_DP_2_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_2_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_2_400_adjacency`;
CREATE TABLE `RSRSP_DP_2_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_2_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_2_400_location`;
CREATE TABLE `RSRSP_DP_2_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_2_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_2_600_adjacency`;
CREATE TABLE `RSRSP_DP_2_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_2_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_2_600_location`;
CREATE TABLE `RSRSP_DP_2_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_2_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_2_800_adjacency`;
CREATE TABLE `RSRSP_DP_2_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_2_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_2_800_location`;
CREATE TABLE `RSRSP_DP_2_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_3_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_3_1000_adjacency`;
CREATE TABLE `RSRSP_DP_3_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_3_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_3_1000_location`;
CREATE TABLE `RSRSP_DP_3_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_3_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_3_200_adjacency`;
CREATE TABLE `RSRSP_DP_3_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_3_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_3_200_location`;
CREATE TABLE `RSRSP_DP_3_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_3_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_3_400_adjacency`;
CREATE TABLE `RSRSP_DP_3_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_3_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_3_400_location`;
CREATE TABLE `RSRSP_DP_3_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_3_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_3_600_adjacency`;
CREATE TABLE `RSRSP_DP_3_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_3_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_3_600_location`;
CREATE TABLE `RSRSP_DP_3_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_3_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_3_800_adjacency`;
CREATE TABLE `RSRSP_DP_3_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_3_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_3_800_location`;
CREATE TABLE `RSRSP_DP_3_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_4_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_4_1000_adjacency`;
CREATE TABLE `RSRSP_DP_4_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_4_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_4_1000_location`;
CREATE TABLE `RSRSP_DP_4_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_4_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_4_200_adjacency`;
CREATE TABLE `RSRSP_DP_4_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_4_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_4_200_location`;
CREATE TABLE `RSRSP_DP_4_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_4_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_4_400_adjacency`;
CREATE TABLE `RSRSP_DP_4_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_4_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_4_400_location`;
CREATE TABLE `RSRSP_DP_4_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_4_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_4_600_adjacency`;
CREATE TABLE `RSRSP_DP_4_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_4_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_4_600_location`;
CREATE TABLE `RSRSP_DP_4_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_4_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_4_800_adjacency`;
CREATE TABLE `RSRSP_DP_4_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_4_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_4_800_location`;
CREATE TABLE `RSRSP_DP_4_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_5_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_5_1000_adjacency`;
CREATE TABLE `RSRSP_DP_5_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_5_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_5_1000_location`;
CREATE TABLE `RSRSP_DP_5_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_5_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_5_200_adjacency`;
CREATE TABLE `RSRSP_DP_5_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_5_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_5_200_location`;
CREATE TABLE `RSRSP_DP_5_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_5_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_5_400_adjacency`;
CREATE TABLE `RSRSP_DP_5_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_5_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_5_400_location`;
CREATE TABLE `RSRSP_DP_5_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_5_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_5_600_adjacency`;
CREATE TABLE `RSRSP_DP_5_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_5_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_5_600_location`;
CREATE TABLE `RSRSP_DP_5_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_5_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_5_800_adjacency`;
CREATE TABLE `RSRSP_DP_5_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_5_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_5_800_location`;
CREATE TABLE `RSRSP_DP_5_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_6_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_6_1000_adjacency`;
CREATE TABLE `RSRSP_DP_6_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_6_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_6_1000_location`;
CREATE TABLE `RSRSP_DP_6_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_6_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_6_200_adjacency`;
CREATE TABLE `RSRSP_DP_6_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_6_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_6_200_location`;
CREATE TABLE `RSRSP_DP_6_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_6_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_6_400_adjacency`;
CREATE TABLE `RSRSP_DP_6_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_6_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_6_400_location`;
CREATE TABLE `RSRSP_DP_6_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_6_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_6_600_adjacency`;
CREATE TABLE `RSRSP_DP_6_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_6_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_6_600_location`;
CREATE TABLE `RSRSP_DP_6_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_6_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_6_800_adjacency`;
CREATE TABLE `RSRSP_DP_6_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_6_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_6_800_location`;
CREATE TABLE `RSRSP_DP_6_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_7_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_7_1000_adjacency`;
CREATE TABLE `RSRSP_DP_7_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_7_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_7_1000_location`;
CREATE TABLE `RSRSP_DP_7_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_7_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_7_200_adjacency`;
CREATE TABLE `RSRSP_DP_7_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_7_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_7_200_location`;
CREATE TABLE `RSRSP_DP_7_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_7_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_7_400_adjacency`;
CREATE TABLE `RSRSP_DP_7_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_7_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_7_400_location`;
CREATE TABLE `RSRSP_DP_7_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_7_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_7_600_adjacency`;
CREATE TABLE `RSRSP_DP_7_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_7_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_7_600_location`;
CREATE TABLE `RSRSP_DP_7_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_7_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_7_800_adjacency`;
CREATE TABLE `RSRSP_DP_7_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_7_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_7_800_location`;
CREATE TABLE `RSRSP_DP_7_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_8_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_8_1000_adjacency`;
CREATE TABLE `RSRSP_DP_8_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_8_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_8_1000_location`;
CREATE TABLE `RSRSP_DP_8_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_8_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_8_200_adjacency`;
CREATE TABLE `RSRSP_DP_8_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_8_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_8_200_location`;
CREATE TABLE `RSRSP_DP_8_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_8_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_8_400_adjacency`;
CREATE TABLE `RSRSP_DP_8_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_8_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_8_400_location`;
CREATE TABLE `RSRSP_DP_8_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_8_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_8_600_adjacency`;
CREATE TABLE `RSRSP_DP_8_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_8_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_8_600_location`;
CREATE TABLE `RSRSP_DP_8_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_8_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_8_800_adjacency`;
CREATE TABLE `RSRSP_DP_8_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_8_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_8_800_location`;
CREATE TABLE `RSRSP_DP_8_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_9_1000_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_9_1000_adjacency`;
CREATE TABLE `RSRSP_DP_9_1000_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_9_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_9_1000_location`;
CREATE TABLE `RSRSP_DP_9_1000_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_9_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_9_200_adjacency`;
CREATE TABLE `RSRSP_DP_9_200_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_9_200_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_9_200_location`;
CREATE TABLE `RSRSP_DP_9_200_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_9_400_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_9_400_adjacency`;
CREATE TABLE `RSRSP_DP_9_400_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_9_400_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_9_400_location`;
CREATE TABLE `RSRSP_DP_9_400_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_9_600_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_9_600_adjacency`;
CREATE TABLE `RSRSP_DP_9_600_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_9_600_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_9_600_location`;
CREATE TABLE `RSRSP_DP_9_600_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_9_800_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_9_800_adjacency`;
CREATE TABLE `RSRSP_DP_9_800_adjacency`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `ad_index` varchar(6000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邻接矩阵下标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RSRSP_DP_9_800_location
-- ----------------------------
DROP TABLE IF EXISTS `RSRSP_DP_9_800_location`;
CREATE TABLE `RSRSP_DP_9_800_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键，记录唯一标识',
  `x` float(10, 3) NULL DEFAULT NULL COMMENT '横坐标',
  `y` float(10, 3) NULL DEFAULT NULL COMMENT '纵坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ccd_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `ccd_adjacency`;
CREATE TABLE `ccd_adjacency`  (
  `ad_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ccd_location
-- ----------------------------
DROP TABLE IF EXISTS `ccd_location`;
CREATE TABLE `ccd_location`  (
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL,
  `id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for custom_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `custom_adjacency`;
CREATE TABLE `custom_adjacency`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ad_index` varchar(6000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `custom_adjacency_id_uindex`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for custom_location
-- ----------------------------
DROP TABLE IF EXISTS `custom_location`;
CREATE TABLE `custom_location`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `x` float NULL DEFAULT NULL,
  `y` float NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `custom_location_id_uindex`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for flychee_test_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `flychee_test_adjacency`;
CREATE TABLE `flychee_test_adjacency`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `ad_index` varchar(6000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  INDEX `ix_flychee_test_adjacency_index`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for flychee_test_location
-- ----------------------------
DROP TABLE IF EXISTS `flychee_test_location`;
CREATE TABLE `flychee_test_location`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL,
  INDEX `ix_flychee_test_location_index`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_algorithm
-- ----------------------------
DROP TABLE IF EXISTS `t_algorithm`;
CREATE TABLE `t_algorithm`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `t_algorithm_name_uindex`(`name`) USING BTREE,
  UNIQUE INDEX `t_algorithm_id_uindex`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '算法列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test_HSB_1_1000_location
-- ----------------------------
DROP TABLE IF EXISTS `test_HSB_1_1000_location`;
CREATE TABLE `test_HSB_1_1000_location`  (
  `id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test_HSB_1_1000_location1
-- ----------------------------
DROP TABLE IF EXISTS `test_HSB_1_1000_location1`;
CREATE TABLE `test_HSB_1_1000_location1`  (
  `id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `x` double NULL DEFAULT NULL,
  `y` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zhangmingzhe_test_1_200_adjacency
-- ----------------------------
DROP TABLE IF EXISTS `zhangmingzhe_test_1_200_adjacency`;
CREATE TABLE `zhangmingzhe_test_1_200_adjacency`  (
  `index` bigint(20) NULL DEFAULT NULL,
  `0` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  INDEX `ix_zhangmingzhe_test_1_200_adjacency_index`(`index`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zhangmingzhe_test_1_200_location
-- ----------------------------
DROP TABLE IF EXISTS `zhangmingzhe_test_1_200_location`;
CREATE TABLE `zhangmingzhe_test_1_200_location`  (
  `index` bigint(20) NULL DEFAULT NULL,
  `0` double NULL DEFAULT NULL,
  `1` double NULL DEFAULT NULL,
  INDEX `ix_zhangmingzhe_test_1_200_location_index`(`index`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
