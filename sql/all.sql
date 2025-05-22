SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for holiday_date
-- ----------------------------
DROP TABLE IF EXISTS `holiday_date`;
CREATE TABLE `holiday_date` (
    `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
    `date` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '日期yyyy-MM-dd',
    `year` int NOT NULL COMMENT '年',
    `month` int NOT NULL COMMENT '月',
    `day` int NOT NULL COMMENT '日',
    `status` int DEFAULT '0' COMMENT '0普通工作日1周末2需要补班的工作日3法定节假日',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB  COMMENT='节假日信息表';