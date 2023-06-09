/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.5.58 : Database - ihrm
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE
DATABASE /*!32312 IF NOT EXISTS*/`ihrm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE
`ihrm`;

/*Table structure for table `atte_archive_monthly` */

DROP TABLE IF EXISTS `atte_archive_monthly`;

CREATE TABLE `atte_archive_monthly`
(
    `id`                   bigint(32) NOT NULL COMMENT '主键ID',
    `company_id`           varchar(36)  DEFAULT NULL COMMENT '公司ID',
    `department_id`        varchar(36)  DEFAULT NULL COMMENT '部门ID',
    `archive_year`         varchar(36)  DEFAULT NULL COMMENT '归档年份',
    `archive_month`        varchar(36)  DEFAULT NULL COMMENT '归档月份',
    `total_people_num`     int(36) DEFAULT NULL COMMENT '总人数',
    `full_atte_people_num` int(36) DEFAULT NULL COMMENT '全勤人数',
    `is_archived`          int(20) DEFAULT NULL COMMENT '是否归档(0已经归档1没有归档)',
    `create_by`            varchar(64)  DEFAULT NULL,
    `create_date`          datetime     DEFAULT NULL,
    `update_by`            varchar(64)  DEFAULT NULL,
    `update_date`          datetime     DEFAULT NULL,
    `remarks`              varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `company_id` (`company_id`,`department_id`,`archive_year`,`archive_month`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='考勤归档信息表';

/*Data for the table `atte_archive_monthly` */

insert into `atte_archive_monthly`(`id`, `company_id`, `department_id`, `archive_year`, `archive_month`,
                                   `total_people_num`, `full_atte_people_num`, `is_archived`, `create_by`,
                                   `create_date`, `update_by`, `update_date`, `remarks`)
values (1170676532790079488, '1', NULL, '2019', '7', 8, 8, 0, NULL, NULL, NULL, NULL, NULL);

/*Table structure for table `atte_archive_monthly_info` */

DROP TABLE IF EXISTS `atte_archive_monthly_info`;

CREATE TABLE `atte_archive_monthly_info`
(
    `id`                          varchar(40) NOT NULL COMMENT '主键ID',
    `atte_archive_monthly_id`     bigint(36) DEFAULT NULL COMMENT '归档id',
    `name`                        varchar(20)  DEFAULT NULL COMMENT '姓名',
    `work_number`                 varchar(40)  DEFAULT NULL COMMENT '工号',
    `mobile`                      varchar(20)  DEFAULT NULL COMMENT '手机号',
    `atte_solution`               varchar(20)  DEFAULT NULL COMMENT '当月考勤方案',
    `department`                  varchar(20)  DEFAULT NULL COMMENT '一级部门',
    `work_city`                   varchar(20)  DEFAULT NULL COMMENT '工作城市',
    `year_leave_days`             varchar(20)  DEFAULT NULL COMMENT '年假天数',
    `leave_days`                  varchar(20)  DEFAULT NULL COMMENT '事假天数',
    `sick_leave_days`             varchar(20)  DEFAULT NULL COMMENT '病假天数',
    `long_sick_leave_days`        varchar(20)  DEFAULT NULL COMMENT '长期病假天数',
    `marraiage_leave_days`        varchar(20)  DEFAULT NULL COMMENT '婚假天数',
    `funeral_leave_days`          varchar(20)  DEFAULT NULL COMMENT '丧假天数',
    `maternity_leave_days`        varchar(20)  DEFAULT NULL COMMENT '产假天数',
    `reward_maternity_leave_days` varchar(20)  DEFAULT NULL COMMENT '奖励产假天数',
    `paternity_leave_days`        varchar(20)  DEFAULT NULL COMMENT '陪产假天数',
    `home_leava_days`             varchar(20)  DEFAULT NULL COMMENT '探亲假天数',
    `accidential_leave_days`      varchar(20)  DEFAULT NULL COMMENT '工伤假',
    `day_Off_leave_days`          varchar(20)  DEFAULT NULL COMMENT '调休天数',
    `doctor_Off_leave_days`       varchar(20)  DEFAULT NULL COMMENT '产检假天数',
    `abortion_leave_days`         varchar(20)  DEFAULT NULL COMMENT '流产假天数',
    `normal_days`                 varchar(20)  DEFAULT NULL COMMENT '正常天数',
    `outgoing_days`               varchar(20)  DEFAULT NULL COMMENT '外出天数',
    `on_business_days`            varchar(20)  DEFAULT NULL COMMENT '出差天数',
    `later_times`                 int(20) DEFAULT NULL COMMENT '迟到次数',
    `early_times`                 int(20) DEFAULT NULL COMMENT '早退次数',
    `signed_times`                int(20) DEFAULT NULL COMMENT '迟到次数',
    `hours_per_days`              varchar(20)  DEFAULT NULL COMMENT '日均时长（自然日）',
    `hours_per_work_day`          varchar(20)  DEFAULT NULL COMMENT '日均时长(工作日)',
    `hours_per_rest_day`          varchar(20)  DEFAULT NULL COMMENT '日均时长（休息日）',
    `clock_rate`                  varchar(20)  DEFAULT NULL COMMENT '打卡率',
    `absence_days`                varchar(20)  DEFAULT NULL COMMENT '旷工天数',
    `is_full_attendanceint`       varchar(20)  DEFAULT NULL COMMENT '是否全勤0全勤1非全勤',
    `actual_atte_unofficial_days` varchar(20)  DEFAULT NULL COMMENT '实际出勤天数（非正式）',
    `actual_atte_official_days`   varchar(20)  DEFAULT NULL COMMENT '实际出勤天数（正式）',
    `working_days`                varchar(20)  DEFAULT NULL COMMENT '应出勤工作日',
    `salary_standards`            varchar(30)  DEFAULT NULL COMMENT '计薪标准',
    `salary_adjustment_days`      varchar(30)  DEFAULT NULL COMMENT '计薪天数调整',
    `work_hour`                   varchar(20)  DEFAULT NULL COMMENT '工作时长',
    `salary_unofficial_days`      varchar(20)  DEFAULT NULL COMMENT '计薪天数（非正式）',
    `salary_official_days`        varchar(20)  DEFAULT NULL COMMENT '计薪天数（正式）',
    `create_by`                   varchar(64)  DEFAULT NULL,
    `create_date`                 datetime     DEFAULT NULL,
    `update_by`                   varchar(64)  DEFAULT NULL,
    `update_date`                 datetime     DEFAULT NULL,
    `remarks`                     varchar(255) DEFAULT NULL,
    `user_id`                     varchar(40)  DEFAULT NULL,
    `archive_date`                varchar(40)  DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='考勤归档信息详情表';

/*Data for the table `atte_archive_monthly_info` */

insert into `atte_archive_monthly_info`(`id`, `atte_archive_monthly_id`, `name`, `work_number`, `mobile`,
                                        `atte_solution`, `department`, `work_city`, `year_leave_days`, `leave_days`,
                                        `sick_leave_days`, `long_sick_leave_days`, `marraiage_leave_days`,
                                        `funeral_leave_days`, `maternity_leave_days`, `reward_maternity_leave_days`,
                                        `paternity_leave_days`, `home_leava_days`, `accidential_leave_days`,
                                        `day_Off_leave_days`, `doctor_Off_leave_days`, `abortion_leave_days`,
                                        `normal_days`, `outgoing_days`, `on_business_days`, `later_times`,
                                        `early_times`, `signed_times`, `hours_per_days`, `hours_per_work_day`,
                                        `hours_per_rest_day`, `clock_rate`, `absence_days`, `is_full_attendanceint`,
                                        `actual_atte_unofficial_days`, `actual_atte_official_days`, `working_days`,
                                        `salary_standards`, `salary_adjustment_days`, `work_hour`,
                                        `salary_unofficial_days`, `salary_official_days`, `create_by`, `create_date`,
                                        `update_by`, `update_date`, `remarks`, `user_id`, `archive_date`)
values ('1170676532790079489', 1170676532790079488, 'itcast', '9002', '13800000002', NULL, 'test1', NULL, NULL, '0',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, 0, NULL, NULL, NULL,
        NULL, NULL, '0', '1', NULL, '0', '21.75', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL,
        '1063705989926227968', '201907'),
       ('1170676532894937088', 1170676532790079488, 'zbz', '111', '13800000003', NULL, '测试部', NULL, NULL, '0', NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL,
        NULL, '0', '1', NULL, '0', '21.75', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL,
        '1066370498633486336', '201907'),
       ('1170676532920102912', 1170676532790079488, 'll', '1111', '13800000004', NULL, '测试部', NULL, NULL, '0', NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL,
        NULL, '0', '1', NULL, '0', '21.75', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL,
        '1071632760222810112', '201907'),
       ('1170676532941074432', 1170676532790079488, 'a01', '1001', '13400000001', NULL, '开发部', NULL, NULL, '0', NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '20', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL,
        NULL, '0', '1', NULL, '22', '21.75', NULL, NULL, NULL, NULL, '22', NULL, NULL, NULL, NULL, NULL,
        '1074238801330704384', '201907'),
       ('1170676532966240256', 1170676532790079488, 'a02', '1002', '13400000002', NULL, '开发部', NULL, NULL, '0', NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL,
        NULL, '0', '1', NULL, '0', '21.75', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL,
        '1074238801402007552', '201907'),
       ('1170676532991406080', 1170676532790079488, 'test001', '2001', '13500000001', NULL, '开发部', NULL, NULL, '0',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, 0, NULL, NULL, NULL,
        NULL, NULL, '0', '1', NULL, '0', '21.75', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL,
        '1075383133106425856', '201907'),
       ('1170676533016571904', 1170676532790079488, 'test002', '2002', '13500000002', NULL, '开发部', NULL, NULL, '0',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, 0, NULL, NULL, NULL,
        NULL, NULL, '0', '1', NULL, '0', '21.75', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL,
        '1075383135371350016', '201907'),
       ('1170676533045932032', 1170676532790079488, 'test003', '2003', '13500000003', NULL, '开发部', NULL, NULL, '0',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, 0, NULL, NULL, NULL,
        NULL, NULL, '0', '1', NULL, '0', '21.75', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL,
        '1075383135459430400', '201907');

/*Table structure for table `atte_attendance` */

DROP TABLE IF EXISTS `atte_attendance`;

CREATE TABLE `atte_attendance`
(
    `id`                varchar(40) NOT NULL COMMENT '主键ID',
    `user_id`           varchar(40)  DEFAULT NULL COMMENT '用户ID',
    `company_id`        varchar(40)  DEFAULT NULL COMMENT '公司ID',
    `department_id`     varchar(40)  DEFAULT NULL COMMENT '部门ID',
    `adt_statu`         int(20) DEFAULT NULL COMMENT '考情状态 1正常2旷工3迟到4早退5外出6出差7年假8事假9病假10婚假11丧假12产假13奖励产假14陪产假15探亲假16工伤假17调休18产检假19流产假20长期病假21测试架22补签',
    `job_statu`         int(20) DEFAULT NULL COMMENT '职位状态 1在职2离职',
    `adt_in_time`       datetime     DEFAULT NULL COMMENT '上班考勤时间',
    `adt_in_place`      varchar(30)  DEFAULT NULL COMMENT '考勤地点',
    `adt_in_hourse`     varchar(30)  DEFAULT NULL COMMENT '考勤办公室',
    `adt_in_coordinate` varchar(128) DEFAULT NULL COMMENT '考勤坐标',
    `adt_out_time`      datetime     DEFAULT NULL COMMENT '下班考勤时间',
    `adt_out_place`     varchar(30)  DEFAULT NULL COMMENT '下班考情地点',
    `adt_out_hourse`    varchar(30)  DEFAULT NULL COMMENT '考勤办公室',
    `create_by`         varchar(64)  DEFAULT NULL,
    `create_date`       datetime     DEFAULT NULL,
    `update_by`         varchar(64)  DEFAULT NULL,
    `update_date`       datetime     DEFAULT NULL,
    `remarks`           varchar(255) DEFAULT NULL,
    `username`          varchar(40)  DEFAULT NULL,
    `mobile`            varchar(255) DEFAULT NULL,
    `department_name`   varchar(40)  DEFAULT NULL,
    `day`               varchar(40)  DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='考勤表';

/*Data for the table `atte_attendance` */

insert into `atte_attendance`(`id`, `user_id`, `company_id`, `department_id`, `adt_statu`, `job_statu`, `adt_in_time`,
                              `adt_in_place`, `adt_in_hourse`, `adt_in_coordinate`, `adt_out_time`, `adt_out_place`,
                              `adt_out_hourse`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`,
                              `username`, `mobile`, `department_name`, `day`)
values ('1166596892247744512', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190701'),
       ('1166596892692340736', '1074238801330704384', '1', '1066240656856453120', 1, 1, '2019-07-02 10:30:00', NULL,
        NULL, NULL, '2019-07-02 18:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190702'),
       ('1166596892751060992', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190703'),
       ('1166609769672687616', '1063705989926227968', NULL, '1066241293639880704', 3, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190801'),
       ('1169567061064683520', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190704'),
       ('1169567092312248320', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190705'),
       ('1169567239796559872', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190707'),
       ('1169567251775492096', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190710'),
       ('1169567270897324032', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190711'),
       ('1169567281651519488', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190712'),
       ('1170278834945597440', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190714'),
       ('1170321931276611584', '1074238801330704384', NULL, '1066240656856453120', 3, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190717'),
       ('1170321956576653312', '1074238801330704384', NULL, '1066240656856453120', 4, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190721'),
       ('1170321977833385984', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190726'),
       ('1170676269652029440', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190718'),
       ('1170676282172026880', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190720'),
       ('1170676292984942592', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190719'),
       ('1170676309330145280', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190724'),
       ('1170676320000454656', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190723'),
       ('1170676331408961536', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190728'),
       ('1170676346206466048', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190729'),
       ('1170676458034999296', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190722'),
       ('1170676480835235840', '1074238801330704384', NULL, '1066240656856453120', 1, 0, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20190716');

/*Table structure for table `atte_attendance_config` */

DROP TABLE IF EXISTS `atte_attendance_config`;

CREATE TABLE `atte_attendance_config`
(
    `id`                   varchar(40) NOT NULL COMMENT '主键ID',
    `company_id`           varchar(40)  DEFAULT NULL COMMENT '公司ID',
    `department_id`        varchar(40)  DEFAULT NULL COMMENT '部门ID',
    `morning_start_time`   time         DEFAULT NULL COMMENT '上午打卡时间',
    `morning_end_time`     time         DEFAULT NULL COMMENT '上午打卡时间',
    `afternoon_start_time` time         DEFAULT NULL COMMENT '下午打卡时间',
    `afternoon_end_time`   time         DEFAULT NULL COMMENT '下午打卡时间',
    `create_by`            varchar(64)  DEFAULT NULL,
    `create_date`          datetime     DEFAULT NULL,
    `update_by`            varchar(64)  DEFAULT NULL,
    `update_date`          datetime     DEFAULT NULL,
    `remarks`              varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `company_id` (`company_id`,`department_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='考勤配置表';

/*Data for the table `atte_attendance_config` */

insert into `atte_attendance_config`(`id`, `company_id`, `department_id`, `morning_start_time`, `morning_end_time`,
                                     `afternoon_start_time`, `afternoon_end_time`, `create_by`, `create_date`,
                                     `update_by`, `update_date`, `remarks`)
values ('1151027364784902144', '1', '1', '09:00:00', '12:00:00', '14:00:00', '18:00:00', NULL, NULL, NULL, NULL, NULL),
       ('1153841670090002432', '1', '1063676045212913664', '01:05:00', '13:00:00', '14:00:00', '17:30:00',
        '1063705989926227968', NULL, '1063705989926227968', '2019-08-25 23:36:40', NULL),
       ('1153868482937491456', '1', '1066240303092076544', '09:00:00', '13:00:00', '14:00:00', '18:00:00',
        '1063705989926227968', NULL, NULL, '2019-07-24 11:24:19', NULL),
       ('1153870761333755904', '1', '1066240656856453120', '09:00:00', '13:00:00', '14:00:00', '18:00:00',
        '1063705989926227968', NULL, '1063705989926227968', '2019-07-24 11:36:49', NULL),
       ('1156143291830505472', '1', '1063678149528784896', '08:00:00', '12:00:00', '13:00:00', '18:00:00',
        '1063705989926227968', NULL, '1063705989926227968', '2019-07-30 18:03:36', NULL);

/*Table structure for table `atte_company_settings` */

DROP TABLE IF EXISTS `atte_company_settings`;

CREATE TABLE `atte_company_settings`
(
    `company_id`  varchar(40) NOT NULL COMMENT '企业id',
    `is_settings` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0是未设置，1是已设置',
    `data_month`  varchar(40) NOT NULL COMMENT '当前显示报表月份',
    PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考勤-企业设置信息';

/*Data for the table `atte_company_settings` */

insert into `atte_company_settings`(`company_id`, `is_settings`, `data_month`)
values ('1', 1, '201908');

/*Table structure for table `atte_day_off_config` */

DROP TABLE IF EXISTS `atte_day_off_config`;

CREATE TABLE `atte_day_off_config`
(
    `id`                 varchar(40) NOT NULL COMMENT '主键ID',
    `company_id`         varchar(40)  DEFAULT NULL COMMENT '公司ID',
    `department_id`      varchar(40)  DEFAULT NULL COMMENT '部门ID',
    `latest_effect_date` datetime     DEFAULT NULL COMMENT '调休最后有效日期',
    `unit`               varchar(20)  DEFAULT NULL COMMENT '调休单位(天最小0.5)',
    `create_by`          varchar(64)  DEFAULT NULL,
    `create_date`        datetime     DEFAULT NULL,
    `update_by`          varchar(64)  DEFAULT NULL,
    `update_date`        datetime     DEFAULT NULL,
    `remarks`            varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `company_id` (`company_id`,`department_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='调休配置表';

/*Data for the table `atte_day_off_config` */

insert into `atte_day_off_config`(`id`, `company_id`, `department_id`, `latest_effect_date`, `unit`, `create_by`,
                                  `create_date`, `update_by`, `update_date`, `remarks`)
values ('1154295071588356096', '1', '1063676045212913664', '2020-07-31 00:00:00', '0.5', '1063705989926227968',
        '2019-07-25 15:39:25', '1063705989926227968', '2019-08-26 00:20:37', NULL),
       ('1156399736517955584', '1', '1066238836272664576', '2020-07-30 00:00:00', '1', '1063705989926227968',
        '2019-07-31 11:02:37', NULL, NULL, NULL),
       ('1156402186050211840', '1', '1063678149528784896', '2020-07-30 00:00:00', '1', '1063705989926227968',
        '2019-07-31 11:12:21', NULL, NULL, NULL);

/*Table structure for table `atte_deduction_dict` */

DROP TABLE IF EXISTS `atte_deduction_dict`;

CREATE TABLE `atte_deduction_dict`
(
    `id`                       varchar(40) NOT NULL COMMENT '主键ID',
    `company_id`               varchar(40)    DEFAULT NULL COMMENT '公司ID',
    `department_id`            varchar(40)    DEFAULT NULL COMMENT '部门ID',
    `ded_type_code`            varchar(20)    DEFAULT NULL COMMENT '扣款类型编码',
    `period_lower_limit`       varchar(20)    DEFAULT NULL COMMENT '时间段下限',
    `period_upper_limit`       varchar(20)    DEFAULT NULL COMMENT '时间段上限',
    `times_lower_limit`        varchar(20)    DEFAULT NULL COMMENT '次数下限',
    `times_upper_limit`        varchar(20)    DEFAULT NULL COMMENT '次数上限',
    `ded_amonut_lower_limit`   decimal(20, 0) DEFAULT NULL COMMENT '扣款金额下限',
    `ded_amonut_upper_limit`   decimal(20, 0) DEFAULT NULL COMMENT '扣款金额上限',
    `absence_times_upper_limt` varchar(20)    DEFAULT NULL COMMENT '旷工次数上限',
    `absence_days`             varchar(20)    DEFAULT NULL COMMENT '旷工天数',
    `fine_salary_multiples`    varchar(20)    DEFAULT NULL COMMENT '罚款工资倍数',
    `is_absenteeism`           varchar(20)    DEFAULT NULL COMMENT '是否旷工0不旷工1旷工',
    `is_enable`                int(20) DEFAULT NULL COMMENT '是否可用 0开启 1 关闭',
    `create_by`                varchar(64)    DEFAULT NULL,
    `create_date`              datetime       DEFAULT NULL,
    `update_by`                varchar(64)    DEFAULT NULL,
    `update_date`              datetime       DEFAULT NULL,
    `remarks`                  varchar(255)   DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `company_id` (`company_id`,`department_id`,`ded_type_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='扣款字典表';

/*Data for the table `atte_deduction_dict` */

insert into `atte_deduction_dict`(`id`, `company_id`, `department_id`, `ded_type_code`, `period_lower_limit`,
                                  `period_upper_limit`, `times_lower_limit`, `times_upper_limit`,
                                  `ded_amonut_lower_limit`, `ded_amonut_upper_limit`, `absence_times_upper_limt`,
                                  `absence_days`, `fine_salary_multiples`, `is_absenteeism`, `is_enable`, `create_by`,
                                  `create_date`, `update_by`, `update_date`, `remarks`)
values ('1154209434302550016', '1', '1', '53000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0,
        '1063705989926227968', '2019-07-25 09:59:08', '1063705989926227968', '2019-07-26 11:06:12', NULL),
       ('1154230672265711616', '1', '1063678149528784896', '51000', '30', '30', '2', '2', '30', '0', '0.5', '0.5', '2',
        NULL, 0, '1063705989926227968', '2019-07-25 11:23:31', '1063705989926227968', '2019-07-25 11:41:05', NULL),
       ('1154230672286683136', '1', '1063678149528784896', '52000', '30', '30', '2', '2', '30', '0', '0.5', '0.5', '2',
        NULL, 0, '1063705989926227968', '2019-07-25 11:23:31', '1063705989926227968', '2019-07-25 11:41:05', NULL),
       ('1154230672303460352', '1', '1063678149528784896', '53000', '30', '30', '2', '2', '30', '0', '0', '0.5', '2',
        NULL, 1, '1063705989926227968', '2019-07-25 11:23:32', '1063705989926227968', '2019-07-25 11:41:05', NULL),
       ('1156143748606988288', '1', '1063676045212913664', '51000', '30', '30', '2', '2', '30', '0', '0.5', '0.5', '2',
        NULL, 1, '1063705989926227968', '2019-07-30 18:05:24', '1063705989926227968', '2019-08-25 23:37:15', NULL),
       ('1156143748653125632', '1', '1063676045212913664', '52000', '30', '30', '2', '2', '30', '0', '0.5', '0.5', '2',
        NULL, 1, '1063705989926227968', '2019-07-30 18:05:24', '1063705989926227968', '2019-08-25 23:37:15', NULL),
       ('1156143748669902848', '1', '1063676045212913664', '53000', '30', '30', '2', '2', '30', '0', '0', '0.5', '2',
        NULL, 1, '1063705989926227968', '2019-07-30 18:05:24', '1063705989926227968', '2019-08-25 23:37:15', NULL),
       ('1156385060732145664', '1', '1066238836272664576', '51000', '30', '30', '2', '2', '30', '0', '0.5', '0.5', '2',
        NULL, 1, '1063705989926227968', '2019-07-31 10:04:18', NULL, NULL, NULL),
       ('1156385060807643136', '1', '1066238836272664576', '52000', '30', '30', '2', '2', '30', '0', '0.5', '0.5', '2',
        NULL, 0, '1063705989926227968', '2019-07-31 10:04:18', NULL, NULL, NULL),
       ('1156385060824420352', '1', '1066238836272664576', '53000', '30', '30', '2', '2', '30', '0', '0', '0.5', '2',
        NULL, 0, '1063705989926227968', '2019-07-31 10:04:18', NULL, NULL, NULL),
       ('1156399331587264512', '1', '1066240303092076544', '51000', '30', '30', '2', '2', '30', '0', '0.5', '0.5', '2',
        NULL, 0, '1063705989926227968', '2019-07-31 11:01:00', NULL, NULL, NULL),
       ('1156399331776008192', '1', '1066240303092076544', '52000', '30', '30', '2', '2', '30', '0', '0.5', '0.5', '2',
        NULL, 1, '1063705989926227968', '2019-07-31 11:01:00', NULL, NULL, NULL),
       ('1156399331801174016', '1', '1066240303092076544', '53000', '30', '30', '2', '2', '30', '0', '0', '0.5', '2',
        NULL, 1, '1063705989926227968', '2019-07-31 11:01:00', NULL, NULL, NULL);

/*Table structure for table `atte_deduction_type` */

DROP TABLE IF EXISTS `atte_deduction_type`;

CREATE TABLE `atte_deduction_type`
(
    `code`        varchar(20)  DEFAULT NULL COMMENT '扣款类型编码',
    `description` varchar(60)  DEFAULT NULL COMMENT '扣款类型编码说明',
    `create_by`   varchar(64)  DEFAULT NULL,
    `create_date` datetime     DEFAULT NULL,
    `update_by`   varchar(64)  DEFAULT NULL,
    `update_date` datetime     DEFAULT NULL,
    `remarks`     varchar(255) DEFAULT NULL,
    UNIQUE KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='扣款类型表';

/*Data for the table `atte_deduction_type` */

/*Table structure for table `atte_extra_duty_config` */

DROP TABLE IF EXISTS `atte_extra_duty_config`;

CREATE TABLE `atte_extra_duty_config`
(
    `id`                 varchar(40) NOT NULL COMMENT '主键ID',
    `company_id`         varchar(40)  DEFAULT NULL COMMENT '公司ID',
    `department_id`      varchar(40)  DEFAULT NULL COMMENT '部门ID',
    `work_hours_day`     int(20) DEFAULT NULL COMMENT '每日标准工作时长，单位小时',
    `is_clock`           int(20) DEFAULT NULL COMMENT '是否打卡0开启1关闭',
    `is_compensationint` varchar(30)  DEFAULT NULL COMMENT '是否开启加班补偿0开启1关闭',
    `create_by`          varchar(64)  DEFAULT NULL,
    `create_date`        datetime     DEFAULT NULL,
    `update_by`          varchar(64)  DEFAULT NULL,
    `update_date`        datetime     DEFAULT NULL,
    `remarks`            varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `company_id` (`company_id`,`department_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='加班配置表';

/*Data for the table `atte_extra_duty_config` */

insert into `atte_extra_duty_config`(`id`, `company_id`, `department_id`, `work_hours_day`, `is_clock`,
                                     `is_compensationint`, `create_by`, `create_date`, `update_by`, `update_date`,
                                     `remarks`)
values ('1151307541096042496', '1', '1', NULL, 0, '0', NULL, NULL, '1063705989926227968', '2019-07-17 18:02:11', NULL),
       ('1154295071408001024', '1', '1063676045212913664', NULL, 0, '1', '1063705989926227968', '2019-07-25 15:39:25',
        '1063705989926227968', '2019-08-26 00:20:37', NULL),
       ('1156399736442458112', '1', '1066238836272664576', NULL, 1, '1', '1063705989926227968', '2019-07-31 11:02:37',
        NULL, NULL, NULL),
       ('1156402185991491584', '1', '1063678149528784896', NULL, 1, '1', '1063705989926227968', '2019-07-31 11:12:21',
        NULL, NULL, NULL);

/*Table structure for table `atte_extra_duty_rule` */

DROP TABLE IF EXISTS `atte_extra_duty_rule`;

CREATE TABLE `atte_extra_duty_rule`
(
    `id`                   varchar(40) NOT NULL COMMENT '主键ID',
    `extra_duty_config_id` varchar(40)  DEFAULT NULL COMMENT '加班配置ID',
    `company_id`           varchar(40)  DEFAULT NULL COMMENT '公司ID',
    `department_id`        varchar(40)  DEFAULT NULL COMMENT '部门ID',
    `rule`                 varchar(150) DEFAULT NULL COMMENT '规则内容',
    `rule_start_time`      time         DEFAULT NULL COMMENT '规则生效每日开始时间',
    `rule_end_time`        time         DEFAULT NULL COMMENT '规则生效每日结束时间',
    `is_time_off`          varchar(10)  DEFAULT NULL COMMENT '是否调休0不调休1调休',
    `is_enable`            int(10) DEFAULT NULL COMMENT '是否可用 0开启 1 关闭',
    `create_by`            varchar(64)  DEFAULT NULL,
    `create_date`          datetime     DEFAULT NULL,
    `update_by`            varchar(64)  DEFAULT NULL,
    `update_date`          datetime     DEFAULT NULL,
    `remarks`              varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='加班规则';

/*Data for the table `atte_extra_duty_rule` */

insert into `atte_extra_duty_rule`(`id`, `extra_duty_config_id`, `company_id`, `department_id`, `rule`,
                                   `rule_start_time`, `rule_end_time`, `is_time_off`, `is_enable`, `create_by`,
                                   `create_date`, `update_by`, `update_date`, `remarks`)
values ('1156399736488595456', '1156399736442458112', '1', '1066238836272664576', '工作日可申请加班', '08:00:00', '12:00:00',
        '0', 0, NULL, NULL, NULL, NULL, NULL),
       ('1156399736488595457', '1156399736442458112', '1', '1066238836272664576', '休息日可申请加班', '00:00:00', '00:00:00',
        '1', 1, NULL, NULL, NULL, NULL, NULL),
       ('1156399736488595458', '1156399736442458112', '1', '1066238836272664576', '法定节假日可申请加班', '00:00:00', '00:00:00',
        '0', 0, NULL, NULL, NULL, NULL, NULL),
       ('1156402186025046016', '1156402185991491584', '1', '1063678149528784896', '工作日可申请加班', '00:00:00', '00:00:00',
        '1', 0, NULL, NULL, NULL, NULL, NULL),
       ('1156402186025046017', '1156402185991491584', '1', '1063678149528784896', '休息日可申请加班', '00:00:00', '00:00:00',
        '1', 1, NULL, NULL, NULL, NULL, NULL),
       ('1156402186025046018', '1156402185991491584', '1', '1063678149528784896', '法定节假日可申请加班', '00:00:00', '00:00:00',
        '1', 1, NULL, NULL, NULL, NULL, NULL),
       ('1165660260615196672', '1154295071408001024', '1', '1063676045212913664', '工作日可申请加班', '08:00:00', '12:00:00',
        '0', 0, NULL, NULL, NULL, NULL, NULL),
       ('1165660260615196673', '1154295071408001024', '1', '1063676045212913664', '休息日可申请加班', '13:00:00', '18:00:00',
        '1', 0, NULL, NULL, NULL, NULL, NULL),
       ('1165660260615196674', '1154295071408001024', '1', '1063676045212913664', '法定节假日可申请加班', '18:00:00', '22:00:00',
        '1', 1, NULL, NULL, NULL, NULL, NULL);

/*Table structure for table `atte_leave_config` */

DROP TABLE IF EXISTS `atte_leave_config`;

CREATE TABLE `atte_leave_config`
(
    `id`            varchar(40) NOT NULL COMMENT '主键ID',
    `company_id`    varchar(40)  DEFAULT NULL COMMENT '公司ID',
    `department_id` varchar(40)  DEFAULT NULL COMMENT '部门ID',
    `leave_type`    varchar(30)  DEFAULT NULL COMMENT '请假类型',
    `is_enable`     int(10) DEFAULT NULL COMMENT '是否可用 0开启 1 关闭',
    `create_by`     varchar(64)  DEFAULT NULL,
    `create_date`   datetime     DEFAULT NULL,
    `update_by`     varchar(64)  DEFAULT NULL,
    `update_date`   datetime     DEFAULT NULL,
    `remarks`       varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `company_id` (`company_id`,`department_id`,`leave_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='请假配置表';

/*Data for the table `atte_leave_config` */

insert into `atte_leave_config`(`id`, `company_id`, `department_id`, `leave_type`, `is_enable`, `create_by`,
                                `create_date`, `update_by`, `update_date`, `remarks`)
values ('1156389636130607104', '1', '1063678149528784896', 'REWARD_MATERNITY_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:22:29', '1063705989926227968', '2019-07-31 10:57:37', NULL),
       ('1156389636151578624', '1', '1063678149528784896', 'FUNERAL_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:22:29', '1063705989926227968', '2019-07-31 10:57:37', NULL),
       ('1156389636172550144', '1', '1063678149528784896', 'MATERNITY_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:22:29', '1063705989926227968', '2019-07-31 10:57:37', NULL),
       ('1156389636214493184', '1', '1063678149528784896', 'PATERNITY_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:22:29', '1063705989926227968', '2019-07-31 10:57:37', NULL),
       ('1156389636227076096', '1', '1063678149528784896', 'HOME_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:22:29', '1063705989926227968', '2019-07-31 10:57:37', NULL),
       ('1156389636243853312', '1', '1063678149528784896', 'ACCIDENTIAL_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:22:29', '1063705989926227968', '2019-07-31 10:57:37', NULL),
       ('1156389636260630528', '1', '1063678149528784896', 'DAY_OFF_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:22:29', '1063705989926227968', '2019-07-31 10:57:37', NULL),
       ('1156389636281602048', '1', '1063678149528784896', 'DOCTOR_OFF_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:22:29', '1063705989926227968', '2019-07-31 10:57:37', NULL),
       ('1156389636298379264', '1', '1063678149528784896', 'ABORTION_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:22:29', '1063705989926227968', '2019-07-31 10:57:37', NULL),
       ('1156389636310962176', '1', '1063678149528784896', 'LONG_SICK_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:22:29', '1063705989926227968', '2019-07-31 10:57:37', NULL),
       ('1156389636323545088', '1', '1063678149528784896', 'TEST_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:22:29', '1063705989926227968', '2019-07-31 10:57:37', NULL),
       ('1156389826736558080', '1', '1066239766607040512', 'YEAR_LEAVE', 0, '1063705989926227968',
        '2019-07-31 10:23:14', '1063705989926227968', '2019-07-31 10:52:33', NULL),
       ('1156389826749140992', '1', '1066239766607040512', 'LEAVE', 0, '1063705989926227968', '2019-07-31 10:23:14',
        '1063705989926227968', '2019-07-31 10:52:33', NULL),
       ('1156389826757529600', '1', '1066239766607040512', 'SICK_LEAVE', 0, '1063705989926227968',
        '2019-07-31 10:23:14', '1063705989926227968', '2019-07-31 10:52:33', NULL),
       ('1156389826770112512', '1', '1066239766607040512', 'REWARD_MATERNITY_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:23:14', '1063705989926227968', '2019-07-31 10:52:33', NULL),
       ('1156389826778501120', '1', '1066239766607040512', 'FUNERAL_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:23:14', '1063705989926227968', '2019-07-31 10:52:33', NULL),
       ('1156389826786889728', '1', '1066239766607040512', 'MATERNITY_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:23:14', '1063705989926227968', '2019-07-31 10:52:33', NULL),
       ('1156389826803666944', '1', '1066239766607040512', 'PATERNITY_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:23:14', '1063705989926227968', '2019-07-31 10:52:33', NULL),
       ('1156389826812055552', '1', '1066239766607040512', 'HOME_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:23:14', '1063705989926227968', '2019-07-31 10:52:33', NULL),
       ('1156389826816249856', '1', '1066239766607040512', 'ACCIDENTIAL_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:23:14', '1063705989926227968', '2019-07-31 10:52:33', NULL),
       ('1156389826824638464', '1', '1066239766607040512', 'DAY_OFF_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:23:14', '1063705989926227968', '2019-07-31 10:25:47', NULL),
       ('1156389826833027072', '1', '1066239766607040512', 'DOCTOR_OFF_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:23:14', '1063705989926227968', '2019-07-31 10:25:47', NULL),
       ('1156389826837221376', '1', '1066239766607040512', 'ABORTION_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:23:14', '1063705989926227968', '2019-07-31 10:25:47', NULL),
       ('1156389826845609984', '1', '1066239766607040512', 'LONG_SICK_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:23:14', '1063705989926227968', '2019-07-31 10:25:47', NULL),
       ('1156389826853998592', '1', '1066239766607040512', 'TEST_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:23:14', '1063705989926227968', '2019-07-31 10:25:47', NULL),
       ('1156394014753296384', '1', '1063676045212913664', 'YEAR_LEAVE', 0, '1063705989926227968',
        '2019-07-31 10:39:53', NULL, NULL, NULL),
       ('1156394014971400192', '1', '1063676045212913664', 'LEAVE', 1, '1063705989926227968', '2019-07-31 10:39:53',
        NULL, NULL, NULL),
       ('1156394015004954624', '1', '1063676045212913664', 'SICK_LEAVE', 0, '1063705989926227968',
        '2019-07-31 10:39:53', NULL, NULL, NULL),
       ('1156394015038509056', '1', '1063676045212913664', 'MARRAIAGE_LEAVE', 0, '1063705989926227968',
        '2019-07-31 10:39:53', NULL, NULL, NULL),
       ('1156394015072063488', '1', '1063676045212913664', 'FUNERAL_LEAVE', 0, '1063705989926227968',
        '2019-07-31 10:39:53', NULL, NULL, NULL),
       ('1156394015105617920', '1', '1063676045212913664', 'MATERNITY_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:39:53', NULL, NULL, NULL),
       ('1156394015122395136', '1', '1063676045212913664', 'REWARD_MATERNITY_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:39:53', NULL, NULL, NULL),
       ('1156394015143366656', '1', '1063676045212913664', 'PATERNITY_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:39:53', NULL, NULL, NULL),
       ('1156394015164338176', '1', '1063676045212913664', 'HOME_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:39:53', NULL, NULL, NULL),
       ('1156394015181115392', '1', '1063676045212913664', 'ACCIDENTIAL_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:39:53', NULL, NULL, NULL),
       ('1156394299437486080', '1', '1063678149528784896', 'YEAR_LEAVE', 0, '1063705989926227968',
        '2019-07-31 10:41:00', '1063705989926227968', '2019-07-31 10:57:37', NULL),
       ('1156394299466846208', '1', '1063678149528784896', 'LEAVE', 1, '1063705989926227968', '2019-07-31 10:41:00',
        '1063705989926227968', '2019-07-31 10:57:37', NULL),
       ('1156394299496206336', '1', '1063678149528784896', 'SICK_LEAVE', 0, '1063705989926227968',
        '2019-07-31 10:41:00', '1063705989926227968', '2019-07-31 10:57:37', NULL),
       ('1156394299525566464', '1', '1063678149528784896', 'MARRAIAGE_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:41:00', '1063705989926227968', '2019-07-31 10:57:37', NULL),
       ('1156395012125233152', '1', '1066238836272664576', 'YEAR_LEAVE', 0, '1063705989926227968',
        '2019-07-31 10:43:50', '1063705989926227968', '2019-07-31 10:51:53', NULL),
       ('1156395012150398976', '1', '1066238836272664576', 'LEAVE', 0, '1063705989926227968', '2019-07-31 10:43:50',
        '1063705989926227968', '2019-07-31 10:51:53', NULL),
       ('1156395012171370496', '1', '1066238836272664576', 'SICK_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:43:50', '1063705989926227968', '2019-07-31 10:51:53', NULL),
       ('1156395012192342016', '1', '1066238836272664576', 'MARRAIAGE_LEAVE', 0, '1063705989926227968',
        '2019-07-31 10:43:50', '1063705989926227968', '2019-07-31 10:51:53', NULL),
       ('1156395012213313536', '1', '1066238836272664576', 'FUNERAL_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:43:50', '1063705989926227968', '2019-07-31 10:51:53', NULL),
       ('1156395012234285056', '1', '1066238836272664576', 'MATERNITY_LEAVE', 0, '1063705989926227968',
        '2019-07-31 10:43:50', '1063705989926227968', '2019-07-31 10:51:53', NULL),
       ('1156395012255256576', '1', '1066238836272664576', 'REWARD_MATERNITY_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:43:50', '1063705989926227968', '2019-07-31 10:51:53', NULL),
       ('1156395012267839488', '1', '1066238836272664576', 'PATERNITY_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:43:50', '1063705989926227968', '2019-07-31 10:51:53', NULL),
       ('1156395012280422400', '1', '1066238836272664576', 'HOME_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:43:50', '1063705989926227968', '2019-07-31 10:51:53', NULL),
       ('1156395012293005312', '1', '1066238836272664576', 'ACCIDENTIAL_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:43:50', '1063705989926227968', '2019-07-31 10:51:53', NULL),
       ('1156395240492503040', '1', '1066239913642561536', 'YEAR_LEAVE', 0, '1063705989926227968',
        '2019-07-31 10:44:45', NULL, NULL, NULL),
       ('1156395240513474560', '1', '1066239913642561536', 'LEAVE', 0, '1063705989926227968', '2019-07-31 10:44:45',
        NULL, NULL, NULL),
       ('1156395240534446080', '1', '1066239913642561536', 'SICK_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:44:45', NULL, NULL, NULL),
       ('1156395240559611904', '1', '1066239913642561536', 'MARRAIAGE_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:44:45', NULL, NULL, NULL),
       ('1156395240584777728', '1', '1066239913642561536', 'FUNERAL_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:44:45', NULL, NULL, NULL),
       ('1156395240605749248', '1', '1066239913642561536', 'MATERNITY_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:44:45', NULL, NULL, NULL),
       ('1156395240618332160', '1', '1066239913642561536', 'REWARD_MATERNITY_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:44:45', NULL, NULL, NULL),
       ('1156395240630915072', '1', '1066239913642561536', 'PATERNITY_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:44:45', NULL, NULL, NULL),
       ('1156395240643497984', '1', '1066239913642561536', 'HOME_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:44:45', NULL, NULL, NULL),
       ('1156395240660275200', '1', '1066239913642561536', 'ACCIDENTIAL_LEAVE', 1, '1063705989926227968',
        '2019-07-31 10:44:45', NULL, NULL, NULL),
       ('1156397203233837056', '1', '1066239766607040512', 'MARRAIAGE_LEAVE', 0, '1063705989926227968',
        '2019-07-31 10:52:33', NULL, NULL, NULL);

/*Table structure for table `bs_city` */

DROP TABLE IF EXISTS `bs_city`;

CREATE TABLE `bs_city`
(
    `id`          varchar(40)  NOT NULL,
    `name`        varchar(255) NOT NULL,
    `create_time` datetime DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `bs_city` */

insert into `bs_city`(`id`, `name`, `create_time`)
values ('1084825908823904256', '北京', NULL);

/*Table structure for table `bs_month` */

DROP TABLE IF EXISTS `bs_month`;

CREATE TABLE `bs_month`
(
    `month` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bs_month` */

insert into `bs_month`(`month`)
values ('01'),
       ('02'),
       ('03'),
       ('04'),
       ('05'),
       ('06'),
       ('07'),
       ('08'),
       ('09'),
       ('10'),
       ('11'),
       ('12');

/*Table structure for table `bs_permission` */

DROP TABLE IF EXISTS `bs_permission`;

CREATE TABLE `bs_permission`
(
    `id`                 varchar(40)  NOT NULL,
    `user_id`            varchar(255) NOT NULL,
    `company_id`         varchar(255) NOT NULL,
    `administrator_name` varchar(255) NOT NULL,
    `management_module`  text,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `bs_permission` */

/*Table structure for table `bs_user` */

DROP TABLE IF EXISTS `bs_user`;

CREATE TABLE `bs_user`
(
    `id`                 varchar(40)  NOT NULL COMMENT 'ID',
    `mobile`             varchar(40)  NOT NULL COMMENT '手机号码',
    `username`           varchar(255) NOT NULL COMMENT '用户名称',
    `password`           varchar(255) DEFAULT NULL COMMENT '密码',
    `enable_state`       int(2) DEFAULT '1' COMMENT '启用状态 0是禁用，1是启用',
    `create_time`        datetime     DEFAULT NULL COMMENT '创建时间',
    `department_id`      varchar(40)  DEFAULT NULL COMMENT '部门ID',
    `time_of_entry`      datetime     DEFAULT NULL COMMENT '入职时间',
    `form_of_employment` int(1) DEFAULT NULL COMMENT '聘用形式',
    `work_number`        varchar(20)  DEFAULT NULL COMMENT '工号',
    `form_of_management` varchar(8)   DEFAULT NULL COMMENT '管理形式',
    `working_city`       varchar(16)  DEFAULT NULL COMMENT '工作城市',
    `correction_time`    datetime     DEFAULT NULL COMMENT '转正时间',
    `in_service_status`  int(1) DEFAULT NULL COMMENT '在职状态 1.在职  2.离职',
    `company_id`         varchar(40)  DEFAULT NULL COMMENT '企业ID',
    `company_name`       varchar(40)  DEFAULT NULL,
    `department_name`    varchar(40)  DEFAULT NULL,
    `level`              varchar(40)  DEFAULT NULL COMMENT '用户级别：saasAdmin，coAdmin，user',
    `staff_photo`        mediumtext,
    `time_of_dimission`  datetime     DEFAULT NULL COMMENT '离职时间',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `idx_user_phone` (`mobile`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `bs_user` */

insert into `bs_user`(`id`, `mobile`, `username`, `password`, `enable_state`, `create_time`, `department_id`,
                      `time_of_entry`, `form_of_employment`, `work_number`, `form_of_management`, `working_city`,
                      `correction_time`, `in_service_status`, `company_id`, `company_name`, `department_name`, `level`,
                      `staff_photo`, `time_of_dimission`)
values ('1063705482939731968', '13800000001', 'cgx', '88012a09484c94fcec9e65b2377c44b9', NULL, '2018-11-17 16:08:44',
        '', '2018-11-01 08:00:00', 1, '', NULL, NULL, '2018-11-01 00:00:00', 0, '', '', '', 'saasAdmin', NULL, NULL),
       ('1063705989926227968', '13800000002', 'itcast', 'c8b7722b1139bb9b346409e503302e82', 1, '2018-11-17 16:10:45',
        '1175311466846683136', '2018-11-02 08:00:00', 1, '9002', NULL, NULL, '2018-11-30 00:00:00', 0, '1', '传智播客',
        '市场部', 'coAdmin', 'http://pkbivgfrm.bkt.clouddn.com/1063705989926227968?t=1545788007343',
        '2019-08-17 16:10:45'),
       ('1066370498633486336', '13800000003', 'zbz', '14af10ffa3798486632a79cbbf469376', 1, NULL, '1175311466846683136',
        '2018-11-04 08:00:00', 1, '111', NULL, NULL, '2018-11-20 00:00:00', 0, '1', '传智播客', '市场部', 'user',
        'http://pkbivgfrm.bkt.clouddn.com/1066370498633486336?t=1545812322518', NULL),
       ('1071632760222810112', '13800000004', 'll', '456134d471010ecba14c6f89cac349ff', 1, NULL, '1175311267684352000',
        '2018-12-02 08:00:00', 1, '1111', NULL, NULL, '2018-12-31 00:00:00', 0, '1', '传智播客', '人事部', 'user', NULL, NULL),
       ('1074238801330704384', '13400000001', 'a01', '80069fc2872ce3cf269053f4a84b2f0d', 1, '2018-12-16 17:44:22',
        '1175311267684352000', '2018-01-01 00:00:00', 1, '1001', NULL, NULL, NULL, 1, '1', '传智播客', '人事部', 'user', NULL,
        NULL),
       ('1074238801402007552', '13400000002', 'a02', 'a4f6437f96466ff2ad41dc8c46317e7f', 1, '2018-12-16 17:44:23',
        '1175311267684352000', '2018-01-01 00:00:00', 1, '1002', NULL, NULL, NULL, 1, '1', '传智播客', '人事部', 'user', NULL,
        NULL),
       ('1075383133106425856', '13500000001', 'test001', 'aa824c0d32d9725482e58a7503a20521', 1, NULL,
        '1175310929766055936', '2018-01-01 00:00:00', 1, '2001', NULL, NULL, NULL, 1, '1', '传智播客', '总裁办', 'user', NULL,
        NULL),
       ('1075383135371350016', '13500000002', 'test002', 'becc21ed8df7975fc845c6c70f46c2dd', 1, NULL,
        '1175310929766055936', '2018-01-01 00:00:00', 1, '2002', NULL, NULL, NULL, 1, '1', '传智播客', '总裁办', 'user', NULL,
        NULL),
       ('1075383135459430400', '13500000003', 'test003', '7321b9c9cfaa938abc7408147fc29441', 1, NULL,
        '1175311325720936448', '2018-01-01 00:00:00', 1, '2003', NULL, NULL, NULL, 1, '1', '传智播客', '财务部', 'user', NULL,
        NULL);

/*Table structure for table `co_company` */

DROP TABLE IF EXISTS `co_company`;

CREATE TABLE `co_company`
(
    `id`                   varchar(40) NOT NULL COMMENT 'ID',
    `name`                 varchar(255) DEFAULT NULL COMMENT '公司名称',
    `manager_id`           varchar(255) DEFAULT NULL COMMENT '企业登录账号ID',
    `version`              varchar(255) DEFAULT NULL COMMENT '当前版本',
    `renewal_date`         datetime     DEFAULT NULL COMMENT '续期时间',
    `expiration_date`      datetime     DEFAULT NULL COMMENT '到期时间',
    `company_area`         varchar(255) DEFAULT NULL COMMENT '公司地区',
    `company_address`      text COMMENT '公司地址',
    `business_license_id`  varchar(255) DEFAULT NULL COMMENT '营业执照-图片ID',
    `legal_representative` varchar(255) DEFAULT NULL COMMENT '法人代表',
    `company_phone`        varchar(255) DEFAULT NULL COMMENT '公司电话',
    `mailbox`              varchar(255) DEFAULT NULL COMMENT '邮箱',
    `company_size`         varchar(255) DEFAULT NULL COMMENT '公司规模',
    `industry`             varchar(255) DEFAULT NULL COMMENT '所属行业',
    `remarks`              text COMMENT '备注',
    `audit_state`          varchar(255) DEFAULT NULL COMMENT '审核状态',
    `state`                tinyint(2) DEFAULT '1' COMMENT '状态',
    `balance`              double       DEFAULT NULL COMMENT '当前余额',
    `create_time`          datetime     DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `co_company` */

insert into `co_company`(`id`, `name`, `manager_id`, `version`, `renewal_date`, `expiration_date`, `company_area`,
                         `company_address`, `business_license_id`, `legal_representative`, `company_phone`, `mailbox`,
                         `company_size`, `industry`, `remarks`, `audit_state`, `state`, `balance`, `create_time`)
values ('1', '江苏传智播客教育科技股份有限公司', 'abc', '12', NULL, NULL, NULL, NULL, NULL, '张三', NULL, NULL, NULL, NULL, NULL, '0', 1,
        0, '2018-11-07 13:30:05'),
       ('1060043412612452352', 'zhangsan', 'abc', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, '0', 1, 0, '2018-11-07 13:36:58'),
       ('1061532681482932224', 'zhangsan', 'abc', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, '0', 1, 0, '2018-11-11 16:14:48'),
       ('1065494996154650624', '江苏传智播客教育股份有限公司', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, '0', 1, NULL, NULL);

/*Table structure for table `co_department` */

DROP TABLE IF EXISTS `co_department`;

CREATE TABLE `co_department`
(
    `id`          varchar(40)  NOT NULL,
    `company_id`  varchar(255) NOT NULL COMMENT '企业ID',
    `pid`         varchar(255) DEFAULT NULL COMMENT '父级部门ID',
    `name`        varchar(255) DEFAULT NULL COMMENT '部门名称',
    `code`        varchar(255) DEFAULT NULL COMMENT '部门编码',
    `manager`     varchar(40)  DEFAULT NULL COMMENT '部门负责人',
    `introduce`   text COMMENT '介绍',
    `create_time` datetime     DEFAULT NULL COMMENT '创建时间',
    `manager_id`  varchar(255) DEFAULT NULL COMMENT '负责人ID',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `co_department` */

insert into `co_department`(`id`, `company_id`, `pid`, `name`, `code`, `manager`, `introduce`, `create_time`,
                            `manager_id`)
values ('1175310929766055936', '1', '', '总裁办', 'ZCB', NULL, '总裁办公室', NULL, NULL),
       ('1175311213774962688', '1', '', '行政部', 'XZB', NULL, NULL, NULL, NULL),
       ('1175311267684352000', '1', '', '人事部', 'RSB', 'll', NULL, NULL, '1071632760222810112'),
       ('1175311325720936448', '1', '', '财务部', 'CWB', NULL, NULL, NULL, NULL),
       ('1175311373083017216', '1', '', '技术部', 'JSB', NULL, NULL, NULL, NULL),
       ('1175311418004013056', '1', '', '运营部', 'YYB', NULL, NULL, NULL, NULL),
       ('1175311466846683136', '1', '', '市场部', 'SCB', 'itcast', NULL, NULL, '1063705989926227968');

/*Table structure for table `co_transaction_record` */

DROP TABLE IF EXISTS `co_transaction_record`;

CREATE TABLE `co_transaction_record`
(
    `id`          varchar(40)  NOT NULL,
    `company_id`  varchar(255) NOT NULL,
    `user_id`     varchar(255) NOT NULL,
    `type`        int(2) NOT NULL,
    `amount`      double       NOT NULL,
    `balance`     double       NOT NULL,
    `note`        text,
    `create_time` datetime     NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `co_transaction_record` */

/*Table structure for table `em_archive` */

DROP TABLE IF EXISTS `em_archive`;

CREATE TABLE `em_archive`
(
    `id`          varchar(40)  NOT NULL COMMENT 'ID',
    `op_user`     varchar(255) NOT NULL COMMENT '操作用户',
    `month`       varchar(255) NOT NULL COMMENT '月份',
    `company_id`  varchar(255) NOT NULL COMMENT '企业ID',
    `totals`      int(8) NOT NULL DEFAULT '0' COMMENT '总人数',
    `payrolls`    int(8) NOT NULL DEFAULT '0' COMMENT '在职人数',
    `departures`  int(8) NOT NULL DEFAULT '0' COMMENT '离职人数',
    `data`        longtext COMMENT '数据',
    `create_time` datetime     NOT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `em_archive` */

/*Table structure for table `em_positive` */

DROP TABLE IF EXISTS `em_positive`;

CREATE TABLE `em_positive`
(
    `user_id`               varchar(40) NOT NULL COMMENT '员工ID',
    `date_of_correction`    datetime DEFAULT NULL COMMENT '转正日期',
    `correction_evaluation` text COMMENT '转正评价',
    `enclosure`             text COMMENT '附件',
    `estatus`               int(2) NOT NULL COMMENT '单据状态 1是未执行，2是已执行',
    `create_time`           datetime    NOT NULL COMMENT '创建时间',
    PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `em_positive` */

insert into `em_positive`(`user_id`, `date_of_correction`, `correction_evaluation`, `enclosure`, `estatus`,
                          `create_time`)
values ('1063705989926227968', '2018-12-23 08:00:00', '111', NULL, 1, '2018-12-15 21:45:10');

/*Table structure for table `em_resignation` */

DROP TABLE IF EXISTS `em_resignation`;

CREATE TABLE `em_resignation`
(
    `user_id`                         varchar(40)  NOT NULL COMMENT '用户ID',
    `resignation_time`                varchar(255) NOT NULL,
    `type_of_turnover`                varchar(255) DEFAULT NULL COMMENT '离职类型',
    `reasons_for_leaving`             varchar(255) DEFAULT NULL COMMENT '申请离职原因',
    `compensation`                    varchar(255) DEFAULT NULL COMMENT '补偿金',
    `notifications`                   varchar(255) DEFAULT NULL COMMENT '代通知金',
    `social_security_reduction_month` varchar(255) DEFAULT NULL COMMENT '社保减员月',
    `provident_fund_reduction_month`  varchar(255) DEFAULT NULL COMMENT '公积金减员月',
    `picture`                         varchar(255) DEFAULT NULL COMMENT '图片',
    `create_time`                     datetime     NOT NULL COMMENT '创建时间',
    PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `em_resignation` */

insert into `em_resignation`(`user_id`, `resignation_time`, `type_of_turnover`, `reasons_for_leaving`, `compensation`,
                             `notifications`, `social_security_reduction_month`, `provident_fund_reduction_month`,
                             `picture`, `create_time`)
values ('1063705989926227968', '2018-02-05', '主动离职', NULL, '100', '100', '离职日本月', '离职日次月', NULL, '2018-12-16 20:49:26');

/*Table structure for table `em_transferposition` */

DROP TABLE IF EXISTS `em_transferposition`;

CREATE TABLE `em_transferposition`
(
    `user_id`                          varchar(40) NOT NULL COMMENT '用户ID',
    `post`                             varchar(255) DEFAULT NULL COMMENT '岗位',
    `rank`                             varchar(255) DEFAULT NULL COMMENT '职级',
    `reporting_object`                 varchar(255) DEFAULT NULL COMMENT '汇报对象',
    `hrbp`                             varchar(255) DEFAULT NULL COMMENT 'HRBP',
    `adjustment_time`                  datetime    NOT NULL COMMENT '调岗时间',
    `cause_of_adjusting_post`          text COMMENT '调岗原因',
    `enclosure`                        text COMMENT '附件 [1,2,3]',
    `form_of_management`               varchar(255) DEFAULT NULL COMMENT '管理形式',
    `working_city`                     varchar(255) DEFAULT NULL COMMENT '工作城市',
    `taxable_city`                     varchar(255) DEFAULT NULL COMMENT '纳税城市',
    `current_contract_start_time`      varchar(255) DEFAULT NULL COMMENT '现合同开始时间',
    `closing_time_of_current_contract` varchar(255) DEFAULT NULL COMMENT '现合同结束时间',
    `working_place`                    varchar(255) DEFAULT NULL COMMENT '工作地点',
    `initial_contract_start_time`      varchar(255) DEFAULT NULL COMMENT '首次合同开始时间',
    `first_contract_termination_time`  varchar(255) DEFAULT NULL COMMENT '首次合同结束时间',
    `contract_period`                  varchar(255) DEFAULT NULL COMMENT '合同期限',
    `renewal_number`                   int(8) DEFAULT NULL COMMENT '续签次数',
    `recommender_business_people`      varchar(255) DEFAULT NULL COMMENT '推荐企业人',
    `estatus`                          int(2) NOT NULL COMMENT '单据状态 1是未执行，2是已执行',
    `create_time`                      datetime    NOT NULL COMMENT '创建时间',
    PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `em_transferposition` */

insert into `em_transferposition`(`user_id`, `post`, `rank`, `reporting_object`, `hrbp`, `adjustment_time`,
                                  `cause_of_adjusting_post`, `enclosure`, `form_of_management`, `working_city`,
                                  `taxable_city`, `current_contract_start_time`, `closing_time_of_current_contract`,
                                  `working_place`, `initial_contract_start_time`, `first_contract_termination_time`,
                                  `contract_period`, `renewal_number`, `recommender_business_people`, `estatus`,
                                  `create_time`)
values ('1063705989926227968', '', '', '', '', '2018-12-03 08:00:00', 'aaaaa', '', '', '', '', '2018-12-03',
        '2018-12-04', '', '', '', '12月', 1, '', 1, '2018-12-15 22:01:08');

/*Table structure for table `em_user_company` */

DROP TABLE IF EXISTS `em_user_company`;

CREATE TABLE `em_user_company`
(
    `user_id`            varchar(40)  NOT NULL COMMENT '用户ID',
    `company_id`         varchar(255) NOT NULL COMMENT '企业ID',
    `department_id`      varchar(255) DEFAULT NULL COMMENT '部门ID',
    `time_of_entry`      datetime     DEFAULT NULL COMMENT '入职时间',
    `form_of_employment` varchar(255) DEFAULT NULL COMMENT '聘用形式',
    `work_number`        varchar(255) DEFAULT NULL COMMENT '工号',
    `form_of_management` varchar(255) DEFAULT NULL COMMENT '管理形式',
    `working_city`       varchar(255) DEFAULT NULL COMMENT '工作城市',
    `correction_time`    datetime     DEFAULT NULL COMMENT '转正时间',
    `in_service_status`  tinyint(2) NOT NULL DEFAULT '1' COMMENT '在职状态 1.在职  2.离职',
    `state`              tinyint(2) NOT NULL DEFAULT '1' COMMENT '启用状态',
    PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `em_user_company` */

/*Table structure for table `em_user_company_jobs` */

DROP TABLE IF EXISTS `em_user_company_jobs`;

CREATE TABLE `em_user_company_jobs`
(
    `user_id`                          varchar(40) NOT NULL COMMENT '员工ID',
    `company_id`                       varchar(255) DEFAULT NULL COMMENT '企业ID',
    `post`                             varchar(255) DEFAULT NULL COMMENT '岗位',
    `work_mailbox`                     varchar(255) DEFAULT NULL COMMENT '工作邮箱',
    `rank`                             varchar(255) DEFAULT NULL COMMENT '职级',
    `correction_evaluation`            text COMMENT '转正评价',
    `report_id`                        varchar(255) DEFAULT NULL COMMENT '汇报对象',
    `report_name`                      varchar(255) DEFAULT NULL,
    `state_of_correction`              varchar(255) DEFAULT NULL COMMENT '转正状态',
    `hrbp`                             varchar(255) DEFAULT NULL COMMENT 'hrbp',
    `working_time_for_the_first_time`  varchar(255) DEFAULT NULL COMMENT '首次参加工作时间',
    `adjustment_agedays`               int(8) DEFAULT NULL COMMENT '调整司龄天',
    `adjustment_of_length_of_service`  int(8) DEFAULT NULL COMMENT '调整工龄天',
    `working_city`                     varchar(255) DEFAULT NULL COMMENT '工作城市',
    `taxable_city`                     varchar(255) DEFAULT NULL COMMENT '纳税城市',
    `current_contract_start_time`      varchar(255) DEFAULT NULL COMMENT '现合同开始时间',
    `closing_time_of_current_contract` varchar(255) DEFAULT NULL COMMENT '现合同结束时间',
    `initial_contract_start_time`      varchar(255) DEFAULT NULL COMMENT '首次合同开始时间',
    `first_contract_termination_time`  varchar(255) DEFAULT NULL COMMENT '首次合同结束时间',
    `contract_period`                  varchar(255) DEFAULT NULL COMMENT '合同期限',
    `contract_documents`               varchar(255) DEFAULT NULL COMMENT '合同文件',
    `renewal_number`                   int(8) DEFAULT NULL COMMENT '续签次数',
    `other_recruitment_channels`       varchar(255) DEFAULT NULL COMMENT '其他招聘渠道',
    `recruitment_channels`             varchar(255) DEFAULT NULL COMMENT '招聘渠道',
    `social_recruitment`               varchar(255) DEFAULT NULL COMMENT '社招校招',
    `recommender_business_people`      varchar(255) DEFAULT NULL COMMENT '推荐企业人',
    PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `em_user_company_jobs` */

insert into `em_user_company_jobs`(`user_id`, `company_id`, `post`, `work_mailbox`, `rank`, `correction_evaluation`,
                                   `report_id`, `report_name`, `state_of_correction`, `hrbp`,
                                   `working_time_for_the_first_time`, `adjustment_agedays`,
                                   `adjustment_of_length_of_service`, `working_city`, `taxable_city`,
                                   `current_contract_start_time`, `closing_time_of_current_contract`,
                                   `initial_contract_start_time`, `first_contract_termination_time`, `contract_period`,
                                   `contract_documents`, `renewal_number`, `other_recruitment_channels`,
                                   `recruitment_channels`, `social_recruitment`, `recommender_business_people`)
values ('1063705989926227968', '1', '文员', NULL, NULL, NULL, NULL, NULL, NULL, '1066370498633486336', NULL, 1, NULL,
        NULL, NULL, '2018-12-25', '2018-12-21', '2018-12-03', '2018-12-04', '6月', NULL, 1, '拉勾网', '猎头', '社招', '百度');

/*Table structure for table `em_user_company_personal` */

DROP TABLE IF EXISTS `em_user_company_personal`;

CREATE TABLE `em_user_company_personal`
(
    `user_id`                                     varchar(40)  NOT NULL COMMENT '用户ID',
    `username`                                    varchar(255) DEFAULT NULL,
    `mobile`                                      varchar(255) DEFAULT NULL,
    `time_of_entry`                               varchar(255) DEFAULT NULL,
    `department_name`                             varchar(255) DEFAULT NULL,
    `company_id`                                  varchar(255) NOT NULL COMMENT '公司ID',
    `sex`                                         varchar(255) DEFAULT NULL COMMENT '性别',
    `date_of_birth`                               varchar(255) DEFAULT NULL COMMENT '出生日期',
    `the_highest_degree_of_education`             varchar(255) DEFAULT NULL COMMENT '最高学历',
    `national_area`                               varchar(255) DEFAULT NULL COMMENT '国家地区',
    `passport_no`                                 varchar(255) DEFAULT NULL COMMENT '护照号',
    `id_number`                                   varchar(255) DEFAULT NULL COMMENT '身份证号',
    `id_card_photo_positive`                      varchar(255) DEFAULT NULL COMMENT '身份证照片-正面',
    `id_card_photo_back`                          varchar(255) DEFAULT NULL COMMENT '身份证照片-背面',
    `native_place`                                varchar(255) DEFAULT NULL COMMENT '籍贯',
    `nation`                                      varchar(255) DEFAULT NULL COMMENT '民族',
    `english_name`                                varchar(255) DEFAULT NULL COMMENT '英文名',
    `marital_status`                              varchar(255) DEFAULT NULL COMMENT '婚姻状况',
    `staff_photo`                                 varchar(255) DEFAULT NULL COMMENT '员工照片',
    `birthday`                                    varchar(255) DEFAULT NULL COMMENT '生日',
    `zodiac`                                      varchar(255) DEFAULT NULL COMMENT '属相',
    `age`                                         varchar(255) DEFAULT NULL COMMENT '年龄',
    `constellation`                               varchar(255) DEFAULT NULL COMMENT '星座',
    `blood_type`                                  varchar(255) DEFAULT NULL COMMENT '血型',
    `domicile`                                    varchar(255) DEFAULT NULL COMMENT '户籍所在地',
    `political_outlook`                           varchar(255) DEFAULT NULL COMMENT '政治面貌',
    `time_to_join_the_party`                      varchar(255) DEFAULT NULL COMMENT '入党时间',
    `archiving_organization`                      varchar(255) DEFAULT NULL COMMENT '存档机构',
    `state_of_children`                           varchar(255) DEFAULT NULL COMMENT '子女状态',
    `do_children_have_commercial_insurance`       varchar(255) DEFAULT NULL COMMENT '子女有无商业保险',
    `is_there_any_violation_of_law_or_discipline` varchar(255) DEFAULT NULL COMMENT '有无违法违纪行为',
    `are_there_any_major_medical_histories`       varchar(255) DEFAULT NULL COMMENT '有无重大病史',
    `qq`                                          varchar(255) DEFAULT NULL COMMENT 'QQ',
    `wechat`                                      varchar(255) DEFAULT NULL COMMENT '微信',
    `residence_card_city`                         varchar(255) DEFAULT NULL COMMENT '居住证城市',
    `date_of_residence_permit`                    varchar(255) DEFAULT NULL COMMENT '居住证办理日期',
    `residence_permit_deadline`                   varchar(255) DEFAULT NULL COMMENT '居住证截止日期',
    `place_of_residence`                          varchar(255) DEFAULT NULL COMMENT '现居住地',
    `postal_address`                              varchar(255) DEFAULT NULL COMMENT '通讯地址',
    `contact_the_mobile_phone`                    varchar(255) DEFAULT NULL,
    `personal_mailbox`                            varchar(255) DEFAULT NULL,
    `emergency_contact`                           varchar(255) DEFAULT NULL COMMENT '紧急联系人',
    `emergency_contact_number`                    varchar(255) DEFAULT NULL COMMENT '紧急联系电话',
    `social_security_computer_number`             varchar(255) DEFAULT NULL COMMENT '社保电脑号',
    `provident_fund_account`                      varchar(255) DEFAULT NULL COMMENT '公积金账号',
    `bank_card_number`                            varchar(255) DEFAULT NULL COMMENT '银行卡号',
    `opening_bank`                                varchar(255) DEFAULT NULL COMMENT '开户行',
    `educational_type`                            varchar(255) DEFAULT NULL COMMENT '学历类型',
    `graduate_school`                             varchar(255) DEFAULT NULL COMMENT '毕业学校',
    `enrolment_time`                              varchar(255) DEFAULT NULL COMMENT '入学时间',
    `graduation_time`                             varchar(255) DEFAULT NULL COMMENT '毕业时间',
    `major`                                       varchar(255) DEFAULT NULL COMMENT '专业',
    `graduation_certificate`                      varchar(255) DEFAULT NULL COMMENT '毕业证书',
    `certificate_of_academic_degree`              varchar(255) DEFAULT NULL COMMENT '学位证书',
    `home_company`                                varchar(255) DEFAULT NULL COMMENT '上家公司',
    `title`                                       varchar(255) DEFAULT NULL COMMENT '职称',
    `resume`                                      varchar(255) DEFAULT NULL COMMENT '简历',
    `is_there_any_competition_restriction`        varchar(255) DEFAULT NULL COMMENT '有无竞业限制',
    `proof_of_departure_of_former_company`        varchar(255) DEFAULT NULL COMMENT '前公司离职证明',
    `remarks`                                     text COMMENT '备注',
    PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `em_user_company_personal` */

insert into `em_user_company_personal`(`user_id`, `username`, `mobile`, `time_of_entry`, `department_name`,
                                       `company_id`, `sex`, `date_of_birth`, `the_highest_degree_of_education`,
                                       `national_area`, `passport_no`, `id_number`, `id_card_photo_positive`,
                                       `id_card_photo_back`, `native_place`, `nation`, `english_name`, `marital_status`,
                                       `staff_photo`, `birthday`, `zodiac`, `age`, `constellation`, `blood_type`,
                                       `domicile`, `political_outlook`, `time_to_join_the_party`,
                                       `archiving_organization`, `state_of_children`,
                                       `do_children_have_commercial_insurance`,
                                       `is_there_any_violation_of_law_or_discipline`,
                                       `are_there_any_major_medical_histories`, `qq`, `wechat`, `residence_card_city`,
                                       `date_of_residence_permit`, `residence_permit_deadline`, `place_of_residence`,
                                       `postal_address`, `contact_the_mobile_phone`, `personal_mailbox`,
                                       `emergency_contact`, `emergency_contact_number`,
                                       `social_security_computer_number`, `provident_fund_account`, `bank_card_number`,
                                       `opening_bank`, `educational_type`, `graduate_school`, `enrolment_time`,
                                       `graduation_time`, `major`, `graduation_certificate`,
                                       `certificate_of_academic_degree`, `home_company`, `title`, `resume`,
                                       `is_there_any_competition_restriction`, `proof_of_departure_of_former_company`,
                                       `remarks`)
values ('1', 'test1', '13000000001', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('101', 'test101', '13000000101', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('102', 'test102', '13000000102', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('103', 'test103', '13000000103', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('104', 'test104', '13000000104', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('105', 'test105', '13000000105', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('106', 'test106', '13000000106', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('1063705989926227955', 'a02', '13400000002', '2018-02-03', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '',
        '', '1234', '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('1063705989926227961', 'a02', '13400000002', '2018-02-03', '开发部', '1', '', '', '初中', NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1063705989926227968', 'itcast', '13800000002', '2018-11-02T00:00:00.000+0000', 'test1', '1', '女',
        '2019-07-30T16:00:00.000Z', '本科', NULL, NULL, '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, '123', '123', '12', '333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL),
       ('1066370498633486336', 'zbz', '13800000003', '2018-11-04T00:00:00.000+0000', '测试部', '1', NULL, NULL, '高中',
        '港澳台国外', 'xxxx', '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        'x1111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('107', 'test107', '13000000107', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('1074238801402007552', 'a02', '13400000002', '2018-02-01', '开发部', '1', NULL, NULL, '初中', '中国大陆', NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1074238801402007555', 'a02', '13400000002', '2018-02-01', '开发部', '1', '', '', '初中', NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('108', 'test108', '13000000108', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('109', 'test109', '13000000109', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('11', 'test11', '13000000011', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('110', 'test110', '13000000110', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('12', 'test12', '13000000012', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('13', 'test13', '13000000013', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('14', 'test14', '13000000014', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('15', 'test15', '13000000015', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('16', 'test16', '13000000016', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('17', 'test17', '13000000017', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('18', 'test18', '13000000018', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('19', 'test19', '13000000019', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('2', 'test2', '13000000002', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', ''),
       ('20', 'test20', '13000000020', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('21', 'test21', '13000000021', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('22', 'test22', '13000000022', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('23', 'test23', '13000000023', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('24', 'test24', '13000000024', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('25', 'test25', '13000000025', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('26', 'test26', '13000000026', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('27', 'test27', '13000000027', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('28', 'test28', '13000000028', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('29', 'test29', '13000000029', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('3', 'test3', '13000000003', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('30', 'test30', '13000000030', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('31', 'test31', '13000000031', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('32', 'test32', '13000000032', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('33', 'test33', '13000000033', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('34', 'test34', '13000000034', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('35', 'test35', '13000000035', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('36', 'test36', '13000000036', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('37', 'test37', '13000000037', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('38', 'test38', '13000000038', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('39', 'test39', '13000000039', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('4', 'test4', '13000000004', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', ''),
       ('40', 'test40', '13000000040', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('41', 'test41', '13000000041', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('42', 'test42', '13000000042', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('43', 'test43', '13000000043', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('44', 'test44', '13000000044', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('45', 'test45', '13000000045', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('46', 'test46', '13000000046', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('47', 'test47', '13000000047', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('48', 'test48', '13000000048', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('49', 'test49', '13000000049', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('5', 'test5', '13000000005', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('50', 'test50', '13000000050', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('51', 'test51', '13000000051', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('52', 'test52', '13000000052', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('53', 'test53', '13000000053', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('54', 'test54', '13000000054', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('55', 'test55', '13000000055', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('56', 'test56', '13000000056', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('57', 'test57', '13000000057', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('58', 'test58', '13000000058', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('59', 'test59', '13000000059', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('6', 'test6', '13000000006', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', ''),
       ('60', 'test60', '13000000060', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('61', 'test61', '13000000061', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('62', 'test62', '13000000062', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('63', 'test63', '13000000063', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('64', 'test64', '13000000064', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('65', 'test65', '13000000065', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('66', 'test66', '13000000066', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('67', 'test67', '13000000067', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('68', 'test68', '13000000068', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('69', 'test69', '13000000069', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('70', 'test70', '13000000070', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('71', 'test71', '13000000071', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('72', 'test72', '13000000072', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('73', 'test73', '13000000073', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('74', 'test74', '13000000074', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('75', 'test75', '13000000075', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('76', 'test76', '13000000076', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('77', 'test77', '13000000077', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('78', 'test78', '13000000078', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('79', 'test79', '13000000079', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('80', 'test80', '13000000080', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('84', 'test84', '13000000084', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('85', 'test85', '13000000085', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('86', 'test86', '13000000086', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('87', 'test87', '13000000087', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('88', 'test88', '13000000088', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('89', 'test89', '13000000089', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('90', 'test90', '13000000090', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('91', 'test91', '13000000091', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('92', 'test92', '13000000092', '2018-03-01', '开发部', '1', '', '', '初中', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '', '', '', '', '', '', ''),
       ('93', 'test93', '13000000093', '2018-03-01', '开发部', '1', '', '', '初中', '中国大陆', '1234', '1234', '', '', '1234',
        '1234', '', '未婚', '', '', '牛', '', '', '', '', '', '', '', '', '', '无', '无', '', '', '', '', '', '', '', '', '',
        '', '', '', '', '', '', '统招', '', '', '', '', '', '', '', '', '', '', '', '');

/*Table structure for table `nots_notices` */

DROP TABLE IF EXISTS `nots_notices`;

CREATE TABLE `nots_notices`
(
    `id`               varchar(40)  NOT NULL,
    `title`            varchar(255) NOT NULL COMMENT '公告标题',
    `user_id`          varchar(40)  NOT NULL COMMENT '添加人',
    `company_id`       varchar(40) DEFAULT NULL COMMENT '公司标识',
    `department_id`    varchar(40) DEFAULT NULL COMMENT '部门标识',
    `content`          text         NOT NULL COMMENT '公告主体内容',
    `create_time`      datetime     NOT NULL COMMENT '公告创建时间',
    `last_update_time` datetime     NOT NULL COMMENT '最后修改时间',
    `status`           tinyint(1) NOT NULL DEFAULT '0' COMMENT '公告状态 0为禁用，1为启用',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告-公告信息表';

/*Data for the table `nots_notices` */

insert into `nots_notices`(`id`, `title`, `user_id`, `company_id`, `department_id`, `content`, `create_time`,
                           `last_update_time`, `status`)
values ('1', '公告1', '1066370498633486336', '1', NULL, '公告的内容', '2019-07-30 15:57:09', '2019-07-30 15:57:14', 1),
       ('2', '公告2', '1075383133106425856', '1', NULL, '公告的内容2', '2019-07-30 15:57:54', '2019-07-30 15:57:58', 1),
       ('3', '公告3', '1075383135459430400', '1', NULL, '公告的内容3', '2019-07-30 15:58:47', '2019-07-30 15:58:52', 1),
       ('4', '公告4', '1075383135459430400', NULL, NULL, '公告内容4', '2019-07-30 15:59:30', '2019-07-30 15:59:34', 1),
       ('5', '公告5', '1075383135371350016', '1', NULL, '公告内容5', '2019-07-30 16:00:56', '2019-07-30 16:01:01', 1);

/*Table structure for table `pe_permission` */

DROP TABLE IF EXISTS `pe_permission`;

CREATE TABLE `pe_permission`
(
    `id`          varchar(40) NOT NULL COMMENT '主键',
    `description` text COMMENT '权限描述',
    `name`        varchar(255) DEFAULT NULL COMMENT '权限名称',
    `type`        tinyint(4) DEFAULT NULL COMMENT '权限类型 1为菜单 2为功能 3为API',
    `pid`         varchar(40)  DEFAULT '0' COMMENT '主键',
    `code`        varchar(20)  DEFAULT NULL,
    `en_visible`  int(1) DEFAULT NULL COMMENT '企业可见性 0：不可见，1：可见',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `pe_permission` */

insert into `pe_permission`(`id`, `description`, `name`, `type`, `pid`, `code`, `en_visible`)
values ('1', '3', 'SAAS企业管理', 1, '0', 'saas-clients', 0),
       ('1063313020819738624', '查看部门的按钮', '查看部门', 2, '1', 'point-dept', 0),
       ('1063315016368918528', '用户管理菜单', '员工管理', 1, '0', 'employees', 1),
       ('1063315194329042944', '用户删除按钮', '用户删除按钮', 2, '1063315016368918528', 'point-user-delete', 1),
       ('1063322760811515904', '删除api', '删除用户api', 3, '1063315194329042944', 'API-USER-DELETE', 1),
       ('1063327833876729856', '组织架构菜单', '组织架构', 1, '0', 'departments', 1),
       ('1063328114689576960', '公司设置菜单', '公司设置', 1, '0', 'settings', 1),
       ('1063328310592933888', '用户添加按钮', '用户添加按钮', 2, '1063315016368918528', 'POINT-USER-ADD', 1),
       ('1063328532492587008', '用户修改按钮', '用户修改按钮', 2, '1063315016368918528', 'POINT-USER-UPDATE', 1),
       ('1064104257952813056', NULL, '权限管理', 1, '0', 'permissions', 1),
       ('1064553683007705088', 'test', 'test', 1, '0', 'test', 1),
       ('1067396481381625856', '啊啊啊', '啊啊啊', 1, '0', '啊啊啊', 1),
       ('1146308691438043136', NULL, '社保', 1, '0', 'social_securitys', 1),
       ('1151424682926747648', '考勤', '考勤', 1, '0', 'attendances', 1),
       ('1151747519034093568', '工资模块', '工资', 1, '0', 'salarys', 1),
       ('1156085524669272064', '员工自助', '员工自助', 1, '0', 'user', 1),
       ('1172702828368498688', '审批', '审批', 1, '0', 'approvals', 1);

/*Table structure for table `pe_permission_api` */

DROP TABLE IF EXISTS `pe_permission_api`;

CREATE TABLE `pe_permission_api`
(
    `id`         varchar(40) NOT NULL COMMENT '主键ID',
    `api_level`  varchar(2)   DEFAULT NULL COMMENT '权限等级，1为通用接口权限，2为需校验接口权限',
    `api_method` varchar(255) DEFAULT NULL COMMENT '请求类型',
    `api_url`    varchar(255) DEFAULT NULL COMMENT '链接',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `pe_permission_api` */

insert into `pe_permission_api`(`id`, `api_level`, `api_method`, `api_url`)
values ('1063322760811515904', '1', 'delete', '/sys/user/delete');

/*Table structure for table `pe_permission_menu` */

DROP TABLE IF EXISTS `pe_permission_menu`;

CREATE TABLE `pe_permission_menu`
(
    `id`         varchar(40) NOT NULL COMMENT '主键ID',
    `menu_icon`  varchar(20) DEFAULT NULL COMMENT '权限代码',
    `menu_order` varchar(40) DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `pe_permission_menu` */

insert into `pe_permission_menu`(`id`, `menu_icon`, `menu_order`)
values ('1', 'abc5', '14'),
       ('1063315016368918528', 'menu-user', '1'),
       ('1063327833876729856', '2', '2'),
       ('1063328114689576960', '3', '3'),
       ('1064104257952813056', NULL, NULL),
       ('1064553683007705088', '1', '1'),
       ('1067396481381625856', '1', '1'),
       ('1146308691438043136', NULL, NULL),
       ('1151424682926747648', NULL, NULL),
       ('1151747519034093568', NULL, NULL),
       ('1156085524669272064', NULL, NULL),
       ('1172702828368498688', NULL, NULL),
       ('2', 'def', '2');

/*Table structure for table `pe_permission_point` */

DROP TABLE IF EXISTS `pe_permission_point`;

CREATE TABLE `pe_permission_point`
(
    `id`           varchar(40) NOT NULL COMMENT '主键ID',
    `point_class`  varchar(20) DEFAULT NULL COMMENT '按钮类型',
    `point_icon`   varchar(20) DEFAULT NULL COMMENT '按钮icon',
    `point_status` int(11) DEFAULT NULL COMMENT '状态',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `pe_permission_point` */

insert into `pe_permission_point`(`id`, `point_class`, `point_icon`, `point_status`)
values ('1063313020819738624', 'dept', 'dept', 1),
       ('1063315194329042944', 'point-user-delete', 'point-user-delete', 1),
       ('1063328310592933888', 'POINT-USER-ADD', 'POINT-USER-ADD', 1),
       ('1063328532492587008', 'POINT-USER-UPDATE', 'POINT-USER-UPDATE', 1);

/*Table structure for table `pe_role` */

DROP TABLE IF EXISTS `pe_role`;

CREATE TABLE `pe_role`
(
    `id`          varchar(40) NOT NULL COMMENT '主键ID',
    `name`        varchar(40)  DEFAULT NULL COMMENT '权限名称',
    `description` varchar(255) DEFAULT NULL COMMENT '说明',
    `company_id`  varchar(40)  DEFAULT NULL COMMENT '企业id',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `UK_k3beff7qglfn58qsf2yvbg41i` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `pe_role` */

insert into `pe_role`(`id`, `name`, `description`, `company_id`)
values ('1062944989845262336', '人事经理', '负责整合人事部门', '1'),
       ('1064098829009293312', '系统管理员', '管理整合平台，可以操作企业所有功能', '1'),
       ('1064098935443951616', '人事专员', '只能操作员工菜单', '1'),
       ('1064099035536822272', '薪资专员', '绩效管理', '1'),
       ('1064099035536822276', '员工', '员工', '1');

/*Table structure for table `pe_role_permission` */

DROP TABLE IF EXISTS `pe_role_permission`;

CREATE TABLE `pe_role_permission`
(
    `role_id`       varchar(40) NOT NULL COMMENT '角色ID',
    `permission_id` varchar(40) NOT NULL COMMENT '权限ID',
    PRIMARY KEY (`role_id`, `permission_id`) USING BTREE,
    KEY             `FK74qx7rkbtq2wqms78gljv87a0` (`permission_id`) USING BTREE,
    KEY             `FKee9dk0vg99shvsytflym6egxd` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `pe_role_permission` */

insert into `pe_role_permission`(`role_id`, `permission_id`)
values ('1062944989845262336', '1063315016368918528'),
       ('1062944989845262336', '1063328310592933888'),
       ('1062944989845262336', '1063328532492587008'),
       ('1062944989845262336', '1146308691438043136'),
       ('1062944989845262336', '1151424682926747648'),
       ('1062944989845262336', '1151747519034093568'),
       ('1062944989845262336', '1156085524669272064'),
       ('1064099035536822276', '1156085524669272064'),
       ('1062944989845262336', '1172702828368498688');

/*Table structure for table `pe_user_role` */

DROP TABLE IF EXISTS `pe_user_role`;

CREATE TABLE `pe_user_role`
(
    `role_id` varchar(40) NOT NULL COMMENT '角色ID',
    `user_id` varchar(40) NOT NULL COMMENT '权限ID',
    PRIMARY KEY (`role_id`, `user_id`) USING BTREE,
    KEY       `FK74qx7rkbtq2wqms78gljv87a1` (`role_id`) USING BTREE,
    KEY       `FKee9dk0vg99shvsytflym6egx1` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `pe_user_role` */

insert into `pe_user_role`(`role_id`, `user_id`)
values ('1062944989845262336', '1063705989926227968'),
       ('1062944989845262336', '1066370498633486336'),
       ('1062944989845262336', '1074238801330704384'),
       ('1062944989845262336', '1074238801402007552'),
       ('1062944989845262336', '1075383133106425856'),
       ('1062944989845262336', '1075383135371350016'),
       ('1062944989845262336', '1075383135459430400'),
       ('1064098829009293312', '1074238801330704384'),
       ('1064098829009293312', '1074238801402007552'),
       ('1064098829009293312', '1075383133106425856'),
       ('1064098829009293312', '1075383135371350016'),
       ('1064098829009293312', '1075383135459430400'),
       ('1064098935443951616', '1074238801330704384'),
       ('1064098935443951616', '1074238801402007552'),
       ('1064098935443951616', '1075383133106425856'),
       ('1064098935443951616', '1075383135371350016'),
       ('1064098935443951616', '1075383135459430400'),
       ('1064099035536822272', '1074238801330704384'),
       ('1064099035536822272', '1074238801402007552'),
       ('1064099035536822272', '1075383133106425856'),
       ('1064099035536822272', '1075383135371350016'),
       ('1064099035536822272', '1075383135459430400'),
       ('1064099035536822276', '1071632760222810112'),
       ('1064099035536822276', '1074238801330704384'),
       ('1064099035536822276', '1074238801402007552'),
       ('1064099035536822276', '1075383133106425856'),
       ('1064099035536822276', '1075383135371350016'),
       ('1064099035536822276', '1075383135459430400');

/*Table structure for table `proc_instance` */

DROP TABLE IF EXISTS `proc_instance`;

CREATE TABLE `proc_instance`
(
    `process_id`               varchar(45) NOT NULL COMMENT '流程实例ID',
    `process_key`              varchar(45)  DEFAULT NULL COMMENT '流程标识',
    `process_name`             varchar(45)  DEFAULT NULL COMMENT '流程名称',
    `process_definition_id`    varchar(100) DEFAULT NULL COMMENT '流程定义ID',
    `process_state`            varchar(3)   DEFAULT NULL COMMENT '流程状态（0已提交；1审批中；2审批通过；3审批不通过；4撤销）',
    `user_id`                  varchar(45)  DEFAULT NULL COMMENT '申请人ID',
    `username`                 varchar(50)  DEFAULT NULL COMMENT '申请人',
    `proc_apply_time`          datetime     DEFAULT NULL COMMENT '申请时间',
    `proc_curr_node_user_id`   varchar(255) DEFAULT NULL COMMENT '当前节点审批人ID',
    `proc_curr_node_user_name` varchar(255) DEFAULT NULL COMMENT '当前节点审批人',
    `proc_end_time`            datetime     DEFAULT NULL COMMENT '结束流程时间',
    `proc_data`                longtext,
    `department_id`            varchar(40)  DEFAULT NULL,
    `department_name`          varchar(40)  DEFAULT NULL,
    `time_of_entry`            datetime     DEFAULT NULL,
    PRIMARY KEY (`process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `proc_instance` */

insert into `proc_instance`(`process_id`, `process_key`, `process_name`, `process_definition_id`, `process_state`,
                            `user_id`, `username`, `proc_apply_time`, `proc_curr_node_user_id`,
                            `proc_curr_node_user_name`, `proc_end_time`, `proc_data`, `department_id`,
                            `department_name`, `time_of_entry`)
values ('1175967133311934464', 'process_leave', '请假', NULL, '2', '1066370498633486336', 'zbz', '2019-09-23 10:56:27',
        '107163276022281011210742388013307043841074238801402007552', 'll a01 a02 ', NULL,
        '{\"duration\":\"1\",\"reason\":\"个人原因\",\"holidayType\":\"1\",\"processName\":\"请假\",\"processKey\":\"process_leave\",\"startTime\":\"2019-09-16 00:00:00\",\"applyUnit\":\"按天\",\"endTime\":\"2019-09-17 00:00:00\",\"userId\":\"1066370498633486336\"}',
        '1175311466846683136', '市场部', '2018-11-04 08:00:00'),
       ('1175968095611101184', 'process_leave', '请假', NULL, '2', '1066370498633486336', 'zbz', '2019-09-23 11:00:17',
        '10753831331064258561075383135371350016', 'test001 test002 ', NULL,
        '{\"duration\":\"5\",\"reason\":\"没有原因\",\"holidayType\":\"1\",\"processName\":\"请假\",\"processKey\":\"process_leave\",\"startTime\":\"2019-09-15 00:00:00\",\"applyUnit\":\"按天\",\"endTime\":\"2019-09-19 00:00:00\",\"userId\":\"1066370498633486336\"}',
        '1175311466846683136', '市场部', '2018-11-04 08:00:00'),
       ('1175968628937826304', 'process_leave', '请假', NULL, '4', '1066370498633486336', 'zbz', '2019-09-23 11:02:24',
        '1063705989926227968', 'itcast ', NULL,
        '{\"duration\":\"1\",\"reason\":\"xxxxx\",\"holidayType\":\"1\",\"processName\":\"请假\",\"processKey\":\"process_leave\",\"startTime\":\"2019-09-09 00:00:00\",\"applyUnit\":\"按天\",\"endTime\":\"2019-09-10 00:00:00\",\"userId\":\"1066370498633486336\"}',
        '1175311466846683136', '市场部', '2018-11-04 08:00:00'),
       ('1175975371407335424', 'process_overtime', '加班', NULL, '2', '1066370498633486336', 'zbz', '2019-09-23 11:29:11',
        '107163276022281011210742388013307043841074238801402007552', 'll a01 a02 ', NULL,
        '{\"start_time\":\"2019-09-01 00:00:00\",\"reason\":\"随便填\",\"processName\":\"加班\",\"end_time\":\"2019-09-02 00:00:00\",\"processKey\":\"process_overtime\",\"userId\":\"1066370498633486336\"}',
        '1175311466846683136', '市场部', '2018-11-04 08:00:00');

/*Table structure for table `proc_task_instance` */

DROP TABLE IF EXISTS `proc_task_instance`;

CREATE TABLE `proc_task_instance`
(
    `process_id`       varchar(45)   DEFAULT NULL COMMENT '流程实例ID',
    `task_id`          varchar(45) NOT NULL COMMENT '任务实例ID',
    `task_key`         varchar(45)   DEFAULT NULL COMMENT '任务节点key',
    `task_name`        varchar(45)   DEFAULT NULL COMMENT '任务节点',
    `should_user_id`   varchar(45)   DEFAULT NULL COMMENT '应审批用户ID',
    `should_user_name` varchar(2000) DEFAULT NULL COMMENT '应审批用户',
    `handle_user_id`   varchar(2000) DEFAULT NULL COMMENT '实际处理用户ID',
    `handle_user_name` varchar(45)   DEFAULT NULL COMMENT '实际处理用户',
    `handle_time`      datetime      DEFAULT NULL COMMENT '处理时间',
    `handle_opinion`   varchar(45)   DEFAULT NULL COMMENT '处理意见',
    `handle_type`      varchar(45)   DEFAULT NULL COMMENT '处理类型（2审批通过；3审批不通过；4撤销）',
    PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `proc_task_instance` */

insert into `proc_task_instance`(`process_id`, `task_id`, `task_key`, `task_name`, `should_user_id`, `should_user_name`,
                                 `handle_user_id`, `handle_user_name`, `handle_time`, `handle_opinion`, `handle_type`)
values ('1175967133311934464', '1175967133987217408', 'APPLY', '提交申请', NULL, NULL, '1066370498633486336', 'zbz',
        '2019-09-23 10:56:27', '发起申请', '2'),
       ('1175967133311934464', '1175967395195887616', NULL, NULL, NULL, NULL, '1063705989926227968', 'itcast',
        '2019-09-23 10:57:30', '审批通过', '2'),
       ('1175967133311934464', '1175967897082109952', NULL, NULL, NULL, NULL, '1074238801330704384', 'a01',
        '2019-09-23 10:59:29', '通过', '2'),
       ('1175968095611101184', '1175968097951522816', 'APPLY', '提交申请', NULL, NULL, '1066370498633486336', 'zbz',
        '2019-09-23 11:00:17', '发起申请', '2'),
       ('1175968095611101184', '1175968195020300288', NULL, NULL, NULL, NULL, '1063705989926227968', 'itcast',
        '2019-09-23 11:00:40', '1', '2'),
       ('1175968095611101184', '1175968309864538112', NULL, NULL, NULL, NULL, '1071632760222810112', 'll',
        '2019-09-23 11:01:08', '1', '2'),
       ('1175968095611101184', '1175968493117874176', NULL, NULL, NULL, NULL, '1075383133106425856', 'test001',
        '2019-09-23 11:01:51', '2', '2'),
       ('1175968628937826304', '1175968629420171264', 'APPLY', '提交申请', NULL, NULL, '1066370498633486336', 'zbz',
        '2019-09-23 11:02:24', '发起申请', '2'),
       ('1175968628937826304', '1175968700056444928', NULL, NULL, NULL, NULL, '1066370498633486336', 'zbz',
        '2019-09-23 11:02:41', 'xxx', '4'),
       ('1175974971551752192', '1175974972021514240', 'APPLY', '提交申请', NULL, NULL, '1066370498633486336', 'zbz',
        '2019-09-23 11:27:36', '发起申请', '2'),
       ('1175975072286351360', '1175975072739336192', 'APPLY', '提交申请', NULL, NULL, '1066370498633486336', 'zbz',
        '2019-09-23 11:28:00', '发起申请', '2'),
       ('1175975371407335424', '1175975371826765824', 'APPLY', '提交申请', NULL, NULL, '1066370498633486336', 'zbz',
        '2019-09-23 11:29:11', '发起申请', '2'),
       ('1175975371407335424', '1175975495940415488', NULL, NULL, NULL, NULL, '1063705989926227968', 'itcast',
        '2019-09-23 11:29:41', '通过', '2'),
       ('1175975371407335424', '1175975592866586624', NULL, NULL, NULL, NULL, '1071632760222810112', 'll',
        '2019-09-23 11:30:04', '通过', '2');

/*Table structure for table `proc_user_group` */

DROP TABLE IF EXISTS `proc_user_group`;

CREATE TABLE `proc_user_group`
(
    `id`          varchar(45) NOT NULL COMMENT '主键',
    `name`        varchar(100)  DEFAULT NULL COMMENT '组名',
    `param`       varchar(45)   DEFAULT NULL COMMENT '入参',
    `isql`        varchar(1000) DEFAULT NULL COMMENT '对应sql',
    `isvalid`     varchar(2)    DEFAULT NULL COMMENT '有效标记',
    `create_user` varchar(45)   DEFAULT NULL COMMENT '创建人',
    `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
    `update_user` varchar(45)   DEFAULT NULL COMMENT '最后更新人',
    `update_time` timestamp NULL DEFAULT NULL COMMENT '最后更新时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `proc_user_group` */

insert into `proc_user_group`(`id`, `name`, `param`, `isql`, `isvalid`, `create_user`, `create_time`, `update_user`,
                              `update_time`)
values ('PROCESS_DIMISSION_APPLY_USERS', '离职申请人', 'user_id', 'SELECT id,username FROM bs_user WHERE id = ${user_id}',
        '1', NULL, NULL, NULL, NULL),
       ('PROCESS_DIMISSION_SHEN1_USERS', '离职部门审批用户组', 'department_id',
        'SELECT id,username FROM bs_user WHERE department_id = ${department_id}', '1', NULL, NULL, NULL, NULL),
       ('PROCESS_DIMISSION_SHEN2_USERS', '离职人事审批用户组', 'department_id',
        'SELECT id,username FROM bs_user WHERE department_id = ${department_id}', '1', NULL, NULL, NULL, NULL),
       ('PROCESS_DIMISSION_SHEN3_USERS', '部门人事负责人审批用户组', 'department_id',
        'SELECT id,username FROM bs_user WHERE department_id = ${department_id}', '1', NULL, NULL, NULL, NULL),
       ('PROCESS_DIMISSION_SHEN4_USERS', '部门财物审批用户组', 'department_id',
        'SELECT id,username FROM bs_user WHERE department_id = ${department_id}', '1', NULL, NULL, NULL, NULL),
       ('PROCESS_LEAVE_APPLY_USERS', '请假申请人', 'user_id', 'SELECT id,username FROM bs_user WHERE id = ${user_id}', '1',
        NULL, NULL, NULL, NULL),
       ('PROCESS_LEAVE_CHU_USERS', '请假初审用户组', 'department_id',
        'SELECT manager username, manager_id id FROM co_department WHERE id = ${department_id}', '1', NULL, NULL, NULL,
        NULL),
       ('PROCESS_LEAVE_FU_USERS', '请假复审用户组', 'department_id',
        'SELECT id,username FROM bs_user WHERE department_id = 1175311267684352000', '1', NULL, NULL, NULL, NULL),
       ('PROCESS_LEAVE_PI_USERS', '请假批准用户组', 'department_id',
        'SELECT id,username FROM bs_user WHERE department_id = 1175310929766055936', '1', NULL, NULL, NULL, NULL),
       ('PROCESS_OVERTIME_SHEN1_USERS', '加班部门审批用户组', 'department_id',
        'SELECT manager username, manager_id id FROM co_department WHERE id = ${department_id}', '1', NULL, NULL, NULL,
        NULL),
       ('PROCESS_OVERTIME_SHEN2_USERS', '加班人事审批用户组', 'department_id',
        'SELECT id,username FROM bs_user WHERE department_id = 1175311267684352000', '1', NULL, NULL, NULL, NULL);

/*Table structure for table `sa_archive` */

DROP TABLE IF EXISTS `sa_archive`;

CREATE TABLE `sa_archive`
(
    `id`              varchar(40)    NOT NULL COMMENT 'id',
    `company_id`      varchar(40)    NOT NULL COMMENT '企业id',
    `years_month`     varchar(255)   NOT NULL COMMENT '年月',
    `creation_time`   date           NOT NULL COMMENT '创建时间',
    `artificial_cost` decimal(10, 2) NOT NULL DEFAULT '0.00' COMMENT '人工成本',
    `gross_salary`    decimal(10, 2) NOT NULL DEFAULT '0.00' COMMENT '税前工资',
    `five_insurances` decimal(10, 2) NOT NULL DEFAULT '0.00' COMMENT '五险一金',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工资-归档表';

/*Data for the table `sa_archive` */

insert into `sa_archive`(`id`, `company_id`, `years_month`, `creation_time`, `artificial_cost`, `gross_salary`,
                         `five_insurances`)
values ('1155760685030989824', '1', '201906', '2019-07-29', '0.00', '58.00', '64223.13'),
       ('1155760710553329664', '1', '201907', '2019-07-29', '0.00', '48.00', '64223.13');

/*Table structure for table `sa_archive_detail` */

DROP TABLE IF EXISTS `sa_archive_detail`;

CREATE TABLE `sa_archive_detail`
(
    `id`                                         varchar(40) NOT NULL COMMENT 'id',
    `archive_id`                                 varchar(40) NOT NULL COMMENT '归档id',
    `user_id`                                    varchar(40)    DEFAULT NULL COMMENT '用户id',
    `username`                                   varchar(255)   DEFAULT NULL COMMENT '姓名',
    `mobile`                                     varchar(255)   DEFAULT NULL COMMENT '手机号',
    `work_number`                                varchar(255)   DEFAULT NULL COMMENT '工号',
    `department_name`                            varchar(255)   DEFAULT NULL COMMENT '部门',
    `id_number`                                  varchar(255)   DEFAULT NULL COMMENT '身份证号',
    `in_service_status`                          varchar(255)   DEFAULT NULL COMMENT '在职状态',
    `form_of_employment`                         varchar(255)   DEFAULT NULL COMMENT '聘用形式',
    `bank_card_number`                           varchar(255)   DEFAULT NULL COMMENT '银行卡号',
    `opening_bank`                               varchar(255)   DEFAULT NULL COMMENT '银行卡号',
    `provident_fund_individual`                  decimal(10, 2) DEFAULT NULL COMMENT '公积金个人',
    `social_security_individual`                 decimal(10, 2) DEFAULT NULL COMMENT '社保个人',
    `old_age_individual`                         decimal(10, 2) DEFAULT NULL COMMENT '养老个人',
    `medical_individual`                         decimal(10, 2) DEFAULT NULL COMMENT '医疗个人',
    `unemployed_individual`                      decimal(10, 2) DEFAULT NULL COMMENT '失业个人',
    `a_person_of_great_disease`                  decimal(10, 2) DEFAULT NULL COMMENT '大病个人',
    `social_security`                            decimal(10, 2) DEFAULT NULL COMMENT '社保扣款',
    `total_provident_fund_individual`            decimal(10, 2) DEFAULT NULL COMMENT '公积金扣款',
    `social_security_enterprise`                 decimal(10, 2) DEFAULT NULL COMMENT '社保企业',
    `pension_enterprise`                         decimal(10, 2) DEFAULT NULL COMMENT '养老企业',
    `medical_enterprise`                         decimal(10, 2) DEFAULT NULL COMMENT '医疗企业',
    `unemployed_enterprise`                      decimal(10, 2) DEFAULT NULL COMMENT '失业企业',
    `industrial_injury_enterprise`               decimal(10, 2) DEFAULT NULL COMMENT '工伤企业',
    `childbearing_enterprise`                    decimal(10, 2) DEFAULT NULL COMMENT '生育企业',
    `big_disease_enterprise`                     decimal(10, 2) DEFAULT NULL COMMENT '大病企业',
    `provident_fund_enterprises`                 decimal(10, 2) DEFAULT NULL COMMENT '公积金企业',
    `social_security_provident_fund_enterprises` decimal(10, 2) DEFAULT NULL COMMENT '公积金社保企业',
    `tax_to_provident_fund`                      decimal(10, 2) DEFAULT NULL COMMENT '公积金需纳税额',
    `official_salary_days`                       decimal(10, 2) DEFAULT NULL COMMENT '计薪天数',
    `attendance_deduction_monthly`               decimal(10, 2) DEFAULT NULL COMMENT '考勤扣款',
    `salary_standard`                            decimal(10, 2) DEFAULT NULL COMMENT '计薪标准',
    `current_salary_total_base`                  decimal(10, 2) DEFAULT NULL COMMENT '最新工资基数合计',
    `current_base_salary`                        decimal(10, 2) DEFAULT NULL COMMENT '最新基本工资基数',
    `base_salary_by_month`                       decimal(10, 2) DEFAULT NULL COMMENT '当月基本工资基数',
    `tax_counting_method`                        varchar(255)   DEFAULT NULL COMMENT '计税方式',
    `base_salary_to_tax_by_month`                decimal(10, 2) DEFAULT NULL COMMENT '当月纳税基本工资',
    `salary_before_tax`                          decimal(10, 2) DEFAULT NULL COMMENT '税前工资合计',
    `salary`                                     decimal(10, 2) DEFAULT NULL COMMENT '工资合计',
    `salary_by_tax`                              decimal(10, 2) DEFAULT NULL COMMENT '应纳税工资',
    `payment_before_tax`                         decimal(10, 2) DEFAULT NULL COMMENT '税前实发',
    `tax`                                        decimal(10, 2) DEFAULT NULL COMMENT '应扣税',
    `salary_after_tax`                           decimal(10, 2) DEFAULT NULL COMMENT '税后工资合计',
    `payment`                                    decimal(10, 2) DEFAULT NULL COMMENT '实发工资',
    `payment_remark`                             varchar(255)   DEFAULT NULL COMMENT '实发工资备注',
    `salary_cost`                                decimal(10, 2) DEFAULT NULL COMMENT '薪酬成本',
    `enterprise_labor_cost`                      decimal(10, 2) DEFAULT NULL COMMENT '企业人工成本',
    `salary_change_amount`                       decimal(10, 2) DEFAULT NULL COMMENT '调薪金额',
    `salary_change_scale`                        decimal(10, 2) DEFAULT NULL COMMENT '调薪比例',
    `effective_time_of_pay_adjustment`           decimal(10, 2) DEFAULT NULL COMMENT '调薪生效时间',
    `cause_of_salary_adjustment`                 decimal(10, 2) DEFAULT NULL COMMENT '调薪原因',
    `remark`                                     varchar(255)   DEFAULT NULL COMMENT '注释',
    `payment_months`                             int(8) DEFAULT NULL COMMENT '发薪月数',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工资-归档详情';

/*Data for the table `sa_archive_detail` */

insert into `sa_archive_detail`(`id`, `archive_id`, `user_id`, `username`, `mobile`, `work_number`, `department_name`,
                                `id_number`, `in_service_status`, `form_of_employment`, `bank_card_number`,
                                `opening_bank`, `provident_fund_individual`, `social_security_individual`,
                                `old_age_individual`, `medical_individual`, `unemployed_individual`,
                                `a_person_of_great_disease`, `social_security`, `total_provident_fund_individual`,
                                `social_security_enterprise`, `pension_enterprise`, `medical_enterprise`,
                                `unemployed_enterprise`, `industrial_injury_enterprise`, `childbearing_enterprise`,
                                `big_disease_enterprise`, `provident_fund_enterprises`,
                                `social_security_provident_fund_enterprises`, `tax_to_provident_fund`,
                                `official_salary_days`, `attendance_deduction_monthly`, `salary_standard`,
                                `current_salary_total_base`, `current_base_salary`, `base_salary_by_month`,
                                `tax_counting_method`, `base_salary_to_tax_by_month`, `salary_before_tax`, `salary`,
                                `salary_by_tax`, `payment_before_tax`, `tax`, `salary_after_tax`, `payment`,
                                `payment_remark`, `salary_cost`, `enterprise_labor_cost`, `salary_change_amount`,
                                `salary_change_scale`, `effective_time_of_pay_adjustment`, `cause_of_salary_adjustment`,
                                `remark`, `payment_months`)
values ('1155760685152624640', '1155760685030989824', '1063705989926227968', NULL, NULL, '9002', 'test1', NULL, '离职',
        '正式', NULL, NULL, '1200.00', '1320.00', NULL, NULL, NULL, NULL, '4120.00', '1200.00', '2800.00', NULL, NULL,
        NULL, NULL, NULL, NULL, '1200.00', NULL, '0.00', NULL, NULL, NULL, '10.00', '5.00', '5.00', '税前', '5.00',
        '10.00', '66.00', '10.00', '-2454.00', '0.30', '9.70', '-2510.30', NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL),
       ('1155760685152624641', '1155760685030989824', '1066370498633486336', NULL, NULL, '111', '测试部', NULL, '离职', '正式',
        NULL, NULL, '136.62', '447.22', NULL, NULL, NULL, NULL, '1450.06', '136.62', '1002.85', NULL, NULL, NULL, NULL,
        NULL, NULL, '136.62', NULL, '0.00', NULL, NULL, NULL, '8.00', '4.00', '4.00', '税前', '4.00', '8.00', '64.00',
        '8.00', '-519.84', '0.24', '7.76', '-576.08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1155760685152624642', '1155760685030989824', '1071632760222810112', NULL, NULL, '1111', '测试部', NULL, '离职',
        '正式', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, '0.00', NULL, NULL, NULL, '6.00', '3.00', '3.00', '税前', '3.00', '6.00', '62.00', '6.00', '62.00',
        '0.18', '5.82', '5.82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1155760685152624643', '1155760685030989824', '1074238801330704384', NULL, NULL, '1001', '开发部', NULL, '在职',
        '正式', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, '0.00', '0.00', '0.00', '21.75', '0.00', '0.00', '0.00', '税前', '0.00', '0.00', '56.00', '0.00',
        '56.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1155760685152624644', '1155760685030989824', '1074238801402007552', NULL, NULL, '1002', '开发部', NULL, '在职',
        '正式', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, '0.00', '0.00', '0.00', '21.75', '0.00', '0.00', '0.00', '税前', '0.00', '0.00', '56.00', '0.00',
        '56.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1155760685152624645', '1155760685030989824', '1075383133106425856', NULL, NULL, '2001', '开发部', NULL, '在职',
        '正式', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, '0.00', '0.00', '0.00', '21.75', '14.00', '7.00', '7.00', '税前', '7.00', '14.00', '70.00', '14.00',
        '70.00', '0.42', '13.58', '13.58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1155760685152624646', '1155760685030989824', '1075383135371350016', NULL, NULL, '2002', '开发部', NULL, '在职',
        '正式', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, '0.00', '21.75', '0.00', '21.75', '0.00', '0.00', '0.00', '税前', '0.00', '0.00', '56.00', '0.00',
        '56.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1155760685152624647', '1155760685030989824', '1075383135459430400', NULL, NULL, '2003', '开发部', NULL, '在职',
        '正式', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, '0.00', '21.75', '0.00', '21.75', '20.00', '10.00', '10.00', '税前', '10.00', '20.00', '76.00',
        '20.00', '76.00', '0.60', '19.40', '19.40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1155760710582689792', '1155760710553329664', '1063705989926227968', NULL, NULL, '9002', 'test1', NULL, '离职',
        '正式', NULL, NULL, '1200.00', '1320.00', NULL, NULL, NULL, NULL, '4120.00', '1200.00', '2800.00', NULL, NULL,
        NULL, NULL, NULL, NULL, '1200.00', NULL, '0.00', NULL, NULL, NULL, '10.00', '5.00', '0.00', '税前', '0.00',
        '0.00', '56.00', '0.00', '-2464.00', '0.00', '0.00', '-2520.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL),
       ('1155760710582689793', '1155760710553329664', '1066370498633486336', NULL, NULL, '111', '测试部', NULL, '离职', '正式',
        NULL, NULL, '136.62', '447.22', NULL, NULL, NULL, NULL, '1450.06', '136.62', '1002.85', NULL, NULL, NULL, NULL,
        NULL, NULL, '136.62', NULL, '0.00', NULL, NULL, NULL, '8.00', '4.00', '4.00', '税前', '4.00', '8.00', '64.00',
        '8.00', '-519.84', '0.24', '7.76', '-576.08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1155760710582689794', '1155760710553329664', '1071632760222810112', NULL, NULL, '1111', '测试部', NULL, '离职',
        '正式', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, '0.00', NULL, NULL, NULL, '6.00', '3.00', '3.00', '税前', '3.00', '6.00', '62.00', '6.00', '62.00',
        '0.18', '5.82', '5.82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1155760710582689795', '1155760710553329664', '1074238801330704384', NULL, NULL, '1001', '开发部', NULL, '在职',
        '正式', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, '0.00', '0.00', '0.00', '21.75', '0.00', '0.00', '0.00', '税前', '0.00', '0.00', '56.00', '0.00',
        '56.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1155760710582689796', '1155760710553329664', '1074238801402007552', NULL, NULL, '1002', '开发部', NULL, '在职',
        '正式', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, '0.00', '0.00', '0.00', '21.75', '0.00', '0.00', '0.00', '税前', '0.00', '0.00', '56.00', '0.00',
        '56.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1155760710582689797', '1155760710553329664', '1075383133106425856', NULL, NULL, '2001', '开发部', NULL, '在职',
        '正式', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, '0.00', '0.00', '0.00', '21.75', '14.00', '7.00', '7.00', '税前', '7.00', '14.00', '70.00', '14.00',
        '70.00', '0.42', '13.58', '13.58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1155760710582689798', '1155760710553329664', '1075383135371350016', NULL, NULL, '2002', '开发部', NULL, '在职',
        '正式', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, '0.00', '21.75', '0.00', '21.75', '0.00', '0.00', '0.00', '税前', '0.00', '0.00', '56.00', '0.00',
        '56.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1155760710582689799', '1155760710553329664', '1075383135459430400', NULL, NULL, '2003', '开发部', NULL, '在职',
        '正式', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, '0.00', '21.75', '0.00', '21.75', '20.00', '10.00', '10.00', '税前', '10.00', '20.00', '76.00',
        '20.00', '76.00', '0.60', '19.40', '19.40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/*Table structure for table `sa_company_settings` */

DROP TABLE IF EXISTS `sa_company_settings`;

CREATE TABLE `sa_company_settings`
(
    `company_id`  varchar(40) NOT NULL COMMENT '企业id',
    `is_settings` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0是未设置，1是已设置',
    `data_month`  varchar(40) NOT NULL COMMENT '当前显示报表月份',
    PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工资-企业设置信息';

/*Data for the table `sa_company_settings` */

insert into `sa_company_settings`(`company_id`, `is_settings`, `data_month`)
values ('1', 1, '201907');

/*Table structure for table `sa_settings` */

DROP TABLE IF EXISTS `sa_settings`;

CREATE TABLE `sa_settings`
(
    `company_id`                    varchar(40) NOT NULL COMMENT '企业id',
    `social_security_type`          int(8) DEFAULT NULL COMMENT '对应社保自然月',
    `subsidy_name`                  varchar(255)   DEFAULT NULL COMMENT '津贴方案名称',
    `subsidy_remark`                text COMMENT '津贴备注',
    `transportation_subsidy_scheme` int(8) DEFAULT NULL COMMENT '交通补贴计算类型',
    `transportation_subsidy_amount` decimal(10, 2) DEFAULT NULL COMMENT '交通补贴金额',
    `communication_subsidy_scheme`  int(8) DEFAULT NULL COMMENT '通讯补贴计算类型',
    `communication_subsidy_amount`  decimal(10, 2) DEFAULT NULL COMMENT '通讯补贴金额',
    `lunch_allowance_scheme`        int(8) DEFAULT NULL COMMENT '午餐补贴计算类型',
    `lunch_allowance_amount`        decimal(10, 2) DEFAULT NULL COMMENT '午餐补贴金额',
    `housing_subsidy_scheme`        int(8) DEFAULT NULL COMMENT '住房补助计算类型',
    `housing_subsidy_amount`        decimal(10, 2) DEFAULT NULL COMMENT '住房补助金额',
    `tax_calculation_type`          int(8) DEFAULT NULL COMMENT '计税方式',
    PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工资-企业设置信息';

/*Data for the table `sa_settings` */

insert into `sa_settings`(`company_id`, `social_security_type`, `subsidy_name`, `subsidy_remark`,
                          `transportation_subsidy_scheme`, `transportation_subsidy_amount`,
                          `communication_subsidy_scheme`, `communication_subsidy_amount`, `lunch_allowance_scheme`,
                          `lunch_allowance_amount`, `housing_subsidy_scheme`, `housing_subsidy_amount`,
                          `tax_calculation_type`)
values ('1', 2, '通用方案', '福利薪资发放规则', 3, '100.00', 3, '100.00', 3, '200.00', 3, '100.00', 2);

/*Table structure for table `sa_user_salary` */

DROP TABLE IF EXISTS `sa_user_salary`;

CREATE TABLE `sa_user_salary`
(
    `user_id`                   varchar(40)    NOT NULL,
    `current_basic_salary`      decimal(10, 2) NOT NULL COMMENT '当前基本工资',
    `current_post_wage`         decimal(10, 2) DEFAULT NULL COMMENT '当前岗位工资',
    `fixed_basic_salary`        decimal(10, 2) DEFAULT NULL COMMENT '定薪基本工资',
    `fixed_post_wage`           decimal(10, 2) DEFAULT NULL COMMENT '定薪岗位工资',
    `correction_of_basic_wages` decimal(10, 2) DEFAULT NULL COMMENT '转正基本工资',
    `turn_to_post_wages`        decimal(10, 2) DEFAULT NULL COMMENT '转正岗位工资',
    PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工资-员工薪资表';

/*Data for the table `sa_user_salary` */

insert into `sa_user_salary`(`user_id`, `current_basic_salary`, `current_post_wage`, `fixed_basic_salary`,
                             `fixed_post_wage`, `correction_of_basic_wages`, `turn_to_post_wages`)
values ('1063705989926227968', '5000.00', '5000.00', NULL, NULL, NULL, NULL),
       ('1066370498633486336', '20.00', '20.00', NULL, NULL, NULL, NULL),
       ('1071632760222810112', '3.00', '3.00', '3.00', '3.00', '5.00', '5.00'),
       ('1074238801330704384', '5000.00', '5000.00', NULL, NULL, NULL, NULL),
       ('1074238801402007552', '100.00', '100.00', '100.00', '100.00', '200.00', '200.00'),
       ('1075383133106425856', '7.00', '7.00', '7.00', '7.00', '8.00', '8.00'),
       ('1075383135459430400', '10.00', '10.00', NULL, NULL, NULL, NULL);

/*Table structure for table `sa_user_salary_change` */

DROP TABLE IF EXISTS `sa_user_salary_change`;

CREATE TABLE `sa_user_salary_change`
(
    `id`                               varchar(40)    NOT NULL,
    `user_id`                          varchar(40)    NOT NULL COMMENT '用户id',
    `current_basic_salary`             decimal(10, 2) DEFAULT NULL COMMENT '调整前基本工资',
    `current_post_wage`                decimal(10, 2) DEFAULT NULL COMMENT '调整前岗位工资',
    `adjustment_of_basic_wages`        decimal(10, 2) NOT NULL COMMENT '调整基本工资',
    `adjust_post_wages`                decimal(10, 2) DEFAULT NULL COMMENT '调整岗位工资',
    `effective_time_of_pay_adjustment` date           DEFAULT NULL COMMENT '调薪生效时间',
    `cause_of_salary_adjustment`       text COMMENT '调薪原因',
    `enclosure`                        varchar(255)   DEFAULT NULL COMMENT '附件',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sa_user_salary_change` */

insert into `sa_user_salary_change`(`id`, `user_id`, `current_basic_salary`, `current_post_wage`,
                                    `adjustment_of_basic_wages`, `adjust_post_wages`,
                                    `effective_time_of_pay_adjustment`, `cause_of_salary_adjustment`, `enclosure`)
values ('1154222625622835200', '1063705989926227968', NULL, NULL, '5.00', '5.00', '2019-07-25', '123', NULL),
       ('1169607565711454208', '1074238801330704384', NULL, NULL, '200.00', '200.00', NULL, NULL, NULL),
       ('1169607651250089984', '1074238801330704384', NULL, NULL, '200.00', '196.00', NULL, 'sss', NULL),
       ('1169608531290566656', '1074238801330704384', NULL, NULL, '200.00', '200.00', NULL, NULL, NULL);

/*Table structure for table `ss_archive` */

DROP TABLE IF EXISTS `ss_archive`;

CREATE TABLE `ss_archive`
(
    `id`                 varchar(40)    NOT NULL COMMENT 'id',
    `company_id`         varchar(40)    NOT NULL COMMENT '企业id',
    `years_month`        varchar(255)   NOT NULL COMMENT '年月',
    `creation_time`      date                    DEFAULT NULL COMMENT '创建时间',
    `enterprise_payment` decimal(10, 2) NOT NULL DEFAULT '0.00' COMMENT '企业缴纳',
    `personal_payment`   decimal(10, 2) NOT NULL DEFAULT '0.00' COMMENT '个人缴纳',
    `total`              decimal(10, 2) NOT NULL DEFAULT '0.00' COMMENT '合计',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社保-归档表';

/*Data for the table `ss_archive` */

insert into `ss_archive`(`id`, `company_id`, `years_month`, `creation_time`, `enterprise_payment`, `personal_payment`,
                         `total`)
values ('1151336210085924864', '1', '201906', '2019-07-17', '9129.47', '5623.84', '14753.30'),
       ('1164547240792375296', '1', '201808', '2019-08-22', '7219.47', '4363.84', '11583.30'),
       ('1164551754215813120', '1', '201809', '2019-08-23', '7219.47', '4363.84', '11583.30'),
       ('1166213907154939904', '1', '201907', '2019-09-05', '8804.87', '4662.64', '13467.50');

/*Table structure for table `ss_archive_detail` */

DROP TABLE IF EXISTS `ss_archive_detail`;

CREATE TABLE `ss_archive_detail`
(
    `id`                                          varchar(40) NOT NULL COMMENT 'id',
    `archive_id`                                  varchar(40) NOT NULL COMMENT '归档id',
    `user_id`                                     varchar(40)    DEFAULT NULL COMMENT '用户id',
    `username`                                    varchar(255)   DEFAULT NULL COMMENT '用户名称',
    `time_of_entry`                               varchar(255)   DEFAULT NULL COMMENT '入职时间',
    `mobile`                                      varchar(255)   DEFAULT NULL COMMENT '手机号',
    `id_number`                                   varchar(255)   DEFAULT NULL COMMENT '身份证号',
    `the_highest_degree_of_education`             varchar(255)   DEFAULT NULL COMMENT '学历',
    `opening_bank`                                varchar(255)   DEFAULT NULL COMMENT '开户行',
    `bank_card_number`                            varchar(255)   DEFAULT NULL COMMENT '银行卡号',
    `first_level_department`                      varchar(255)   DEFAULT NULL COMMENT '一级部门',
    `two_level_department`                        varchar(255)   DEFAULT NULL COMMENT '二级部门',
    `working_city`                                varchar(255)   DEFAULT NULL COMMENT '工作城市',
    `social_security_computer_number`             varchar(255)   DEFAULT NULL COMMENT '社保电脑号',
    `provident_fund_account`                      varchar(255)   DEFAULT NULL COMMENT '公积金账号',
    `leave_date`                                  varchar(255)   DEFAULT NULL COMMENT '离职时间',
    `household_registration_type`                 varchar(255)   DEFAULT NULL COMMENT '户籍类型',
    `participating_in_the_city`                   varchar(255)   DEFAULT NULL COMMENT '参保城市',
    `social_security_month`                       varchar(255)   DEFAULT NULL COMMENT '社保月份',
    `social_security_base`                        decimal(10, 2) DEFAULT NULL COMMENT '社保基数',
    `social_security`                             decimal(10, 2) DEFAULT NULL COMMENT '社保合计',
    `social_security_enterprise`                  decimal(10, 2) DEFAULT NULL COMMENT '社保企业',
    `social_security_individual`                  decimal(10, 2) DEFAULT NULL COMMENT '社保个人',
    `provident_fund_city`                         varchar(255)   DEFAULT NULL COMMENT '公积金城市',
    `provident_fund_month`                        varchar(255)   DEFAULT NULL COMMENT '公积金月份',
    `provident_fund_base`                         decimal(10, 2) DEFAULT NULL COMMENT '公积金基数',
    `accumulation_fund_enterprise_base`           decimal(10, 2) DEFAULT NULL COMMENT '公积金企业基数',
    `proportion_of_provident_fund_enterprises`    decimal(10, 2) DEFAULT NULL COMMENT '公积金企业比例',
    `individual_base_of_provident_fund`           decimal(10, 2) DEFAULT NULL COMMENT '公积金个人基数',
    `personal_ratio_of_provident_fund`            decimal(10, 2) DEFAULT NULL COMMENT '公积金个人比例',
    `total_provident_fund`                        decimal(10, 2) DEFAULT NULL COMMENT '公积金合计',
    `provident_fund_enterprises`                  decimal(10, 2) DEFAULT NULL COMMENT '公积金企业',
    `provident_fund_individual`                   decimal(10, 2) DEFAULT NULL COMMENT '公积金个人',
    `pension_enterprise_base`                     decimal(10, 2) DEFAULT NULL COMMENT '养老企业基数',
    `proportion_of_pension_enterprises`           decimal(10, 2) DEFAULT NULL COMMENT '养老企业比例',
    `pension_enterprise`                          decimal(10, 2) DEFAULT NULL COMMENT '养老企业',
    `personal_pension_base`                       decimal(10, 2) DEFAULT NULL COMMENT '养老个人基数',
    `personal_pension_ratio`                      decimal(10, 2) DEFAULT NULL COMMENT '养老个人比例',
    `old_age_individual`                          decimal(10, 2) DEFAULT NULL COMMENT '养老个人',
    `unemployment_enterprise_base`                decimal(10, 2) DEFAULT NULL COMMENT '失业企业基数',
    `proportion_of_unemployed_enterprises`        decimal(10, 2) DEFAULT NULL COMMENT '失业企业比例',
    `unemployed_enterprise`                       decimal(10, 2) DEFAULT NULL COMMENT '失业企业',
    `the_number_of_unemployed_individuals`        decimal(10, 2) DEFAULT NULL COMMENT '失业个人基数',
    `percentage_of_unemployed_individuals`        decimal(10, 2) DEFAULT NULL COMMENT '失业个人比例',
    `unemployed_individual`                       decimal(10, 2) DEFAULT NULL COMMENT '失业个人',
    `medical_enterprise_base`                     decimal(10, 2) DEFAULT NULL COMMENT '医疗企业基数',
    `proportion_of_medical_enterprises`           decimal(10, 2) DEFAULT NULL COMMENT '医疗企业比例',
    `medical_enterprise`                          decimal(10, 2) DEFAULT NULL COMMENT '医疗企业',
    `medical_personal_base`                       decimal(10, 2) DEFAULT NULL COMMENT '医疗个人基数',
    `medical_personal_ratio`                      decimal(10, 2) DEFAULT NULL COMMENT '医疗个人比例',
    `medical_individual`                          decimal(10, 2) DEFAULT NULL COMMENT '医疗个人',
    `base_of_industrial_injury_enterprises`       decimal(10, 2) DEFAULT NULL COMMENT '工伤企业基数',
    `proportion_of_industrial_injury_enterprises` decimal(10, 2) DEFAULT NULL COMMENT '工伤企业比例',
    `industrial_injury_enterprise`                decimal(10, 2) DEFAULT NULL COMMENT '工伤企业',
    `fertility_enterprise_base`                   decimal(10, 2) DEFAULT NULL COMMENT '生育企业基数',
    `proportion_of_fertility_enterprises`         decimal(10, 2) DEFAULT NULL COMMENT '生育企业比例',
    `childbearing_enterprise`                     decimal(10, 2) DEFAULT NULL COMMENT '生育企业',
    `base_of_serious_illness`                     decimal(10, 2) DEFAULT NULL COMMENT '大病企业基数',
    `proportion_of_seriously_ill_enterprises`     decimal(10, 2) DEFAULT NULL COMMENT '大病企业比例',
    `big_disease_enterprise`                      decimal(10, 2) DEFAULT NULL COMMENT '大病企业',
    `personal_base_of_serious_illness`            decimal(10, 2) DEFAULT NULL COMMENT '大病个人基数',
    `personal_proportion_of_serious_illness`      decimal(10, 2) DEFAULT NULL COMMENT '大病个人比例',
    `a_person_of_great_disease`                   decimal(10, 2) DEFAULT NULL COMMENT '大病个人',
    `provident_fund_notes`                        text COMMENT '公积金备注',
    `social_security_notes`                       text COMMENT '社保备注',
    `years_month`                                 varchar(40)    DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社保-归档详情';

/*Data for the table `ss_archive_detail` */

insert into `ss_archive_detail`(`id`, `archive_id`, `user_id`, `username`, `time_of_entry`, `mobile`, `id_number`,
                                `the_highest_degree_of_education`, `opening_bank`, `bank_card_number`,
                                `first_level_department`, `two_level_department`, `working_city`,
                                `social_security_computer_number`, `provident_fund_account`, `leave_date`,
                                `household_registration_type`, `participating_in_the_city`, `social_security_month`,
                                `social_security_base`, `social_security`, `social_security_enterprise`,
                                `social_security_individual`, `provident_fund_city`, `provident_fund_month`,
                                `provident_fund_base`, `accumulation_fund_enterprise_base`,
                                `proportion_of_provident_fund_enterprises`, `individual_base_of_provident_fund`,
                                `personal_ratio_of_provident_fund`, `total_provident_fund`,
                                `provident_fund_enterprises`, `provident_fund_individual`, `pension_enterprise_base`,
                                `proportion_of_pension_enterprises`, `pension_enterprise`, `personal_pension_base`,
                                `personal_pension_ratio`, `old_age_individual`, `unemployment_enterprise_base`,
                                `proportion_of_unemployed_enterprises`, `unemployed_enterprise`,
                                `the_number_of_unemployed_individuals`, `percentage_of_unemployed_individuals`,
                                `unemployed_individual`, `medical_enterprise_base`, `proportion_of_medical_enterprises`,
                                `medical_enterprise`, `medical_personal_base`, `medical_personal_ratio`,
                                `medical_individual`, `base_of_industrial_injury_enterprises`,
                                `proportion_of_industrial_injury_enterprises`, `industrial_injury_enterprise`,
                                `fertility_enterprise_base`, `proportion_of_fertility_enterprises`,
                                `childbearing_enterprise`, `base_of_serious_illness`,
                                `proportion_of_seriously_ill_enterprises`, `big_disease_enterprise`,
                                `personal_base_of_serious_illness`, `personal_proportion_of_serious_illness`,
                                `a_person_of_great_disease`, `provident_fund_notes`, `social_security_notes`,
                                `years_month`)
values ('1169622053605036032', '1166213907154939904', '1063705989926227968', 'itcast', '2018-11-02', '13800000002',
        '1234567890', '本科', '333', '12', 'test1', NULL, NULL, '123', '123', '--', NULL, '北京', '201907', '10000.00',
        '4380.00', '3060.00', '1320.00', '北京', '201907', '10000.00', '10000.00', '0.12', '10000.00', '0.12', '24.00',
        '12.00', '12.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'xxx12345', 'xxxx',
        '201907'),
       ('1169622053605036033', '1166213907154939904', '1066370498633486336', 'zbz', '2018-11-04', '13800000003',
        '1234567890', '高中', NULL, NULL, '测试部', NULL, NULL, 'x1111', NULL, '--', NULL, '北京', '201907', '3388.00',
        '1450.06', '1002.85', '447.22', '北京', '201907', '2277.00', '2277.00', '6.00', '2277.00', '6.00', '273.24',
        '136.62', '136.62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdauy',
        '201907'),
       ('1169622053605036034', '1166213907154939904', '1071632760222810112', 'll', '2018-12-02', '13800000004', NULL,
        NULL, NULL, NULL, '测试部', NULL, NULL, NULL, NULL, '--', NULL, '北京', '201907', '5000.00', '2140.00', '1480.00',
        '660.00', '北京', '201907', '5000.00', '5000.00', '12.00', '5000.00', '12.00', '1200.00', '600.00', '600.00',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '201907'),
       ('1169622053605036035', '1166213907154939904', '1074238801330704384', 'a01', '2018-01-01', '13400000001', NULL,
        NULL, NULL, NULL, '开发部', NULL, NULL, NULL, NULL, '--', NULL, '北京', '201907', '5900.00', '2584.20', '1805.40',
        '778.80', '北京', '201907', '5900.00', '5900.00', '12.00', '5900.00', '12.00', '1416.00', '708.00', '708.00',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11111', '2222', '201907'),
       ('1169622053605036036', '1166213907154939904', '1074238801402007552', 'a02', '2018-01-01', '13400000002', NULL,
        '初中', NULL, NULL, '开发部', NULL, NULL, NULL, NULL, '--', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, '201907'),
       ('1169622053605036037', '1166213907154939904', '1075383133106425856', 'test001', '2018-01-01', '13500000001',
        NULL, NULL, NULL, NULL, '开发部', NULL, NULL, NULL, NULL, '--', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, '201907'),
       ('1169622053605036038', '1166213907154939904', '1075383135371350016', 'test002', '2018-01-01', '13500000002',
        NULL, NULL, NULL, NULL, '开发部', NULL, NULL, NULL, NULL, '--', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, '201907'),
       ('1169622053605036039', '1166213907154939904', '1075383135459430400', 'test003', '2018-01-01', '13500000003',
        NULL, NULL, NULL, NULL, '开发部', NULL, NULL, NULL, NULL, '--', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, '201907');

/*Table structure for table `ss_city_payment_item` */

DROP TABLE IF EXISTS `ss_city_payment_item`;

CREATE TABLE `ss_city_payment_item`
(
    `id`              varchar(40) NOT NULL,
    `city_id`         varchar(40) NOT NULL COMMENT '城市id',
    `payment_item_id` varchar(40) NOT NULL COMMENT '缴费项目id',
    `switch_company`  tinyint(1) NOT NULL COMMENT '企业是否缴纳开关，0为禁用，1为启用',
    `scale_company`   decimal(6, 2) DEFAULT NULL COMMENT '企业比例',
    `switch_personal` tinyint(1) NOT NULL COMMENT '个人是否缴纳开关，0为禁用，1为启用',
    `scale_personal`  decimal(6, 2) DEFAULT NULL COMMENT '个人比例',
    `name`            varchar(40)   DEFAULT NULL COMMENT '缴费项目名称',
    PRIMARY KEY (`id`),
    UNIQUE KEY `UK_CID_PIID` (`city_id`,`payment_item_id`) USING BTREE COMMENT '城市id与缴费项目id组合唯一'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社保-城市与缴费项目关联表';

/*Data for the table `ss_city_payment_item` */

insert into `ss_city_payment_item`(`id`, `city_id`, `payment_item_id`, `switch_company`, `scale_company`,
                                   `switch_personal`, `scale_personal`, `name`)
values ('1', '1084825908823904256', '1', 1, '16.00', 1, '8.00', '养老'),
       ('10', '1084825908823904257', '4', 1, '0.20', 0, NULL, '工伤'),
       ('11', '1084825908823904257', '5', 1, '0.80', 0, NULL, '生育'),
       ('12', '1084825908823904257', '6', 1, '0.00', 1, '0.00', '大病'),
       ('13', '1084825908823904258', '1', 1, '19.00', 1, '8.00', '养老'),
       ('14', '1084825908823904258', '2', 1, '10.00', 1, '5.00', '医疗'),
       ('15', '1084825908823904258', '3', 1, '0.80', 1, '0.20', '失业'),
       ('16', '1084825908823904258', '4', 1, '0.20', 0, NULL, '工伤'),
       ('17', '1084825908823904258', '5', 1, '0.80', 0, NULL, '生育'),
       ('18', '1084825908823904258', '6', 1, '0.00', 1, '0.00', '大病'),
       ('2', '1084825908823904256', '2', 1, '10.00', 1, '5.00', '医疗'),
       ('3', '1084825908823904256', '3', 1, '0.80', 1, '0.20', '失业'),
       ('4', '1084825908823904256', '4', 1, '0.40', 0, NULL, '工伤'),
       ('5', '1084825908823904256', '5', 1, '0.80', 0, NULL, '生育'),
       ('6', '1084825908823904256', '6', 1, '0.00', 1, '0.00', '大病'),
       ('7', '1084825908823904257', '1', 1, '19.00', 1, '8.00', '养老'),
       ('8', '1084825908823904257', '2', 1, '10.00', 1, '5.00', '医疗'),
       ('9', '1084825908823904257', '3', 1, '0.80', 1, '0.20', '失业');

/*Table structure for table `ss_company_settings` */

DROP TABLE IF EXISTS `ss_company_settings`;

CREATE TABLE `ss_company_settings`
(
    `company_id`  varchar(40) NOT NULL COMMENT '企业id',
    `is_settings` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0是未设置，1是已设置',
    `data_month`  varchar(40) NOT NULL COMMENT '当前显示报表月份',
    PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社保-企业设置信息';

/*Data for the table `ss_company_settings` */

insert into `ss_company_settings`(`company_id`, `is_settings`, `data_month`)
values ('1', 1, '201907');

/*Table structure for table `ss_payment_item` */

DROP TABLE IF EXISTS `ss_payment_item`;

CREATE TABLE `ss_payment_item`
(
    `id`              varchar(40)   NOT NULL COMMENT 'id',
    `name`            varchar(255)  NOT NULL COMMENT '缴费项目名称',
    `switch_company`  tinyint(1) NOT NULL DEFAULT '0' COMMENT '企业是否缴纳开关，0为禁用，1为启用',
    `scale_company`   decimal(6, 2) NOT NULL DEFAULT '0.00' COMMENT '企业比例',
    `switch_personal` tinyint(1) NOT NULL DEFAULT '0' COMMENT '个人是否缴纳开关，0为禁用，1为启用',
    `scale_personal`  decimal(6, 2) NOT NULL DEFAULT '0.00' COMMENT '个人比例',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社保-缴费项目';

/*Data for the table `ss_payment_item` */

insert into `ss_payment_item`(`id`, `name`, `switch_company`, `scale_company`, `switch_personal`, `scale_personal`)
values ('1', '养老', 1, '19.00', 1, '8.00'),
       ('2', '医疗', 1, '10.00', 1, '2.00'),
       ('3', '失业', 1, '0.80', 1, '0.20'),
       ('4', '工伤', 1, '0.20', 0, '0.00'),
       ('5', '生育', 1, '0.80', 0, '0.00'),
       ('6', '大病', 1, '0.00', 0, '0.00');

/*Table structure for table `ss_user_social_security` */

DROP TABLE IF EXISTS `ss_user_social_security`;

CREATE TABLE `ss_user_social_security`
(
    `user_id`                                       varchar(40)   NOT NULL COMMENT '用户id',
    `enterprises_pay_social_security_this_month`    tinyint(1) NOT NULL DEFAULT '0' COMMENT '本月是否缴纳社保 0为不缴纳 1为缴纳',
    `enterprises_pay_the_provident_fund_this_month` tinyint(1) NOT NULL DEFAULT '0' COMMENT '本月是否缴纳公积金 0为不缴纳 1为缴纳',
    `participating_in_the_city_id`                  varchar(40)   NOT NULL COMMENT '参保城市id',
    `social_security_type`                          tinyint(1) NOT NULL DEFAULT '2' COMMENT '参保类型  1为首次开户 2为非首次开户',
    `household_registration_type`                   tinyint(1) NOT NULL COMMENT '户籍类型 1为本市城镇 2为本市农村 3为外埠城镇 4为外埠农村',
    `social_security_base`                          int(8) NOT NULL COMMENT '社保基数',
    `industrial_injury_ratio`                       decimal(6, 2) DEFAULT NULL COMMENT '工伤比例',
    `social_security_notes`                         varchar(300)  DEFAULT NULL COMMENT '社保备注',
    `provident_fund_city_id`                        varchar(40)   NOT NULL COMMENT '公积金城市id',
    `provident_fund_base`                           int(8) NOT NULL COMMENT '公积金基数',
    `enterprise_proportion`                         decimal(6, 2) NOT NULL COMMENT '公积金企业比例',
    `personal_proportion`                           decimal(6, 2) NOT NULL COMMENT '公积金个人比例',
    `enterprise_provident_fund_payment`             decimal(8, 2) NOT NULL COMMENT '公积金企业缴纳数额',
    `personal_provident_fund_payment`               decimal(8, 2) NOT NULL COMMENT '公积金个人缴纳数额',
    `provident_fund_notes`                          varchar(300)  DEFAULT NULL COMMENT '公积金备注',
    `last_modify_time`                              datetime      NOT NULL COMMENT '最后修改时间',
    `social_security_switch_update_time`            datetime      NOT NULL COMMENT '社保是否缴纳变更时间',
    `provident_fund_switch_update_time`             datetime      NOT NULL COMMENT '公积金是否缴纳变更时间',
    `city_name`                                     varchar(40)   DEFAULT NULL,
    `household_registration`                        varchar(40)   DEFAULT NULL,
    `participating_in_the_city`                     varchar(40)   DEFAULT NULL,
    `provident_fund_city`                           varchar(40)   DEFAULT NULL,
    PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社保-用户社保信息表';

/*Data for the table `ss_user_social_security` */

insert into `ss_user_social_security`(`user_id`, `enterprises_pay_social_security_this_month`,
                                      `enterprises_pay_the_provident_fund_this_month`, `participating_in_the_city_id`,
                                      `social_security_type`, `household_registration_type`, `social_security_base`,
                                      `industrial_injury_ratio`, `social_security_notes`, `provident_fund_city_id`,
                                      `provident_fund_base`, `enterprise_proportion`, `personal_proportion`,
                                      `enterprise_provident_fund_payment`, `personal_provident_fund_payment`,
                                      `provident_fund_notes`, `last_modify_time`, `social_security_switch_update_time`,
                                      `provident_fund_switch_update_time`, `city_name`, `household_registration`,
                                      `participating_in_the_city`, `provident_fund_city`)
values ('1063705482939731968', 1, 1, '1084825908823904256', 1, 1, 10000, '0.30', '6432', '1084825908823904256', 10000,
        '0.12', '0.12', '1200.00', '1200.00', NULL, '2019-07-12 17:49:40', '2019-07-12 09:01:13', '2019-07-12 09:01:18',
        NULL, NULL, '北京', '北京'),
       ('1063705989926227968', 0, 0, '1084825908823904256', 1, 2, 10000, '3.00', 'xxxx', '1084825908823904256', 10000,
        '0.12', '0.12', '12.00', '12.00', 'xxx12345', '2019-07-16 10:36:21', '2019-07-16 10:36:21',
        '2019-07-16 10:36:21', NULL, NULL, '北京', '北京'),
       ('1066370498633486336', 1, 1, '1084825908823904256', 1, 1, 3388, '2.00', 'sdauy', '1084825908823904256', 2277,
        '6.00', '6.00', '136.62', '136.62', NULL, '2019-07-16 11:31:08', '2019-07-16 11:31:08', '2019-07-16 11:31:08',
        NULL, NULL, '北京', '北京'),
       ('1071632760222810112', 0, 0, '1084825908823904256', 1, 2, 5000, '2.00', NULL, '1084825908823904256', 5000,
        '12.00', '12.00', '600.00', '600.00', NULL, '2019-08-22 22:47:59', '2019-08-22 22:47:59', '2019-08-22 22:47:59',
        NULL, NULL, '北京', '北京'),
       ('1074238801330704384', 1, 1, '1084825908823904256', 1, 1, 5900, '3.00', '2222', '1084825908823904256', 5900,
        '12.00', '12.00', '708.00', '708.00', '11111', '2019-08-25 16:49:14', '2019-08-25 16:49:14',
        '2019-08-25 16:49:14', NULL, NULL, '北京', '北京');

/*Table structure for table `sys_file` */

DROP TABLE IF EXISTS `sys_file`;

CREATE TABLE `sys_file`
(
    `id`          varchar(40) NOT NULL COMMENT 'id',
    `file_name`   varchar(255) DEFAULT NULL COMMENT '文件原始名称',
    `path`        varchar(255) DEFAULT NULL COMMENT '存储路径',
    `uuid_name`   varchar(255) DEFAULT NULL COMMENT '文件实际名称',
    `type`        tinyint(2) DEFAULT NULL COMMENT '文件类型',
    `create_time` datetime    NOT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `sys_file` */

/*Table structure for table `sys_mail_record` */

DROP TABLE IF EXISTS `sys_mail_record`;

CREATE TABLE `sys_mail_record`
(
    `id`          varchar(40) NOT NULL COMMENT '主键ID',
    `recipient`   varchar(32)  DEFAULT NULL COMMENT '邮件接收邮箱',
    `subject`     varchar(100) DEFAULT NULL COMMENT '邮件主题',
    `content`     varchar(200) DEFAULT NULL COMMENT '邮件内容',
    `create_by`   varchar(64)  DEFAULT NULL,
    `create_date` datetime     DEFAULT NULL,
    `update_by`   varchar(64)  DEFAULT NULL,
    `update_date` datetime     DEFAULT NULL,
    `remarks`     varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统邮件记录表';

/*Data for the table `sys_mail_record` */

/*Table structure for table `sys_settings` */

DROP TABLE IF EXISTS `sys_settings`;

CREATE TABLE `sys_settings`
(
    `company_id`    varchar(40) NOT NULL COMMENT '企业ID',
    `settings_type` int(2) NOT NULL COMMENT '设置类型',
    `settings_info` text        NOT NULL COMMENT '详细设置',
    PRIMARY KEY (`company_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `sys_settings` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
