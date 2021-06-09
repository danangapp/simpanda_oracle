/*
 Navicat Premium Data Transfer

 Source Server         : db simpanda ilcs
 Source Server Type    : Oracle
 Source Server Version : 110200
 Source Host           : 10.88.49.28:1521
 Source Schema         : SIMPANDA

 Target Server Type    : Oracle
 Target Server Version : 110200
 File Encoding         : 65001

 Date: 07/06/2021 20:11:18
*/


-- ----------------------------
-- Table structure for action
-- ----------------------------
DROP TABLE "SIMPANDA"."action";
CREATE TABLE "SIMPANDA"."action" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of action
-- ----------------------------
INSERT INTO "SIMPANDA"."action" VALUES ('1', 'Create');
INSERT INTO "SIMPANDA"."action" VALUES ('2', 'View');
INSERT INTO "SIMPANDA"."action" VALUES ('3', 'Edit');

-- ----------------------------
-- Table structure for activity_log
-- ----------------------------
DROP TABLE "SIMPANDA"."activity_log";
CREATE TABLE "SIMPANDA"."activity_log" (
  "id" NUMBER(10) NOT NULL ,
  "date" TIMESTAMP(6) DEFAULT SYSDATE  ,
  "item" VARCHAR2(120 BYTE) ,
  "action" VARCHAR2(120 BYTE) ,
  "user_id" VARCHAR2(120 BYTE) ,
  "remark" VARCHAR2(120 BYTE) ,
  "koneksi" NUMBER(10) ,
  "keterangan" VARCHAR2(255 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of activity_log
-- ----------------------------
INSERT INTO "SIMPANDA"."activity_log" VALUES ('1', TO_TIMESTAMP('2021-05-10 11:29:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '2', '81', 'Pengajuan ditolak oleh pusat', '332', 'ok');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('13', TO_TIMESTAMP('2021-05-10 14:39:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '11', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('16', TO_TIMESTAMP('2021-05-10 14:41:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '14', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('19', TO_TIMESTAMP('2021-05-10 14:42:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '5', 'Pengajuan dibuat oleh admin cabang', '17', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('21', TO_TIMESTAMP('2021-05-10 14:44:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '5', 'Pengajuan dibuat oleh admin cabang', '19', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('24', TO_TIMESTAMP('2021-05-10 14:46:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '5', 'Pengajuan dibuat oleh admin cabang', '22', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('29', TO_TIMESTAMP('2021-05-10 14:51:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1065', 'Pengajuan dibuat oleh admin cabang', '27', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('31', TO_TIMESTAMP('2021-05-10 14:53:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1065', 'Pengajuan dibuat oleh admin cabang', '29', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('33', TO_TIMESTAMP('2021-05-10 14:55:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '31', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('35', TO_TIMESTAMP('2021-05-10 14:56:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '33', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('38', TO_TIMESTAMP('2021-05-10 15:00:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '36', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('41', TO_TIMESTAMP('2021-05-10 15:02:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1060', 'Pengajuan dibuat oleh admin cabang', '39', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('45', TO_TIMESTAMP('2021-05-10 15:04:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1060', 'Pengajuan dibuat oleh admin cabang', '43', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('49', TO_TIMESTAMP('2021-05-10 15:07:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1060', 'Pengajuan dibuat oleh admin cabang', '47', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('51', TO_TIMESTAMP('2021-05-10 15:08:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1060', 'Pengajuan dibuat oleh admin cabang', '49', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('55', TO_TIMESTAMP('2021-05-10 15:10:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '9', 'Pengajuan dibuat oleh admin cabang', '53', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('86', TO_TIMESTAMP('2021-05-10 16:06:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dibuat oleh admin cabang', '83', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('88', TO_TIMESTAMP('2021-05-10 16:08:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dibuat oleh admin cabang', '85', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('94', TO_TIMESTAMP('2021-05-10 16:14:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dibuat oleh admin cabang', '91', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('98', TO_TIMESTAMP('2021-05-10 16:22:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '95', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('101', TO_TIMESTAMP('2021-05-10 16:25:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '98', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('104', TO_TIMESTAMP('2021-05-10 16:27:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dibuat oleh admin cabang', '101', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('119', TO_TIMESTAMP('2021-05-10 17:33:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '116', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('123', TO_TIMESTAMP('2021-05-11 11:35:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dirubah oleh admin cabang', '117', 'edit');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('124', TO_TIMESTAMP('2021-05-11 11:38:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '28', 'Pengajuan dirubah oleh admin cabang', '116', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('125', TO_TIMESTAMP('2021-05-11 11:39:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '28', 'Pengajuan dirubah oleh admin cabang', '116', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('126', TO_TIMESTAMP('2021-05-11 11:48:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '28', 'Pengajuan dirubah oleh admin cabang', '116', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('127', TO_TIMESTAMP('2021-05-11 11:49:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '28', 'Pengajuan dirubah oleh admin cabang', '116', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('128', TO_TIMESTAMP('2021-05-11 13:54:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '28', 'Pengajuan dirubah oleh admin cabang', '116', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('132', TO_TIMESTAMP('2021-05-11 14:45:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '118', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('136', TO_TIMESTAMP('2021-05-11 15:31:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '119', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('137', TO_TIMESTAMP('2021-05-11 15:34:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '120', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('138', TO_TIMESTAMP('2021-05-11 15:36:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '121', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('140', TO_TIMESTAMP('2021-05-11 15:47:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '28', 'Pengajuan dirubah oleh admin cabang', '116', '  ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('142', TO_TIMESTAMP('2021-05-11 15:54:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '123', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('146', TO_TIMESTAMP('2021-05-11 16:02:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '125', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('147', TO_TIMESTAMP('2021-05-11 16:03:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '126', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('148', TO_TIMESTAMP('2021-05-11 16:06:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '127', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('149', TO_TIMESTAMP('2021-05-11 16:08:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '128', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('150', TO_TIMESTAMP('2021-05-11 16:09:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '129', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('151', TO_TIMESTAMP('2021-05-11 16:10:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '130', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('152', TO_TIMESTAMP('2021-05-11 16:14:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '131', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('153', TO_TIMESTAMP('2021-05-11 16:17:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '132', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('154', TO_TIMESTAMP('2021-05-11 16:27:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '133', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('155', TO_TIMESTAMP('2021-05-11 16:28:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '134', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('156', TO_TIMESTAMP('2021-05-11 16:29:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '135', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('157', TO_TIMESTAMP('2021-05-11 16:29:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '136', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('159', TO_TIMESTAMP('2021-05-11 16:31:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '138', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('160', TO_TIMESTAMP('2021-05-11 21:55:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '28', 'Pengajuan dirubah oleh admin cabang', '116', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('161', TO_TIMESTAMP('2021-05-11 21:55:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dirubah oleh admin cabang', '131', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('162', TO_TIMESTAMP('2021-05-11 21:56:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dirubah oleh admin cabang', '116', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('163', TO_TIMESTAMP('2021-05-11 21:58:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dirubah oleh admin cabang', '131', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('164', TO_TIMESTAMP('2021-05-11 21:59:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dirubah oleh admin cabang', '116', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('186', TO_TIMESTAMP('2021-05-11 23:50:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '143', 'Create
');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('187', TO_TIMESTAMP('2021-05-12 01:04:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '143', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('188', TO_TIMESTAMP('2021-05-12 01:06:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '143', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('189', TO_TIMESTAMP('2021-05-12 01:12:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '143', 'w');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('191', TO_TIMESTAMP('2021-05-12 01:16:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '144', 'rumah dinas 5');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('192', TO_TIMESTAMP('2021-05-12 01:21:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dirubah oleh admin cabang', '143', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('195', TO_TIMESTAMP('2021-05-12 02:19:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dirubah oleh admin cabang', '98', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('196', TO_TIMESTAMP('2021-05-17 09:12:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '144', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('198', TO_TIMESTAMP('2021-05-17 09:16:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '146', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('200', TO_TIMESTAMP('2021-05-17 09:19:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '148', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('201', TO_TIMESTAMP('2021-05-17 09:19:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '149', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('203', TO_TIMESTAMP('2021-05-17 09:30:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '150', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('214', TO_TIMESTAMP('2021-05-17 10:40:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '337', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('215', TO_TIMESTAMP('2021-05-17 10:42:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1060', 'Pengajuan dirubah oleh admin cabang', '216', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('216', TO_TIMESTAMP('2021-05-17 10:43:19.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1060', 'Pengajuan dirubah oleh admin cabang', '284', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('217', TO_TIMESTAMP('2021-05-17 10:44:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '335', 'Create
');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('218', TO_TIMESTAMP('2021-05-17 10:45:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1060', 'Pengajuan dirubah oleh admin cabang', '256', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('219', TO_TIMESTAMP('2021-05-17 10:47:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '357', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('221', TO_TIMESTAMP('2021-05-17 10:51:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1060', 'Pengajuan dirubah oleh admin cabang', '257', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('222', TO_TIMESTAMP('2021-05-17 10:51:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '361', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('223', TO_TIMESTAMP('2021-05-17 10:55:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1060', 'Pengajuan dirubah oleh admin cabang', '285', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('231', TO_TIMESTAMP('2021-05-17 11:06:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '16', 'Pengajuan dirubah oleh admin cabang', '262', 'edit data pandu');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('232', TO_TIMESTAMP('2021-05-17 11:09:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '5', 'Pengajuan dirubah oleh admin cabang', '21', '  ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('233', TO_TIMESTAMP('2021-05-17 11:10:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '16', 'Pengajuan dirubah oleh admin cabang', '174', 'edit data pandu');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('242', TO_TIMESTAMP('2021-05-17 11:47:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '5', 'Pengajuan dirubah oleh admin cabang', '201', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('243', TO_TIMESTAMP('2021-05-17 11:48:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '5', 'Pengajuan dirubah oleh admin cabang', '201', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('244', TO_TIMESTAMP('2021-05-17 11:53:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '201', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('245', TO_TIMESTAMP('2021-05-17 11:55:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '5', 'Pengajuan dibuat oleh admin cabang', '403', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('246', TO_TIMESTAMP('2021-05-17 11:57:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '113', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('248', TO_TIMESTAMP('2021-05-17 12:00:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '16', 'Pengajuan dirubah oleh admin cabang', '41', 'edit data kapal');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('249', TO_TIMESTAMP('2021-05-17 12:00:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '41', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('252', TO_TIMESTAMP('2021-05-17 12:05:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '142', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('254', TO_TIMESTAMP('2021-05-17 12:06:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '8', 'Pengajuan dibuat oleh admin cabang', '407', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('256', TO_TIMESTAMP('2021-05-17 13:00:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '113', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('257', TO_TIMESTAMP('2021-05-17 13:13:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '113', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('258', TO_TIMESTAMP('2021-05-17 13:14:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '28', 'Pengajuan dirubah oleh admin cabang', '316', 'edit');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('259', TO_TIMESTAMP('2021-05-17 13:17:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '28', 'Pengajuan dibuat oleh admin cabang', '409', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('261', TO_TIMESTAMP('2021-05-17 13:22:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '28', 'Pengajuan dirubah oleh admin cabang', '410', 'edit');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('6', TO_TIMESTAMP('2021-05-10 14:31:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '2', 'Pengajuan dibuat oleh admin cabang', '4', 'OK');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('43', TO_TIMESTAMP('2021-05-10 15:03:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1060', 'Pengajuan dibuat oleh admin cabang', '41', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('52', TO_TIMESTAMP('2021-05-10 15:08:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '50', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('63', TO_TIMESTAMP('2021-05-10 15:35:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dirubah oleh admin cabang', '59', 'edit name');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('80', TO_TIMESTAMP('2021-05-10 16:01:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '77', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('99', TO_TIMESTAMP('2021-05-10 16:23:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dibuat oleh admin cabang', '96', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('113', TO_TIMESTAMP('2021-05-10 17:00:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '110', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('115', TO_TIMESTAMP('2021-05-10 17:01:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '112', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('120', TO_TIMESTAMP('2021-05-11 04:32:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '117', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('121', TO_TIMESTAMP('2021-05-11 04:37:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dirubah oleh admin cabang', '117', 'edit');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('122', TO_TIMESTAMP('2021-05-11 06:28:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '21', 'Pengajuan dirubah oleh admin cabang', '117', 'edit');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('129', TO_TIMESTAMP('2021-05-11 14:09:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '28', 'Pengajuan dirubah oleh admin cabang', '116', '  ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('130', TO_TIMESTAMP('2021-05-11 14:39:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '21', 'Pengajuan dirubah oleh admin cabang', '117', 'edit');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('131', TO_TIMESTAMP('2021-05-11 14:43:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '118', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('133', TO_TIMESTAMP('2021-05-11 14:47:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '119', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('134', TO_TIMESTAMP('2021-05-11 14:48:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '119', 'create
');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('135', TO_TIMESTAMP('2021-05-11 14:56:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '119', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('141', TO_TIMESTAMP('2021-05-11 15:48:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '122', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('143', TO_TIMESTAMP('2021-05-11 15:55:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '123', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('144', TO_TIMESTAMP('2021-05-11 15:55:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dirubah oleh admin cabang', '122', 'edit');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('145', TO_TIMESTAMP('2021-05-11 16:01:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '124', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('165', TO_TIMESTAMP('2021-05-11 22:00:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dirubah oleh admin cabang', '116', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('190', TO_TIMESTAMP('2021-05-12 01:13:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '143', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('194', TO_TIMESTAMP('2021-05-12 01:29:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dirubah oleh admin cabang', '143', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('197', TO_TIMESTAMP('2021-05-17 09:15:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '145', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('199', TO_TIMESTAMP('2021-05-17 09:18:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '147', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('202', TO_TIMESTAMP('2021-05-17 09:27:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '4', 'Pengajuan dirubah oleh admin cabang', '169', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('204', TO_TIMESTAMP('2021-05-17 09:38:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '4', 'Pengajuan dirubah oleh admin cabang', '272', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('205', TO_TIMESTAMP('2021-05-17 09:39:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '6', 'Pengajuan dirubah oleh admin cabang', '19', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('206', TO_TIMESTAMP('2021-05-17 09:40:19.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '4', 'Pengajuan dirubah oleh admin cabang', '233', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('207', TO_TIMESTAMP('2021-05-17 09:44:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '6', 'Pengajuan dirubah oleh admin cabang', '20', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('208', TO_TIMESTAMP('2021-05-17 09:44:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '4', 'Pengajuan dirubah oleh admin cabang', '53', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('209', TO_TIMESTAMP('2021-05-17 09:47:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '6', 'Pengajuan dirubah oleh admin cabang', '71', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('210', TO_TIMESTAMP('2021-05-17 09:50:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '4', 'Pengajuan dirubah oleh admin cabang', '24', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('211', TO_TIMESTAMP('2021-05-17 09:51:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '6', 'Pengajuan dirubah oleh admin cabang', '204', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('212', TO_TIMESTAMP('2021-05-17 10:30:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '4', 'Pengajuan dirubah oleh admin cabang', '25', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('213', TO_TIMESTAMP('2021-05-17 10:31:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '6', 'Pengajuan dirubah oleh admin cabang', '50', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('230', TO_TIMESTAMP('2021-05-17 11:05:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '2', 'Pengajuan dirubah oleh admin cabang', '290', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('238', TO_TIMESTAMP('2021-05-17 11:22:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '5', 'Pengajuan dirubah oleh admin cabang', '39', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('260', TO_TIMESTAMP('2021-05-17 13:22:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '28', 'Pengajuan dibuat oleh admin cabang', '410', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('262', TO_TIMESTAMP('2021-05-17 13:31:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dibuat oleh admin cabang', '411', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('263', TO_TIMESTAMP('2021-05-17 13:34:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '411', 'Update ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('264', TO_TIMESTAMP('2021-05-17 13:41:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '411', 'Tambah sertifikat');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('265', TO_TIMESTAMP('2021-05-17 13:43:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '411', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('266', TO_TIMESTAMP('2021-05-17 13:44:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '2', '81', 'Pengajuan ditolak oleh pusat', '18', 'Tolak');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('267', TO_TIMESTAMP('2021-05-17 14:08:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dibuat oleh admin cabang', '412', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('268', TO_TIMESTAMP('2021-05-17 14:13:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '412', 'update nama');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('269', TO_TIMESTAMP('2021-05-17 14:17:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '412', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('270', TO_TIMESTAMP('2021-05-17 14:22:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '2', '81', 'Pengajuan ditolak oleh pusat', '410', 'Tolak');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('275', TO_TIMESTAMP('2021-05-17 15:09:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '31', 'Pengajuan dirubah oleh admin cabang', '3', 'null');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('276', TO_TIMESTAMP('2021-05-17 15:11:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '8', 'Pengajuan dirubah oleh admin cabang', '2', 'null');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('279', TO_TIMESTAMP('2021-05-17 15:13:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '8', 'Pengajuan dirubah oleh admin cabang', '2', 'null');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('280', TO_TIMESTAMP('2021-05-17 15:13:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '31', 'Pengajuan dirubah oleh admin cabang', '3', 'null');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('302', TO_TIMESTAMP('2021-05-18 08:54:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '9', 'Pengajuan dirubah oleh admin cabang', '295', 'SERTIFIKATE KESEHATAN DAN IJASAH BELUM KOMPLIT');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('297', TO_TIMESTAMP('2021-05-18 07:49:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '363', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('301', TO_TIMESTAMP('2021-05-18 08:50:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '363', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('303', TO_TIMESTAMP('2021-05-18 09:16:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '363', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('304', TO_TIMESTAMP('2021-05-18 09:24:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '1045', 'Pengajuan dibuat oleh admin cabang', '364', '123');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('305', TO_TIMESTAMP('2021-05-18 09:24:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '364', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('312', TO_TIMESTAMP('2021-05-18 10:02:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '409', 'qweqweqweqweqweqweqwe');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('313', TO_TIMESTAMP('2021-05-18 10:15:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dibuat oleh admin cabang', '151', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('314', TO_TIMESTAMP('2021-05-18 10:16:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '1', '81', 'Pengajuan disetujui oleh pusat', '151', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('315', TO_TIMESTAMP('2021-05-18 10:19:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '9', 'Pengajuan dirubah oleh admin cabang', '53', 'belum ada ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('316', TO_TIMESTAMP('2021-05-18 10:20:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '9', 'Pengajuan dirubah oleh admin cabang', '53', 'belum ada rumah dinas pandu');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('317', TO_TIMESTAMP('2021-05-18 10:30:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dirubah oleh admin cabang', '151', 'update tahun perolehan');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('318', TO_TIMESTAMP('2021-05-18 10:32:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '2', '81', 'Pengajuan ditolak oleh pusat', '151', 'tolak uat2021');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('321', TO_TIMESTAMP('2021-05-18 11:13:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1', 'Pengajuan dirubah oleh admin cabang', '410', 'update
');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('322', TO_TIMESTAMP('2021-05-18 11:14:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '413', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('323', TO_TIMESTAMP('2021-05-18 11:14:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '410', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('324', TO_TIMESTAMP('2021-05-18 11:25:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'saranabantupemandu', '0', '31', 'Pengajuan dibuat oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('325', TO_TIMESTAMP('2021-05-18 11:27:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'saranabantupemandu', '1', '81', 'Pengajuan disetujui oleh pusat', '1', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('329', TO_TIMESTAMP('2021-05-18 11:45:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('336', TO_TIMESTAMP('2021-05-18 13:20:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '1', '81', 'Pengajuan disetujui oleh pusat', '1', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('337', TO_TIMESTAMP('2021-05-18 13:24:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('338', TO_TIMESTAMP('2021-05-18 13:25:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '2', '81', 'Pengajuan ditolak oleh pusat', '1', 'tolak investigasi insiden');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('339', TO_TIMESTAMP('2021-05-18 13:32:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'evaluasipelimpahan', '0', '31', 'Pengajuan dibuat oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('347', TO_TIMESTAMP('2021-05-18 14:46:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '9', 'Pengajuan dirubah oleh admin cabang', '323', 'SKPPP belum update');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('376', TO_TIMESTAMP('2021-05-19 11:33:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '4', 'Pengajuan dibuat oleh admin cabang', '416', 'Create Pandu Bandar UAT2021');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('377', TO_TIMESTAMP('2021-05-19 11:33:45.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '416', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('405', TO_TIMESTAMP('2021-05-19 14:26:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '409', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('406', TO_TIMESTAMP('2021-05-19 14:45:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '365', 'tidak aktif');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('408', TO_TIMESTAMP('2021-05-19 14:48:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '365', '3 sertifikat');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('409', TO_TIMESTAMP('2021-05-19 14:48:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '365', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('410', TO_TIMESTAMP('2021-05-19 14:53:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'tidak aktif');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('411', TO_TIMESTAMP('2021-05-19 14:53:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '1', '81', 'Pengajuan disetujui oleh pusat', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('412', TO_TIMESTAMP('2021-05-19 14:55:45.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '1', '81', 'Pengajuan disetujui oleh pusat', '3', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('418', TO_TIMESTAMP('2021-05-19 15:42:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '409', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('419', TO_TIMESTAMP('2021-05-19 15:43:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '413', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('420', TO_TIMESTAMP('2021-05-19 15:43:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '413', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('2', TO_TIMESTAMP('2021-05-10 11:31:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '2', '81', 'Pengajuan ditolak oleh pusat', '333', 'a');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('39', TO_TIMESTAMP('2021-05-10 15:01:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1060', 'Pengajuan dibuat oleh admin cabang', '37', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('44', TO_TIMESTAMP('2021-05-10 15:03:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '42', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('139', TO_TIMESTAMP('2021-05-11 15:44:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '28', 'Pengajuan dirubah oleh admin cabang', '116', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('167', TO_TIMESTAMP('2021-05-11 22:50:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dirubah oleh admin cabang', '137', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('168', TO_TIMESTAMP('2021-05-11 22:51:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dirubah oleh admin cabang', '139', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('169', TO_TIMESTAMP('2021-05-11 22:58:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dirubah oleh admin cabang', '139', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('170', TO_TIMESTAMP('2021-05-11 22:58:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dirubah oleh admin cabang', '137', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('171', TO_TIMESTAMP('2021-05-11 23:07:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '140', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('176', TO_TIMESTAMP('2021-05-11 23:14:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '143', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('177', TO_TIMESTAMP('2021-05-11 23:17:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '143', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('178', TO_TIMESTAMP('2021-05-11 23:18:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '143', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('179', TO_TIMESTAMP('2021-05-11 23:21:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '143', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('180', TO_TIMESTAMP('2021-05-11 23:23:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '143', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('181', TO_TIMESTAMP('2021-05-11 23:24:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '143', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('182', TO_TIMESTAMP('2021-05-11 23:32:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '143', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('183', TO_TIMESTAMP('2021-05-11 23:37:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '143', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('184', TO_TIMESTAMP('2021-05-11 23:38:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '143', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('193', TO_TIMESTAMP('2021-05-12 01:22:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dirubah oleh admin cabang', '143', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('220', TO_TIMESTAMP('2021-05-17 10:50:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '345', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('224', TO_TIMESTAMP('2021-05-17 10:57:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '2', 'Pengajuan dirubah oleh admin cabang', '309', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('225', TO_TIMESTAMP('2021-05-17 11:01:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '4', 'Pengajuan dirubah oleh admin cabang', '31', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('226', TO_TIMESTAMP('2021-05-17 11:01:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '2', 'Pengajuan dirubah oleh admin cabang', '238', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('227', TO_TIMESTAMP('2021-05-17 11:03:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '2', 'Pengajuan dirubah oleh admin cabang', '288', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('228', TO_TIMESTAMP('2021-05-17 11:04:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '2', 'Pengajuan dirubah oleh admin cabang', '47', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('229', TO_TIMESTAMP('2021-05-17 11:04:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '4', 'Pengajuan dirubah oleh admin cabang', '41', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('271', TO_TIMESTAMP('2021-05-17 14:29:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '38', 'Pengajuan dibuat oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('272', TO_TIMESTAMP('2021-05-17 14:29:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '38', 'Pengajuan dirubah oleh admin cabang', '1', 'null');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('273', TO_TIMESTAMP('2021-05-17 14:30:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '8', 'Pengajuan dibuat oleh admin cabang', '2', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('274', TO_TIMESTAMP('2021-05-17 15:08:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '31', 'Pengajuan dibuat oleh admin cabang', '3', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('277', TO_TIMESTAMP('2021-05-17 15:12:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '8', 'Pengajuan dibuat oleh admin cabang', '4', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('278', TO_TIMESTAMP('2021-05-17 15:12:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '31', 'Pengajuan dirubah oleh admin cabang', '3', 'null');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('281', TO_TIMESTAMP('2021-05-17 16:04:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '31', 'Pengajuan dibuat oleh admin cabang', '363', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('282', TO_TIMESTAMP('2021-05-17 16:06:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '363', 'update tahun perolehan');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('283', TO_TIMESTAMP('2021-05-17 16:08:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '363', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('284', TO_TIMESTAMP('2021-05-17 16:23:45.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '363', 'update');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('285', TO_TIMESTAMP('2021-05-17 16:28:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '316', 'update HP');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('286', TO_TIMESTAMP('2021-05-17 16:29:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '316', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('288', TO_TIMESTAMP('2021-05-17 16:46:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'update ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('289', TO_TIMESTAMP('2021-05-17 16:48:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '1', '81', 'Pengajuan disetujui oleh pusat', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('290', TO_TIMESTAMP('2021-05-17 16:49:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'update ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('291', TO_TIMESTAMP('2021-05-17 16:50:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '2', '81', 'Pengajuan ditolak oleh pusat', '1', 'tolak stasiun pandu');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('292', TO_TIMESTAMP('2021-05-18 05:29:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '1045', 'Pengajuan dibuat oleh admin cabang', '364', '123');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('294', TO_TIMESTAMP('2021-05-18 07:33:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '363', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('295', TO_TIMESTAMP('2021-05-18 07:47:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '363', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('293', TO_TIMESTAMP('2021-05-18 07:31:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '363', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('296', TO_TIMESTAMP('2021-05-18 07:48:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '363', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('298', TO_TIMESTAMP('2021-05-18 08:38:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '9', 'Pengajuan dirubah oleh admin cabang', '323', 'SURAT SKPPP BELUM  DI UPLOAD');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('299', TO_TIMESTAMP('2021-05-18 08:46:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '169', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('306', TO_TIMESTAMP('2021-05-18 09:32:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '9', 'Pengajuan dirubah oleh admin cabang', '212', 'SKPPP BELUM TERBIT');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('307', TO_TIMESTAMP('2021-05-18 09:40:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '8', 'Pengajuan dirubah oleh admin cabang', '142', 'aaaa');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('308', TO_TIMESTAMP('2021-05-18 09:43:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '31', 'Pengajuan dibuat oleh admin cabang', '365', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('309', TO_TIMESTAMP('2021-05-18 09:44:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '365', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('310', TO_TIMESTAMP('2021-05-18 09:49:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '365', 'update hp');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('311', TO_TIMESTAMP('2021-05-18 09:50:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '365', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('319', TO_TIMESTAMP('2021-05-18 11:05:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'armadaschedule', 'undefined', '31', NULL, '1', 'null');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('326', TO_TIMESTAMP('2021-05-18 11:33:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'saranabantupemandu', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('327', TO_TIMESTAMP('2021-05-18 11:34:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'saranabantupemandu', '2', '81', 'Pengajuan ditolak oleh pusat', '1', 'tolak');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('328', TO_TIMESTAMP('2021-05-18 11:43:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '0', '31', 'Pengajuan dibuat oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('330', TO_TIMESTAMP('2021-05-18 11:46:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '1', '81', 'Pengajuan disetujui oleh pusat', '1', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('331', TO_TIMESTAMP('2021-05-18 11:47:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('332', TO_TIMESTAMP('2021-05-18 11:48:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '2', '81', 'Pengajuan ditolak oleh pusat', '1', 'pengajuan di tolak ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('333', TO_TIMESTAMP('2021-05-18 11:51:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('334', TO_TIMESTAMP('2021-05-18 11:57:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('335', TO_TIMESTAMP('2021-05-18 13:19:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '0', '31', 'Pengajuan dibuat oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('343', TO_TIMESTAMP('2021-05-18 14:39:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'saranabantupemandu', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('344', TO_TIMESTAMP('2021-05-18 14:39:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'saranabantupemandu', '1', '81', 'Pengajuan disetujui oleh pusat', '1', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('345', TO_TIMESTAMP('2021-05-18 14:44:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'saranabantupemandu', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('346', TO_TIMESTAMP('2021-05-18 14:44:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'saranabantupemandu', '1', '81', 'Pengajuan disetujui oleh pusat', '1', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('348', TO_TIMESTAMP('2021-05-18 14:51:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('349', TO_TIMESTAMP('2021-05-18 14:52:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '1', '81', 'Pengajuan disetujui oleh pusat', '1', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('352', TO_TIMESTAMP('2021-05-18 15:25:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '9', 'Pengajuan dirubah oleh admin cabang', '5', 'null');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('353', TO_TIMESTAMP('2021-05-18 15:31:45.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '9', 'Pengajuan dirubah oleh admin cabang', '185', 'SERTIFIKAT BELUM UPDATE');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('354', TO_TIMESTAMP('2021-05-18 15:47:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('355', TO_TIMESTAMP('2021-05-18 15:47:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '1', '81', 'Pengajuan disetujui oleh pusat', '1', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('356', TO_TIMESTAMP('2021-05-18 15:58:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'evaluasipelimpahan', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('357', TO_TIMESTAMP('2021-05-18 16:00:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'evaluasipelimpahan', '1', '81', 'Pengajuan disetujui oleh pusat', '1', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('358', TO_TIMESTAMP('2021-05-18 16:07:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '9', 'Pengajuan dibuat oleh admin cabang', '366', 'SERTIFIKATE BLUM VALID');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('359', TO_TIMESTAMP('2021-05-18 16:10:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'evaluasipelimpahan', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('360', TO_TIMESTAMP('2021-05-18 16:11:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'evaluasipelimpahan', '1', '81', 'Pengajuan disetujui oleh pusat', '1', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('361', TO_TIMESTAMP('2021-05-19 08:21:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '403', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('362', TO_TIMESTAMP('2021-05-19 09:39:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '410', 'update sertifikat uat2021');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('363', TO_TIMESTAMP('2021-05-19 09:40:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '410', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('364', TO_TIMESTAMP('2021-05-19 09:55:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '410', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('365', TO_TIMESTAMP('2021-05-19 10:14:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'aprove');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('366', TO_TIMESTAMP('2021-05-19 10:14:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '1', '81', 'Pengajuan disetujui oleh pusat', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('367', TO_TIMESTAMP('2021-05-19 10:26:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dirubah oleh admin cabang', '151', 'cc');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('368', TO_TIMESTAMP('2021-05-19 10:26:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '1', '81', 'Pengajuan disetujui oleh pusat', '151', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('369', TO_TIMESTAMP('2021-05-19 10:31:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dirubah oleh admin cabang', '99', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('17', TO_TIMESTAMP('2021-05-10 14:41:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '8', 'Pengajuan dibuat oleh admin cabang', '15', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('158', TO_TIMESTAMP('2021-05-11 16:30:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '137', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('166', TO_TIMESTAMP('2021-05-11 22:48:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '139', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('172', TO_TIMESTAMP('2021-05-11 23:07:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '140', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('173', TO_TIMESTAMP('2021-05-11 23:09:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '141', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('174', TO_TIMESTAMP('2021-05-11 23:10:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '142', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('175', TO_TIMESTAMP('2021-05-11 23:10:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '143', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('185', TO_TIMESTAMP('2021-05-11 23:41:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '20', 'Pengajuan dibuat oleh admin cabang', '143', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('234', TO_TIMESTAMP('2021-05-17 11:16:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '16', 'Pengajuan dirubah oleh admin cabang', '2', 'edit data pandu');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('235', TO_TIMESTAMP('2021-05-17 11:19:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '5', 'Pengajuan dirubah oleh admin cabang', '38', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('236', TO_TIMESTAMP('2021-05-17 11:20:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '16', 'Pengajuan dirubah oleh admin cabang', '255', 'edit data pandu');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('237', TO_TIMESTAMP('2021-05-17 11:20:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '5', 'Pengajuan dirubah oleh admin cabang', '4', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('239', TO_TIMESTAMP('2021-05-17 11:23:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '16', 'Pengajuan dirubah oleh admin cabang', '280', 'edit data pandu');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('240', TO_TIMESTAMP('2021-05-17 11:24:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '16', 'Pengajuan dirubah oleh admin cabang', '262', 'edit data pandu');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('241', TO_TIMESTAMP('2021-05-17 11:24:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '5', 'Pengajuan dirubah oleh admin cabang', '18', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('247', TO_TIMESTAMP('2021-05-17 11:57:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '5', 'Pengajuan dibuat oleh admin cabang', '404', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('250', TO_TIMESTAMP('2021-05-17 12:03:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '16', 'Pengajuan dibuat oleh admin cabang', '405', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('251', TO_TIMESTAMP('2021-05-17 12:04:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '8', 'Pengajuan dirubah oleh admin cabang', '142', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('253', TO_TIMESTAMP('2021-05-17 12:06:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '16', 'Pengajuan dibuat oleh admin cabang', '406', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('255', TO_TIMESTAMP('2021-05-17 12:07:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '8', 'Pengajuan dibuat oleh admin cabang', '408', '  ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('287', TO_TIMESTAMP('2021-05-17 16:44:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '0', '31', 'Pengajuan dibuat oleh admin cabang', '1', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('300', TO_TIMESTAMP('2021-05-18 08:49:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '363', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('320', TO_TIMESTAMP('2021-05-18 11:13:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1', 'Pengajuan dibuat oleh admin cabang', '413', 'Create master
');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('340', TO_TIMESTAMP('2021-05-18 13:34:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'evaluasipelimpahan', '1', '81', 'Pengajuan disetujui oleh pusat', '1', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('341', TO_TIMESTAMP('2021-05-18 13:35:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'evaluasipelimpahan', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('342', TO_TIMESTAMP('2021-05-18 13:36:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'evaluasipelimpahan', '2', '81', 'Pengajuan ditolak oleh pusat', '1', 'tolak pengajuan evaluasi pelimpahan');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('350', TO_TIMESTAMP('2021-05-18 15:22:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '9', 'Pengajuan dibuat oleh admin cabang', '414', 'BELUM UPDATE SERTIFIKASI PKL DAN KESEHATAN');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('351', TO_TIMESTAMP('2021-05-18 15:24:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '9', 'Pengajuan dibuat oleh admin cabang', '5', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('370', TO_TIMESTAMP('2021-05-19 10:31:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '1', '81', 'Pengajuan disetujui oleh pusat', '99', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('371', TO_TIMESTAMP('2021-05-19 10:54:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '4', 'Pengajuan dirubah oleh admin cabang', '41', 'a ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('372', TO_TIMESTAMP('2021-05-19 10:55:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '41', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('373', TO_TIMESTAMP('2021-05-19 11:20:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'usergroup', 'undefined', '81', NULL, '19', 'Testing UAT2021 Edit');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('374', TO_TIMESTAMP('2021-05-19 11:25:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dibuat oleh admin cabang', '415', 'Create Pandu UAT2021');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('375', TO_TIMESTAMP('2021-05-19 11:25:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '415', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('378', TO_TIMESTAMP('2021-05-19 11:42:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '4', 'Pengajuan dibuat oleh admin cabang', '417', 'Create Pandu Laut2021');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('379', TO_TIMESTAMP('2021-05-19 11:42:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '417', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('380', TO_TIMESTAMP('2021-05-19 11:50:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '31', 'Pengajuan dibuat oleh admin cabang', '366', 'Create Kapal UAT2021 Priok');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('381', TO_TIMESTAMP('2021-05-19 11:50:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '366', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('382', TO_TIMESTAMP('2021-05-19 11:55:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '4', 'Pengajuan dibuat oleh admin cabang', '367', 'Create Kapal UAT2021 Pontianak');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('383', TO_TIMESTAMP('2021-05-19 11:55:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '367', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('384', TO_TIMESTAMP('2021-05-19 13:05:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '415', 'edit test integrasi uat2022');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('385', TO_TIMESTAMP('2021-05-19 13:05:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '415', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('386', TO_TIMESTAMP('2021-05-19 13:07:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '4', 'Pengajuan dirubah oleh admin cabang', '416', 'edit integrasi pandu bandar pontianak 2022');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('387', TO_TIMESTAMP('2021-05-19 13:08:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '416', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('388', TO_TIMESTAMP('2021-05-19 13:12:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '4', 'Pengajuan dirubah oleh admin cabang', '417', 'Edit Pandu laut');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('389', TO_TIMESTAMP('2021-05-19 13:12:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '417', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('390', TO_TIMESTAMP('2021-05-19 13:15:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '366', 'update HP 1200 ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('391', TO_TIMESTAMP('2021-05-19 13:15:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '366', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('392', TO_TIMESTAMP('2021-05-19 13:19:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '4', 'Pengajuan dirubah oleh admin cabang', '367', 'edit HP menjadi 1200');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('393', TO_TIMESTAMP('2021-05-19 13:20:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '367', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('394', TO_TIMESTAMP('2021-05-19 13:45:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '415', 'sa');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('395', TO_TIMESTAMP('2021-05-19 13:45:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '415', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('396', TO_TIMESTAMP('2021-05-19 13:48:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '415', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('397', TO_TIMESTAMP('2021-05-19 13:50:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '415', 'create 2 sertifikat');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('398', TO_TIMESTAMP('2021-05-19 13:51:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '415', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('399', TO_TIMESTAMP('2021-05-19 13:54:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '415', 'update');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('400', TO_TIMESTAMP('2021-05-19 13:54:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '415', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('401', TO_TIMESTAMP('2021-05-19 14:02:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '410', 'ss');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('402', TO_TIMESTAMP('2021-05-19 14:02:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '410', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('403', TO_TIMESTAMP('2021-05-19 14:09:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '2', '81', 'Pengajuan ditolak oleh pusat', '323', 'file sertifikat kalah');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('404', TO_TIMESTAMP('2021-05-19 14:26:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '409', 'addd');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('407', TO_TIMESTAMP('2021-05-19 14:46:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '365', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('413', TO_TIMESTAMP('2021-05-19 14:56:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '2', 'Pengajuan dirubah oleh admin cabang', '3', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('414', TO_TIMESTAMP('2021-05-19 14:56:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '1', '81', 'Pengajuan disetujui oleh pusat', '3', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('415', TO_TIMESTAMP('2021-05-19 15:02:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '0', '4', 'Pengajuan dibuat oleh admin cabang', '2', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('416', TO_TIMESTAMP('2021-05-19 15:11:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dibuat oleh admin cabang', '152', ' 123');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('417', TO_TIMESTAMP('2021-05-19 15:12:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '1', '81', 'Pengajuan disetujui oleh pusat', '152', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('421', TO_TIMESTAMP('2021-05-19 15:43:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '409', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('422', TO_TIMESTAMP('2021-05-19 15:45:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'saranabantupemandu', '0', '31', 'Pengajuan dibuat oleh admin cabang', '2', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('423', TO_TIMESTAMP('2021-05-19 15:47:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'saranabantupemandu', '1', '81', 'Pengajuan disetujui oleh pusat', '2', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('424', TO_TIMESTAMP('2021-05-19 15:51:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1', 'Pengajuan dirubah oleh admin cabang', '415', 'Penambahan data baru pandu');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('425', TO_TIMESTAMP('2021-05-19 15:52:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '410', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('426', TO_TIMESTAMP('2021-05-19 15:52:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '412', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('427', TO_TIMESTAMP('2021-05-19 15:53:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '412', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('428', TO_TIMESTAMP('2021-05-19 15:53:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '410', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('429', TO_TIMESTAMP('2021-05-19 15:54:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '410', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('430', TO_TIMESTAMP('2021-05-19 15:54:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '412', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('431', TO_TIMESTAMP('2021-05-19 15:54:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '412', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('432', TO_TIMESTAMP('2021-05-19 15:55:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '410', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('433', TO_TIMESTAMP('2021-05-19 15:57:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '410', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('434', TO_TIMESTAMP('2021-05-19 15:57:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '412', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('435', TO_TIMESTAMP('2021-05-19 15:57:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '412', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('436', TO_TIMESTAMP('2021-05-19 15:57:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '410', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('437', TO_TIMESTAMP('2021-05-19 16:01:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'saranabantupemandu', '0', '31', 'Pengajuan dirubah oleh admin cabang', '2', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('438', TO_TIMESTAMP('2021-05-19 16:05:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '0', '6', 'Pengajuan dibuat oleh admin cabang', '2', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('439', TO_TIMESTAMP('2021-05-19 16:06:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '0', '4', 'Pengajuan dibuat oleh admin cabang', '3', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('440', TO_TIMESTAMP('2021-05-19 16:07:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '1', '81', 'Pengajuan disetujui oleh pusat', '3', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('441', TO_TIMESTAMP('2021-05-19 16:07:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '1', '81', 'Pengajuan disetujui oleh pusat', '2', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('442', TO_TIMESTAMP('2021-05-19 16:19:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '0', '31', 'Pengajuan dibuat oleh admin cabang', '4', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('3', TO_TIMESTAMP('2021-05-10 14:27:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '2', 'Pengajuan dibuat oleh admin cabang', '1', 'OK');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('4', TO_TIMESTAMP('2021-05-10 14:28:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '2', 'Pengajuan dibuat oleh admin cabang', '2', 'OK');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('5', TO_TIMESTAMP('2021-05-10 14:30:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '2', 'Pengajuan dibuat oleh admin cabang', '3', 'OK');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('7', TO_TIMESTAMP('2021-05-10 14:33:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '2', 'Pengajuan dibuat oleh admin cabang', '5', 'OK');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('8', TO_TIMESTAMP('2021-05-10 14:33:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '6', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('9', TO_TIMESTAMP('2021-05-10 14:34:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '2', 'Pengajuan dibuat oleh admin cabang', '7', 'OK');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('10', TO_TIMESTAMP('2021-05-10 14:35:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '2', 'Pengajuan dibuat oleh admin cabang', '8', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('11', TO_TIMESTAMP('2021-05-10 14:37:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '8', 'Pengajuan dibuat oleh admin cabang', '9', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('12', TO_TIMESTAMP('2021-05-10 14:38:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '8', 'Pengajuan dibuat oleh admin cabang', '10', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('14', TO_TIMESTAMP('2021-05-10 14:39:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '8', 'Pengajuan dibuat oleh admin cabang', '12', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('15', TO_TIMESTAMP('2021-05-10 14:40:45.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '8', 'Pengajuan dibuat oleh admin cabang', '13', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('18', TO_TIMESTAMP('2021-05-10 14:42:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '16', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('20', TO_TIMESTAMP('2021-05-10 14:44:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '18', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('22', TO_TIMESTAMP('2021-05-10 14:45:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '5', 'Pengajuan dibuat oleh admin cabang', '20', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('23', TO_TIMESTAMP('2021-05-10 14:46:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '21', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('25', TO_TIMESTAMP('2021-05-10 14:47:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '5', 'Pengajuan dibuat oleh admin cabang', '23', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('26', TO_TIMESTAMP('2021-05-10 14:48:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '24', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('27', TO_TIMESTAMP('2021-05-10 14:50:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1065', 'Pengajuan dibuat oleh admin cabang', '25', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('28', TO_TIMESTAMP('2021-05-10 14:51:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '26', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('30', TO_TIMESTAMP('2021-05-10 14:53:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '28', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('32', TO_TIMESTAMP('2021-05-10 14:54:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1065', 'Pengajuan dibuat oleh admin cabang', '30', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('34', TO_TIMESTAMP('2021-05-10 14:56:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1065', 'Pengajuan dibuat oleh admin cabang', '32', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('36', TO_TIMESTAMP('2021-05-10 14:57:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1065', 'Pengajuan dibuat oleh admin cabang', '34', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('37', TO_TIMESTAMP('2021-05-10 15:00:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1060', 'Pengajuan dibuat oleh admin cabang', '35', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('40', TO_TIMESTAMP('2021-05-10 15:02:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '38', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('42', TO_TIMESTAMP('2021-05-10 15:03:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1060', 'Pengajuan dibuat oleh admin cabang', '40', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('46', TO_TIMESTAMP('2021-05-10 15:05:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '44', 'create pandu');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('47', TO_TIMESTAMP('2021-05-10 15:05:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1060', 'Pengajuan dibuat oleh admin cabang', '45', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('48', TO_TIMESTAMP('2021-05-10 15:07:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '46', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('50', TO_TIMESTAMP('2021-05-10 15:08:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1060', 'Pengajuan dibuat oleh admin cabang', '48', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('53', TO_TIMESTAMP('2021-05-10 15:09:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1060', 'Pengajuan dibuat oleh admin cabang', '51', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('54', TO_TIMESTAMP('2021-05-10 15:10:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '52', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('56', TO_TIMESTAMP('2021-05-10 15:11:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '54', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('57', TO_TIMESTAMP('2021-05-10 15:12:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '55', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('58', TO_TIMESTAMP('2021-05-10 15:14:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '56', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('59', TO_TIMESTAMP('2021-05-10 15:15:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '57', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('60', TO_TIMESTAMP('2021-05-10 15:16:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '58', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('61', TO_TIMESTAMP('2021-05-10 15:20:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '59', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('62', TO_TIMESTAMP('2021-05-10 15:21:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '60', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('64', TO_TIMESTAMP('2021-05-10 15:37:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '61', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('65', TO_TIMESTAMP('2021-05-10 15:38:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '62', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('66', TO_TIMESTAMP('2021-05-10 15:39:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '63', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('67', TO_TIMESTAMP('2021-05-10 15:41:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '64', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('68', TO_TIMESTAMP('2021-05-10 15:42:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '65', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('69', TO_TIMESTAMP('2021-05-10 15:44:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '66', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('70', TO_TIMESTAMP('2021-05-10 15:48:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '67', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('71', TO_TIMESTAMP('2021-05-10 15:49:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '68', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('72', TO_TIMESTAMP('2021-05-10 15:50:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '69', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('73', TO_TIMESTAMP('2021-05-10 15:52:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '70', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('74', TO_TIMESTAMP('2021-05-10 15:53:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '71', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('75', TO_TIMESTAMP('2021-05-10 15:54:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '72', 'create pandu');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('76', TO_TIMESTAMP('2021-05-10 15:55:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '73', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('77', TO_TIMESTAMP('2021-05-10 15:57:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '74', 'create pandu');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('78', TO_TIMESTAMP('2021-05-10 15:58:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '75', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('79', TO_TIMESTAMP('2021-05-10 15:59:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '76', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('81', TO_TIMESTAMP('2021-05-10 16:02:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '78', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('82', TO_TIMESTAMP('2021-05-10 16:03:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '79', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('83', TO_TIMESTAMP('2021-05-10 16:04:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '80', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('84', TO_TIMESTAMP('2021-05-10 16:05:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '81', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('85', TO_TIMESTAMP('2021-05-10 16:06:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '82', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('87', TO_TIMESTAMP('2021-05-10 16:08:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '84', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('89', TO_TIMESTAMP('2021-05-10 16:09:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '86', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('90', TO_TIMESTAMP('2021-05-10 16:11:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dibuat oleh admin cabang', '87', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('91', TO_TIMESTAMP('2021-05-10 16:12:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dibuat oleh admin cabang', '88', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('92', TO_TIMESTAMP('2021-05-10 16:13:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '89', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('93', TO_TIMESTAMP('2021-05-10 16:14:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '90', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('95', TO_TIMESTAMP('2021-05-10 16:15:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '92', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('96', TO_TIMESTAMP('2021-05-10 16:17:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '16', 'Pengajuan dibuat oleh admin cabang', '93', 'create palembang');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('97', TO_TIMESTAMP('2021-05-10 16:21:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dibuat oleh admin cabang', '94', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('100', TO_TIMESTAMP('2021-05-10 16:25:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dibuat oleh admin cabang', '97', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('102', TO_TIMESTAMP('2021-05-10 16:26:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '31', 'Pengajuan dibuat oleh admin cabang', '99', 'Create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('103', TO_TIMESTAMP('2021-05-10 16:27:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '100', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('105', TO_TIMESTAMP('2021-05-10 16:28:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '102', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('106', TO_TIMESTAMP('2021-05-10 16:29:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '103', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('107', TO_TIMESTAMP('2021-05-10 16:30:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '104', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('108', TO_TIMESTAMP('2021-05-10 16:32:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '4', 'Pengajuan dibuat oleh admin cabang', '105', 'create');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('109', TO_TIMESTAMP('2021-05-10 16:47:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '106', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('110', TO_TIMESTAMP('2021-05-10 16:50:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '107', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('111', TO_TIMESTAMP('2021-05-10 16:52:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '108', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('112', TO_TIMESTAMP('2021-05-10 16:53:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '109', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('114', TO_TIMESTAMP('2021-05-10 17:00:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '111', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('116', TO_TIMESTAMP('2021-05-10 17:02:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '113', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('117', TO_TIMESTAMP('2021-05-10 17:31:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '114', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('118', TO_TIMESTAMP('2021-05-10 17:32:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetrumahdinas', '0', '1', 'Pengajuan dibuat oleh admin cabang', '115', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('444', TO_TIMESTAMP('2021-05-19 16:33:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('445', TO_TIMESTAMP('2021-05-19 16:56:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '4', 'Pengajuan dibuat oleh admin cabang', '418', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('461', TO_TIMESTAMP('2021-05-21 10:15:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '2', '81', 'Pengajuan ditolak oleh pusat', '406', 'data sertifikat salah');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('463', TO_TIMESTAMP('2021-05-21 15:17:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1', 'Pengajuan dibuat oleh admin cabang', '419', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('464', TO_TIMESTAMP('2021-05-21 15:18:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1', 'Pengajuan dibuat oleh admin cabang', '420', 'create dobel');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('466', TO_TIMESTAMP('2021-05-23 21:51:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '1', '81', 'Pengajuan disetujui oleh pusat', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('467', TO_TIMESTAMP('2021-05-23 21:55:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '0', '1', 'Pengajuan dirubah oleh admin cabang', '1', 'data baru');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('468', TO_TIMESTAMP('2021-05-23 21:55:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '1', '81', 'Pengajuan disetujui oleh pusat', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('470', TO_TIMESTAMP('2021-05-23 22:34:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '0', '1', 'Pengajuan dirubah oleh admin cabang', '1', 'perubahan status');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('471', TO_TIMESTAMP('2021-05-23 22:35:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '2', '81', 'Pengajuan ditolak oleh pusat', '1', 'file sertifikat salah');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('472', TO_TIMESTAMP('2021-05-24 05:59:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'saranabantupemandu', '0', '1', 'Pengajuan dibuat oleh admin cabang', '3', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('496', TO_TIMESTAMP('2021-05-28 09:17:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '1', 'Pengajuan dirubah oleh admin cabang', '3', 'null');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('459', TO_TIMESTAMP('2021-05-20 13:38:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '2', 'Pengajuan dirubah oleh admin cabang', '145', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('460', TO_TIMESTAMP('2021-05-20 13:38:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '145', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('465', TO_TIMESTAMP('2021-05-21 16:11:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1', 'Pengajuan dibuat oleh admin cabang', '421', 'create ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('469', TO_TIMESTAMP('2021-05-23 22:14:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '1', '81', 'Pengajuan disetujui oleh pusat', '2', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('476', TO_TIMESTAMP('2021-05-24 08:25:19.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '0', '1', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('480', TO_TIMESTAMP('2021-05-24 09:06:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'evaluasipelimpahan', '0', '1', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('481', TO_TIMESTAMP('2021-05-24 09:12:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'evaluasipelimpahan', '2', '81', 'Pengajuan ditolak oleh pusat', '1', 'file pendukung kurang lengkap');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('491', TO_TIMESTAMP('2021-05-24 12:27:45.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1045', 'Pengajuan dibuat oleh admin cabang', '422', '123');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('499', TO_TIMESTAMP('2021-05-31 14:31:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '335', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('500', TO_TIMESTAMP('2021-05-31 14:32:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '280', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('501', TO_TIMESTAMP('2021-05-31 14:33:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '2', '81', 'Pengajuan ditolak oleh pusat', '345', 'test log tolak test log tolak test log tolak');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('506', TO_TIMESTAMP('2021-06-07 09:29:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1', 'Pengajuan dirubah oleh admin cabang', '398', '123');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('446', TO_TIMESTAMP('2021-05-19 16:56:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '418', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('448', TO_TIMESTAMP('2021-05-20 10:21:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '1', '81', 'Pengajuan disetujui oleh pusat', '1', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('449', TO_TIMESTAMP('2021-05-20 10:24:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('450', TO_TIMESTAMP('2021-05-20 10:24:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '1', '81', 'Pengajuan disetujui oleh pusat', '1', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('457', TO_TIMESTAMP('2021-05-20 11:06:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '366', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('492', TO_TIMESTAMP('2021-05-24 13:37:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1', 'Pengajuan dirubah oleh admin cabang', '421', 'edit data');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('498', TO_TIMESTAMP('2021-05-28 17:27:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1', 'Pengajuan dirubah oleh admin cabang', '412', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('482', TO_TIMESTAMP('2021-05-24 09:18:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'evaluasipelimpahan', '0', '1', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('483', TO_TIMESTAMP('2021-05-24 09:18:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'evaluasipelimpahan', '1', '81', 'Pengajuan disetujui oleh pusat', '1', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('508', TO_TIMESTAMP('2021-06-07 11:57:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1', 'Pengajuan dirubah oleh admin cabang', '369', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('509', TO_TIMESTAMP('2021-06-07 11:58:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '369', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('510', TO_TIMESTAMP('2021-06-07 11:59:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1', 'Pengajuan dirubah oleh admin cabang', '410', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('511', TO_TIMESTAMP('2021-06-07 12:00:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '410', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('493', TO_TIMESTAMP('2021-05-24 19:21:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '28', 'Pengajuan dirubah oleh admin cabang', '419', '1');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('494', TO_TIMESTAMP('2021-05-24 19:24:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '28', 'Pengajuan dirubah oleh admin cabang', '419', '1');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('512', TO_TIMESTAMP('2021-06-07 12:03:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '1', 'Pengajuan dibuat oleh admin cabang', '7', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('513', TO_TIMESTAMP('2021-06-07 12:03:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '1', 'Pengajuan dirubah oleh admin cabang', '6', 'null');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('517', TO_TIMESTAMP('2021-06-07 17:29:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '0', '31', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('443', TO_TIMESTAMP('2021-05-19 16:25:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '4', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('447', TO_TIMESTAMP('2021-05-20 07:07:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetstasiunequipment', '0', '1045', 'Pengajuan dirubah oleh admin cabang', '1', '234');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('462', TO_TIMESTAMP('2021-05-21 15:11:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '290', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('473', TO_TIMESTAMP('2021-05-24 06:29:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'saranabantupemandu', '1', '81', 'Pengajuan disetujui oleh pusat', '3', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('474', TO_TIMESTAMP('2021-05-24 06:32:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'saranabantupemandu', '2', '81', 'Pengajuan ditolak oleh pusat', '2', 'sarana bantu pemanduan harus dilengkapi dengan keterangan yang jelas');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('475', TO_TIMESTAMP('2021-05-24 07:03:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'pemeriksaankapal', '2', '81', 'Pengajuan ditolak oleh pusat', '4', 'file pendukung kurang lengkap');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('477', TO_TIMESTAMP('2021-05-24 08:30:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '2', '81', 'Pengajuan ditolak oleh pusat', '1', 'file pendukung belum di upload');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('478', TO_TIMESTAMP('2021-05-24 08:31:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '0', '1', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('479', TO_TIMESTAMP('2021-05-24 08:32:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '1', '81', 'Pengajuan disetujui oleh pusat', '1', NULL);
INSERT INTO "SIMPANDA"."activity_log" VALUES ('484', TO_TIMESTAMP('2021-05-24 11:36:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', 'undefined', '1056', NULL, '365', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('485', TO_TIMESTAMP('2021-05-24 11:37:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', 'undefined', '1056', NULL, '365', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('486', TO_TIMESTAMP('2021-05-24 11:38:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', 'undefined', '1056', NULL, '365', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('487', TO_TIMESTAMP('2021-05-24 11:41:45.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', 'undefined', '1056', NULL, '371', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('488', TO_TIMESTAMP('2021-05-24 11:45:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', 'undefined', '1056', NULL, '371', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('489', TO_TIMESTAMP('2021-05-24 11:47:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', 'undefined', '1056', NULL, '371', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('490', TO_TIMESTAMP('2021-05-24 12:10:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1056', 'Pengajuan dibuat oleh admin cabang', '422', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('495', TO_TIMESTAMP('2021-05-24 19:34:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '28', 'Pengajuan dirubah oleh admin cabang', '419', '1');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('497', TO_TIMESTAMP('2021-05-28 10:00:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'panduschedule', '0', '1', 'Pengajuan dibuat oleh admin cabang', '6', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('502', TO_TIMESTAMP('2021-06-02 13:58:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'usergroup', 'undefined', '81', NULL, '21', '-');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('505', TO_TIMESTAMP('2021-06-02 17:19:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'usergroup', 'undefined', '81', NULL, '1', '-');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('507', TO_TIMESTAMP('2021-06-07 11:54:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1', 'Pengajuan dirubah oleh admin cabang', '389', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('514', TO_TIMESTAMP('2021-06-07 15:30:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '1077', 'Pengajuan dibuat oleh admin cabang', '422', 'test01');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('515', TO_TIMESTAMP('2021-06-07 15:51:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '0', '1077', 'Pengajuan dirubah oleh admin cabang', '1', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('516', TO_TIMESTAMP('2021-06-07 17:26:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'investigasiinsiden', '0', '1', 'Pengajuan dibuat oleh admin cabang', '2', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('451', TO_TIMESTAMP('2021-05-20 11:01:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '415', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('452', TO_TIMESTAMP('2021-05-20 11:02:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '415', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('453', TO_TIMESTAMP('2021-05-20 11:03:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '0', '31', 'Pengajuan dirubah oleh admin cabang', '415', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('454', TO_TIMESTAMP('2021-05-20 11:03:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'personil', '1', '81', 'Pengajuan disetujui oleh pusat', '415', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('455', TO_TIMESTAMP('2021-05-20 11:05:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '0', '31', 'Pengajuan dirubah oleh admin cabang', '366', ' ');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('456', TO_TIMESTAMP('2021-05-20 11:05:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '366', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('458', TO_TIMESTAMP('2021-05-20 11:07:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'assetkapal', '1', '81', 'Pengajuan disetujui oleh pusat', '366', 'undefined');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('503', TO_TIMESTAMP('2021-06-02 14:45:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'usergroup', 'undefined', '81', NULL, '0', '- b');
INSERT INTO "SIMPANDA"."activity_log" VALUES ('504', TO_TIMESTAMP('2021-06-02 14:46:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'usergroup', 'undefined', '81', NULL, '0', '- b');

-- ----------------------------
-- Table structure for approval_status
-- ----------------------------
DROP TABLE "SIMPANDA"."approval_status";
CREATE TABLE "SIMPANDA"."approval_status" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of approval_status
-- ----------------------------
INSERT INTO "SIMPANDA"."approval_status" VALUES ('0', 'Requested');
INSERT INTO "SIMPANDA"."approval_status" VALUES ('1', 'Approved');
INSERT INTO "SIMPANDA"."approval_status" VALUES ('2', 'Rejected');

-- ----------------------------
-- Table structure for armada_jaga
-- ----------------------------
DROP TABLE "SIMPANDA"."armada_jaga";
CREATE TABLE "SIMPANDA"."armada_jaga" (
  "id" NUMBER(10) NOT NULL ,
  "from" DATE ,
  "to" DATE ,
  "armada_schedule_id" NUMBER(10) ,
  "available" NUMBER(10) ,
  "keterangan" VARCHAR2(255 BYTE) ,
  "asset_kapal_id" NUMBER 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of armada_jaga
-- ----------------------------
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('44', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '90');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('58', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '86');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('62', TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '1', NULL, '319');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('63', TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '1', NULL, '323');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('64', TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '1', NULL, '340');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('65', TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '1', NULL, '329');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('66', TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '1', NULL, '73');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('67', TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '1', NULL, '77');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('68', TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '1', NULL, '79');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('69', TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '1', NULL, '72');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('70', TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '1', NULL, '74');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('71', TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '1', NULL, '75');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('72', TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '1', NULL, '76');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('73', TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '1', NULL, '78');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('74', TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '1', NULL, '71');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('83', TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '1', NULL, '74');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('84', TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '1', NULL, '75');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('85', TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '1', NULL, '76');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('86', TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '1', NULL, '78');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '360');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('2', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '112');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('3', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '113');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('4', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '316');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('5', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '331');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('6', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '327');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('7', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '333');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('8', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '297');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('9', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '105');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('10', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '291');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('11', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '99');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('12', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '100');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('13', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '292');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('14', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '287');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('15', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '95');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('16', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '96');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('17', TO_DATE('2021-05-18 11:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 12:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '0', 'kerusakan mesin', '98');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('18', TO_DATE('2021-05-18 15:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 16:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '0', 'rusak', '98');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('19', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '290');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('20', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '101');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('21', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '293');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('22', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '102');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('23', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '103');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('24', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '104');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('25', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 23:59:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '0', 'rusak mesin', '365');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('26', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '339');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('27', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '364');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('28', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '353');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('29', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '350');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('30', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '356');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('31', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '275');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('32', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '117');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('33', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '116');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('34', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '106');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('35', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '111');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('36', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '274');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('37', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '338');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('38', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '352');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('39', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', 'null', '118');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('40', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '0', '0', '341');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('41', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '0', '0', '11');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('42', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '0', '0', '145');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('43', TO_DATE('2021-05-24 12:12:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 13:13:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '0', 'mesin mati', '267');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('45', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '342');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('46', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '343');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('47', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '345');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('48', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '346');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('49', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '334');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('50', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '344');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('51', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '81');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('52', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '85');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('53', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '89');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('54', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '80');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('55', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '82');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('56', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '83');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('57', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '84');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('59', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '87');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('60', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '88');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('61', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', NULL, '303');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('75', TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '1', NULL, '319');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('76', TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '1', NULL, '323');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('77', TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '1', NULL, '340');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('78', TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '1', NULL, '329');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('79', TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '1', NULL, '73');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('80', TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '1', NULL, '77');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('81', TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '1', NULL, '79');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('82', TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '1', NULL, '72');
INSERT INTO "SIMPANDA"."armada_jaga" VALUES ('87', TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '1', NULL, '71');

-- ----------------------------
-- Table structure for armada_schedule
-- ----------------------------
DROP TABLE "SIMPANDA"."armada_schedule";
CREATE TABLE "SIMPANDA"."armada_schedule" (
  "id" NUMBER(10) NOT NULL ,
  "date" DATE ,
  "cabang_id" VARCHAR2(120 BYTE) ,
  "tipe_asset_id" VARCHAR2(120 BYTE) ,
  "asset_kapal_id" NUMBER(10) ,
  "status" VARCHAR2(120 BYTE) ,
  "jam_pengoperasian" NUMBER(10) ,
  "reliability" NUMBER(10) ,
  "keterangan" VARCHAR2(120 BYTE) ,
  "armada_jaga_id" NUMBER(10) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of armada_schedule
-- ----------------------------
INSERT INTO "SIMPANDA"."armada_schedule" VALUES ('3', TO_DATE('2021-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "SIMPANDA"."armada_schedule" VALUES ('5', TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '3', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "SIMPANDA"."armada_schedule" VALUES ('1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "SIMPANDA"."armada_schedule" VALUES ('2', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '3', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "SIMPANDA"."armada_schedule" VALUES ('4', TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '3', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for asset_kapal
-- ----------------------------
DROP TABLE "SIMPANDA"."asset_kapal";
CREATE TABLE "SIMPANDA"."asset_kapal" (
  "id" NUMBER(10) NOT NULL ,
  "cabang_id" NUMBER(10) ,
  "simop_kd_fas" VARCHAR2(120 BYTE) ,
  "kepemilikan_kapal_id" NUMBER(10) ,
  "simop_status_milik" VARCHAR2(120 BYTE) ,
  "simop_kd_agen" VARCHAR2(120 BYTE) ,
  "tipe_asset_id" NUMBER(10) ,
  "nama_asset" VARCHAR2(120 BYTE) ,
  "horse_power" VARCHAR2(120 BYTE) ,
  "tahun_perolehan" VARCHAR2(120 BYTE) ,
  "nilai_perolehan" VARCHAR2(120 BYTE) ,
  "enable" NUMBER(10) DEFAULT 1   ,
  "asset_number" VARCHAR2(20 BYTE) ,
  "simop_kd_puspel_jai" VARCHAR2(120 BYTE) ,
  "simop_new_puspel_jai" VARCHAR2(120 BYTE) ,
  "simop_new_asset_jai" VARCHAR2(120 BYTE) ,
  "approval_status_id" NUMBER(10) DEFAULT 0   ,
  "loa" VARCHAR2(120 BYTE) ,
  "tahun_pembuatan" VARCHAR2(120 BYTE) ,
  "breadth" VARCHAR2(120 BYTE) ,
  "kontruksi" VARCHAR2(120 BYTE) ,
  "depth" VARCHAR2(120 BYTE) ,
  "negara_pembuat" VARCHAR2(120 BYTE) ,
  "draft_max" VARCHAR2(120 BYTE) ,
  "daya" VARCHAR2(10 BYTE) ,
  "putaran" VARCHAR2(10 BYTE) ,
  "merk" VARCHAR2(120 BYTE) ,
  "tipe" VARCHAR2(120 BYTE) ,
  "daya_motor" VARCHAR2(120 BYTE) ,
  "daya_generator" VARCHAR2(10 BYTE) ,
  "putaran_spesifikasi" VARCHAR2(10 BYTE) ,
  "merk_spesifikasi" VARCHAR2(120 BYTE) ,
  "tipe_spesifikasi" VARCHAR2(120 BYTE) ,
  "klas" VARCHAR2(30 BYTE) DEFAULT 1   ,
  "notasi_permesinan" VARCHAR2(120 BYTE) ,
  "no_registrasi" VARCHAR2(120 BYTE) ,
  "notasi_perlengkapan" VARCHAR2(120 BYTE) ,
  "port_of_registration" VARCHAR2(120 BYTE) ,
  "notasi_perairan" VARCHAR2(120 BYTE) ,
  "notasi_lambung" VARCHAR2(120 BYTE) ,
  "gross_tonnage" VARCHAR2(10 BYTE) ,
  "bolard_pull" VARCHAR2(120 BYTE) ,
  "kecepatan" VARCHAR2(10 BYTE) ,
  "ship_particular" VARCHAR2(99 BYTE) ,
  "sertifikat_id" NUMBER(10) ,
  "upd_date" DATE ,
  "kd_fas" VARCHAR2(10 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of asset_kapal
-- ----------------------------
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('97', '1', 'KT0207', NULL, '1', NULL, '1', 'BIMA X', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0207');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('98', '1', 'KT0208', NULL, '1', NULL, '1', 'BIMA XI', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0208');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('99', '1', 'KT0209', NULL, '1', NULL, '1', 'BIMA 034', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0209');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('100', '1', 'KT0210', NULL, '1', NULL, '1', 'BIMA 035', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0210');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('101', '1', 'KT0211', NULL, '1', NULL, '1', 'JAYAKARTA 1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0211');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('102', '1', 'KT0212', NULL, '1', NULL, '1', 'JAYAKARTA II', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0212');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('103', '1', 'KT0213', NULL, '1', NULL, '1', 'JAYAKARTA III', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0213');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('104', '1', 'KT0214', NULL, '1', NULL, '1', 'JAYAKARTA IV', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0214');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('105', '1', 'KT0215', NULL, '1', NULL, '1', 'BESTWIN 88 ', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0215');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('106', '1', 'KT0216', NULL, '1', NULL, '1', 'SDS 36', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0216');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('107', '1', 'KT0223', NULL, '1', NULL, '1', 'KATELIA III', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0223');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('108', '1', 'KT0224', NULL, '1', NULL, '1', 'KATELIA IV', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0224');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('109', '1', 'KT0233', NULL, '1', NULL, '1', 'KATELIA V', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0233');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('110', '1', 'KT0234', NULL, '1', NULL, '1', 'TAMARIN III', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0234');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('111', '1', 'KT0235', NULL, '1', NULL, '1', 'TAMARIN V', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0235');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('112', '1', 'KT0236', NULL, '1', NULL, '1', 'ARJUNA I', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0236');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('114', '1', 'KT0238', NULL, '1', NULL, '1', 'SR. STAR', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0238');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('115', '1', 'KT0239', NULL, '1', NULL, '1', 'ANSANUS XII', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0239');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('116', '1', 'KT0240', NULL, '0', NULL, '1', 'MARTHA INDAH', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0240');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('117', '1', 'KT0241', NULL, '0', NULL, '1', 'MAIDEN EXPRESS', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0241');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('118', '1', 'KT0242', NULL, '1', NULL, '1', 'TB. MEDELIN HOPE', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0242');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('119', '12', 'KT0853', NULL, '1', NULL, '1', 'KT. KATELIA III', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0853');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('120', '17', 'KK0503', NULL, '1', NULL, '3', 'KM.MK.110', NULL, NULL, NULL, '1', NULL, '3120', '1030', '301009', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0503');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('121', '12', 'KT0861', NULL, '1', NULL, '1', 'MEDELIN CITRA', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0861');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('122', '15', 'KT0409', NULL, '1', NULL, '1', 'TG. BUYUT III 212 .TB', NULL, NULL, NULL, '1', NULL, '1130', '1010', '101035', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0409');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('123', '12', 'KT0864', NULL, '1', NULL, '1', 'KT TIRTAYASA. II.212', NULL, NULL, NULL, '0', NULL, '1120', '1010', '101039', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0864');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('124', '3', 'KT0308', NULL, '1', NULL, '1', 'KT.SELAT LEGUNDI-III-212', NULL, NULL, NULL, '1', NULL, '1130', '1010', '101024', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0308');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('125', '5', 'KT0504', NULL, '1', NULL, '1', 'TAMARIN IV', NULL, NULL, NULL, '0', NULL, '1120', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0504');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('127', '3', 'KP0305', NULL, '1', NULL, '2', 'MPAC-002', NULL, NULL, NULL, '1', NULL, '2170', '1020', '201012', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0305');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('128', '11', 'KT1110', NULL, '1', NULL, '1', 'TB.MBS - 25', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1110');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('129', '11', 'KT1112', NULL, '1', NULL, '1', 'KT.PUTRA BESS 08', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1112');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('130', '11', 'KT1113', NULL, '1', NULL, '1', 'KT. TIRTAYASA 1-212', NULL, NULL, NULL, '0', NULL, '1110', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1113');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('132', '17', 'KTTB', NULL, '1', NULL, '1', 'KT. TELUK BAYUR I', NULL, NULL, NULL, '1', NULL, '1130', '1010', '101031', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTTB');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('133', '7', 'KT0716', NULL, '1', NULL, '1', 'OGAN', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0716');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('134', '7', 'KT0717', NULL, '1', NULL, '1', 'UDAWA 2', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0717');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('135', '7', 'KT0718', NULL, '1', NULL, '1', 'MUNDU 1', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0718');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('137', '7', 'KT0723', NULL, '1', NULL, '1', 'MARTHA LINE', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0723');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('138', '17', 'KTMS', NULL, '1', NULL, '1', 'TB.MEDELIN SKY', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTMS');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('139', '15', 'KT0408', NULL, '1', NULL, '1', 'TG. BUYUT II 212. TB', NULL, NULL, NULL, '1', NULL, '1120', '1010', '101034', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0408');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('141', '11', 'KT1107', NULL, '1', NULL, '1', 'TB. TRANS POWER 205', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1107');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('143', '3', 'KT0310', NULL, '1', NULL, '1', 'KT PULAU SEBESI I - 212', NULL, NULL, NULL, '0', NULL, '1140', '1010', '101025', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0310');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('144', '17', 'KTS21', NULL, NULL, NULL, '1', 'KT. SEMAR DUA PULUH', NULL, NULL, NULL, '1', NULL, '4120', '1010', '102017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '829', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTS21');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('146', '4', 'KP04OF', NULL, '1', NULL, '2', 'PANDU OFFICE', NULL, NULL, NULL, '0', NULL, '2120', '1050', '000000', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP04OF');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('147', '6', 'KP06OF', NULL, '1', NULL, '2', 'PANDU OFFICE', NULL, NULL, NULL, '0', NULL, '2120', '1050', '000000', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP06OF');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('148', '7', 'KT0719', NULL, '1', NULL, '1', 'MEDELIN 2 ', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0719');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('149', '7', 'KT0720', NULL, '1', NULL, '1', 'MEDELIN CITRA', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0720');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('151', '12', 'KT0863', NULL, '1', NULL, '1', 'KT TIRTAYASA. III  216', NULL, NULL, NULL, '1', NULL, '1130', '1010', '101040', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0863');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('152', '12', 'KT0865', NULL, '1', NULL, '1', 'KT.TIRTAYASA V-208', NULL, NULL, NULL, '1', NULL, '1150', '1010', '101042', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0865');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('153', '12', 'KT0867', NULL, '1', NULL, '1', 'KT TIRTAYASA. IV', NULL, NULL, NULL, '1', NULL, '1140', '1010', '101041', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0867');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('155', '3', 'KP0306', NULL, '1', NULL, '2', 'MPAC-003', NULL, NULL, NULL, '1', NULL, '2170', '1020', '201013', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0306');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('156', '7', 'KP0702', NULL, '1', NULL, '2', 'KP. LINGGARJATI - 01', NULL, NULL, NULL, '1', NULL, '2120', '1020', '201039', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0702');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('157', '15', 'KT0410', NULL, '2', NULL, '1', 'TB.TERATAI', NULL, NULL, NULL, '1', NULL, '4110', '1010', '102008', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0410');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('158', '7', 'KT0729', NULL, '1', NULL, '1', 'KT. MAIDEN CANTIK', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0729');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('160', '11', 'KT1101', NULL, '1', NULL, '1', 'Kpl Tunda Slat Bunga Laut', NULL, NULL, NULL, '0', NULL, '2110', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1101');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('161', '17', 'KPMPF1', NULL, '1', NULL, '2', 'KM. MPF-I', NULL, NULL, NULL, '0', NULL, '2130', '1020', '201017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KPMPF1');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('162', '12', 'KT0862', NULL, '1', NULL, '1', 'KT.TIRTAYASA 1.212', NULL, NULL, NULL, '1', NULL, '1110', '1010', '101038', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0862');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('163', '3', 'KP0301', NULL, '1', NULL, '2', 'MPAC-001', NULL, NULL, NULL, '1', NULL, '2170', '1020', '201011', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0301');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('165', '11', 'KT1104', NULL, '1', NULL, '1', 'TB.BINA MARINE 19', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1104');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('166', '11', 'KT1111', NULL, '1', NULL, '1', 'MBS 25.TB', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1111');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('167', '3', 'KT0309', NULL, '1', NULL, '1', 'KT. PULAU SEBESI II-216', NULL, NULL, NULL, '1', NULL, '1140', '1010', '101026', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0309');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('168', '11', 'KT1115', NULL, '1', NULL, '1', 'MEDELIN BEST', NULL, NULL, NULL, '0', NULL, '4120', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1115');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('170', '3', 'KP03OF', NULL, '1', NULL, '2', 'PANDU OFFICE', NULL, NULL, NULL, '0', NULL, '2170', '1050', '000000', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP03OF');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('171', '7', 'KP07OF', NULL, '1', NULL, '2', 'PANDU OFFICE', NULL, NULL, NULL, '0', NULL, '2120', '1050', '000000', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP07OF');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('172', '10', 'KP10OF', NULL, '1', NULL, '2', 'MPC 05', NULL, NULL, NULL, '1', NULL, '2120', '1020', '201003', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP10OF');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('173', '11', 'KP11OF', NULL, '1', NULL, '2', 'PANDU OFFICE', NULL, NULL, NULL, '0', NULL, '2130', '1050', '000000', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP11OF');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('174', '12', 'KP12OF', NULL, '1', NULL, '2', 'PANDU OFFICE', NULL, NULL, NULL, '1', NULL, '2130', '1050', '000000', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP12OF');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('175', '15', 'KP15OF', NULL, '1', NULL, '2', 'PANDU OFFICE', NULL, NULL, NULL, '0', NULL, '2170', '1050', '000000', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP15OF');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('176', '17', 'KP17OF', NULL, '1', NULL, '2', 'PANDU OFFICE', NULL, NULL, NULL, '0', NULL, '2130', '1050', '000000', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP17OF');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('177', '7', 'KT0725', NULL, '1', NULL, '1', 'KT. MAIDEN WAY', NULL, NULL, NULL, '0', NULL, '4130', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0725');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('178', '7', 'KT0726', NULL, '1', NULL, '1', 'KT. WARUNA JAYA', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0726');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('179', '7', 'KT0727', NULL, '1', NULL, '1', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0727');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('180', '7', 'KT0728', NULL, '1', NULL, '1', 'KT. WARUNA MULIA', NULL, NULL, NULL, '0', NULL, '4140', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0728');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('181', '15', 'KT0411', NULL, '2', NULL, '1', 'GOLDEN TULIP', NULL, NULL, NULL, '1', NULL, '4120', '1010', '102007', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0411');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('183', '15', 'KP0408', NULL, '1', NULL, '2', 'MPAW 01', NULL, NULL, NULL, '1', NULL, '2170', '1020', '201019', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0408');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('184', '15', 'KP0409', NULL, '1', NULL, '2', 'MPAW 02', NULL, NULL, NULL, '1', NULL, '2170', '1020', '201020', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0409');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('185', '6', 'KP0602', '3', '1', NULL, '2', 'MP-02', '170', '2012', '120000000', '1', NULL, '2120', '1020', '201035', '0', '11,3', '2012', '3,5', 'Baja', '1,6', 'Indonesia', '1,6', '85', '2.000', 'YANMAR', '2TAK', '170', '65', '5.000', 'YANMAR', '2 TAK', 'BKI', '12345', '12345', '12345', 'jakarta', '12345', '12345', '17', '2', '6', 'personil/1621326705272.pdf', NULL, NULL, 'KP0602');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('186', '4', 'KP0401', NULL, '1', NULL, '2', 'MP 01', NULL, NULL, NULL, '1', NULL, '2120', '1030', '301010', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0401');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('188', '12', 'KP1201', NULL, '1', NULL, '2', 'MPA.X-01', NULL, NULL, NULL, '0', NULL, '2130', '1020', '201030', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP1201');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('189', '12', 'KP1202', NULL, NULL, NULL, '2', 'MPA.X-02', NULL, NULL, NULL, '0', NULL, '2130', '1020', '201031', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP1202');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('190', '11', 'KT1117', NULL, '1', NULL, '1', 'BIMA X', NULL, NULL, NULL, '0', NULL, '5120', '1010', '101030', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1117');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('191', '17', 'KP001', NULL, '1', NULL, '2', 'MPF-01', NULL, NULL, NULL, '1', NULL, '2110', '1020', '201017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '225', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP001');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('192', '3', 'KTSM18', NULL, NULL, NULL, '1', 'KT. SEMAR DELAPANBELAS', NULL, NULL, NULL, '0', NULL, '4120', '1010', '102004', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2060', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTSM18');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('193', '17', 'KK17OF', NULL, NULL, NULL, '3', 'KEPIL OFFICE', NULL, NULL, NULL, '1', NULL, NULL, '1060', '000000', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK17OF');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('194', '5', 'KT0507', NULL, '2', NULL, '1', 'TB.SEMAR ENAM BELAS', NULL, NULL, NULL, '0', NULL, '4130', '1010', '102009', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1638', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0507');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('195', '7', 'KT0731', NULL, '1', NULL, '1', 'KT. TAMARIN IV', NULL, NULL, NULL, '0', NULL, '4150', '1010', '102001', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1080', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0731');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('196', '15', 'KT0415', NULL, '2', NULL, '1', 'TB. MAS MUSI', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102014', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0415');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('197', '7', 'KT0732', NULL, '2', NULL, '1', 'KT. PSL CARROL', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102016', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0732');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('198', '15', 'KP0410', NULL, '1', NULL, '2', 'MP AX-02', NULL, NULL, NULL, '0', NULL, NULL, '1020', '201031', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '255', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0410');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('199', '12', 'KT0869', NULL, '2', NULL, '1', 'BAYU RAJAWALI', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102020', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0869');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('200', '12', 'KT872', NULL, '1', NULL, '1', 'BUNGA RAFLESIA 1-206', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101044', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT872');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('202', '15', 'KT0413', NULL, '1', NULL, '1', 'KT. SELAT LEGUNDI III.212', NULL, NULL, NULL, '0', NULL, '5110', '1010', '101024', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0413');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('203', '3', 'KTTMR3', NULL, '2', NULL, '1', 'KT. TAMARIN  III ', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102013', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTTMR3');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('204', '3', 'KTBW88', NULL, '1', NULL, '1', 'KT. BESTWIN 88', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101016', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTBW88');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('205', '17', 'KTJKIV', NULL, '1', NULL, '1', 'JAYAKARTA - IV', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101013', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTJKIV');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('206', '15', 'KT0448', NULL, '1', NULL, '1', 'TB. SDS 48', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102026', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0448');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('207', '12', 'KT873', NULL, '1', NULL, '1', 'JAYAKARTA 2', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT873');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('208', '5', 'KT0510', NULL, '1', NULL, '1', 'TB KIMBERLY', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0510');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('209', '5', 'KP0505', NULL, '1', NULL, '2', 'MPA.ENGGANG-01', NULL, NULL, NULL, '1', NULL, NULL, '1020', '202004', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '652', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0505');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('210', '3', 'KT03P', NULL, '1', NULL, '1', 'KT. BATAVIA 2-216', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101007', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT03P');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('211', '5', 'KT0513', NULL, '2', NULL, '1', 'ANUGERAH BERSAMA 17', NULL, NULL, NULL, '1', NULL, '1110', '1010', '102046', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0513');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('212', '7', 'KT0701', NULL, NULL, NULL, '1', 'TB IPCM ABIMANYU IV', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101050', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0701');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('213', '15', 'KT15', NULL, NULL, NULL, '1', 'TB. SMS VANDA', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102030', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT15');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('214', '3', 'KP0307', NULL, '1', NULL, '2', 'MPAX-01', NULL, NULL, NULL, '1', NULL, NULL, '1020', '201030', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0307');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('215', '17', 'KTJK4', NULL, '1', NULL, '1', 'KT. JAYAKARTA 4', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101013', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTJK4');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('216', '7', 'KT0735', NULL, '1', NULL, '1', 'KT. BIMA III', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0735');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('217', '5', 'KP0502', NULL, '1', NULL, '2', 'MPA.ENGGANG-01', NULL, NULL, NULL, '0', NULL, NULL, '1010', '202004', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '652', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0502');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('218', '17', 'KP0502', NULL, '1', NULL, '2', 'KM.MP.I-015', NULL, NULL, NULL, '1', NULL, '2130', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '466', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0502');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('219', '5', 'KP0503', NULL, '1', NULL, '2', 'Multi Guna', NULL, NULL, NULL, '1', NULL, '2140', '1020', '201026', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0503');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('220', '17', 'KP1703', NULL, '1', NULL, '2', 'MPA-03', NULL, NULL, NULL, '1', NULL, '2130', '1020', '201018', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP1703');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('221', '7', 'KT07', NULL, '1', NULL, '1', 'KT. SELAT LEGUNDI II-206', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101023', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT07');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('222', '17', 'KT071', NULL, '2', NULL, '1', 'KT. SEMAR TUJUH', NULL, NULL, NULL, '0', NULL, '4130', '1010', '102010', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT071');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('223', '11', 'KT1118', NULL, '2', NULL, '1', 'SEMAR ENAM BELAS', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102009', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1118');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('224', '12', 'KT0870', NULL, '2', NULL, '1', 'TIRTA ELANG', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102019', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0870');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('225', '12', 'KT871', NULL, '1', NULL, '1', 'JAYAKARTA 4', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101013', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT871');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('226', '7', 'KT0733', NULL, '1', NULL, '1', 'KT. BIMA II', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101001', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0733');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('227', '5', 'KT0506', NULL, NULL, NULL, '1', 'KT.TAMARIN V', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102002', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0506');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('228', '11', 'KT1120', NULL, '1', NULL, '1', 'KT.TELUK BAYUR II', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101032', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1120');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('229', '5', 'KT0512', NULL, '2', NULL, '1', 'ANUGERAH BERSAMA 3', NULL, NULL, NULL, '1', NULL, '1110', '1110', '102045', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0512');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('231', '11', 'KT1119', NULL, '2', NULL, '1', 'BEITRANS 02', NULL, NULL, NULL, '1', NULL, NULL, '1010', '102025', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1119');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('232', '17', 'KPJKIV', NULL, '1', NULL, '2', 'JAYAKARTA - IV', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KPJKIV');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('233', '7', 'KT0736', NULL, '1', NULL, '1', 'TELUK JAKARTA 212', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101045', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0736');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('234', '4', 'KT0402', NULL, NULL, NULL, '1', 'TB. BEITRANS 05', NULL, NULL, NULL, '1', NULL, NULL, '1010', '102040', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0402');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('236', '12', 'KT12', NULL, '1', NULL, '1', 'KT. TIRTAYASA VI-208', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101043', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT12');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('237', '15', 'KP0102', NULL, '1', NULL, '2', 'MPAX-02', NULL, NULL, NULL, '1', NULL, NULL, '1020', '201031', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0102');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('238', '17', 'KT17', NULL, NULL, NULL, '1', 'KT. BIMA III', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101002', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT17');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('239', '17', 'KT02', NULL, '1', NULL, '1', 'KT. TELUK BAYUR II', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101032', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT02');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('241', '3', 'KTS309', NULL, '1', NULL, '1', 'TB. AQUA HARBOUR', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTS309');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('242', '5', 'KTSNCI', NULL, '1', NULL, '1', 'SANCAI HARBOUR', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTSNCI');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('243', '7', 'KT0738', NULL, '1', NULL, '1', 'KT. SDS 36', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0738');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('244', '15', 'KT0604', NULL, '1', NULL, '1', 'TB GHANNI NAILA 2400-2', NULL, NULL, NULL, '1', NULL, '1010', '1010', '102042', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0604');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('246', '5', 'KT05', NULL, '1', NULL, '1', 'KT. TIRTAYASA VI-208', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101043', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT05');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('247', '3', 'KTBTVI', NULL, '1', NULL, '1', 'KT. Batavia I - 216', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101006', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTBTVI');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('248', '15', 'KT0417', NULL, '1', NULL, '1', 'KT. TELUK JAKARTA 212', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101045', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0417');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('250', '12', 'KT12b', NULL, NULL, NULL, '1', 'KT. TELUK JAKARTA 212', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101045', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT12b');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('251', '5', 'KT0509', NULL, '1', NULL, '1', 'KT.SDS 36', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0509');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('252', '12', 'KT0873', NULL, '1', NULL, '1', 'KT JAYAKARTA 2', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101011', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0873');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('253', '3', 'KTS305', NULL, '1', NULL, '1', 'TB. SAKURA HARBOUR', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTS305');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('254', '5', 'KK05DR', NULL, '1', NULL, '3', 'KEPIL DARAT', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK05DR');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('256', '3', 'KT0311', NULL, NULL, NULL, '1', 'KT. BIMA II', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101001', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0311');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('257', '17', 'KTTJ', NULL, '1', NULL, '1', 'KT. TELUK JAKARTA 208', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101046', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '850', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTTJ');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('258', '7', 'KT0737', NULL, '1', NULL, '1', 'KT. SELAT LEGUNDI II 206', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '940', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0737');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('259', '3', 'KTS306', NULL, '1', NULL, '1', 'TB. MAIDEN PORT', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTS306');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('260', '3', 'KTS307', NULL, '1', NULL, '1', 'TB. CAKRA 12', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTS307');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('262', '3', 'KT03', NULL, '1', NULL, '1', 'KT. JAYAKARTA 4', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101013', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT03');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('263', '1', 'KT0249', NULL, '1', NULL, '1', 'KT. TELUK BAYUR II', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101032', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0249');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('264', '1', 'KT0250', NULL, NULL, NULL, '1', 'TB. SEA POINTER', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102023', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0250');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('265', '1', 'KT0266', NULL, NULL, NULL, '1', 'TB IPCM ABIMANYU II', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101048', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0266');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('267', '1', 'KP0213', NULL, '1', NULL, '2', 'MPA.C-03', NULL, NULL, NULL, '1', NULL, '2210', '1020', '201041', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0213');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('268', '1', 'KP0214', NULL, NULL, NULL, '2', 'KM.BANDAR JAYA', NULL, NULL, NULL, '0', NULL, '2210', '1020', '301011', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0214');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('269', '1', 'KT0251', NULL, NULL, NULL, '1', 'TB. MEDELIN BEST', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102022', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0251');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('270', '1', 'KT0254', NULL, NULL, NULL, '1', 'KT. AURORA', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102028', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0254');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('272', '1', 'KT0261', NULL, '1', NULL, '1', 'KT. TELUK JAKARTA 208', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101046', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0261');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('273', '1', 'KT0262', NULL, NULL, NULL, '1', 'KT. AQUA HARBOUR', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102038', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0262');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('274', '1', 'KT0264', NULL, '2', NULL, '1', 'TB HTS3 /TB SACCI HARBOUR', NULL, NULL, NULL, '1', NULL, NULL, '1010', '102041', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0264');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('275', '1', 'KT001', NULL, '1', NULL, '1', 'KT. TIRTAYASA II-212', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101039', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT001');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('276', '1', 'KT0242', NULL, '1', NULL, '1', 'TB. MEDELIN HOPE', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0242');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('277', '1', 'KPIL01', NULL, NULL, NULL, '2', 'Kepil I', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KPIL01');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('278', '7', 'KT0303', NULL, NULL, NULL, '1', 'KT. SELAT BANGKA', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101028', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2154', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0303');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('279', '3', 'KP0304', NULL, NULL, NULL, '2', 'MPC-002/KAPAL CEPAT', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0304');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('280', '1', 'KK0209', NULL, '1', NULL, '3', 'Kepil I', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0209');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('281', '1', 'KT0223', NULL, '1', NULL, '1', 'KATELIA III', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0223');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('282', '1', 'KK0202', NULL, '1', NULL, '3', 'MPS - 009', NULL, NULL, NULL, '0', 'MKB-00006', '4180', '1030', '301006', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0202');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('283', '1', 'KT0201', NULL, '1', NULL, '1', 'KT.SELAT KARIMATA', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0201');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('284', '1', 'KT0202', NULL, '1', NULL, '1', 'KT.SELAT SIPURA', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0202');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('285', '1', 'KT0203', NULL, '1', NULL, '1', 'KT.SELAT SANDING', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0203');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('286', '1', 'KT0204', NULL, '1', NULL, '1', 'KT.SELAT SUNDA', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1740', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0204');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('287', '1', 'KT0205', NULL, '1', NULL, '1', 'BIMA II', NULL, NULL, NULL, '1', 'KTS-00008', '1110', '1010', '101001', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0205');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('288', '1', 'KT0206', NULL, '1', NULL, '1', 'BIMA III', NULL, NULL, NULL, '0', 'KTS-00009', '1120', '1010', '101002', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0206');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('289', '1', 'KT0207', NULL, '1', NULL, '1', 'BIMA X', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0207');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('290', '1', 'KT0208', NULL, '1', NULL, '1', 'BIMA XI', NULL, NULL, NULL, '1', 'KTS-00007', '1130', '1010', '101003', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0208');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('291', '1', 'KT0209', NULL, '1', NULL, '1', 'BIMA 034', NULL, NULL, NULL, '1', 'KTS-00005', '1240', '1010', '101014', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0209');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('292', '1', 'KT0210', NULL, '1', NULL, '1', 'BIMA 035', NULL, NULL, NULL, '1', 'KTS-00006', '1250', '1010', '101015', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0210');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('293', '1', 'KT0211', NULL, '1', NULL, '1', 'JAYAKARTA 1', NULL, NULL, NULL, '1', 'KTS-00001', '1200', '1010', '101010', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0211');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('294', '1', 'KT0212', NULL, '1', NULL, '1', 'JAYAKARTA II', NULL, NULL, NULL, '0', 'KTS-00002', '1210', '1010', '101011', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0212');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('295', '1', 'KT0213', NULL, '1', NULL, '1', 'JAYAKARTA III', NULL, NULL, NULL, '0', 'KTS-00003', '1220', '1010', '101012', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0213');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('296', '1', 'KT0214', NULL, '1', NULL, '1', 'JAYAKARTA IV', NULL, NULL, NULL, '0', 'KTS-00004', '1230', '1010', '101013', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0214');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('297', '1', 'KT0215', NULL, '1', NULL, '1', 'BESTWIN 88', NULL, NULL, NULL, '1', 'KTF-00001', '1260', '1010', '101016', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0215');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('298', '1', 'KT0216', NULL, '1', NULL, '1', 'SDS 36', NULL, NULL, NULL, '0', 'KTF-00002', '1270', '1010', '101017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0216');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('299', '1', 'KK0201', NULL, '1', NULL, '3', 'MK. IIB.01', NULL, NULL, NULL, '0', 'MKB-00004', '4180', '1030', '301002', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0201');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('300', '1', 'KK0203', NULL, '1', NULL, '3', 'MPS - 018', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0203');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('301', '1', 'KP0201', NULL, '1', NULL, '2', 'MP. I - 014', NULL, NULL, NULL, '0', NULL, '2210', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0201');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('302', '1', 'KP0202', NULL, '1', NULL, '2', 'MP. I - 015', NULL, NULL, NULL, '0', NULL, '2210', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '365', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0202');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('303', '1', 'KP0203', NULL, '1', NULL, '2', 'MPC-04', NULL, NULL, NULL, '1', 'MPF-00002', '2210', '1020', '201002', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0203');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('304', '1', 'KP0204', NULL, '1', NULL, '2', 'MP.C-05', NULL, NULL, NULL, '0', 'MPF-00001', '2210', '1020', '201003', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0204');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('305', '1', 'KP0205', NULL, '1', NULL, '2', 'MP.C.0-III', NULL, NULL, NULL, '0', 'MPF-00003', '2210', '1020', '201010', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0205');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('306', '1', 'KP0206', NULL, '1', NULL, '2', 'MP. II - 011', NULL, NULL, NULL, '0', NULL, '2210', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0206');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('307', '1', 'KP0207', NULL, '1', NULL, '2', 'MP. II - 012', NULL, NULL, NULL, '0', 'MPB-00002', '2210', '1020', '201006', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0207');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('308', '1', 'KP0208', NULL, '1', NULL, '2', 'MP.II-C.01', NULL, NULL, NULL, '0', 'MPB-00001', '2210', '1020', '201007', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0208');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('309', '1', 'KP0209', NULL, '1', NULL, '2', 'M.P I-F01', NULL, NULL, NULL, '0', 'MPF-00004', '2210', '1020', '201001', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0209');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('310', '1', 'KP0210', NULL, '1', NULL, '2', 'M.P.I-F02', NULL, NULL, NULL, '0', NULL, '2210', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0210');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('311', '1', 'KT0224', NULL, '1', NULL, '1', 'KATELIA IV', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0224');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('312', '1', 'KT0233', NULL, '1', NULL, '1', 'KATELIA V', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0233');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('313', '1', 'KT0234', NULL, '1', NULL, '1', 'TAMARIN III', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0234');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('314', '1', 'KT0235', NULL, '1', NULL, '1', 'TAMARIN V', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102001', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0235');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('317', '1', 'KT0238', NULL, '1', NULL, '1', 'SR. STAR', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0238');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('318', '1', 'KT0239', NULL, '1', NULL, '1', 'ANSANUS XII', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0239');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('319', '1', 'KK0204', NULL, '1', NULL, '3', 'MK.M-01', NULL, NULL, NULL, '1', 'MKB-00001', '4180', '1030', '301005', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0204');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('321', '1', 'KK0206', NULL, '1', NULL, '3', 'M.K.II.C-01', NULL, NULL, NULL, '0', 'MKB-00003', '4180', '1030', '301003', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0206');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('322', '1', 'KK0207', NULL, '1', NULL, '3', 'MK II A.01', NULL, NULL, NULL, '0', 'MKB-00005', '4180', '1030', '301001', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0207');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('323', '1', 'KK0208', NULL, '1', NULL, '3', 'MK II D-01', NULL, NULL, NULL, '1', 'MKB-00002', '4180', '1030', '301004', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0208');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('325', '1', 'KT0241', NULL, '0', NULL, '1', 'MAIDEN EXPRESS', NULL, NULL, NULL, '0', NULL, '4120', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0241');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('326', '1', 'KP0211', NULL, '1', NULL, '2', 'BATAVIA III', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0211');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('327', '1', 'KT0246', NULL, '1', NULL, '1', 'BATAVIA III', NULL, NULL, NULL, '1', NULL, '1180', '1010', '101008', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0246');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('328', '1', 'KT0245', NULL, NULL, NULL, '1', 'TB. MEDELIN SPOT', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0245');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('330', '1', 'KT0243', NULL, '1', NULL, '1', 'BATAVIA I', NULL, NULL, NULL, '0', NULL, '1160', '1010', '101006', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0243');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('331', '1', 'KT0244', NULL, '1', NULL, '1', 'BATAVIA II', NULL, NULL, NULL, '1', NULL, '1170', '1010', '101007', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0244');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('332', '1', 'KP0212', NULL, '1', NULL, '2', 'BATAVIA IV', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0212');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('333', '1', 'KT0247', NULL, '1', NULL, '1', 'BATAVIA IV', NULL, NULL, NULL, '1', NULL, '1190', '1010', '101009', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0247');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('335', '1', 'KT0252', NULL, NULL, NULL, '1', 'TB. MEDELIN SIGNAL', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102024', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0252');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('336', '1', 'KT0263', NULL, NULL, NULL, '1', 'KT. SELAT LEGUNDI II-206', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101023', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0263');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('337', '1', 'KT01', NULL, '1', NULL, '1', 'KT. TIRTAYASA II-212', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101039', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT01');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('338', '1', 'KT0267', NULL, NULL, NULL, '1', 'TB IPCM ABIMANYU IV', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101050', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0267');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('340', '1', 'KK01OF', NULL, '1', NULL, '3', 'KEPIL DARAT', NULL, NULL, NULL, '1', NULL, '4180', '1060', '000000', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK01OF');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('341', '3', 'KK03OF', NULL, '1', NULL, '3', 'KEPIL OFFICE', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK03OF');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('342', '1', 'KP0215', NULL, '1', NULL, '2', 'MPA.C-01', NULL, NULL, NULL, '1', NULL, '2210', '1020', '201004', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0215');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('343', '1', 'KP0216', NULL, '1', NULL, '2', 'MPA.C-02', NULL, NULL, NULL, '1', NULL, '2210', '1020', '201005', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0216');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('345', '1', 'KP0218', NULL, '1', NULL, '2', 'MPA.C-04', NULL, NULL, NULL, '1', NULL, '2210', '1020', '201038', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0218');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('346', '1', 'KP0219', NULL, '1', NULL, '2', 'MPW.AC - 02', NULL, NULL, NULL, '1', NULL, '2210', '1020', '201009', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0219');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('347', '1', 'KP0220', NULL, NULL, NULL, '2', 'MK. MP - 01', NULL, NULL, NULL, '0', NULL, '2210', '1030', '301005', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0220');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('348', '1', 'KP0101', NULL, '1', NULL, '2', 'MPAX-02', NULL, NULL, NULL, '0', NULL, NULL, '1020', '201031', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0101');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('350', '1', 'KT0257', NULL, '1', NULL, '1', 'KT. PULAU SEBESI I-212', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101025', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0257');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('351', '1', 'KT0259', NULL, NULL, NULL, '1', 'TB. DEWI HARBOUR', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102039', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0259');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('352', '1', 'KT011', NULL, NULL, NULL, '1', 'TB. AVATAR HARBOUR', NULL, NULL, NULL, '1', NULL, NULL, '1010', '102047', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT011');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('353', '1', 'KT0255', NULL, '2', NULL, '1', 'KT. MAZO HARBOUR', NULL, NULL, NULL, '1', NULL, NULL, '1010', '102029', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0255');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('355', '1', 'KT0258', NULL, NULL, NULL, '1', 'KT. SELAT LEGUNDI III-212', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101024', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0258');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('356', '1', 'KT0265', NULL, '1', NULL, '1', 'KT. SDS 36', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0265');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('357', '1', 'KT0268', NULL, NULL, NULL, '1', 'KT IPCM Abimanyu III', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101047', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0268');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('358', '1', 'KT0270', NULL, NULL, NULL, '1', 'TB IPCM ABIMANYU III', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101049', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0270');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('360', '1', 'KT0276', NULL, NULL, NULL, '1', 'ARJUNA I', NULL, NULL, NULL, '1', 'KTF-00003', '1140', '1010', '101004', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0276');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('361', '1', 'KT0309', NULL, NULL, NULL, '1', 'ABIMANYU I', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101047', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0309');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('362', '1', 'KT0310', NULL, NULL, NULL, '1', 'ABIMANYU III', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101047', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0310');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('126', '11', 'KT1108', NULL, '1', NULL, '1', 'BINA MARINE 15', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1108');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('131', '11', 'KT1114', NULL, '2', NULL, '1', 'SEMAR DUA PULUH SATU. TB', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1114');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('136', '7', 'KT0721', NULL, '1', NULL, '1', 'MARTHA PRIMA ', NULL, NULL, NULL, '0', NULL, '4120', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0721');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('140', '11', 'KT1106', NULL, '1', NULL, '1', 'TB. TOLL JULIET', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1106');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('145', '3', 'KK03CH', '6', NULL, NULL, '3', 'CHARTER KAPAL', '000', '2021', '000', '1', NULL, '4110', '1020', '202005', '1', '123', '123', '123', 'Baja', '123', 'Bangladesh', '123', '0', '123', '123', '123', '123', '123', '123', '123', '123', 'BKI', '123', '123', '123', '123', '123', '123', '123', '123', '123', 'personil/1621492685564.vnd.openxmlformats-officedocument.spreadsheetml.sheet', NULL, NULL, 'KK03CH');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('150', '3', 'KT0332', NULL, '1', NULL, '1', 'KT MITRA', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0332');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('154', '7', 'KT0724', NULL, '1', NULL, '1', 'TIRTAYASA V-208, TB', NULL, NULL, NULL, '0', NULL, '1150', '1010', '101042', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0724');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('159', '11', 'KP1101', NULL, '1', NULL, '2', 'MP. Pulau Baai', NULL, NULL, NULL, '1', NULL, '2130', '1020', '201032', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP1101');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('164', '11', 'KT1102', NULL, '1', NULL, '1', 'Kpl Tunda Berkat ', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1102');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('169', '5', 'KT0505', '3', '1', NULL, '1', 'KT. KHATULISTIWA 01', '1.240', '2021', '000', '1', NULL, '1110', '1010', '101036', '1', '23,00', '2013', '7,00', 'Baja', '3,20', 'Indonesia', '2,60', '620', '1.900', 'Yanmar', '6AYM-STE', '216', '160', '1.500', 'C4.4', 'Carterpilar', 'BKI', '+', '000', 'I', 'Pontianak', 'P', '+', '142', '12', '10', 'personil/1621218451796.pdf', NULL, NULL, 'KT0505');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('182', '11', 'KT1116', NULL, '2', NULL, '1', 'SEMAR DELAPAN', NULL, NULL, NULL, '0', NULL, '4130', '1010', '102005', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1658', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1116');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('187', '3', 'KTS308', NULL, '1', NULL, '1', 'TB. MULTI TRADE', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTS308');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('230', '5', 'KT0508', NULL, '1', NULL, '1', 'KT. MUARAJATI 01', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101037', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0508');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('235', '3', 'KTS304', NULL, '1', NULL, '1', 'TB. MEDELIN II', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTS304');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('240', '10', 'KT10', NULL, NULL, NULL, '1', 'KT. JAYAKARTA 1', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101010', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT10');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('245', '3', 'KTS303', NULL, '1', NULL, '1', 'TRANSKO KEPODANG', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTS303');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('249', '5', 'KT0511', NULL, '1', NULL, '1', 'TB AREK SUROBOYO 6', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0511');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('255', '3', 'KTJYK3', NULL, '1', NULL, '1', 'KT. Jayakarta 3 - 216', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101012', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTJYK3');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('261', '7', 'KT072', NULL, NULL, NULL, '1', 'TB IPCM ABIMANYU II', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101048', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT072');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('266', '1', 'KT0248', NULL, NULL, NULL, '1', 'TB.SEMAR ENAM BELAS', NULL, NULL, NULL, '0', NULL, '4120', '1010', '102009', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1638', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0248');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('271', '1', 'KT0260', NULL, '1', NULL, '1', 'KT. TELUK JAKARTA 212', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101045', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0260');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('315', '1', 'KT0236', NULL, '1', NULL, '1', 'ARJUNA I', NULL, NULL, NULL, '0', 'KTF-00003', '1140', '1010', '101004', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0236');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('320', '1', 'KK0205', NULL, '1', NULL, '3', 'MPS. 019', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0205');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('324', '1', 'KT0240', NULL, '0', NULL, '1', 'MARTHA INDAH', NULL, NULL, NULL, '0', NULL, '4110', '1010', '102015', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0240');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('329', '1', 'KK0210', NULL, '1', NULL, '3', 'MK.M 02', NULL, NULL, NULL, '1', NULL, '4180', '1030', '301007', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0210');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('334', '1', 'KP01OF', NULL, '1', NULL, '2', 'PANDU OFFICE', NULL, NULL, NULL, '1', NULL, '2210', '1050', '000000', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP01OF');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('339', '1', 'KT0269', NULL, NULL, NULL, '1', 'KT IPCM Abimanyu I', NULL, NULL, NULL, '1', NULL, NULL, '1010', '101047', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0269');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('344', '1', 'KP0217', NULL, '1', NULL, '2', 'MPW.AC - 01', NULL, NULL, NULL, '1', NULL, '2210', '1020', '201008', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0217');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('349', '1', 'KT0253', NULL, NULL, NULL, '1', 'KT. MEDELIN COMPASS', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102027', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0253');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('354', '1', 'KT0256', NULL, NULL, NULL, '1', 'TB. AMORA HARBOUR', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102033', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0256');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('359', '1', 'KT0296', NULL, NULL, NULL, '1', 'TB IPCM ABIMANYU I', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101048', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0296');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('41', '15', 'KT0407', '3', '1', NULL, '1', 'TG. BUYUT I 206 .TB', '1.200', '2021', '000', '1', NULL, '1110', '1010', '101033', '1', '23,17', '1975', '7,00', 'Baja', '3,00', 'Indonesia', '2,40', '600', '1.600', 'Yanmar', '6AYM-STE', '231,2', '170', '1.500', 'Volvo', 'DSAT', 'BKI', 'n/a', '12806', NULL, 'Palembang', NULL, 'n/a', '135', '12', '10', 'personil/1621227609904.pdf', NULL, NULL, 'KT0407');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('46', '15', 'KP0404', NULL, NULL, NULL, '2', 'A.P 17', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '185', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0404');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('50', '17', 'KTTAM4', NULL, '1', NULL, '1', 'KT. TAMARIN V', NULL, NULL, NULL, '0', NULL, '4110', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTTAM4');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('54', '17', 'KTTAM3', NULL, '2', NULL, '1', 'KT. TAMARIN III ', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102013', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTTAM3');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('59', '12', 'KT0860', NULL, '1', NULL, '1', 'KT. MAIDEN KITTY', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0860');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('64', '5', 'KP0501', NULL, '1', NULL, '2', 'MPKF-01 ', NULL, NULL, NULL, '1', NULL, '2140', '1020', '201027', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0501');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('68', '7', 'KT0722', NULL, '1', NULL, '1', 'MEIDEN POWER', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0722');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('73', '1', 'KK0203', NULL, '1', NULL, '3', 'MPS - 018', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0203');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('77', '1', 'KK0207', NULL, '1', NULL, '3', 'MK II A.01', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0207');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('81', '1', 'KP0202', NULL, '1', NULL, '2', 'MP. I - 015', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '365', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0202');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('85', '1', 'KP0206', NULL, '1', NULL, '2', 'MP. II - 011', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0206');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('89', '1', 'KP0210', NULL, '1', NULL, '2', 'M.P.I-F02', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0210');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('93', '1', 'KT0203', NULL, '1', NULL, '1', 'KT.SELAT SANDING', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0203');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('201', '7', 'KT0739', '6', '1', NULL, '1', 'KT. MUARAJATI 01', '1.240', '2021', '000', '1', NULL, NULL, '1010', '101037', '1', '23,17', '2010', '7,00', 'Baja', '3,00', 'Indonesia', '2,40', '620', '1.900', 'Yanmar', '6LAH-STE3', '208', '154', '000', 'Volvo', 'PENTA D 5 AT', 'BKI', '000', '000', '000', '000', '000', '000', '129', '12', '12', 'personil/1621226844494.jpeg', NULL, NULL, 'KT0739');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('113', '1', 'KT0237', '3', '1', NULL, '1', 'ARJUNA II', '1.240', '2021', '000', '1', NULL, NULL, NULL, NULL, '1', '23,17', '2008', '7,00', 'Baja', '3,00', 'Indonesia', '2,40', '620', '1.900', 'Yanmar', '6LAH-STE3', '206', '170', '1.500', 'Volvo Penta', 'D5AT', 'BKI', '+', '000', 'I', 'tanjung priok', 'P', '+', '129', '1', '12', 'personil/1621227445605.pdf', NULL, NULL, 'KT0237');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('142', '11', 'KT1109', '1', '1', NULL, '1', 'KT. BUNGA RAFLESIA', '1.240', '000', '000', '1', NULL, '1110', '1010', '101044', '0', '23,00', '2012', '7,00', 'Baja', '3,40', 'Indonesia', '000', '620', '1.900', 'Yanmar', '6AYM-STE', '216', '160', '1.500', 'Carterpilar', 'C4.4 DITA', 'BKI', '+', '000', 'NA', 'NA', 'NA', '+', '212', '12', '12', 'personil/1621227896448.jpeg', NULL, NULL, 'KT1109');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('316', '1', 'KT0237', '3', '1', NULL, '1', 'ARJUNA II', '1.500', '2021', '0', '1', 'KTF-00004', '1150', '1010', '101005', '1', '0', '2021', '0', 'Baja', '0', 'Indonesia', '0', '750', '0', '0', '0', '0', '0', '0', '0', '0', 'BKI', '0', '0', NULL, '0', NULL, '0', '0', '0', '0', 'personil/1621232065741.pdf', NULL, NULL, 'KT0237');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('1', '7', 'KT0730', NULL, '1', NULL, '1', 'KT. BESTWIN 88', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0730');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('2', '7', 'KTPB', NULL, '2', NULL, '1', 'KT. PERTAMINA BALONGAN', NULL, NULL, NULL, '1', NULL, '1120', '1010', '102003', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTPB');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('3', '4', 'KT0401', NULL, '2', NULL, '1', 'TB. BEITRANS', NULL, NULL, NULL, '1', NULL, NULL, '1010', '102011', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0401');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('4', '15', 'KT0414', NULL, '2', NULL, '1', 'TB. MITRA ANUGERAH 5', NULL, NULL, NULL, '0', NULL, NULL, '1010', '102012', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0414');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('5', '7', 'KT0734', NULL, '1', NULL, '1', 'KT. BIMA XI', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101003', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0734');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('6', '15', 'KT0416', NULL, '2', NULL, '1', 'TB. MANDIRI TANGO 1', NULL, NULL, NULL, '1', NULL, NULL, '1010', '102018', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0416');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('7', '3', 'KT0312', NULL, '1', NULL, '1', 'KT.TIRTAYASA VI-208', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0312');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('8', '3', 'KTS301', NULL, '1', NULL, '1', 'TB. AMAZON HARBOUR', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTS301');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('9', '3', 'KTS302', NULL, '1', NULL, '1', 'TB. GUCCI HARBOUR', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTS302');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('10', '15', 'KT0412', NULL, '1', NULL, '1', 'SELAT LEGUNDI - I.212', NULL, NULL, NULL, '1', NULL, '5120', '1010', '101022', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0412');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('11', '3', 'KK03OF', NULL, '1', NULL, '3', 'KEPIL OFFICE', NULL, NULL, NULL, '1', NULL, '3110', '1060', '000000', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK03OF');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('12', '7', 'KK07OF', NULL, '1', NULL, '3', 'KEPIL OFFICE', NULL, NULL, NULL, '0', NULL, '1127', '1060', '000000', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK07OF');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('13', '11', 'KP1102', NULL, '1', NULL, '2', 'MP BARU - EMBUH1', NULL, NULL, NULL, '0', NULL, '2130', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP1102');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('14', '6', 'KP0601', NULL, '1', NULL, '2', 'MP MULTI TG PANDAN', NULL, NULL, NULL, '0', NULL, '2120', '1020', '201026', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0601');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('15', '3', 'KTTMIV', NULL, '2', NULL, '1', 'KT TAMARIN IV', NULL, NULL, NULL, '0', NULL, '4130', '1010', '102001', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTTMIV');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('16', '12', 'KT0872', NULL, '1', NULL, '1', 'KT BATAVIA IV-216', NULL, NULL, NULL, '0', NULL, NULL, '1010', '101009', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0872');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('17', '3', 'KT0301', NULL, '1', NULL, '1', 'KT.SELAT LEGUNDI-I -212', NULL, NULL, NULL, '0', NULL, '1110', '1010', '101022', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0301');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('18', '3', 'KT0303', NULL, '1', NULL, '1', 'KT. SELAT BANGKA', NULL, NULL, NULL, '0', NULL, '1170', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0303');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('19', '3', 'KT0304', NULL, '1', NULL, '1', 'KT. SELAT DURIAN  ', NULL, NULL, NULL, '0', NULL, '1160', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1740', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0304');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('20', '3', 'KT0305', NULL, '1', NULL, '1', 'KT.SELAT LEGUNDI-II-206', NULL, NULL, NULL, '0', NULL, '1120', '1010', '101023', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0305');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('21', '3', 'KP0302', NULL, '1', NULL, '2', 'MP.IS-034', NULL, NULL, NULL, '1', NULL, '2170', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '630', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0302');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('22', '3', 'KP0303', NULL, '1', NULL, '2', 'MP.I-033', NULL, NULL, NULL, '1', NULL, '2170', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '740', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0303');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('23', '3', 'KP0304', NULL, '1', NULL, '2', 'MPC-002', NULL, NULL, NULL, '0', NULL, '2170', '1020', '201014', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0304');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('24', '3', 'KT0306', NULL, '1', NULL, '1', 'KT. B MUSI', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0306');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('25', '3', 'KT0307', NULL, '1', NULL, '1', 'KT. MAWAR', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3194', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0307');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('26', '7', 'KT0707', NULL, '1', NULL, '1', 'KT. SELAT BANGKA', NULL, NULL, NULL, '0', NULL, '4110', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0707');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('27', '7', 'KT0708', NULL, '1', NULL, '1', 'KT. WIRA SEJAHTERA', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0708');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('28', '7', 'KT0709', NULL, '1', NULL, '1', 'TB.SWISCO PHOENIX', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0709');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('29', '7', 'KT0710', NULL, '1', NULL, '1', 'KT. MITRA JAYA I', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0710');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('30', '7', 'KT0712', NULL, '1', NULL, '1', 'TB.BARI IV               ', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0712');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('31', '7', 'KT0711', NULL, '1', NULL, '1', 'TB.SUMBER VII', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0711');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('32', '7', 'KP0701', NULL, '1', NULL, '2', 'KP. MPI. 038', NULL, NULL, NULL, '0', NULL, '2120', '1020', '201029', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '730', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0701');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('33', '15', 'KT0405', NULL, NULL, NULL, '1', 'KATELIA II .TB', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0405');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('34', '15', 'KT0404', NULL, NULL, NULL, '1', 'BINTANG HARAPAN .TB', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0404');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('35', '15', 'KT0418', NULL, '1', NULL, '1', 'TB TITAN 550', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0418');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('36', '17', 'KT0501', NULL, '1', NULL, '1', 'KT.SELAT SIBERUT', NULL, NULL, NULL, '1', NULL, '1110', '1010', '101029', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '850', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0501');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('37', '12', 'KT0866', NULL, '1', NULL, '1', 'KT TIRTAYASA. VI-208', NULL, NULL, NULL, '0', NULL, '1160', '1010', '101043', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0866');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('38', '17', 'KTBM10', NULL, '1', NULL, '1', 'KT.BIMA X', NULL, NULL, NULL, '1', NULL, '1120', '1010', '101030', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTBM10');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('39', '17', 'KTTAM5', NULL, '1', NULL, '1', 'KT.TAMARIN IV', NULL, NULL, NULL, '0', NULL, '1120', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KTTAM5');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('40', '17', 'KK0502', NULL, '1', NULL, '3', 'KM.MK.007', NULL, NULL, NULL, '0', NULL, '2130', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0502');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('42', '15', 'KT0406', NULL, NULL, NULL, '1', 'ANGGREK .TB', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0406');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('43', '15', 'KT0403', NULL, NULL, NULL, '1', 'MAWAR .TB', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0403');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('44', '15', 'KPK401', NULL, NULL, NULL, '2', 'M.P.I.010', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '270', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KPK401');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('45', '15', 'KP0402', NULL, NULL, NULL, '2', 'M.P.I.011', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '360', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0402');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('47', '15', 'KP0405', NULL, NULL, NULL, '2', 'MP. I-F 03', NULL, NULL, NULL, '1', NULL, '2170', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0405');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('48', '15', 'KP0406', NULL, NULL, NULL, '2', 'MPI.F 01', NULL, NULL, NULL, '0', NULL, '2110', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0406');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('49', '15', 'KP0407', NULL, '1', NULL, '2', 'MPF-02', NULL, NULL, NULL, '1', NULL, '2170', '1020', '201022', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0407');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('51', '11', 'KT1103', NULL, '1', NULL, '1', 'KT. BINTANG MUSI', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1103');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('52', '11', 'KT1105', NULL, '1', NULL, '1', 'TB. MARINA 28', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT1105');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('53', '11', 'KT10', NULL, '1', NULL, '1', 'PERDANA 10.TB', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT10');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('55', '12', 'KT0868', NULL, '1', NULL, '1', 'KT.ARJUNA II 206', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0868');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('56', '5', 'KT0514', NULL, '1', NULL, '1', 'TB. WARUNA MULIA', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0514');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('57', '12', 'KT0856', NULL, '1', NULL, '1', 'KT.MEDELIN OCEAN', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0856');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('58', '12', 'KT0858', NULL, '2', NULL, '1', 'MEYDEN STAR, KT ', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0858');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('60', '12', 'KT0859', NULL, '2', NULL, '1', 'TB.EQUATOR 32   ', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0859');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('61', '7', 'KT0713', NULL, '1', NULL, '1', 'BALONGAN I', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0713');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('62', '7', 'KT0714', NULL, '1', NULL, '1', 'BALONGAN II', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0714');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('63', '12', 'KT0841', NULL, '1', NULL, '1', 'KT. TAMARIN III', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0841');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('65', '5', 'KP0504', NULL, '1', NULL, '2', 'MPKF-02', NULL, NULL, NULL, '1', NULL, '2140', '1020', '201028', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0504');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('66', '5', 'KT0503', NULL, '1', NULL, '1', 'Bintang Aquaria', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0503');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('67', '6', 'KPPHTR', NULL, NULL, NULL, '2', 'PHANTER', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KPPHTR');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('69', '3', 'KT0323', NULL, NULL, NULL, '1', 'KTMITRA', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0323');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('70', '7', 'KT0715', NULL, '1', NULL, '1', 'KT. MUARAJATI I', NULL, NULL, NULL, '0', NULL, '1110', '1010', '101037', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0715');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('71', '1', 'KK0201', NULL, '1', NULL, '3', 'MK. IIB.01', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0201');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('72', '1', 'KK0202', NULL, '1', NULL, '3', 'MPS - 009', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0202');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('74', '1', 'KK0204', NULL, '1', NULL, '3', 'MK. M.01', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0204');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('75', '1', 'KK0205', NULL, '1', NULL, '3', 'MPS. 019', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0205');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('76', '1', 'KK0206', NULL, '1', NULL, '3', 'M.K.II.C-01', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0206');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('78', '1', 'KK0208', NULL, '1', NULL, '3', 'MK II D-01', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0208');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('79', '1', 'KK0209', NULL, '1', NULL, '3', 'Kepil I', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KK0209');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('80', '1', 'KP0201', NULL, '1', NULL, '2', 'MP. I - 014', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0201');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('82', '1', 'KP0203', NULL, '1', NULL, '2', 'M.P.C.-04', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0203');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('83', '1', 'KP0204', NULL, '1', NULL, '2', 'MP.C-05', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0204');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('84', '1', 'KP0205', NULL, '1', NULL, '2', 'MP.C.0-III', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0205');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('86', '1', 'KP0207', NULL, '1', NULL, '2', 'MP. II - 012', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0207');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('87', '1', 'KP0208', NULL, '1', NULL, '2', 'MP.II-C.01', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0208');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('88', '1', 'KP0209', NULL, '1', NULL, '2', 'M.P I-F01', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KP0209');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('90', '1', 'KPIL01', NULL, NULL, NULL, '2', 'Kepil I', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KPIL01');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('91', '1', 'KT0201', NULL, '1', NULL, '1', 'KT.SELAT KARIMATA', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0201');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('92', '1', 'KT0202', NULL, '1', NULL, '1', 'KT.SELAT SIPURA', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0202');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('94', '1', 'KT0204', NULL, '1', NULL, '1', 'KT.SELAT SUNDA', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1740', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0204');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('95', '1', 'KT0205', NULL, '1', NULL, '1', 'BIMA II', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0205');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('96', '1', 'KT0206', NULL, '1', NULL, '1', 'BIMA III', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KT0206');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('364', '1', 'KT0558', '3', NULL, NULL, '1', 'KT. ARJUNA VI', '1.240', '2021', '000', '1', NULL, NULL, NULL, NULL, '1', '23,17', '2008', '7,00', 'Baja', '3,00', 'Indonesia', '2,40', '0.62', '1.900', 'Yanmar', '6LAH-STE3', '216', '170', '1.500', 'Volvo Penta', 'D5AT', 'BKI', '+', '000', 'l', 'tanjung priok', 'P', '+', '129', '10', '12', 'asset_kapal/1621304655472.jpeg', NULL, NULL, 'KT0558');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('363', '1', NULL, '3', NULL, NULL, '1', 'KT. ARJUNA V', '1.240', '2021', '000', '1', NULL, NULL, NULL, NULL, '0', '23,17', '2008', '7,00', 'Baja', '3,00', 'Indonesia', '2,40', '619', '1.900', 'Yanmar', '6LAH-STE3', '216', '170', '1.500', 'Volvo Penta', 'D5AT', 'BKI', '+', '000', 'I', 'tanjung priok', 'P', '+', '129', '10', '12', 'asset_kapal/1621242252010.pdf', NULL, NULL, 'KT0559');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('366', '1', 'KT0555', '3', NULL, NULL, '1', 'Priok UAT2021', '1.200', '2021', '000', '1', NULL, NULL, NULL, NULL, '1', '23,17', '2010', '7,00', 'Baja', '3,00', 'Indonesia', '2,40', '600', '1.900', 'Yanmar', '6LAH-STE3', '216', '170', '1.500', 'Volvo Penta', 'D5AT', 'BKI', '+', '123', 'I', 'tanjung priok', 'P', '+', '129', '12', '12', 'asset_kapal/1621399834552.pdf', NULL, NULL, 'KT0555');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('367', '5', 'KT0554', '3', NULL, NULL, '1', 'Pontianak UAT2021', '1.200', '2021', '000', '1', NULL, NULL, NULL, NULL, '1', '23,17', '2010', '7,00', 'Baja', '3,00', 'Indonesia', '2,40', '600', '1.900', 'Yanmar', '6L26HLX', '216', '170', '1.500', 'Caterpilar', 'D5AT', 'BKI', '+', '123', 'I', 'Pontianak', 'P', '+', '129', '12', '12', 'asset_kapal/1621400140627.pdf', NULL, NULL, 'KT0554');
INSERT INTO "SIMPANDA"."asset_kapal" VALUES ('365', '1', 'KT0557', '3', NULL, NULL, '1', 'KT . UAT2021', '1.240', '2021', '000', '1', NULL, NULL, NULL, NULL, '1', '23,17', '2010', '7,00', 'Baja', '4,00', 'Indonesia', '3,00', '620', '1.900', 'Yanmar', '6LAH-STE3', '216', '170', '1.500', 'Caterpillar', 'D5AT', 'BKI', '+', '000', 'I', 'tanjung priok', 'P', '+', '142', '12', '10', 'asset_kapal/1621305834354.pdf', NULL, NULL, 'KT0557');

-- ----------------------------
-- Table structure for asset_rumah_dinas
-- ----------------------------
DROP TABLE "SIMPANDA"."asset_rumah_dinas";
CREATE TABLE "SIMPANDA"."asset_rumah_dinas" (
  "id" NUMBER(10) NOT NULL ,
  "nama_asset" VARCHAR2(255 BYTE) ,
  "satuan" VARCHAR2(255 BYTE) DEFAULT 1 ,
  "tahun_perolehan" VARCHAR2(255 BYTE) ,
  "nilai_perolehan" VARCHAR2(255 BYTE) ,
  "wilayah" VARCHAR2(255 BYTE) ,
  "nilai_buku" VARCHAR2(255 BYTE) ,
  "approval_status_id" NUMBER(10) DEFAULT 0  ,
  "tanggal" DATE ,
  "nilai" VARCHAR2(255 BYTE) ,
  "catatan" VARCHAR2(255 BYTE) ,
  "enable" NUMBER(10) DEFAULT 1  ,
  "no_asset" VARCHAR2(255 BYTE) ,
  "alamat" VARCHAR2(225 BYTE) ,
  "keterangan_rumah_dinas" VARCHAR2(500 BYTE) ,
  "upd_date" DATE DEFAULT CURRENT_TIMESTAMP AT TIME ZONE 'GMT' ,
  "cabang_id" NUMBER(10) ,
  "status_kepemilikan" VARCHAR2(5 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of asset_rumah_dinas
-- ----------------------------
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('4', 'Rumah Dinas Operasional Pahoman No 2', NULL, '1977', '16322550', NULL, '326', '0', TO_DATE('2015-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '10480000', 'Perbaikan ringan', '1', 'RD/PJG/1977/03', 'PANJANG', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:38', 'SYYYY-MM-DD HH24:MI:SS'), '3', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('50', 'Rumah type 45 Jl.St.Syah.Pengerukan 7', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/17', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('77', 'Rumah type 45 St.Sy. 1', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/42', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('110', 'Rumah Dinas Jl. Baru Marunda Cilincing 27', NULL, '2002', '269190402', NULL, '153438530', '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/27', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('112', 'Rumah Dinas Jl. Baru Marunda Cilincing 25', NULL, '2002', '269190402', NULL, '153438530', '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/25', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('117', 'Rumah Dinas Kelas VII Jln Rajawali, 84 M2', '1', '1959', '15519840', NULL, '310397', '0', TO_DATE('2015-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '57026650', 'Pembuatan Pagar Beton', '1', 'RD/PTK/1959/07', 'Jl. Rajawali', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('122', 'RD Kelas T.42 Jln.Kom Yos Sudarso, 42 M2', '1', '1974', '8510880', NULL, '8340662', '0', TO_DATE('2015-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '11265320', 'Pembuatan Pagar BRC', '1', 'RD/PTK/1974/12', 'Jl.Kom Yos Sudarso', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('123', 'Rumah Dinas Jl. Baru Marunda Cilincing 20', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/20', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('124', 'Rumah Dinas Jl. Baru Marunda Cilincing 19', NULL, NULL, NULL, NULL, NULL, '0', TO_DATE('2015-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'No.A19 Cilincing', '1', 'RD/TPK/2002/19', ' Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('125', 'Rumah Dinas Jl. Baru Marunda Cilincing 18', NULL, NULL, NULL, NULL, NULL, '0', TO_DATE('2015-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'No.A18 Cilincing', '1', 'RD/TPK/2002/18', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('143', 'Rumah Dinas Type 60 kopel Jl. A.R. Saleh 5', '1', '2013', '268.115.912,73', NULL, '255.096.608,18', '0', TO_DATE('2015-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '15.214.468,56', 'Perbaikan Rudin BLKI ', '1', 'RD/PTK/2013/24', 'Jl.A.R.Saleh', 'Ditempati Pandu 1', TO_DATE('2021-05-12 01:29:22', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('145', 'Rumah Dinas Kelas T.50 Jln.A.R.Saleh 50 M2', '1', '1987', '11.622.000', NULL, '11.389.560', '0', TO_DATE('2015-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '15.214.468,56', 'Perbaikan Rudin BLKI ', '1', 'RD/PTK/1987/16', 'Jl.A.R.Saleh', 'Ditempati Pandu', TO_DATE('2021-05-17 09:15:07', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('1', 'Rumah Dinas Kepala Divisi Kepanduan', NULL, '1975', '17193372', NULL, '344', '0', TO_DATE('2015-09-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '188053360', 'Renovasi Rudin', '1', 'RD/PJG/1975/01', 'PANJANG', 'Ditempati Manager Operasi', TO_DATE('2021-05-12 01:28:38', 'SYYYY-MM-DD HH24:MI:SS'), '3', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('2', 'Rumah Dinas Operasional Pahoman No 1', NULL, '1977', '16322550', NULL, '326', '0', TO_DATE('2015-09-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '11870000', 'Perbaikan ringan', '1', 'RD/PJG/1977/02', 'PANJANG', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:38', 'SYYYY-MM-DD HH24:MI:SS'), '3', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('3', 'Rumah Dinas Operasional Pahoman No 3', '1', '1977', '16322550', NULL, '326', '1', TO_DATE('2015-09-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '9770000', 'Perbaikan ringan', '1', 'RD/PJG/1977/04', 'PANJANG', 'Ditempati Pandu', TO_DATE('2021-05-19 14:56:28', 'SYYYY-MM-DD HH24:MI:SS'), '3', 'Milik');
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('5', 'Rumah Dinas Operasional Pahoman No 4', NULL, '1977', '16322550', NULL, '326', '0', TO_DATE('2015-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '10632000', 'Perbaikan ringan', '1', 'RD/PJG/1977/05', 'PANJANG', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '3', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('6', 'Rumah type 50 St.Sy.Sekretariat', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/01', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('7', 'Rumah Dinas Operasional Pahoman No 5', NULL, '1977', '16322550', NULL, '326', '0', TO_DATE('2015-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '8880000', 'Perbaikan ringan', '1', 'RD/PJG/1977/06', 'PANJANG', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '3', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('8', 'Rumah Dinas Operasional Jl. Gatot Subroto', NULL, '1982', '13817813', NULL, '276', '0', TO_DATE('2016-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '8481000', 'Perbaikan ringan', '1', 'RD/PJG/1982/07', 'Jl.Gatot Subroto', 'Ditempati Planner & Controller Executive', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '3', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('9', 'Rumah Dinas T.70 Manager', NULL, '1984', '16571325', NULL, '3052539', '0', NULL, NULL, NULL, '1', 'RD/BKL/1984/01', 'BENGKULU', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '11', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('10', 'Rumah Dinas ABK 1', NULL, '1992', '34076386', NULL, '15684405', '0', NULL, NULL, NULL, '1', 'RD/BKL/1992/02', 'BENGKULU', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '11', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('12', 'Rumah Dinas ABK 2', NULL, '1992', '34076386', NULL, '15684405', '0', NULL, NULL, NULL, '1', 'Rumah Dinas ABK 2', 'BENGKULU', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '11', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('13', 'Rumah Dinas ABK 3', NULL, '1992', '34076386', NULL, '15684405', '0', NULL, NULL, NULL, '1', 'RD/BKL/1992/04', 'BENGKULU', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '11', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('16', 'Rumah type 45 2 St.Sy.Div,Keu. Blok E1', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/04', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('18', 'Rumah type 45 2 St.Sy.Div,Keu. Blok E4', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/05', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('20', 'Rumah Dinas Komplek Gajah Mada 2', NULL, '1976', '345671602', NULL, '310554614', '0', NULL, NULL, NULL, '1', 'RD/CBN/1976/03', 'Komplek Gajah Mada', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '7', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('21', 'Rumah type 50 Jl.St.Syahrir PHC', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/06', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('23', 'Rumah Dinas Komplek Gajah Mada 4', NULL, '1976', '345671602', NULL, '310554614', '0', NULL, NULL, NULL, '1', 'RD/CBN/1976/05', 'Komplek Gajah Mada', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '7', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('24', 'Rumah type 70 St.Sy.Pengerukan', NULL, '1983', '11065600', NULL, '221312', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/07', 'Jl. St. Syahrir', 'Ditempati Manager Operasi', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('25', 'Rumah Dinas Pandu Jl. Ambalu 1', NULL, '2012', '229271970', NULL, '218786598', '0', TO_DATE('2016-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '14668500', 'Perlengkapan baru jaringan PDAM', '1', 'RD/TBS/2012/01', 'Jl.Ambalu', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '17', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('26', 'Rumah type 50 Jl.St.Syahrir Pengerukan 1', NULL, '1983', '7904000', NULL, '158', '0', TO_DATE('2015-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '62850000', 'Renovasi Rudin', '1', 'RD/PLB/1983/08', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('28', 'Rumah type 50 Jl.St.Syahrir Pengerukan 2', NULL, '1983', '7904000', NULL, '158', '0', TO_DATE('2015-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '62850000', 'Renovasi Rudin', '1', 'RD/PLB/1983/09', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('30', 'Rumah Dinas Pandu Jl. Ambalu 4', NULL, '2012', '229271970', NULL, '218786598', '0', TO_DATE('2016-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '14668500', 'Perlengkapan baru jaringan PDAM', '1', 'RD/TBS/2012/04', 'Jl.Ambalu', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '17', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('32', 'Rumah Dinas Pandu Jl. Ambalu 5', NULL, '2012', '229271970', NULL, '218786598', '0', TO_DATE('2016-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '14668500', 'Perlengkapan baru jaringan PDAM', '1', 'RD/TBS/2012/05', 'Jl.Ambalu', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '17', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('34', 'Rumah Dinas Pandu Jl. Ambalu 6', NULL, '2012', '229271970', NULL, '218786598', '0', TO_DATE('2016-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '14668500', 'Perlengkapan baru jaringan PDAM', '1', 'RD/TBS/2012/06', 'Jl.Ambalu', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '17', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('35', 'Rumah Dinas No.20/Yosia A ', NULL, '1974', '14039347', NULL, '280787', '0', TO_DATE('2015-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '78110250', 'Renovasi Besar', '1', 'RD/JBI/1974/01', 'JAMBI', 'Ditempati Mng Ops', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '10', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('37', 'Rumah Dinas No. 21/Bayu AM', NULL, '1974', '14039347', NULL, '280787', '0', TO_DATE('2015-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '78110250', 'Renovasi Besar', '1', 'RD/JBI/1974/02', 'JAMBI', 'Ditempati Pandu ', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '10', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('38', 'Rumah type 45 Jl.St.Syah.Pengerukan 3', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/13', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('40', 'Rumah Dinas  No. 27DWawan', NULL, '1974', '5474700', NULL, '109494', '0', NULL, NULL, NULL, '1', 'RD/JBI/1974/04', 'Jl.Imam Bonjol', 'Ditempati Pandu ', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '10', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('41', 'Rumah Dinas No.22/Bayu W. ', NULL, '1974', '7631234', NULL, '152625', '0', NULL, NULL, NULL, '1', 'RD/JBI/1974/05', 'Jl.Imam Bonjol', 'Ditempati Pandu ', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '10', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('42', 'Rumah type 45 Jl.St.Syah.Pengerukan 4', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/14', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('44', 'Rumah type 45 Jl.St.Syah.Pengerukan 5', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/15', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('45', 'Rumah Dinas No.34/Refki AC ', NULL, '1977', '9551100', NULL, '191022', '0', TO_DATE('2015-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '0', 'Perlengkapan Rumah Dinas', '1', 'RD/JBI/1974/07', 'Jl.Imam Bonjol', 'Ditempati Pandu ', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '10', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('46', 'Rumah type 45 Jl.St.Syah.Pengerukan 6', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/16', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('48', 'Rumah Dinas No.36/Hujairin 1', NULL, '1978', '10709295', NULL, '214186', '0', NULL, NULL, NULL, '1', 'RD/JBI/1974/09', 'Jl.Imam Bonjol', 'Ditempati Pandu ', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '10', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('51', 'Rumah Dinas', NULL, '1980', '30810000', NULL, '6162', '0', NULL, NULL, NULL, '1', 'RD/JBI/1974/11', 'Jl.Imam Bonjol', 'Ditempati Pandu ', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '10', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('52', 'Rumah type 45 Jl.St.Syah.Pengerukan 8', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/18', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('54', 'Rumah type 45 Jl.St.Syah.Pengerukan 9', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/19', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('55', 'Rumah type 45 Jl.St.Syah.Pengerukan 10', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/20', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('56', 'Rumah type 45 Jl.St.Syah.Pengerukan 11', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/21', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('57', 'Rumah type 45 Jl.St.Syah.Pengerukan 12', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/22', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('58', 'Rumah type 50 Jl.St.Syah. Div.Keuangan 1', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/23', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('59', 'Rumah type 50 Jl.St.Syah. Div.Keuangan 2', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/24', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('60', 'Rumah type 50 Jl.St.Syah. Div.Keuangan 3', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/25', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('61', 'Rumah type 50 Jl.St.Syah. Div.Keuangan 4', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/26', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('62', 'Rumah type 50 Jl.St.Syah. Div.Keuangan 5', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/27', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('63', 'Rumah type 50 Jl.St.Syah. Div.Keuangan 6', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/28', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('64', 'Rumah type 50 Jl.St.Syah. Div.Keuangan 7', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/29', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('65', 'Rumah type 50 Jl.St.Syah. Div.Keuangan 8', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/30', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('66', 'Rumah type 50 Jl.St.Syah. Div.Keuangan 9', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/31', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('67', 'Rumah type 50 Jl.St.Syah. Div.Keuangan 10', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/32', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('68', 'Rumah type 50 Jl.St.Syah. Div.Keuangan 11', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/33', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('69', 'Rumah type 50 Jl.St.Syah. Div.Keuangan 12', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/34', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('70', 'Rumah type 45 S.Sy. Div.Keu, 1', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/35', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('71', 'Rumah type 45 S.Sy. Div.Keu, 2', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/36', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('72', 'Rumah type 45 S.Sy. Div.Keu, 3', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/37', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('15', 'Rumah Dinas ABK 4', NULL, '1992', '34076386', NULL, '15684404', '0', NULL, NULL, NULL, '1', 'RD/BKL/1992/05', 'BENGKULU', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '11', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('73', 'Rumah type 45 S.Sy. Div.Keu, 4', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/38', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('74', 'Rumah type 50 Jl.St.Syahrir Div.Teknik', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/39', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('75', 'Rumah type 45 S.Sy.Div.Teknik', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/40', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('76', 'Rumah type 50 St.Sy.Trafik', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/41', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('78', 'Rumah type 45 St.Sy. 2', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/43', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('79', 'Rumah type 45 St.Sy. Kepanduan 1', NULL, '1983', '10670400', NULL, '106704', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/44', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:34', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('80', 'Rumah type 45 St.Sy. Kepanduan 2', NULL, '1983', '10670400', NULL, '106704', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/45', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('81', 'Rumah type 36 St.Syahrir Kepanduan', NULL, '1983', '5690880', NULL, '113818', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/46', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('82', 'Rumah type 45 S.Sy. Div.Jasa', NULL, '1983', '7833600', NULL, '156672', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/47', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('84', 'Rumah type 36 St.Syahrir Div.Jasa', NULL, '1983', '5690880', NULL, '113818', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/48', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('86', 'Rumah type 36 St.Syahrir Div.Jasa', NULL, '1983', '5690880', NULL, '113818', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/49', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('87', 'Rumah Dinas Jl. Baru Marunda Cilincing 3', NULL, '2002', '269190402', NULL, '153438530', '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/03', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('88', 'Rumah Dinas Jl. Baru Marunda Cilincing 4', NULL, '2002', '269190402', NULL, '153438530', '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/04', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('89', 'Rumah listrik Tg.Buyut', NULL, '1958', '5961600', NULL, '119232', '0', NULL, NULL, NULL, '1', 'RD/PLB/1958/51', 'Tg Buyut', 'Rumah Listrik', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('90', 'Asrama pandu Tg.Buyut 1 Komplek', NULL, '1958', '66516000', NULL, '1330320', '0', NULL, NULL, NULL, '1', 'RD/PLB/1958/52', 'Tg Buyut', 'Asrama Pandu', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('92', 'Rumah radio Tg.Buyut', NULL, '1958', '586873', NULL, '11737', '0', NULL, NULL, NULL, '1', 'RD/PLB/1958/53', 'Tg Buyut', 'Rumah Radio', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('93', 'Rumah pengurus cmpl.stasiun Tg.Buyut', NULL, '1958', '1', NULL, '0', '0', NULL, NULL, NULL, '1', 'RD/PLB/1958/54', 'Stasiun Tg.Buyut', 'Rumah Pengurus komplek', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('94', 'Rumah Dinas Jl. Baru Marunda Cilincing 6', NULL, '2002', '269190402', NULL, '153438530', '0', TO_DATE('2015-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '381968', 'No.A06 Cilincing', '1', 'RD/TPK/2002/06', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('96', 'Rumah Dinas Jl. Baru Marunda Cilincing 7', NULL, '2002', '269190402', NULL, '153438530', '0', TO_DATE('2015-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '82', 'No.A07 Cilincing', '1', 'RD/TPK/2002/07', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('97', 'Rumah Dinas Jl. Baru Marunda Cilincing 8', NULL, '2002', '269190402', NULL, '153438530', '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/08', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('99', 'Rumah Dinas Jl. Baru Marunda Cilincing 9', '1', '2002', '269190402', NULL, '153438530', '1', NULL, NULL, NULL, '1', 'RD/TPK/2002/09', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-19 10:31:50', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'Milik');
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('100', 'Tanah Lokasi Rumah Dinas Jl. Rajawali No.12 L 1.491M2', NULL, '1956', '373', NULL, '373', '0', NULL, NULL, NULL, '1', 'RD/PTK/1956/02', 'Jl. Rajawali', 'Tanah Lokasi Rumah Dinas', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('102', 'Tanah Lokasi Rumah Dinas - Jl. Rajawali ( 1 Rmh Pandu No. 11) Luas 504 M2', NULL, '1961', '126', NULL, '126', '0', NULL, NULL, NULL, '1', 'RD/PTK/1961/03', 'Jl. Rajawali', 'Tanah Lokasi Rumah Dinas', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('103', 'Tanah Lokasi Rumah Dinas (1 Rmh Mang.Luas Bang. 70 M2 Luas Tnh 4.410 M2)', NULL, '1961', '1102500', NULL, '0', '0', NULL, NULL, NULL, '1', 'RD/PTK/1961/04', 'Pontianak', 'Tanah Lokasi Rumah Dinas', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('104', 'Tanah Lokasi Rumah Dinas KOYOSO, 4.110 M2', NULL, '1970', '1029500', NULL, '0', '0', NULL, NULL, NULL, '1', 'RD/PTK/1970/05', 'Pontianak', 'Tanah Lokasi Rumah Dinas', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('105', 'Tanah Lokasi Rumah Dinas AR. SALEH 7.049 M2', NULL, '1985', '102736200', NULL, '0', '0', NULL, NULL, NULL, '1', 'RD/PTK/1985/06', 'Pontianak', 'N/A', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('106', 'Rumah Dinas Jl. Baru Marunda Cilincing 31', NULL, '2002', '269190402', NULL, '153438530', '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/31', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('107', 'Rumah Dinas Jl. Baru Marunda Cilincing 30', NULL, '2002', '269190402', NULL, '153438530', '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/30', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('108', 'Rumah Dinas Jl. Baru Marunda Cilincing 29', NULL, '2002', '26919040', NULL, '153438530', '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/29', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('109', 'Rumah Dinas Jl. Baru Marunda Cilincing 28', NULL, '2002', '269190402', NULL, '153438530', '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/28', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('111', 'Rumah Dinas Jl. Baru Marunda Cilincing 26', NULL, '2002', '269190402', NULL, '153438530', '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/26', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('113', 'Rumah Dinas Jl. Baru Marunda Cilincing 24', NULL, '2002', '269190402', NULL, '153438530', '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/24', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('114', 'Rumah Dinas Jl. Baru Marunda Cilincing 23', NULL, '2002', '269190402', NULL, '153438530', '0', TO_DATE('2016-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2155632', 'No.A23- Cilincing', '1', 'RD/TPK/2002/23', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('115', 'Rumah Dinas Jl. Baru Marunda Cilincing 22', NULL, '2002', '269190402', NULL, '153438530', '0', TO_DATE('2015-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '235067945', 'No.A22- Cilincing', '1', 'RD/TPK/2002/22', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('116', 'Rumah Dinas Jl. Baru Marunda Cilincing 21', '1', '2002', '269190401.61', NULL, '153438530.23', '0', TO_DATE('2015-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '235067945', 'No.A21- Cilincing', '1', 'RD/TPK/2002/21', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('118', 'Rumah Dinas Kelas VII Jln Rajawali, 58 M2', '1', '1963', '11234600', NULL, '224692', '0', TO_DATE('2015-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '57026650', 'Pembuatan Pagar Beton', '1', 'RD/PTK/1963/08', 'Jl. Rajawali', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('119', 'Rumah Dinas Kelas VII Jln D.I.Penjaitan 70 M2', '1', '1985', '15853600', NULL, '15536528', '0', TO_DATE('2016-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '21815800', 'Jl. Panjaitan 5', '1', 'RD/PTK/1985/10', 'Jl.D.I.Penjaitan', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('120', 'Rumah Dinas Kelas VII Jln Rajawali, 84 M2', '1', '1959', '15519840', NULL, '310397', '0', TO_DATE('2015-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '71085300', 'Renov Rumah Jl.Rajawali No. 3', '1', 'RD/PTK/1959/09', 'Jl. Rajawali', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('121', 'RD Kelas T.42 Jln.Kom Yos Sudarso, 42 M2', '1', '1974', '8510880', NULL, '8340662', '0', TO_DATE('2015-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '11265320', 'Pembuatan Pagar BRC', '1', 'RD/PTK/1974/11', 'Jl.Kom Yos Sudarso', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('127', 'Rumah Dinas Jl. Baru Marunda Cilincing 16', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/16', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('128', 'Rumah Dinas Jl. Baru Marunda Cilincing 15', NULL, NULL, NULL, NULL, NULL, '0', TO_DATE('2015-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '1', 'RD/TPK/2002/15', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('129', 'Rumah Dinas Jl. Baru Marunda Cilincing 14', NULL, NULL, NULL, NULL, NULL, '0', TO_DATE('2015-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'No.A14 Cilincing', '1', 'RD/TPK/2002/14', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('130', 'Rumah Dinas Jl. Baru Marunda Cilincing 13', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/13', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('131', 'Rumah Dinas Jl. Baru Marunda Cilincing 12', '1', '2002', '269190401.61', NULL, '153438530.23', '0', TO_DATE('2015-05-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'No.A12 Cilincing', '1', 'RD/TPK/2002/12', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('132', 'Rumah Dinas Jl. Baru Marunda Cilincing 11', NULL, NULL, NULL, NULL, NULL, '0', TO_DATE('2015-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'No.A11 Cilincing', '1', 'RD/TPK/2002/11', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('133', 'Rumah Dinas Type 60 kopel Jl. A.R. Saleh 11', NULL, NULL, NULL, NULL, NULL, '0', TO_DATE('2015-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'Perbaikan Rudin BLKI ', '1', 'RD/PTK/2013/30', 'Jl.A.R.Saleh', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('134', 'Rumah Dinas Type 60 kopel Jl. A.R. Saleh 10', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', 'RD/PTK/2013/29', 'Jl.A.R.Saleh', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('135', 'Rumah Dinas Type 60 kopel Jl. A.R. Saleh 9', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', 'RD/PTK/2013/28', 'Jl.A.R.Saleh', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('136', 'Rumah Dinas Type 60 kopel Jl. A.R. Saleh 8', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', 'RD/PTK/2013/27', 'Jl.A.R.Saleh', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('138', 'Rumah Dinas Type 60 kopel Jl. A.R. Saleh 6', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', 'RD/PTK/2013/25', 'Jl.A.R.Saleh', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:30', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('126', 'Rumah Dinas Jl. Baru Marunda Cilincing 17', NULL, NULL, NULL, NULL, NULL, '0', TO_DATE('2015-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'No.A17 Cilincing', '1', 'RD/TPK/2002/17', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('139', 'RD Kelas T.54 Jln.Kom Yos Sudarso, 54 M2', '1', '1974', '10942560', NULL, '10723709', '0', TO_DATE('2015-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '11265320', 'Pembuatan Pagar BRC', '1', 'RD/PTK/1974/13', 'Jl.Kom Yos Sudarso', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:30', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('140', 'Rumah Dinas Type 60 kopel Jl. A.R. Saleh 4', '1', '2013', '268.115.912,73', NULL, '255.096.608,18', '0', TO_DATE('2015-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'Perbaikan Rudin BLKI ', '1', 'RD/PTK/2013/23', 'Jl.A.R.Saleh', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:30', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('141', 'Rumah Dinas Type 60 kopel Jl. A.R. Saleh 3', '1', '2013', '268.115.912,73', NULL, '255.096.608,18', '0', TO_DATE('2015-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'Perbaikan Rudin BLKI ', '1', 'RD/PTK/2013/22', 'Jl.A.R.Saleh', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:30', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('142', 'Rumah Dinas Type 60 kopel Jl. A.R. Saleh 2', '1', '2013', '268.115.912,73', NULL, '255.096.608,18', '0', NULL, NULL, NULL, '1', 'RD/PTK/2013/21', 'Jl.A.R.Saleh', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:30', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('144', 'RD Kelas T.70 Jln.Kom Yos Sudarso, 70 M2', '1', '1982', '15.436.400', NULL, '15.127.672', '0', TO_DATE('2015-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '11.265.320', 'Pembuatan Pagar BRC', '1', 'RD/PTK/1982/15', 'Jl.Kom Yos Sudarso', 'Ditempati Pandu', TO_DATE('2021-05-17 09:12:48', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('146', 'Rumah Dinas Kelas T.50 Jln.A.R.Saleh 50 M2', '1', '1987', '11.622.000', NULL, '11.389.560', '0', TO_DATE('2015-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '15.214.468,56', 'Perbaikan Rudin BLKI ', '1', 'RD/PTK/1987/17', 'Jl.A.R.Saleh', 'Ditempati Pandu', TO_DATE('2021-05-17 09:16:01', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('147', 'Rumah Dinas Kelas T.50 Jln.A.R.Saleh 50 M2', '1', '1987', '11.622.000', NULL, '11.389.560', '0', TO_DATE('2015-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '15.214.468,56', 'Perbaikan Rudin BLKI ', '1', 'RD/PTK/1987/18', 'Jl.A.R.Saleh', 'Ditempati Pandu', TO_DATE('2021-05-17 09:18:01', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('148', 'Rumah Dinas Kelas T.50 Jln.A.R.Saleh 50 M2', '1', '1987', '11.622.000', NULL, '11.389.560', '0', TO_DATE('2015-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '15.214.468,56', 'Perbaikan Rudin BLKI ', '1', 'RD/PTK/1987/19', 'Jl.A.R.Saleh', 'Ditempati Pandu', TO_DATE('2021-05-17 09:19:10', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('149', 'Rumah Dinas Type 60 kopel Jl. A.R. Saleh 1', '1', '2013', '268.115.912,73', NULL, '255.096.608,18', '0', TO_DATE('2015-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '15.214.468,56', 'Perbaikan Rudin BLKI ', '1', 'RD/PTK/2013/20', 'Jl.A.R.Saleh', 'Ditempati Pandu', TO_DATE('2021-05-17 09:19:58', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('150', 'RD Kelas T.54 Jln.Kom Yos Sudarso, 54 M2', '1', '1974', '10.942.560', NULL, '10.723.709', '0', TO_DATE('2015-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '11.265.320', 'Pembuatan Pagar BRC', '1', 'RD/PTK/1974/14', 'Jl.Kom Yos Sudarso', 'Ditempati Pandu', TO_DATE('2021-05-17 09:30:16', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('11', 'Rumah type 45 St.Sy.Sekretariat 1', NULL, '1983', '7113600', NULL, '144272', '0', TO_DATE('2014-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '62850000', 'Renovasi Rudin', '1', 'RD/PLB/1983/02', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('14', 'Rumah type 45 St.Sy.Sekretariat 2', NULL, '1983', '7113600', NULL, '144272', '0', TO_DATE('2014-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '62850000', 'Renovasi Rudin', '1', 'RD/PLB/1983/03', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('17', 'Ruang Dinas Telkom, Jl. Donggala', NULL, '1989', '1990800', NULL, '859469', '0', NULL, NULL, NULL, '1', 'RD/CBN/1989/01', 'CIREBON', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '7', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('19', 'Rumah Dinas Komplek Gajah Mada 1', NULL, '1976', '345671602', NULL, '310554614', '0', TO_DATE('2015-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '57649350', 'Perbaikan Rudin', '1', 'RD/CBN/1976/02', 'Komplek Gajah Mada', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '7', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('22', 'Rumah Dinas Komplek Gajah Mada 3', NULL, '1976', '345671602', NULL, '310554614', '0', NULL, NULL, NULL, '1', 'RD/CBN/1976/04', 'Komplek Gajah Mada', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:37', 'SYYYY-MM-DD HH24:MI:SS'), '7', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('27', 'Rumah Dinas Pandu Jl. Ambalu 2', NULL, '2012', '229271970', NULL, '218786598', '0', TO_DATE('2016-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '14668500', 'Perlengkapan baru jaringan PDAM', '1', 'RD/TBS/2012/02', 'Jl.Ambalu', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '17', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('29', 'Rumah Dinas Pandu Jl. Ambalu 3', NULL, '2012', '229271970', NULL, '218786598', '0', TO_DATE('2016-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '14668500', 'Perlengkapan baru jaringan PDAM', '1', 'RD/TBS/2012/03', 'Jl.Ambalu', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '17', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('31', 'Rumah type 50 Jl.St.Syahrir Pengerukan 3', NULL, '1983', '7904000', NULL, '158', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/10', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('33', 'Rumah type 45 Jl.St.Syah.Pengerukan 1', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/11', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('36', 'Rumah type 45 Jl.St.Syah.Pengerukan 2', NULL, '1983', '7113600', NULL, '144272', '0', NULL, NULL, NULL, '1', 'RD/PLB/1983/12', 'Jl. St. Syahrir', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('39', 'Rumah Dinas No.25C/Yunus', NULL, '1974', '5474700', NULL, '109494', '0', NULL, NULL, NULL, '1', 'RD/JBI/1974/03', 'Jl.Imam Bonjol', 'Ditempati Pandu ', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '10', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('43', 'Rumah Dinas  No. 23 Yoso P', NULL, '1974', '7631234', NULL, '152625', '0', NULL, NULL, NULL, '1', 'RD/JBI/1974/06', 'Jl.Imam Bonjol', 'Ditempati Pandu ', TO_DATE('2021-05-12 01:28:36', 'SYYYY-MM-DD HH24:MI:SS'), '10', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('47', 'Rumah Dinas No. 35A Aprizal', NULL, '1977', '9551100', NULL, '191022', '0', TO_DATE('2015-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '0', 'Perlengkapan Rumah Dinas', '1', 'RD/JBI/1974/08', 'Jl.Imam Bonjol', 'Ditempati Pandu ', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '10', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('49', 'Rumah Dinas No.36/Hujairin 2', NULL, '1978', '10709295', NULL, '214186', '0', NULL, NULL, NULL, '1', 'RD/JBI/1974/10', 'Jl.Imam Bonjol', 'Ditempati Pandu ', TO_DATE('2021-05-12 01:28:35', 'SYYYY-MM-DD HH24:MI:SS'), '10', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('53', 'Belum ada/hanya berupa rumah kontrakan', '1', '000', '0', NULL, '000', '0', TO_DATE('2021-06-25 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '0.000.000', 'hanya berupa rumah kontrakan', '1', '1111111111', 'tanjungpandan', 'Ditempati Pandu', TO_DATE('2021-05-18 10:20:39', 'SYYYY-MM-DD HH24:MI:SS'), '6', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('83', 'Rumah Dinas Jl. Baru Marunda Cilincing 1', NULL, '2002', '269190402', NULL, '153438530', '0', TO_DATE('2015-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '82598835', 'No.A01 Cilincing', '1', 'RD/TPK/2002/01', 'Jl. Baru Marunda Cilincing', 'Ditempati GM Wil II', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('85', 'Rumah Dinas Jl. Baru Marunda Cilincing 2', NULL, '2002', '269190402', NULL, '153438530', '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/02', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('91', 'Rumah Dinas Jl. Baru Marunda Cilincing 5', NULL, '2002', '269190402', NULL, '153438530', '0', TO_DATE('2015-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '84874515', 'No.A05 Cilincing', '1', 'RD/TPK/2002/05', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('95', 'Renovasi RD Manager M1 (Tanggal 24/11/2012)', NULL, '2012', '383207404', NULL, '381955593', '0', NULL, NULL, NULL, '1', 'RD/PLB/2012/50', 'Palembang', 'Ditempati Manager Operasi', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '15', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('98', 'Tanah Lokasi Rumah Dinas Jl. Rajawali No.13 L 1.491M2', '1', '1956', '373', NULL, '373', '0', NULL, NULL, NULL, '1', 'RD/PTK/1956/01', 'Jl. Rajawali', 'Tanah Lokasi Rumah Dinas', TO_DATE('2021-05-12 01:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('101', 'Rumah Dinas Jl. Baru Marunda Cilincing 10', NULL, '2002', '269190402', NULL, '153438530', '0', NULL, NULL, NULL, '1', 'RD/TPK/2002/10', 'Jl. Baru Marunda Cilincing', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('137', 'Rumah Dinas Type 60 kopel Jl. A.R. Saleh 7', '1', '2013', '268115912.73', NULL, '255096608.18', '0', NULL, NULL, NULL, '1', 'RD/PTK/2013/26', 'Jl.A.R.Saleh', 'Ditempati Pandu', TO_DATE('2021-05-12 01:28:31', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL);
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('151', 'Rumah Dinas Jl. Baru Marunda Cilincing 1 UAT2021', '1', '2003', '269.190.401,61', NULL, '153.438.530,23', '1', TO_DATE('2015-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '82.598.835', 'No.A01 Cilincing', '1', 'RD/TPK/2002/01', 'Jl. Baru Marunda Cilincing', 'Ditempati GM Wil II', TO_DATE('2021-05-19 10:26:44', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'Milik');
INSERT INTO "SIMPANDA"."asset_rumah_dinas" VALUES ('152', '123', '1', ' 123', '123', NULL, '123', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '123', '123', '0', '123', '123', '123', TO_DATE('2021-05-19 15:12:07', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'Milik');

-- ----------------------------
-- Table structure for asset_stasiun_equipment
-- ----------------------------
DROP TABLE "SIMPANDA"."asset_stasiun_equipment";
CREATE TABLE "SIMPANDA"."asset_stasiun_equipment" (
  "id" NUMBER(10) NOT NULL ,
  "nomor_asset" VARCHAR2(120 BYTE) ,
  "tipe_asset_id" NUMBER(10) ,
  "nama" VARCHAR2(120 BYTE) ,
  "tahun_perolehan" VARCHAR2(120 BYTE) ,
  "nilai_perolehan" NUMBER(18,3) ,
  "kondisi" VARCHAR2(120 BYTE) ,
  "approval_status_id" NUMBER(10) DEFAULT 0  ,
  "enable" NUMBER(10) DEFAULT 1  ,
  "cabang_id" NUMBER(10) ,
  "upd_date" DATE ,
  "alamat" VARCHAR2(500 BYTE) ,
  "keterangan" VARCHAR2(100 BYTE) ,
  "sertifikat_equipment" VARCHAR2(500 BYTE) ,
  "tanggal_kadaluarsa" DATE ,
  "tanggal_terbit" DATE ,
  "tempat_keluar" VARCHAR2(100 BYTE) ,
  "nomor_sertifikat" VARCHAR2(100 BYTE) ,
  "total_aktif" NUMBER ,
  "lokasi_pemegang" VARCHAR2(100 BYTE) ,
  "details" VARCHAR2(100 BYTE) ,
  "kategori_equipment" NUMBER(10) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of asset_stasiun_equipment
-- ----------------------------
INSERT INTO "SIMPANDA"."asset_stasiun_equipment" VALUES ('1', '10011', '4', 'Stasiun Pandu Jungkat', '2021', '0', 'Baik', '2', '0', '1', NULL, 'Jl. Pelabuhan Jungkat', NULL, NULL, NULL, TO_DATE('2021-05-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '234', '234', NULL, NULL, 'Stasiun Pandu Jungkat', NULL);
INSERT INTO "SIMPANDA"."asset_stasiun_equipment" VALUES ('2', '123', '5', 'mobil pandu', '2019', NULL, 'Kurang Baik', '1', '1', '5', NULL, NULL, NULL, 'assetstasiunequipment/1621411338487.pdf', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '123', '123', '3', 'pontianak', 'pontianak', '4');

-- ----------------------------
-- Table structure for authorization
-- ----------------------------
DROP TABLE "SIMPANDA"."authorization";
CREATE TABLE "SIMPANDA"."authorization" (
  "user_id" NUMBER ,
  "accessToken" VARCHAR2(255 BYTE) ,
  "refreshToken" VARCHAR2(255 BYTE) ,
  "expired" TIMESTAMP(6) ,
  "cabang_id" NUMBER ,
  "id" NUMBER NOT NULL 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of authorization
-- ----------------------------
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '536be08e51bc095dd08ff5696fbb149ae1b5d89562280420f24e6593ab6f27b5', '3a1fbf5d8d21716aa026a8e293760439210cdf6631a56a3ac443858945b1bc73', TO_TIMESTAMP('2021-05-25 12:31:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '23');
INSERT INTO "SIMPANDA"."authorization" VALUES ('27', '7f27b4cb2add4982363481d402cc22b258fd04c67984334cc52875421e61f25a', '9e02b1c5b62acb74e6fccef2e7ee0377a1b36ea0bd7b7d473991b264df12e14e', TO_TIMESTAMP('2021-03-15 02:11:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '13', '36');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '75b8f59e58f5b07e401f2d6ba57883ea04e7950c81faa85750c37a1a3b8b3742', '0c4ae05b60ff050af3d9d69184165efccb677ba02aba7207fbd445499a8919d1', TO_TIMESTAMP('2021-03-15 13:26:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '40');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'b9f14dfc7fd1e6c02f0bcb4897b35ed73ba333f97bc31747648fbfd5bedc11ab', '278b5c2dd75995bfa2575da87a950bda2f09c25dd5451562e57ebd8df925076f', TO_TIMESTAMP('2021-03-15 15:05:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '58');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '4900915450ea947b9e73667fefc5135798ad04186dbfcc86893b60e33cc1c967', 'c7b62896133255d9cea16f112e7e973033264edb586c5b4f4c8b250826abaac5', TO_TIMESTAMP('2021-03-16 17:41:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '81');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '2ec6cf3be0e5a1667d6325db959c105a9bb59afe82b66d5377fd061da9db6f5e', '007f14540e6ea1168c7b2b207f9f0a352b3e107de5e9ddf8caf85db313a1004a', TO_TIMESTAMP('2021-03-18 10:13:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '93');
INSERT INTO "SIMPANDA"."authorization" VALUES ('43', '5d824ca98d05d0a4d4aad2b8940a6a51ef6963529e7eb944b7dd1081e85ebce1', '5d31dd86323c84bd8d3fe98d54b1fa16164148e7bef1fbaeb7860bafa00d29fe', TO_TIMESTAMP('2021-03-19 00:09:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '129');
INSERT INTO "SIMPANDA"."authorization" VALUES ('8', 'c2987bdb9c62d91fbf4baa2df989a28c606fef4b7a498056429a917817e04da8', 'e426a3a1fc9dfd596b62dcb98463f10cdd2e2525c9bd80c21c88d62eda864444', TO_TIMESTAMP('2021-03-19 04:29:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '156');
INSERT INTO "SIMPANDA"."authorization" VALUES ('43', 'af0c0901643bddb0a8b257cf62a1492bb969a98632bb715ea2140fb4122b99cb', '9eb6e9b34a5a326f99ae5e932c379128fd9dab90ffee2ea04a5732feaff14da7', TO_TIMESTAMP('2021-03-19 04:57:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '165');
INSERT INTO "SIMPANDA"."authorization" VALUES ('8', 'b1207fe9186c7f77aed7a55e0f63d634047594b31fe36ba314f88a58538c8e8a', 'da797494b7cae9e8ffcafbd31cdb93b417ec30386e75ee541f81c3b5528d8354', TO_TIMESTAMP('2021-03-23 07:28:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '173');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '97bf99832ef8e7356c1d5153ed3be798928effeb0224bbb3d1f0be19c9958ee9', '360e78fe7b6261cb90fa26a199939277e04104230caea93a7c61c6fdf6c38fe5', TO_TIMESTAMP('2021-03-24 23:42:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '184');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '0d72cefdb3e22caef6ae45c9282a13061502f205958f02af3b095975b8a97f31', '35d2361f459a18694a853ea5c623c631f855769224cf1076dbd7c289b8a658b0', TO_TIMESTAMP('2021-03-25 05:58:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '187');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'bd60bf2c8e9b485cc04729ac23331f2a3654c10b051503872bb7d50b8ba769c8', '6992f174bfb1ea64b828a80c92d0aed089985edbef8421db2559b627761cdce9', TO_TIMESTAMP('2021-03-25 23:58:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '190');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'bc153d90ccbd7a5f67aae45dc7df19172b44aa0fde2b248216ff16993208dc56', 'bdf013204bf59fe2cefc35d28aea8c8fed59bc9af715766d51baec46f8e179e3', TO_TIMESTAMP('2021-03-15 18:16:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '69');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'f14da33981e092e1cbaafe6600f083485b35f38d6754025bb9581e3e4e8c680f', '5a7364a0a4258b9ee688acb38293f35cc65e3e2ff7de31f2dfa82ed5e4235035', TO_TIMESTAMP('2021-03-16 12:25:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '73');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '5b821d998f5660025d759cc0774f907af0ca18e42a62cb1dd5c68e3dc4b2bafc', '12232773d571b141155aa8d7858131d81eb0c4f581b566db156ae68b33be3ebc', TO_TIMESTAMP('2021-03-17 22:47:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '92');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'c4e11ecba28dd7928d4c79ac72ebb42c21d2091dba8c49ca28c1a44565c6b69b', '465c4f8dc77600b4c402cb9bac7ace608ab905a98d6cd71d5c09b0a36a5b8820', TO_TIMESTAMP('2021-03-18 11:52:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '98');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '6efa9a598090c8e13bdd67cb22ab4f420f82a9bd99d6f40ee24a8d1d29f22ede', '2ff37ba23f9b7fcc8adf57ac8a2393fc91d559f0e9dc5873e5c13dff754ad513', TO_TIMESTAMP('2021-03-18 11:53:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '99');
INSERT INTO "SIMPANDA"."authorization" VALUES ('24', '361b5ae848aef1071796b80b9f42a1db9490977ae467b4336d220ad8f441134c', '629e79bbd26315b33957af2a4a04c7368f5a00408adad116518091ba2329b046', TO_TIMESTAMP('2021-03-18 12:18:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '9', '103');
INSERT INTO "SIMPANDA"."authorization" VALUES ('22', '1059b32364dbf73ef98480e0e7bb97d355ed91f88b8e66db6985d553086d944f', '5d9ea2ab3eec195aa10d8c76885f7a20147e158459e8073fe640f8fec8037079', TO_TIMESTAMP('2021-03-18 12:24:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '104');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '4e0f6576a0288e1526511c1e105bd14d4dd17dc9d86a0475d5bceca733b0061e', 'dc78f64a0a034410d22a87ff163273b5b732ed28f93c765a5d2d2359f6a1ba03', TO_TIMESTAMP('2021-03-18 04:39:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '117');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '4cd7ca77810799d37bfe1d941c5c68ced3bf226202c0265cfb7d1d2b08a443f3', '3282e1512ef6a0155016481657c1f2d2e06886c73a28a153ca3d1b72d219f7ce', TO_TIMESTAMP('2021-03-18 23:41:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '125');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '4fac5062e4c447e3c3b71863ccd371287f37a1c8947419d20142aed63778bc87', '273bd5f816ae7bded2c3e500be827921c7c334b6d3d66fe4ab90e13624fd1d1d', TO_TIMESTAMP('2021-03-18 23:42:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '126');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '60d803a3812dcc3829080d4e8b612ebef3687a02666f83cccc462426ecf9ac21', 'e8d36c25462f210523306bb190406423af95152c8ee6b96dd024847240137f4b', TO_TIMESTAMP('2021-03-18 23:43:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '127');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', 'b3ed520c342f2259b827a0c48a4453dc7330b7f4a83e1421825a3aa7b22862a1', '877e3b572248668654f45b7c15ad664d909f9b06ff661b4610003c0f33ed3c4e', TO_TIMESTAMP('2021-03-19 00:00:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '128');
INSERT INTO "SIMPANDA"."authorization" VALUES ('43', '2016ee742cf5236415a78ed0d5df670263e4efd968ecfc9fcee574a266d65b21', 'e586e10632d68eac6851b034464aa0956ac14f08ee63c4a6c997de133c4e8cfb', TO_TIMESTAMP('2021-03-19 00:50:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '130');
INSERT INTO "SIMPANDA"."authorization" VALUES ('25', '92da98db45d3f01257c052840cd795683e8413409ffed1bfa6d92b898aefdf5b', 'a2cb80b46e2dbc24d5ff8b1353f8a2b6f39dbe6ed3c8e1eef46326341626c294', TO_TIMESTAMP('2021-03-19 00:53:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '131');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '7ff6722813a9c6aecdae4564dd22bf43cfce9b27aad9a1ecb3b23c1d53b26a7c', 'fda65b19654e6b969d08907f3ca79257b69edcd4c79e4b90567c5da15827fffe', TO_TIMESTAMP('2021-03-19 03:41:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '138');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '9a7f983a0ffcc277b022e6394cc3057c34e64a560d724729114b80c993b45183', 'f9e1ef146f81f57791f5742973539605feb7fae6d1ee05bc5f5f2eaad8b9cfab', TO_TIMESTAMP('2021-03-19 03:57:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '140');
INSERT INTO "SIMPANDA"."authorization" VALUES ('25', 'd6bb74e5aff63efc655ede52f471f74f7701db6bfcf46d5cb17134326f251295', '7dd210d8f76c6db06eb505bac9818807c4def31e7ca0d0bc7a3a2bd303f35bf5', TO_TIMESTAMP('2021-03-19 04:01:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '142');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '1032b209c109beac01e2d5ebce33d163454cf899ffb1b6e084bca75eeba760c7', '2d60cb068128a4522d5a106d3d7e41d3ac43b957961ce492142c172a85d65c78', TO_TIMESTAMP('2021-03-19 04:34:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '159');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', 'fccf01b08ce1403ca83c06c357c52b476ea37093c42204652eb2bec1e4984b81', '4e3910d4032bafc03f010a7ebe858bd62502cdf59e11693e49a6692388f75bdd', TO_TIMESTAMP('2021-03-19 04:38:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '160');
INSERT INTO "SIMPANDA"."authorization" VALUES ('26', '54adafe9a0fd54d7795a6792bcf6ae8de29b41f58a4aca38c792468a14bd324a', '041e8da58c34b37330abf2fbb82dc2d23ff8bba0bcf6b3816aa89da170984cfd', TO_TIMESTAMP('2021-03-19 04:41:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '13', '162');
INSERT INTO "SIMPANDA"."authorization" VALUES ('27', 'b68ad94bb823c8dd17c5d1ca2dcc7657fd87741391933d6e67eefac008966771', '767017486b4fd4d5b111311c5266a4f71eec215ca679a6d7dd1a060f45b054e5', TO_TIMESTAMP('2021-03-19 04:41:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '13', '163');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'd741357e5a599eced65695d0d4ea5229b02ceb76d64ba44211d00f048d1fcb8f', 'b4069a4523b6c55c72a8a09355a6ae1b76b7ff18ec5f2ba3838b16a0cde3c4f3', TO_TIMESTAMP('2021-03-23 21:39:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '176');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'ba18ee729214046d1f04896db9a0cf910dc61c48a4059bf69ac1c25bfef5b8a8', '65a0cbaed72eb5864158a148d57b3e65f0b041857d5f006d53f863ea06486a17', TO_TIMESTAMP('2021-05-25 17:08:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2451');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1077', 'a3dacbb7210cc1a89d6a4ea8b78e1d3c65dcde9f848de269c99be94aead32a74', '09bca0d4e8c9cbe32569eeb5476d549bc2e5a577e0cf937d00815f5d0b7280a8', TO_TIMESTAMP('2021-06-07 17:39:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2582');
INSERT INTO "SIMPANDA"."authorization" VALUES ('23', 'efe02d95c60d5e6c1bc438c8ae37fd68c49bd89c1547fe2881a2534ed59c1f6d', '0fe5cbdb0636857bb89e67e35311e7b9c5afa8746e3631a6be611ae7d09f1fcd', TO_TIMESTAMP('2021-03-15 02:30:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '41');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '74a9e8e65c1690bd806019dbc741ff3056010ea8b5adbf69d94a9ebd6fc7fca4', 'ec929cfcbd6c47e97ed3584ded7d1478204c2e5fbe98a19689c3fef9d9933b67', TO_TIMESTAMP('2021-03-15 14:27:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '53');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '1b9e168567f7d9d1699fae57a27f798c748a6e9c96929cd439daa64d0d070473', 'd28b6addb463792cf27b0080054c542271f81432151c16c46e049728df2de9bd', TO_TIMESTAMP('2021-03-15 14:44:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '54');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '918b7d47fb6df969ff62a9b9b9b670c78b0304d75d202973f66bac3ccc268966', '17b79fe0700cdbedabdc731da6f0a4cfd7215999dfb1a67772af6954130a10b9', TO_TIMESTAMP('2021-06-07 17:46:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2583');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '906b9a2534bbc6bff779706d8e7d3541f1e24c068fc9a3dc86a9823087c421c4', 'c3a442f920af0865cd8f107f497e01ed8a1f2c74849243c2539739e732df02b4', TO_TIMESTAMP('2021-05-24 11:55:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2325');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1077', '5fafde996120c16174c7af3cce76f836e21fdcc3ccd6f52088af16ef7ca5518d', '1bdc65073f9c81726f41b4e41302a8e222120586bc8b862cb4013773d1e33d96', TO_TIMESTAMP('2021-06-07 17:27:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2581');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1077', '4b80dc876b8d502a27baa7a3d2519d69739e75ea14eb7fe54c47341098c4a354', 'e89fb61d07ab9025a8d88febc2b03421ae838b8273fa5f613fa8ad43882db0e8', TO_TIMESTAMP('2021-06-07 17:46:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2584');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'e0d810739b47ecd7bceb67f9fd1005de98053ebe2fb10b8f4de54578c22a2f74', '1f488a445bcdc7df1bd1792e120abf9f53f084b9411289b9cbe95e0c31b664b7', TO_TIMESTAMP('2021-06-07 17:47:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2585');
INSERT INTO "SIMPANDA"."authorization" VALUES ('42', 'c09ffdaa13b5a790745962db280cca9770406462f1af86d3f21afc6123389b5f', '41e3ae94e59f4f4b928044d9097f1c2e89a89869754c11928bdffad1bef528a0', TO_TIMESTAMP('2021-06-07 18:08:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2587');
INSERT INTO "SIMPANDA"."authorization" VALUES ('42', '6ba207a5fe0d732ac2a4bacff5d71422e27fcd785540f58c7cbc37e8958e10a4', '0f6128bfaadba8159690168a5064f9b2acc24dd1362f3619a08da812bac518b3', TO_TIMESTAMP('2021-06-07 18:14:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2588');
INSERT INTO "SIMPANDA"."authorization" VALUES ('42', '8c3c18ea2c87f71fd9e9881bdacb55218efbea43abe15514a82d3582d2925a1a', 'cda368bbc25c3046e8a8f2b7dfa094f1a988b49e70f75da49fa14d8773f50cd4', TO_TIMESTAMP('2021-06-07 18:16:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2590');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'ab4837d9e24dc78ac80339a3b859e5a9fac7ac685cdad1a4330282cdc9771668', '85bd438382e9ed30ad1d3bdbcf71cc3d3cbba3eb9a931448792c58311a1bf4b4', TO_TIMESTAMP('2021-06-07 18:28:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2591');
INSERT INTO "SIMPANDA"."authorization" VALUES ('25', 'b8e765bd7474c70184962dd1e974c86e9ba618155824efb68942ff71dbe4f0ef', '9f45dc91a7dd94ed465c6a0c0c20fffb724cc20b1838ab3deefa24cc843a3735', TO_TIMESTAMP('2021-03-19 03:40:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '137');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', 'af34d46738813b17d684900b19160fd219cd22f3ae494ae7b41bc9181d92ad4f', 'f11f51ea0e6206ad051bc71157ca9ac795f73bd634940f761ca3c783197c153f', TO_TIMESTAMP('2021-03-19 04:08:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '144');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'b70ecf02af787b0f66853c70604fa1d71732aeac7e64d20add6b835c50160e4f', 'e7260188482c46e2c99f51a140c09b47ba9e70c0baedd23ba72e6b1e2f56e417', TO_TIMESTAMP('2021-03-19 04:31:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '157');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'b2e1ee821b5c639076bb1cabf962d6cfd638c54ce2f5e23f8f4ca230bbe63b1b', '81c1c2099207d28390c70047a8646e6327c48e8d38ebcb9be949c6ff0d5deaab', TO_TIMESTAMP('2021-03-26 11:11:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '192');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'd84d356262d9be193a326bc3b4ea1bd7bbb019333008bc4034b8ac25f750744e', 'cfa037c8b38635bbd554834b199a2bc2afdc1dc71ab740ca77f6249bcf940140', TO_TIMESTAMP('2021-03-29 08:21:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '203');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'fafaba472bc051db0c71dbcb1fed0266af05ba1138148168086e8472e7cf5ede', '26a2702e5269499a2255471ccf234d466fb436025f3a90fa8f22da7e41d45edc', TO_TIMESTAMP('2021-03-29 17:09:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '211');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '8d9ccbab17e55d73123603144f413121d3301b1f6b746cc62f6f5477098d0fb6', 'c9bb5a88caaf260981614302593da3f03959043746dac8e909698082302d60e3', TO_TIMESTAMP('2021-03-19 04:19:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '147');
INSERT INTO "SIMPANDA"."authorization" VALUES ('25', '503894d250a0e57ba9fdc8b09c1159389a0080dde19480256a25d948bbc46254', 'c605861140fb3fd484afa189e135873987aa175fdb767498b2dc5a6d12751532', TO_TIMESTAMP('2021-03-19 01:21:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '134');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', 'a96464105752769bd4360e47f8c10aa4f6e377e4f229fad8275a160faa9cba21', '088a08e7251e8afb38eb098327f33d6127220ffec1769ccabbdec1b7c75d64ac', TO_TIMESTAMP('2021-03-19 04:20:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '149');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '85addc406786a08f366b69d343c11f1e067116a6e26be6f7f5fbfa37ff65149b', '857956279067738811f635b60755e74daa33fa7c6fae84143619e081ebf64df9', TO_TIMESTAMP('2021-03-19 04:24:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '152');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '2ecc8001d38c2e4b51fa609d3971b33b1bc129eff9006db7dbc86fa22b0233a6', '1d7ea305d1dc68fc419a86796bee07cf6a3c4c907ef5af52ff2a9796bfed4c9e', TO_TIMESTAMP('2021-03-19 04:25:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '154');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', 'c392546c3d8f9482c72e88bce49c57775162eb81fb839340fbe4f5e8eb3c6c1d', '0862bada609e6d38bf609ded9427227a94cdeb0f8f7c46800f0a57f728096a4f', TO_TIMESTAMP('2021-03-19 04:41:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '164');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'ce9afb2d7f93beb86472f7f34bbdffb635dc2a0578c52677534d43054af5b005', 'dcf9fdc41d85c07f8c48cacb564b8c5f2e5f9f2adff6a806053133b176820a7d', TO_TIMESTAMP('2021-03-30 10:52:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '226');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'a2c3f681350d079e4a4b4beeb1630462dbf87043978382562500f5beb0ff67a6', '5e62b42c8e85b3d05528a4dd48c48ac15f4dbf3d361c3c333ef6b7f9c858b607', TO_TIMESTAMP('2021-03-30 04:31:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '227');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'f864661ce32daf74493286f1bbab80bd6c7b41629221268e6dac4c5730f5b6c1', '065818a2e671eb69e47cfe6f1ba092f4e1ea4809be1cde1763957756959fb7c9', TO_TIMESTAMP('2021-03-30 05:50:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '234');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '5a29bbf20f907d7d3c0a80b519714380888be326358048b670b7536c32e8eb0e', 'b57d1765202a464c26c1633c0b29477efa5558d3d9eb1a497bd5b8a56ff439c5', TO_TIMESTAMP('2021-03-31 12:15:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '235');
INSERT INTO "SIMPANDA"."authorization" VALUES ('24', '401ec5ff246ea0b0c8cfe28a6a4878c42ec93056bbb9ee6a72f7818970a18302', '1192d5d8126ca3cf106a44a24f3c9fea22f648d473a702d292b282e82c93455f', TO_TIMESTAMP('2021-03-31 01:34:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '9', '239');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', 'f3f56558d6f911a7ee831947a4417a831f9d53f289f54065180c381a2d2074fa', '18a09384a47316945f702c3fe7f68acb9e69d2383a0703522058630617007cdd', TO_TIMESTAMP('2021-04-01 04:24:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '247');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '489ca41f425ada4f43ecbeb6cb7825af7b68d59676340801c29a024567e1e80d', '662c0fa3c42980275741edcbd7a058069f04c19fd819656e6f22a5b7843af5f0', TO_TIMESTAMP('2021-04-01 04:34:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '249');
INSERT INTO "SIMPANDA"."authorization" VALUES ('8', '09e776ca44524d668bdb20886351e23679632d67f21a258554691152aa6cecf8', '4b51db35ab4c57e2877e7661654f65b14e69f0b4bfde3e66cd5591b9c23afd6c', TO_TIMESTAMP('2021-03-14 23:48:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1');
INSERT INTO "SIMPANDA"."authorization" VALUES ('10', '0693562e5b7e545c00f70c440bb53e32a4fc2adeeb78cd072608a52a2fc96dea', '5ad85663cd09168c16d39a47fb4f5215dda74c7f295734fbc7b606077c2b9c94', TO_TIMESTAMP('2021-03-15 11:02:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '4', '5');
INSERT INTO "SIMPANDA"."authorization" VALUES ('21', 'c4207236d5f3fb727ec39f3c9b24deda0536444c0df39f71b9083b2ef52b48e7', '92be4a5bcc3f8a8841311bdafe3bf3409659b59db24e91d68edf1c3e5d9b5688', TO_TIMESTAMP('2021-03-15 11:07:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '6');
INSERT INTO "SIMPANDA"."authorization" VALUES ('7', 'f5a60e3a29f0d193ef8e0c1c4ea085fe925f2118bba27bab18b85a4bb2d3d910', '668b1f2524632454712074e4272c5a8ea657b80183e50623c0b6f7c4a95e0c69', TO_TIMESTAMP('2021-03-15 00:22:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '9', '7');
INSERT INTO "SIMPANDA"."authorization" VALUES ('42', '32779ad423cf48921a19a2c94bbb57c99b545c76d8c77f0f1d0fd47aa5df813d', '1d6337e9c00b4d17abe43b472f02da26dcac0641ceadfd1c12f1c87e94912785', TO_TIMESTAMP('2021-03-15 01:53:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), NULL, '30');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '0463157616e5136a14b1e1a317b637eb71bc96450bbad19db243a2a967033841', 'dd3fc6fd12ee6e0762d35af8510749625265ce00febd01e777f14f76341aad17', TO_TIMESTAMP('2021-03-15 01:54:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '31');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '9cc6627cbb7632211faf493abf3f29a00077c73bb52f0f114da670712d300002', '8f31b15e20931a28432c47f2846ac58ca639e18de07af7e26b2740fff8186266', TO_TIMESTAMP('2021-03-15 13:04:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '33');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'b991f1cacff7d64b295073bd3b0224ca540c48c3dc981e4f89d8bb21456cc3e8', 'c9847f18b057a0259080317cda555deb1c9a824ed3ca27e40941f2bd1da1d896', TO_TIMESTAMP('2021-03-15 02:09:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '35');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '76d23092558f656ee0559af4b611aeb653ac516a14aef5e21c104eb17bc3bb0d', 'cae7c03031c9c0b8e877f3d11766ac2a30ee01abbc9b99b2177b4b14ce9c30f1', TO_TIMESTAMP('2021-03-15 05:13:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '63');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '2cbc5406eae0f33e2382a9006e60611f48c3558288eadaf690a3acfd22809458', '6d196e7f02448dfb082f5f3a64fc497b37a67d76b70255ff9a3bc0c32fc82833', TO_TIMESTAMP('2021-03-16 08:21:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '71');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '327f6b6e09bef6aaa7108dd11d9bd0e312cf30646a7f27ad6999fabbfbc20bfd', '4d32a64afeb989a15165318b41c97cc8838917bfbbf677401dd4be63d4f540fa', TO_TIMESTAMP('2021-03-15 21:59:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '72');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '2fded7e820b038bdffab7f59c80d71d3cb55b0f9bc14d93cdcd13336ec89a7ee', 'afbfad9c936deaf08ce4d8609d000f01f68e1a3a5e8494da09ee351b95231afd', TO_TIMESTAMP('2021-03-16 17:01:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '78');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '6aa9649f6cb23f2ffb789ae19b4f9bdba43095a2f5ae329f468ebb43f5a4385a', '4a698a2db99f3c7f4ab0626e8579ae6cafc4a30169e4127b84f17a645aa11ea9', TO_TIMESTAMP('2021-03-17 23:41:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '94');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'a30bffcc6297667363a47f2012d269106c34d73753d76051e4cbdd2c75dfda57', '463c21cf158bf2c31b4198eefdbd5b7bf99349495437d43818df778f487a3f8a', TO_TIMESTAMP('2021-03-18 10:43:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '95');
INSERT INTO "SIMPANDA"."authorization" VALUES ('11', '7b0abce8492e637c213ca0c8d749232a9a743d21acadff54274651f7e0bdaec0', 'e22e16e6cc54cbd7a3daf6afc4f77428cc7005dde075efaf003aaa70c545dae9', TO_TIMESTAMP('2021-03-18 06:32:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '13', '119');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', '382b872f33e8ad9eb1cdedcc09e0b90fbc1ddf7d903ade7b38532954f02947c1', '1d211eddd431bcfdfa777f417255a93158cfabcfadc331775d21009ae7805d33', TO_TIMESTAMP('2021-03-18 06:34:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '120');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '3f8993453c4fc19837663020daaad8c364d30f1b166ac2da75ec638f7a69c736', '90314881441af2c54240eda27e9fcb7619baf72c4442735a9bfe11f8c3093fb6', TO_TIMESTAMP('2021-03-19 06:19:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '124');
INSERT INTO "SIMPANDA"."authorization" VALUES ('25', '9eef5ce9419419ffb5622f50e24e5b35d9228c271495399c02fe99b54c4cad20', '7f09abfa3f4f115385085474227490af06e1a274a6bdd84d53d9f465f94de9d6', TO_TIMESTAMP('2021-03-19 03:29:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '136');
INSERT INTO "SIMPANDA"."authorization" VALUES ('27', 'ed19338b121ec65f913704caf53def9ef0dee97005950660bcac6722f3016200', '454860496f6f1d8d77766a844e6eed05857a26963b165304d4065afbb9d25dc6', TO_TIMESTAMP('2021-04-05 23:02:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '13', '286');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '2e92b130d3e0de5bc80f63470ce51a8eff6a1c29f05ff81255f526f96d916deb', 'db11313235a32b08ccfd5b0d2a5dbccd037c5fde2022ad176882ddd7be09b62b', TO_TIMESTAMP('2021-04-08 23:44:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '320');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'b0a0e52e6ce61cfc7852f0e0a8b264e2667a1ce04fd22286397518571c43e4ca', '2c41c8debcefbb8d32962660f797c1ad11b914bb6739ad8ef86e0af232e8743b', TO_TIMESTAMP('2021-04-09 01:02:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '335');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'acecb15bc53c10d9fd90e854f828f77e2bb0d0ff24b5293148b2ad9af9bc85a2', '53f7a0566f7f0eef621cbbd2edfc9a6564957c700ae0ee3b80070692450587fb', TO_TIMESTAMP('2021-04-09 03:37:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '337');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '0247557b8c2db1bfd522a349efe4cb045ffe6b4a1bcea885caa69056d36747e9', 'fe6618698bfd2e09465f5a43618c552366831236da8f14b524f4ca0270a13104', TO_TIMESTAMP('2021-04-09 03:38:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '338');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1001', 'c2556d2f831763c9b4a46d4c6fe5faa80db7f33a5fdcefbd5e197f658dc47bc2', '650452f3a47a79c9862745acc5e14d62d4ee87e3ec5a5d530b9cd302fd07318b', TO_TIMESTAMP('2021-04-09 17:05:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '356');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '148f78b078454670b01650d440e586d1d4abf147ebef752122fc4295480ab6c2', '06e0bf87d0b6a431cf48584ac695545db7c24411c7ed019b04ed148465b0b071', TO_TIMESTAMP('2021-04-11 23:25:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '365');
INSERT INTO "SIMPANDA"."authorization" VALUES ('8', 'd80b5444d0d3969eda7ba8d913914eb4152929a9363d60bf2069cd54eadb08ec', '8fea82889314cc2efe653b054f73ca6d122d7e64db2863ab4870ff07a0d898fd', TO_TIMESTAMP('2021-04-11 23:30:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '366');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'c51af6d2655577d1d6d8e91ce4c4015b7181e718a02dd65f5cdd4dcb6f2eb5d9', '9a62fbc6611a787c962efae41c25f10c6ce6111a5a4548861cfaa138203969f2', TO_TIMESTAMP('2021-04-13 00:30:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '431');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '3f09417ff8e32391172e3add124dee01a4d9c132fe915f406049556d935a687f', '94358188e65836485ca91afd2d7ac6d4970032535e5b33dff96bd2ddd21152e9', TO_TIMESTAMP('2021-04-13 00:40:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '435');
INSERT INTO "SIMPANDA"."authorization" VALUES ('29', '087077e818239eb3b546758d4730329673b3ebc13a2fc32bd8cb04c7682b4d17', '02bd1805b5d1bfcb506ba826f0d1f653be15e0dfceb77517c19bc354ae4f6bf9', TO_TIMESTAMP('2021-04-13 00:49:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '436');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'e8d10995a9488a491eded9aa2f57e3ee9b9f426545014630be2c0f58ddf09719', '96c253f74fa19915b8dadbf3873e88372171afceb23ead2d8011475a0071be17', TO_TIMESTAMP('2021-04-13 00:49:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '437');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'b7711399b93397379da6914b17bccd2c51056da390aac6cfb018fc5e5fa498d4', 'f9895f67c127d3800dd58a2f90f40068e2b416643149f4d6cd81891e511d3279', TO_TIMESTAMP('2021-04-13 04:01:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '441');
INSERT INTO "SIMPANDA"."authorization" VALUES ('27', '4be67b7a44e437d77032495da4d346e71920142057c8dce8f97422def0633af4', '3ea820eba5515366e7805296b531819e382e36b4789d5f9c11f9503b6599090a', TO_TIMESTAMP('2021-04-13 06:20:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '13', '443');
INSERT INTO "SIMPANDA"."authorization" VALUES ('27', '7e0f2e1e4692db46cf96f93f67e0418a3b30ea64a9b82bdc44c19f99a755de23', '4b709497942f0b82c6bf41fdad783e9a2daf137be37549580f6c357d83c8d594', TO_TIMESTAMP('2021-04-13 06:22:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '445');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', '598aca9ff329bec0c5633d48473f4495add31984fe1c15eb6cfb01baef772425', '5cd6f2deb12592c30cad8ba316f41d01410ed2dd1eb92fd07925017b4577a4d2', TO_TIMESTAMP('2021-04-13 06:23:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '446');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'b68d5bc517f671566066ca2bfff4ec40ebcc7ac99178b6924fb76851bab53986', '574083bce47c84e6ee077e8b6681d65b5826e9a0ceba7a813465b0e9839804aa', TO_TIMESTAMP('2021-04-13 23:51:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '449');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '5511bdb2fa291204393e488bf28fe531e8a027cdb8b724059473e16a533d052c', 'b761a675d15db61344b8a070a93060dea6c9e1ccded696e9d4aea3ec815d6c97', TO_TIMESTAMP('2021-04-07 04:34:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '297');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'e4928032bf8a9d40fba5f1e11f6972d5a94a46f7a33c3b6debf6940c0210307b', '2d65fb58cd8b79d06ccd3cf3c83d66e20852a05c0793a1acc7403ca35c918689', TO_TIMESTAMP('2021-04-12 05:42:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '415');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1006', '729ff3558e495945a2fd8deb3757c515def356de62b53b26f71934d90aa16d92', '541fe43fe2b1e0d040226c2e8c4c22095ce9e24e3d13278729ce45bf22fc07e4', TO_TIMESTAMP('2021-04-12 18:17:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '422');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1005', '45187eab097b6e3a20cc99afcd4a6ce07719ddaba01dc5a49055d35ba70a2f0a', '99850c759c5584c7cc51b2b8d18b0ceef057979b9ff202a542e5a0a08211597a', TO_TIMESTAMP('2021-04-12 18:17:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '423');
INSERT INTO "SIMPANDA"."authorization" VALUES ('40', '1ab93f2b7b4e4b48a45f8b0cdd6a0042b694e0c12208d8028722621fce454419', 'bec0fceb28599ce3baa6e8b43c034253713ffe85b8113d1e513b2aba0b3410cf', TO_TIMESTAMP('2021-04-12 19:52:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '426');
INSERT INTO "SIMPANDA"."authorization" VALUES ('39', 'c6678cae8165badd598dad050ca3feb9383c967a5f3497f9633d13d1dbc25b26', '5e37122b76cb85f08da61dc6f3e8e561b8a275419f16cc57e6bfff8bc2bdd98b', TO_TIMESTAMP('2021-04-13 06:27:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '447');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '3e830409d69a9ab8cb67972a31beb520f69e4b8a563224c3e4df37356abfd83c', '2fb6f8a5b9686cf1d4644bebe2c623ab0a11c8a0404eb279db116cbc3f788666', TO_TIMESTAMP('2021-04-13 06:28:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '448');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '66c33e68d0740c17572efc6910571c25831478191e2078b50be9530de21f8dea', '96f5203dca1d4e98c3c72244e6828ec4d2cdd7394680188d2fb4fe281229735e', TO_TIMESTAMP('2021-04-16 03:20:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '483');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'b6645e6ee1c095c629a94a71041b9ef27b380fd9502473dc03cab0b66451af6d', 'ca08b6fe597c2535f61595b337fc169192607a041c815e0c5d3262b103b5ffb4', TO_TIMESTAMP('2021-04-18 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '507');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '512aa886f168b655438352877dbe3bb5ab7c5645bad9f4a106ff6ecd61da69d0', '43f3feb2ae5fc4b2ff76d558b8b53dbd01835efb5f55cf6e1dd4cbb52a78492e', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '511');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'b59f61ba422fb546905bbbfa4b05a30d1ad88c2d1c8da233d86eb24edee4188a', 'a4450f6e87e8ef4c3554cb83fa41426f00631e6cf46339ebdd4666d4fe54c173', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '517');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '9423b6e7e8e91a178631ba7132a9879c922cec19b3335bb26a03b9d76bcda01c', '2c0a443e1d54e035e9e490080aff8a96f782828187bc781e716d5ae70b55da4b', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '519');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '8a58f51f5474297fd189e6ff67ad1677662c0f0a75e7f202afb8e4a741e04bdb', '22cb2a6e66d351da260407fd9347d83aecd83634142681ff148312a9fcf5a6c5', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '520');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '5e838330090cc338d9966ff7330cb6c63d3ef46e86ec397758e0e162497ab4ba', '2bd0afe2889306e966d1a4524275279a0b2beac20a601153e79a56e976cf160a', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '522');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'a0b546f9b371151b6dec8a12a304996a368184145eeaf5c3f3d167ea0cb2bf41', '5058401c5179daf43ac2083ff5ffaa50f245016ed9fcd090d6a60cecfd73e638', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '524');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '3e43f6fd72f9fca65857445f946a6a47ed7c9adeecd2a742c18e06a99d66fe39', 'de047517ebde225fc29389401fce80dd1592598866eff190694b0ca72bf85824', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '526');
INSERT INTO "SIMPANDA"."authorization" VALUES ('43', '2f339f13d4f26c24922158f69e00f09ddf41e98fb4c96c98ea26a7786e7a2cb1', 'd762cd791924f8b43cfa9216087078937d28ce6c21fbaa76e33d0d6bcb603994', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '528');
INSERT INTO "SIMPANDA"."authorization" VALUES ('11', '761edc8ef454af33af9bdb7930088b3d0c335b3298a3d12f30169fb988324930', '0b465c8e8d8c627dd13fed85248a21c09f8c82af7963c552b5d3bce3a028dafe', TO_TIMESTAMP('2021-04-20 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '559');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', 'a633c7240aa8709ffb266473e25e26aef2337a995c3e8ebb9f3772e7d6e92eba', '54e9a40b667412525be9db8bcc0d626b3fc909f94279b67d45189350c044fca5', TO_TIMESTAMP('2021-05-25 17:30:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2459');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '30b74960a38d384ec01226a2c8da160096ed53d5e18b1280714a3018aeee3f4b', 'f8ef2a2c9c800240280653e30506a8e284374523b59032fc5bafb2b8bb632456', TO_TIMESTAMP('2021-05-25 17:30:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2460');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '7d46f3c2c87380a5ca5c0c461cd91ad79a8d9a3cb6c22579682f8a4a9c72bb37', 'cdff6611a56099e05c89315910c454596fb67631f13f48b56ea921ae3c188793', TO_TIMESTAMP('2021-05-25 17:32:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2461');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'a509255dd316b0ec32646157522f3672ec883bdd4c3aa87cb0d29166c19658dc', '3a8415979807e13b7ddb806f079bc322a66d5668388763c100bb94476c3cb8c1', TO_TIMESTAMP('2021-05-27 14:51:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2466');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '77827166cc7f46130638722ec7b4074d59c12ceb12afb5450660928f1b122b74', 'dee494095a7feda2fab8cbf7b19fe66489c5d93bca56b266aafd9d6011600c74', TO_TIMESTAMP('2021-05-25 17:34:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2463');
INSERT INTO "SIMPANDA"."authorization" VALUES ('6', '46cac185386473d2477717bf293734a0126cdacc573f48805f75d6b04cd8fe80', '72dadf9b7c734d7cc7df91a9fdaf850ce163f7c3f004db51b926ca8392fe7d69', TO_TIMESTAMP('2021-05-25 17:35:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '2464');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', 'eb612f07552755dee7279d53ad59a578406974608c93facc1d0a27800a658c97', '35b9d6c1c5e1e114559daea1bf13f9b7769ddc42045ea185c5df9235cc4d38ce', TO_TIMESTAMP('2021-04-06 23:08:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '291');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'bf61693ea495bb0d1b130af8d5d5c6156dc36f30e02fa32747887c7c57111bcf', '7ffa2c24511381a11c305775c472e26086177f13a661b3e9dc007808dc59e430', TO_TIMESTAMP('2021-05-27 13:34:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2465');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', '7aaf6ebc279d223c26ac04bb061d2632a5b0691eedc00c8109eb9a102b468553', '88bf855a01f7f44e0b9b3955d9d3c6ac7256991278793fb8e7fae262d66e76ac', TO_TIMESTAMP('2021-05-28 10:29:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2470');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '17fe3bc7cc09cd70480a7961c4b722d3ee9e04b38451f988415c9bbeae19b681', 'abf281ff1ba535d407131d9820648020c3323fa423e2a4017e14f4eca280506b', TO_TIMESTAMP('2021-06-03 09:52:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2535');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '83f73011296f7c2b2396517667771a292743926dd6866643ad2bdba269468ca0', '0cbeed1d5dd760a7d38ce9059312dcd6b38310650cb39fc06c87724a7fa5e8ee', TO_TIMESTAMP('2021-04-08 23:58:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '323');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'f0075d7b9f5dee2c95f3930418f93e91339b6c4ea7dc297699700cf07d13aa2f', '6b648f529caabdf232aff41d4c077f164664f59e911245160b974f42d0466968', TO_TIMESTAMP('2021-06-07 14:19:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2566');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '3ac30fbb2c7063602366a0afe4fdd553e6903dc61ec348ad7ef811ec648629be', 'c77b5c84ae88dd9c1e340c61a5f0a34ad82a80250b49428b20d97583a423d163', TO_TIMESTAMP('2021-04-09 00:10:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '325');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1001', '9eb5e8aec403b364900d92a1a3c301c1b3fd89bf13554ca2468a2a23e3f1d7bc', '1cc907c1d95e7ac506b8390449fff5b30799f86766db650667c9bf27e262dfae', TO_TIMESTAMP('2021-04-09 06:07:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '357');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'fbd07facdca22c5d6ddc2a75dc3b69c2bb31e7c3adb1970dc4afb4985edfeee1', '9d3cf1cd6979a3e47c088c49c57f8a81edd2e7425717b5a4ff49c17e7e769bc6', TO_TIMESTAMP('2021-04-09 08:18:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '360');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'e8787b45bd133e0c297c498475eb59a32e9edfad7ed8104f9e50685aa3100f69', '0e0b90b8d599ce8847a9e8afd95395ff353446643b209819ef3e15215000799c', TO_TIMESTAMP('2021-06-07 14:20:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2567');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '655cf10a396c95b6b810e3d42a8b743cab7e115ed7aebedfde0de5db228e5b7d', '68d5edc39e6ccf166f4cbaf2ed09a621cb8283235d27dd5e9c90ab5167be3adc', TO_TIMESTAMP('2021-04-09 08:20:45.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '362');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', 'ad521d8bcd284b9986fb979d7dd0ae12e46533aa7b0f7af1cf646d98e2fa6637', 'f55f417ba0d0b372843ef43a29b5d12dff9b97e301761f698cfeedea91d4827d', TO_TIMESTAMP('2021-06-07 14:23:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2568');
INSERT INTO "SIMPANDA"."authorization" VALUES ('7', 'e4785518bdd8b4082a51e862d888071fc4684465263fbafbd2ac97ff8e9edeb2', '6fe18b7c3bd2f3d20bec8fc6119bf7f89d0b3a453739301d137ff8e7c6d61105', TO_TIMESTAMP('2021-04-12 04:13:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '9', '391');
INSERT INTO "SIMPANDA"."authorization" VALUES ('8', '1384f1f048f32d059eaa9870ea42faee31246e49019c4555203c439c963e9846', '0abd9cdbe1726cc1bc8d87d62ba40a8269ad6ac2d2ad6cfbf5419b93f2b67dc1', TO_TIMESTAMP('2021-04-12 04:14:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '392');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', 'e5f1503dda5a87bcfd22e0a2e0b1c84eccb99e2789244a3ad63778bace5684ef', '75ca09a8dc2ee355ac0ab906d8bbc6f85d1bf97031940f71882bc60d75973d90', TO_TIMESTAMP('2021-04-12 04:14:45.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '393');
INSERT INTO "SIMPANDA"."authorization" VALUES ('10', '33da4307b66b29984893b38e27cba79f066056bc6d19ca8a88088f3e353155ea', '169c5407448cc552ebdddace264165deaf7a05ae745ece5e65d73ece82869a5a', TO_TIMESTAMP('2021-04-12 04:16:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '4', '394');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '235a6faeb81de1d47a0259de0081da970f56574a5f4f885dd4af315c21fc1171', '4a2448da0c2e1eda4ceaa3dfa74b4357955befcd28fcc6248401414830427243', TO_TIMESTAMP('2021-06-07 14:27:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2569');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'df4f5c5d9655e436e4e649a03689e16e3a76df36a1e922f3efdde0de4f9439ac', '0e20ca1bd07039dd6b2cdad97fa9f49386d51ad6cc1645c0135676e4e755d616', TO_TIMESTAMP('2021-06-07 14:45:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2571');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '49ddd11450e9cfb22eb683be2ff6c804dd36e03588c753172c9eb46efa5ecf45', '28252f55e4f04608912bd42e738b4481d435b030471b0a64d64ba9c0eb10037a', TO_TIMESTAMP('2021-04-12 04:20:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '399');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '759728bf0db12fb49166c00f40c47c61ad9ef002816985281085ae0e72fd6107', 'ec94955ba0f1a61329c52dfd5fc81b07e6ad69c12cf5fa3cdb8027d22f6714ce', TO_TIMESTAMP('2021-04-16 06:42:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '485');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'ee799b62b6fb6a1a25b1627ec7af448437c0b132d78554193094999245a42a39', '3b70415fe36245f5b7e819e4c084a59749bbace0a625e6112dba83473be712ce', TO_TIMESTAMP('2021-04-03 03:52:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '258');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '09b4ef6dde52f56b5f4400f63c354d4c10c8a8e146a20ccc21c6c0e5b24ea62f', 'b397ef3c2504457851d311f23f0ddd68e1bb78dbad541fa8c6178e0ebb3677ee', TO_TIMESTAMP('2021-04-07 04:41:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '300');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '92da1a7995d86058451b925e9c64d1401232589bb8e78bb4cc5b1a46fb97e6ad', '8fd26d054235c5e7de1adfdac1cf72b6e8477c1cc55d256952ff9d2dab093a9e', TO_TIMESTAMP('2021-04-07 04:43:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '302');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '0631b6f3ee2f537e462be882e6c75583b8aa4c4e684d36803342a185be06e741', 'bf37d87879c26869290290eedd94d3a62f1fb9676ca212dd48fb888258991774', TO_TIMESTAMP('2021-04-07 07:07:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '304');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '6b1a6859d2d667955c74cddeb85d2d1d7bddc36c4d9d9fa4898ff98c7c2f6572', 'dd143ff40b1630ce592fd4b690ca75960d161e1fea8b34dcbb8849ed7eaf0063', TO_TIMESTAMP('2021-04-08 00:20:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '307');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '2cd79c7a9acbded2ee9852c322a284c96bb0febfe0ad5afc217be831d7a12ed8', '5af1479f223b260dc9c533c8633094079db44de622f126f7fc7abaa9847b0043', TO_TIMESTAMP('2021-04-09 03:54:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '340');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '78d6801433c6b5873c6860eb370f5912a00dca1fb0fb16251f6c4d63e072f5e6', 'f798c41b11c5e050a31438f948d09aaf3ef29dc040c5d48d1fb85020555a9228', TO_TIMESTAMP('2021-04-09 04:05:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '342');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '76e59afb75c57dba16e3d32606d2a7d098b8b02cad841ce41938f19494a17d0b', '5132426769bbd82e2ceeac7eb751f6564307e11982b4308484196dde76b7b8b1', TO_TIMESTAMP('2021-04-09 04:11:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '345');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'b52daea09a047f5900d832892ee532a7d53be01350dc0f8532d15d574456cecc', '337dfdda9f68ed57ed58f0a9eb05632568c8a2132dbc90907ee2b2032c05dd07', TO_TIMESTAMP('2021-04-09 04:17:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '346');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1001', 'd8a665358c2ab13fe6cd9f6e7509463f0cd586e2fb3e0adb2bb746391bd6bbb3', 'da0bdd28a04029bb66d72cc6cd0d8d4e6fcb70bd81ef649cf63d2584f2b33760', TO_TIMESTAMP('2021-04-09 06:19:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '359');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1002', '89bcfaac43ea0769910610eced4bb48c1789c8c59013f0798bb50b6cb4e096ac', '7903519c35256e7fc958f132f0c7cb1ba3b08b9e3d9cde10ebdbf17d38b60e09', TO_TIMESTAMP('2021-04-12 01:34:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '373');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '87de84c691ee8dfec1889bcc6c1b58bf7692402605e7873bd4fdf8107911134c', 'eeb0bf0742838f3bb4909a0b86b5b87690dfc26bfe1da25a785eb9b81b644a76', TO_TIMESTAMP('2021-04-12 02:11:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '376');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', 'cf0a1aed8d64a3098f53d789b2671adcfa0b48c90d2af3e374b5aa50cc22d70b', 'c9480f4a2d18cf41b32ac41dac22ccf358262e6d68296d203a77e16a9619dc42', TO_TIMESTAMP('2021-04-12 04:03:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '378');
INSERT INTO "SIMPANDA"."authorization" VALUES ('32', '2d0e9b86c6f34480808af2498da89fb82765e2754e175e48f7ebfba6b5d65d67', '3f1a1daefe615b4099197f12a55ffbeb119b44358ae685c90a740cf05fb6c231', TO_TIMESTAMP('2021-04-12 04:08:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '381');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', '9a702d053ea2ef6c2b36891c993ce3273c76155029c3b44638889830b05fb790', 'eba727dabd2e3a9803482d89a951e1fd2e70163218115459ce844b5f9fb52f8b', TO_TIMESTAMP('2021-04-12 04:08:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '382');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '98393fcddc963b572973700cf9b334a509c4f0e345f317a0aab0a806149f2b19', '22c15746a26e49243b3547d66a200a9f003ad14c277921f40bcdc211468f283d', TO_TIMESTAMP('2021-04-12 04:09:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '383');
INSERT INTO "SIMPANDA"."authorization" VALUES ('27', 'a89abd5dd9d1d2535170b66e4f9c9b531247371134826e571cf6aa2020cf9c59', '57960f8a4f5f27ba522fa0d51592890a98c71383b66ef583687772728e490eb0', TO_TIMESTAMP('2021-04-12 04:09:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '13', '384');
INSERT INTO "SIMPANDA"."authorization" VALUES ('23', '25797e21b8bb79f4f1f389e848157acf839d9083aa927d62fde6a2e35c46f69d', '5ba1492b6cdcb1f50eb05433c84532f4474d4b69eb6be1d6cffefe63ef848d3f', TO_TIMESTAMP('2021-04-12 04:09:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '385');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'e732d09fc67c98abf101d808a06aa9da0e8a29e47462b71b7d0e15092fdc22bd', 'd47360a4a59c54268850a31f7eb02a94ba6fdac1acfa9e6e63fbe9aeda212c85', TO_TIMESTAMP('2021-04-12 04:11:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '387');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'ad0f0e5ec5bb3dcc78c9ee91bc1c6bd07012d927b66b019d9435e5cb3d1896ee', '9e2a75d81871387d81f2fbdf19c90a8ae9f78d69545688b0102547fe7b1e0f4a', TO_TIMESTAMP('2021-04-12 04:11:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '388');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '98df9dfa38b00873760c809eba1300b7a8c813e236f48d2e1f2976cb7bf603cc', '813898b11813abc73e199bba1a4e17e5e696267fd1e19730f68a7f6b3da81d47', TO_TIMESTAMP('2021-04-12 04:12:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '389');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '384e1020645e680c4e93c451e6283c5a1ffd0107a29265115d32d3758136222c', 'e1b0c42c74ea8ba3aeccf64cdc906387f34406fecd5e5871fb765b6228bad37a', TO_TIMESTAMP('2021-04-15 04:16:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '473');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '2e11ea55a21060bb9ac63da9d607a2971b45115a55dd56d46b2b9a8abbe49375', '20d3d4e83006da071d36041a8a2dd00036997d52bac8d61285e772b28c622bae', TO_TIMESTAMP('2021-04-16 18:23:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '492');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '34fd90f4ac3e3fb609577b7b083371cc0f0a187b7be7c350a9e484865e2063bc', '4f3680ff62281adb90e34618149983ea1d57adf14960317605efc6106b6b8435', TO_TIMESTAMP('2021-04-16 07:26:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '493');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', 'be7fa391ec7a779dbf933ba26007883d3be56e95da9d617a8b2637af10d7aba5', '696ed0735e8d10ff87f8600c114ea1fb04211140ac423c526f9b61c6dc48cf4a', TO_TIMESTAMP('2021-04-16 07:26:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '494');
INSERT INTO "SIMPANDA"."authorization" VALUES ('16', 'a85d89ad6582010470b0dff05326b4be6591224516090a5a27a8f8fe8e2faad3', '922d71022a6c13ea2312c54906bf6f781e84466bbea6fed6fd6af3415437e4c1', TO_TIMESTAMP('2021-04-14 00:31:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '452');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'c3f571b483d9c36c8aceda190b1e00acd6315e0ba9543b657032c22a6cdca77d', '349de68d1e7309c91946b8363ddc9e3826e23f6b2d7b5c7d908c630cf10889ec', TO_TIMESTAMP('2021-04-14 00:31:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '453');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1001', 'ade8cedcffa2e08272326156d1752a09a31ee5e7c612352ade1d6d608dc226e5', '1e5c5ffe6c484eb43a1d63ab11f69fac1f22892b8478d23f4d6c8b636b236378', TO_TIMESTAMP('2021-04-14 00:52:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '457');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '3e642a10cbcf9bfc4dbe2ce07d5eccb2c77665e7388647759234a33588f2f619', '548b933244c7460abbcf31e55c037c3cc81c07f42cd4177595f175f4e06b71be', TO_TIMESTAMP('2021-04-14 04:11:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '460');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '112e9c86b4f8c5ad5379aa243979ea75306a2be058b0e61d8546878d083e9cc9', 'fe50f721b1012366391005a7f6bf37d5d036b7b7929ae2985b6c3d5947311d1b', TO_TIMESTAMP('2021-04-15 04:43:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '474');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '562cd7c68e328d724f1ee53cecc9be59cc868c85f0ece17b27c86f360b27ca74', '95efb8488eaa5470cffb9f461c84244d2a8e6dcdc521c385ad6c1c6c0b9186a4', TO_TIMESTAMP('2021-04-15 05:44:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '476');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'd846fa30cce1e6d97eea27c702f3b14dd7ab6139fbe2366c38be52a47e37badf', '6b2889b29463f6eb2fd8cf782e113cf02b631d0334543c30953592df8a9dab44', TO_TIMESTAMP('2021-04-15 05:46:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '477');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', 'd0cf16c2901c69cf6b5cc13ed1c0b01fc9d2f140bb8e9531ca37b7f69e8cefd3', 'c2b45d578d92b51cac2dc4104fd6bdfe1a230ea67fe9e07480c9eeb2c6e3c0a1', TO_TIMESTAMP('2021-04-16 09:34:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '502');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', 'fab169176b0fee327767047b430d8615189a996a4eda6e2e07c77c20b203fe88', '69a6ffe9b2ed9cdb39ffeb7b40554c9ec0c1c71380970152e2c407cdfe7481b5', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '531');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '976b214d358eb944a1f49552f17767c2a7b744632897e6e1f92394f271616901', 'd39dea5352d6b995d9915829a547187e17db8a6029c7e8c7fa28ba9db09627ff', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '533');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', 'f3e5509e74f33aee8c8d28fb03cb9cac94aa6c41367f300caff22db72113922f', '0896f05d533151a4318a5b4b13b7033ad4588e3e7d69dfa5ef7c85c465b895ea', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '535');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '6d06153512e24f6438702371623db40ff23c34e0443071357921dc767ee69cf7', 'e6717ec32e9c8e7f837d39c8333625b51d234237af1dcd4f81dead5e10f8786c', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '537');
INSERT INTO "SIMPANDA"."authorization" VALUES ('42', '105ce7f1f7def0a8d4c9cbecf2b4830e16732542e7ec88b4f182234a5b5cc588', '3e4e2236f93725e979b1e7b644909ba5aee41a66289af621964d424cecd0e1de', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '540');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '80de8172a7d6e529cd51f6324dfe7244135039a01fc2377f2887df70d6ee1a44', 'a2d1c7da053f03f7fd9358cb4b1785406b482ccc92e47d911d081d53937bc513', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '541');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '5de322562abd8d87b7d3910352f1b28531cc54bf055a04f1991edb00d0eeb6f9', '3937733a31c87737f54ed97b7ef1f545ece1e5b08ad2669ff87164218f296c5d', TO_TIMESTAMP('2021-04-20 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '577');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'eb802af50636e57448f160c19c0ce86e923cfc47f2a563337deada4383a2c168', 'cefcab5d3b2fc1ecca3adf017308f016cc6345e844d105658f70dbfee2d4f0d5', TO_TIMESTAMP('2021-04-20 19:28:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '580');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1012', '5af2edc492b0f847698918e2b2a840f19f38fbd93f041aa63097e12fa8470cbc', 'ecc237c530bf53e31b8049d0a32b4edbb2c18bbf47f6e7c4ab376f0d13e9c64d', TO_TIMESTAMP('2021-04-20 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '582');
INSERT INTO "SIMPANDA"."authorization" VALUES ('39', '92ee4d158079b099c5e0a5f38e579f314c4993e16a86a6dbce4be83d7c5933dd', 'dabbdcd5420e667a5b10b9cb7000a758065f2bf22ef45aa8155836f8f2d68ef3', TO_TIMESTAMP('2021-04-20 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '583');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', 'fcc13166ead4259620706393bda0728cb081336ce77fdaba66ce9e39a135d8b1', 'ec3d378589098ef89559e5b64dafbc0a24983846d8621c17215ed127776b5b8c', TO_TIMESTAMP('2021-04-20 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '584');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '3fe0479754034df0d93a697f6b013baef6ed18865aa5fc79ad20911287ca9a58', '777992248b2a7bae0b65f83ec8a66f3b3b6d617f54986da5b6052d94d0fbb086', TO_TIMESTAMP('2021-04-05 09:20:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '261');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'eb72292acd4af9c573458bbd1ed1879d4cd1c1e9fee425370018556d3abf8b95', '5a42f3d8ad9b06793ff6a907a81bd055bcee8137a9e28e32a3e449317ff73614', TO_TIMESTAMP('2021-04-05 09:23:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '263');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '2bf2f8a476dee2dec35a4da98cb60b6aedb1a1b374e8764fd314bd1159955350', '34f6fa74905e0a8feae11351b38db6b26dfae7c14d4b0cb8f05933102aaa5807', TO_TIMESTAMP('2021-04-08 00:43:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '309');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '24313479cbe4f489e442099dbe1b4df84639a61ddb5cb99bf43f141cef0cf5db', 'c5af68559480b4d193d4a9f855ca0b294ab970f84becd3154511712ffc17d1c1', TO_TIMESTAMP('2021-04-08 00:44:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '310');
INSERT INTO "SIMPANDA"."authorization" VALUES ('39', 'e4f291341c049b21ed599cadaba2f118479f0170f90599e574b09e5126d73e06', 'f3de8ac81e72c3b550bcf4f10c5b7227e0e620201cec3f8ee9845ce6043578e8', TO_TIMESTAMP('2021-04-08 00:44:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '311');
INSERT INTO "SIMPANDA"."authorization" VALUES ('25', '18f4727c5c34a1d99a685edd1880c8160486afc9936014f98fa661920b5d299f', 'b60051441596d8aae2e15dc3b342b60753b0e5d295fa1823015e9b4738da1494', TO_TIMESTAMP('2021-04-08 00:46:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '313');
INSERT INTO "SIMPANDA"."authorization" VALUES ('16', '837202a3d5707c972f78d940c52147cb405a2613a9341d32d2ecf93bd27bac3c', '9b6aa2ecf38d4fe3d2cfeb9bd86e60206df546b660dfd381b003e5a0ee625f54', TO_TIMESTAMP('2021-04-09 00:15:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '326');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '23f30f95b3817f281e0274f52aedede01d3ae303e2694ae0582f3fa1e4a541ad', '6d2080a83c67384f7ae0ce8300f8242bd6f0e1467652b0d6a1e0f9121b937075', TO_TIMESTAMP('2021-04-09 00:17:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '327');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '330441b5d3d29367ba30f2a679d09c5536ff9888d1b90e76f2a35af45d1f1ea7', '88606ebe11739e2214c4f7b5bac3620d2e8773b67c59abff2b744ee7f15b6c31', TO_TIMESTAMP('2021-04-09 00:17:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '328');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '8cf15803e24825825f1e49cc8c3f5793a6f24c7d644929252e69b5d8b4996fa8', '00960d0971df54edcf98a332aa288f62c58eeaa1c94cbcd3c57a680de35be775', TO_TIMESTAMP('2021-04-09 00:22:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '329');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '53417ca02b448df776e1c79593619109e0806f69d59b7d9c32b05ce169d8b67e', '7fc32b8af07be143a8dd776c8cb305a6d46be9771e441ad0a50b34fd0fdce337', TO_TIMESTAMP('2021-04-09 00:28:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '330');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '64995ec59829359d930c0f2486dd486c8f64698baec8f8da2f5f8d4124a06089', '4655c1b85f9cf9ceb84e6e3fdd142119f643ad04c14a53f05052ac0d5e2c1664', TO_TIMESTAMP('2021-04-09 00:29:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '331');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '75478ec841cccd534f0d09bdda12d27ba027f83b69064af2d2b8e610d7bae25d', '3c96d50cb2d1fd93d6360c9a9a198492c86b4956433671ea5bd48cc4f8c61f5a', TO_TIMESTAMP('2021-04-09 00:32:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '332');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '5b14d25ba6e7ff01dbcaf0bef1c2e15622d393fedde0e7d7b747f128ad5ed1fa', '0435ac52e291beda6341d3cb73fc419b293faf084a58376d9ef5737143d2e6b1', TO_TIMESTAMP('2021-04-12 19:53:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '427');
INSERT INTO "SIMPANDA"."authorization" VALUES ('19', 'ab9610022fb07981151720b87c4efc612c9b80acd5b2771db4f5aa5c9709838c', 'c0eef5976227d74ebee0e0139ff63601786d29d201df57826ce539cd87d6b56f', TO_TIMESTAMP('2021-04-12 19:54:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '428');
INSERT INTO "SIMPANDA"."authorization" VALUES ('13', 'e3b8b14951021459540439811a36c154bf0d167765f2d0b61de82ad1200fbc05', '98eeca8de56fea94ad7b023791f41cb73d41fad03093f8a14aa40d0662729dc4', TO_TIMESTAMP('2021-04-14 00:30:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '451');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'abe66b5de64446785434c6292f168ab7a1093e595367760611897f1e940675a5', 'd85638d25bbdd685f47cbbb61eb7be660c75fc8b836da48606cfffdc5c6df3e1', TO_TIMESTAMP('2021-04-14 02:28:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '459');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '720c2d8b9226ca52207d080ad864f1e6ba3b958b373a05491333dd1ce17caac0', '6f11549d37e9e9c587fd3275ade49d0c54ae49165686ae288e39fd09de147214', TO_TIMESTAMP('2021-04-20 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '585');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '8249bde95ea3dca4056db8eaef70075b7beaf499ed77b5b5314d83f2c2044dad', '7624230585b80c426a76282753491423781815cee61ed19b83bbc5f1ab5ec22d', TO_TIMESTAMP('2021-04-05 11:10:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '266');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'b1ac01fa4b2e01c7f3b86ca1507fe24fbbfcae09ad3c361e9ffe69217020674e', '339d4f64515332b224f1c4d3adecd6c2cc6dddc2419313cd35c103891ba8a3b1', TO_TIMESTAMP('2021-06-02 15:13:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2513');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1000', 'f63d49ba1adf98a9ea2dda97a1a24a1e64ab78fbb451e107548bbaca740a9875', '69ee6a5d6d6ece2ae597dada8b24c58fbf218fd7d03c29e7247d0b351d750059', TO_TIMESTAMP('2021-04-05 00:41:45.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '80', '269');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '5563a355d5ee7061d2513fd2f4e2c65770bbaf2c406c7e273446609fabf9022b', '805d192cad53c7271f48e95ce1fea44941f141c1d47cf067e65935f1ec99e7cd', TO_TIMESTAMP('2021-06-03 09:42:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2534');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', 'da8b8940e3b46139d6ae991fa2445ef12d6414e5530f06b2ddf829dda5a400d9', '4047679d416a6730e4ada515fc4b7fce0ab0183555b47f43c5c37c6624275b1a', TO_TIMESTAMP('2021-04-08 01:01:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '315');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '7764a04877c900d3f88390e7e8f5e2ada8efe9a2d39e04cf6a3820ecc568d0de', '295cb0ce37d8b60db4fa09d4b4a89347c13a2284f9ef667e4be13761805bdd6c', TO_TIMESTAMP('2021-05-28 10:25:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2469');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1012', 'dcb58c45123c155f6c12388f8e16fb773247f17378586190228c91832746f909', '8f387d94378f94d78cbf89d6f6bfd2ad740526ade3bb434453dca3708169ee9f', TO_TIMESTAMP('2021-04-14 00:47:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '456');
INSERT INTO "SIMPANDA"."authorization" VALUES ('29', '1b86c8f946e37115b8e1557119d695156ac4802c23a636cb04e9b63e8eff5667', '77c1894f5d7578dcb5717a29d254f1f64257c085989fa6c05875c7b3f232f3e2', TO_TIMESTAMP('2021-04-14 23:53:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '464');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'b62833aa14e7fb987af088712913f0059b637e0673f0cecb649cfac935af3ae0', 'e72f5de8a9e0571c7e14f7dc6e04898c869859e07a99299fcef37b497fd589bd', TO_TIMESTAMP('2021-04-14 23:53:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '465');
INSERT INTO "SIMPANDA"."authorization" VALUES ('82', '0df3f585cbccf5e5f35a2569c907bf380984b02ac9ee8a06f4afa8436bdb5a20', 'e9d14cf374a9eaff601a69436036fd0c1d87d7e6520e9d12bfe4d545f3fbbd8e', TO_TIMESTAMP('2021-05-24 19:05:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '2', '2399');
INSERT INTO "SIMPANDA"."authorization" VALUES ('13', '45bff64d79303bd1bc97be7a23c74ed1f002c0b584a7f54ade003294ede49c3f', 'fbc17302e0aed6394a408663ce719318802fd5114091221805bded3193ce2063', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '530');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', 'e8878d0ae6ff3b148c90516f7b5c95edec60776d3fdbbc0315887d1f2978a01d', 'e6450c80848a8e036bd6834e7456aa6f6603f28fd35328e8b7dfa57764d8c3f1', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '553');
INSERT INTO "SIMPANDA"."authorization" VALUES ('10', 'd3ce0adc07b6161ec36090f71dc486d01c5fd7a8368bccaa1bd4948f92154219', '2fac2e300bdade14733460524fc89e083fb4f98fad26b444a974abc8ee8d0c9a', TO_TIMESTAMP('2021-04-21 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '4', '588');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '562835713d0e5119ce15207fe3e6dc15c06b874f43f24bab2d064e2ab2a52b76', '735bfd2abb1ae567e8157be2d18d7e92d2046f76f87b7bafcd56c211132e0df8', TO_TIMESTAMP('2021-04-21 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '590');
INSERT INTO "SIMPANDA"."authorization" VALUES ('8', '030e6adc86c6158c0eb472e15432e637c6ae62e754dd44d0fc54a2947ad49c7b', '2a964f57d54ea50ab9993c09b50bd36a7319e80d131417652664cc4a2d519d3b', TO_TIMESTAMP('2021-04-21 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '591');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '51bc054096107209034e15b7d92757f6bbc1111560c78360460353de8b913c64', 'f64598314af33d842931ba95aad3a5ca6e76909196fadf8fc337f599b26197b3', TO_TIMESTAMP('2021-04-21 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '592');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '19061513986636f0e1a4d67f80fd307cc76bcf302dacf3931e1454c98ee43cb9', '6e805a5fe1cf208b7095098bf25d1b2663b9afc7519a32b0f070390eb218c143', TO_TIMESTAMP('2021-04-21 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '613');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '70f25221a543a859c6d949bfb13b7fb17fa1cdb43700f5162bd321a0fdce5ac1', '82d8e678a2da351bf7baaff97adfbdb22cbcc8792600dae4ea065fcfaeb4155b', TO_TIMESTAMP('2021-04-22 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '623');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', 'a81cc1f4e7786968ac94d0342c028b70fccbbcfd2248a1f7abd5477173536b58', '497a8ab60a0eaa8ba81369630b0f4ea44db3c3b5c2dde1ade51b0103204193b5', TO_TIMESTAMP('2021-04-22 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '631');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'de3367ec0b8dad9fdf8607073d5e6d94090f941aca48ceef2c7b8bc3b40a2bc3', 'e59e2b42931f6e47af4326b78d6384fbeb0d1105683893772ed8620a633ecccf', TO_TIMESTAMP('2021-04-22 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '632');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'e89fe96b6f5fc9ec30d7b0ebbbcceea329641b7d702fa564446c95b9a1ef551a', 'a16c6fa6838afe01d9ca174b6849533efe9fe7bf8519759802df136b632cbe8e', TO_TIMESTAMP('2021-04-06 23:22:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '293');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '1ab293f4a89effce04b322c9f08e4c697e5da9fb6900d649d856ced96312622f', 'ee7ddc08f485cbd7cfbec76176cc8436df941eeafbf8c8ff20cebb7961a62ca3', TO_TIMESTAMP('2021-04-09 05:09:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '349');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '27277c1f670ad58c036eb854e80210019587676be2a87f5a0ac3ffd1cae85481', '97018fac0fcb6d5bc432e31adcf2fb4085e9b121efe81bc2eb00603fc8736d01', TO_TIMESTAMP('2021-04-09 05:11:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '350');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '93cffc7125b2e89f38b140d9522c62ad8b788feb3cb36cef42f117274a9ff724', '29e373521ce8ff2a81af1b266e22dd9a0659ba74370566fd9abb574b87986f9d', TO_TIMESTAMP('2021-04-09 05:14:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '352');
INSERT INTO "SIMPANDA"."authorization" VALUES ('11', 'e5ee297eb38dd39891c91e141ce0388f64e82729ff637e088b45302e6fedc246', '8f0955c7ecef23d98212dcb2865b80783834e8a30da5854ce52c434219e95d13', TO_TIMESTAMP('2021-04-15 04:13:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '472');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '2d08f1158579ff0c89242ac4b4ad96bb722cb9a80dd000f854520cdab7f00a36', 'c4137c89f58406eadd3d61c507a1953f79a431f9018092aa1b5e865320f9baa7', TO_TIMESTAMP('2021-04-16 07:11:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '488');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'bd8d397838392192a97e003d8ad89ebdec57cb9e586f5c57ceb43efea7be8740', '26275c55560d6985134452cecd5bed6637eb143c087c299bbb0b4faf16afba62', TO_TIMESTAMP('2021-04-16 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '505');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '91b43be0fe41f4e1b7bbfb8fdd958b1f258fd0fd0261384edc6fc7734cb3a3e2', 'e4e76814e3302ebe3e0c8d8be0ddd0f7c8e8324be3be6878d36f313b30a840c2', TO_TIMESTAMP('2021-04-16 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '506');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '97e8be9cfbe560a6ef4ea3b9cef4e7100a5b82aeef69033cf753a652bf4d96a9', 'fc47ea960fb3e14b7531cc4adebca0e81749ea23df018df83ae376b14ea51cf5', TO_TIMESTAMP('2021-04-19 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '545');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '188bbf2a524b0bb24cada4cc5291281f6bdffca6131f8585eeddd907195aeba6', 'ff452a1ee5d2a7316219c08fa6b6aa73a5461d4732882cdde808c5b3509c03c0', TO_TIMESTAMP('2021-04-20 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '570');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '89e5d6e7d9d7193e6cc62bc3ee97bafa9a8a91264a2338dcd3a682ee0625b32b', '40b2c546bb08a09a6bf5583fb2985740af9e3b6a22b63af7e76b860063e912d9', TO_TIMESTAMP('2021-04-20 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '573');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '9f42dfa1fa10d7ffe7e597d84efd8392f5dce5f35bb856bcf3d8d36a163f6e6e', 'b19ca21f02b82d6ea6349db6d6c9d4a39a81527376fed0c617bb10dc63f0a4bc', TO_TIMESTAMP('2021-04-20 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '576');
INSERT INTO "SIMPANDA"."authorization" VALUES ('39', '1c6b196419bcf6ada8ddf68ca1e4bce2e434cb61838c9325af0c6b9cd093de17', 'dc9bc3ae0fc5de6c38781c0b29d57a03d114a22c044245a8f8f5468dfd4494e9', TO_TIMESTAMP('2021-04-21 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '610');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', 'fe0b9b4d72f4e6ea8e0117be7d909933716a489c28c0ea0d6e640e62821e05a1', '306b290a2b3e51cf1d459484d5c1150f4c6683f8d5aa12753c4623ae04d4d0bf', TO_TIMESTAMP('2021-04-21 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '611');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'cdbb9d5e18baf0da69cbb8e37aed92fa5687dba60f6d01c01618b39001ff81fa', 'c375f9ccfd7d71ac33b89f7beec95963910ff2e62e103f12e9935f2617ebb613', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '663');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', 'f728519b31b31e9eee855220e2ea2581b5d102e431afbc24bc2ee1b429a3ea41', '8955d89b1a3ed4cea11426064b4f9deb2ff8feab2b124164529765d684cc1bdb', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '664');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'fd5d6ca8630cdc4ec575a937f58b2495cd5d35aabf0538478e289aaf38aa3e79', '9be28b8dbd62c19471dfa1f5611f8184af48ef39be71a9ad9e7ee6b8f7d2e1c4', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '727');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '64a9d86ba048cc978de769e7fa876d54758e1b35177caf6ff0137ab1e421b344', '464db20dd526eb1f973ac1d56477d0e7d8604640774cedae7c1cbd8030ff8611', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '732');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'dfea878216b4c8702fb4922faf940c0be710632e907a51a8947788f2e0bb8951', 'b559e0febd6023330e9bcce6e654a8b06524e7ff8a98867830f525206a85e3c4', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '734');
INSERT INTO "SIMPANDA"."authorization" VALUES ('42', '2815045b76e49030f177f6b691d883bece0608c4bb424e43ef6ba48ba593f04b', 'dbda13020bb250b593738fbab16c80f8baab73c8f9a3ff0e15eba916f571f5f3', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '739');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '3cf1b3916f2ed0a0dea0067d5d18060be6de4993dec4da79f344d4a9270d4b3c', '957cad54f59fd0517b050182b4814767311374a90a4d077424922ac231843cc0', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '741');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '44794847907b81cdccf86434363f8f69cf92959513a973d529eb10581127f1b7', '4eda43505343b6a022b97fef5e4336f584f39da9aa731776894bdf06ed34ccc7', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '755');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '1806a80ffaf6a48f44f4ebf31bc886d8c3914d3a6612969a0baed72fbc4e7212', '92eaef84a16897a15133635231b95ae4eca0e57217ece6475b9e37fa9da06474', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '792');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'a733b3328b2a5f38fdd5c70c26b536f57ac9c734d6b96df86fe53652a68f7d4a', '54c8d0d110e76f91314f275aeac420a0a57abe74fc6c9bb3e4f04c152a795470', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '810');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '53dc164280ef3a402fb0e5e6cdee374e60e652997bd80f3e39bf86e00097bb37', '1f14a20a9caf7ad84937add5ef3347972349f44dc71d119d8d325eeb3bd7986f', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '822');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '014439f5b0e51624142577cf55e206194eadeb21f99447ddc7736b2867af11c6', 'fc06b265939c12936e266d3819c70b9c551fb44137038e7949c8e124e0c8df97', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '826');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '5626679fef4f74b58d15e823d0abb8de80d2e1f9f4564fba7b8ec84e05eddab2', '9768a302b66edd97beb7421a960de051bca187cad5f57e663ce4924448c3e627', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '829');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '8c832a2779fa697d73820d3183eabf3be453e51641d638287cd345294a88ff9e', '040daf5d2d4dd303f12057388b8c4beaf1f3cc9f77e35e423515a370ea9e9166', TO_TIMESTAMP('2021-04-22 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '653');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '350da6446cd9e45e44c7d280da9307037391c9c59967bd57a51f9fb9de7df469', 'd5ac0c68f2e34fc65584659c51c130782384d076621e08dd1c8df4ea6c81a28f', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '794');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'fa10438c8d6b0a40811041a7aa55bd5f307c982d36e81c068e5dba0579af0251', 'f4643decc42b43d8e8596faa224a2fffa7a9f3a0bff37a938d841ca91ed795a7', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '797');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'dafd7aabb505870e1632799f728e10c9c2a215ab478db156af981bcaa2c604bf', '53b05d619b37ceabca6121e51330196ac46193ff200084b5f979a15b44ed1a8e', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '802');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'bf32aaad5475e7a5935e9b93e9df1095c5f41272e13707d4d2f4012c9e36f54a', '374f541dc17cfd5ac732531c64229bdac3be091e7b1ee6f2e084409c37889bb9', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '831');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '4408e637f1ad9055f94730b9d8f5a1a364a363c7c80f0ecd79c2725d88b64e02', '4d830c3b79503a867377bb5b8465d93b6dbae51b57840743a8c5f7bd2af5b7d0', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '847');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '0cc116e89f728618afdf6d72d1e109628774e4353305a56fe54b85748c40827b', '2ba8e4c8faa27ebfa518d13535482141c0a7cd4301284cc4c4cff133499dcddf', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '851');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1056', '244b5e6680665014c6cb10c4930eb628dec95e9c3976107b14af8a05e5ed196f', '34e47bfeb3590baecd8bc4091f494bce275f5e53256e25c53a67f3fce54004b3', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '861');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1058', '6a0450a0fe6947617cdff9847f912b593618571fab19af81bec73fdb6fe9d46f', '3e91ee2a63b921122cd29828a3d4c00eb9c87df5bb33bd3973e772d3bcf943a6', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '865');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', 'c6d58171497c44709f14dab1ff4e24b7f22b842fd9cd4fef0354fc1d9b96e03d', '05e8380cbb674026e74a1cb9b6ae8c09f3a6c22b60e1d86192f7e233de03f3ab', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '868');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'a9d3a1c529ff9e4a06e85b1b8105d8d82876cfd54f6475ae43de1c417d165f1b', '633b69fd4e7ca3b19c8a68b9b9f7d067a41e50cb94ed415d1c9569a5f2fd44f0', TO_TIMESTAMP('2021-04-27 11:24:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '913');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '187e12c3012bec4b812f88d2bee45fab88ca73242848d9c9bfcb55eef17fd8b0', '1016c9f468b11b364a68b99c28c53c9f7a0610cae45f51248f9569b535ce40d3', TO_TIMESTAMP('2021-04-27 11:39:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '917');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'c6d28542c373031ef9380222618e725a9a2ce11b522f17fcdebb0ad3b46b97c6', '47a2247696dfb2e9a76206f01268cbeb1884c61ee2164fe5a4cc0131603775e0', TO_TIMESTAMP('2021-04-27 12:00:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '931');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '45112f34c5334403e8b486c0f72a692c8c54fd785a0dd14c62f0bd63f15e5af2', 'db0d3d414a839a73a0db5797f1f240c058e0becf3c8b4ae34a3393dde2f73ccc', TO_TIMESTAMP('2021-04-27 12:06:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '934');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'ffb3a4b24bc6c785224f5d3f3f8da83ddd3f5ca70ef4740fde209574be57726f', '475863a3e3982d9a0239d46ab93cd77a4323c608ed564e1d91de88a0dbb5e904', TO_TIMESTAMP('2021-04-27 12:27:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '936');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '269da6d15676bb9f4d8b9f4a519b71c036c3d73f510b4c97c541225f3f49efd4', 'd10c6490d8680dd82c9a7311f89186f40241096b439864deeb17796c9654008b', TO_TIMESTAMP('2021-04-27 13:51:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '939');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '728aa03b897e33c477a6d33391c195676cb1c9676804b1628ea05df2f3643f56', '604ac0041f9871f9b748023a9ffe4168bbe219bbb7edcb25489322838581a119', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '696');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'cf3a3df37116787cc7cbff4692f63543ad129f1d77c05e1f6ee81f27c6c4d12a', 'ef80e4c144247f32dc284df0d43325bf19aaf305eaea792867dc6685683d804f', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '730');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'a35823c693ea79a0ce7533a6c3eea0e9ebbd3f8ad23e200e43f7a82adc63450c', '1f36cf10e87505fdca772b9c28666528d3836a7d5d58318a58b8631457f99b49', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '772');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '91ab1a0cdde5b2d718dd66486821df1914def3152f0fe0bef47367c589f9978c', '5176cd1fdb92e1b1d6e94701032b67d0eff12667e99e930cc9917dd554e41ae3', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '774');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '63d275ef5e4a748b5303eb2c1fb23a176c02e6dcb84f2570976c107a96796a19', 'cd7a075977fa146c444f6b369cb6819dd0be7d26e8a3cb92ea0649f6762b6782', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '835');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '1f9f324c38065619cbb972ded899b68b959c475e1b31be1300db382abf38c804', '7c0db149146a63b416ae688b930c72fdec276317104bfbfc1ad795a08c07a9f9', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '838');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '6beef2b32dc269d3402f8edefebdb75415755f58a3f5e34c3ee8b3239fc41c75', '3af743ed72cbba3256b28ad74ca028ff88400acf6a3aa0dd1d5944103415e369', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '841');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1057', '367d1b5b29b83512b1ffbe8bee1238b379f9886f2a5e7c2455ba73cf172e4699', '399461e20c8d807e8a9bed24c4c20be8eb6a22784adff22139129bb804921f8c', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '864');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'ed6ba3581945e51aaf0e2b7d77d28187e19e9464508622d9fdc9498f9201ce2d', '69f6e64b41bd8eef6dcc2459b747a3831c619683711a791852d1098be4a0be9b', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '870');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '143f8db8faf1eea46f4f28c8386063eb627ceacff7fe7b9472f9382517f540de', 'eebbe1fc9ad63079c7c0f32e9da50a7737a555af16153263a3481f0594b3eaff', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '899');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '946b9238300511346160950d625fef04a42716bb0e8c318b00cb272a5a30816a', '8375cdefb2d55051a4c4e44bad9d7caa20e96c9fbc7f42af1c3b2ae864430d49', TO_TIMESTAMP('2021-04-27 11:34:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '915');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'c740683ca0ab93ed1d9613e0fe6e9388eca20dba4c75cfead2bae12e68cc71e6', '2c0b9f6411e22430798010808109492b80d48631c5701a0ac14f2d258bd928fa', TO_TIMESTAMP('2021-04-27 11:50:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '922');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '79ba44e11429c3ea8fb61006ec106e90167d0854ecad3f51dae1fe7455280c1d', '7ea2bec701c87d9300ec1ad035521f360131b8662fdb459d7aeeb7cb33ad0391', TO_TIMESTAMP('2021-04-27 12:31:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '937');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '2f120135937bd7e9f631914750c58c278de9ab30776a867e25175d849290a45b', '126e7af5d8e8bbe728ea6da649fc92c9c1cb628ac70647ebbe515841c4df6aad', TO_TIMESTAMP('2021-04-27 14:05:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '941');
INSERT INTO "SIMPANDA"."authorization" VALUES ('40', '4b2056d633b2174e9a6ccd9448dd510549d80db9dbf0b645c167d55de2b10f4b', '30dece39df3e5c6354b09122d210545a703605d76263bf6db1da396775c38413', TO_TIMESTAMP('2021-04-27 14:26:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '944');
INSERT INTO "SIMPANDA"."authorization" VALUES ('16', '3bcc95f645e96003dd2b40d42fc7689603526250b7069f6be817656aca980bbd', '9531baab6a3278018f6de9a5117ea2a80b272bb50d9193d9997dbd9bc60d8426', TO_TIMESTAMP('2021-04-27 14:27:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '945');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'b6a72668bf163b6400a84f1662950d10d6d5a833a507d345bdf2d674560ec41e', '1b357f1736f8af50d0e7ec2d64c318e3eb164064216738032c9cd65a0154882a', TO_TIMESTAMP('2021-04-27 14:28:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '946');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'ddd8a844cf9a4f82172ab0ed874c296006fd4795ef4f01339d8d3bba0ba3cbe0', 'c83f44e7d7c44fe30f853be7c20bc975a9e85bca812d2f7ee8bdedb754eda0fa', TO_TIMESTAMP('2021-04-27 14:29:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '947');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'eb6d211aab4ea8158897cb1946cb648ad9ba6f502c5614ff514de6621ec128cf', 'c58391aae35fbb4bddc6abd998e0f70f0d66bd0db504b9bd217c4227b6216849', TO_TIMESTAMP('2021-04-27 14:33:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '950');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'a03571a66b842a10b5c3bd546f58c40b789e646ce78af0f79ac8f9586e5b9472', 'f173b948b5102ab57cde51ef7ac977c0bfdec2e8f571e4821a8e29c6b7783847', TO_TIMESTAMP('2021-04-27 14:34:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '951');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'fb1387f2c8dc22ad3166c7432aba4c89a642c817e3f2ff62219b10d9799cc4ea', 'cda2ee84828c8312cbbe3853e7046e86683cb508d7950cf48f079fdc6208bc7e', TO_TIMESTAMP('2021-04-27 14:34:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '952');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'e789a13c9c03ef465bef60f322e17c1043ab6efc1e7948c28078400aaafb5bca', 'e77db23770af963c96772af5335c269e175233fd16658ca6352b33672c474855', TO_TIMESTAMP('2021-04-27 14:36:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '953');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '91fadd98d1adca0b004f9d923d9649d699e8e0f903491465dba07e2a4b4b25b3', '10dd3f67ef5fc22d3ca3df20df9023d422918dbff96124c7bb465d4c8c0117e2', TO_TIMESTAMP('2021-04-27 14:37:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '954');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', 'dd24ac929629b81639c902ee08bcda82d39ed94d38468535051b16a3b74ffede', '0ad91787522f3897f77db11e727ffcb820c53c3a13ab27a5d01c9172cdb62b4f', TO_TIMESTAMP('2021-04-27 14:41:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '956');
INSERT INTO "SIMPANDA"."authorization" VALUES ('10', '46f56db65b9fca99a3baa6bf1b850a8ba8db2b41a73a09971ce7a64cee562238', '3eacfbcaa8ed91219f658bb21844abed9b69ebeff159dfd907c6a742b16878ce', TO_TIMESTAMP('2021-04-27 14:41:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '4', '957');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'da5c0d44788f473d7008b0516c4d2b29b56aa0a419c183655385dd33233c9922', '2e57aec36709e61ba2c840935e70eba87ff80472508f3a27795fa4bf7da014c6', TO_TIMESTAMP('2021-04-27 14:44:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '958');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'da06c7fe9fc3424c2594faa744adb2084b7817b6cff506925c3deae1e2f1bb0a', 'acdf67ccba50324351cc8cd10b3e0fff0fb7e732d578a289dac134fbda617474', TO_TIMESTAMP('2021-04-27 14:45:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '960');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '7125f28b409faa28b3ac0db6a26b0b9ed7ab7508b211d7d587e0fbadb7b6431a', 'f1004ac80bbbe49662ddf5ca19937e54f6d955faa2de43fc3c090645e7dcded9', TO_TIMESTAMP('2021-04-27 14:49:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '961');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'bf8f32437c3081dd70a91138a4738ac96398ef90c5c4d2822c34feb3b08e3c96', 'c8086fcb9b1fe9bef33463decedba731731456c9fc94dd15a72b7efb7f94b0fe', TO_TIMESTAMP('2021-04-22 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '647');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1053', 'e6320cf55e6d277f993a6fa12c799e090ce93ae4232e2775e100f05ee1648330', '4c0337064e8709c285e7dc643ce9a888839410a39c678242cb46b7cae4700e0d', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '669');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1054', '76ec389d8513e85f2494b79b4d4ef1a9abcce3d966e501fab431880779836100', '251ada813c612d1ea58dd2b6406a7d1374fd3fbd477e18fa18376f9297c66044', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '673');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1001', 'ab563e1c78bf54557057e3ff812ce61a121852a1fe0139e30fa99fe1fd7a3731', '94443f016f2536a9b3906cf7ab6834cadddbe228b2417726c1577472598b6b0e', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '677');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '534bf324be3cd33c96a0891aea5554afcb65b675e6af4d8de3ea0e1c8e1652e9', '33bd8d834545079ef4be2331a4f9513b0cca4a2c522d67fa732d1f5748b5c07c', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '678');
INSERT INTO "SIMPANDA"."authorization" VALUES ('42', '47216aab83ac619ade1109ba7657aa95cb7fff52f68a097877e9a6473a19dcf0', '723945535d1df19f5a491a48b9c720a94a1af18e44f4d9a2e2a4f3aa0802c2da', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '680');
INSERT INTO "SIMPANDA"."authorization" VALUES ('42', '177d0e0be3d43b538be5d0ea179b0547036489166b8a978eb25926fe345a4c59', 'cae461baf9badffc2609cff07bf55424e41b3d43683a1a6cb62fa8547cf3f3b2', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '681');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '0946778a049d09c0be00bf6884a7fc3a0621fde004ed461d0e7421fde45197d3', 'c06fd30e3a6b85f4d410f0676541539b3c624ddc98ac69a3c7b1ffe7bfe3fd7d', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '701');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '54c30f5ff7d22eb2767d237549756f6c31630895a7e1782ff462bc3f34a11d85', '4133f0d473be305742f3a10c111cc0d457db8f5cfc5fa1a2e2f2ac6b8e5b7090', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '743');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'ae308734f57beb69f98a6211a2430b4614e33d3974f5922b46910612c868392a', '5a914da074c2f32ae8ef395bd1ebb0253949eb16ad8c2555b741cc5675890ed3', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '745');
INSERT INTO "SIMPANDA"."authorization" VALUES ('32', '04abcf021c2e46242f86e17c522a039584a8989835f8b81c8c55540581a6e930', '7c0a8d5732f2754a55a5a895ec8ad8ac49297e92d6e296a720b094f0b1d2e734', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '748');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', 'eaf2141c259e7b6528e64465cf7e578a6bde6e02a1b47eea19b3ab583ba92547', '099047882126dcb864195a12413939a213707782f4cd46339ba47ca23f6389b2', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '754');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '6fc6d1aad4a60e639ff2b4c97ca0e26bd910303d4c3429645ab05eb996c65e4d', '8d710aba8e26483fa64e86fc22bc36ac28ddc0dc58f624313e36ef1890965721', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '780');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '7feb3e7e3b98025aa28a90ffde7d0df5e3c76a66c8438df1ca5489aa89713713', '4d05b9c5dc3088eae8fd490f1ba8d0e65fdc02b3526a2bc2c5db35094a9df46b', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '782');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '0f5afb703738588383338cc901dd257193a753bb8c685735d192caa6e8e64459', '4808b1b997f8b0123e3b49c22032d70e533a990d13e5fb6b1285a26de43c3a33', TO_TIMESTAMP('2021-04-22 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '644');
INSERT INTO "SIMPANDA"."authorization" VALUES ('39', 'd730cb5bd26fa7593b8bee207aa066a939fbe18efb0567cd25d6fed330bf7f24', '5dbde40c1e6ddf68091035092e41a49a49f3bd8ef2be504b848b70e0685f8b29', TO_TIMESTAMP('2021-04-22 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '648');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'ac1d45a7240b2692b19b833463dca122a1d869673870d79ccd9d7951827b75e6', 'b2cf72103e8b36fbc0bd0f5d44ba31dad0472b39da935cd6a0082501cb63f74b', TO_TIMESTAMP('2021-04-22 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '649');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1046', 'd7d97f38a21bcad6063290cadd6cd0f58bc54452ae2773625a12c1d210e0a496', '8b5e8e0bea8961ec76648314d30f919c68f94d8ce8e2af435eecc8c6c0cb9b1a', TO_TIMESTAMP('2021-04-22 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '659');
INSERT INTO "SIMPANDA"."authorization" VALUES ('39', '07cfb4cfeb26bd23135b5da95bfc0e68ba92b7f29d2100b33da37aebddf21f96', '6269af1127c91314b1ad769d4e1941ac3f7d0fe551ac90a8d33f699d9b62ec19', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '702');
INSERT INTO "SIMPANDA"."authorization" VALUES ('39', '04f5111afaeddc80b027fd16c6fdd2995da0b577cb57f8ca471340e12a8b18d7', '03bb1248599df49cbb57334554aa488358c837b57c7ae6a8176f997f61caf0e5', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '705');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', 'fc7641d46f01260a5d6a5698d727260f0680c3cebb7c3ce48620d5bd455b757e', '6ff8344c740b80258025454a42d35fe8beffc1e14e5adbba669800babd00c17a', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '706');
INSERT INTO "SIMPANDA"."authorization" VALUES ('40', '2d66bdb9876a58ff1421d18c9613819ee730f6b35a6b8622e614bcfcbb93a52a', '62d6ee3f17b43934ca48d773bb5621c1468592f76f3252d2a5ff794fd6548fff', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '707');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', 'ac23c7e22f053d5edb1d91eff0323523a15b85f683cae0d0f968094a086c4bc0', '1ae52e507f395000f93d11bab2a970c43f4bb59be6554046fcc30343e959862c', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '708');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '101f6a48b6db38504bcece0c417d06dcfdccc64ff8ef795d51c6f7b9bb2df3e6', '9924fed8c1871a9d9f45f36cc521e4893d67e3ca7317e836c8e2910996ef7fb1', TO_TIMESTAMP('2021-05-03 13:49:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1472');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '314e7d5147ce5b4da469eb13a2107c269441398f453afb019ea3efb293981fe1', '7de1ba513730906e7bcd6fecc55260d27c79645b6777b21109461f394c5a72c8', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '715');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '47db3856f8df57d50d4cdb0e7b9bc219fc956bd409042d41e38f92cc464123cf', 'f729e4f825abfa94171da4520657d902121ff617a3cc8b34c058b9f54d3e9fba', TO_TIMESTAMP('2021-05-03 15:09:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '1493');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '946dfc7f9eff4ac366f4c039f2e7cdc2b632ca9e0615181e61d1375786c41f30', '5a003b74fb1442d37d54a1cf185917bb84df00d0a5f93e65a8249b143c0663e4', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '848');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'd38b0070c72ed6269c5f0a7f03e4f9f6b01f303f84564ffe74aea8b0174f0792', '895254b156e370cc98b702f4ccde5b23d82bae4fbba7030986c5723a0807ec1f', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '869');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '7a0d4f4ae86be6198f37909b874652cd2fea66c2982fbd0cf54f800d26a3aaf4', 'bb1c9bc96791e477a0f41ecc929d1a2d373ae3a7e883ea440a38ac477ae48ce1', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '873');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'bedaf241d820ba7ff751c4e278b4048ce416cf45f658928d7c5c97d3c6f95dc3', '4ecdc4948a9c9c320453d44437efc34196f0ecb1e52235461713aa858483b5fb', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '881');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '44db207711790d6adce8ad29deffb361390b609462019c30690e09581b50825a', '080e37c23b8cd9828bcd1377a8d4a10d1d061031818c1e5278fcfb74a5b8f8fe', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '882');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '7a155a71b8b7c5ad5c5b43176068349d4545b29e1d5f8105748a8b149db7496b', 'd8ac0cd1554de4858353f0ce4b027879fb357798db01ca0dd1732751ac7a7c1d', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '884');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '5292bfbbfb76faf75fb6181b40ad7a6afa3a25b0f20bdede7470ff5531ecb71b', '78fc043ca3e9bd56610d060fcf457cc4fa68037a30a00fecffd422c5cc45d9b8', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '675');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '21fc37e4322372d88ac0090dbec128c7e025e7ee4988370d95ee252edf6d982f', 'c267670c2aac387953030eafe1c8cbdb665c3602c11988ea00089ef578f436e8', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '817');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'e2891d7857c2105081a831df928a34a61b9379ed0e1db5ac8eeb6dbb4faea81e', '0498a461de240e58779d96c8298c9a4cc501a7a21bb9b5300d682d25c458112e', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '819');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'b7f16ba2fcd42f82a6fb366ba7a431e3eb9f0a94ec178f19d84f3aec730717e8', '16a892570c5becad30e43d8ad702db1e7f1ba1271fdf5febaabb89cb97204221', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '821');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '0e01d8c07a13989457bfc7bcf06ab1344f92138de727037ec50f0ef3a06fc8c7', '9592fec7d72e52269433a4a3c8c4fd85070153462ca2f4dc202d1457673be85c', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '824');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '16a730f1a380494787846721ded3a5ca6273486a8f188c4706d570ac8d4dad9e', '39d39572ca3ff21eea4ca7bcaf235039e988b9f01cb2d527cf43297fd080d82b', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '825');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '35102f4e1161f34a9b430ec961cac6e9a7c75ad5d3aed7501898e43565658e61', '77eb51c14a754f0546b8e1680f53c3d633217eec9cb9a3d6da2ec0d0724fd0c9', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '832');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'f439a692042871111334eca733e0ec3786bce5d84974ace8617d1e923e5d0c4b', 'a0334551fb7282df7d6b9003ae096f0a83b29712e7e052f2f07c06ddde5d89c2', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '855');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'cdf2d4a9a9dc9c3a2bd92d4a3f3f44a154750b5ff0f523e88fd59b98301afb8a', '0b768082e2032aba69afda85598c4e10acb6ad157060d90a79f1cf8be880c77a', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '857');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1056', '1919a2a95bd5a7f825336cc51765beafd56c0dd9223b2cf8845d378bab74a819', '2e82219d191b43718b512e03ee30450c9c89a937153db497b3035fa4ab909c19', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '862');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '94f5c6083e85a45f9d49ac7dd2f1425f93d279dd0c767829b8942cb8eedcb502', '4e8a03a24c6f5ed7195bfd576c67a21086df14a117d47aae552fb8c10758d4d4', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '863');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1057', '4d2f110aa85ccf363e8450b69fb43216bd67f6687c4115e5f83e64c1700bbc09', '33a12c6b6517401d6fcaa41029fc3e81fc984f307896df74d98cd9aa8cf97cc3', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '866');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '7d983f91d5eebeffc22f668977e6ae72af77cb2bf4554a1ab1d995c29da3f1e6', 'c44b0f6ffb445e30cf05a5fcbcc19d0b48be5fac8a59453029ac76ee45dbc05f', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '886');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'dae0297dab07abec4a5178645307fa84e4f4e575e60a4e7d9234a430b4492777', 'f42a67d53f57c0c4e45315765f52e82d6e5396a4ebe3b6318759ee59c8ab630d', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '888');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '06a77ed2fab1a5274a5b8481837b25d77be7dc38ff66e2d949fe6761aa9a5983', 'a64b659abfeee0aed4cb59bac2ad6b98ae847d3caacf54d0b2714342bc00386a', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '890');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'b4536e744bed75ed0476d9b867f11d3e6e391362ed7853bb8fb56f1b8fed1d93', '3c5526e61caec631775fcfc65e71fb6bbcf3ac13ab56c90f36f5be6957eecfb2', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '892');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '7356b940562f49471ba3fc4f6df8deddf9393d15bfaea7e9f2418dd92a3c0a1d', 'a10677a48e3199494f2d67ba3effcecb8c67639d9afd6fe8d130a712579f609b', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '893');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', 'e14708194ed7fe73e02fbca59cc6b2e903d88128791812f1fd8cbb5aedd99276', '1eea1f42bffaf74c6ad4a94031b1e76473d5a32f08cea28b4d116c630db87253', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '895');
INSERT INTO "SIMPANDA"."authorization" VALUES ('21', 'dc6db0b7e2a24b097452f3b5ff72c821a02ced028b1f895f3e663089ae0d0d9a', '4fa7c655e1c4f90d50cd1076903469bf675fe92ceb4ca3bdad6f4ce00b4d3521', TO_TIMESTAMP('2021-04-22 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '633');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1045', '37d8a464b43dfa56451102cc1b440ea7f3d2655846f29cb7581096ee104490ad', 'af31d32523110f9cf5ac6f47049332bc1725da8b9c0160c95cc4d5ba5b18e93f', TO_TIMESTAMP('2021-05-25 16:09:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2448');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1003', 'b39f94942a03458f8e1729d7927032a6a3f48068e4afdb49b4b527248e5b7291', '648560645555b7a6192483fa3b56f992d2cd708b2c7c0854134856071dc412af', TO_TIMESTAMP('2021-04-22 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '636');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '6dfdfd6310ae09ed114f9963241695a0c66b66e580dce8f4ee2d69fa71c743db', '90a1598adfa671e3c07a6f82cf5efafa1db9076e4528d5594709009fb5d2c4c2', TO_TIMESTAMP('2021-05-25 15:43:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2445');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '3631d8c3804a7c7f3caa37250866c9acd6dbfc6eea9486a9c8f629379df1ce10', '85df43fdaab49b2b0e08de23ab3e0aa00633da5114ccb521b863ea1829507df6', TO_TIMESTAMP('2021-04-22 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '638');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', '927fbe10be1fd4d1789981a24cca4ce6bcde8c4de4c0c3e99a38bc0ec9f91b20', '37f4ac2dd5ecd43906df5fe06d97453f7c53ef6c5bc16936c102fb32a7b4ccb9', TO_TIMESTAMP('2021-05-28 09:35:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2468');
INSERT INTO "SIMPANDA"."authorization" VALUES ('16', 'df408e9baefb37c776830dbc402f4e73902c6ea8f3c09d7cdf5262b60ab3c0f4', '56b1e2b8ab00ff356c7bd38ef7fbdbfea216f160f671d327d43c8dbfae08e614', TO_TIMESTAMP('2021-04-22 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '641');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1059', 'c7cb4c129a19cccdf5daf705f4d3164d778a15d2b353966bdb47c7fd3996c27d', 'fee83ab9a843f0946a9aef5cffe49e3b79b1964a79fb1c62dcc4f64805179ff7', TO_TIMESTAMP('2021-05-25 15:51:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2446');
INSERT INTO "SIMPANDA"."authorization" VALUES ('18', '95b3798fa7f2817fd6fcdddd16558c49f148af42370b54653935ea5120296933', '7dbc10b3a24939784d98aa5f9ff923f2bd2ffd10062356b1d296969d54723223', TO_TIMESTAMP('2021-05-25 15:43:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '2444');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', '8411ef5b23ac950d55eb9c564c6adddcdfa43b20f056adca91179424787033d9', 'cc8a14a4961bdff797b8d0c3de5ce8aebac9dbccbd8c16387af465005d439f3f', TO_TIMESTAMP('2021-04-22 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '652');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1047', '4fae90068fe01ca25f836b0b9d0c5efded934f73b641ceab31d6009b465cdc2b', '3e3c83c3ae67feea4d491877ec9f87a6021826dad407a0389fcb082e95366241', TO_TIMESTAMP('2021-04-22 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '654');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'af5065ca430afcc01198b5d31bad93aeb2326ab1e9d1e9e2c19351a1e9a1ef03', '571cfe5f9678e02381862a5cf9ee5ce3fa23243bf9ce8ab5dcd678b2bead83d0', TO_TIMESTAMP('2021-05-28 09:33:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2467');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', '3a340775313fee472d3af37c521fb6c120eaf494e7099b0a0cbf97190c0419ab', '815571931153b39ab81750b5060a063af98ccfd24ae961ec7d47ad6152699285', TO_TIMESTAMP('2021-05-28 10:50:19.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2471');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '636f523f4862c6aa7cdb41e8c9d39503c09ab9c9535b7960f6cdb235b3f5a2a6', '391e8eea37043acdb1852ed1b58266e0037f72efdaafd23beac382bebb4cecff', TO_TIMESTAMP('2021-05-28 11:02:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2472');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'f169cc5ab55c290203c1584fcf4fa1699e9aa1bc2dcccff5573423da2cea406a', '90b399fb4a388767b46a686f72b974833a58746361e87a0dc0bc0f4a12c29011', TO_TIMESTAMP('2021-05-28 14:07:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2474');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '3b937205c5b4bf503f2e88ff057c62ebe4109c765de6d95f242eebbc30aec7c3', 'd3279e096f430045f25f4e633e51d68a4dec617c6698a07617c4d9ef8bc34a9b', TO_TIMESTAMP('2021-05-28 17:28:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2476');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '1f013e97dbc3b122d72e962a7f2258e03381a1508b77e81ffa34741e457ac65c', '63d12bb2dd31c9fe26bc2e861a70be59827ce8789ec839b20178543428db1dae', TO_TIMESTAMP('2021-05-31 11:18:19.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2484');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'b3c9d655eee911aed04d271d448eb342f0bc6985ca5363506802c1ac147112de', '1b0c37cbb7154606ee6dd93c5a2912a52ee91d067ddfd5cab8134f281163f0a3', TO_TIMESTAMP('2021-05-31 11:20:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2485');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '46bc2b70c7d9081f1a0ef19a125cd1ec946c22421a694ad9a92066a0131260f8', '608239620cc260b7cfd43adb11490dbfe211ae6166faa8dfb228ce3359f0d9f0', TO_TIMESTAMP('2021-05-31 11:58:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2486');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'eb52407839f887367573a090c747fffe754a742555d84890a7ceaa4f3515af9d', 'e29adde627e9f13228449d6fdd3b082418facc7dfa09039f6f4601124e6f0c46', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '720');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'e286fb44fbfa7fc423e6ef8ec4c5bd2fc490da84be6440fe431852316b17c786', '0b1dedd0e0ad972a09729a3b3846b7363b5598968c59997478af350b68fc7412', TO_TIMESTAMP('2021-05-31 14:12:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2488');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '6d9cf745791fdf6a7d35456af5878f065f9bf137bd4459b0763f0e09b5c01d18', '62468d27a9fb30a166a9af4718c56abee7e53b483242729b7f233434c32aced6', TO_TIMESTAMP('2021-05-31 14:39:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2489');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1055', '7834518ab94f87348eab225269e6418490a8331525461ccf29f4ccee3683e859', '85efb9b5f66136f0c2610a482d6f652f486943845533a95b2dba5f1366bc75dd', TO_TIMESTAMP('2021-04-23 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '724');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'c504a04e2b551ffa0af389ccea797fc906684ce12912ea4e22d9c6bc9886f9b0', '9dacdb522ef4da3ee93a2839ce026c75fce2bc1cabbf07c99c65bb78bb3708df', TO_TIMESTAMP('2021-05-31 15:15:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2491');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'ce4a8f8167f9e0dadb4a24a65d791b3c61765c2ca2d79216b7232c5fafea258f', 'e76946fbd9ee917f79d5da2c680eb03df0dfd348d3afe29bd9402b4a3f12f121', TO_TIMESTAMP('2021-05-31 17:47:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2494');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '3c0433eef440e89c804c62423c27ef8d4889504fa4e9d70261f1593e43e82f5b', '414fe8f79bd6cc898c2b9ce00c3c182499e01448c194cf0bdcb6c0f5aae448d5', TO_TIMESTAMP('2021-06-02 09:45:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2496');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '6447bbbf0b9c62e66f7103e49ece6f470c5af4ecd155bed54c33f799a6cb5ff3', '7fa08aa06558507b872c83f188aca3f6ee5fd81bec807e9d1974a7b46576dfd0', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '790');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '6c41034ebde1cd6fd3f5ee47cdcc346b27bba2dcbe7ad77ddcb52543961c8007', 'a735dcd93676d9af09731cbbe506c305e39ad27f4c3996e138c2538392c0dae8', TO_TIMESTAMP('2021-06-02 10:31:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2499');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '689373e02660cdf13e588917bf4996a9c431a1e21088b2f754998ce9d50fba30', '4949d5515da63d1ed10564587c103147e76040aa0b54ec535d1cf9bfd6548021', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '799');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '1adbaa71217e189fa7f0ba1e8f5505e7154d268c66fc3b6ad706594b85a63ded', 'eafbfac706cdecf9f2925c44ff0619164c9569bd80aac86313e01b1ff19dc725', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '806');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '81862b16f99eaedef2da7542eec4467754c46059a60f566e0ca2a15b8d4b30f1', '91f89c01b4bf55d77fd173ea5105e56e96fee66b2ef0fb65b6d06dc297e60d6e', TO_TIMESTAMP('2021-06-02 10:52:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2500');
INSERT INTO "SIMPANDA"."authorization" VALUES ('33', '53e5c728c5fd47916b024af58d74d776f5f556338bf816f827740503499343e7', '6dba6be9f68664ff5a51962f0cef9f9c3b218ce2bb95d84ee9ae2928de97103c', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '836');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '037857117dd9b75b4395f5d84fd3049488e2492e35112bf0053e13732f73bef6', '8690f21ac1eac7de3cabbc6454e5080a9a2fd650f6a119a7a4a205edfb264a70', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '837');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '89d9c7cefa7fefdf2cd4167897e79b39ab7645c0da3525972f28b0c9d0566dfb', 'e195040e85619a589aaa1781a8da9984fbc1275dc834cffee86b975a16cb17d5', TO_TIMESTAMP('2021-04-26 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '896');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', 'b27d6792d91d9026f6d186144f035cd3c01b0c60484ae3bf32ea1e50859c8aef', '1dfcada122f886827292ea2ccc5b6e352669a2e05219ec440d3c8f713ccd4148', TO_TIMESTAMP('2021-06-02 12:29:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '2502');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '125ae676ad6c27b69b76127fa0ecc226c8507edc7ee90ec1356af5d252669233', '7618c44db58c7c1fe4c49409252ab208cdffb9c363618af0f5707913b5a31ee9', TO_TIMESTAMP('2021-06-02 12:32:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2503');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '47c78416e8346475a6261e260d47fd56dc3ee0f76f49c3f88c1d31b59d9e1acc', 'a08a81757b9078b618e5067f02c8f5f12e030efc996d1f4ca8836231f82bcf05', TO_TIMESTAMP('2021-06-02 14:04:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2507');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'dbe8e9a1b2c4a37abee70f0296ffd38e907b50709ea17f095ea5d45fa2347130', '51bcce64f71c24e5400835fb13dc6849c0db3fdc6b5eb93e33b93ff6d1c53041', TO_TIMESTAMP('2021-06-02 15:07:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2508');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '6fb7e65c81d351f9ffbb8b51f148f150ab126fe0446bf380be36bcde86aaa88d', '8e082805bc76e79b9f88d00b98d1cae06e6e3c5427c219ab7b6183f6c17c8b6d', TO_TIMESTAMP('2021-04-27 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '905');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '31525ee894d21d5e7a4a6111367a0735350acb417842214cab1bf4aa6af1a606', 'ee6ddd51d6ce993c3455eef481a3039f9bae86353bef09c017ec4e4fd0da2741', TO_TIMESTAMP('2021-05-24 15:23:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2344');
INSERT INTO "SIMPANDA"."authorization" VALUES ('8', 'c93ee6c1f16fec9ff3d8bf46b8c17cc75106cd1ca6a63dfe9ce8f2c9daadec1d', '6f6b54ed7ab6377a8235349344750e52020b2ebf37858926921706a2f9f680b8', TO_TIMESTAMP('2021-04-27 17:21:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1024');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1056', '5998b7204387392c0065b64e822742beac9209ded884a13f3f0ff15f65c8240f', '94db0637c09cbe390c79a918a430684bb2c9570bdae871a139ce041870dc65c3', TO_TIMESTAMP('2021-04-27 17:21:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '1025');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '10d5ae3638a78aad01a291a41293a4ae8e9d50a6a2f82171e6187cc015d440d0', '8c37efcf84c51ffe60f5beb7f4a11276416cfa5f578523bd2cd3bc55c37ee702', TO_TIMESTAMP('2021-06-02 15:09:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2510');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', '10ade4cb41c34e24bbc1c303459958fa16a28141234da7784d6fa3433314045a', '0a9102658e284b24074451cb41a7e69d566eea43d154cbf9e7e3ea7eb96eedf9', TO_TIMESTAMP('2021-04-27 17:23:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1027');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'd75acf01bec7ec31b3b55118300d098ac534a9920d0731109af2d56193dfad30', 'df75dde588a6985a2fb6ffb4e8280bcd2adce3fd4503b6398d59908fcd63db61', TO_TIMESTAMP('2021-04-28 10:01:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1049');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '7397435691445652023af042717e03dcbbcdfbd14e18139a54671d2c8b04cbfd', 'b906ab775140ccce7904959a48853ef1d2a3ef002e34d15e602940d994068511', TO_TIMESTAMP('2021-04-28 10:24:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '1056');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'd32f91b6cd3b1bee01ae1f576925cb7daac58d7af13779d903fc505e0903c976', 'fd141800690455cfc5fd0c73a854f19ea66e178e64bdedbb597b48a7bf0d8ee3', TO_TIMESTAMP('2021-04-28 10:24:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1057');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '5ca007226841935bfaae57521388d542b1c8e7b120c778455003dc075bcb5959', '0fc4dec8585c1d94338b978fa4c7e457f370e3b8983ef90f29f132c0e54d78de', TO_TIMESTAMP('2021-06-02 18:47:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2533');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'bc93de4eeb1d4f47765afe9c95f7acc9b51a7c9ca0044ec648c209982a2b8f3b', 'ad4c355a2cb90a0f5ec4162141f3f0c15b490569bb6f565415797cc927c9a4dc', TO_TIMESTAMP('2021-06-02 16:14:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2521');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'bbf5011634c1c637918660a4392759d84ee396d02bb7195b7644c9e4c6e49790', 'cc4b3fff46c4bccbfd648c81f93b62fee2ea16d68801452b28c49ac8b15dd3dd', TO_TIMESTAMP('2021-05-03 12:30:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1459');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', '1e70a69b0760419e9cd9e0bf28d26d5821120f7b4f622507ec45494755525a5a', 'ee954c492e4548bafec6385d45d353d87aaa9cb2bf71971ca124b80ac123adab', TO_TIMESTAMP('2021-05-03 12:32:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '1460');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'd818fb67f8795af96bd02ce20077c065a44c057690e9df2393fb40a94e19d000', '0ae83f2e8e6f5d3e0a104f96f91334432a1b2ef700e514bdce976efa775e4a54', TO_TIMESTAMP('2021-05-03 12:32:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1461');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'c99c0b99d19892693e06a3abfe4c73e16795888bd938d628d19cffb2b4495553', '06558a8d7c4d87f7d56a2b8574ac835fbb5146e8b916f836c461f32f2a855e8a', TO_TIMESTAMP('2021-06-02 16:17:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2522');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '0f7b4a5ac094630e659cf4912f48aaae3903d3a5ac0c711e16e063cdf91283ee', '9391e4bbbc317b841c95aed051838c460a8052a5e186d48cd4a6729221353eb4', TO_TIMESTAMP('2021-05-03 12:32:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1462');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'fa44a1b0afeb4164460eb865540b588f51b4da92cd9f9e1c9fdfa1fd84d60198', 'c7bafbe60b8dfb5ef9ff455279aa8e613cb6b6453776b941e1bc6d0caba83bcd', TO_TIMESTAMP('2021-04-30 11:14:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1287');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '0f29fa225ef896ae3862696e4f348124880853a1caa56db0a31b9b918d66d42f', 'ba12e14a4af13425abdcb9cc892dedaf05881ff15ca74b2996ff453205e10b40', TO_TIMESTAMP('2021-06-03 10:47:19.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2536');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'fc914c8b78ab3c87b7634bd16bb059860113cf6fddeb5b4e7b4b67d0eb7639ab', '232afff374331ce29f1aa12ab69c3d7dd779dd9a37000f334171bbfa01b05f40', TO_TIMESTAMP('2021-06-03 14:30:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2537');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '0fcced84acf7cf4c9e3dff39927df7f0a7c989ccaee4dcc8c0148c907f69d65d', '04fb65122521b56ccb895dc9a78183cc3aa57a7d417236989a257606e4dbaf9e', TO_TIMESTAMP('2021-06-03 14:38:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2538');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'c1e0ca1d5bfbca47ce994887ba8eb576b7fab9c5df3649bdcad2726479fde383', 'f90e4ea847b128800f77f47ad8c715955718655604a406e0b148afd033b07311', TO_TIMESTAMP('2021-04-30 11:24:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1292');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'd6cf0e70f65569c04a6fc631f0f1dbbc2b81b9181f53e6ca680c00c084531fea', '417add59e276b856139ac468de671b337269d303aa651d41a52d229733fb7b50', TO_TIMESTAMP('2021-04-30 11:27:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1294');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '600c9a9d70dad723e91df5cf66538908987f6907e650be3f27e83d59cb9cf177', 'b216b80f273fe258eb23527011ecb38edf3bf857195e2e96b98853e4b0ade773', TO_TIMESTAMP('2021-06-04 07:35:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2539');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '60efa9d7781bb80638c68a2069685875e3c53298f7d6d0fa16c0f29e4b61c8d1', '99f5517945727d8c050d6118d122ad715eeeb19355157babd0cf5ee389d304b0', TO_TIMESTAMP('2021-04-30 11:29:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1296');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '56679223c12a7e727402e42b9a5226f41534202d0e313a43f0b54f5330a0b0b7', '056277e339eb8504a730788ae4f663184caa60914ddb7997678de6aefcc154fa', TO_TIMESTAMP('2021-06-04 08:35:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2540');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'bba4e304be9b86bdb2f2201484a908325217333191cc4d0bfa08c227de246e55', '803e07a1334cc004078db28db2ca31033af3cbbf5d8211c0a3662bc1a2b1865a', TO_TIMESTAMP('2021-06-04 09:30:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2541');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '76abfebc7bddeecde792bb285731e22ddf3a6eab36226a23f3e7bd394cd7bcd8', 'bf94f29860139bc9c05b23037dd4f527a29064dc42c27a901584dcc05e252e11', TO_TIMESTAMP('2021-06-04 09:48:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2542');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', 'cc6608951cb274fcfd1f9e52d845c750975cf72c0cbfdd9aa49a7feea1dba54a', '6f6381955cc9607bcad5def81baeffd21dddb938aa02697defbf0b48642506b2', TO_TIMESTAMP('2021-06-04 10:09:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2543');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', 'c2c5e427b6def62cd6ef6afd15b3100d43c34c7701520f5634bad697a4174782', '0bf953e226c4d5953130fe148c76c5761a9bd0cb3d285e80597417acec4bd611', TO_TIMESTAMP('2021-06-07 16:17:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2575');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1061', '756ba53acb64395bf9a3f03b803cc2d2d124c58aa8379c85320ff5f0f310b3f3', '5653c3cd637cf8aa4d41eff5c232d2ce569076a2257e3c5090ec53910cb9b2b3', TO_TIMESTAMP('2021-06-07 16:23:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '2576');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'e5835bbc97ff9bd89ab70f762f174523fd42dc1cf8805ca8017a9acad874f999', 'eb2e61490e1c4058ce3eea95724676ff59f2f46417e908d2ba2baed9c68feff9', TO_TIMESTAMP('2021-06-07 10:21:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2555');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '069781b861de7065749a51a9ad5c9ae4fad5dd1534d7b8b14f54bf33a6f2703e', '6f7d5f1f859994c9cc7276497c4418266c508a5dc5f56a654b966e7eb55ec2dc', TO_TIMESTAMP('2021-04-30 12:34:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1320');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', 'facc190369bee114a5eb5e6eb733f1827227503ffe65f4e8d446c239389091eb', '4f71e3e823338756003aeb8569b0f948ac044c9ad4694ab02b16bf124fb74e16', TO_TIMESTAMP('2021-06-07 12:52:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2558');
INSERT INTO "SIMPANDA"."authorization" VALUES ('15', '161dd261daf111dec68d45ad4ef97d936cdf5b7e4d24a8766db6c5132ea48a51', '91c510d10e97b5d4efa7e0ca048ba28a96f9d22e6c6abfbe1cf8b314d0283954', TO_TIMESTAMP('2021-05-24 16:18:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '2367');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'd751e9421c03b110de6c9dad55fd8478fc1842c5f83cfc84121331616990ac27', '1021402985d4b98f4ba1cf4537312945c31333d5f54e3a7c1289e33180f9b533', TO_TIMESTAMP('2021-06-07 16:24:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2577');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '01ddcb50978565ccd782d3a1a3aea536aef6d96d86665b327d4c04c9157e5235', '53ff44ad849336e2b40c579ea3837c02c353735a029ea8d506367fddd2f9a387', TO_TIMESTAMP('2021-06-07 15:02:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2572');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '358b6115771c6d69e9cd39e179cf962f17287c554a913b46d6049af3d3dfb112', 'a1f1189306e095bc80794da9a3cc93e74a6a7797d37bdc24a5729bb3604c8c23', TO_TIMESTAMP('2021-06-07 15:08:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2573');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '1e56595e0b5adf125ee0dd4b59a86c632ba6a41e2645f678597164ed6f60abfb', '799de9cd354b3aec547d27ebee1c8598f7a4dc9f299917046da412e6618bf64a', TO_TIMESTAMP('2021-06-07 15:42:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2574');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '8edd90ae19ab81b73105e091534d687c5825c2ff716bbec5bc6c399aba97e667', '4f9deb279327471a68f72ad07ff11dee05d23240613ffb35bca463268ebeb7da', TO_TIMESTAMP('2021-06-07 16:25:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2578');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '09ee44789be8e8a7553f3af410a87101fbb944ccc352f0e16b48c3d30961f448', 'b28cfce506e1ffa5e242deaa86042a6d8a37976644977351b45926a59735b0ba', TO_TIMESTAMP('2021-04-30 13:56:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1328');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1077', '21bcac890479d8767d07b395cc841740da15e3b6736b08675f8f95e7c711eb03', '13e2305013da98cb4d1214647807a0b8cb0cb4aed12cd2d192a44e7a8debe7d7', TO_TIMESTAMP('2021-06-07 16:26:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2579');
INSERT INTO "SIMPANDA"."authorization" VALUES ('12', '785be651360860ada67aca8e265e9698f46fe75ee2565a3c50f6c981a920ab3f', 'ae39473725dbcf144149556fd7a1fcd57806553a58db4606753a6537e7eaef72', TO_TIMESTAMP('2021-04-30 14:14:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1330');
INSERT INTO "SIMPANDA"."authorization" VALUES ('32', '02a1c8818330eb784557a311738c5e56cb14107452bdb5f85d42a3274793cf79', '120a0e8bf5aa11d48fed3a311a05fe58c1f0c05d71294dfcada6d3f7bd806c86', TO_TIMESTAMP('2021-04-30 14:18:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1331');
INSERT INTO "SIMPANDA"."authorization" VALUES ('13', '88c893e29c8d6ccf684b29d6b303f1052669ac7cd886adadf0867b971363d36c', 'f4449572d40d38be1cd74e0449acf4d61fa50e1947e0c3e72493edf2dc65624d', TO_TIMESTAMP('2021-04-30 14:19:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1332');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', '81e0ca8429fa36be85c281d29b53597e9e84274f519b25dfac12caba13c2cdb4', 'e89f529aff1066312526939dafd99890dba3887ac71e86479734361901b80d80', TO_TIMESTAMP('2021-06-07 19:28:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2593');
INSERT INTO "SIMPANDA"."authorization" VALUES ('13', '4d6a1a7702e59eb32ab026becad4d3ed29eee27b88f45964ae458f7dba981039', 'fb71a4c6909267039c9bfed0119da96ab23dfc20da7f5c895b141af61f2b2eb3', TO_TIMESTAMP('2021-04-30 14:24:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1334');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '5ab68ff5b93ac1ec0708b90fe467c31e52b88df05931017d425d2a8e575902b9', 'f172fc84b9cc172d8f56ccc320fd952752e85a6bee0f5b8aa00deb3b9c7ae8d8', TO_TIMESTAMP('2021-04-30 14:26:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1335');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '571c169b8687147c04923c2a3a07b64ab744abfde4978f60af9cf59955a36765', '3b0a9ed6f66ee2e428110e00cc7ff75bd3aebfda127c05d10257fdaa010b7cff', TO_TIMESTAMP('2021-04-30 14:26:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '1336');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', '8f64dafd7cd2ad270ac9347f74b4f356aa7c24d8343cd33d28d4db4beb2f40e2', '5d1f5bfd700cdba763a62e8c312d290bebe5e3ed700c7c2e244ae9eb23726209', TO_TIMESTAMP('2021-06-07 19:29:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2594');
INSERT INTO "SIMPANDA"."authorization" VALUES ('25', '8610cb2565713e3a0dd74e2c5a468ecf7eee85daf13ae5c62659bc1d2ad22c2f', '6e97bd2dbcf2582b699a1f121c0408ff5980436feb1c7831516eea72f5d6c5ae', TO_TIMESTAMP('2021-04-27 14:50:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '963');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'e7af66dd434bba248f5fd36c31644cde00ed0f9f75c03611368d4cf96eef8ce4', 'a4f984859eba544abbc1646fa9bec59b8f22b3438a8a0e9cf3320d3f1299b481', TO_TIMESTAMP('2021-04-27 14:54:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '965');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', '7d83386b50de670383555b8be3d05bcaa499e08f5a1064c4b9d5346515f87b7c', '22ae4b03bdd8e6fbd5dad8c06356070edfedca40509900f0979e047e5825d9be', TO_TIMESTAMP('2021-04-27 14:54:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '966');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '2e904cf2e244edf3862f31130202fb78f6227f51a904c3facb597b4852681b20', 'e884117969150e513c7e5a802f1b50382c7614d6d3e7f2cdff23f6d6090bfa9e', TO_TIMESTAMP('2021-04-27 14:55:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '968');
INSERT INTO "SIMPANDA"."authorization" VALUES ('39', '7347c614c430d429d32cb1b7f8767e285519ad9546341c4bdcdd5de789875f56', '76d9f4c9df5d56148446f09ce5037998f01ef54b3666adacfda2201849e1d198', TO_TIMESTAMP('2021-04-27 14:55:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '969');
INSERT INTO "SIMPANDA"."authorization" VALUES ('40', 'ae5f354b51e19e98e3060b19afb0ded3b21637dbce4920d0f623598023c50c72', '81c6aa92ab6a89b8eec7eb2bb6756d17ca5072917f8e5a62b3623e73e7ac672f', TO_TIMESTAMP('2021-04-27 14:55:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '970');
INSERT INTO "SIMPANDA"."authorization" VALUES ('40', 'b9eeb7344fa7d013a92eb529f5139167a50f039bbdbda1ab4c0231cf38ca14b6', '62ae218f315a5aeb1ae1ce1dc19ff33e1e452c9b093c78a7938f7d8f19e21a8f', TO_TIMESTAMP('2021-04-27 14:57:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '972');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '289a61ce9e978b34e45b5db1df6f1af25632a6c78f4dac7a2944c3d27022c224', 'bfdb82539b1159941408952cae0473b7998fa26c6b99b55e5d4d0964b09aeb7d', TO_TIMESTAMP('2021-04-27 14:57:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '973');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '177de54d599654d8991399d22d9a34202a43c6c63cb7c63faea9e4d335277bf1', '39261f04d23cc3bda823cd5d572c1a05b2e3a3c2aed36d9d471c4f5ef6e2f0dc', TO_TIMESTAMP('2021-04-27 14:57:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '974');
INSERT INTO "SIMPANDA"."authorization" VALUES ('12', 'b71ff9aab33f8219133f4c21c561bfaede95f1e458eabf62f0916e5958fa8ad3', 'fa506646a8133a1b53d851ae1d2018bd51fde66fa93b9022b6e5cf86815fd9d7', TO_TIMESTAMP('2021-04-27 14:59:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '975');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '84723090cbdfc1436c9b99712805db1b4cb8434ec1cc84de303be3a9777701d1', '09b98c4254774f7c69720eb13969f9c14d5c15d0d45e17de4333cf58e3edb0a5', TO_TIMESTAMP('2021-04-27 14:59:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '976');
INSERT INTO "SIMPANDA"."authorization" VALUES ('22', 'a91834b6cc11c9132727cb84f78f5c5a7295f54d191f3010f9cd1063c627a5ab', '71e2a3332979acef9a59ce8f3b6d5af16b2045b2ca9e48a8c5c455ccc174c94a', TO_TIMESTAMP('2021-04-27 14:59:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '977');
INSERT INTO "SIMPANDA"."authorization" VALUES ('25', '69c3f0df2ce1ed36af10f079cd3e32748e549617e96fd4da1be0e4abf04921fe', 'ad15569090419e4fa85ced88cdf0ef59d56a4643e4747a71bbaa11dddd4ec26e', TO_TIMESTAMP('2021-04-27 15:00:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '978');
INSERT INTO "SIMPANDA"."authorization" VALUES ('25', 'dba54fe01e120e494f0efee94d05848a8e48f0a44bc35af43f6157cdf25b3a42', '2c720a08ce9bdb169116aed669e412a3fd9d8ea26aa91a76f3fea6074ef02f5d', TO_TIMESTAMP('2021-04-27 15:00:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '979');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '7fc6864c6ededae1d84ad5b04e90f45204c952d11187dba3a7d65281365bcc53', '160be444c4da73f3786fdf5619596fdea5a058239a9c60a08edc780b64831012', TO_TIMESTAMP('2021-04-27 15:14:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '985');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'cf84daa33e7d1dbc0636d2188e8b6f771b2b2d2d989a625d0616160c683aa7f5', '3f96e45a055cd2c808f062e2ff92a4d96ca1c3a8dab8000b6ab3f20af5a48613', TO_TIMESTAMP('2021-04-27 15:18:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '987');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '4df820b14f6ab568dd06814548d9fa13084a5183210c494ff64be426d01b0a86', '377a207d7b1a2848b64a25307ebafa8316b61b84059155c78feac30184c6c3aa', TO_TIMESTAMP('2021-04-27 15:54:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1008');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'b934ef32c06b55f5c0039deff40871de52df38c7b729d7e0aa834cb2fde22f9a', 'a2e655ea203747854f60355092d70da9e7ca98ae20d70aa2ded2ac17dcd801cb', TO_TIMESTAMP('2021-04-27 15:56:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1009');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '232b1eb5b42d1a79644489d32f10f6612bdcee93b251a21bef4c6313c70baac4', '10c7f27f665d99f4b418c39cf71781a9fa64ec6a500f6636300fd2da194875bb', TO_TIMESTAMP('2021-04-27 16:37:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1018');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'e771c5176e11d1e4e2600407f45190622ef11bb6882f82c9c925033567f5107a', 'fd8c62498f11a26ee19847a2e75dc1aba6224c946c467aefb8c3ad48535bbee0', TO_TIMESTAMP('2021-04-28 19:45:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1121');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1001', 'd8842a7ecb2c4549b20201a9183e1e0d44fb79b9204e3512e1b6461b777d881d', '634cf7be0927bdafb735a84f2b598ef6ce319b061f0f894887dd822f0d17edec', TO_TIMESTAMP('2021-04-29 11:30:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '1171');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '3c72b1ec1f43f88def19a672576b3d3b57bc23b702e2854d98d6eeeab6f0d660', '6a41c0e9015030556809231e7a349eaba6b669974bc9764457a6a126e2d39bf0', TO_TIMESTAMP('2021-04-29 11:46:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1173');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '9dbf5fc2a52fe141145bf7b3d62e03e027a03de1f7f277331ce61e194138545f', '3de387093fe06352330e2b0d7c6391802a84b6bc50bb32a827aa6dfb8662329a', TO_TIMESTAMP('2021-04-29 12:35:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1178');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1001', 'edaf883b8c62547155e6e6d423bf6a694a52f5bfbe2143e38870207aac6705fd', 'dcb530a6c3928f2c5dabfc17d13a3b92ed303803fc37880ce7f129cba9da81ab', TO_TIMESTAMP('2021-04-29 15:01:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '1215');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', 'a429b576975d163633b141ee8d9b590c50afccb0fdd97b000c798459241c8c9f', 'a27b72d9853e344835debf97fbe6add0ac6d2a5a0554de729c33f71d236c90df', TO_TIMESTAMP('2021-04-29 16:10:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1224');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '9741066d289d5c18be79600b93d1dff02eb8526fb54d316b194fc57c5296d853', 'ce15824fd790a29cdb1737f52d6e43e74349903db08ace3e4651008ac5edf0b1', TO_TIMESTAMP('2021-04-29 16:12:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1229');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '29332a3d07de88806e5f4660f088e9c84787349e86a24a8b49ad74aa18ec5281', 'aef9292caf4353fa7881dfe45625ed32fbbaba752cc9e2d97452dce022f3b4f5', TO_TIMESTAMP('2021-04-28 21:40:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1139');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'dd931df20fa9158affb57a5919be1e16cb78f38eda2cf3a02d60ad9fba016873', '91dfeef8aa295adb293a7b44749f78a72c3ebaa1d77fc58a1c9b7838606f72ae', TO_TIMESTAMP('2021-04-28 21:40:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1140');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1055', '2857b1f4143164caa7171f8347d12e4db22188b1db060de02b113a7f20d4844f', '780e9e0b993703de86a91ec3bf7da081f4f7a56e51369c7a400cb2cddceeb8bf', TO_TIMESTAMP('2021-04-28 21:47:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1141');
INSERT INTO "SIMPANDA"."authorization" VALUES ('10', 'f6e86982dc0e2b1ad70dfcdd6293436b8a406609cddd805e1abbac95c9307fd8', '4356de9dd7e4c1ecc913dc2ff2c76f5560b38da7f91ce3173282ede97913e292', TO_TIMESTAMP('2021-04-29 16:18:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '4', '1232');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'c6fb41c610f8a50ca5a7475351cd7e41dd538461d571e9130f65610cf6457442', 'd365d3f64d4c664a1ff3741ad1face3b15d06dce413d6bcb0671adc4a2d33d36', TO_TIMESTAMP('2021-04-29 17:19:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1240');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '25a2a474b63f64bc3e37632b2f0e933d1802f35f376427c933497e529cfc9678', 'cbf0401bed14fa76cbd5fdc7188d3b63fbfad3a78192b2e891a318d44a319f94', TO_TIMESTAMP('2021-04-29 17:19:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1241');
INSERT INTO "SIMPANDA"."authorization" VALUES ('15', 'ab97ad06716797a73db0b60c783d64725be2a1bf51668c2fcab4cc95ccaf6629', '7abe0fea90f32a4bd1ab316dcadc6476ef8132b821d8bca8a2bf26105997f528', TO_TIMESTAMP('2021-04-29 17:21:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1244');
INSERT INTO "SIMPANDA"."authorization" VALUES ('21', '4c75dd765e2bac82bc055e78009759d3a0b5f72ac7323fac928bd32abe705161', 'bc7cc3ba9ce3a4142acbd2eec72f3ee5750ac4799f7213989c80dedd8da7b2e9', TO_TIMESTAMP('2021-04-29 17:28:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1246');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '8577658ca4b0af09678a2bf10afab8d07394310b69a809495696591e45cabcb3', '7bf16fbbdbd4a5033113d56ea007faf550ceb80cfe0049fde883ec1fb8145c20', TO_TIMESTAMP('2021-05-03 13:40:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1467');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '93c2a5b316d1f18eb43e4c38e87beda568399408986d4e2a91e48d0483dbdee5', '1a6f0cce56f1cf7ca87166ab81f109d65c31886521a530645e20645453dc20a4', TO_TIMESTAMP('2021-04-30 11:58:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1304');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'a29ff7106689ef9794cb52a6502922455277cf160fa6a45e905bbb7a1ec6e31b', 'f5f7567c2d54285815507fe49a6d03e1dfc0309825faee2f1f37e0fbc088c0f6', TO_TIMESTAMP('2021-04-30 12:10:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1306');
INSERT INTO "SIMPANDA"."authorization" VALUES ('30', '198650e0f8ef72dff0192abe89ee4d68ee58257088af2999941a701707bc2a4c', 'ee94057a6520518fc937eab266ea3858ae232e67b47abf5169748cd93297a953', TO_TIMESTAMP('2021-05-03 13:41:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1468');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '11b3abc9e1db11891a0b602bbf93d0b8de78cd01a1c0e0542aa9f07d2b21b948', '34aaf4ba52d62d4cee7b93ecf6a9aa398af3756b8e3168c63311acdf235185ff', TO_TIMESTAMP('2021-04-27 15:06:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '980');
INSERT INTO "SIMPANDA"."authorization" VALUES ('10', 'ba8e4651de30f09839931a6c2c664e2aa1905f585365f3242f56b9e57170cf3f', '4a082d2367c41d53808d1f0c9be550653c6bbf12412a1402e2af56c138431498', TO_TIMESTAMP('2021-04-27 15:06:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '4', '981');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'ccaa6c624febe5fe8753d1a73a14ab8c2d4a022afdb19f572c778bb5f6126dd7', '13051d59ae1fff014981367f9d7a6e44d7e619efb335261f69b9d040525c89a1', TO_TIMESTAMP('2021-05-25 17:05:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2449');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1061', '7a577be1ef50fe664f21d96a404ad80ed4bf1a113c9145bd0dd692d1d0521866', '89c0d830ef00eaf48f730b62f60d2195331973cf82b56c48226a9e936433004f', TO_TIMESTAMP('2021-04-27 15:08:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '983');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1062', '38f7fcee1a3ec60f35a8c99468f64e477e9bbad6772c11d58b8ef7da5decd0e7', 'bb2d1d6d16f30189dab28753f222d7a1c53e1d9d24023b43be6ee9ed30e521ee', TO_TIMESTAMP('2021-04-27 15:09:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '984');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1063', '4ddd3377359836aa6894a3480cbf8692b17bde7d728ad3006e0e55ea8918b36a', 'f7b5f2e6b4a8194b343f819a18b2f531aa80d9c8ea6797c3d1f2951b74dc2129', TO_TIMESTAMP('2021-04-27 15:24:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '992');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '09243afe7b7ee481de039cec7c1fd6b400df87103b35201b4d1685d95d825d22', '7319ab3d127b3d8765b3ae0126a01f2df368ccaaa4044cb750518017d65ef54d', TO_TIMESTAMP('2021-04-27 15:24:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '993');
INSERT INTO "SIMPANDA"."authorization" VALUES ('39', '37fa059d6b2e79cd7c0d72ce43a2d32374184ec0898764986a2079d0871bc8ec', 'c15ddb191ce64b66f7fe67bef70f6ec11b93298667ad386e2b6f841f2eee6b86', TO_TIMESTAMP('2021-04-27 15:24:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '994');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '814e04517bb40c5a97ba4a4687c5be0c9879fc62d63fceb602f5d8009bc9c670', '726553168cc6d8829ad5ed89a3e21dde6e62c93801f42ebd2c2de91115ecbe27', TO_TIMESTAMP('2021-05-25 17:18:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '2456');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'c1c84ed54f4258ec3f25199007ddf8746c995f27dcfc4be1c1a25d8278597d34', 'de35a8474c9f8ebe0b9203d1b3fdd8bace6599bf36149f8e957a6067af55294b', TO_TIMESTAMP('2021-05-28 12:09:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2473');
INSERT INTO "SIMPANDA"."authorization" VALUES ('16', '13220b4d0c7bf7cecb7a30a270de63faafe3e5ed15b1cbb811bd5d7dd04e04ac', 'c40a24ecce4a671be0cfb6b3a7045ce4ff840ce83f12153a28f1fb8d33ad2568', TO_TIMESTAMP('2021-05-28 14:58:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '2475');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', 'b92387ecf78fa2dc812326f34ecfa744b9bdc6f56afd9a5a1fb14ee13a697f36', 'e5ca9c54747a4c6ebf462c08d1379076120ad8ff62dc075bca54e87c02305a43', TO_TIMESTAMP('2021-05-28 17:32:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2477');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '3210f4a0810276ff4ac417c9cded29a6f09eab4419bb8f79623ebc7f0027722f', '7d73769f10562731210e4c02d5b4ca0e382e884bd177ad61d0c0c7be19601a86', TO_TIMESTAMP('2021-05-28 17:33:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2478');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '668299364102645f613f231011515eef77a5c1b0e0866570d5056b5860435880', '9c268d0826abdc80c624de8d578de95b2dade91e2713ba00189b602dfa8d41c9', TO_TIMESTAMP('2021-05-31 14:50:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2490');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'a8a1b7244dd76caf1d72692d56b24081021b9e949228a8e29a0b79a6fa1dd16f', '5d9859490f22ee6152238f27499fa21fd14fed64f40be11dcf43def32b1e21d2', TO_TIMESTAMP('2021-05-31 16:15:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2492');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '7393c2e7b3800f99c40303f2570587cc9aeca47d1e182ab979269662e4461960', '22872ead0e1e4d0e81edd2571cdc33214900d56b176dbcaec8efb5e401bea5a5', TO_TIMESTAMP('2021-04-28 10:52:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1062');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', 'a6f000f482c7f9668d3be52493fcaea03e4404ae25ed8746e0903589825a9a52', '0f5b2b6a75bb2078e136f9db4105cde39e3044a5bfddb366d447a37fd7a094d2', TO_TIMESTAMP('2021-04-28 14:13:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1082');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1062', '79116345bb45969f0e1b67ae55b2e9b8622b547a911c60e37af502246d2cb0e0', '16ac4940b056a71f30c860c167900eb20426e42ed236c64821c656fb7f9a3376', TO_TIMESTAMP('2021-04-28 14:18:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '1083');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '5e7b1b9e2e21d845513db2275fb8133cf6a42e1af300d88a9e9be6485e213104', '7f7d34904298a1536cdb4cd15be7155d8a350eef283640822b34b0ae3da06749', TO_TIMESTAMP('2021-05-31 17:25:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2493');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'd7f726d5ea2b4924ffd8c20556da345e9082515ef0f55247da0be81eebf00a17', 'a69ffeb1d3b5e6a13020e01dc203efc94333a1f986e84a20e641a6deabb93378', TO_TIMESTAMP('2021-06-02 12:40:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2504');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1062', '9765a0d314325a2114f7bc3331957c01737131656105c9880d90e60b0ee1abef', 'faf20d1f60f93398ad5ef5af222a7219fca0ea2477dde77f0571c8464cc72de8', TO_TIMESTAMP('2021-04-28 14:22:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '1087');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', 'de1486dc1a61b80f988258944d3d92af1d740aaba4b6674abd1a7c1601f8d6de', '4f4bebbc44f8e61a1141fde96e510d9741bf9a37ceb700b68385ddc3c30328f5', TO_TIMESTAMP('2021-06-02 12:53:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2505');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '756cc4403bf9ad8f54288c687d91ec9767a0584819095abe4dcf02077910608e', 'e461306c9afe5640cc4e596b1e8e36316dc6a1624424b7df476fe09b1fe75342', TO_TIMESTAMP('2021-06-02 16:45:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '2524');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'a617088c127462988f6379371d5c40c90a80e625fd589d9b932e4c7570bfca72', 'da7ee9b94365e0d2e75d28fe5ce8d223e243355374c9af92749a7d14f50401c0', TO_TIMESTAMP('2021-06-02 16:50:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '2525');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '08f59ccdf8dd85663b4e29fccb2885701f0ffcda6a29b491e2b76449c84f13ad', '1808f6f07967f04ad1d001757c27c03176798f05cc02ee15c5873df8e1dd162d', TO_TIMESTAMP('2021-06-02 16:53:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '2526');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '6dc93bfe5e780f091d026cbbf25e8089476ea8c24d471636a4b721450b84709d', '3632624b5ecce094843055a3068352bbd93f3f05085635bfbf4b1a5e35b1d5eb', TO_TIMESTAMP('2021-06-02 16:56:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '2527');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '406ae8173fd2f52c3864d98b964e0f088b6b0fb3d6dbc48f9d7b6d58b73aa6e5', 'e38eae274ca639e239588224f54b5b6bc71288265b2dc751413d183a34096456', TO_TIMESTAMP('2021-04-28 20:14:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1126');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'da2acb865fd75f4224167a44a7ac2c5a0e9e5cc090fa21fd5706d13a158ece8b', 'bd16aa296d8d4f73822a6edbc94a49d420f28b74e755284808d755aa0968b848', TO_TIMESTAMP('2021-06-04 11:43:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2544');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '227ab71804e7e3847a6eb33946058f21ac8d6a916b0c0dd010f5c41c42ea364e', '3bb622fd8e93062f4be76325a63d94e65475bc2feb5423fce9ad9d2350f6708c', TO_TIMESTAMP('2021-06-04 11:51:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2546');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1001', '8121b31b609f3b0b42516d97caa0c652f3f580018dc8f7f15bf490463bdfa046', 'a58781a1976f6bc7ddb12bd1bf28e7522a45beaf8037b4ddce04d6c16c2ee949', TO_TIMESTAMP('2021-04-29 11:09:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '1161');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '5b9675e1fc00de31e8aeb01c67b3b3502b3ed20f5d12e3f7e5b5ee88b715c432', 'aa8f490a4d67cd1631075300373da68a5bbeab69a4ab365af6de6b1ba13dbabd', TO_TIMESTAMP('2021-06-04 11:54:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2548');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '05ae832e44e504f898bd3bdae25307466948ec6e6321347c61802919667175b3', '7b56d564aa7c4bd8b9b72479ee72e8f3c13e2c6eb3352c5c7e10e3581327c491', TO_TIMESTAMP('2021-06-07 09:53:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2553');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '1962a3a6b9a934f940000ae5c71b68c423f0ea6bef7dcb51d3191bb19b1b4619', 'db9049fed3bc306116fcf832130e1a41ff01cb01f58f381a39d0ca003e340c24', TO_TIMESTAMP('2021-06-07 10:26:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2556');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1066', 'ef1aba6e9284dbf076135cc74143c9164bbcf3ea67e302cd4db7c8947d6f5b11', '17ce1720ddf57db038b62114bb2a93d5c4928891044d6ce179faa5604ce47b84', TO_TIMESTAMP('2021-04-29 11:19:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1168');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1066', '5cc223f2f781cf32c258cd30060bf0a57ec94bea7bb72cf766fe58623015ac4b', 'da6ab3ed4046e3fac95d6e61a2c15604bc3e0043e71d9d4b839549415decbc28', TO_TIMESTAMP('2021-04-29 11:19:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1169');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', '236d0ed226181899b132d3e05886e1f92aef94e1f9f043be4669686884aa7deb', '371b5ee96a24eb488a90e81f557a828c1c253c13dbb159119e4129fef97e4e72', TO_TIMESTAMP('2021-06-07 10:27:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2557');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '69e0989a9a67164a210cd398752fd2b91ad58279da81212d97213d69dded5965', 'a1d4a8a5fd157be60984afed63e3f1a3ec96468c67af992f2c95fb0478694204', TO_TIMESTAMP('2021-04-29 12:41:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1180');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'e031bd5508401dc582002528684b7829a5490f3cfb4f27fbc70d4fa669057dcb', '876606eebde2cd68bf2b3a845a180384a63d8c4997116c2a8b65f738380b9028', TO_TIMESTAMP('2021-04-29 12:44:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1181');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', '68d14238614858138d5b27e6cb7d155a01af0243a4545ff597cf23fc17eb8eef', '8d33ef707937044b2c32d0237e800f10afaaf3d8b930342e8e6c1868097ac014', TO_TIMESTAMP('2021-04-29 12:47:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1183');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'bd75ddc7e8a3dda42bc062b137c905b90d1d3f39ac70a6df612e72e15690ae95', '8e0cddceeaca503bdb5599eec57b1131feda34f3feb5a80eab24776bc041bb9d', TO_TIMESTAMP('2021-04-27 15:21:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '989');
INSERT INTO "SIMPANDA"."authorization" VALUES ('19', 'c076c1066721734c610b41b9c8a78d2a50e48b467d199a7b3be9d12b0b86bcac', '30747087001813f495f46a4a25b2e2c4ecc3da6911da9f7adf4a56dacfa60995', TO_TIMESTAMP('2021-04-27 15:25:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '995');
INSERT INTO "SIMPANDA"."authorization" VALUES ('17', '6c6095e2e2531787b5e8298e40382aea38b3f61518f563ebebf624b99b370e11', '05e7a0a5110b3511e2a827e45df8b30cd15cb679956deb40552678208a0385f5', TO_TIMESTAMP('2021-04-27 15:25:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '998');
INSERT INTO "SIMPANDA"."authorization" VALUES ('16', 'c64c8a62b88de1e1f18f9e97869dd025049a566b0d1e7a3fc599fb3cf46d5fe3', 'f6034709d2e03ea316c380a01b480bdafbf97b9bcd7119455b514b18588b3a3e', TO_TIMESTAMP('2021-04-27 15:25:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '999');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '6e33768e9061c7f6c565c6dbdf14829d5290297d6bb9d6d76e6fec6bd7c3fc8c', '45caed4d7e98557b65258ee0342d78c9d9e70ab3d18d6270218b269508adb182', TO_TIMESTAMP('2021-04-27 15:26:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1000');
INSERT INTO "SIMPANDA"."authorization" VALUES ('19', '1ab90d6806a727070127f66ea1a3da9e496150e49f77b6cdb1810e2fb54c9ba4', 'ba24067a69e6deda07ec6ab0ed1ee98b90321a95c1016b5251c220fee362f850', TO_TIMESTAMP('2021-04-27 15:27:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1001');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '93d5ee391136ffe6cd7af5ac99e8acc636f6d6600bfc1dde2a27324ee70ba371', '88c42b53fd9b1390d0fb2c393fc97bf86738b8be647ecf2cf576bb87bf2a99e0', TO_TIMESTAMP('2021-04-27 15:28:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1002');
INSERT INTO "SIMPANDA"."authorization" VALUES ('17', 'bd28a60ac28a4ecb8f460c76b0ef819c20e5c344425d644afc76d32ba9276767', '156168b8a90bf62aef1d8eb077205aa92eb562131c81844ee6cc2c8b17810787', TO_TIMESTAMP('2021-04-27 15:29:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1004');
INSERT INTO "SIMPANDA"."authorization" VALUES ('16', 'a5276cbf5b53d3ffcb7da32e84a3da4a35e18e51239f7502982bc63f2729e23b', 'b31a2ae1c88535672255de0ccba789aa97ff0a76d4b01c4cca49af6cdfd176e1', TO_TIMESTAMP('2021-04-27 15:30:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1005');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', 'd3de65015fcf408f70339e1a1215e42b5afb622ba87598de43f9e26e55f1f76f', 'b64d3e6b1372e1f3a896740e5a910e3ce19f75fc62b2bd2637d711f0e008c955', TO_TIMESTAMP('2021-04-27 15:51:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1007');
INSERT INTO "SIMPANDA"."authorization" VALUES ('40', 'cd4a66eb1e121b797ee5ef924cc4ccd2ac65490e90dd8d0fdbad68e5cebf9ebd', 'c964a2653769b0ea38f727829928b70571298911b0efd34c3622aa98871e34e5', TO_TIMESTAMP('2021-04-27 17:15:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1021');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1056', '976b120e613594971994ebdfa134b9d01ed07011c4aa1d0c7ff879c45f1d7ba5', 'e149aa683a8b22fa463b4cb79d8bce2e96ffd08e5672442678c20bd9a736fbd3', TO_TIMESTAMP('2021-04-27 17:18:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1022');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'e40e9a0f1690e5a1d475431788085508f2a9610a1d7b138de4abee1446de4fb6', '56fa504a056542faa5fda4acd32a111e098395e5be219a574cf1dbd6abbff04f', TO_TIMESTAMP('2021-04-28 17:04:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1115');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '127a35c40348b46f769b0e69560848e646eb13fe71e92a6b66d6f3c0cb7be376', '6f426c6191b5a4331247951a247ecf0bf161fd95f6694f386b233bba3cffaae8', TO_TIMESTAMP('2021-04-28 17:04:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1116');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '1ff552b9545a8a28a5f6f6e8ebff614c023af6ddeaa490ba57c3513df404f990', 'e25b6387434af71a52e0f5da5c94fe3e66525b2c744adea20545497818b04473', TO_TIMESTAMP('2021-04-28 17:06:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1118');
INSERT INTO "SIMPANDA"."authorization" VALUES ('25', '82813185f9d4c2341bf52e87246500bfea7fbe8e6e1ef6897f0e95640e71556b', 'dc648748e0edd16982efdaf4e8079fa183c3abca0aea75f8d6e34d62c3bf8e3a', TO_TIMESTAMP('2021-04-28 20:35:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '1128');
INSERT INTO "SIMPANDA"."authorization" VALUES ('25', '06fcedef7469022ba07d3d2b922527d48bf3d1d57ef5eee098d20c61cc2704ee', '5a136454fc1f777d1ac7d770838ec45ba29bb894f4c72620ae471cc98d666f65', TO_TIMESTAMP('2021-04-28 20:36:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '1129');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '9a71d8107eccf5adc06adbeb8e6baee00aa3a40d2c3def940aebff7ebbf02903', 'e05894e9d62b9a6e20927e108f2dbe07b19a97c9819e2b704975737440bda60f', TO_TIMESTAMP('2021-04-27 16:03:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1011');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '059c926d40fdc085d029e7f309ef40dcbd56314310967ca848038c564f387ff8', 'c4d406d528b3fa368f0c088b923c506f983d99586daa5c7092d37da06666ecbd', TO_TIMESTAMP('2021-04-27 16:04:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1012');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'c4721fdd8953dfe6c5daeb79dfd1b899862103ae5a9e27c73eb2c9a6277408c7', 'a2925f0f4c2563123178a6f5e1f42d7bf94c4e221a545f5ebd04893e1d40f3b8', TO_TIMESTAMP('2021-04-27 16:13:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1014');
INSERT INTO "SIMPANDA"."authorization" VALUES ('21', '932e742dc604686b0f25a0b453c4e9d21d7cdecf1c40e87f5db5424bb1bcdf78', 'a8b17316f6a1f4069c4eb0bc4a9bd32729b81544ef86b52c4f5ee05228be3b7a', TO_TIMESTAMP('2021-04-28 13:27:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1077');
INSERT INTO "SIMPANDA"."authorization" VALUES ('16', '212c3441cbb4889352b052d779b1d543d0455d0800de3b840c29bd4f02b432c9', 'b4a584555a0abcd10c0874223325e30ebb8a9bc9d81d3a75e27d0a4be4236c67', TO_TIMESTAMP('2021-04-28 14:12:45.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1081');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '9bc5f289113a006a5e24137c06d071d39e56e4acc23f513723a718305eb07257', '28bd91af779baf1b4f485e284c3b9ed03192bfe59365d26d169c5a16fb31b5bf', TO_TIMESTAMP('2021-04-28 16:09:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1108');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '139275a46f0ed21217f96e873d5aa7dc758cdd47494dd01fd6f1393e07d3f4b7', '98bfe0e0ced73c0f143a3e7e7fe4a44c800e1426adb8680bddae370341421df3', TO_TIMESTAMP('2021-04-28 16:11:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1109');
INSERT INTO "SIMPANDA"."authorization" VALUES ('16', '8570763f39ceaa969a5c21203e3c74ed9731056dd583ff8b1325ea1aabc06091', '52dda22c657e4b9e8bab4b9a7e795e7ad310bf698139a5cc0125fdeacc656d27', TO_TIMESTAMP('2021-04-28 16:12:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1110');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '9d8d82afc3df25e85cc6abbc1bf3d73912d442304b4f95564b99b35866093c3c', 'e2044ebdca924e7ed1df4ef6c04fb950bd45b3937c377130bf525779788bbf5b', TO_TIMESTAMP('2021-04-28 20:59:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1132');
INSERT INTO "SIMPANDA"."authorization" VALUES ('12', '2fc0eb3662a3f5e079ce84eded3c3b533b65ab37cbac6fc28a6d040177016327', 'c3c3d7480bdb27ee53615e975889b486b28ed27489280f7921dbc44daed64c1a', TO_TIMESTAMP('2021-04-28 21:26:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1135');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', 'a9c86dfb881c7caeb536e20054ff935f7580104b6004f050e1eaa2421d73ea40', 'b08c1c45db4ef2f7bbbf6d0ccffafa3b3df6b73a47ee115d55d97198456b422b', TO_TIMESTAMP('2021-04-28 21:27:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1136');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1055', '274cd5bb9f0c86f7eb04e4f1b1db1b788cf8bb795e130ee56662598501777ab2', '727e1a89c19cc947d7d4fa512752dec9b32973ea3d659c3392cc45116cf1f0d5', TO_TIMESTAMP('2021-04-28 21:28:19.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1137');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '8062be6d7b55d30a0ab4bb265d9e3959a0fe0806acf9e5b0a1c201d8ebed8383', 'c740cef2a202f071684f6a05d643caa29b3d92d1936008d815ae3920dd3ed421', TO_TIMESTAMP('2021-05-18 14:21:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2024');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '81a4b8e6df62e6a5af2df00ff27f895c6ee5bb325b1c2f3db4b9f51c52d851b7', '290df19a034aebd119ff90df89355d08fc7e9477171ac64ba32ee660dfdb284b', TO_TIMESTAMP('2021-05-18 14:26:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2027');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'a49baeb23e5c3ad607b7a9114555359397a99c60d3032cecb2290a0e6861a047', 'f480b61759a6dfacf6227eda83545b841f4b58ef2b5a8ac3018c67e805bb7ba0', TO_TIMESTAMP('2021-04-29 13:06:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1186');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '5b6320f72b417ce0d207375fc6087935e6754240192cdcef729b6d4c201dac94', 'da4666db7db43311df5278db5de32b45206eb322a5f674d1153fff9ac47f451b', TO_TIMESTAMP('2021-04-29 13:09:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1187');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '39d46013a64fa4d03804f8126ead8e7e81d1d115aa94a1e65b05cf483609fa49', 'd4f73013c3b8633a2ccbfa056553a3b77a838ef9778565064fa551ae14578f41', TO_TIMESTAMP('2021-04-29 13:11:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1189');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'ab614e5d33ee7b399d76625c1cd6ada37de95d7773dde65889be60ce18277257', '9e1843c20bb0f6707cfee81ebe4af9c232a34d799af160c0ae0d608df21798d7', TO_TIMESTAMP('2021-04-29 13:15:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1190');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'f9f755db9a65a6ae3b2f4cc309c1a1673397efc1aeeb806260d78bbb327b6f86', '4d78309a4d65c2ecd38decd8a2f137bf205d6bebf5424fbcd5b91e6750f2d106', TO_TIMESTAMP('2021-04-28 15:14:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1096');
INSERT INTO "SIMPANDA"."authorization" VALUES ('30', '995566d41e3af3f6fb3b5ce9f920839542168531efafb15a8ea7c9f736f92457', 'a45a38020d43b452de88596963428f90f5d0d2435ea06d20b792c6fb04850a2a', TO_TIMESTAMP('2021-04-28 16:33:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1111');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'cd138c4bd414d3ebad1378b6a2e1f53aab2c74993ccfb700d9d3de0d1e98d023', '67cd83d849216179994c159fc3f26d03ed1ee0c117d1f686b338dda2e99f10d6', TO_TIMESTAMP('2021-04-28 20:36:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1130');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1061', 'a5c4061239cb3955b09c9fbdd7e9fdf647645b661636a7b840f8843d26a26323', 'df47447a705395eb80f11bfc978bd979dfbedc31b47854497d84b8f69fde956a', TO_TIMESTAMP('2021-04-29 13:25:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1193');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '047aee610f43ba4019ee35d245ddb14dc7cb2c18e960fbbb1684fe3748b9b7ab', '5bb1cc5d74a57326a1ffecae36839af7e7a5f9d1d6daac6371a66b7fdd988dfa', TO_TIMESTAMP('2021-04-29 13:27:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1194');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '06249aa9c8627bbc1afeeae241dea25fb8ec945194b01edd21603880adef8225', '0ffb64ab74ede809d720cc1f4acdd3c7102a20708d59eb9a08cf9490fe7da0dd', TO_TIMESTAMP('2021-04-29 14:10:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1198');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', 'c6a991ae8f4fe2a9cc04a9c02739c21c5a1158cb25a249f9352131582c40ed62', '6b3aaabc415b8838ae88613f14d74f98fe948fcacaf0fc515c9e3a19c7a56b89', TO_TIMESTAMP('2021-04-29 14:12:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1199');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1062', '589d16e3bae9d01c42c08c3496712e832dd69d73939a5700b86d1fdf6fb79214', 'b276ce2cd5e86770fb1239a43a1857b2c1b12fac3754335768a8109b68d09169', TO_TIMESTAMP('2021-04-29 14:16:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '1203');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1062', '5648c5e3a109685487c643ffb6701a8d74b4fd0ff4a58a76252f665c96d0f1ef', '94ac6d4a2c427301ee309a55b5d3c24a859e376c3013207671ca3c679ab1fe5e', TO_TIMESTAMP('2021-04-29 14:41:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '1211');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1062', 'f7f35b11c8dd5fcd5fb0469070434a997f073a614532e28ee0fa7eace029df72', '6db412fb176a6f268055a85d48340a79421dbaea78b6b0f10f57c7ff1c7a0da2', TO_TIMESTAMP('2021-04-29 14:49:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '1214');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'd5b6d085c1729dca182f7e7a488396f82f3b4d404709c67c7d8e1d2cfa971e9a', '4b9775c7a8706698aea942f85ba17a54336deff4bbd6d439d5948175dd2c5688', TO_TIMESTAMP('2021-04-29 15:09:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1218');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '3867431905e2a8e5f964b8e9edd4a7f73bf7924a42cf68a1a04a0c4ae01054b4', 'b6c6baadaa0e76cbe36e2111eaed876008736968ed20034694da439346073153', TO_TIMESTAMP('2021-04-29 15:31:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1220');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'd6063719d615f0fd2ed81857d492686b10e9d6ab3d52a5b45b9cce5cab5fd507', 'b21b240de464c062384233ccfee45b9366bdbde158ab5090973e9c462cb71c30', TO_TIMESTAMP('2021-04-29 15:56:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1222');
INSERT INTO "SIMPANDA"."authorization" VALUES ('12', '3d4892f9d70544be77cd17685dad2b42d1ca0456046e270490a8f18b14024f01', '60ad6b0724f5b6601b5f1fc29ba8c271b28708d908a90fc90eaae1de8d9f8ef7', TO_TIMESTAMP('2021-04-29 17:52:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1250');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1061', 'f802703ed2907bf39ee4207e2e7a0c5b4a17481f3b828cbaecabaae2ac4e9506', '39aae8a60283786e93f014bba8741643ee2f9e21ba4245811e9630ea94b3d9cb', TO_TIMESTAMP('2021-04-29 17:53:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1251');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1061', '40780f415639ef3841aee9904078272a31220d0a4cc882d41e8883849cb59ea4', '0b549746ba381c7799eadb2273146b8b607f305d00223744b30420668bcc21d5', TO_TIMESTAMP('2021-04-29 17:56:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1252');
INSERT INTO "SIMPANDA"."authorization" VALUES ('25', 'f941354dec2ec563133e1e2d48ac5075eea33273ac895f00bc0ca1e545b40e15', '68c2a0734f9c131d17e249442cc24df24a76ed50ff5af7de171fb54c149bd2d9', TO_TIMESTAMP('2021-04-27 14:49:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '962');
INSERT INTO "SIMPANDA"."authorization" VALUES ('19', '1a9dfc57643726c99cf8e409e61e0ce9ef550747671cf9d280de45e07f2d9d83', '5c36c59f9dbbc02d730e3a52444f739b3dde95cbc8ab76417dc8e48c4fc350eb', TO_TIMESTAMP('2021-04-27 14:52:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '964');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '4765f640940804befdfc78a421dd7f511d05dd671cda26f2f4800656bdcc1560', 'f3005acbd8b17ca0cff19b7d145674b4c37d01bd64b9be1dcb71e0ec1903a404', TO_TIMESTAMP('2021-04-27 14:54:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '967');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1062', '8c714676078152f9dde905e578ff92c91a0cf96659307cd3e6360d9318aa4d83', '8ae0441917396d55e9ea58a2494b05ff55b89c3cb446b8fc3afd464c07e071a8', TO_TIMESTAMP('2021-04-27 15:22:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '990');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'ea390f9e394f0f2f5b3f5c6f856ed27eb2bff0c7a4c36490895eed573884f51f', '3c885da20600a6b013bbb5b05b7daf33467d3a96093478688c4928367afbe7ef', TO_TIMESTAMP('2021-06-02 17:26:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2528');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'a0a852ec90464b558cf638da803a88bfa4d83bd4b903e24c6154fde63b47966b', 'd3b061d957dd4c9f7d22312bc199b5fa6cc86e7c3cc0d9ae7ba0a5dc487d6c75', TO_TIMESTAMP('2021-05-18 14:34:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2030');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '55f60facfc67de4fdb83bb381a015344f14058d850a679f5c8870b58f6ae882d', '7320208e8b4314b955fa63ebc5b9aebbe7b37f6d941883e28ab3d81a88888531', TO_TIMESTAMP('2021-06-02 15:12:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2512');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'f812cad462612022b7b48f90c2e23a2add36171e582a2f56e47fbed20574a81f', '94a2e3c5efde118e6b628f5a5bc03fd68b343aa29e9f9a182f6fd80946177cae', TO_TIMESTAMP('2021-06-02 18:18:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2530');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'ab5d6cfc7e917b0dbe2990b9813857c81f5a8bc5da301992ced3e0c6efaca4d7', '3dc0dcc37e17126a3f64aab6bbb10080b6618fc89c4ac1d54878cd285482ef29', TO_TIMESTAMP('2021-05-18 14:37:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2033');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'b3053d8904dea6c7fce5df36729672df0651e95ff10c9e59bfcc33666909b69c', '9485ba8d991c3a9f009996ea72d91f2120f312f239c0028a0809725d00027746', TO_TIMESTAMP('2021-06-02 18:18:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2531');
INSERT INTO "SIMPANDA"."authorization" VALUES ('83', '95a4d8148873b7accbdac74944febbefa2b4b6b634093e74c3eb61bc395cf91f', '8f1f8490e88c8e9df34ed43d5a265a32222dc108e6af42dc82d30b8acaafd275', TO_TIMESTAMP('2021-04-28 00:23:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '1047');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1062', '81b03730b7995c4df295093eaedac4626214771208fe17c53f9df103f870d7e7', '36eb61bb2d743ee2840e2556baae5d061f7ab3668a478ec3d9761bf72f0482e2', TO_TIMESTAMP('2021-04-28 14:19:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '1084');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1045', 'a68c3605e6831f1294dbc57994574b86077589918d8e11bcf96c2bdd4beb27a5', '8d8cf53b6a063fa6d0c34bc005912547ce99178ad43c6809897ed7db8adc4b49', TO_TIMESTAMP('2021-05-25 13:42:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2436');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1001', '835194697349d1a74e4e643d00ee04c8284a6aaa5ab02dbffb769f8f04344efe', '98dd84aba849dcee6ad1667b757ff0f45069ff602bc78f722417a82b4b87338e', TO_TIMESTAMP('2021-04-29 14:15:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '1202');
INSERT INTO "SIMPANDA"."authorization" VALUES ('25', '2fd6b6a175008d27db54f8f38ab372587adbcf5222b876c46e712e96d6c7aafd', 'f2d23d38d5cb7996d93cb1f5b489ef81022c1c6ea91909d73c3f3c2b26e7272d', TO_TIMESTAMP('2021-04-29 17:57:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '1253');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1055', '8a6d6e39d658cd3bb14ffc16bcdd4ce47c8d39e902d145de14a20f89525d7e0f', 'd40cb2a49402f80ebb9f490fe37ac92a05cca384f8f30a82f6f7de8d4989ba81', TO_TIMESTAMP('2021-04-29 20:59:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1255');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', 'a7140bb3a4aacb667fe22b09c069f169f680a3a5cdda291e7bd252f79262a540', 'aef67b749f87b5a878fa0326d48cc765d823928e7c3a10ae7cd0a05879d7301a', TO_TIMESTAMP('2021-06-07 16:43:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2580');
INSERT INTO "SIMPANDA"."authorization" VALUES ('42', '42aebaebae2df9d972022eaa76a26310e959bbf296383f06c2d0fff929587838', '01f3ad324558c33b05fa55278668fa4654a37b6b5262680a7b2b168ac7d9bdb0', TO_TIMESTAMP('2021-06-07 18:14:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2589');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '78207fa532ebfbf81735a000bf137086ff162de522a709e60ad98ed1e77ce70b', 'db1d1524ddf45c606cd30d8848da265271fe3adfc9d5583eefe5206c2f9ed2c5', TO_TIMESTAMP('2021-05-18 15:26:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2038');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '1939e75f43af0cc85def07cb20e36fb6bff05d59dc29785c052d4f43ae38ba61', 'ee51727c99a1c5cf23cbdfb104e8b84f098608dc68c111e29e57242119add42a', TO_TIMESTAMP('2021-04-29 21:45:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1263');
INSERT INTO "SIMPANDA"."authorization" VALUES ('8', '26c96f5e21df92d084163f3761e8ba0a6b7e56e67178819987c983da03f8e198', '0447ac068cc5206ff6f2fe70265a6fee8f2811cd4f4a142564606a0cab3d19cf', TO_TIMESTAMP('2021-04-29 21:53:45.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '1265');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', 'ed776bab19016eb853c9d973764f7e67d550e7c3f979daf91313349ad0fbf316', '433bf9a305f17d2acb6fed09a46a96b65e3cfc63e0f6251b5cfd4d008817a206', TO_TIMESTAMP('2021-04-29 22:10:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1269');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', 'abab69aaed6279b409bf5cb4b0a70624bf1ba446e84a15367ff8cc12449a3168', '4de876cebf4904046bea73365eb6a570da74bfba3ca8c22412cac3fd96a6170d', TO_TIMESTAMP('2021-04-29 22:23:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1272');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', 'a380e674b5fd7e1b51d6d97ecb52464e25448da505d36512f723a1dbe5ec665e', 'ceffd031dd606d7f03a388b1871b2a044942c13f0475d6c46ea1ce985de6d54a', TO_TIMESTAMP('2021-05-18 14:34:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '2029');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '5e61611ca1797d5c575940faf68918a814d869ac1f2f456916c6146bd3f7c85f', 'b62addb430a4507202faca3176a1f62bb8131574067a42dba703d4acfd747883', TO_TIMESTAMP('2021-05-18 15:31:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2040');
INSERT INTO "SIMPANDA"."authorization" VALUES ('12', 'e8b828acc873f05fdcc36bd8ff5f9dfbe1f256ce1e43a5986f9d808165b388de', '7888690c11cad816defe7b549756b9fb0834dd044f66b5057be1d7032d4a9953', TO_TIMESTAMP('2021-04-30 14:41:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1345');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', 'ef12f95a88bb0dfb2a337ac940aee6db1b4944d75dfdb6147e5d1639ed99f888', 'aa56ec694e908c523c372f2b161e6bb1853f2edfd3329d215fee792860d03e78', TO_TIMESTAMP('2021-04-30 15:16:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1371');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', 'e47881178618342e2b2e5391922b30ba67d6f301b4169bb4e4b02c5fdadb8490', '5cb9c38cc6fed644eb94ebe80baad057262c69e4cf7ee35b6afb47f4bb034b92', TO_TIMESTAMP('2021-04-30 15:17:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1372');
INSERT INTO "SIMPANDA"."authorization" VALUES ('15', '26cac149c0a13b9f2398b17dafa37c436388ded23afd9845a5b7e49f101d2d1a', '82d9ef4dc4f138574af4d3153597019906f2988acff86edd17847ea271f5d2eb', TO_TIMESTAMP('2021-04-30 16:07:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1389');
INSERT INTO "SIMPANDA"."authorization" VALUES ('2', '4927be97f9c8bda2cc1ea7be15e65e62f4fb1b6c30dcc9b5534a961aef05910e', '4fa9fa5946990a67e66b8382bb558d2d0459946d141fb26d4aff2928954fcb25', TO_TIMESTAMP('2021-06-02 15:14:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '2514');
INSERT INTO "SIMPANDA"."authorization" VALUES ('2', '66643421dc46b5bf65ead7a8524612802cb298215bcad1202028117e73e14e55', '75af49796967644763ebfff871feb7be04c1a4c03d237c8c84cd3fe69d14447e', TO_TIMESTAMP('2021-06-02 15:15:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '2515');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', 'e3f4380aba14ad40fdaab01f6c2a96fefaabe880f61de1b172d6e9fa233d7d20', 'd87692e6ff9844e6900dfd5bfa9a96be609c0182f90810e083963974f5157e5a', TO_TIMESTAMP('2021-04-30 23:13:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1425');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', '3f64891b3c19c35756e7dc68bdec502d6313ee5ae462a9a74c63f92900163268', '3e6e3c74f3f1b49548a8dc4732770f16f90477b56792056efe0d2f400993e99f', TO_TIMESTAMP('2021-04-30 23:39:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1426');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', '17ff335bc048ba46a56bf2be6104e376609f7c5a734cc467d31497ad63e448a8', 'a2d03a8a810718f216db2bc0eae607069d4fb80df56ac916832593bc03e41532', TO_TIMESTAMP('2021-04-30 23:40:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1428');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '4d0d2aa6a439c16f19173a2417ac539fcbd9a76c0a0d485b18478820742a4070', '562273a40eb9eefc08f66a3954f2b94c360de98dbc575b1d266975376a8dc06b', TO_TIMESTAMP('2021-06-02 15:23:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2516');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '1946912bf73526f3bef7478e25d8ce8985fe9a34b220276abc5691ee76635698', '72406a2c221c4b5ba27dbf18835373a893812e4d0fb32afd41f1ab6c2520758d', TO_TIMESTAMP('2021-06-02 15:39:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2517');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', '7e9ad1c9243cfd6b018d3dfaa00332a306fa6350987bc3ad31be848d4b568e98', '4ec030c6338e47058792b01a8d2e910abaa021908a0d7e7c9cca9b095296b574', TO_TIMESTAMP('2021-06-07 17:49:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2586');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'f5c85971c7204095d28945bcef7d44925605efcd8a96c5d7e0468a6265da10a0', '715138e117ff5163635261a78ec680544f737f3c946239a977b698d9350eed1a', TO_TIMESTAMP('2021-05-03 14:12:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1482');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '72b6a2356c342c7de65a9982cae6d12e2723e2da3f73609c168c07112fb14c8d', 'e82a53aca2f20e2d9f0f943cbfeca10b9d8463907b281774aa13afc4faec8eb5', TO_TIMESTAMP('2021-05-03 14:28:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1485');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '539927f4ec2a0adbdd1541014fc3ec44243c9bd0d60f34971fb5063fe15a262a', '8f4b5fed53679ae381c04d135bc58bf9ae04b8ad80865de5ddba44b795c41c42', TO_TIMESTAMP('2021-05-03 16:09:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1513');
INSERT INTO "SIMPANDA"."authorization" VALUES ('12', '8162c497affba6542d13b675b6552fd8b20bb9cf1189516ea247ebf6687da904', '9bf3a946be040c48bbd702bbd04f81ea8672146865526a7a0ef14a4606e907a9', TO_TIMESTAMP('2021-05-03 16:14:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1518');
INSERT INTO "SIMPANDA"."authorization" VALUES ('15', '85e917dac7820fcf97c31b9fe2e8fae97aaa93051bccf46ae7d898217137e9c3', '7e2c5f28de70839f8e3b7553ee1c5d66e5a47be7834e17c84b21ea3c72189fda', TO_TIMESTAMP('2021-05-04 10:22:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1542');
INSERT INTO "SIMPANDA"."authorization" VALUES ('12', '1b8b078b3c7507ed36c67cbb9e91890d2e6d140b32423db04319a10a341daa40', 'e4a53da92b3096d2112daacf194aea49bce35b483e87f29e81f7fb821af23a71', TO_TIMESTAMP('2021-04-30 14:33:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1341');
INSERT INTO "SIMPANDA"."authorization" VALUES ('13', 'deda053e42da6a1b22ca0d12d44c1ad2db02eca7dfe7e5d6eb0716214ea30ec6', '90545f6f8a4d3254a2197f2f73ed60bcea8fdadb0c640749123789434db38647', TO_TIMESTAMP('2021-04-30 14:39:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1342');
INSERT INTO "SIMPANDA"."authorization" VALUES ('12', 'ff2a30ef24beaac3778a3c0bec015288760eb70de4c4d51295408b0c562140a3', 'a3042ca0955cae771422947e1836c0af79db8e80091e391e9bcb3ccc3a4023dc', TO_TIMESTAMP('2021-04-30 14:40:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1344');
INSERT INTO "SIMPANDA"."authorization" VALUES ('14', 'd551c33d143896b0c14697d15733ca4656c1dd18b66622d196e9db43ca0ad95d', '4e80bc4f981cef503c80c989fcf16c5384706f510b6e26d38b48121f00e81da0', TO_TIMESTAMP('2021-04-30 14:44:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1348');
INSERT INTO "SIMPANDA"."authorization" VALUES ('12', '1426c503ff09559f87bf88d152d0845c6a2bd243ae259f6afbf098687e3de0ea', 'ee2dc1acfef7f5322462662bc20a910ed8031162092ec495c77944460fb9a210', TO_TIMESTAMP('2021-04-30 14:45:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1350');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1061', '5cb695dffe630a625e79049504c447cde5e92a3360d66fc7b9e986e87451ba84', '3af85590839ae976306addb20af77d3175b24873f48ce82e54859885bbddcd54', TO_TIMESTAMP('2021-04-30 14:49:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1352');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', 'f7c9271f170262c27daf500dac8b5481b10dbc0695e6f5043d4bf88a1460b92a', '3df8649b24999fc609ae5446e0e662ae5081449822dc48480adf8b8819f3d31c', TO_TIMESTAMP('2021-04-30 14:49:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1353');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '020d8f6a0ec88443afe01d6e61e094e313fbfdc21f7bb61bd50858cf46a36665', '1c9986f41a8382548b3373cafef2a9eca417a44be433d67d626810ab191d8a98', TO_TIMESTAMP('2021-04-30 14:50:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1355');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'ae0d384dbd9d99707b834c5e7cb51a959e913ac63fdc6b848e693a2046e7ff80', 'bf5eb39aa1e3c241d98f030679f4a4b818641f4f79efda9b93950f9caa62d793', TO_TIMESTAMP('2021-04-30 14:51:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1357');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1061', '1f74a67cdd61a37eded82c1166d5c8a382e9a36ba78f43a748682393a2061908', 'e96d0250892f998e3346463d74fa8616586cd7c69db98f4cd6b73ee46f7d5167', TO_TIMESTAMP('2021-04-30 14:52:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1359');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1061', 'be80c07e5b7ec1ff9194d880107e37d497ff66c51ad17587db53e63e6c57aba6', 'bbc5dc797cc2b660d5d9046fe2bf602de07429ad23fbc34be667bd974886ba6e', TO_TIMESTAMP('2021-04-30 14:52:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1360');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', 'cf4f8ec9849419a2c76728425b23c62d722275a0c15daada2f7da6097d3a3dae', '571070b69d0ff29a451e48e9fe2b6a14040a19862e8692658f59885b29382065', TO_TIMESTAMP('2021-04-30 14:53:58.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1362');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', 'a730b1a439c649c206c6fb553e6c315d00e291801bf4a1886c1d2997f86bfd2a', 'c995c7b9d73a4326e8b35ee72b8daae693afbc82531b48308119664a3721fc8c', TO_TIMESTAMP('2021-04-30 15:19:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '1374');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '333882055d1fa335c4ede055956e04e76a8a7787124333a5f6413b8775f9eb6b', '645155ea225fe9938b773402759b4b8980eb286147eea490e19e2daa5cfdb5db', TO_TIMESTAMP('2021-04-30 15:27:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1376');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '58bef7462d53e775f2a55d9a778fefde315bc10ae09db2caf0c58e77cd17df0a', '3693fca60699469b19088432e3423f974449a793a7bc54f2ce77e335083f44f1', TO_TIMESTAMP('2021-04-30 15:32:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1379');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', 'a60ca8367800ab19c8e3b9d071b27818490789fb772990ac9793965fa494ea33', 'b397d1f050c2e1218c016fcacdcc8b31709cb6c741d6534cb3c08ca3e49887d9', TO_TIMESTAMP('2021-04-30 15:34:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '1381');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '49f3a4d33814856a03cba9feadfe0e5acda204be8c4c85fa294f4d239bdb43bd', '95fe682dcd0ec05c1be18db38c507489729a672f841dc8ef05b550f131873eac', TO_TIMESTAMP('2021-04-30 15:38:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1383');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '28322ce2c7c38d794908fcd6dd5cd613f9272f8cb8df9d85254748f35b32f8a5', '6327fec739f23ee6f5bae90ab5f2b927c70fac27ea5c90a77c92b872df0e68b9', TO_TIMESTAMP('2021-04-30 15:39:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1384');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', 'd289c4c5a84a3293d5717c27f58e75f2ee47757fd0c2ddaf91d8909b42c6a0c3', '7e9bd35941463f02554e47b3ee7bffa8c2c46399c2740995259534d2a7a89a5e', TO_TIMESTAMP('2021-04-30 16:04:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '1387');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'ef1117b7f1d5794f8f1ad802f9501af6d6c1b898fe000bd08695dfdbe68501b0', '7376342d8dbdf42417adae4aab948d5ebbe3db389b8534c486b8883aa2152f52', TO_TIMESTAMP('2021-05-03 14:18:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1484');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', 'd02778cfe7545c560f3f7281be9d85b3479861e4fc3f8b356ae0dd445a1b46e1', '52a0484d84bc0a9aad95f285a4abd607415ee5f5c53dd3c0f3d0de816a3549d2', TO_TIMESTAMP('2021-04-30 16:10:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1392');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '3885cdda64c1123f0f5213915f25a1eccac03f78c5ef5519b40e6f5dc831565d', '26223a5d171bfb0a128ffb794619fd2e7df461a588b282622822949b2fe72e98', TO_TIMESTAMP('2021-04-30 15:02:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1365');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', 'd0eabf86586d4fc61e3b50a9a2c9135c7b24c39c08356a63761629b80c33d536', 'cde30bd3ed0fabe8f8fd9be809f24f72d32183513d55782c17e95ec066dd558f', TO_TIMESTAMP('2021-04-30 15:05:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1367');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', 'd07841457250fa96fe2921113a17f986230f86fa8446d5bea7e17a30cf96ce7b', '81ab5be8e187d4e6a199b8218560d773d82b5022924a7caaa3b11475b8f1203e', TO_TIMESTAMP('2021-04-30 15:05:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1368');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '4524307aeedcf686d1ac443ea2e1fe8aa7589c2c59f2f21fcc4b2dfaabfd61b4', '1192d2a4507f838e5f72d25ea5b3e13a29f45f8f1194e1524228b3b47403386d', TO_TIMESTAMP('2021-05-03 15:08:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1492');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '9e6dfe36bf040f326bf24295a8c51a00dfd24cdc4397b3b2559ef7f85ecb6e55', 'c015421a1f24eea93c6bd4f6007682bfefbbcdb40324d7cd863ed260f8dfd481', TO_TIMESTAMP('2021-05-03 16:01:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1510');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'a2156fe8acf9005b4322b03fb1dc9a558fa6858813e7ee10fbaad9a942dc7782', '33ed52cdafcb15ecfb81eb2d9b81f0a9007b0d042c93a1048f9317c5197afb28', TO_TIMESTAMP('2021-05-04 11:16:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1556');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '4e47a6acde0d6b429220536b4e3221b1745f3452d07210afe4bd88a30e4d6044', '889a6cf557e1f3a5aeee04259a53fad3bb42adf6b0330d48d002c77b09865997', TO_TIMESTAMP('2021-05-04 11:25:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1562');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1061', '665e8254ce811d60d8507988ab092f041704000897aefee7da2c533cc83eb245', '634b6626dd1b696fbc3f18adbed960cbbf3c953b1c66bc57cf6dc68e068651c3', TO_TIMESTAMP('2021-05-04 11:28:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1563');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', '2cf1ce7453df620056cf3b879f37ed1c2974ee8ad16ca7a133069bf09045e454', '4bc0de3d0a138b5b421840266e13d72829a7bb6c5fa56e5ac9251556b4013326', TO_TIMESTAMP('2021-05-04 11:50:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1565');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', 'e25d5ecf27e7f11449be22b52e998829abdbeaa4ed5faebb8cce4439fe50be98', 'a13fdbf5b0f2667665329ee3362312dea0045c93ca6fabadd25b984c084552f0', TO_TIMESTAMP('2021-05-04 12:40:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1569');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '5de8156f255003e1f5b996e3b5a8b21cce4da6c513fa6324296135e749b08018', 'c5ee73a8ae8872014fbd7792aa3f96340f9a6417d159508274e3e4fe6c5134f3', TO_TIMESTAMP('2021-05-04 13:49:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1571');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'ffaec353e47e77847c454eda29d9e434a0621d4e2b059033118992a673281947', '71b4f9f617ec50ef9fd61fea96efcb9c17a6a33a2ef52d174cb4439b2c51947a', TO_TIMESTAMP('2021-05-04 15:11:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1583');
INSERT INTO "SIMPANDA"."authorization" VALUES ('17', 'fc7cb4e0ad7d87982ba92b73c67db9634f272ee83b7016b0d0cb73a56a7356d4', '29ccd89aac80881eeaea7e75b46dbfe695b809a8e985fab35aba8d966f6c4903', TO_TIMESTAMP('2021-05-04 15:25:28.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1586');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '4cac45a4d2878b2b13be446b274c73981e74c14dd5d18fe9069a349d2492a5b7', '91382f0f606a88bfec992c6488a47064f5292aafd96a5a174bfd635b5bcc6e87', TO_TIMESTAMP('2021-05-05 14:43:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1621');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', 'c4f0d205d3d08f3dd47646c47502506ace2434b385c9e201f172b5845b11d5b1', '3bae6752a08ec8723bb9c9889c24a7b89878717516f73acbc73f9023d3154cb6', TO_TIMESTAMP('2021-04-30 14:27:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '1338');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '137be659e8e0a7756127b2ee62ce16dd5d51b1cf8905191c70f72261cd1192cf', '7b804cabc0e23e7106b843a263ab02718814eba97bb0c0af92dd5e7e570bdf1a', TO_TIMESTAMP('2021-05-03 15:58:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1507');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'fb0d999ea309f720fd1cba4c2482ff99284365776b8c4ef9f91894eb77ee7f31', '6aa530f4c1f782bd1f68166a4464fa7bf13dd4d5d7d8acc8ce38560325a28aa3', TO_TIMESTAMP('2021-05-04 13:55:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1572');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1066', '24424353f6d5cc95f4528f733f45fc78cd664514a1ed420d81045f6d19cc2137', 'd47dc617ee5d9b29f16e04f31bd77aff2e61072d8e263d8c989d03dc59299286', TO_TIMESTAMP('2021-05-05 01:38:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1604');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '4cb124f4feb27284ca13ed7777f29ba6e0e06f7b1f7c1bb3152b3a6a6a8c712d', 'c453ca7daed8fb2b6cb49b90feb0b407c801fc5410c7b8c43003226f7524cf1d', TO_TIMESTAMP('2021-05-05 10:15:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1605');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'deb95b48e8b56648fea2f73dd56db839265bf343e340bfa74bec6ee3969c6e0b', '015460a1db6e83defd0dde4ca5091e208ef76804a008cd2ed73e17f4998e6867', TO_TIMESTAMP('2021-05-05 10:35:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1608');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '448d17115a8a914a9e85f6b80f89b03bba0860556fc7f19a298eef5b619882c5', 'e81a1143d3701faee9547bbf4d14d4809ee6d48e6227fcc3a11c51bea7effdf8', TO_TIMESTAMP('2021-05-05 10:50:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1610');
INSERT INTO "SIMPANDA"."authorization" VALUES ('22', '49175b1817660e4a9abf07b48cb7acd3d587825aedbe4e588c202b8aa0640579', '7bfe00b112d319ef472e255d0c64b91825f7f28242895e37dd8ea2b16d32949a', TO_TIMESTAMP('2021-05-05 11:08:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '1611');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'c56b31882bc8baf943ccbc637ea816a4ce2f3370694ac8a4f37368d8d66f3331', '52dc2a75b28e54ef9ce28ed6d4c3db27654db496f5b625bd1946d546388499af', TO_TIMESTAMP('2021-05-05 11:22:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1613');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1012', 'f53a271f770b388ebfa31b8b48a9c6a6f8bbb05480725288d623dcdc31830b3c', 'f076a798e39b3ba7cf42b0ed78a1c78d11fb745a081d0296c9e82db3ea26b316', TO_TIMESTAMP('2021-05-05 11:58:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1614');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', 'a11217b4a47a9b716445104fa54ae43eaa761d572f52d23ed27b10cca5e22750', '804379c543e2fa62c31807e30219fb9884c1e756d35102ac8ebf2490fba2cc87', TO_TIMESTAMP('2021-05-05 22:09:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1642');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', '9f8a20a488cd94c38b0742b71674c8dddb8d857d785b550f877277ebe7346166', '6a090e819bf4861d2db9179706f7a8d49111e356138fd82e62e2856c2bef0d95', TO_TIMESTAMP('2021-04-30 16:29:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '1401');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '54c7a5254fad3b8ddbd6e83e456f609e9e4e6ff7367a948a79ac04b92778313b', '558597a92fc3b94a547e471094d0205400d57ba4ffecf4c32499e8f6a79aff5d', TO_TIMESTAMP('2021-04-30 16:29:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1402');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '0fe022c3db7a8fb52692d85597a5cf1d83b4cfc140f5bfedfc4131073145fd56', 'c140820c58e194f0fbc0eefdd38befb74425fa0bbe70b691cf798815fb128bdb', TO_TIMESTAMP('2021-04-30 16:30:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1403');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '20ccfb45721f1dacb06099de9c17ed457a0e185dcc7b1f4eef5026dcb0305cdb', 'b6c5c7fa54f3965c83ecfab11021a4a391ac926d4053cc4e88f69ba6c64fd0c6', TO_TIMESTAMP('2021-04-30 16:34:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1406');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'a022027d8a71ad8de9f950c1c0ff922c879cd8392b380403a868949d4f39f2f0', 'f9e74c416ec47808a4928098a0b7f3b4b0cf4e37ab76900c137aabed7b94afd8', TO_TIMESTAMP('2021-04-30 16:41:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1409');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', '974689e26706ba08ba302f2bdd75e753c4d213b9f38589bfaccf17872e182931', 'cecd75e56fe74e35433d4f9656e46af10c1100da50fce055a7d041d6fb3157b8', TO_TIMESTAMP('2021-04-30 16:00:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '1412');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', '1e152f0633b3104e0304d178b2280b0a3616c0ecfdd9e202ae6d0703cc46a483', '7f5b648ebf882ff1c1bd9f3acaf7c7ef17102e3f1d113d313e1176d272d5936c', TO_TIMESTAMP('2021-04-30 22:52:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1423');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '30f6f6ab9841e3123fe0bd45f0e8a13bb80863280f3b18521aeedac7fd5b3be5', '88b3f632e5347b2da1b354b5c3162666b28b828b5fabd551283c037639a8ded9', TO_TIMESTAMP('2021-05-03 12:19:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1456');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1012', '2808b618d354eef704a47ad1eefa131bd4bdf4f2d58b93a5a72a8272dee7ba37', '245414a94a8ddc00b1bee8e25e49a16f0cf29c6d544e3898db58f4d64cdbc4ec', TO_TIMESTAMP('2021-05-06 00:46:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1643');
INSERT INTO "SIMPANDA"."authorization" VALUES ('21', '8ed677df1fa307dab4157167dea87663943d43914ad712faa2cb6c4d02476fce', '1ae426d93bac5aa29ae20afa62a71639dadcf9ec5d4cde128e44d9e9893176ca', TO_TIMESTAMP('2021-05-06 10:44:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1652');
INSERT INTO "SIMPANDA"."authorization" VALUES ('13', '2f232d1e14b27e460937f120ebc6ab9d2433b599f610af9eba61a71846702f76', '2f4ec670142d25cb6838c057258516cb4ccfcea9fb95d0d7aae60fe1117a0a14', TO_TIMESTAMP('2021-05-06 10:45:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1654');
INSERT INTO "SIMPANDA"."authorization" VALUES ('17', 'b41efe28aece82e92359696cd36caca07421cc5fccac79b4dd09fba632bf50d9', '6b97407efacdf71d3a9d70b236c8690696790edf97883aa3e1feb38013e8638b', TO_TIMESTAMP('2021-05-04 16:14:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1589');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '5a033accad758b081b86ab29953a7a8f5d322765f2fd1162dfcc5f630f1b1689', 'b5a823dcb24569c1d7583fe9e4391a13ee1b456d294878758c53163789885d46', TO_TIMESTAMP('2021-05-04 16:14:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1590');
INSERT INTO "SIMPANDA"."authorization" VALUES ('17', '4a495045579dbc1c892332e542984a27e5edb3dd7c97c09b7703146f6ce5ed48', 'b831fafa3784cb3a452761a17ba180e74a1c634416d46ddcfc4066a59e358510', TO_TIMESTAMP('2021-05-04 16:15:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1591');
INSERT INTO "SIMPANDA"."authorization" VALUES ('25', 'a4ecc39d7b2ca431685461ef5959eb1263899240a1ea112b78fb6c67718f4f66', '7b9479428411dbff7684aea00ede0cfa507e976272e7e1e73cdc90650bc86969', TO_TIMESTAMP('2021-05-04 16:30:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '1594');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1012', 'b400f4ac7f7b01438f79106256f673d604712c6a9f31b92e4531d1fdcde59b5f', '1872041a220bf257e57d2272a4ccab16f40ad1a3a8515261ff35af7efa1d1093', TO_TIMESTAMP('2021-05-06 12:00:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1671');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1061', '01ced8031d0e5cce210d081e530b72de11806f846e11132f0173b50abb5d403a', '9e6cb8c0bff094c9623bdcdbd11f74ea161cb916dd8fe167fbd88c3f32c27405', TO_TIMESTAMP('2021-04-30 14:50:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1354');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', 'be672d7f3f5d74888ca69c1aedfec931369a68fabde59352bb4e48fa2a4054a0', '733cdec02bbab600661cd304fcb611ffaa899232fee6609e6aa916f8ff052ae0', TO_TIMESTAMP('2021-04-30 15:31:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1377');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', '7b68594eca25db3342ea4ba1b985e24ac061925c3db5ed3ec5c33bfdfd5dd47c', 'a3baf087e9c699972eaaa328b5d462edc2e707dc1c32c99ee80fd10bfd1db179', TO_TIMESTAMP('2021-04-30 15:32:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1378');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', '9225f1254e5d763336363aa010e1a11f332bdbd1e8f34eb649f1985ff4de9400', '8db89132d884a5a63b205d81e5bf72d4b92ea7d8d8167119c0e0a11c4f593a2d', TO_TIMESTAMP('2021-04-30 16:19:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '1396');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', '64ca302ef000abe0572be766ed832abf27ea0ea13dfc355cb25be90b46fc3802', '9bd3d0cbe5d37b5f008c5214695c453cc4c9352f59d03d18251d3888078e4ffb', TO_TIMESTAMP('2021-04-30 22:49:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1421');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', 'f8caf5880a5132106ad8c4d02d07b90286283f2f5ad71a2448825bd4a9dea82c', '656bc6c5664f35ebd948df988b637b739d18a7adbfc4bb1f51c145afa281d6e5', TO_TIMESTAMP('2021-05-03 10:36:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1432');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '0ba6dbdea8a57b04daf4d0c3ac55a2fbd5f47174d0add86aef3b4df6714cb7c4', '3f316aa4a1cca0ec191c83aa5e5c645c0fd676eda426ebcaab3bde150a9a88a9', TO_TIMESTAMP('2021-05-03 10:55:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1435');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '35562a283be24676c54f5c91f682ac4b0e83b75792c9237afce2f7328a20dda3', 'a8fb5917e2b00ac4c931632ec194075da5e5f6d1de0bc67fa9f8412f8de947a4', TO_TIMESTAMP('2021-05-03 10:57:19.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1437');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '25d149427134bbc535571392940bb6049977da510d5d642b269081d4d36cd608', '4135550342e1b8f32ce69a05bc9bfdbfc1a9df02dcc2357ed323ccec945d938a', TO_TIMESTAMP('2021-05-03 11:01:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1438');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '4093c32ce97d9d9d07505997dc8e7f20baec9cf58b651458cd4ce377046ef87a', 'e53b1cdb409b44b233255c7ad712c2346b628e6c3a2a532e1da02461e30bd906', TO_TIMESTAMP('2021-05-03 11:04:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1441');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', 'c553ecc63b4326a2ed3eb6b7b1bce73d87c3f2844ead8211af06f9b4a821ca1d', 'f72d9fb602ecb5afccdef9004faad43cafff4db42d0bce460ecf0aae30b2741b', TO_TIMESTAMP('2021-05-03 15:25:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1500');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '82556fb2f20d23f00e775d9f1d3ba0df0fef2c31e86ffbfbd6444a56b1005e8d', '10110882eaec6620ffca1be758ca7479af5b5314421e5d2e79f19af7e2ad58db', TO_TIMESTAMP('2021-05-03 15:41:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1503');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '8ca043c27c97626c0693a117e221c330ac40ed308676822e0dca8600255279be', 'cee38b2b5ffdd20d40c4531b580a61a96983c8f47e801a582484a9973d85313c', TO_TIMESTAMP('2021-05-03 15:52:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1505');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', '0971d020a8e10f1a871bdbd48d10af1b50fe0c5b54a189e1fa2c1914f0de3172', '7be60e651ebeb0c6a1602fce5a7be2a98da549c0c8f4acf0c11a8c69313459ad', TO_TIMESTAMP('2021-05-03 16:24:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1522');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'c79e45ad2c61c0c407763af8e4dce52aa775868702f8d2af517769f56fcfc29c', 'fe520587b5357586106c685ff8d26bd0c66a0d6f282f30436660e0aad668d032', TO_TIMESTAMP('2021-05-03 16:36:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1524');
INSERT INTO "SIMPANDA"."authorization" VALUES ('16', '1ef8491cd78c40b128ac1684681146afbfcdbd0c63ccf399d5875418cd554f6f', '51293e3726135d8bdb2ddde871b6e223c4ee86dc5655a5c104f5807098e0a751', TO_TIMESTAMP('2021-05-04 11:09:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1551');
INSERT INTO "SIMPANDA"."authorization" VALUES ('16', '5436839881313dd49613d1e9a76f71e09c08f26ba5f93f835f31bf69b1c1c64d', '929764e7ba1898ff289c28ba43f87c1d806718193ef95973a9791c06eef84d3c', TO_TIMESTAMP('2021-05-04 11:14:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1554');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1061', 'e922bbe44735e17c09fc0d6fb28e11670ad7ad6709d8d330be2f1a1c8b85d1bd', '0d0b3cfe56d5b90e224c909c858aa0d08c8a7b66f4b043eb18dc1a56c9c24991', TO_TIMESTAMP('2021-05-07 10:56:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1758');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', 'faa9811c9f14e10ed7fe780b24b2e2a0e531c4901ee93105ce3a3bb70f51504e', 'f2e61bd7beedc1b9e3e325f2d2cf60f7ceb01cd7a3d54b0859d224b8ba76f0c4', TO_TIMESTAMP('2021-05-10 15:57:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1867');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', '487eb8f01a2acebc48666c9c6a88d67ea2483c5dca1396b4d06fead1661b785f', '66626ca8a5ce84c2c0bb957c09c463f299584d5af83ee5b3bbd1bf6cf4f1c817', TO_TIMESTAMP('2021-05-10 16:09:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '1868');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'e5effd1f5e96adc471cf3ec4d9f15ca64a409c15f315ba0d16f87dbfe8aa50f5', '42a402fa35a088eceedb894e6f1ae4db52ff65846e468866296dae348fe541a1', TO_TIMESTAMP('2021-05-17 10:20:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1902');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '2302d41671f03b0179d87aae5136c1e1851b994fdf0f3b509b79f11865115a22', 'b804a5e8723c32f9909179a373cd52268ce7c91ddd28d15d77a26988ad8c954a', TO_TIMESTAMP('2021-05-17 14:25:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1928');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'd21bc5ba96f3cd53669748b7451a6f37caaa1da069cf5d83d1e6d1b9ead5c7c7', 'b1768c7256520cdcfca2c17a129b7892db9c2a25d6ed8de3f10990dc022fb489', TO_TIMESTAMP('2021-05-18 15:43:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2042');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '28715151ca2dfab47afe46056272e2316cdc51c6cba41cc0818872bc6cc0175b', 'fd8a4604e82e8694f5d9c01e4d5b61bf263083aec601c97719412df889d66f13', TO_TIMESTAMP('2021-05-18 15:51:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2044');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '6fb7656fac1c610b3a7c594720a7886e0b3bfe06cc23bd18679ede170363ecb8', '02f6e989c263909a7a7120d459f6b2e17a3264bee079046e39f388fcb8c47185', TO_TIMESTAMP('2021-05-18 15:51:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '2045');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '3c90e2c360d923213c138390a86786791c38d9af085e51a7e64efeb2668e5b53', '06f38503c0103e21b34de6f03aac3c0f92ee3447848fbd4cacd8c22741f3a8e1', TO_TIMESTAMP('2021-05-18 16:05:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2047');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'f62b051348054c0dbe296677a132bba09a6bebb4a3e65e7687fe2d4e441c62cc', '9572b3252dc5e24ed7395b479c0a69be999008d0196b46ca28b6374815da104a', TO_TIMESTAMP('2021-05-18 16:58:07.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2049');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '4711d485345424e8a27b1a90f18a6fc613e066e1ed8bd1c31ff0506d088953e9', 'e191c3dbebfd477147942d7f4bac4fe89eede54f7d53ff32a2b77f5100ec812c', TO_TIMESTAMP('2021-05-18 17:04:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2051');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '4a0b91685ba94b47c47c0f2edabb423a096da24751ac485dfafc18a3fb00bb71', '00f4b40115be37bbd9e071f4eb3cdda07bc28905ffc6f53ef203b885fb469650', TO_TIMESTAMP('2021-05-06 14:53:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1706');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '8fa491bf2fbf379671a63a15d5269e481292bd7923f20c01707a6b0ce3ef1058', '97c30f69e91ed79bb356831994b3f030e2b16c6f7859386b7c52c2b5692c6554', TO_TIMESTAMP('2021-05-06 16:23:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1733');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1012', '85177cac06060cfa4af9a99aff1db5064c4d668d4203ad0e3d1d10c2c8f2f2d9', '2b42e208d969453885609246dc4611c973a48f1ae22b9a743feee9436e72688e', TO_TIMESTAMP('2021-05-06 16:33:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1734');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '9f028f588704829208230f9c25f3d7151f62435f9c119d3cbda379d2fa960ac5', '03aac920b7ed22a5a37f03291435d46d189b2cd1943cd3683904628cbb37a5ac', TO_TIMESTAMP('2021-05-06 17:09:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1741');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1012', '365104641036b4336e68922bb2f6852db6a84c9ea56e1dd67efbbefa2f6ed64e', '81f8f9929d4cf414a0b371ced206eefd1e404e966f49117720e340585814fb1b', TO_TIMESTAMP('2021-05-09 01:40:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1826');
INSERT INTO "SIMPANDA"."authorization" VALUES ('29', '8a22bff93ba6c05f3977e5f1ebd60a75d1d2e267f2021a88362d63943e917197', '8727d68457c12baffec723321509459661cbe89ab3b25182951ce56ed8137990', TO_TIMESTAMP('2021-05-10 08:01:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1829');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '40518088c1878dd68fd1e71faf62a222620303468ea59cf38643cfc158fab669', '19a3b08c2a46451384db7ddee3a75480cd04f13f01ac184dbee035b026b0fb0a', TO_TIMESTAMP('2021-05-17 16:56:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1951');
INSERT INTO "SIMPANDA"."authorization" VALUES ('10', 'bcd7d5cf16ab9a555a63bed988ee62f0190d774709cf0efcf029511d5cd25590', '7afb14b533ed6e507f9c05a0742a0a5f2c963dbbb0a6048918a34ab37d053262', TO_TIMESTAMP('2021-05-17 16:56:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '4', '1952');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'ab7063a97cbc451092da1a1a1668b71cf9622a8751ad34259f417335ebf2d1ac', '2a2b825b913a4aea6d82abf570671bbe07bd4b2f3c19c5a07a292249071a6c15', TO_TIMESTAMP('2021-05-17 17:16:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1955');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '69f3c6afe95c62e36875206b798acb05a204bb607ff1f1da258378b50eceb316', 'c7b63beacdc2758fc6280cdc2955b18ba45e44cb231d961b0599028c42025875', TO_TIMESTAMP('2021-05-17 17:23:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1956');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '663a36126a6247e72c89fb4606b8d03c69c5d90cf86c59114fff4108ad50b593', '6d9ea7798041a52626c22a2e2a5cd5bded4b5506512574f6701eb7dcb2ee2b17', TO_TIMESTAMP('2021-05-17 17:26:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '1957');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '4b1da95a0ad6e672bcebdbfbd32ca96ae7fa26bcc5084d35f7ab06d2cdb5d03b', '31de84dcc33a725e348e5de66f261708f36c902e7096dfc664667e9c86d098bf', TO_TIMESTAMP('2021-05-17 17:32:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1960');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '8f9c92bddd91363b5062289fb3d64421e3b5c6a14ba31182252e0c4b2d25646d', '0a71cb16eb9104e7445ed9e679901816b335967e3b5ced8e1788cf64d6ece237', TO_TIMESTAMP('2021-05-17 17:48:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1962');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', 'b74ff1205514945caa521b997f832f2619108315d363bd18fd6aee30af584b9f', 'f0497da7949b08cd8d177e76663e76af71148523584ba7cd9bd0749fc4699328', TO_TIMESTAMP('2021-05-17 17:55:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '1964');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '40a56d87738bcdfb770f0cf0ac8f8b86e5c4f4d3894e8250a9714c2d3a755092', '4e02498277de4196bf8026edeca1c8179f67355aaef1a4613368639164bd6a74', TO_TIMESTAMP('2021-05-18 17:31:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2054');
INSERT INTO "SIMPANDA"."authorization" VALUES ('9', '6d609436b6ad90a5ea6b04ffddbc9785f7a69977560cef273c948047b3e2b5cd', '2952c7a3432d938ebe9ec06d034990ba76142728a749eebdb28710c585ce6cb8', TO_TIMESTAMP('2021-05-18 17:40:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '6', '2056');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '49cbf963c82375e69c350f7dbb51cb306a79e65c0a484f69e33e0a6ae44b2b57', '81eb8e6d7eb162291e380bdf515c0c5e198464946a966f95ea91daa54349c7d2', TO_TIMESTAMP('2021-05-07 15:37:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1814');
INSERT INTO "SIMPANDA"."authorization" VALUES ('32', '2691b0fccd6cdb2a431967b890bb97ca8d103d651e33f9a7937c81cdc5a5022e', '7cd7a7e65dd9af500cd73534cda24ebc355b3e2c8b658719374bfdce86d2b486', TO_TIMESTAMP('2021-05-11 15:40:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1887');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '9cf6672e27312d90f02d2dba8d3e75287301c03004e63bacc84f70c87aae2858', 'a726c0099a1fd996bc268f6ffdce9395c2ee506d852842fbfd85beebf18b95f6', TO_TIMESTAMP('2021-05-18 10:45:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1980');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1065', '2b8e58ed3df68747a3f096da9174e1271eaaffd22bacb7280829d9c99c390bb8', 'ff04b4f63fae9cb1bda13d4ced719c5a6d8596c568daf0ac945d679c80c2c414', TO_TIMESTAMP('2021-05-19 09:54:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '2064');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'ec1f9a4d06222afe2094691609d8e91466c72b41e9bbee1dff0a09c348ed1d0d', '861196534cbba82013e06e848a2c9ccdf6fc473a4e9b7e3f1b304c4bb35ba385', TO_TIMESTAMP('2021-05-19 10:41:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2070');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '7871760886134ee9189c2cf3b2999e1d64ac19a70eaae0e9f3f3242f51b4487b', '888a7b6d3ac2b7f42a42c69f342988214c9c574df23122c4a00484aee255173b', TO_TIMESTAMP('2021-05-19 10:45:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '2071');
INSERT INTO "SIMPANDA"."authorization" VALUES ('19', 'fbe0689cdc9754b804974c65ba3a019ded97b76713ea8ebbe60ef912c2cf2b39', '1aba9f923ac4690d650e31d76f92d8f5943226e79db1df3ca963fbe92e15d773', TO_TIMESTAMP('2021-05-19 10:58:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '2074');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'b266739caa246b9df579a8783071aa6d8f58abe1886e87ffcaf4e49319c3e76a', '6ca50f0df8fb5dee59e738eef6a923fca98d54945daa943729318b5706acaf8b', TO_TIMESTAMP('2021-05-19 11:14:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2076');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '7e4d566a16d96108fa88e3478fe0bd7ffe83c5287ebcc411a462fa293c5811c2', '5a7fc9fc56bab61984a356f62527f0ffd6c68eeab237bd8c5d7d47bfe0628eac', TO_TIMESTAMP('2021-05-19 11:26:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2078');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '34ca863a992d09a9e7d1977c1e486deb533d122d0a1e247cb7952eb9885fd66e', 'b2e6b63a31f292791a9c75b420345a8b7490fcac8c43344221164a29c57956a7', TO_TIMESTAMP('2021-05-19 11:37:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2081');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'c3738cd032f3c491da00b2c8cc75141fa06548380192b434a8fb71202bd3f9de', 'ab688b6692a2ca7c9451d9b4ffd92fb552078f1e390ef18648df7956ce1218bb', TO_TIMESTAMP('2021-05-19 11:53:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2084');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'f8309f74d3f60f6ce4b5ebbb8caf9a73b5db7b6387d33afcd27018d577710b56', '84fefc14c811d99c99c7d0943d120357b7ad6a3ebd3993f6877c2b84571dd283', TO_TIMESTAMP('2021-05-19 11:53:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '2085');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'd2081f21e7b189f29edf4b574e059f212fae35f5df56d8f6b8a155702667dd82', 'fc80d764b681c95d280bc37b779f944ce4dc1842f10a8d8a5a2b21492bbc6a9e', TO_TIMESTAMP('2021-05-19 12:00:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '2087');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '6fdc885f901186b696ee5edbb518dd5a8d5219694e9007bbfaf09d036ca5dd2c', 'f5a2ba54972b07bbb36ffe1b8dac3ccb18fe4c9decb6075c40b86c78393e3802', TO_TIMESTAMP('2021-05-19 12:23:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2090');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '9cd6544f8a36bb59a30bb40ba49ff3133faffb8dfe667890e9ddd6666192d99d', '04be76cdec7f95592560f8583ccdb598bdfa0f915ca09e29cdd5e05e8aba9a08', TO_TIMESTAMP('2021-05-19 12:53:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '2100');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '41a2ddc565df94baf6b57c684bca18e63dd91249432da39b70909b5c805592c2', 'da25426e3502cae41abb2407a415948d7289170054af631af58bfa5bf4d2f993', TO_TIMESTAMP('2021-05-19 14:04:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2104');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1012', 'e0b56cd83e16fc95fa79bfc931a3a4ae23281df09fd1d0c6d2d5a23e3965ae28', '2172c67607ce0b98f18a0ce0908ce1e5ffabc4291da56a63429f0fac8a6425ae', TO_TIMESTAMP('2021-05-07 12:13:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1787');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '0fca1443313ad17e7dd5f1e2e8a2166fc822c9179f9355facd072ac3e55bf8a3', '57bc007f2798989d1f46dbb8299f1b3207ad7adcc527bfdb0cd52b695e2e0426', TO_TIMESTAMP('2021-05-10 14:28:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1855');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'b86fc45b4686b1f278b663d832eb20951dba795905dc4a42d0563dee5c158b9d', 'fec63cf797598b9edf22a13ad7c495d4ce990d6414903aeccb60309124bec07f', TO_TIMESTAMP('2021-05-11 15:42:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1889');
INSERT INTO "SIMPANDA"."authorization" VALUES ('16', '6d9614128c9bb178aee8d3a7cd953fd07664a77611a259d1f87c87b59f08da10', '5353cd1f3a06300f13ec1713813e6de9cb2150ab205b352b36794952aa112eed', TO_TIMESTAMP('2021-05-17 11:54:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1910');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'b749f2e0b729b0e372fb40391a3b3b79f63c5a759cc01e8d1a4cddf660b55b94', '381f17038852965aa9e757b09970c86ec5b3a543780595f802ecf8be2ce07190', TO_TIMESTAMP('2021-05-17 11:59:25.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1911');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '02fe68d23151242261fed6ca1feb5e0236fd19e828dbc6dec05b7c6bba9085b1', 'c81e9d55432870d847a1f61112aaeaf4855e8bdfac6692f0298606408d23a55b', TO_TIMESTAMP('2021-05-17 16:55:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1947');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', 'b6fafb76ae53a7afba2636e03127ee778807fa902229e581e9037d45dc8adbd2', '8668f9e6dbad4b9a8ca9bfb5431837d8e179324403700743dfa94ab47bfda8e5', TO_TIMESTAMP('2021-05-18 11:06:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1991');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '171bc8152b20fb6216e98be54b8fef3f6cc6c20230fe293f9e5b724af3a46c42', 'f39a0a8be89b76be4d24a4438df015ff4fb6c96354249ba6bcd58865dc9f1050', TO_TIMESTAMP('2021-05-18 11:07:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1992');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1061', '33e7f48d28c610950dd8c251857b68c4aea685d599329e05d46c89b0e2c6cfb8', '69e950a15b9d3cd756ad8bd7be629a821415d6a86e2f32b05a23e4f79cd26587', TO_TIMESTAMP('2021-05-18 11:11:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1993');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '377c5220b2202a626c2dacc62d3a61d978d50109b0ea4c43453e659b0d33c23d', '62734225847e6978e4d5ff31c348c3476f9d2d8779b7b162fd69e110318e636f', TO_TIMESTAMP('2021-05-18 11:17:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1995');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', 'b123b40e2b219ba9011d9c34954b7d18b82564cb399c4363f8e57e85e9f1cadd', 'f67176e2b74596fd20f4e0b4812240f87f4e9b90169efaa83472189d88dfd300', TO_TIMESTAMP('2021-05-18 11:29:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '1996');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '3dc658ebfcb4d11e769db0593010781988446bd5734bfc9295ce6c2ca18a9b7c', 'e5ed8d8510c0cbb530731674d1c61ac5d1f37219887a462435057e98d47bb2cf', TO_TIMESTAMP('2021-05-18 11:34:43.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1998');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', '35ffd26fa727d0e921f0f17e6325f6389e444ca14d32f07753e4b776759babbd', '3282a89bf9323dcbbbf390dae43d2f551a1e4ccf6aff037af28ffcb500b98d14', TO_TIMESTAMP('2021-05-18 12:12:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '2001');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'ba3e38eae9c4aa0803cbb9704aca72b2808f34728f79e90ee869fbb7f50c20e8', '2198891ba4b93ce465c2d86ec0845a8a92391046c3f3382a8bf3fdc434cc6ea7', TO_TIMESTAMP('2021-05-18 12:15:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2004');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '5fcf1ae795cb01aef753d1a712c3caeff5cd9e9451bab2be0ffa09575d0b34a2', '4cb868f3e3475399973e3b56ecd0ae326aea2e1cba917de786c2b61855d5bbf8', TO_TIMESTAMP('2021-05-18 12:16:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '2006');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '4ca7c9b524c93388b443acf2ba37a9f922969716c8dea0a5bd1eb24a81dbe056', 'c36a55bbb566aa69327744c747122240e547b85fb5c536f2be0a6c4e88661668', TO_TIMESTAMP('2021-05-18 12:27:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2008');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '0ba66e823f16cf859e98eae73880da803b9f208c134079d5b2132c3f6d910229', '1396ee6e7e6139ab49a41ca0362cdf0359f79793a76aea9b6011be4e0bfc652b', TO_TIMESTAMP('2021-05-19 12:32:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '2092');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '98702b4df2ea4e5733c638848e21da4a25e1d2bc3a7fe3abee457a2b462abdcd', 'db53fc6535be2ce961f912fde7b8e7042f153ce29d8ccacfbce346cbd1eca780', TO_TIMESTAMP('2021-05-19 12:38:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '2095');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '902e17f5a372659dc2b21693cef0614f2fd447e141c12d1bac8daf3c5e8656e0', '0ebcbaa5e538cefb96cad64a70d99cd3e04cc1aaa0bd19dc186e4156582ed240', TO_TIMESTAMP('2021-05-19 12:44:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '2097');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '52f9241b8845622064468e29f963731dc89436f4a98103da174c98e73dbb8434', 'a7a20be193798883a13210a8e469ec2de8018b27cc9a1f051992b23020f6a897', TO_TIMESTAMP('2021-05-25 17:13:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2453');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'fb2f557236a1eee48a9cbcdfdd33b62a5f69fed181f62190fdfd2d7522f9a399', 'ec6d2bbfd9257fd5535c2fbb7ea916b0dc2ed4cf764eb262dcb3c1d5efa035b6', TO_TIMESTAMP('2021-05-28 18:02:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2482');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'a24131c0c284e0b7fe8a27886067966efb403193301c7f00d55daebcee910a6a', '6386434a1752f6b36eb96858d5615977ec26aa8ed7c8d189fbe6beae15a6b36f', TO_TIMESTAMP('2021-05-25 17:12:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2452');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '357839be9e50bd19c15381c26b172c2616da56da900d50b1555d55bfc05599c5', '2c7704bb59b7cd2716e29095b477d6aaa60022384be2b8e08e4a7064cdbf4dcc', TO_TIMESTAMP('2021-05-31 18:33:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2495');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', 'c2dd57d0d0ac05e725f0099468cd0a7c530182bc64f6d1f34519ec3ad6b5accb', '476c31882a18a79b95c25d1b69ec3cff0f80c9bb4fa3197377122d984a811931', TO_TIMESTAMP('2021-05-06 17:00:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1740');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '810e0b9ce9d8b950eb3a503b68e2defe0e1fb61a465e01eb69e4edeb0336b135', 'f4fecd3ce28a6cb02b832576bee5658400ba62b084683dd10406085c0ac4e51d', TO_TIMESTAMP('2021-05-28 18:17:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2483');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '5478c407a16dc1ecc60fae47ab142b88e1fd7a088865619caf73f1a0b3e74d28', '7f9432933ed2046423d0927a3a367544dc21225969c22c88e0336dddbc644dfd', TO_TIMESTAMP('2021-05-10 12:21:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1846');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'cdfb9f02a986ed78a9a1352a634833e6daf7f70f3cf2bcc2c69c8f78da5af3c6', '2144c62408d945999d8ea5f946e4eb93aab156e78707b2d985844809a6c437a5', TO_TIMESTAMP('2021-06-02 15:55:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2518');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '789d61518829ed51c7b1fcf3ad9431fe7dc2037eec0eedad7b09e93553d20eed', 'a116bfe920c29de3cd165694be810f1358a5d55526830d7e6c11bf42a3c7f08e', TO_TIMESTAMP('2021-06-02 16:33:24.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '2523');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '514e313e7b57ef04a53753b93c74c43ae04ab13c404205eccce439ec3b6b3a5a', '25f2d95757450550bdc81640c3c876e7d7db28cbafd951d38c87166e4c08ab8b', TO_TIMESTAMP('2021-05-12 01:57:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1896');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'f884de02e49a36be2635187711c6722eefa66ce012a75d0036ef5813141a27b2', 'be85606ac35ddde7a7b72dee73f02fce05e67b6f25946e383a58a89dec53fc99', TO_TIMESTAMP('2021-05-24 15:01:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2337');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '4a63feaff6c6ebfda07229f0250ceab367156a9cf0b86ea70bf93fa21ec1256f', 'b48c7947c618c2ca2a1453dd494d7757bf8b595216c41226f8d33892e1cbc4a9', TO_TIMESTAMP('2021-05-17 12:26:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1917');
INSERT INTO "SIMPANDA"."authorization" VALUES ('8', '4f04615c106eb288794b241739e5ae78259c788103b332e732f05a3844351697', '255bbebd75103f0108f99cb3f25c915be673879a4a3af7be0ac76125d0aae175', TO_TIMESTAMP('2021-05-17 13:00:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '1919');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '0bcedb0c817c0a8ed218b0144e0a925039b956399d3a95e41a37969c9b47b6e2', '6512b467381567d79de3582e7b121c4dfbdf882be06ced404191895859475186', TO_TIMESTAMP('2021-05-17 14:17:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1924');
INSERT INTO "SIMPANDA"."authorization" VALUES ('10', '2b4d3ee51bcd8235f9b8b6a0f8bc2d246aa5da07bf3e3c877e7fef9e27008d91', 'bd1b9ee376cd2178eda8e6d94af6a94c379c25d6d4a04cbd590175a08399b807', TO_TIMESTAMP('2021-05-17 14:20:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '4', '1925');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', '23aa1fb7cbe00e017a12cfcf4a6d3e7a630ef517534a3212c3364c477d66379e', 'ef1c6a378ac18ffbb39f742dca76d8672be17f14b25c3ecd2a7be75ddaf2fbcc', TO_TIMESTAMP('2021-05-17 14:20:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1926');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1061', 'd8c6821d4a498897364cbcd24d98f9d1eb3d7a8a0cba44e5213118553e89fe0f', 'f69ea1c10ece00de3349956e1c6ddedd037bf5aa128e94721e4de0a38f9ba124', TO_TIMESTAMP('2021-05-17 14:36:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1930');
INSERT INTO "SIMPANDA"."authorization" VALUES ('8', '719d72d0d02ed176d5bba964439fba2dcb8d7ea3361e3b18eb76ad81ce6574c2', '8addac097bd024e44a9e6763be2050b60308decb7c1e845aa550f673adf21ea9', TO_TIMESTAMP('2021-05-17 14:37:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '1931');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'dafa1fbb668bb6378a0a12b1fcfcec40bbc67bd5d1eace432f965b28959a081e', '764f247d6b3bc09b2b194e8c23f7b77129b6c2968d3694133d7d28ea9a9a5708', TO_TIMESTAMP('2021-05-17 14:48:45.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1935');
INSERT INTO "SIMPANDA"."authorization" VALUES ('25', '7899c52b458607056f3b68b7b91d45b3baec17ea25e5bbdecf9cd4530cd2fde6', '79ae4bd9e408711e0c30ea89ccde5b90ef7b26d10e2a4543aff1a825c4be6ba2', TO_TIMESTAMP('2021-05-17 15:16:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '1936');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '433eb52c9b26c3ee09fc1eeab352a62a38332f0a48bf5e1d85ca5f0040657745', '3a9df305f9d7e42536281c2687fdc771df33ee8941a3dd29b6844d629c7fd6cc', TO_TIMESTAMP('2021-05-17 15:26:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1938');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '1f0bc0f6d9b5af1fbe6b054a5f13e8a495a27fc37c438599c1cb4674b0ac456d', 'a5269fba57c7b8071e577bfda770c212f50b511900ad96c16f472fc60664f2cc', TO_TIMESTAMP('2021-05-19 12:47:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2098');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '3017ca36e1d0c5c703db4c2c9c339b245bd43279fb96e1e9b783a95d3c4bdab4', '2a5f7035a03caf49e8762dd242c1b1f6ac49a584bd9870115063b458eadbc06e', TO_TIMESTAMP('2021-05-06 14:58:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1709');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '533d05f4a58a2f03e61d915efd4ab2256c3fff3fa5ecdc68edfd1dbfe30f8e66', 'db38fa134e19759d0ab6e6f49157db9d8c0cc5021a9d0f2cfd2d7ce3f2541ba9', TO_TIMESTAMP('2021-05-07 10:51:09.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1755');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', 'ec08668b6a5d313fdf06e6648a294d014952aca5756d8269bc27941fbe40fcb3', '1c1895533207ad191c0c07b45c73480e5ecc79066fbc6c7b7b1436a38c721d39', TO_TIMESTAMP('2021-05-07 10:52:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '1756');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1062', 'a8498de4630bbc4249e21c4659ac01f70b1e5f9bfe148dd9cfa6cf03ff654459', '0f2edef47238dd2deac4286948a6e47a3a0c86595db399cd88775ce5ef1f432d', TO_TIMESTAMP('2021-05-07 10:57:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '1759');
INSERT INTO "SIMPANDA"."authorization" VALUES ('32', '164a4da322776708be8acce3332383146ff5b1a24d69436c3da8fc47e2da8f33', '38aa55eac355b2095b9d259ae887e80d99a217f7de8a44cc2af1e0adde0c45e4', TO_TIMESTAMP('2021-05-07 11:11:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1763');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '12c6388dda79c68561f84d73893b164f8f0d08b774ea976b7aa7caf883feb734', '15f4b32812ae66919dda6960767e1cd8360a397c3c8312e2aee28cdc3e94e342', TO_TIMESTAMP('2021-05-07 11:19:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1768');
INSERT INTO "SIMPANDA"."authorization" VALUES ('3', '681976a6980aed76d7634b8dac80c82ee6d98f5f20edd7adfcf042b2614510b9', '7d0ceee92a7d3a883de7b5effdff56f13de131298b4a1cff54e5941dce8d6274', TO_TIMESTAMP('2021-05-07 11:26:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1770');
INSERT INTO "SIMPANDA"."authorization" VALUES ('42', '702ed7c636f0fb8e676993febc32ed9cf341df4f9750ebab188428814ce8433e', 'aef27d4ab4b6409edfbd7a9c5f700d5777bc3344eb3a34b0878c88194403e1cb', TO_TIMESTAMP('2021-05-07 11:31:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '1774');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '063f0a4bd7f6d9e369e9b172bee207ca10e13858b321dca5c234eb4b9c75d694', 'c7b600c11e03943585c6abae73e27644abe242232a7be849868f4ff0de74fbd2', TO_TIMESTAMP('2021-05-07 11:37:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1777');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '5f94aa231c2164ffc409b6d6124d1d1a163641e9cb8a4f859df5c37dacf30c3a', 'a5396475642675f332e647676740dad098f75aa33e2156e8caf3088b87c4ccec', TO_TIMESTAMP('2021-05-07 11:39:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1778');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'a097dfefcd3dbf388a991a178a7415378ca534b263fd119072d171066d7f3b06', '1c7b01b15596d7e62b61ca3f75c7fdf13c1b3619b6d54f6f44ead0165af2046f', TO_TIMESTAMP('2021-05-07 11:47:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1781');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1061', '94c2332d1a9b9032c035ec317ab9ba96c31d788c33c2827913126f4461f8953d', 'e389151ba51a9be571947feec3a0397cb8f86027f1b103231b8275a17f5017c6', TO_TIMESTAMP('2021-05-07 12:08:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1783');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '002b1eca49ebb40b14ba73ae24c5a6920bd03583ff6c942eea181d41239f8fc2', 'a6b642257ec31e438fbb4819597d98a3e53c9914560269a790b5293e5ec22a24', TO_TIMESTAMP('2021-05-07 12:09:40.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1785');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '87d9f3acfa390403da781e244e1d2d2d9506fd19d1ce3d954555eb829992ac2f', '0c4f7bd6c94b6fcf8cb537c0353b1ab848b61c54d1854f01f3d1cbcd0c91d02a', TO_TIMESTAMP('2021-05-07 12:12:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1786');
INSERT INTO "SIMPANDA"."authorization" VALUES ('38', 'bce5436db2ce1681181cf5f2a051410752afc2514a1ba2b5584dda0d408c48ee', 'ddd3cce5bce642fa5d42c5cba50457aee3707d02f9dcdf20eeab82d455ef2fc2', TO_TIMESTAMP('2021-05-10 08:06:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1830');
INSERT INTO "SIMPANDA"."authorization" VALUES ('37', '11eddbb6c96ff9d8a3d6c8286c4b894dd9819e25634672c6adaba4f4aa6c9a4f', 'b92066e95ba6a8b307d5e7ed22ea27000bde3ab471af4f33c6262731d32c838f', TO_TIMESTAMP('2021-05-10 08:07:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1831');
INSERT INTO "SIMPANDA"."authorization" VALUES ('39', '52c551410789295d3e19872cb828923f4c13172a6a6cfea215c45c709caf989c', '2594d8562ad00e89a06c3174e209d10683b686034f93585f42a5dea2c6a627f3', TO_TIMESTAMP('2021-05-10 08:08:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1832');
INSERT INTO "SIMPANDA"."authorization" VALUES ('40', '7530b9e647467fb8fd814423c6429783bbc93c15e6cb6dee1421303ea0c0241e', '5776d02e4e9bbe56c637efa6509aab9b1bc295bfe7bda39b7ac19b020aee6a3c', TO_TIMESTAMP('2021-05-10 08:09:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '12', '1833');
INSERT INTO "SIMPANDA"."authorization" VALUES ('16', '28db3519717fe069096eaaff147518f65333ff7d6f249053d3cfd1b532840e86', '6c32e050d0662bebaa4e534d852142dab630e584ac9af71f73ed817a357afc63', TO_TIMESTAMP('2021-05-10 15:29:44.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1862');
INSERT INTO "SIMPANDA"."authorization" VALUES ('8', '3925f7783b8494a745cfca51c4389d326520512f399467ee025cb34de136c633', 'f5e635ebbdae67793164b79902bbdb92713c1de72a2ccc1aa701c712f10a7714', TO_TIMESTAMP('2021-05-10 15:36:26.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '1864');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', 'd5ed8932290863d090fd0a1945658cbeaa8c5fb30a3e32fe1cbc8841c0d0cf04', '229b2a0cf51e17018279fa94c3eccb4003c5382b66a8f3e94e6f2f9434d51487', TO_TIMESTAMP('2021-05-10 15:42:01.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '1865');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1065', '009115b15df8f201ebc44167bfcad80bb298a2890c7a106d2e77fbf67a7bafc4', '1f9eff8abc3981821a07f24ca4e90845110c36020d79a7b82ae1503bb010ed79', TO_TIMESTAMP('2021-05-10 15:48:10.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '17', '1866');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '5e09db86fb43823c18bba2a7ac6192de69e7c4776ce8eb8313c574415f12d92c', 'c729b3c8e5510b03a3c4b50909725342e9323e268dbb336eebdc75510c880027', TO_TIMESTAMP('2021-05-10 17:02:49.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1869');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1012', '7c236e4ae409018c6022e50e4d0fe7aaca6ef32e9755e49fcdfd4adef7211e88', '501438a28014c9d8e1edde6990996754a37d811d55f42b979f22b267d6520778', TO_TIMESTAMP('2021-05-10 17:19:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1870');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1012', 'b33dfea55796ac0293c137f356f0398bb0145e8897cd040c949bb1d529376bda', '6ed90030a0ce4e53ca26db55956dca756ec3d72a0a4c80fec88189ec970e6b82', TO_TIMESTAMP('2021-05-10 17:20:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '1871');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '9df921884c0170fd9acbde3b76e6c505b0db4ddc901c46e8befa866db6246a08', '7313fa3b100ef7ea45a86030710d51d54c963588b0388740178c104318937b86', TO_TIMESTAMP('2021-05-10 17:23:33.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1872');
INSERT INTO "SIMPANDA"."authorization" VALUES ('16', '7762e989fd83bf5844af1c2efc9b0cc39e1245ba3e25f7c7012e181a8cb4c189', 'bcbfa330ae575dd07a85bc1f20da375ff6ed27ea7fbbd4c7c09480f486b6e20f', TO_TIMESTAMP('2021-05-11 07:18:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1875');
INSERT INTO "SIMPANDA"."authorization" VALUES ('21', 'b7ce51070a139c3253f037024d99982b4eec90ec8f8d64fbe5a0e13f37731041', 'f7119571b5f5dd84933b5037fe9bd991b4075318171786f4e3d9c4d00e137d6f', TO_TIMESTAMP('2021-05-11 07:23:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1876');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '50bab112a3f23637c051a9651fcafc17a48add2bb3277784bd86c16f1766a57d', '03f704fe283b28524519366b560b8895e28cca54802927e16fa10b296b974b98', TO_TIMESTAMP('2021-05-11 12:32:55.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1877');
INSERT INTO "SIMPANDA"."authorization" VALUES ('21', '01263c6306c09ca0424ed9f813082f4f59f245493da77a2e909e667b2f2f3de3', '9c96559f16c0c6335f8b334857d0a5677f06cfaeae25e5d4b5f6f0b9c49913f9', TO_TIMESTAMP('2021-05-11 12:33:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1878');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '38be36a4cb97d4782f9785ce5eb63d07e20ebb15798548d5a6071d80680d2f61', 'f11a748f16975c6f0e5812e9d2f466ec9fccf6e14065a0ea5bfcfc19df53a3f1', TO_TIMESTAMP('2021-05-11 12:34:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1879');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '797fb07ad10d29b46b11d607b1c6c0c76841bc6558247bdd2cc6df770cb65d65', 'd0165fcce24a774d1684d59eb8aa627784adff812ddd534af770ef4608aad16c', TO_TIMESTAMP('2021-05-11 15:30:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1884');
INSERT INTO "SIMPANDA"."authorization" VALUES ('21', 'b7c37935b183947add90dd67fbcb3b723264c5755475a3ce035bf99a6bb54bb0', '863b75c149595fff1c0448b256258e173a9e31c659d4702f2f49f65fbea1d04d', TO_TIMESTAMP('2021-05-11 15:34:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1885');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '93b30c8f4e2a684adc7f9f772106dc01678b07bf156385192ebe9c2520d2d4db', '0951bff737ecf4a7bd0ca21d733313c25a1f44c137f58f4b576acb7241db947b', TO_TIMESTAMP('2021-05-11 15:37:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1886');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', '60ceabaf1a1dc36cce956f6626df79415dc5d5602fced74cf8b9ff00dce3cf86', 'e3c4c609908a8e78afcb4e8ad9b2e600e97df46f72cea3ecf3a7c032d84db8d8', TO_TIMESTAMP('2021-05-11 15:41:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1888');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'eb1ea50d5af2b2b8adfbde54de85b4a02ecbdf6189ef6b087c4bd2232dcb0019', 'dc4795f2589b5729dd0328b8fa8ea857aaee78bcd6d5820737906b3e9a1848d6', TO_TIMESTAMP('2021-05-11 17:24:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1890');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'c8f126baceb4847ac48f913d72b8abf4f66aab7dca3feaf65f96bf2d1f8892f1', 'db551982003ca85bfb4e3aed03cdd7f7abc92ea0dc9a71b762adc9577004b44b', TO_TIMESTAMP('2021-05-11 23:46:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1891');
INSERT INTO "SIMPANDA"."authorization" VALUES ('20', 'b8bca575ea6d387a25c0d98b2d67ac60dc3e2b29ce5eafb962e399f5f2adfb7b', 'cf93b27bbe2661cccc1eff0510ab9fed7b17e828773f15f78b35d9e603a94237', TO_TIMESTAMP('2021-05-11 23:50:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1892');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '1fba029c0d5f254d51672c05bf674a9f1006963d83ee41d9a9ed8ab3faa5b4c3', '29c2ab82e92899a41e23a9e2a47d4a85dd02988e54aea6ac6ed23d7f680204e6', TO_TIMESTAMP('2021-05-12 00:43:36.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1895');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '48ead6aca51c8036448cd07052d0245cb4864ff579a009fb1de927ed5b35f200', 'c973dcf7305605d19eb8bedfc3e64b46ae91c6c6a6e89e3f76dc910647874252', TO_TIMESTAMP('2021-05-17 10:07:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1900');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '7170f81529934a8ab9fcb6b8dfe5cde28f57f1c48e32ac62ffe5f9fde01bf04f', 'a895b29d1d1ad7c8beb89dabe7dac693f1bab7aab0672b0a94ad7b22990b53c1', TO_TIMESTAMP('2021-05-17 10:29:17.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '1903');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '9fa89f0093e6507496766474e2bb8fa439572547f07f6ca4e11e0bf825b47011', '2221fd746f9f551c0e13aba5083531003a4851e145a71f4f5f6bfa989ca8032a', TO_TIMESTAMP('2021-05-17 11:33:21.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1907');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1060', '4190619f9b2aaca6db2e5d7097a209078e0d28d405cb349e14e18b1dd0acc01a', '9e870374da67088eb05903fe0a5840540b39714a974531c31139582eefbea12f', TO_TIMESTAMP('2021-05-17 11:36:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '10', '1908');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', 'e6394bcfa18308d3b6439e06cc5c62e1f7dbf244c8885b776b54f3c92e82a3ef', 'c75ae1e00ff9fa15c12b92e1a935a129dc2e1d2f67f98a86a59948ba46bf4dab', TO_TIMESTAMP('2021-05-17 12:07:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '1913');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'ed0fe4516f5b43a9ff92f3264a5d8723a3ccbf54c97dc8d999948758e7ee2076', '2be61185ee12fd755cff6801ef0305ddac1bd98309e4653cb41a8ded3c13068d', TO_TIMESTAMP('2021-05-17 12:10:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1914');
INSERT INTO "SIMPANDA"."authorization" VALUES ('8', 'f92a8a40a791a7f3972d6890c81bd3e16892eb07b0ed88d6c40854f5b39bf160', '665a67c9b83e9f73516477b3ae4d2fd11c9209f2aa230d5302af385bdd5599f1', TO_TIMESTAMP('2021-05-18 09:44:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '11', '1975');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'b333487498799ad7430e673cfde2c2932077fa77290078c6bfa97134ebf4527f', 'bda12ca86572c7f73b321740514ba6ae40411af4d46a2d7d5bf7109cfb48b049', TO_TIMESTAMP('2021-05-18 10:37:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1978');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '999da20b432de629f6149b0f6357c92ebf05e5db2316044ebd834481738079ad', '202f3a2e6e52c7086f3aae6689f059547099ff3c7ace84bb5095290ae9a5ab52', TO_TIMESTAMP('2021-05-18 10:50:19.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '1982');
INSERT INTO "SIMPANDA"."authorization" VALUES ('16', '837273192872bba5fa24fcbedfdb133aeeedf80401836c4148d64a0842f7cf8f', '7c9ec47e9e449c53ba1237c9179baf232ff0f8cbefdc568975466ff4ae642114', TO_TIMESTAMP('2021-05-18 10:53:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '15', '1984');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '6eb1e0f5c40b10c617b58eeeb6b7f4d14daa71de25cab0e3de91839ee60cc2b9', 'abcf41669d0356e260320a9fb360f9ea181ec2873a88fa792277d7e2e4f5829d', TO_TIMESTAMP('2021-05-18 10:54:48.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '1985');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '796600145c6ca0ed15e1b15b8db8d3cbd8a892bac7363c82fee88b1bf8a44892', '634d3844bad06f329255e55d250758b105ddfc12101b416c26b44a6cd2f83628', TO_TIMESTAMP('2021-05-18 12:34:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2010');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'bfa7ab51756b8a3d4cff395fd5eb8867f0ef71f4395152a016af73356365dd20', '7b29a76ba557d9f9f96978b73a91bd0a20fbf80b1ecd096ae50a8052017e45f5', TO_TIMESTAMP('2021-05-18 12:36:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2011');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '8ef78572a4a5c0cb256c3074461b87bb8bdd704f72a9a30d98974ec28749d827', 'bc084fb4b5ec68a9ff301c71ebb9fb0cce854223986be36a7f0bfe646ea02c39', TO_TIMESTAMP('2021-05-18 12:46:35.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2013');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'b15cc7b6af7265a1faff128410809b8e60472c895432ec929b07c28999ebbd2e', '83805d9a7d750209e67c943ca36b9878c03664d1a43b7298b9655d0af5aff1c9', TO_TIMESTAMP('2021-05-18 12:48:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2015');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'b78a248594e2738cf2371166a3b259cb3a9a9d676505dcad38f773da006ef745', '2b7309813191c300d9bf16b50e0b51d68311c859db3e8603c2cbe2ca38e62f32', TO_TIMESTAMP('2021-05-19 14:44:41.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2116');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '97a7b9ac80230343b7ae2d314675c5e3a88a27020335b5b3c8e24addd78a13e4', 'abe23f033d37f27629d81e8477ea8ff09edc3fd7ea92b23bbd499c473102a9de', TO_TIMESTAMP('2021-05-19 14:47:42.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2118');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '9bfaf090e6a8b12733eef2e2f9c8f8ba888a11a1a7944712b734123181e98be9', '06e780e52a5f95cd89e303d4118a997af7d0df710280385f4d7f28ba932372cb', TO_TIMESTAMP('2021-05-19 14:58:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2123');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '39b6c0f30de5990936fca3500bb971ec8143239c123bb0f220763e75ba1712c8', '5d897726f9458613bce553b2096bb46ad974e578601e404fe431dd39aa327ba6', TO_TIMESTAMP('2021-05-19 15:28:32.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2129');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '629096c3b044de1f0e966d3a0b53ac31998a38643f9f1f3a2f2c7fb54ca9e076', '8d8f8f38298afa14e3d9f0723b1edfbcf5f66f989dd65baaee297ea4e82b8bd4', TO_TIMESTAMP('2021-05-19 15:34:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2131');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '390fa390a7d627e388d80d4417a1ab9ce617d8e9ead066025f23cf0d45381dcd', 'e444cd5d660c6722cd91fa2db2fabcbd306ef71deafc30d35ffd9c18f618ec5d', TO_TIMESTAMP('2021-05-19 15:46:45.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2135');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'd28fd672b5c5511067eb52b608b058d1212cdc8d4d19976bd200eaa6c1b3df16', '6059444167b2fe89ea09078d8c6251c39cfa79a16b9b0dfb97a4f7645960d061', TO_TIMESTAMP('2021-05-19 15:53:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2140');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '784dbd1babbdd41c868761740e1553096336a6d606fb6dc5b0b6f04d0c926038', '0ee1c7ed0493a0872d1cd0096cfaa6b3d18f87698798e5debf679ee44f3dda28', TO_TIMESTAMP('2021-05-19 15:54:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2142');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '32b6325b59c5325aad52afc8ec306571ce62bf53f87db84253bd0ea8c48d59c2', '6f7fd15fa794a84a092d175bb72d1aa2decc4b360d748e5aaddb82411903bb11', TO_TIMESTAMP('2021-05-19 15:55:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '2143');
INSERT INTO "SIMPANDA"."authorization" VALUES ('30', '074e80fe1526ac7373262decbc60c83a777d5365e74a90ab05fdde7a24c600e8', '6cb67fba0bff7a28ad1319265aa5afc06b64dc269751fadb56645c365d2f610c', TO_TIMESTAMP('2021-05-24 16:20:08.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2368');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'e2cb1571dbd9141181c3824c8b96519ce2f4afb42f11b00ea847f7d72b3836ad', 'f79b34bd89981a459e7f4f24d3eff267bee763682f5b6c8e6ff609d7d1d86bdd', TO_TIMESTAMP('2021-05-19 16:32:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2157');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '4ba58f2f5667b289a7bf4dcb93ea366a91a20daa3cc9c3d5561b0c71505fd609', 'c5b109c5a7a83bfd8de61f084a4f7a374ca1021d3815ae1cd4f2d40fe98e6722', TO_TIMESTAMP('2021-05-19 16:40:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2161');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '3b8e4b7df52d9a028ea7c650e2a8d17eb8ef07cbae1fdb60a054c4d6f9d342a5', '31d4e351a3e895b0f4fd98bd62fe9382751aef12e896b65cc1ac9134823b5cb7', TO_TIMESTAMP('2021-05-19 16:43:56.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2163');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '2b65b657c35c00607984848693bd4066c18e5fe655d1123920d0eb35af3da3f5', 'd4e3bc20c7aaa6f111439cff4548b7e89017e955e476d4a7633b7e98f45fee57', TO_TIMESTAMP('2021-05-19 17:51:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2189');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '121b03ef7e5046da9a3e74b8be1cbb4dbe2b7ca02f1a824f6adeb28d63204710', '33de5406bcf33ee21c078058ed0f106b0ff74ec7e41f4f8053d59fd48f046cf9', TO_TIMESTAMP('2021-05-19 17:54:16.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '2191');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '251c7b2ad4c8f2c5c03904a1dc28c03aeae664662d09afe8775bcb6d7fd4e75b', 'a27219ce479c661fafdd287ba0f8f77260c3fa68fe1708f092288324c6e32c02', TO_TIMESTAMP('2021-05-19 16:08:53.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2150');
INSERT INTO "SIMPANDA"."authorization" VALUES ('15', '58f209307fb5295c5bd2896bb478e1bbd2869c97ec603e4e6b88bc70189f8998', 'a712a5b331d94b3250875c2489c39eb0f0942c274b7d1fd62cf6dda8cd4719ef', TO_TIMESTAMP('2021-05-20 11:52:15.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '3', '2219');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '2b49a65655e19f2f0a79b014f79d4de1f0e1f7516cf1c66e7d2b065154496782', 'f547125713cbe27b02e581acb38192f1963ca158c1195754797ce7e2d9144234', TO_TIMESTAMP('2021-05-20 12:00:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2221');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'd7dec7a3911a57562aac52ebeb6b0e68aa149b07d989e888f04cab7cddfc35ee', '08822aefd5eb493a98cb1732db32839694ee8830bb7a9bbf8731b4a9af277007', TO_TIMESTAMP('2021-05-20 12:02:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2224');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'c90c692839c964be6f6827edb9dc9807504a9c99ab35bafea13da89dec1f1b6a', 'a025a4def2a0f52e7d5611706486dbb5d2a7b91150610586ca523dd4b5e9c29c', TO_TIMESTAMP('2021-05-20 12:04:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2226');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '3dfc9698bc6a02aeab2b606a1971c9b494d28e9f546c84b7d7920f3b3131a15d', '632696ed07854e7f4de704f1e30e1442c67d153ee686fa0574a2804e2476c5de', TO_TIMESTAMP('2021-05-20 12:06:23.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2228');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '395d35f40636bf1f6bdcbba6b8083d38e7cb3e9678c0c047792a034c2d919fed', '71c79885a7933c7d0bb9b3a801e8ef06b8b6019472469871b0fcdde4a5196c74', TO_TIMESTAMP('2021-05-21 17:16:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2274');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'a1c65576e7586b39967c5a84324555360c773df8466820b3e91a69ceaf2e5f36', '63fb5a790f0db2a5923eb687259bd80c97c22bcdd11b9646fe69a674367fab6b', TO_TIMESTAMP('2021-05-19 15:50:05.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2138');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '4a427a3ef04fb0ae96b329f403caac821dd85ee02793a907f0e616cdc2d28c53', '7dc5f77e76e4ff49c1351a81d3a02ef1421195ebc720ebd53f6b7837061fd788', TO_TIMESTAMP('2021-05-20 14:54:02.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '2242');
INSERT INTO "SIMPANDA"."authorization" VALUES ('5', '88f411cfde2b83a05ce039d170d446180ed4d4bbe17b09992903b17c85138f1f', '345b78a65a0618c827a90509ebaebf3c695c644459d7638557f786571a8a232c', TO_TIMESTAMP('2021-05-20 14:54:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '7', '2243');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '099d9e5e32e7bfc5c1ec0f27f0bb0f38801d3042f37d0a63d484950bae13075d', 'd4f45f6035ddf13635efedbc7ae5655c846da208d91cfd89c32e275ba89d28f2', TO_TIMESTAMP('2021-05-24 09:34:03.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2288');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '7474b1b671849260a48831168c94393ed40d1770ca5ee67e5aa7c44abd807b3c', '2e910c5bdbc254df656c38e09d31099300aa3d55ee2c35b7f2602ff17605ebb0', TO_TIMESTAMP('2021-06-02 16:06:18.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2520');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '65ab752c27bbeaf4448c683bfceaeeb1f76d833085539f0f3f93a1c078ec94ff', '27392049ee7c54664a51857aa4c1f5a78dff408d4a82960f40c31636f34ff1e7', TO_TIMESTAMP('2021-05-19 16:50:19.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2166');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'dc71bbc185fc480a91eba4b9852c5f6b64592d19360fc2ca3d7c8282a61a950a', '93c8fe013cd95cd968e52bce2d4e6beed4a94a67f8861716aa624349c08a1d10', TO_TIMESTAMP('2021-05-19 16:53:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2168');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '58228994d31401241f406bc109f6931f1902cad3d6fc441922fdcfa88113aeae', '4460eb0b2fc14d4b6bd7355680e6dde851ef8eeccd800a79597e3fd581878fea', TO_TIMESTAMP('2021-05-19 16:54:13.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2169');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'a1caad9f950bab909131521b3fd936eefd981261e8a35ac52b2adc291462f506', 'c87f5d9a9dc72e58611092ab39045b527ca18fe996e430d83247a30942a88ba1', TO_TIMESTAMP('2021-05-19 16:55:12.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2171');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '41c983c92ee05db608ea97e694b4a9382a2f707f6ea692c3a051168fccf7945f', '4ded5e4497169aa1e5fe7cb246e9346d89e955e0323f7ef75e0d0698ac68ea38', TO_TIMESTAMP('2021-05-19 16:57:52.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2173');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '225dab64f16e9b76898bb371352b7913c3bc7ca7ff8ad696fb2f9ef6ee5a71a2', '8395722f3a78016d60494401c020385f57acf864ff65869a4c91d205876ef856', TO_TIMESTAMP('2021-05-19 17:16:46.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2179');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '9b17aecbcaed410d9cefb75e35a53423b2ef7cfc54fcf2678fdbf35a2b90a731', '99443f6ae39d8e07ff95e2e8f32242db7188b7ca7890bd5c4d83f48395bff6ef', TO_TIMESTAMP('2021-05-19 17:24:11.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2181');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'fac1fef5c73fc301c8763338483b9059fbf6eb2e6329c85b5c7fa2f5204af468', '8639dca3402145dd4dcdfee54c6e94b8964b7494a894f178339f7eaa889f0f92', TO_TIMESTAMP('2021-05-19 17:29:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2183');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'd6dd13eebb0a9f0f5566818c3967d735e36d0dbd017c36c98ed74b50ac8937a5', '0187c5591e447cdd82a9f49776ca20d10ba17aabdf77b1631d5c0b7c820056c9', TO_TIMESTAMP('2021-05-19 17:35:38.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2185');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '3745ebac521f5b4d0029428433d97f82f34717954aa8892557cb02311e3bd059', '5c5d2c9beb6f924e675e798241d53c0d7adc1c2efcf0784edf53314ae91c8bab', TO_TIMESTAMP('2021-05-20 11:24:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2210');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'fd9d6d738ee9c15491bbbadb77175cbadb7c695bccf8d5c0d697a262a1601345', '5e3d3b1002b1602d409914650bf6016bdd15096ba29b5dfd466cf30b35402a2c', TO_TIMESTAMP('2021-05-20 11:37:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2212');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'c21a3b239d53b2b7a9098e5c5ca9ffaed7c24e8b02124e4820809ec6b98d1bac', '831c8b2de8b2334b36100c53a002b7deb2470d9e70b5cc5f0770c025482c3c12', TO_TIMESTAMP('2021-05-20 11:40:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2216');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'd10d86bc635d922720ff952eb9811aa3c0b3bcb7154916fad3b0c192cb58a680', '9abd7c9e97d58fc63ba29647203b9e03c99cacaca195647f1695403f922e65a3', TO_TIMESTAMP('2021-05-19 14:18:57.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '2112');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '9defe0aba5998ef31e01cc73b67ee05977dde167ce2742f193a88799913a3d3d', '9e73d39c3df83f69ebc3ae8f12350507e179ff985bf1cde5acfc16d1d8e933c1', TO_TIMESTAMP('2021-05-19 14:29:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2114');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '4868f28f417a2a430847a8dc5f65e6f3ee96abc74a90e852ef5f37d3483c96dd', 'db65cda3e4bc5e7f8ba6e13314e7410b959c888bbbcae8119b87b95ff382aa1c', TO_TIMESTAMP('2021-05-19 14:53:50.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2121');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '4c67933a69f3e78977665a1d1c5199c9b39fcc74a0df1a478b8d502a53727cf7', '73441ae668fd558bc34aed0aa5a28fcae1836d193be4fb29c479a93ae0e3c208', TO_TIMESTAMP('2021-05-19 15:03:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2126');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'c50f3f6e3daec9f3dec5031b1d8dc946ed6ee82b0c8e734e6aeb264ec3ee444c', 'bdc4ea0c83b9c05b779fdb5fd475c054ec8458ee298479ed8116225c7614dd40', TO_TIMESTAMP('2021-05-19 17:05:27.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '2177');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', 'a05e4d0af551824e0c66a5d676735c6bc9654aff4e732faf836a6d74a91e03d6', 'f93f24dcc4bff47f6b2aee2055d85665aafedaedfd5e72db8fb8b8e2c0764032', TO_TIMESTAMP('2021-05-20 12:34:54.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2233');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'b9f4ed0c97993a34516c29b89047f05a05aff2a660c8c6936949bde40337cd86', '76a6d865b1fda0f3a873cd5718e4dbdc57ac632801ab4edade14f1d7b15b41b9', TO_TIMESTAMP('2021-05-24 09:17:19.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '2285');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '4850261d0016907f00b0eefde56501530ee2cb7b5dea78c49af72a885204fc67', 'ce61e1552e61d1aa7e43f64310302fcec1f15529b260743b837833f8e7efeece', TO_TIMESTAMP('2021-05-24 09:19:14.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2286');
INSERT INTO "SIMPANDA"."authorization" VALUES ('42', 'dee665f7999d22467df7a40ec7e439ff0aa1693a2f796ed9b521936add7f85a8', '4f6edc7d24e0745c2f37c2f4259581cb4f678f20eee597f428cb95b81f973ca9', TO_TIMESTAMP('2021-05-24 16:28:30.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2373');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', '17f60040d7ddf60ad999ae3c265bb7013ed70315c61dc1d2f98407fb3ca80c1d', '3d2c4f2a24950d709431cd8196086bed0485733a00e0484e615a8db8a1d7b786', TO_TIMESTAMP('2021-05-19 14:07:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '2106');
INSERT INTO "SIMPANDA"."authorization" VALUES ('4', 'fb79ca9cbee93851b8bd154ad142acb748c56e4c9a2131ecaa4b20381a092a90', '5c9dee53e86c577e9cd75205b6479581a17e04f6d257917984dc58b77fb3e6ce', TO_TIMESTAMP('2021-05-19 14:11:39.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '5', '2108');
INSERT INTO "SIMPANDA"."authorization" VALUES ('31', '73a430bf1947af38b50d897b790ce9e1a83be4124a8e408f008709a0a69b851c', 'c44866284e609a50cf99f477b6451f345c7fbc32a98133fb46bd1b2de4136e28', TO_TIMESTAMP('2021-05-19 14:13:47.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2110');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '3ad2a70c85a5a524c51cb17d1d1b2f27ead39da34b51b1c71de59c3260f2af60', 'afa3418e5471a6f10984bccb0de6dd88a6f3b0124db484a8719fb65f54c14d5f', TO_TIMESTAMP('2021-05-28 17:54:22.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2480');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', '072d9613be95d98e0c6b9e25def441f9b6b86fbb3677b793704ef25e82508c54', 'b2fd92e23aa7f8f302c272b227c5ea8cb71a6647c76ad1e5f6de4465253a7b38', TO_TIMESTAMP('2021-05-28 17:55:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2481');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'bf6f4e770c4e16618fbfd436e94c495219345417286cd40debf7c344dd247b8a', '3743355d5459f19354731c68535818ab1c08b8eea130088084877409e1f4162e', TO_TIMESTAMP('2021-06-02 11:57:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2501');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '35b34c69b44d2cfe93acdeb629945c590cfa28c373f40b98a47d92388e98d83d', '51b15aa688284ba53ca7a91dc9354247fc1489e25c9033984a8fb9d918cebad3', TO_TIMESTAMP('2021-06-07 13:00:34.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2563');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', 'b1904c3deac4b3aef6bea0d6578706d9371e852f50233bb3b9221e47497cdb3f', 'fc301c6c685c6a33bf0710f5068ad6aa23735f7a448d528165137a67a12a5def', TO_TIMESTAMP('2021-06-04 15:14:37.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2551');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', '80688e6b31f835c9e2e4d9d0361f5adebaee166768ebb737e328deb47cc506d5', 'c2cc56d3c5219d362ea1db103b3ca65a1f1dff1e0728a70a8250f8052c5e7d61', TO_TIMESTAMP('2021-06-04 15:15:06.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2552');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '862d7a3baa78e6d6a5bf78a18a9a877714a910635ec0bcd3d739da64cf1e7426', '1f9835abc7baaecccc56be4e61cb3a7256f8549487199c08232f61ffa175d47b', TO_TIMESTAMP('2021-06-07 12:58:19.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2561');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', 'f54fc6392255ccf1003612d63b79cc75a3a72cf0431d462faa94f092d5594f6a', '80a15a79e339f28fbad1e453f0baeeb3695a03d5eb30d87faafe66c41fced2c9', TO_TIMESTAMP('2021-06-07 12:58:51.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2562');
INSERT INTO "SIMPANDA"."authorization" VALUES ('81', '0cb02193d8d26c33029eb1e4f75d7c3375da55f4d8422f5746ab8b9c35655544', 'a969bc1737f9fd6f1baa6007d0af013bd9069617d03b230a316a177cf7c89610', TO_TIMESTAMP('2021-06-07 13:11:20.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '2564');
INSERT INTO "SIMPANDA"."authorization" VALUES ('1', '2a1d2d1315a6274a008ae3d8ea9aec0189818ff05bdc7b045b7dd1b3057341a1', '2fbb632aa54132116fde002140504409c407ee02f1e49a216bb8d1d31e8f97e8', TO_TIMESTAMP('2021-06-07 19:23:29.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '1', '2592');

-- ----------------------------
-- Table structure for cabang
-- ----------------------------
DROP TABLE "SIMPANDA"."cabang";
CREATE TABLE "SIMPANDA"."cabang" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) ,
  "almt_cabang" VARCHAR2(120 BYTE) ,
  "cabang_cms" VARCHAR2(120 BYTE) ,
  "no_account_cabang" VARCHAR2(120 BYTE) ,
  "nm_cabang_3digit" VARCHAR2(120 BYTE) ,
  "kd_account_cabang" VARCHAR2(120 BYTE) ,
  "kd_cabang_jai_puspel" VARCHAR2(120 BYTE) ,
  "orgid" VARCHAR2(120 BYTE) ,
  "port_code" VARCHAR2(120 BYTE) ,
  "autospk" VARCHAR2(120 BYTE) ,
  "kd_jenis_pelabuhan" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of cabang
-- ----------------------------
INSERT INTO "SIMPANDA"."cabang" VALUES ('0', 'KANTOR PUSAT', 'KANTOR PUSAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "SIMPANDA"."cabang" VALUES ('1', 'TANJUNG PRIOK', '-----', 'TPK', '2', 'TPK', '010', '21', NULL, 'IDJKT', 'Y', '1');
INSERT INTO "SIMPANDA"."cabang" VALUES ('2', 'SUNDA KELAPA', 'SUNDA KELAPA', 'SKA', '10', 'SKA', '070', '27', NULL, 'IDSKL', 'Y', '1');
INSERT INTO "SIMPANDA"."cabang" VALUES ('3', 'PANJANG', 'Jl', 'PJG', '3', 'PJG', '020', '22', NULL, 'IDPNJ', 'Y', '1');
INSERT INTO "SIMPANDA"."cabang" VALUES ('4', 'PANGKAL BALAM', 'PANGKAL BALAM', 'PBM', '12', 'PBM', '110', '31', '93', 'IDPGX', 'Y', '1');
INSERT INTO "SIMPANDA"."cabang" VALUES ('5', 'PONTIANAK', 'PONTIANAK', 'PTK', '5', 'PTK', '050', '25', '1828', 'IDPNK', 'Y', '2');
INSERT INTO "SIMPANDA"."cabang" VALUES ('6', 'TANJUNG PANDAN', 'TANJUNG PANDAN', 'TGN', '13', 'TGN', '120', '32', NULL, 'IDTJQ', 'Y', '1');
INSERT INTO "SIMPANDA"."cabang" VALUES ('7', 'CIREBON', 'CIREBON', 'CBN', '7', 'CBN', '060', '26', NULL, 'IDCBN', 'Y', '1');
INSERT INTO "SIMPANDA"."cabang" VALUES ('8', 'TANJUNG PRIOK CAR TERMINAL', 'TANJUNG PRIOK CAR TERMINAL', 'IKT_OU', '14', 'IKT', '130', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "SIMPANDA"."cabang" VALUES ('10', 'JAMBI', 'jambi', 'JBI', '9', 'JBI', '100', '30', '2102', 'IDDJB', 'Y', '2');
INSERT INTO "SIMPANDA"."cabang" VALUES ('11', 'BENGKULU', 'BENGKULU', 'BKL', '11', 'BKL', '090', '29', NULL, 'IDBKS', 'Y', '1');
INSERT INTO "SIMPANDA"."cabang" VALUES ('12', 'BANTEN', 'BANTEN', 'BTN', '80', 'BTN', '080', '28', NULL, 'IDBTN', 'Y', '1');
INSERT INTO "SIMPANDA"."cabang" VALUES ('15', 'PALEMBANG', 'palembang', 'PLG', '4', 'PLG', '040', '24', NULL, 'IDPLM', 'Y', '2');
INSERT INTO "SIMPANDA"."cabang" VALUES ('17', 'TELUK BAYUR', 'padang', 'PDG', '6', 'TBS', '030', '23', NULL, 'IDTBR', 'Y', '1');

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE "SIMPANDA"."countries";
CREATE TABLE "SIMPANDA"."countries" (
  "id" NUMBER NOT NULL ,
  "name" VARCHAR2(255 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for dokumen_kapal
-- ----------------------------
DROP TABLE "SIMPANDA"."dokumen_kapal";
CREATE TABLE "SIMPANDA"."dokumen_kapal" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of dokumen_kapal
-- ----------------------------
INSERT INTO "SIMPANDA"."dokumen_kapal" VALUES ('1', 'Valid');
INSERT INTO "SIMPANDA"."dokumen_kapal" VALUES ('2', 'Tidak Valid');
INSERT INTO "SIMPANDA"."dokumen_kapal" VALUES ('3', 'Tidak Ada');

-- ----------------------------
-- Table structure for enable
-- ----------------------------
DROP TABLE "SIMPANDA"."enable";
CREATE TABLE "SIMPANDA"."enable" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of enable
-- ----------------------------
INSERT INTO "SIMPANDA"."enable" VALUES ('0', 'Non Aktif');
INSERT INTO "SIMPANDA"."enable" VALUES ('1', 'Aktif');

-- ----------------------------
-- Table structure for evaluasi_pelimpahan
-- ----------------------------
DROP TABLE "SIMPANDA"."evaluasi_pelimpahan";
CREATE TABLE "SIMPANDA"."evaluasi_pelimpahan" (
  "id" NUMBER(10) NOT NULL ,
  "approval_status_id" NUMBER(10) DEFAULT 0  ,
  "enable" NUMBER(10) DEFAULT 1  ,
  "cabang_id" NUMBER(10) ,
  "bup" VARCHAR2(120 BYTE) ,
  "izin_bup" VARCHAR2(120 BYTE) ,
  "penetapan_perairan_pandu" VARCHAR2(120 BYTE) ,
  "izin_pelimpahan" VARCHAR2(120 BYTE) ,
  "pengawas_pemanduan" VARCHAR2(120 BYTE) ,
  "laporan_bulanan" VARCHAR2(120 BYTE) ,
  "bukti_pembayaran_pnpb" VARCHAR2(120 BYTE) ,
  "sispro" VARCHAR2(120 BYTE) ,
  "tarif_jasa_pandu_tunda" VARCHAR2(120 BYTE) ,
  "data_dukung" VARCHAR2(120 BYTE) ,
  "file_pendukung" VARCHAR2(99 BYTE) ,
  "tanggal_sk" DATE ,
  "file_sk_pelimpahan" VARCHAR2(99 BYTE) ,
  "check_laporan_bulanan" NUMBER(10) ,
  "check_bukti_pembayaran_pnpb" NUMBER(10) ,
  "check_sispro" NUMBER(10) ,
  "check_tarif_jasa_pandu_tunda" NUMBER(10) ,
  "check_data_dukung" NUMBER ,
  "upd_date" DATE 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of evaluasi_pelimpahan
-- ----------------------------
INSERT INTO "SIMPANDA"."evaluasi_pelimpahan" VALUES ('1', '1', '1', '1', 'PT. PELABUHAN INDONESIA II (Persero)', '-', 'KP. 1121 TAHUN 2014', 'KM.22 TAHUN 1990; KM.62 TAHUN 1994', 'KEPALA KSOP KLS III TANJUNG PRIOK', 'laporan bulanan ada', 'PNBP', 'SISPRO ada', 'Tarif ada', 'data dukung tidak ada', 'evaluasi_pelimpahan/1621319546080.pdf', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'evaluasi_pelimpahan/1621319546081.pdf', '1', '1', '1', '1', '0', TO_DATE('2021-05-24 09:18:43', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for investigasi_insiden
-- ----------------------------
DROP TABLE "SIMPANDA"."investigasi_insiden";
CREATE TABLE "SIMPANDA"."investigasi_insiden" (
  "id" NUMBER(10) NOT NULL ,
  "approval_status_id" NUMBER(10) DEFAULT 0  ,
  "enable" NUMBER(10) DEFAULT 1  ,
  "no_report" VARCHAR2(120 BYTE) ,
  "unit_terkait" VARCHAR2(120 BYTE) ,
  "judul_report" VARCHAR2(120 BYTE) ,
  "kronologi_kejadian" VARCHAR2(2000 BYTE) ,
  "temuan_investigasi" VARCHAR2(2000 BYTE) ,
  "bukti_temuan" VARCHAR2(99 BYTE) ,
  "saksi_1" VARCHAR2(120 BYTE) ,
  "saksi_2" VARCHAR2(120 BYTE) ,
  "investigator" VARCHAR2(120 BYTE) ,
  "rincian_kegiatan" VARCHAR2(120 BYTE) ,
  "luka_sakit" VARCHAR2(120 BYTE) ,
  "wujud_cedera" VARCHAR2(120 BYTE) ,
  "bagian_tubuh_cedera" VARCHAR2(120 BYTE) ,
  "mekanisme_cedera" VARCHAR2(120 BYTE) ,
  "kerusakan_alat" VARCHAR2(2000 BYTE) ,
  "uraian_kejadian" VARCHAR2(2000 BYTE) ,
  "analisa_penyebab" VARCHAR2(2000 BYTE) ,
  "peralatan_kelengkapan" VARCHAR2(500 BYTE) ,
  "alat_pelindung_diri" VARCHAR2(500 BYTE) ,
  "perilaku" VARCHAR2(500 BYTE) ,
  "kebersihan_kerapihan" VARCHAR2(120 BYTE) ,
  "peralatan_perlengkapan" VARCHAR2(120 BYTE) ,
  "kemampuan_kondisi_fisik" VARCHAR2(120 BYTE) ,
  "pemeliharaan_perbaikan" VARCHAR2(120 BYTE) ,
  "design" VARCHAR2(120 BYTE) ,
  "tingkat_kemampuan" VARCHAR2(120 BYTE) ,
  "penjagaan" VARCHAR2(120 BYTE) ,
  "tindakan_terkait" VARCHAR2(120 BYTE) ,
  "faktor_utama_insiden" VARCHAR2(120 BYTE) ,
  "rekomendasi_tindakan" VARCHAR2(2000 BYTE) ,
  "pihak_yang_bertanggungjawab" VARCHAR2(2000 BYTE) ,
  "pelaksana" VARCHAR2(2000 BYTE) ,
  "tanggal_pemeriksaan" VARCHAR2(120 BYTE) ,
  "nama" VARCHAR2(120 BYTE) ,
  "jabatan" VARCHAR2(120 BYTE) ,
  "status_investigasi_insiden_id" VARCHAR2(120 BYTE) ,
  "prepard_by" VARCHAR2(120 BYTE) ,
  "prepard_tanggal" DATE ,
  "reviewed_by" VARCHAR2(120 BYTE) ,
  "reviewed_tanggal" DATE ,
  "approved_by" VARCHAR2(120 BYTE) ,
  "approved_tanggal" DATE ,
  "cabang_id" NUMBER(10) ,
  "peralatan_kelengkapan_lainnya" VARCHAR2(255 BYTE) ,
  "alat_pelindung_diri_lainnya" VARCHAR2(255 BYTE) ,
  "perilaku_lainnya" VARCHAR2(255 BYTE) ,
  "kebersihan_kerapihan_lainnya" VARCHAR2(255 BYTE) ,
  "rincian_kegiatan_lainnya" VARCHAR2(255 BYTE) ,
  "peralatan_perlengkapan_lainnya" VARCHAR2(255 BYTE) ,
  "pemeliharaan_perbaikan_lainnya" VARCHAR2(255 BYTE) ,
  "kemampuan_kondisi_fisik_lain" VARCHAR2(255 BYTE) ,
  "kebersihan_kerapihan_lain" VARCHAR2(255 BYTE) ,
  "tingkat_kemampuan_lainnya" VARCHAR2(255 BYTE) ,
  "penjagaan_lainnya" VARCHAR2(255 BYTE) ,
  "tindakan_terkait_lainnya" VARCHAR2(255 BYTE) ,
  "upd_date" DATE ,
  "route_couse" VARCHAR2(255 BYTE) ,
  "bukti_pendukung" VARCHAR2(255 BYTE) ,
  "bukti_pendukung_lainnya" VARCHAR2(255 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of investigasi_insiden
-- ----------------------------
INSERT INTO "SIMPANDA"."investigasi_insiden" VALUES ('2', '0', '1', '231/123/123/123', '123', '123123', '123123', '213123', 'investigasi_insiden/1623061604014.pdf', '12312321', '323123', '123123123', 'Sketsa Kejadian', NULL, '1,', '1,8,', '2,4,', '123123', '123123', '213123123', 'A6,', 'B3,', 'C4,C3,', 'D1,', 'A5,', 'B5,', NULL, NULL, NULL, 'F5,', 'G5,', '123qwe', '123', '123', '123', '02-JUL-21', NULL, NULL, NULL, '123123', TO_DATE('2021-06-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2312321', TO_DATE('2021-06-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '121212', TO_DATE('2021-06-25 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2021-06-07 17:26:44', 'SYYYY-MM-DD HH24:MI:SS'), 'qwe123', '3,', NULL);
INSERT INTO "SIMPANDA"."investigasi_insiden" VALUES ('1', '0', '1', 'TPK/2021/05/3', 'DEPARTEMEN PEMANDUAN DAN PENUNDAAN TANJUNG PRIOK', 'LAPORAN KEJADIAN INSIDEN PETUGAS PANDU ATAS NAMA RIBUT SAMIONO', 'Pada tanggal 07 Februari 2020 pukul Pandu Ribut Samiono selaku pandu Tanjung Pandan, melayani kapal MV. yang akan bersandar di Pelabuhan Tanjung Pandan dari arah tenggara. Motor Pandu sedang posisi docking yang digantikan oleh kapal klotok. Pandu Ribut Samiono naik tangga pandu dengan aman dari kapal klotok, saat proses naik keatas kapal ada dorongan gelombang dari arah belakang kapal dengan tinggi 0,5-1,5 meter dan kecepatangan angin 5-6 knots datang secara bersamaan yang mengakibatkan kaki petugas pandu terantuk badan kapal di area kaki dan  mengalami cedera pada betis, setelah kapal bersandar Pandu Ribut Samiono segera dilarikan ke RS. untuk mendapatkan perawatan.

', 'Motor Pandu sedang dalam proses docking sehingga kapal yang dipakai adalah kapal kayu yang tidak memenuhi standar 
SOP telah dilaksanakan 
Adanya penolakan dari petugas pandu untuk di rawat di rumah sakit
', 'investigasi_insiden/1621318777122.pdf', '1', '2', 'IPC', 'Wawancara', 'Minor Injury', '1,', '1,', '1,', 'tidak ada kerusakan ', 'Uraian Kejadian', 'Analisa Penyebab Kejadian', 'A1,', 'B1,', 'C1,', 'D1,', 'A1,', 'B1,', 'C1,', 'D1,', 'E1,', 'F1,', 'G1,', 'UAT2021', 'Rekomendasi Tindakan Selanjutnya 01
', 'Pihak yang Bertanggung Jawab ', 'IPC Pelindo II', '20-MAY-21', NULL, NULL, NULL, 'UAT1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'UAT2', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'UAT3', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2021-06-07 17:29:46', 'SYYYY-MM-DD HH24:MI:SS'), 'UAT2021', '3,', NULL);

-- ----------------------------
-- Table structure for investigasi_insiden_check
-- ----------------------------
DROP TABLE "SIMPANDA"."investigasi_insiden_check";
CREATE TABLE "SIMPANDA"."investigasi_insiden_check" (
  "id" NUMBER(5) ,
  "kode" VARCHAR2(3 BYTE) ,
  "nama" VARCHAR2(255 BYTE) ,
  "jenis" VARCHAR2(2 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of investigasi_insiden_check
-- ----------------------------
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('1', 'A1', 'Inadequate assessment of needs / Tidak cukup penilaian terhadap kebutuhan', 'a');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('2', 'A2', 'Inadequate human factors or ergonomics considerations / Pertimbangan faktor manusia atau ergonomi yang tidaK cukup baik', 'a');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('3', 'A3', 'Inadequate standards or specifications / Standar atau spesifikasi yang tidak mencukupi', 'a');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('4', 'A4', 'Inadequate repair or maintenance / Perbaikan dan pemeliharaan yang tidak cukup baik', 'a');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('5', 'A5', 'Equipment failure or defect / Gangguan atau kerusakan pada peralatan', 'a');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('6', 'A6', 'Improper use / Penggunaan yang tidak tepat', 'a');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('7', 'A7', 'Other / Lainnya', 'a');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('8', 'B1', 'Improper use PPE / Penggunaan APD tidak tepat', 'b');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('9', 'B2', 'Failure of PPE / Kerusakan APD', 'b');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('10', 'B3', 'Not using PPE / Tidak menggunakan APD', 'b');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('11', 'B4', 'Other / Lainnya', 'b');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('12', 'C1', 'Preoccupation with other tasks or events / Keasyikan dengan pekerjaan atau peristiwa lain', 'c');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('13', 'C2', 'Horse play or taking shortcuts / Mangambil jalan pintas', 'c');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('14', 'C3', 'Overconfidence / Percaya diri berlebhan', 'c');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('15', 'C4', 'Other /  Lainnya', 'c');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('16', 'D1', 'Improper housekeeping / Penataan peralatan dan perlengkapan kerja yang tidak tepat', 'd');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('17', 'D2', 'Improper storage or securing / Penyimpanan dan penjagaan yang tidak tepat', 'd');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('18', 'D3', 'Lack of housekeeping / Kebersihan dan kerapihan yang kurang ', 'd');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('19', 'D4', 'Other /  Lainnya', 'd');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('20', 'A1', 'Lack of procedures /  Kekurangan terhadap prosedur', 'e');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('21', 'A2', 'Use of wrong procedures / Penggunaan prosedur yang salah', 'e');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('22', 'A3', 'Lack of understanding procedures / Kurang pemahaman terhadap prosedur', 'e');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('23', 'A4', 'Inadequate implementation of procedures / Penerapan prosedur yang tidak mencukupi', 'e');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('24', 'A5', 'Lack of communication / Kurang komunikasi', 'e');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('25', 'A6', 'Not following procedures or policy / Tidak menjalankan prosedur dan kebijakan', 'e');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('26', 'A7', 'Other /  Lainnya', 'e');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('27', 'B1', 'Sensory deficiency / Gangguan pada panca indera', 'f');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('28', 'B2', 'Physical disabilities permanent or temporary / Ketidakmampuan fisik secara permanent atau sementara', 'f');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('29', 'B3', 'Inability to sustain body position / Tidak mampu mempertahankan posisi tubuh', 'f');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('30', 'B4', 'Restricted range of body movement / Keterbatasan jarak pergerakan tubuh', 'f');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('31', 'B5', 'Improper body placement or position / Penempatan atau posisi tubuh yang tidak sesuai', 'f');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('32', 'B6', 'Over exertion / Pengerahan tenaga secara berlebihan', 'f');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('33', 'B7', 'Exposure to hazards materials / Terpapar material berbahaya', 'f');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('34', 'B8', 'Lack of personal hygiene / Kebersihan perseorangan yang kurang', 'f');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('35', 'B9', 'Fatigue / Kelelahan atau keletihan', 'f');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('36', 'B10', 'Abuse of medication or drugs and alcohol / Penyalahgunaan obat-obatan dan alkohol', 'f');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('37', 'B11', 'Previous injury or illness / Luka-luka atau sakit yang diderita sebelumnya', 'f');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('38', 'B12', 'Other / Lainnya', 'f');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('39', 'C1', 'Inadequate preventive maintenance / Pemeliharaan pencegahan yang tidak mencukupi', 'g');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('40', 'C2', 'Inadequate corrective maintenance / Pemeliharaan perbaikan yang tidak mencukupi', 'g');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('41', 'C3', 'Inadequate audit, inspection, and monitoring / Audit, inspeksi, dan pemantauan yang tidak mencukupi', 'g');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('42', 'C4', 'Over maintenance / Pemeliharaan yang terlalu berlebihan', 'g');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('43', 'C5', 'Other / Lainnya', 'g');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('44', 'D1', 'Inadequate design / Disain tidak cukup baik', 'h');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('45', 'D2', 'Improperly design / Disain tidak sesuai', 'h');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('46', 'D3', 'Design failure or flaw / Kesalahan disain atau cacat', 'h');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('47', 'D4', 'Other / Lainnya', 'h');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('48', 'E1', 'Inadequate assessment of required skills / Penilaian terhadap kemampuan yang dibutuhkan kurang baik', 'i');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('49', 'E2', 'Inadequate practice or performance off skills / Latihan atau performa keahlian yang tidak mencukupi', 'i');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('50', 'E3', 'Other /  Lainnya', 'i');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('51', 'F1', 'No watch keeping / Tidak dilakukan penjagaan', 'j');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('52', 'F2', 'Inadequate watch keeping / Tidak cukup penjagaan', 'j');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('53', 'F3', 'Improper watch keeping / Penjagaan tidak tepat', 'j');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('54', 'F4', 'Judgmental error / Penilaian yang keliru', 'j');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('55', 'F5', 'Other / Lainnya', 'j');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('56', 'G1', 'Weather / Cuaca', 'k');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('57', 'G2', 'Traffic state / Kondisi lalu lintas', 'k');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('58', 'G3', 'Visibility / Jarak pandang', 'k');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('59', 'G4', 'Actions by non-company personnel / Tindakan yang dilakukan oleh bukan personil perusahaan', 'k');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('60', 'G5', 'Actions by other crew member / Tindakan yang dilakukan oleh pengemudi kendaraan lain', 'k');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('61', 'G6', 'Actions by management / Tindakan Manajemen', 'k');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('62', 'G7', 'Riot, civil unrest /  Kerusuhan', 'k');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('63', 'G8', 'Other / Lainnya', 'k');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('76', 'm1', 'Ankle / Pergelangan Kaki', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('77', 'm2', 'Arm and shoulders / Tangan dan bahu ', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('78', 'm3', 'Ear / Telinga ', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('79', 'm4', 'Eye / Mata ', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('80', 'm5', 'Foot / Kaki ', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('81', 'm6', 'Toe / Jari Kaki', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('82', 'm7', 'Hand / Tangan', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('83', 'm8', 'Finger / Jari tangan', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('84', 'm9', 'Knee / Lutut', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('85', 'm10', 'Wrist / Pergelangan Tangan', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('86', 'm11', 'Leg and Hip / Tungkai Kaki dan Pinggul', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('87', 'm12', 'Back / Punggung', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('88', 'm13', 'Face / Wajah', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('89', 'm14', 'Head / Kepala', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('90', 'm15', 'Internal Organ / Organ dalam Tubuh', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('91', 'm16', 'Mouth / Mulut', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('92', 'm17', 'Other / Lain-lain', 'm');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('93', 'n1', 'Biological Factor / Faktor Biologis            ', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('94', 'n2', 'Caught in / Tergencet      ', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('95', 'n3', 'Contact with chemical / Kontak dengan bahan kimia', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('96', 'n4', 'Extreme Temperature / Temperatur Ekstrim', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('97', 'n5', 'Electricity / Kelistrikan ', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('98', 'n6', 'Fall from height / Jatuh dari ketinggian ', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('99', 'n7', 'Fall from ladder or steps / Jatuh dari tangga', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('100', 'n8', 'Falling into the sea/ Jatuh kelaut', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('101', 'n9', 'Fall or slip at same level / Jatuh tersandung', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('102', 'n10', 'Fire or Explosion / Kebakaran atau ledakan', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('103', 'n11', 'Material Handling / Mengangkat beban', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('104', 'n12', 'Mental stress / Tekanan mental', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('105', 'n13', 'Hit by moving object /  Tertabrak benda bergerak', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('106', 'n14', 'Hit by falling object / Tertimpa benda dari atas', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('107', 'n15', 'Long term contact with noise / Kontak jangka panjang dengan kebisingan', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('108', 'n16', 'Radiation / Radiasi ', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('109', 'n17', 'Extreme or sudden sound / Bunyi yang ekstrim dan tiba-tiba', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('110', 'n18', 'Stings and bites / Sengatan dan gigitan ', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('111', 'n19', 'Other / Lain-lain', 'n');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('112', 'o1', 'Minor Injury', 'o');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('113', 'o2', 'Mayor Injury', 'o');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('114', 'o3', 'Fatality (FAT)', 'o');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('64', 'l1', 'Amputation / Amputasi ', 'l');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('65', 'l2', 'Fractures / Patah Tulang  ¿ Dislocation / Terkilir', 'l');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('66', 'l3', 'Musculoskeletal Disorders / Kejang otot  ', 'l');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('67', 'l4', 'Spinal cords / Syaraf tulang belakang', 'l');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('68', 'l5', 'Open wounds / Luka terbuka', 'l');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('69', 'l6', 'Internal wound / Luka dalam', 'l');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('70', 'l7', 'Contusion or bruise / Luka Memar', 'l');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('71', 'l8', 'Superficial injuries / Luka Lecet', 'l');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('72', 'l9', 'Burn / Luka Bakar ', 'l');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('73', 'l10', 'Foreign object / Kemasukan benda Asing ', 'l');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('74', 'l11', 'Poisoning / Keracunan', 'l');
INSERT INTO "SIMPANDA"."investigasi_insiden_check" VALUES ('75', 'l12', 'Other / Lain-lain', 'l');

-- ----------------------------
-- Table structure for investigasi_insiden_tim
-- ----------------------------
DROP TABLE "SIMPANDA"."investigasi_insiden_tim";
CREATE TABLE "SIMPANDA"."investigasi_insiden_tim" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(250 BYTE) ,
  "jabatan" VARCHAR2(250 BYTE) ,
  "tgl" DATE ,
  "status" VARCHAR2(250 BYTE) ,
  "investigasi_insiden_id" NUMBER(10) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for jenis_cert
-- ----------------------------
DROP TABLE "SIMPANDA"."jenis_cert";
CREATE TABLE "SIMPANDA"."jenis_cert" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) ,
  "remark" VARCHAR2(120 BYTE) ,
  "radio" NUMBER(1) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of jenis_cert
-- ----------------------------
INSERT INTO "SIMPANDA"."jenis_cert" VALUES ('4', 'Buku Pelaut', NULL, NULL);
INSERT INTO "SIMPANDA"."jenis_cert" VALUES ('6', 'Pendidikan', NULL, NULL);
INSERT INTO "SIMPANDA"."jenis_cert" VALUES ('5', 'Sertifikat Kapal', NULL, NULL);
INSERT INTO "SIMPANDA"."jenis_cert" VALUES ('1', 'COC', NULL, NULL);
INSERT INTO "SIMPANDA"."jenis_cert" VALUES ('2', 'COE', NULL, NULL);
INSERT INTO "SIMPANDA"."jenis_cert" VALUES ('3', 'COP', NULL, '1');

-- ----------------------------
-- Table structure for kepemilikan_kapal
-- ----------------------------
DROP TABLE "SIMPANDA"."kepemilikan_kapal";
CREATE TABLE "SIMPANDA"."kepemilikan_kapal" (
  "id" NUMBER(20) NOT NULL ,
  "nama" VARCHAR2(250 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of kepemilikan_kapal
-- ----------------------------
INSERT INTO "SIMPANDA"."kepemilikan_kapal" VALUES ('1', 'Kapal IPC di sewa JAI');
INSERT INTO "SIMPANDA"."kepemilikan_kapal" VALUES ('2', 'Kapal JAI');
INSERT INTO "SIMPANDA"."kepemilikan_kapal" VALUES ('3', 'Kapal Milik');
INSERT INTO "SIMPANDA"."kepemilikan_kapal" VALUES ('4', 'Kapal Swasta di sewa JAI');
INSERT INTO "SIMPANDA"."kepemilikan_kapal" VALUES ('5', 'KSO (Kerja Sama Operasi)');
INSERT INTO "SIMPANDA"."kepemilikan_kapal" VALUES ('6', 'Kapal Swasta di sewa Cabang');

-- ----------------------------
-- Table structure for klas
-- ----------------------------
DROP TABLE "SIMPANDA"."klas";
CREATE TABLE "SIMPANDA"."klas" (
  "id" NUMBER ,
  "nama" VARCHAR2(20 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of klas
-- ----------------------------
INSERT INTO "SIMPANDA"."klas" VALUES ('1', 'BKI');
INSERT INTO "SIMPANDA"."klas" VALUES ('2', 'Non-Class');

-- ----------------------------
-- Table structure for kondisi
-- ----------------------------
DROP TABLE "SIMPANDA"."kondisi";
CREATE TABLE "SIMPANDA"."kondisi" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of kondisi
-- ----------------------------
INSERT INTO "SIMPANDA"."kondisi" VALUES ('1', 'Baik');
INSERT INTO "SIMPANDA"."kondisi" VALUES ('2', 'Rusak');

-- ----------------------------
-- Table structure for kondisi_umum
-- ----------------------------
DROP TABLE "SIMPANDA"."kondisi_umum";
CREATE TABLE "SIMPANDA"."kondisi_umum" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for konstruksi
-- ----------------------------
DROP TABLE "SIMPANDA"."konstruksi";
CREATE TABLE "SIMPANDA"."konstruksi" (
  "id" VARCHAR2(20 BYTE) ,
  "nama" VARCHAR2(20 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of konstruksi
-- ----------------------------
INSERT INTO "SIMPANDA"."konstruksi" VALUES ('1', 'Baja');
INSERT INTO "SIMPANDA"."konstruksi" VALUES ('2', 'Fiber');
INSERT INTO "SIMPANDA"."konstruksi" VALUES ('3', 'Fiberglass');
INSERT INTO "SIMPANDA"."konstruksi" VALUES ('4', 'Alumunium');

-- ----------------------------
-- Table structure for legal
-- ----------------------------
DROP TABLE "SIMPANDA"."legal";
CREATE TABLE "SIMPANDA"."legal" (
  "id" NUMBER(10) NOT NULL ,
  "judul_dokumen" VARCHAR2(100 BYTE) ,
  "no_dokumen" VARCHAR2(100 BYTE) ,
  "tahun_dokumen" VARCHAR2(100 BYTE) ,
  "cabang_id" NUMBER ,
  "enable" NUMBER(10) ,
  "approval_status_id" NUMBER(10) ,
  "upd_date" DATE ,
  "file_dasarhukum" VARCHAR2(255 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for manning
-- ----------------------------
DROP TABLE "SIMPANDA"."manning";
CREATE TABLE "SIMPANDA"."manning" (
  "id" NUMBER ,
  "nama" VARCHAR2(50 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of manning
-- ----------------------------
INSERT INTO "SIMPANDA"."manning" VALUES ('1', 'DUB');
INSERT INTO "SIMPANDA"."manning" VALUES ('2', 'MSM');
INSERT INTO "SIMPANDA"."manning" VALUES ('3', 'MCSI');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE "SIMPANDA"."menu";
CREATE TABLE "SIMPANDA"."menu" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(255 BYTE) ,
  "url" VARCHAR2(255 BYTE) ,
  "parent" VARCHAR2(255 BYTE) ,
  "config" VARCHAR2(255 BYTE) ,
  "icon" VARCHAR2(255 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO "SIMPANDA"."menu" VALUES ('3', 'Pendukung Pandu', '/resource/pendukung-pandu', 'SDM Pemanduan', 'pendukung_pandu', 'resource.png');
INSERT INTO "SIMPANDA"."menu" VALUES ('1', 'Beranda', '/dashboard', 'Beranda', 'beranda', 'dashboard.png');
INSERT INTO "SIMPANDA"."menu" VALUES ('2', 'Pandu', '/resource/pandu', 'SDM Pemanduan', 'pandu', 'resource.png');
INSERT INTO "SIMPANDA"."menu" VALUES ('4', 'Realisasi Pandu', '/resource/realisasi-pandu', 'SDM Pemanduan', 'realisasi_pandu', 'resource.png');
INSERT INTO "SIMPANDA"."menu" VALUES ('5', 'Kapal', '/asset/kapal', 'Sarana & Prasarana Pemanduan', 'asset', 'asset.png');
INSERT INTO "SIMPANDA"."menu" VALUES ('6', 'Stasiun Pandu & Equipment', '/asset/stasiun-pandu-and-equipment', 'Sarana & Prasarana Pemanduan', 'stasiun_pandu_and_equipment', 'asset.png');
INSERT INTO "SIMPANDA"."menu" VALUES ('7', 'Rumah Dinas', '/asset/rumah-dinas', 'Sarana & Prasarana Pemanduan', 'rumah_dinas', 'asset.png');
INSERT INTO "SIMPANDA"."menu" VALUES ('8', 'Realisasi Armada', '/asset/realisasi-armada', 'Sarana & Prasarana Pemanduan', 'realisasi_armada', 'asset.png');
INSERT INTO "SIMPANDA"."menu" VALUES ('9', 'Sarana Bantu Pemanduan', '/inspection/sarana-bantu-pemandu', 'Inspeksi', 'sarana_bantu_pemandu', 'inspection.png');
INSERT INTO "SIMPANDA"."menu" VALUES ('10', 'Pemeriksaan Kapal', '/inspection/pemeriksaan-kapal', 'Inspeksi', 'pemeriksaan_kapal', 'inspection.png');
INSERT INTO "SIMPANDA"."menu" VALUES ('11', 'Investigasi Insiden', '/inspection/investigasi-insiden', 'Inspeksi', 'investigasi_insiden', 'inspection.png');
INSERT INTO "SIMPANDA"."menu" VALUES ('12', 'Evaluasi Pelimpahan', '/inspection/evaluasi-pelimpahan', 'Inspeksi', 'evaluasi_pelimpahan', 'inspection.png');
INSERT INTO "SIMPANDA"."menu" VALUES ('13', 'Daftar Crew', '/report/crew-list', 'Laporan', 'crew_list', 'report.png');
INSERT INTO "SIMPANDA"."menu" VALUES ('14', 'Pelaporan Management', '/report/pelaporan-management', 'Laporan', 'pelaporan_management', 'report.png');
INSERT INTO "SIMPANDA"."menu" VALUES ('15', 'Ketersediaan Pandu & Armada', '/report/pilot-ship-availability', 'Laporan', 'pilot_ship_availability', 'report.png');

-- ----------------------------
-- Table structure for pandu_bandar_laut
-- ----------------------------
DROP TABLE "SIMPANDA"."pandu_bandar_laut";
CREATE TABLE "SIMPANDA"."pandu_bandar_laut" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of pandu_bandar_laut
-- ----------------------------
INSERT INTO "SIMPANDA"."pandu_bandar_laut" VALUES ('1', 'Bandar');
INSERT INTO "SIMPANDA"."pandu_bandar_laut" VALUES ('2', 'Laut');

-- ----------------------------
-- Table structure for pandu_jaga
-- ----------------------------
DROP TABLE "SIMPANDA"."pandu_jaga";
CREATE TABLE "SIMPANDA"."pandu_jaga" (
  "id" NUMBER(10) NOT NULL ,
  "pandu_schedule_id" NUMBER(10) ,
  "personil_id" NUMBER(10) ,
  "keterangan" VARCHAR2(255 BYTE) ,
  "kehadiran" NUMBER(10) ,
  "to" TIMESTAMP(6) ,
  "from" TIMESTAMP(6) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of pandu_jaga
-- ----------------------------
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('79', '2', '7', 'sfasfs', '0', TO_TIMESTAMP('2021-05-17 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-17 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('80', '2', '40', 'fafasf', '0', TO_TIMESTAMP('2021-05-17 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-17 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('81', '2', '279', 'Hadir', '1', TO_TIMESTAMP('2021-05-17 23:59:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-17 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('3', '1', '172', 'Cuti', '0', TO_TIMESTAMP('2021-05-18 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-18 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('4', '1', '302', 'Cuti', '0', TO_TIMESTAMP('2021-05-18 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-18 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('5', '1', '327', 'Cuti', '0', TO_TIMESTAMP('2021-05-18 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-18 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('45', '4', '40', 'Hadir', '0', TO_TIMESTAMP('2021-05-16 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-16 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('46', '4', '279', 'Hadir', '1', TO_TIMESTAMP('2021-05-16 23:59:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-16 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('1', '1', '111', 'Hadir', '1', TO_TIMESTAMP('2021-05-18 14:28:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-18 02:28:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('2', '1', '137', 'Cuti', '0', TO_TIMESTAMP('2021-05-18 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-18 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('44', '4', '7', 'Hadir', '0', TO_TIMESTAMP('2021-05-16 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-16 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('147', '7', '335', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 12:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('148', '7', '336', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 12:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('149', '7', '338', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 12:01:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('150', '7', '339', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 12:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('151', '7', '340', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 03:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 01:31:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('152', '7', '341', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 03:31:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('153', '7', '343', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 03:01:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 01:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('154', '7', '344', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 03:31:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 01:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('155', '7', '346', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 03:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 01:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('156', '7', '347', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 03:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 03:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('157', '7', '349', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:23:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 03:01:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('158', '7', '350', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 01:23:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('159', '7', '359', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 12:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('160', '7', '362', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 03:01:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('161', '7', '363', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 03:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 01:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('162', '7', '364', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 03:01:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('163', '7', '365', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:23:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 12:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('164', '7', '368', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 03:31:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 01:31:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('165', '7', '369', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 23:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 12:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('166', '7', '377', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:01:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 01:23:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('167', '7', '378', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 13:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 12:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('168', '7', '379', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 03:13:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 01:23:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('169', '7', '387', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 03:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 01:13:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('170', '7', '391', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:31:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 03:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('171', '7', '392', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 23:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 03:31:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('172', '7', '395', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:23:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 12:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('173', '7', '396', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 01:31:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('174', '7', '399', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 03:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 01:23:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('175', '7', '400', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 01:23:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('176', '7', '402', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 03:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 01:23:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('177', '7', '411', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 03:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 01:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('178', '7', '415', 'Hadir', '1', TO_TIMESTAMP('2021-07-04 12:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-07-04 03:01:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('179', '6', '336', 'qweqeqweq', '0', TO_TIMESTAMP('2021-05-15 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('180', '6', '338', 'Hadir', '0', TO_TIMESTAMP('2021-05-15 19:10:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 07:10:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('181', '6', '339', 'Hadir', '0', TO_TIMESTAMP('2021-05-15 19:10:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 07:11:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('182', '6', '340', 'Hadirqweqweqweq', '0', TO_TIMESTAMP('2021-05-15 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('183', '6', '341', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 07:13:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 06:10:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('184', '6', '343', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 22:10:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 07:13:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('185', '6', '344', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 12:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 11:11:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('186', '6', '346', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 13:13:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('187', '6', '347', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 11:11:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 11:11:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('188', '6', '349', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 01:13:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('189', '6', '350', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 11:22:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 11:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('190', '6', '359', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 13:13:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 11:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('191', '6', '362', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 13:14:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 13:13:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('192', '6', '363', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 14:25:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 13:04:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('193', '6', '364', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 14:02:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 12:34:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('194', '6', '365', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:11:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('195', '6', '368', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 23:03:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 07:11:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('196', '6', '369', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 23:33:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 11:11:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('197', '6', '377', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 00:13:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:10:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('198', '6', '378', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 13:13:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 11:11:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('199', '6', '379', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('200', '6', '387', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('201', '6', '389', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('202', '6', '391', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('203', '6', '392', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('204', '6', '395', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('205', '6', '396', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('206', '6', '398', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('207', '6', '399', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('208', '6', '400', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('209', '6', '402', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('210', '6', '411', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('211', '6', '415', 'Hadir', '1', TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-15 00:12:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('84', '3', '339', 'Hadir', '1', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('85', '3', '340', 'cuti', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('86', '3', '341', 'Hadir', '1', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('87', '3', '343', 'sakit', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('82', '3', '336', 'sakit', '0', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('83', '3', '338', 'cuti', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('88', '3', '344', 'Hadir', '1', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('89', '3', '346', 'tidaka hadir', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('90', '3', '347', 'Hadir', '1', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('91', '3', '349', 'tidak hadir', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('92', '3', '350', 'Hadir', '1', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('93', '3', '359', 'tidak hadir', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('94', '3', '362', 'Hadir', '1', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('95', '3', '363', 'tidak hadir', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('96', '3', '364', 'Hadir', '1', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('97', '3', '365', 'tidak hadir', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('98', '3', '368', 'Hadir', '1', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('99', '3', '369', 'tidak hadir', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('100', '3', '377', 'Hadir', '1', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('101', '3', '378', 'tidak hadir', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('102', '3', '379', 'Hadir', '1', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('103', '3', '387', 'tidak hadir', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('104', '3', '389', 'Hadir', '1', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('105', '3', '391', 'tidak hadir', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('106', '3', '392', 'Hadir', '1', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('107', '3', '395', 'tidak hadir', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('108', '3', '396', 'Hadir', '1', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('109', '3', '398', 'tidak hadir', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('110', '3', '399', 'Hadir', '1', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('111', '3', '400', 'tidak hadir', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('112', '3', '402', 'Hadir', '1', TO_TIMESTAMP('2021-05-14 15:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 08:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "SIMPANDA"."pandu_jaga" VALUES ('113', '3', '411', 'tidak hadir', '0', TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP('2021-05-14 00:00:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));

-- ----------------------------
-- Table structure for pandu_schedule
-- ----------------------------
DROP TABLE "SIMPANDA"."pandu_schedule";
CREATE TABLE "SIMPANDA"."pandu_schedule" (
  "id" NUMBER(10) NOT NULL ,
  "date" DATE ,
  "cabang_id" NUMBER(10) ,
  "status_absen_id" NUMBER(10) ,
  "keterangan" VARCHAR2(120 BYTE) ,
  "approval_status_id" NUMBER(10) DEFAULT 0  ,
  "enable" NUMBER(10) DEFAULT 1  ,
  "pandu_bandar_laut_id" NUMBER(10) ,
  "pandu_jaga_id" NUMBER(10) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of pandu_schedule
-- ----------------------------
INSERT INTO "SIMPANDA"."pandu_schedule" VALUES ('1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '12', NULL, NULL, '0', '1', NULL, NULL);
INSERT INTO "SIMPANDA"."pandu_schedule" VALUES ('2', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '11', NULL, NULL, '0', '1', NULL, NULL);
INSERT INTO "SIMPANDA"."pandu_schedule" VALUES ('4', TO_DATE('2021-05-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '11', NULL, NULL, '0', '1', NULL, NULL);
INSERT INTO "SIMPANDA"."pandu_schedule" VALUES ('6', TO_DATE('2021-05-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, '0', '1', NULL, NULL);
INSERT INTO "SIMPANDA"."pandu_schedule" VALUES ('5', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '6', NULL, NULL, '0', '1', NULL, NULL);
INSERT INTO "SIMPANDA"."pandu_schedule" VALUES ('7', TO_DATE('2021-07-04 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, '0', '1', NULL, NULL);
INSERT INTO "SIMPANDA"."pandu_schedule" VALUES ('3', TO_DATE('2021-05-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, '0', '1', NULL, NULL);

-- ----------------------------
-- Table structure for pemeriksaan_kapal
-- ----------------------------
DROP TABLE "SIMPANDA"."pemeriksaan_kapal";
CREATE TABLE "SIMPANDA"."pemeriksaan_kapal" (
  "id" NUMBER(10) NOT NULL ,
  "approval_status_id" NUMBER(10) DEFAULT 0  ,
  "enable" NUMBER(10) DEFAULT 1  ,
  "asset_kapal_id" NUMBER(10) ,
  "cabang_id" NUMBER(10) ,
  "upd_date" DATE 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of pemeriksaan_kapal
-- ----------------------------
INSERT INTO "SIMPANDA"."pemeriksaan_kapal" VALUES ('3', '1', '1', '229', '5', TO_DATE('2021-05-19 16:07:07', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."pemeriksaan_kapal" VALUES ('4', '2', '1', '365', '1', TO_DATE('2021-05-24 07:03:29', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."pemeriksaan_kapal" VALUES ('1', '1', '1', '365', '1', TO_DATE('2021-05-18 14:52:09', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."pemeriksaan_kapal" VALUES ('2', '1', '1', '151', '12', TO_DATE('2021-05-19 16:07:15', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for pemeriksaan_kapal_check
-- ----------------------------
DROP TABLE "SIMPANDA"."pemeriksaan_kapal_check";
CREATE TABLE "SIMPANDA"."pemeriksaan_kapal_check" (
  "id" NUMBER(10) NOT NULL ,
  "question" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of pemeriksaan_kapal_check
-- ----------------------------
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check" VALUES ('1', 'Apakah ada navigasi atau peralatan radio VFH yang tidak bisa di operasikan?');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check" VALUES ('2', 'Apakah peralatan radio VHF portable dapat berfungsi dengan baik ?');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check" VALUES ('3', 'Apakah peralatan L.S.A. Dan F.F.A dikelola dengan baik dan dilakukan pengecekan secara berkala?');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check" VALUES ('4', 'Apakah ada bagian mesin yang tidak dapat dioperasikan?');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check" VALUES ('5', 'Apakah Peralatan Kemudi darurat dapat berfungsi dengan baik dan dilakukan pengetesan secara periodik?');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check" VALUES ('6', 'Apakah ada sertifikat kapal yang sudah tidak valid');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check" VALUES ('7', 'Apakah pemeliharaan kapal dan peralatan telah dilakukan sesuai rencana yang telah ditetapkan?');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check" VALUES ('8', 'Apakah ruang akomodasi crew terpelihara kebersihan dan cukup higienis?');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check" VALUES ('9', 'Apakah Muster List terpajang di ruang yang mudah dilihat ?');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check" VALUES ('10', 'Apakah manual pelatihan SOLAS tersedia?');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check" VALUES ('11', 'Apakah sampah sudah dipilah sesuai dengan tempat sampah yang tersedia');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check" VALUES ('12', 'Apakah daftar jaga untuk crew kapal dipasang di tempatnya ?');

-- ----------------------------
-- Table structure for pemeriksaan_kapal_check_data
-- ----------------------------
DROP TABLE "SIMPANDA"."pemeriksaan_kapal_check_data";
CREATE TABLE "SIMPANDA"."pemeriksaan_kapal_check_data" (
  "id" NUMBER(10) NOT NULL ,
  "kondisi_id" VARCHAR2(120 BYTE) ,
  "tanggal_awal" DATE ,
  "tanggal_akhir" DATE ,
  "keterangan" VARCHAR2(120 BYTE) ,
  "pemeriksaan_kapal_id" NUMBER(10) ,
  "pemeriksaan_kapal_check_id" NUMBER(10) ,
  "status" NUMBER(2) ,
  "gambar" VARCHAR2(255 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of pemeriksaan_kapal_check_data
-- ----------------------------
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('3', '1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '1', '3', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('4', '1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '1', '4', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('5', '1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '1', '5', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('6', '1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '6', '1', '6', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('7', '1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '7', '1', '7', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('8', '1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '8', '1', '8', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('9', '1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '9', '1', '9', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('10', '1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '10', '1', '10', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('11', '1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '11', '1', '11', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('12', '1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '12', '1', '12', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('1', '1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1 edit', '1', '1', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('2', '1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '1', '2', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('21', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '9', '2', '9', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('22', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '10', '2', '10', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('23', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '11', '2', '11', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('24', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '12', '2', '12', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('25', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '3', '1', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('26', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '3', '2', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('27', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '3', '3', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('28', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '3', '4', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('29', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '3', '5', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('30', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '6', '3', '6', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('31', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '7', '3', '7', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('32', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '8', '3', '8', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('33', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '9', '3', '9', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('34', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '10', '3', '10', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('35', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '11', '3', '11', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('36', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '12', '3', '12', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('39', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '4', '3', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('40', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '4', '4', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('41', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '4', '5', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('42', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '6', '4', '6', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('43', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '7', '4', '7', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('44', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '8', '4', '8', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('45', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '9', '4', '9', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('46', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '10', '4', '10', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('47', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '11', '4', '11', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('48', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '12', '4', '12', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('37', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '4', '1', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('38', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '4', '2', '0', 'null');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('15', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '2', '3', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('16', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '2', '4', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('17', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '2', '5', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('18', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '6', '2', '6', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('19', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '7', '2', '7', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('20', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '8', '2', '8', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('13', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '1', '0', NULL);
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_check_data" VALUES ('14', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '2', '2', '0', NULL);

-- ----------------------------
-- Table structure for pemeriksaan_kapal_upload
-- ----------------------------
DROP TABLE "SIMPANDA"."pemeriksaan_kapal_upload";
CREATE TABLE "SIMPANDA"."pemeriksaan_kapal_upload" (
  "id" NUMBER NOT NULL ,
  "pemeriksaan_kapal_id" NUMBER ,
  "pemeriksaan_kapal_check_id" NUMBER ,
  "gambar" VARCHAR2(255 BYTE) ,
  "upd_date" DATE ,
  "pemeriksaan_kcd_id" NUMBER ,
  "keterangan" VARCHAR2(500 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of pemeriksaan_kapal_upload
-- ----------------------------
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_upload" VALUES ('1', '1', '11', 'pemeriksaan_kapal/1621313034364.pdf', TO_DATE('2021-05-18 11:43:54', 'SYYYY-MM-DD HH24:MI:SS'), '11', '11');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_upload" VALUES ('2', '1', '12', NULL, TO_DATE('2021-05-18 11:43:54', 'SYYYY-MM-DD HH24:MI:SS'), '12', '12');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_upload" VALUES ('3', '4', '9', 'pemeriksaan_kapal/1621415969301.pdf', TO_DATE('2021-05-19 16:19:29', 'SYYYY-MM-DD HH24:MI:SS'), '45', '9');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_upload" VALUES ('4', '4', '10', 'pemeriksaan_kapal/1621415969599.pdf', TO_DATE('2021-05-19 16:19:29', 'SYYYY-MM-DD HH24:MI:SS'), '46', '10');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_upload" VALUES ('5', '4', '11', 'pemeriksaan_kapal/1621415969868.pdf', TO_DATE('2021-05-19 16:19:30', 'SYYYY-MM-DD HH24:MI:SS'), '47', '11');
INSERT INTO "SIMPANDA"."pemeriksaan_kapal_upload" VALUES ('6', '4', '12', 'pemeriksaan_kapal/1621415970106.pdf', TO_DATE('2021-05-19 16:19:30', 'SYYYY-MM-DD HH24:MI:SS'), '48', '12');

-- ----------------------------
-- Table structure for pemilik_kapal
-- ----------------------------
DROP TABLE "SIMPANDA"."pemilik_kapal";
CREATE TABLE "SIMPANDA"."pemilik_kapal" (
  "id" NUMBER(20) NOT NULL ,
  "nama" VARCHAR2(250 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of pemilik_kapal
-- ----------------------------
INSERT INTO "SIMPANDA"."pemilik_kapal" VALUES ('1', 'Kapal IPC di sewa JAI');
INSERT INTO "SIMPANDA"."pemilik_kapal" VALUES ('2', 'Kapal JAI');
INSERT INTO "SIMPANDA"."pemilik_kapal" VALUES ('3', 'Kapal Milik');
INSERT INTO "SIMPANDA"."pemilik_kapal" VALUES ('4', 'Kapal Swasta di sewa JAI');
INSERT INTO "SIMPANDA"."pemilik_kapal" VALUES ('5', 'KSO (Kerja Sama Operasi)');
INSERT INTO "SIMPANDA"."pemilik_kapal" VALUES ('6', 'Kapal Swasta di sewa Cabang');

-- ----------------------------
-- Table structure for personil
-- ----------------------------
DROP TABLE "SIMPANDA"."personil";
CREATE TABLE "SIMPANDA"."personil" (
  "id" NUMBER(10) NOT NULL ,
  "tipe_personil_id" NUMBER(10) ,
  "approval_status_id" NUMBER(10) ,
  "simop_kd_pers_pandu" VARCHAR2(120 BYTE) ,
  "simop_kd_pers_pandu_cbg" VARCHAR2(120 BYTE) ,
  "enable" NUMBER(10) ,
  "asset_kapal_id" VARCHAR2(120 BYTE) ,
  "nama" VARCHAR2(120 BYTE) ,
  "kelas" VARCHAR2(120 BYTE) ,
  "tempat_lahir" VARCHAR2(120 BYTE) ,
  "tanggal_lahir" DATE ,
  "nipp" VARCHAR2(120 BYTE) ,
  "jabatan" VARCHAR2(120 BYTE) ,
  "status_kepegawaian_id" NUMBER(10) ,
  "cv" VARCHAR2(99 BYTE) ,
  "nomor_sk" VARCHAR2(120 BYTE) ,
  "tanggal_mulai" DATE ,
  "tanggal_selesai" DATE ,
  "sk" VARCHAR2(99 BYTE) ,
  "skpp" VARCHAR2(99 BYTE) ,
  "surat_kesehatan" VARCHAR2(99 BYTE) ,
  "sertifikat_id" NUMBER(10) ,
  "skpp_tanggal_mulai" DATE ,
  "skpp_tanggal_selesai" DATE ,
  "pandu_bandar_laut_id" NUMBER(10) ,
  "agency" VARCHAR2(20 BYTE) ,
  "nomor_hp" VARCHAR2(255 BYTE) ,
  "tugas_cabang_id" NVARCHAR2(120) ,
  "manning" NUMBER(5) ,
  "cabang_id" NUMBER ,
  "skes_tanggal_mulai" DATE ,
  "skes_tanggal_selesai" DATE ,
  "upd_date" DATE ,
  "pendidikan" VARCHAR2(100 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of personil
-- ----------------------------
INSERT INTO "SIMPANDA"."personil" VALUES ('365', '1', '1', '46', NULL, '1', NULL, 'PONIMO', NULL, NULL, NULL, '273108132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-24 11:39:51', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('366', '1', '1', '24', NULL, '0', NULL, 'LUTFI MARTONI', NULL, NULL, NULL, '264096791', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:09', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('367', '1', '1', '25', NULL, '0', NULL, 'TM SILALAHI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:10', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('368', '1', '1', '26', NULL, '1', NULL, 'ANARY BALEMO', NULL, NULL, NULL, '264096791', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:10', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('369', '1', '1', '16', NULL, '1', NULL, 'AHMAD TAUFIK', NULL, 'BEKASI', TO_DATE('2021-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '282118598', 'DGM Pelayanan Kapal', '1', 'personil/1623041848913.msword', '123', TO_DATE('2021-06-04 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1623041848920.msword', 'personil/1623041848929.msword', NULL, NULL, TO_DATE('2021-06-27 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-04 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-06-07 11:58:33', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('370', '1', '1', '29', NULL, '0', NULL, 'ANDI SURATMAN', '09', NULL, NULL, '264026721', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:10', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('371', '1', '1', '17', NULL, '0', NULL, 'G. ARIS WULANTORO', '09', NULL, NULL, '263016288', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-24 11:48:20', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('372', '1', '1', '18', NULL, '0', NULL, 'BENNY PATUITAN', NULL, NULL, NULL, '266056768', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:10', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('373', '1', '1', '19', NULL, '0', NULL, 'YULIUS NURDIN', NULL, NULL, NULL, '274076753', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:10', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('374', '1', '1', '20', NULL, '0', NULL, 'KUNCORO HERLAMBANG', NULL, NULL, NULL, '263026175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:10', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('375', '1', '1', '21', NULL, '0', NULL, 'ISKANDAR ZULKARNAEN', NULL, NULL, NULL, '260046172', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:10', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('376', '1', '1', '36', NULL, '0', NULL, 'Z.UCHE', '09', NULL, NULL, '266026728', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:10', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('377', '1', '1', '22', NULL, '1', NULL, 'CHANDRA WAHYULIS', NULL, NULL, NULL, '264096724', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:10', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('378', '1', '1', '23', NULL, '1', NULL, 'JOKO EDI SAMPURNO', NULL, NULL, NULL, '267056750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:10', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('379', '1', '1', '47', NULL, '1', NULL, 'TOTOK WIDIARTO', NULL, NULL, NULL, '272037058', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('380', '1', '1', '52', NULL, '0', NULL, 'JOHNNY KALOH', '09', NULL, NULL, '254016253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('381', '1', '1', '60', NULL, '0', NULL, 'SOFYAN YUSUF', '09', NULL, NULL, '254076256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('382', '1', '1', '75', NULL, '0', NULL, 'NGUZER DARMADJI', '10', NULL, NULL, '254016252', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('383', '1', '1', '83', NULL, '0', NULL, 'SALIM LANDAU', '10', NULL, NULL, '254076257', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('384', '1', '1', '84', NULL, '0', NULL, 'M. RUSDIN BANDU', '09', NULL, NULL, '255036259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('385', '1', '1', '86', NULL, '0', NULL, 'TM SILALAHI', '09', NULL, NULL, '255066260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('386', '1', '1', '27', NULL, '0', NULL, 'AGUS IRIANTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('387', '1', '1', '28', NULL, '1', NULL, 'NASIR KAMARUDDIN', NULL, NULL, NULL, '270036751', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('388', '1', '1', '31', NULL, '0', NULL, 'H. TJALI', NULL, NULL, NULL, '272016772', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('389', '1', '0', '48', NULL, '1', NULL, 'AGUS KHOLIQ', NULL, 'BEKASI', TO_DATE('2021-06-04 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '271066913', 'DGM Pelayanan Kapal', '1', 'personil/1623041673180.msword', '123', TO_DATE('2021-06-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1623041673189.msword', 'personil/1623041673220.msword', NULL, NULL, TO_DATE('2021-06-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-31 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-06-07 11:54:33', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('390', '1', '1', '40', NULL, '0', NULL, 'BONO MULYANTO', '09', NULL, NULL, '258096279', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('391', '1', '1', '49', NULL, '1', NULL, 'MUHAMAD NURHADI', '11', NULL, NULL, '269126909', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:12', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('392', '1', '1', '50', NULL, '1', NULL, 'MOHAMMAD FIRDAUS', '11', NULL, NULL, '270087021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:12', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('393', '1', '1', '51', NULL, '0', NULL, 'BARINGIN PANGARIBUAN', NULL, NULL, NULL, 'PUJ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:12', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('394', '1', '1', '10', NULL, '0', NULL, 'PURBADI', NULL, NULL, NULL, '263056176', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:12', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('395', '1', '1', '37', NULL, '1', NULL, 'HUSIN IBRAHIM', NULL, NULL, NULL, '265117060', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:12', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('396', '1', '1', '43', NULL, '1', NULL, 'PULUNG SETIADI PRIANGGONO', NULL, NULL, NULL, '274056773', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:12', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('397', '1', '1', '14', NULL, '0', NULL, 'PANTJA PRIJA LEKSANA', NULL, NULL, NULL, '262076174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:12', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('398', '1', '0', '33', NULL, '1', NULL, 'ABDUSSAMADaaaaa', NULL, 'BEKASI', TO_DATE('2021-06-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '276037061', 'DGM Pelayanan Kapal', '1', 'personil/1623032939778.msword', '123', TO_DATE('2021-06-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1623032939788.msword', 'personil/1623032939809.msword', 'personil/1623032939815.msword', NULL, TO_DATE('2021-06-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, NULL, NULL, NULL, '1', TO_DATE('2021-06-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-07 09:29:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('399', '1', '1', '34', NULL, '1', NULL, 'CHRISTIYANTO WIBOWO', NULL, NULL, NULL, '271096915', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:12', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('400', '1', '1', '39', NULL, '1', NULL, 'MOCH. GUNTUR', NULL, NULL, NULL, '275046774', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:12', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('401', '1', '1', '91', NULL, '0', NULL, 'GERARD ARTHUR DUNGUS', NULL, NULL, NULL, '268088823', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:12', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('402', '1', '1', '92', NULL, '1', NULL, 'INDRA GUNAWAN', '09', NULL, NULL, '271117017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:13', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('25', '1', '0', '155', NULL, '1', NULL, 'MULIA SUDARPI', NULL, 'Belawan', TO_DATE('1971-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '271017075', 'Pandu Laut', '1', 'personil/1621222251775.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621222251776.pdf', 'personil/1621222251777.pdf', 'personil/1621222251777.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, NULL, NULL, NULL, '5', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 10:30:52', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('50', '1', '0', 'B73', 'B71', '1', NULL, 'ABDUL RAHIM', '2', 'Polewali', TO_DATE('1960-07-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '000', 'Pandu Bandar', '1', 'personil/1621222318656.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621222318658.jpeg', 'personil/1621222318660.jpeg', 'personil/1621222318661.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '12', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 10:31:59', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('345', '1', '2', '12', NULL, '1', NULL, 'HARUN AL RASYID', NULL, 'Medan', TO_DATE('1965-09-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '265096727', 'Pandu Bandar', '1', 'personil/1621223410392.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621223410392.pdf', 'personil/1621223410392.pdf', 'personil/1621223410393.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '1', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-31 14:33:13', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('257', '1', '0', 'TRI', 'TRI', '1', NULL, 'UCOK TRI SUMADA', '11', 'Sukabumi', TO_DATE('1980-10-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '280108842', 'Pandu Laut', '1', 'personil/1621223495727.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621223495729.jpeg', 'personil/1621223495731.jpeg', 'personil/1621223495747.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, NULL, NULL, NULL, '10', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 10:51:36', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('285', '1', '0', 'FIR', 'FIR', '1', NULL, 'FIRSTIAN ADETYA', '11', 'Jakarta', TO_DATE('1986-01-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '286018846', 'Pandu Laut', '1', 'personil/1621223708446.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621223708448.jpeg', 'personil/1621223708450.jpeg', 'personil/1621223708451.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, NULL, NULL, NULL, '10', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 10:55:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('309', '1', '0', '158', NULL, '1', NULL, 'JACKY SASTRA', NULL, 'JACKY SASTRA', TO_DATE('1976-02-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '276027066', 'Pandu Bandar', '1', 'personil/1621223824709.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621223824709.pdf', 'personil/1621223824710.pdf', 'personil/1621223824710.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '3', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 10:57:05', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('31', '1', '0', '109', NULL, '1', NULL, 'SETYA DWI WAHYUDI', NULL, 'Purwokerto', TO_DATE('1979-10-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '279097203', 'Pandu Laut', '1', 'personil/1621224077175.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621224077180.jpeg', 'personil/1621224077198.jpeg', 'personil/1621224077201.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, NULL, NULL, NULL, '5', TO_DATE('2021-05-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 11:01:17', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('238', '1', '0', '162', NULL, '1', NULL, 'ERWIN HANANTO', '10', 'Semarang', TO_DATE('1971-10-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '271107063', 'Pandu Bandar', '1', 'personil/1621224091777.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621224091781.pdf', 'personil/1621224091800.pdf', 'personil/1621224091801.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '3', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 11:01:32', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('288', '1', '0', '159', NULL, '1', NULL, 'KARDIONO', '10', 'Tegal', TO_DATE('1972-06-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '272067190', 'Pandu Bandar', '1', 'personil/1621224181357.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621224181359.pdf', 'personil/1621224181359.pdf', 'personil/1621224181359.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '3', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 11:03:01', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('41', '1', '1', '111', 'B5', '1', NULL, 'FAISAL', NULL, 'Pekanbaru', TO_DATE('1980-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '277027313', 'Pandu Bandar', '1', 'personil/1621224256717.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621224256720.jpeg', 'personil/1621224256734.jpeg', 'personil/1621224256736.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '5', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 10:55:05', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('21', '1', '0', '77', NULL, '1', NULL, 'CITRA PUJA KUSUMAH', '10', 'JakartaJakarta', TO_DATE('1981-07-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '281077403', 'Pandu Bandar', '1', 'personil/1621224558212.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621224558215.jpeg', 'personil/1621224558232.jpeg', 'personil/1621224558234.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '7', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 11:09:18', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('2', '1', '0', '2', NULL, '1', NULL, 'BURHANUDDIN', NULL, 'Bone', TO_DATE('1975-08-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '275087196', 'Pandu Bandar', '1', 'personil/1621224999161.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621224999164.pdf', 'personil/1621224999167.pdf', 'personil/1621224999171.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', NULL, NULL, NULL, NULL, '15', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 11:16:39', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('255', '1', '0', '1', NULL, '1', NULL, 'OKTEDY GUNAWAN', NULL, 'Dumai', TO_DATE('1974-10-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '274057877', 'Pandu Bandar', '1', 'personil/1621225221564.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621225221568.pdf', 'personil/1621225221588.pdf', NULL, NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '15', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 11:20:22', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('4', '1', '0', '65', NULL, '1', NULL, 'Capt. YUDI ASWANTO', '10', 'Juntinyuat', TO_DATE('1976-07-09 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '276077197', 'Pandu Bandar', '1', 'personil/1621225248842.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621225248844.jpeg', 'personil/1621225248846.jpeg', 'personil/1621225248848.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '7', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 11:20:49', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('1', '1', '1', '5', NULL, '0', NULL, 'THETA WIDAYANTO', NULL, NULL, NULL, 'INAMPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:35', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('3', '1', '1', '108', NULL, '0', NULL, 'OKTEDDY GUNAWAN', NULL, NULL, NULL, '274107202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:16:36', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('5', '1', '1', '155', NULL, '1', NULL, 'HERI PUJIANTO', '10', NULL, NULL, '274066661', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-28 17:16:31', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('6', '1', '1', 'P1.', 'P.1', '0', NULL, 'SAFRUDIN', NULL, NULL, NULL, '263076177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:36', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('7', '1', '1', '97', '97', '1', NULL, 'CAPT. RATNO', '10', NULL, NULL, '277027314', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', NULL, NULL, TO_DATE('2021-05-10 13:16:36', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('8', '1', '1', 'B49', '17', '0', NULL, 'MOHAMMAD ALI MURTOPO', '10', NULL, NULL, '272057018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:36', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('9', '1', '1', '121', '121', '0', NULL, 'SUKARNO', '10', NULL, NULL, '273087192', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:36', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('10', '1', '1', 'HSU', 'P6', '0', NULL, 'HERI SUJONO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:36', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('11', '1', '1', 'P-2', 'P.2', '0', NULL, 'HENDRI LINUR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:36', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('12', '1', '1', 'P-3', 'P.3', '0', NULL, 'HARMEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:36', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('13', '1', '1', 'P-5', 'P.5', '0', NULL, 'HUSDECK RIADINATA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:36', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('14', '1', '1', 'YUS', 'YUS', '1', NULL, 'YUSRIAN', '10', NULL, NULL, '286098847', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:37', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('15', '1', '1', '16', NULL, '1', NULL, 'SABARI WASIO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, TO_DATE('2021-05-10 13:16:37', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('16', '1', '1', '75', '75', '0', NULL, 'Capt. DWI AGUNG S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:37', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('17', '1', '1', '11', '11', '1', NULL, 'DUDY ABDULLAH', NULL, NULL, NULL, '272127199', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:37', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('18', '1', '2', '76', '76', '1', NULL, 'Capt. HERMANSYAH', NULL, 'Pekan baru', TO_DATE('1961-06-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '000', 'Pandu Bandar', '1', 'personil/1621225483845.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621225483847.jpeg', 'personil/1621225483850.jpeg', 'personil/1621225483852.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '7', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 13:44:35', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('19', '1', '0', 'B71', NULL, '1', NULL, 'SUKARNO', '2', 'Sragen', TO_DATE('1973-08-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '273087192', 'Pandu Bandar', '1', 'personil/1621219142322.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, 'personil/1621219142324.jpeg', 'personil/1621219142326.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '12', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 09:39:02', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('20', '1', '0', 'B72', NULL, '1', NULL, 'BAY DAWIE', '2', 'Sukananti', TO_DATE('0075-08-13 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '275087057', 'Pandu Bandar', '1', 'personil/1621219448674.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621219448678.jpeg', 'personil/1621219448696.jpeg', 'personil/1621219448698.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '12', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 09:44:09', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('22', '1', '1', '143', NULL, '1', NULL, 'ARISWANTO', NULL, NULL, NULL, '278048596', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:16:37', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('23', '1', '1', '151', NULL, '1', NULL, 'AVID JAYADI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:16:37', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('24', '1', '0', '154', NULL, '1', NULL, 'DODY SUMANJAYA', NULL, 'Jakarta', TO_DATE('1986-10-25 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '286108848', 'Pandu Laut', '1', 'personil/1621219846453.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, 'personil/1621219846454.pdf', 'personil/1621219846454.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, NULL, NULL, NULL, '5', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 09:50:46', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('26', '1', '1', 'UNT', 'UNT', '0', NULL, 'UNTUNG MURDIYANTO', '10', NULL, NULL, '274097311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:38', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('27', '1', '1', '82', NULL, '1', NULL, 'capt. H. LAODE ALIMANIU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:38', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('28', '1', '1', '159', '159', '1', NULL, 'MENTOR ARIE BOWO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:16:38', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('29', '1', '1', '161', '161', '1', NULL, 'FEMBERIYANTO DWI R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:16:38', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('30', '1', '1', '163', '163', '1', NULL, 'EKO HARYANTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:16:38', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('32', '1', '1', '44', NULL, '0', NULL, 'BAYDAWIE', '10', NULL, NULL, '275087057', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:38', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('33', '1', '1', 'P99', 'P99', '0', NULL, 'test1', '2', NULL, NULL, 'test1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:39', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('34', '1', '1', '153', NULL, '1', NULL, 'INDRA GUNAWAN', '10', NULL, NULL, '271117017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:39', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('35', '1', '1', 'ER', 'P4', '0', NULL, 'ERWIN HANANTO', NULL, NULL, NULL, '271107063', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:39', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('36', '1', '1', 'YOS', 'YOS', '0', NULL, 'YOSIA ABET LAKSANA', '9', NULL, NULL, '274117067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:39', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('37', '1', '1', '66', NULL, '1', NULL, 'Capt. HERWANTONO', '8', NULL, NULL, '264046291', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:39', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('38', '1', '0', '67', NULL, '1', NULL, 'YAN SUHARYANTO', '10', 'Cikedung', TO_DATE('1973-11-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '273116765', 'SPV Pelayanan Kapal', '1', 'personil/1621225168670.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621225168673.jpeg', 'personil/1621225168675.jpeg', 'personil/1621225168708.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', NULL, NULL, NULL, NULL, '7', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 11:19:29', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('40', '1', '1', '96', '96', '1', NULL, 'CAPT. IWAN EFFENDI', '10', NULL, NULL, '278057316', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', NULL, NULL, TO_DATE('2021-05-10 13:16:39', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('42', '1', '1', '112', NULL, '1', NULL, 'HERI SUPRAYITNO', NULL, NULL, NULL, '277027126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:16:39', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('43', '1', '1', 'P-7', 'P.7', '0', NULL, 'WASITO SRI MURYOTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:40', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('44', '1', '1', 'P-8', 'P.8', '0', NULL, 'HERI SUJONO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:40', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('45', '1', '1', '15', NULL, '0', NULL, 'AMIRULLAH ALI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, TO_DATE('2021-05-10 13:16:40', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('46', '1', '1', '12', NULL, '1', NULL, 'DEDEN WAHYU JUMENA', NULL, NULL, NULL, '276037312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:40', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('47', '1', '0', '160', '160', '1', NULL, 'RAHMAT HIDAYAT', '10', 'Medan', TO_DATE('1973-07-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '273077191', 'Pandu Bandar', '1', 'personil/1621224253058.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621224253059.pdf', 'personil/1621224253059.pdf', 'personil/1621224253059.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '3', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 11:04:13', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('48', '1', '1', 'P6', 'P.4', '1', NULL, 'HERI SUJONO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:40', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('49', '1', '1', '141', NULL, '1', NULL, 'ANTON HERYANTO', NULL, NULL, NULL, '287018140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:16:40', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('51', '1', '1', 'P7-', 'P7', '1', NULL, 'MUSTAJAB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:40', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('52', '1', '1', '134', NULL, '1', NULL, 'YUNUS PERMADI', NULL, NULL, NULL, '282017875', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:16:40', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('53', '1', '0', '146', NULL, '1', NULL, 'MUHAMMAD MUSA', NULL, 'Padang Sappa', TO_DATE('1975-07-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '275078594', 'Pandu Laut', '1', 'personil/1621219451143.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621219451144.pdf', 'personil/1621219451144.pdf', 'personil/1621219451144.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, NULL, NULL, NULL, '5', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 09:44:12', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('54', '1', '1', '152', NULL, '1', NULL, 'MARE ALCO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:16:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('55', '1', '1', 'P3', NULL, '0', NULL, 'HARMEN', '10', NULL, NULL, '259074171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('56', '1', '1', 'RW', NULL, '0', NULL, 'RISNO WOON', NULL, NULL, NULL, '262025685', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, TO_DATE('2021-05-10 13:16:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('57', '1', '1', '19', NULL, '0', NULL, 'SAFRUDIN', '09', NULL, NULL, '263076177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('58', '1', '1', '25', '25', '0', NULL, 'WIRASTO', '10', NULL, NULL, '272016772', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('59', '1', '1', '20', '20', '0', NULL, 'MUSARDIN', '9', NULL, NULL, '263126734', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('60', '1', '1', 'SJ', 'SJ', '0', NULL, 'S. JOKO', '8', NULL, NULL, '272047069', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('61', '1', '1', '27', NULL, '0', NULL, 'CHRISTIYANTO WIBOWO', '10', NULL, NULL, '271096915', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('62', '1', '1', '14', NULL, '0', NULL, 'GUNA KRISTANTO', '10', NULL, NULL, '269037020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('63', '1', '1', '26', NULL, '0', NULL, 'ABDUSSAMAD', '10', NULL, NULL, '276037061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('64', '1', '1', '29', NULL, '0', NULL, 'MOCH. GUNTUR', NULL, NULL, NULL, '275046774', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:42', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('65', '1', '1', '33', NULL, '0', NULL, 'WIRASTO KURNIAWAN', NULL, NULL, NULL, '272016772', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:42', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('66', '1', '1', '35', NULL, '0', NULL, 'YAN SUHARYANTO ', NULL, NULL, NULL, '273116765', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:42', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('67', '1', '1', '38', NULL, '0', NULL, 'PULUNG SP', NULL, NULL, NULL, '274056773', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:42', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('68', '1', '1', '34', NULL, '0', NULL, 'MAS AD', NULL, NULL, NULL, '271126803', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:42', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('69', '1', '1', '69', NULL, '0', NULL, 'ANDJAR PANTORO SIDI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:42', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('70', '1', '1', '78', NULL, '0', NULL, 'S.JOKO', NULL, NULL, NULL, '272047069', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:42', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('71', '1', '0', 'B66', 'B66', '1', NULL, 'AGUS DJAPRI', '2', 'Negla', TO_DATE('1948-09-09 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '000', 'Pandu Bandar', '1', 'personil/1621219657428.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621219657431.jpeg', 'personil/1621219657434.jpeg', 'personil/1621219657466.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '12', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 09:47:38', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('72', '1', '1', '68', NULL, '0', NULL, 'Capt. H. TJALI (INAMPA)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:42', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('73', '1', '1', '67', NULL, '0', NULL, 'YAN SUHARYANTO', '10', NULL, NULL, '273116765', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:42', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('74', '1', '1', '71', NULL, '0', NULL, 'UNTUNG MURDIYANTO', '10', NULL, NULL, '274097311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:43', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('75', '1', '1', 'MK7', NULL, '0', NULL, 'MK-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:43', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('76', '1', '1', '80', NULL, '0', NULL, 'HUSDECK RIADINATA', NULL, NULL, NULL, '274127068', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:43', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('77', '1', '1', '76', NULL, '0', NULL, 'JACKY SASTRA', '10', NULL, NULL, '276027066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:43', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('78', '1', '1', '75', NULL, '0', NULL, 'TRISTANTO WIBOWO ', NULL, NULL, NULL, '273077070', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:43', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('79', '1', '1', '74', NULL, '0', NULL, 'HERRY TRI WALUYO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:43', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('80', '1', '1', '66', NULL, '0', NULL, 'Capt. HERWANTONO', '8', NULL, NULL, '264046291', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:43', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('81', '1', '1', '79', NULL, '0', NULL, 'ERWIN HANANTA', NULL, NULL, NULL, '271107063', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:43', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('82', '1', '1', '77', NULL, '0', NULL, 'YOSIA ABET LAKSANA', NULL, NULL, NULL, '274117067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:43', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('83', '1', '1', '45', NULL, '0', NULL, 'AGUSMAN KATOROY', NULL, NULL, NULL, '270087016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:43', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('84', '1', '1', '49', NULL, '0', NULL, 'NYOMAN GUNAWAN-INAMPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:44', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('85', '1', '1', 'B68', 'B68', '0', NULL, 'H. SRI YONO, M.Mar', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:44', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('86', '1', '1', '48', NULL, '0', NULL, 'M.IBRAHIM S.', NULL, NULL, NULL, '268036908', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:44', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('87', '1', '1', '50', NULL, '0', NULL, 'DJASMAN H.S (INAMPA)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:44', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('88', '1', '1', 'AD', 'AD', '0', NULL, 'ARI DWIYANTO', '11', NULL, NULL, '277017405', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:44', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('89', '1', '1', 'HM', NULL, '0', NULL, 'HARMEN', '10', NULL, NULL, '259074171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:44', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('90', '1', '1', '52', NULL, '0', NULL, 'ISNASIHIN', '9', NULL, NULL, '265126180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:44', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('91', '1', '1', 'WD', NULL, '0', NULL, 'WASHADI', '10', NULL, NULL, '258114052', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:45', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('92', '1', '1', 'B47', 'B47', '0', NULL, 'JOKO EDI SAMPURNO', NULL, NULL, NULL, '267056750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:45', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('93', '1', '1', 'NK', NULL, '0', NULL, 'NASIR KAMARUDDIN', '10', NULL, NULL, '270036751', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:45', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('94', '1', '1', 'YN', NULL, '0', NULL, 'YULIUS NURDIN', '10', NULL, NULL, '274076753', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:45', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('95', '1', '1', 'NI', NULL, '0', NULL, 'NUGROHO.IWAN.P', '10', NULL, NULL, '276046914', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:45', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('96', '1', '1', 'B02', NULL, '0', NULL, 'RASATMOKO            ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:45', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('97', '1', '1', 'B01', NULL, '0', NULL, 'A.A TASLIM           ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:45', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('98', '1', '1', 'B03', NULL, '0', NULL, 'SUMANTO              ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:45', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('99', '1', '1', 'B04', NULL, '0', NULL, 'HENTYO BUDI          ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:45', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('100', '1', '1', 'B05', NULL, '0', NULL, 'ISMAIL B.M AKIF      ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:45', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('101', '1', '1', 'B06', NULL, '0', NULL, 'ASIR LASEHA          ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:46', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('102', '1', '1', 'B07', NULL, '0', NULL, 'SAMPARA BATJO        ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:46', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('103', '1', '1', 'B08', NULL, '0', NULL, 'PUJO KUSNANTO        ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:46', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('104', '1', '1', 'B09', NULL, '0', NULL, 'ZAINAL ARIFIN        ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:46', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('105', '1', '1', 'B10', NULL, '0', NULL, 'ATMADJI              ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:46', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('106', '1', '1', 'B11', NULL, '0', NULL, 'AMIRUDDIN            ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:46', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('107', '1', '1', 'B12', NULL, '0', NULL, 'RUDI B TUELA         ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:46', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('108', '1', '1', 'B13', NULL, '0', NULL, 'BENST MONTO          ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:46', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('109', '1', '1', 'B14', NULL, '0', NULL, 'RUSDIN BANDU         ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:46', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('110', '1', '1', 'B15', NULL, '0', NULL, 'TS LUBIS             ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:47', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('111', '1', '1', 'B16', NULL, '1', NULL, 'PRIYO SP             ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:47', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('112', '1', '1', 'B17', NULL, '0', NULL, 'SRIYONO              ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:47', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('113', '1', '1', 'B18', NULL, '0', NULL, 'ZAMRAUMAD            ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:47', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('114', '1', '1', 'B19', NULL, '0', NULL, 'LUTHFI M             ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:47', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('115', '1', '1', 'B20', NULL, '0', NULL, 'TAUHID F             ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:47', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('116', '1', '1', 'B21', NULL, '0', NULL, 'NGUZER DARMADJI      ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:47', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('117', '1', '1', 'B22', NULL, '0', NULL, 'AMRULLAH ALI         ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:47', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('118', '1', '1', 'B23', NULL, '0', NULL, 'SALIM LANDAU         ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:47', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('119', '1', '1', 'B24', NULL, '0', NULL, 'SUHADI               ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:47', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('120', '1', '1', 'B25', NULL, '0', NULL, 'GERARD A.DUNGUS      ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:47', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('121', '1', '1', 'B26', NULL, '0', NULL, 'TOMMY A L TUELA      ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:48', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('122', '1', '1', 'B27', NULL, '0', NULL, 'ISNASIHIN            ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:48', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('123', '1', '1', 'B28', NULL, '0', NULL, 'HARUN AL RASYID      ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:48', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('124', '1', '1', 'B29', NULL, '0', NULL, 'MUSDIR IDRIS         ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:48', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('125', '1', '1', 'B30', NULL, '0', NULL, 'DWIHADI M            ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:48', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('126', '1', '1', 'B31', NULL, '0', NULL, 'RULLY SUPARMAN       ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:48', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('127', '1', '1', 'B32', NULL, '0', NULL, 'ANDY SUBANDIYO       ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:48', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('128', '1', '1', 'B33', NULL, '0', NULL, 'THETA WIDAYANTO      ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:48', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('129', '1', '1', 'B34', NULL, '0', NULL, 'PANTJA PRIJA LEKSANA ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:48', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('130', '1', '1', 'B35', NULL, '0', NULL, 'TEGUH BUDI JATMIKO   ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:48', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('131', '1', '1', 'B36', NULL, '0', NULL, 'MUSARDIN             ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:48', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('132', '1', '1', 'B37', NULL, '0', NULL, 'UMAR HADI            ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:49', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('133', '1', '1', 'B38', NULL, '0', NULL, 'ANDI SURATMAN        ', '2', NULL, NULL, '264026721', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:49', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('134', '1', '1', 'B39', NULL, '0', NULL, 'APRIDIYANTO          ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:49', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('135', '1', '1', 'B40', NULL, '0', NULL, 'G.ARIS WULANTORO     ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:49', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('136', '1', '1', 'B41', NULL, '0', NULL, 'KUNCORO HERLAMBANG   ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:49', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('137', '1', '1', 'B42', NULL, '1', NULL, 'ANDRI SENTYADI       ', '2', NULL, NULL, '267066729', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:49', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('138', '1', '1', 'B43', NULL, '0', NULL, 'ISKANDAR ZULKARNAEN  ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:49', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('139', '1', '1', 'B44', NULL, '0', NULL, 'CHANDRA WAHYULIS     ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:49', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('140', '1', '1', 'B45', NULL, '0', NULL, 'ZULKIFLI             ', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:49', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('141', '1', '1', 'PN', NULL, '0', NULL, 'PONIMO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, TO_DATE('2021-05-10 13:16:49', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('142', '1', '1', 'FI', 'FI', '0', NULL, 'FERDI.H.HARAHAP', '8', NULL, NULL, '272026916', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:49', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('143', '1', '1', 'FL', 'FL', '0', NULL, 'FAIZAL', '10', NULL, NULL, '277027313', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:50', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('144', '1', '1', 'OG', 'OG', '0', NULL, 'OKTEDDY GUNAWAN', '10', NULL, NULL, '274107202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:50', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('145', '1', '1', 'SB', 'SB', '0', NULL, 'SUBAGYO WAGIMAN', '10', NULL, NULL, '277117198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:50', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('146', '1', '1', 'SD', 'SD', '0', NULL, 'SETYA DWI WAHYUDI', '10', NULL, NULL, '279097203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:50', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('147', '1', '1', 'UG', 'UG', '1', NULL, 'UNTUNG.M.', '9', NULL, NULL, '274097311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:50', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('148', '1', '1', 'YD', 'YD', '0', NULL, 'YUDI ASWANTO', '10', NULL, NULL, '276077197', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:50', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('149', '1', '1', '56', NULL, '0', NULL, 'DIDIK SUTRISNO', '10', NULL, NULL, '271017054', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:50', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('150', '1', '1', 'BAH', 'BAH', '0', NULL, 'BAYU ARDEN MAHARDHIKA', '11', NULL, NULL, '282087876', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:50', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('151', '1', '1', 'BW', 'BW', '0', NULL, 'BAYU WIDJAJANTO', '11', NULL, NULL, '274117879', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:50', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('152', '1', '1', 'YC', 'YC', '0', NULL, 'YUNUS COSTANTHINUS', '11', NULL, NULL, '275107880', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:50', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('153', '1', '1', '28', NULL, '0', NULL, 'INDRA JATNIKA', '10', NULL, NULL, '273016793', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:50', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('154', '1', '1', '61', NULL, '0', NULL, 'HARTONO (INAMPA) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:51', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('155', '1', '1', '28', NULL, '0', NULL, 'INDRA JATNIKA', '10', NULL, NULL, '273016793', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:51', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('156', '1', '1', 'SF', 'SF', '0', NULL, 'SYARIFUDDIN', '11', NULL, NULL, '274028133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:51', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('157', '1', '1', 'ST', NULL, '0', NULL, 'SANTOSO', NULL, NULL, NULL, '272106912', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, TO_DATE('2021-05-10 13:16:51', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('158', '1', '1', '57', NULL, '0', NULL, 'ABDUSSAMAD', '10', NULL, NULL, '276037061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:51', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('159', '1', '1', 'P1', 'P.1', '0', NULL, 'CAPT. DITAR ROZANO', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:51', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('160', '1', '1', 'B58', NULL, '0', NULL, 'PULUNG SETIADI PRIANGGONO', '2', NULL, NULL, '274056773', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:51', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('161', '1', '1', 'B59', NULL, '0', NULL, 'NUGROHO IWAN PRASETYANTO', '2', NULL, NULL, '276046914', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:51', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('162', '1', '1', 'B62', 'B62', '0', NULL, 'DWI HADI MARSETYANTO', NULL, NULL, NULL, '269036732', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:51', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('163', '1', '1', '13', '13', '1', NULL, 'ARI DWIYANTO', NULL, NULL, NULL, '277017405', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:51', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('164', '1', '1', 'IN', NULL, '0', NULL, 'IMRON NASUTION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:51', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('165', '1', '1', 'JA', 'JA', '0', NULL, 'JUANDA', '11', NULL, NULL, '280077401', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:52', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('166', '1', '1', '14', '14', '0', NULL, 'GUNA KRISTANTO', '10', NULL, NULL, '269037020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:52', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('167', '1', '1', 'B57', 'B57', '0', NULL, 'NASIR KAMARUDIN', NULL, NULL, NULL, '270036751', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:52', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('168', '1', '1', '120', NULL, '0', NULL, 'HAFIZIN', '10', NULL, NULL, '260075492', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:52', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('169', '1', '1', 'B64', NULL, '0', NULL, 'MULFIAN MUNIR', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:52', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('170', '1', '1', '130', NULL, '0', NULL, 'ADHI WINARTO', '10', NULL, NULL, '267057015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:52', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('171', '1', '1', '106', '106', '0', NULL, 'JACKY SASTRA', NULL, NULL, NULL, '276027066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:16:52', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('172', '1', '1', 'B65', NULL, '1', NULL, 'AMMIRUDIN A', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:52', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('173', '1', '1', '27', NULL, '0', NULL, 'CHRISTIYANTO WIBOWO', '10', NULL, NULL, '271096915', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:52', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('174', '1', '0', '64', NULL, '1', NULL, 'ZULKIFLI', NULL, 'Palembang', TO_DATE('1966-02-25 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '266026728', 'Pandu Bandar', '1', 'personil/1621224646764.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621224646767.pdf', 'personil/1621224646770.pdf', 'personil/1621224646805.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '15', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 11:10:47', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('175', '1', '1', '62', NULL, '0', NULL, 'HERU WIBISONO', '9', NULL, NULL, '269116733', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:53', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('176', '1', '1', 'GK', NULL, '0', NULL, 'GUNA KRISTANTO', NULL, NULL, NULL, '269037020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, TO_DATE('2021-05-10 13:16:53', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('177', '1', '1', '39', NULL, '0', NULL, 'PUJO PUTRANTO', '10', NULL, NULL, '271016917', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:53', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('178', '1', '1', '16', NULL, '1', NULL, 'SABARI WASIO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:53', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('179', '1', '1', '31', NULL, '0', NULL, 'MUHAMAD NURHADI', '10', NULL, NULL, '269126909', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:53', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('180', '1', '1', 'B5', NULL, '0', NULL, 'AGUS IRIANTO', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:53', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('181', '1', '1', '12', NULL, '1', NULL, 'FAOZAN AHMAD', NULL, NULL, NULL, '277027406', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:53', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('182', '1', '1', 'P.1', 'P.1', '0', NULL, 'CAPT. DITAR ROZANO', '7', NULL, NULL, '258106280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:53', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('183', '1', '1', 'P.2', 'P.2', '0', NULL, 'HENDRI LINUR', '9', NULL, NULL, '265056725', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:53', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('184', '1', '1', '82', NULL, '0', NULL, 'INDRA GUNAWAN', NULL, NULL, NULL, '271117017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:53', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('185', '1', '1', '43', NULL, '0', NULL, 'M. FIRDAUS', '10', NULL, NULL, '27087021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:53', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('186', '1', '1', 'P2', NULL, '0', NULL, 'HENDRI LINUR', '9', NULL, NULL, '265056725', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:53', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('187', '1', '1', '21', NULL, '1', NULL, 'HAFIZIN', '9', NULL, NULL, '260075492', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:54', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('188', '1', '1', 'BMX', NULL, '0', NULL, 'KT. BIMA X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:54', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('189', '1', '1', 'MPF', NULL, '0', NULL, 'MPF-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:54', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('190', '1', '1', 'B61', 'B61', '0', NULL, 'APRIDIYANTO', NULL, NULL, NULL, '264046723', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:54', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('191', '1', '1', '59', NULL, '0', NULL, 'NONUNG NOERTJAHJONO', '9', NULL, NULL, '268066532', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:54', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('192', '1', '1', '107', '107', '0', NULL, 'BURHANUDDIN', NULL, NULL, NULL, '275087196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:16:54', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('193', '1', '1', 'P8', NULL, '0', NULL, 'PONIMO', '10', NULL, NULL, '273108132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:54', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('194', '1', '1', 'B46', 'B46', '0', NULL, 'FERRY YANY PESIK', '2', NULL, NULL, '255106262', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:54', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('195', '1', '1', 'HS', 'HS', '0', NULL, 'HERI SUPRAYITNO', '11', NULL, NULL, '277027126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:54', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('196', '1', '1', 'HZ', 'HZ', '0', NULL, 'HUZAIRIN', '12', NULL, NULL, '281057407', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:54', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('197', '1', '1', '32', NULL, '0', NULL, 'CHRISTYANTO WIBOWO', '10', NULL, NULL, '271096915', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:54', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('198', '1', '1', '37', NULL, '0', NULL, 'MUHAMAD ALI MURTOPO', '10', NULL, NULL, '272057018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:55', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('199', '1', '1', '55', NULL, '0', NULL, 'AGUS KHOLIK', '10', NULL, NULL, '271066913', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:55', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('200', '1', '1', '140', '14', '0', NULL, 'WASHADI', '9', NULL, NULL, '25814052', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:55', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('201', '1', '1', 'B4', NULL, '0', NULL, 'ANARY BALEMO', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:55', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('202', '1', '1', 'B52', NULL, '0', NULL, 'HERU WIBISONO', '2', NULL, NULL, '269116733', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:55', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('203', '1', '1', 'P.6', '17', '0', NULL, 'SOFYAN SURI', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:55', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('204', '1', '0', 'B55', NULL, '1', NULL, 'BONO MULYANTO', '2', 'Magelang', TO_DATE('1958-09-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '000', 'Pandu Bandar', '1', 'personil/1621219898913.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621219898915.jpeg', 'personil/1621219898917.jpeg', 'personil/1621219898919.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '12', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 09:51:39', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('205', '1', '1', 'B56', NULL, '0', NULL, 'LUKMAN HAKIM', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:55', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('206', '1', '1', 'P.3', 'P1', '0', NULL, 'HARMEN', '9', NULL, NULL, '259074171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:55', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('207', '1', '1', 'P.4', 'P.4', '0', NULL, 'FERDI H. HARAHAP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:55', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('208', '1', '1', 'B60', 'B60', '0', NULL, 'YAN SUHARYANTO', '2', NULL, NULL, '273116765', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:55', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('209', '1', '1', '10', '10', '0', NULL, 'Heri Suprayitno', '11', NULL, NULL, '277027126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:56', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('210', '1', '1', 'B67', NULL, '0', NULL, 'GUNA KRISTANTO', '2', NULL, NULL, '269037020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:56', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('211', '1', '1', 'DS', '06', '0', NULL, 'DANIEL SEPTYO NUGROHO', '11', NULL, NULL, '285098139', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, TO_DATE('2021-05-10 13:16:56', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('213', '1', '1', 'B48', 'B48', '0', NULL, 'NONUNG NOER TJAHJONO', '2', NULL, NULL, '268066530', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:56', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('214', '1', '1', '54', '07', '0', NULL, 'M.ALI MURTOPO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:56', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('215', '1', '1', 'GK', NULL, '0', NULL, 'GUNA KRISTANTO', NULL, NULL, NULL, '269037020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:56', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('216', '1', '0', 'ARL', 'ARL', '1', NULL, 'ARLY IRWAN', '11', 'Teluk Betung', TO_DATE('1978-10-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '278108597', 'Pandu Laut', '1', 'personil/1621222927802.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621222927804.jpeg', NULL, 'personil/1621222927806.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, NULL, NULL, NULL, '10', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 10:42:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('217', '1', '1', '13', NULL, '1', NULL, 'DEDEN SURYADI', NULL, NULL, NULL, '277047315', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:56', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('218', '1', '1', 'P.7', NULL, '0', NULL, 'PONIMO', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:56', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('219', '1', '1', 'P.8', 'P2', '0', NULL, 'NYOMAN GUNAWAN', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:56', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('220', '1', '1', '24', '24', '0', NULL, 'FERRY HIDAYAT', '10', NULL, NULL, '271016752', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:57', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('221', '1', '1', '105', '105', '0', NULL, 'HERI PUJIANTO', NULL, NULL, NULL, '274066661', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:16:57', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('222', '1', '1', '23', NULL, '0', NULL, 'MOCH GUNTUR', '10', NULL, NULL, '275046774', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:57', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('223', '1', '1', 'P.5', 'P.5', '0', NULL, 'M. IBRAHIM SIMPERE', '10', NULL, NULL, '268036908', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:57', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('224', '1', '1', 'KEP', 'KEP', '0', NULL, 'STASIUN KEPANDUAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:57', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('225', '1', '1', 'SBR', 'SBR', '0', NULL, 'KT. SELAT SIBERUT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:57', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('226', '1', '1', 'MPA', 'MPA', '0', NULL, 'MPA 03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:57', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('227', '1', '1', 'B63', 'B63', '0', NULL, 'M.ZAMROUMAD', NULL, NULL, NULL, '264076289', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:57', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('228', '1', '1', 'P.9', 'P.9', '0', NULL, 'SOFYAN  SURI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:57', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('229', '1', '1', '60', NULL, '0', NULL, 'ERWIN HANANTO', '10', NULL, NULL, '271107065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:57', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('230', '1', '1', '26', NULL, '0', NULL, 'ABDUSSAMAD', '10', NULL, NULL, '276037061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:57', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('231', '1', '1', 'RPM', '06', '0', NULL, 'ROY PRABANDARU M', NULL, NULL, NULL, '274017022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, TO_DATE('2021-05-10 13:16:57', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('232', '1', '1', 'HD', NULL, '0', NULL, 'HUSDECKRIADINATA', NULL, NULL, NULL, '274127068', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, TO_DATE('2021-05-10 13:16:58', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('233', '1', '0', '114', NULL, '1', NULL, 'INDRI HANANTA WICAKSANA', NULL, 'Kendal', TO_DATE('1985-01-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '285017404', 'Pandu Bandar', '1', 'personil/1621219218947.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621219218948.pdf', 'personil/1621219218948.pdf', 'personil/1621219218949.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '5', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 09:40:19', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('234', '1', '1', 'MA', 'MA', '0', NULL, 'MAXS AGUSTO', '11', NULL, NULL, '274088135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:58', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('235', '1', '1', 'DS', 'DS', '0', NULL, 'DANIEL SEPTYO NUGROHO', '11', NULL, NULL, '285098139', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:58', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('236', '1', '1', 'DM', '06', '0', NULL, 'DALMUDI', NULL, NULL, NULL, '279097400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, TO_DATE('2021-05-10 13:16:58', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('237', '1', '1', '81', NULL, '1', NULL, 'CAPT. HANS THOS TINDAGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:58', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('239', '1', '1', '151', NULL, '1', NULL, 'SUBAGIO WAGIMAN', '10', NULL, NULL, '277117198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:58', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('240', '1', '1', '154', NULL, '0', NULL, 'M.FIRDAUS', '10', NULL, NULL, '270087021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:58', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('241', '1', '1', '156', NULL, '1', NULL, 'PONIMO', '10', NULL, NULL, '273108132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:16:58', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('242', '1', '1', 'HR', 'P5', '0', NULL, 'HUSDECK RIADINATA', NULL, NULL, NULL, '274127068', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:58', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('243', '1', '1', 'TR', 'P.7', '0', NULL, 'TRISTANTO', NULL, NULL, NULL, '273077070', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:59', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('244', '1', '1', 'B70', 'B70', '0', NULL, 'ISROFFI HUSNI', '10', NULL, NULL, '276057065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:59', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('245', '1', '1', '12', NULL, '0', NULL, 'FAOZAN AHMAD', NULL, NULL, NULL, '277027406', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, TO_DATE('2021-05-10 13:16:59', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('246', '1', '1', '13', NULL, '0', NULL, 'ARI DWIYANTO', NULL, NULL, NULL, '277017405', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, TO_DATE('2021-05-10 13:16:59', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('247', '1', '1', 'AT', 'AT', '0', NULL, 'AHMAT TAUFIK', '11', NULL, NULL, '282118598', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:59', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('248', '1', '1', '4', NULL, '0', NULL, 'RAHMAT HIDAYAT', '10', NULL, NULL, '273077191', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:16:59', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('249', '1', '1', '71', '71', '0', NULL, 'Capt. UNTUNG MURDIYANTO', '10', NULL, NULL, '274097311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:16:59', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('250', '1', '1', 'B50', '18', '0', NULL, 'ADHI WINARTO', '10', NULL, NULL, '267057015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:16:59', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('251', '1', '1', 'cah', 'cah', '1', NULL, 'APRIL DIAN CAHAYA', '11', NULL, NULL, '1002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:59', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('252', '1', '1', 'P5', 'P.5', '1', NULL, 'WASITO SRI MURYONO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:16:59', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('253', '1', '1', 'her', 'YUDHZ', '1', NULL, 'YUDI HERNAWAN', '11', NULL, NULL, '288068867', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:16:59', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('254', '1', '1', '5', '5', '0', NULL, 'SABARI WASIO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, TO_DATE('2021-05-10 13:16:59', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('256', '1', '0', 'ABU', 'ABU', '1', NULL, 'AGUS BUDIANTO', '11', 'Bondowoso', TO_DATE('1985-08-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '285088845', 'Pandu Laut', '1', 'personil/1621223136287.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621223136290.jpeg', 'personil/1621223136308.jpeg', 'personil/1621223136310.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, NULL, NULL, NULL, '10', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 10:45:36', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('258', '1', '1', 'P7', 'P.6', '1', NULL, 'HERRY TRI WALUYO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:17:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('259', '1', '1', 'P 8', '.8', '1', NULL, 'RAHARJO IMAM SUBEKTI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:17:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('260', '1', '1', '86', NULL, '1', NULL, 'Capt. ENCE MAMAN ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:17:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('261', '1', '1', '78', NULL, '1', NULL, 'Capt. PRASETYO HADI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:17:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('262', '1', '0', '207', NULL, '1', NULL, 'SUBAGIO WAGIMAN', NULL, 'Lahat', TO_DATE('1977-11-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '277117198', 'ADGM Pelayanan Kapal', '1', NULL, '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621224418121.pdf', 'personil/1621224418126.pdf', 'personil/1621224418145.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '15', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 11:24:43', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('263', '1', '1', '142', NULL, '1', NULL, 'RADEN AZIZ MAULANA AKBAR ', NULL, NULL, NULL, '289048141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('264', '1', '1', '144', NULL, '1', NULL, 'PRASETYO PERMONO M.S ', NULL, NULL, NULL, '285058599', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('265', '1', '1', '147', NULL, '1', NULL, 'FAJAR SAMPURNO P.G', NULL, NULL, NULL, '275118595', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('266', '1', '1', '148', NULL, '1', NULL, 'ALFONS TURNIP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:01', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('267', '1', '1', '150', NULL, '1', NULL, 'ANDI SAPUTRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:01', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('268', '1', '1', '153', 'A.9', '1', NULL, 'FANDI A. S', '11', NULL, NULL, '287018849', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:01', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('269', '1', '1', '156', NULL, '1', NULL, 'MOHAMMAD MUNIP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:01', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('270', '1', '1', '64', NULL, '0', NULL, 'ZULKIFLI', NULL, NULL, NULL, '266026728', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:17:01', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('271', '1', '1', '72', '72', '0', NULL, 'Capt. AGUS HANAFI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:17:01', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('272', '1', '0', '113', NULL, '1', NULL, 'NUR FATAH', NULL, 'Semarang', TO_DATE('1981-03-13 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '281037402', 'Pandu Bandar', '1', 'personil/1621219124412.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621219124415.pdf', 'personil/1621219124415.pdf', 'personil/1621219124415.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '5', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 09:38:44', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('273', '1', '1', '122', NULL, '0', NULL, 'HERI SUJONO', '10', NULL, NULL, '273057064', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:17:01', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('274', '1', '1', 'B69', NULL, '0', NULL, 'AGUS KHOLIK', '10', NULL, NULL, '271066913', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:17:01', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('275', '1', '1', 'WS', 'P3', '0', NULL, 'WASITO SRI MURYONO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:17:01', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('276', '1', '1', '69', NULL, '0', NULL, 'ANDJAR PANTORO SIDI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:17:01', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('277', '1', '1', '70', '70', '0', NULL, 'Capt. ARMAN SULISTIONO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:17:02', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('278', '1', '1', '3', NULL, '0', NULL, 'KARDIONO', '10', NULL, NULL, '27267190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:17:02', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('279', '1', '1', '98', '11', '1', NULL, 'CAPT. JUANDA', '10', NULL, NULL, '280077401', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', NULL, NULL, TO_DATE('2021-05-10 13:17:02', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('281', '1', '1', 'P-1', 'P-1', '0', NULL, 'SAFRUDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:17:02', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('282', '1', '1', 'P-4', 'P.3', '1', NULL, 'NYOMAN GUNAWAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:17:02', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('283', '1', '1', 'P-6', 'P.6', '0', NULL, 'ERWIN HANANTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:17:02', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('284', '1', '0', 'AJI', 'AJI', '1', NULL, 'LUKITO AJI', '10', 'Jakarta', TO_DATE('1980-12-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '280127215', 'Pandu Laut', '1', 'personil/1621222999002.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621222999004.jpeg', 'personil/1621222999007.jpeg', 'personil/1621222999027.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, NULL, NULL, NULL, '10', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 10:43:19', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('286', '1', '1', '74', NULL, '0', NULL, 'HERRY TRI WALUYO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:17:02', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('287', '1', '1', '15', NULL, '1', NULL, 'DALMUDI', NULL, NULL, NULL, '279097400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:17:02', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('289', '1', '1', 'TW', 'TW', '0', NULL, 'THETA WIDAYANTO', 'TNO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, TO_DATE('2021-05-10 13:17:03', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('290', '1', '1', '161', '161', '1', NULL, 'HUSDECKRIADINATA', '10', 'Tanjung Pinang', TO_DATE('1974-12-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '274127068', 'Pandu Bandar', '1', 'personil/1621224320379.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621224320380.pdf', 'personil/1621224320380.pdf', 'personil/1621224320380.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '3', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-21 15:11:22', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('291', '1', '1', '79', NULL, '1', NULL, 'Capt. TOMMY A.L TUELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:17:03', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('292', '1', '1', '80', NULL, '0', NULL, 'Capt. DITAR ROZANO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:17:03', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('293', '1', '1', '149', NULL, '1', NULL, 'BAGINDA FERLIK SAUDURAN', NULL, NULL, NULL, '278028839', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:03', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('294', '1', '1', '133', NULL, '1', NULL, 'DENI DERMAWAN', NULL, NULL, NULL, '277107881', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:03', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('295', '1', '0', 'RS', 'RS', '0', NULL, 'RIBUT SAMIONO', 'TNO', 'PALEMBANG', TO_DATE('1957-03-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '123456', 'Pandu Bandar', '2', NULL, '03 / UM /PBS/ V /20', TO_DATE('2019-06-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621302841421.pdf', NULL, NULL, NULL, TO_DATE('2020-09-25 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-09-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '6', TO_DATE('2018-03-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-03-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 08:54:02', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('296', '1', '1', '7', NULL, '0', NULL, ' FERRY YANI PESIK', NULL, NULL, NULL, '266026767', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, TO_DATE('2021-05-10 13:17:03', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('297', '1', '1', 'P1-', 'P1', '1', NULL, 'ARIA ROVINO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:17:03', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('298', '1', '1', '248', '64', '1', NULL, 'CHANDRA WAHYULIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:17:03', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('299', '1', '1', '157', NULL, '1', NULL, 'FERNO SELARI RA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:04', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('300', '1', '1', '84', '84', '1', NULL, 'Capt. BENNY ACHMAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:17:04', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('301', '1', '1', '308', '135', '1', NULL, 'ANTONIUS BAMBANG W', NULL, NULL, NULL, '283057877', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:04', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('302', '1', '1', '287', NULL, '1', NULL, 'HENTYOBUDI H', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:17:04', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('303', '1', '1', 'P2-', 'P2', '1', NULL, 'NYOMAN GUNAWAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:17:04', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('304', '1', '1', 'P5-', 'P5', '1', NULL, 'HERRY TRI WALUYO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:17:04', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('305', '1', '1', 'P3-', 'P3', '1', NULL, 'HERI SUJONO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:17:04', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('306', '1', '1', 'P6-', 'P6', '1', NULL, 'RAHARDJO IMAM SUBEKTI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:17:04', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('307', '1', '1', '247', '62', '1', NULL, 'S A F R U D I N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:17:04', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('308', '1', '1', 'P90', 'P90', '0', NULL, 'Hamba Allah', '4', NULL, NULL, '2929191', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:17:04', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('310', '1', '1', 'wah', 'wah', '1', NULL, 'DEDDY WAHYUDI', '11', NULL, NULL, '1003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:17:05', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('311', '1', '1', '165', '165', '1', NULL, 'EKO ARI HANDOKO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:05', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('312', '1', '1', '14', '14', '1', NULL, 'YOSO PRAWIRO', NULL, NULL, NULL, '278077545', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, TO_DATE('2021-05-10 13:17:05', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('313', '1', '1', '4', '4', '0', NULL, 'AMIRULLAH ALI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, TO_DATE('2021-05-10 13:17:05', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('314', '1', '1', '327', '177', '1', NULL, 'BAYU WIDJAYANTO', NULL, NULL, NULL, '274117879', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:05', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('315', '1', '1', '1', '1', '1', NULL, 'FAOZAN AHMAD', '10', NULL, NULL, '277027406', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, TO_DATE('2021-05-10 13:17:05', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('316', '1', '1', '2', '2', '1', NULL, 'ARI DWIYANTO', '10', NULL, NULL, '277017405', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, TO_DATE('2021-05-10 13:17:05', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('317', '1', '1', 'NAN', 'NAN', '1', NULL, 'RIDO NANTONGGA', '11', NULL, NULL, '1001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:17:05', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('318', '1', '1', 'P08', 'P.8', '1', NULL, 'MUSTAJAB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:17:05', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('319', '1', '1', 'jef', 'JEKA', '1', NULL, 'JEFRY KASDI', '11', NULL, NULL, '286018862', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:17:05', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('320', '1', '1', 'har', 'har', '1', NULL, 'RUDY HARYONO', '11', NULL, NULL, '1006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:17:05', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('321', '1', '1', 'kun', 'kun', '1', NULL, 'LILIK KUNCORO', '11', NULL, NULL, '1008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:17:05', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('322', '1', '1', '83', '83', '0', NULL, 'JAROT KONGO SRIWIHARDONO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:17:06', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('324', '1', '1', '160', '160', '1', NULL, 'TEXAS FIRMANSYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:06', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('325', '1', '1', '85', '85', '1', NULL, 'Capt. ASMURI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, TO_DATE('2021-05-10 13:17:06', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('326', '1', '1', 'P4-', 'P4', '1', NULL, 'WASITO SRI MURYONO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', NULL, NULL, TO_DATE('2021-05-10 13:17:06', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('327', '1', '1', '187', 'B75', '1', NULL, 'YULIUS NURDIN', '2', NULL, NULL, '274076753', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, TO_DATE('2021-05-10 13:17:06', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('328', '1', '1', '164', '164', '1', NULL, 'ANGGARA INDRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:06', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('329', '1', '1', 'nap', 'nap', '1', NULL, 'PAUL NELTON NAPITUPULU', '11', NULL, NULL, '1007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:17:06', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('330', '1', '1', '162', '162', '1', NULL, 'M. ROEM ZAENAL A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:06', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('331', '1', '1', '166', '166', '1', NULL, 'YB. RUDDY WIDYANTMOKO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:06', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('332', '1', '1', '158', '158', '1', NULL, 'YUDHI IRMANSYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, TO_DATE('2021-05-10 13:17:06', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('333', '1', '1', '267', '63', '1', NULL, 'M U S A R D I N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, TO_DATE('2021-05-10 13:17:07', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('334', '1', '1', '96', NULL, '0', NULL, 'SUBAGIO WAGIMAN', '10', NULL, NULL, '277117198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:07', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('335', '1', '1', '98', NULL, '1', NULL, 'DIDIK SUTRISNO', '09', 'NGANJUK', TO_DATE('1971-01-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '271017054', 'ADGM Pelayanan Kapal', '1', 'personil/1621223043009.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621223043009.pdf', 'personil/1621223043009.pdf', 'personil/1621223043011.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '1', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-31 14:31:48', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('336', '1', '1', '99', NULL, '1', NULL, 'DEDEN SURYADI', NULL, NULL, NULL, '277047315', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:07', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('337', '1', '0', '97', NULL, '1', NULL, 'TEDDY GUNAWAN', '07', 'Cimahi / Bandung', TO_DATE('1969-06-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '269066770', 'DGM Pelayanan Kapal', '1', 'personil/1621222824885.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, 'personil/1621222824886.pdf', 'personil/1621222824886.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '1', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 10:40:25', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('338', '1', '1', '93', NULL, '1', NULL, 'MOHAMAD ALI MURTOPO', '09', NULL, NULL, '272057018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:07', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('339', '1', '1', '94', NULL, '1', NULL, 'HERI PUJIANTO', '10', NULL, NULL, '274066661', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-28 17:22:50', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('340', '1', '1', '95', NULL, '1', NULL, 'ISROFFI HUSNI', '10', NULL, NULL, '276057065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:07', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('341', '1', '1', '87', NULL, '1', NULL, 'PRASETYO PERMONO MUKHTI S', NULL, NULL, NULL, '285058599', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:07', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('342', '1', '1', '36', NULL, '0', NULL, 'FERDI HAMONANGAN HARAHAP', NULL, NULL, NULL, '272026916', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:07', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('343', '1', '1', '38', NULL, '1', NULL, 'INDRA JATNIKA', NULL, NULL, NULL, '273016793', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:07', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('344', '1', '1', '41', NULL, '1', NULL, 'M.IBRAHIM SIMPERE', NULL, NULL, NULL, '268036908', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('346', '1', '1', '40', NULL, '1', NULL, 'MASAD', NULL, NULL, NULL, '271126803', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('347', '1', '1', '42', NULL, '1', NULL, 'NONUNG NOERTJAHJONO', NULL, NULL, NULL, '268066532', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('348', '1', '1', '87', NULL, '0', NULL, 'AGUS KHOLIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, TO_DATE('2021-05-10 13:17:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('349', '1', '1', '35', NULL, '1', NULL, 'FERRY HIDAYAT', NULL, NULL, NULL, '271016752', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('350', '1', '1', '29', NULL, '1', NULL, 'WIRASTO KURNIAWAN', NULL, NULL, NULL, '263016748', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('351', '1', '1', '41', NULL, '0', NULL, 'HERU WIBISONO', '09', NULL, NULL, '269116733', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('352', '1', '1', '89', NULL, '0', NULL, 'RIBUT SAMIONO', '09', NULL, NULL, '257036269', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('353', '1', '1', '30', NULL, '0', NULL, 'PRASETYO HADI', NULL, NULL, NULL, '270036751', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('354', '1', '1', '90', NULL, '0', NULL, 'HERWANTONO', '08', NULL, NULL, '264046291', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('355', '1', '1', '03', NULL, '0', NULL, 'RIBUT SAMIONO', '09', NULL, NULL, '257036269', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('356', '1', '1', '05', NULL, '0', NULL, 'PUJO KUSNANTO', NULL, NULL, NULL, '260076283', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:09', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('357', '1', '0', '07', NULL, '1', NULL, 'MAHYADI', NULL, 'Pontianak', TO_DATE('1966-07-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '266076181', 'Pandu Bandar', '1', 'personil/1621223267348.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621223267349.pdf', 'personil/1621223267349.pdf', 'personil/1621223267349.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '1', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 10:47:48', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('358', '1', '1', '10', NULL, '0', NULL, 'PRASETYO HADI', '09', NULL, NULL, '258086278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:09', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('359', '1', '1', '11', NULL, '1', NULL, 'YUNUS CONSTANTHINUS', NULL, NULL, NULL, '275107880', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:09', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('360', '1', '1', '12', NULL, '0', NULL, 'AMRULLAH ALI', '09', NULL, NULL, '257126273', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:09', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('361', '1', '0', '13', NULL, '1', NULL, 'DWI HADI MARSETYANTO', NULL, 'Klaten', TO_DATE('1969-03-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '269036732', 'Pandu Bandar', '1', 'personil/1621223517487.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621223517488.pdf', 'personil/1621223517488.pdf', 'personil/1621223517488.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '1', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 10:51:57', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('362', '1', '1', '15', NULL, '1', NULL, 'TEGUH BUDI JATMIKO', NULL, NULL, NULL, '268025871', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:09', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('363', '1', '1', '44', NULL, '1', NULL, 'MUKSIN', NULL, NULL, NULL, '275087056', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:09', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('364', '1', '1', '45', NULL, '1', NULL, 'GUNA KRISTIANTO', NULL, NULL, NULL, '269037020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-10 13:17:09', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('412', '4', '0', '278', NULL, '1', '319', 'ANDRIANSYAH T', NULL, 'Jakarta', TO_DATE('1977-02-12 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '117910099', 'Master', NULL, NULL, '123', TO_DATE('2021-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-31 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621235315256.pdf', NULL, 'personil/1621235315256.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '2', '1', TO_DATE('2021-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-28 17:27:15', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('421', '1', '0', NULL, NULL, '1', NULL, 'UAT2022', NULL, 'n/a', TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '123456780', 'DGM Pelayanan Kapal', '1', 'personil/1621588292811.pdf', '0001', TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621588292820.pdf', 'personil/1621588292826.pdf', NULL, NULL, TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-24 13:37:31', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('212', '1', '0', 'HB', NULL, '1', NULL, 'HAPPY SUNGGIHARTO', NULL, 'PURWOREJO', TO_DATE('1978-05-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '269076679', 'Pandu Bandar', '1', NULL, 'KP.10.02/19/4/1/MTA/SDU/PI.II-21', TO_DATE('2021-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, 'personil/1621305175195.pdf', NULL, TO_DATE('2021-04-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-06-25 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '6', TO_DATE('2021-01-09 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-09 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 09:32:55', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('415', '1', '1', '282', NULL, '1', NULL, 'UAT2022', NULL, 'Bandung', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '123456789', 'ADGM Pelayanan Kapal', '1', 'personil/1621398301386.pdf', '12355', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621398301388.pdf', 'personil/1621398301388.pdf', 'personil/1621398301389.pdf', NULL, TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-20 11:03:24', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('417', '1', '1', '586', NULL, '1', NULL, 'UAT2022PanduLaut', NULL, 'JAKARTA', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '123456789', 'Pandu Laut', '1', 'personil/1621399345611.pdf', '123', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621399345612.pdf', 'personil/1621399345613.pdf', 'personil/1621399345613.pdf', NULL, TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, NULL, NULL, NULL, '5', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 13:12:30', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('280', '1', '1', '6', NULL, '1', NULL, 'DIDIK TRIWAHYUDI', NULL, 'Sidoharjo', TO_DATE('1974-10-25 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '274107201', 'Pandu Bandar', '1', 'personil/1621225423901.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621225423904.pdf', 'personil/1621225423923.pdf', 'personil/1621225423926.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '15', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-31 14:32:31', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('404', '2', '0', NULL, NULL, '1', '201', 'EKO ROSDIANTO', NULL, 'NA', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '117710350', 'Chief Engineer', NULL, NULL, '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621227471958.jpeg', NULL, 'personil/1621227471961.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '2', '7', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 11:57:52', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('405', '2', '0', NULL, NULL, '1', '41', 'SADI PRASTYO', NULL, 'n/a', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '117710680', 'Master', NULL, NULL, '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621227834394.pdf', NULL, 'personil/1621227834399.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '2', '15', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 12:03:54', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('406', '2', '2', NULL, NULL, '1', '41', 'RAMA DHIAN ARIEF', NULL, 'n/a', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '118010693', 'Chief Engineer', NULL, NULL, '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621227968110.pdf', NULL, 'personil/1621227968115.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '2', '15', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-21 10:15:49', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('407', '2', '0', NULL, NULL, '1', '142', 'RUDY HENDYARTONO WINARSO', NULL, 'NA', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '276036855', 'Master', NULL, NULL, '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621227970987.jpeg', NULL, 'personil/1621227970989.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '2', '11', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 12:06:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('408', '2', '0', NULL, NULL, '1', '142', 'HERRI GUNAWAN', NULL, 'NA', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '117710492', 'Chief Engineer', NULL, NULL, '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621228039801.jpeg', NULL, 'personil/1621228039804.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '2', '11', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 12:07:20', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('409', '2', '1', '279', NULL, '1', '365', 'SUHARTO', NULL, 'n/a', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '267015788', 'Master', NULL, NULL, '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621232275882.pdf', NULL, 'personil/1621232275885.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '2', '1', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 15:43:43', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('410', '4', '1', '281', NULL, '1', '319', 'NOVALDIaaa', NULL, 'n/a', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '274116126', 'Chief Engineer', NULL, NULL, '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621232535616.pdf', NULL, 'personil/1621232535621.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '2', '1', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-07 12:00:53', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('411', '1', '1', NULL, NULL, '1', NULL, 'DIDIK SUTRISNO', NULL, 'NGANJUK', TO_DATE('1971-01-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2710170549', 'ADGM Pelayanan Kapal', '1', 'personil/1621233108980.pdf', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621233108981.pdf', 'personil/1621233108982.pdf', 'personil/1621233108982.pdf', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '1', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 13:43:23', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('420', '4', '0', NULL, NULL, '1', '71', 'NOVALDI', NULL, 'Jakarta', TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '274116126', 'Chief Engineer', NULL, NULL, '000', TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621585084415.pdf', NULL, 'personil/1621585084420.pdf', NULL, TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '3', '1', TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-21 15:18:04', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('323', '1', '2', '227', 'LH', '1', NULL, 'LUKMAN HAKIM', 'TNO', 'Gaung', TO_DATE('1959-06-12 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '123456', 'Pandu Bandar', '2', NULL, '03 / UM /PBS/ V /20', TO_DATE('2020-08-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621301884796.pdf', NULL, 'personil/1621301884805.pdf', NULL, TO_DATE('2020-09-25 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-09-25 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '6', TO_DATE('2020-11-13 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-11-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 14:09:28', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('413', '2', '1', '280', NULL, '1', '365', 'Wahyu Widodo', NULL, 'Jakarta', TO_DATE('1986-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '271025790', 'Chief Engineer', NULL, NULL, '65v7b6r6r7vbn', TO_DATE('2020-11-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-11-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621311204279.pdf', NULL, 'personil/1621311204282.pdf', NULL, TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '1', '1', TO_DATE('2021-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 15:43:35', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('414', '3', '0', NULL, NULL, '1', '185', 'IRFAN', NULL, 'PADANG', TO_DATE('1977-06-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '123456', 'Master', NULL, NULL, '12344/444/444', TO_DATE('2018-06-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-06-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621326172981.pdf', NULL, 'personil/1621326172994.pdf', NULL, TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '2', '6', TO_DATE('2020-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-18 15:22:53', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('418', '1', '1', '587', NULL, '1', NULL, 'UAT2022PanduLaut', NULL, 'JAKARTA', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '123456789', 'Pandu Laut', '1', 'personil/1621418162765.pdf', '123', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621418162768.pdf', 'personil/1621418162768.pdf', 'personil/1621418162768.pdf', NULL, TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, NULL, NULL, NULL, '5', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 16:56:34', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('419', '6', '0', NULL, NULL, '1', NULL, 'TEST UAT 2021', NULL, 'JAKARTA', TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '274116126', NULL, NULL, NULL, '000', TO_DATE('2021-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621585078383.vnd.openxmlformats-officedocument.spreadsheetml.sheet', NULL, NULL, NULL, TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-05-24 19:34:57', 'SYYYY-MM-DD HH24:MI:SS'), 'D3/D4');
INSERT INTO "SIMPANDA"."personil" VALUES ('422', '1', '0', NULL, NULL, '1', NULL, 'test01', NULL, 'jakarta', TO_DATE('2021-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '010101', 'Pandu Laut', '1', 'personil/1623054640816.jpeg', 'sk010101', TO_DATE('2021-06-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1623054640820.jpeg', 'personil/1623054640820.jpeg', NULL, NULL, TO_DATE('2021-06-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, NULL, NULL, NULL, '1', NULL, NULL, TO_DATE('2021-06-07 15:30:42', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('39', '1', '0', '68', NULL, '1', NULL, 'Capt. H. TJALI (INAMPA)', NULL, 'Cirebon', TO_DATE('1958-05-27 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '000', 'Pandu Bandar', '1', 'personil/1621225338360.jpeg', '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'personil/1621225338362.jpeg', 'personil/1621225338364.jpeg', 'personil/1621225338366.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '7', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 11:22:19', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('403', '2', '1', '584', NULL, '1', '201', 'DASI JAPRI ANTONI', NULL, 'NA', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '118310349', 'Master', NULL, NULL, '000', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621227333727.jpeg', NULL, 'personil/1621227333732.jpeg', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, '2', '7', TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 08:21:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "SIMPANDA"."personil" VALUES ('416', '1', '1', '585', NULL, '1', NULL, 'UAT2022PanduBandar', NULL, 'JAKARTA', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '123456789', 'Pandu Bandar', '1', 'personil/1621398803523.pdf', '123', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621398803524.pdf', 'personil/1621398803525.pdf', 'personil/1621398803525.pdf', NULL, TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, '5', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-19 13:08:15', 'SYYYY-MM-DD HH24:MI:SS'), NULL);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE "SIMPANDA"."role";
CREATE TABLE "SIMPANDA"."role" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO "SIMPANDA"."role" VALUES ('1', 'Pusat');
INSERT INTO "SIMPANDA"."role" VALUES ('2', 'Cabang');
INSERT INTO "SIMPANDA"."role" VALUES ('3', 'SDM');

-- ----------------------------
-- Table structure for sarana_bantu_pemandu
-- ----------------------------
DROP TABLE "SIMPANDA"."sarana_bantu_pemandu";
CREATE TABLE "SIMPANDA"."sarana_bantu_pemandu" (
  "id" NUMBER(10) NOT NULL ,
  "approval_status_id" NUMBER(10) DEFAULT 0  ,
  "cabang_id" NUMBER(10) ,
  "tanggal_pemeriksaan" DATE ,
  "pelaksana" VARCHAR2(120 BYTE) ,
  "nama" VARCHAR2(255 BYTE) ,
  "tipe_asset_id" NUMBER ,
  "jabatan" VARCHAR2(255 BYTE) ,
  "asset_kapal_id" NUMBER ,
  "status_ijazah_id" NUMBER ,
  "sarana_bantu_pemandu_personil" VARCHAR2(255 BYTE) ,
  "personil_id" NUMBER ,
  "keterangan_sarana" VARCHAR2(1000 BYTE) ,
  "upd_date" DATE ,
  "personil_id_kkm" NUMBER ,
  "kkm_jabatan" VARCHAR2(255 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of sarana_bantu_pemandu
-- ----------------------------
INSERT INTO "SIMPANDA"."sarana_bantu_pemandu" VALUES ('3', '1', '1', TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'PT Pelabuhan Indonesia II (Persero) Tanjung Priok', NULL, '3', 'Master', '319', '1', NULL, '412', NULL, TO_DATE('2021-05-24 06:29:48', 'SYYYY-MM-DD HH24:MI:SS'), '410', 'Chief Engineer');
INSERT INTO "SIMPANDA"."sarana_bantu_pemandu" VALUES ('1', '1', '1', TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'UAT2021 ', NULL, '1', 'Master', '327', '1', NULL, '413', NULL, TO_DATE('2021-05-18 14:44:22', 'SYYYY-MM-DD HH24:MI:SS'), '410', 'Chief Engineer');
INSERT INTO "SIMPANDA"."sarana_bantu_pemandu" VALUES ('2', '2', '1', TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'UAT20212', NULL, '1', 'Master', '365', '2', NULL, '409', NULL, TO_DATE('2021-05-24 06:32:41', 'SYYYY-MM-DD HH24:MI:SS'), '413', 'Chief Engineer');

-- ----------------------------
-- Table structure for sarana_bantu_pemandu_kapal
-- ----------------------------
DROP TABLE "SIMPANDA"."sarana_bantu_pemandu_kapal";
CREATE TABLE "SIMPANDA"."sarana_bantu_pemandu_kapal" (
  "id" NUMBER(10) NOT NULL ,
  "sarana_bantu_pemandu_id" NUMBER(10) ,
  "tipe_sarana_pemandu_kapal_id" VARCHAR2(120 BYTE) ,
  "dokumen_kapal_q1" VARCHAR2(120 BYTE) ,
  "dokumen_kapal_q2" VARCHAR2(120 BYTE) ,
  "dokumen_kapal_q3" VARCHAR2(120 BYTE) ,
  "dokumen_kapal_q4" VARCHAR2(120 BYTE) ,
  "dokumen_kapal_q5" VARCHAR2(120 BYTE) ,
  "dokumen_kapal_q6" VARCHAR2(120 BYTE) ,
  "dokumen_kapal_q7" VARCHAR2(120 BYTE) ,
  "dokumen_kapal_q8" VARCHAR2(120 BYTE) ,
  "dokumen_kapal_q9" VARCHAR2(120 BYTE) ,
  "dokumen_kapal_q10" VARCHAR2(120 BYTE) ,
  "dokumen_kapal_q11" VARCHAR2(120 BYTE) ,
  "dokumen_kapal_q12" VARCHAR2(120 BYTE) ,
  "dokumen_kapal_q13" VARCHAR2(120 BYTE) ,
  "dokumen_kapal_q14" VARCHAR2(120 BYTE) ,
  "dokumen_kapal_q15" VARCHAR2(120 BYTE) ,
  "kondisi_umum_q1" VARCHAR2(120 BYTE) ,
  "kondisi_umum_q2" VARCHAR2(120 BYTE) ,
  "kondisi_umum_q3" VARCHAR2(120 BYTE) ,
  "kondisi_umum_q4" VARCHAR2(120 BYTE) ,
  "kondisi_umum_q5" VARCHAR2(120 BYTE) ,
  "kondisi_umum_q6" VARCHAR2(120 BYTE) ,
  "pemeriksaan_performa_q1" VARCHAR2(120 BYTE) ,
  "pemeriksaan_performa_q2" VARCHAR2(120 BYTE) ,
  "pemeriksaan_performa_q3" VARCHAR2(120 BYTE) ,
  "pemeriksaan_performa_q4" VARCHAR2(120 BYTE) ,
  "pemeriksaan_performa_q5" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_a1" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_a2" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_a3" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_a4" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_a5" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_a6" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_a7" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_b1" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_b2" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_b3" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_b4" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_b5" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_b6" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_b7" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_b8" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_b9" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_c1" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_c2" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_c3" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_c4" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_c5" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_c6" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_c7" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_d1" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_d2" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_d3" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_d4" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_d5" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_d6" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_d7" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_d8" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_d9" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_e1" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_e2" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_e3" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_f1" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_f2" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_f3" VARCHAR2(120 BYTE) ,
  "pemeriksaan_fisik_f4" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for sarana_bantu_pemandu_personil
-- ----------------------------
DROP TABLE "SIMPANDA"."sarana_bantu_pemandu_personil";
CREATE TABLE "SIMPANDA"."sarana_bantu_pemandu_personil" (
  "id" NUMBER(10) NOT NULL ,
  "sarana_bantu_pemandu_id" NUMBER(10) ,
  "nama" VARCHAR2(120 BYTE) ,
  "jabatan" VARCHAR2(120 BYTE) ,
  "asset_kapal_id" NUMBER(10) ,
  "tipe_asset_id" NUMBER(10) ,
  "status_ijazah_id" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for sbp_data
-- ----------------------------
DROP TABLE "SIMPANDA"."sbp_data";
CREATE TABLE "SIMPANDA"."sbp_data" (
  "id" NUMBER NOT NULL ,
  "question_id" NUMBER ,
  "answer" VARCHAR2(255 BYTE) ,
  "sarana_bantu_pemandu_id" NUMBER ,
  "keterangan_sarana" VARCHAR2(500 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of sbp_data
-- ----------------------------
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('110', '4', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('3', '3', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('4', '4', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('5', '5', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('6', '6', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('7', '7', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('8', '8', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('9', '9', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('10', '10', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('11', '11', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('12', '12', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('13', '13', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('14', '14', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('15', '15', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('16', '16', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('17', '17', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('18', '18', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('19', '19', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('20', '20', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('21', '21', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('22', '22', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('23', '23', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('24', '24', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('25', '25', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('26', '26', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('27', '27', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('28', '28', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('29', '29', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('30', '30', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('31', '31', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('32', '32', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('33', '33', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('34', '34', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('35', '35', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('36', '36', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('37', '37', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('38', '38', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('39', '39', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('40', '40', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('41', '41', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('42', '42', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('43', '43', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('44', '44', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('45', '45', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('46', '46', '2', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('47', '47', '2', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('48', '48', '2', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('49', '49', '2', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('50', '50', '0', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('51', '51', '0', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('52', '52', '0', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('53', '53', '0', '1', 'tidak tersedia');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('1', '1', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('2', '2', '1', '1', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('56', '3', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('57', '4', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('58', '5', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('59', '6', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('54', '1', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('55', '2', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('60', '7', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('61', '8', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('62', '9', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('65', '12', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('66', '13', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('67', '14', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('68', '15', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('69', '16', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('70', '17', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('71', '18', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('72', '19', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('73', '20', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('74', '21', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('75', '22', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('76', '23', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('77', '24', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('78', '25', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('79', '26', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('80', '27', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('81', '28', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('82', '29', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('83', '30', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('84', '31', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('85', '32', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('86', '33', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('87', '34', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('88', '35', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('89', '36', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('90', '37', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('91', '38', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('92', '39', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('93', '40', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('94', '41', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('95', '42', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('96', '43', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('97', '44', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('98', '45', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('99', '46', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('100', '47', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('101', '48', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('102', '49', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('103', '50', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('104', '51', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('105', '52', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('106', '53', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('63', '10', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('64', '11', '0', '2', 'null');
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('107', '1', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('108', '2', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('109', '3', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('111', '5', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('112', '6', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('113', '7', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('114', '8', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('115', '9', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('116', '10', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('117', '11', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('118', '12', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('119', '13', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('120', '14', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('121', '15', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('122', '16', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('123', '17', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('124', '18', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('125', '19', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('126', '20', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('127', '21', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('128', '22', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('129', '23', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('130', '24', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('131', '25', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('132', '26', '0', '3', NULL);
INSERT INTO "SIMPANDA"."sbp_data" VALUES ('133', '27', '0', '3', NULL);

-- ----------------------------
-- Table structure for sertifikat
-- ----------------------------
DROP TABLE "SIMPANDA"."sertifikat";
CREATE TABLE "SIMPANDA"."sertifikat" (
  "id" NUMBER(10) NOT NULL ,
  "jenis_cert_id" NUMBER(10) ,
  "tipe_cert_id" VARCHAR2(120 BYTE) ,
  "personil_id" NUMBER(10) ,
  "asset_kapal_id" VARCHAR2(120 BYTE) ,
  "no_sertifikat" VARCHAR2(120 BYTE) ,
  "issuer" VARCHAR2(120 BYTE) ,
  "tempat_keluar_sertifikat" VARCHAR2(120 BYTE) ,
  "tanggal_keluar_sertifikat" DATE ,
  "tanggal_expire" DATE DEFAULT SYSDATE  ,
  "reminder_date1" DATE DEFAULT add_months(SYSDATE, 1)  ,
  "reminder_date3" DATE DEFAULT add_months(SYSDATE, 3)  ,
  "reminder_date6" DATE DEFAULT add_months(SYSDATE, 6)  ,
  "sertifikat" VARCHAR2(120 BYTE) ,
  "sertifikat_id" NUMBER(10) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of sertifikat
-- ----------------------------
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('6', '1', '1', '335', NULL, '0230EPI0918', 'n/a', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-17 10:44:03', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-17 10:44:03', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-17 10:44:03', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621223043278.pdf', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('7', '1', '1', '357', NULL, '6200092499N10116', 'n/a', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-17 10:47:47', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-17 10:47:47', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-17 10:47:47', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621223267573.pdf', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('35', '5', '71', NULL, '145', '000', 'na', NULL, TO_DATE('2021-05-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-04 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-20 13:38:05', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-20 13:38:05', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-20 13:38:05', 'SYYYY-MM-DD HH24:MI:SS'), 'asset_kapal/1621492685821.vnd.openxmlformats-officedocument.spreadsheetml.sheet', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('9', '1', '1', '411', NULL, '000', 'n/a', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621233110546.pdf', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('33', '1', '1', '415', NULL, '123', '123', NULL, TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621407037226.pdf', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('36', '4', '73', NULL, '145', '000', 'na', NULL, TO_DATE('2021-05-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-04 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-20 13:38:05', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-20 13:38:05', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-20 13:38:05', 'SYYYY-MM-DD HH24:MI:SS'), 'asset_kapal/1621492685948.vnd.openxmlformats-officedocument.spreadsheetml.sheet', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('34', '1', '2', '415', NULL, '123', '123', NULL, TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621407037571.pdf', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('37', '3', '46', NULL, '145', '000', 'na', NULL, TO_DATE('2021-05-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-20 13:38:06', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-20 13:38:06', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-20 13:38:06', 'SYYYY-MM-DD HH24:MI:SS'), 'asset_kapal/1621492686064.vnd.openxmlformats-officedocument.spreadsheetml.sheet', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('38', '2', '27', NULL, '145', '123', '123', NULL, TO_DATE('2021-05-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-20 13:38:06', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-20 13:38:06', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-20 13:38:06', 'SYYYY-MM-DD HH24:MI:SS'), 'asset_kapal/1621492686195.vnd.openxmlformats-officedocument.spreadsheetml.sheet', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('39', '1', '2', NULL, '145', '123', '123', NULL, TO_DATE('2021-05-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-20 13:38:06', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-20 13:38:06', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-20 13:38:06', 'SYYYY-MM-DD HH24:MI:SS'), 'asset_kapal/1621492686374.vnd.openxmlformats-officedocument.spreadsheetml.sheet', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('1', '1', '1', '20', NULL, '6200094933N10219', 'NA', NULL, TO_DATE('2024-04-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-04-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-17 09:44:09', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-17 09:44:09', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-17 09:44:09', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621219448945.jpeg', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('2', '1', '2', '53', NULL, '6200083837N20119', 'n/a', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-17 09:44:11', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-17 09:44:11', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-17 09:44:11', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621219451394.pdf', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('3', '1', '1', '71', NULL, '6200008318N10208', 'NA', NULL, TO_DATE('2021-10-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-10-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-17 09:47:37', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-17 09:47:37', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-17 09:47:37', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621219657733.jpeg', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('4', '1', '1', '204', NULL, '000', 'NA', NULL, TO_DATE('2021-10-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-10-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-17 09:51:39', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-17 09:51:39', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-17 09:51:39', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621219899181.jpeg', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('5', '1', '2', '50', NULL, '6200004799N20116', 'NA', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-17 10:31:59', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-17 10:31:59', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-17 10:31:59', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621222318899.jpeg', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('14', '1', '3', '41', NULL, '123', '123', NULL, TO_DATE('2021-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-12-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-19 10:54:41', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-19 10:54:41', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-19 10:54:41', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621396481563.pdf', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('12', '5', '70', NULL, '185', '12345', 'DJPL', NULL, TO_DATE('2021-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-27 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-18 15:31:45', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-18 15:31:45', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-18 15:31:45', 'SYYYY-MM-DD HH24:MI:SS'), 'asset_kapal/1621326705574.pdf', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('40', '1', '3', '412', NULL, '123', 'n/a', NULL, TO_DATE('2021-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-31 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621235316758.pdf', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('8', '1', '1', '238', NULL, '6200061521N10216', 'n/a', NULL, TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-17 11:01:32', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-17 11:01:32', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-17 11:01:32', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621224092078.pdf', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('41', '1', '4', '410', NULL, '123', 'n/a', NULL, TO_DATE('2021-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-31 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621391950658.pdf', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('20', '5', '71', NULL, '365', '123', '123', NULL, TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-19 14:48:09', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-19 14:48:09', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-19 14:48:09', 'SYYYY-MM-DD HH24:MI:SS'), 'asset_kapal/1621410489374.pdf', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('21', '5', '70', NULL, '365', '123', '123', NULL, TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-19 14:48:09', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-19 14:48:09', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-19 14:48:09', 'SYYYY-MM-DD HH24:MI:SS'), 'asset_kapal/1621410489547.pdf', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('22', '5', '69', NULL, '365', '123', '123', NULL, TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-27 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-19 14:48:09', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-19 14:48:09', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-19 14:48:09', 'SYYYY-MM-DD HH24:MI:SS'), 'asset_kapal/1621410489711.pdf', NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('23', '1', '1', '409', NULL, '123', '12', NULL, TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL);
INSERT INTO "SIMPANDA"."sertifikat" VALUES ('24', '1', '2', '409', NULL, '123', '123', NULL, TO_DATE('2021-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-05-29 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-06-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-08-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2021-11-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'personil/1621409173820.pdf', NULL);

-- ----------------------------
-- Table structure for status_absen
-- ----------------------------
DROP TABLE "SIMPANDA"."status_absen";
CREATE TABLE "SIMPANDA"."status_absen" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of status_absen
-- ----------------------------
INSERT INTO "SIMPANDA"."status_absen" VALUES ('1', 'Hadir');
INSERT INTO "SIMPANDA"."status_absen" VALUES ('2', 'Tidak Hadir');

-- ----------------------------
-- Table structure for status_evaluasi_pelimpahan
-- ----------------------------
DROP TABLE "SIMPANDA"."status_evaluasi_pelimpahan";
CREATE TABLE "SIMPANDA"."status_evaluasi_pelimpahan" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of status_evaluasi_pelimpahan
-- ----------------------------
INSERT INTO "SIMPANDA"."status_evaluasi_pelimpahan" VALUES ('1', 'Valid');
INSERT INTO "SIMPANDA"."status_evaluasi_pelimpahan" VALUES ('0', 'Tidak Ada');
INSERT INTO "SIMPANDA"."status_evaluasi_pelimpahan" VALUES ('2', 'Tidak Valid');

-- ----------------------------
-- Table structure for status_ijazah
-- ----------------------------
DROP TABLE "SIMPANDA"."status_ijazah";
CREATE TABLE "SIMPANDA"."status_ijazah" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of status_ijazah
-- ----------------------------
INSERT INTO "SIMPANDA"."status_ijazah" VALUES ('1', 'OK');

-- ----------------------------
-- Table structure for status_investigasi_insiden
-- ----------------------------
DROP TABLE "SIMPANDA"."status_investigasi_insiden";
CREATE TABLE "SIMPANDA"."status_investigasi_insiden" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of status_investigasi_insiden
-- ----------------------------
INSERT INTO "SIMPANDA"."status_investigasi_insiden" VALUES ('1', 'Team Leader');
INSERT INTO "SIMPANDA"."status_investigasi_insiden" VALUES ('2', 'Member');

-- ----------------------------
-- Table structure for status_kepegawaian
-- ----------------------------
DROP TABLE "SIMPANDA"."status_kepegawaian";
CREATE TABLE "SIMPANDA"."status_kepegawaian" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of status_kepegawaian
-- ----------------------------
INSERT INTO "SIMPANDA"."status_kepegawaian" VALUES ('1', 'Organik');
INSERT INTO "SIMPANDA"."status_kepegawaian" VALUES ('2', 'Non Organik');

-- ----------------------------
-- Table structure for tipe_asset
-- ----------------------------
DROP TABLE "SIMPANDA"."tipe_asset";
CREATE TABLE "SIMPANDA"."tipe_asset" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) ,
  "type" VARCHAR2(120 BYTE) ,
  "sarana_config_question" VARCHAR2(120 BYTE) ,
  "flag" VARCHAR2(120 BYTE) ,
  "tipe_personil_id" NUMBER(1) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of tipe_asset
-- ----------------------------
INSERT INTO "SIMPANDA"."tipe_asset" VALUES ('1', 'Kapal Tunda', 'kapal', 'kapal_tunda', 'kapal', '2');
INSERT INTO "SIMPANDA"."tipe_asset" VALUES ('2', 'Motor Pandu', 'kapal', 'kapal_pandu', 'kapal', '3');
INSERT INTO "SIMPANDA"."tipe_asset" VALUES ('3', 'Motor Kepil', 'kapal', 'kapal_kepil', 'kapal', '4');
INSERT INTO "SIMPANDA"."tipe_asset" VALUES ('4', 'Stasiun Pandu', NULL, NULL, 'stasiun', NULL);
INSERT INTO "SIMPANDA"."tipe_asset" VALUES ('5', 'Equipment', NULL, NULL, 'stasiun', NULL);
INSERT INTO "SIMPANDA"."tipe_asset" VALUES ('6', 'Rumah Dinas', NULL, NULL, 'rumah_dinas', NULL);

-- ----------------------------
-- Table structure for tipe_cert
-- ----------------------------
DROP TABLE "SIMPANDA"."tipe_cert";
CREATE TABLE "SIMPANDA"."tipe_cert" (
  "id" NUMBER(10) NOT NULL ,
  "jenis_cert_id" NUMBER(10) ,
  "nama" VARCHAR2(120 BYTE) ,
  "remark" VARCHAR2(120 BYTE) ,
  "radio" NUMBER(1) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of tipe_cert
-- ----------------------------
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('74', '6', 'S1', NULL, NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('75', '6', 'S2', NULL, NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('76', '6', 'S3', NULL, NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('77', '6', 'D3/D4', NULL, NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('73', '4', 'Buku Pelaut', 'Buku Pelaut', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('1', '1', 'COC PELAUT ANT I', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('2', '1', 'COC PELAUT ANT II', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('3', '1', 'COC PELAUT ANT III', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('4', '1', 'COC PELAUT ANT IV', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('5', '1', 'COC PELAUT ANT V', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('6', '1', 'COC PELAUT Certificate On Watch - Deck', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('7', '1', 'COC PELAUT ATT I', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('8', '1', 'COC PELAUT ATT II', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('9', '1', 'COC PELAUT ATT III', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('10', '1', 'COC PELAUT ATT IV', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('11', '1', 'COC PELAUT ATT V', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('12', '1', 'COC PELAUT Certificate On Watch - Engine', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('13', '1', 'COC PANDU DEEP SEA', 'Pandu', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('14', '1', 'COC PANDU PANDU TINGKAT 1', 'Pandu', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('15', '1', 'COC PANDU PANDU TINGKAT 2', 'Pandu', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('16', '2', 'COE PELAUT ANT I', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('17', '2', 'COE PELAUT ANT II', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('18', '2', 'COE PELAUT ANT III', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('19', '2', 'COE PELAUT ANT IV', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('20', '2', 'COE PELAUT ANT V', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('21', '2', 'COE PELAUT ATT I', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('22', '2', 'COE PELAUT ATT II', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('23', '2', 'COE PELAUT ATT III', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('24', '2', 'COE PELAUT ATT IV', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('25', '2', 'COE PELAUT ATT V', 'Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('26', '2', 'COE PANDU DEEP SEA', 'Pandu', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('27', '2', 'COE PANDU PANDU TINGKAT 1', 'Pandu', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('28', '2', 'COE PANDU PANDU TINGKAT 2', 'Pandu', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('29', '3', 'COP BST', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('30', '3', 'COP SCRB', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('31', '3', 'COP AFF', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('32', '3', 'COP MFA', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('33', '3', 'COP MC', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('34', '3', 'COP CCM', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('35', '3', 'COP GMDSS', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil & Radio Operator', '1');
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('36', '3', 'COP RADAR-ARPA', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('37', '3', 'COP SSO', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('38', '3', 'COP FRB', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('39', '3', 'COP BRM', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('40', '3', 'COP ECDIS', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('41', '3', 'COP SAT', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('42', '3', 'COP SDSD', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('43', '3', 'COP BOCT', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('44', '3', 'COP BLGT', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('45', '3', 'COP AOT', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('46', '3', 'COP ACT', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('47', '3', 'COP ALGT', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('48', '3', 'COP IMDG CODE', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('49', '3', 'COP ORU', 'Pandu & Crew Kapal Tunda & Crew Motor Pandu & Crew Motor Kepil & Radio Operator', '1');
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('51', '5', 'Akta Kapal', 'Kapal Tunda & Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('52', '5', 'Surat Laut (Certificate Of Nationality)', 'Kapal Tunda & Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('53', '5', 'Surat Ukur (International Tonnage Certificate)', 'Kapal Tunda & Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('54', '5', 'Sertifikat Keselamatan Konstruksi Kapal Barang (Cargo Ship Safety Construction Certificate)', 'Kapal Tunda & Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('55', '5', 'Sertifikat Keselamatan Perlengkapan Kapal Barang (Cargo Ship Safety Equipment Certificate)', 'Kapal Tunda & Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('56', '5', 'Sertifikat keselamatan Radio Kapal Barang (Cargo Ship Safety Radio Certificate)', 'Kapal Tunda & Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('57', '5', 'Sertifikat Internasional Pencegahan Pencemaran Oleh Minyak (IOPP)', 'Kapal Tunda & Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('58', '5', 'Sertifikat Internasional Pencegahan Pencemaran Oleh Udara (IAPP)', 'Kapal Tunda & Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('59', '5', 'Sertifikat Internasional Pencegahan Pencemaran Oleh Kotoran (ISPP)', 'Kapal Tunda & Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('60', '5', 'Sertifikat Garis Muat (Load Line Certificate)', 'Kapal Tunda & Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('61', '5', 'Sertifikasi Klasifikasi Sementara', 'Kapal Tunda & Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('62', '5', 'Sertifikat Nasional Pencegahan Pencemaran (SNPP)', 'Kapal Tunda & Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('63', '5', 'Fire Extinguisher Certificate', 'Kapal Tunda & Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('64', '5', 'Liferaft Certificate', 'Kapal Tunda & Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('65', '5', 'Inspection Certificate', 'Kapal Tunda & Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('66', '5', 'Bollard Pull Certificate', 'Kapal Tunda', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('67', '5', 'SPOG', 'Kapal Tunda', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('68', '5', 'DOC', 'Kapal Tunda', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('69', '5', 'SMC', 'Kapal Tunda', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('70', '5', 'Pas Besar', 'Motor Pandu & Motor Kepil', NULL);
INSERT INTO "SIMPANDA"."tipe_cert" VALUES ('71', '5', 'Pas Kecil', 'Motor Pandu & Motor Kepil', NULL);

-- ----------------------------
-- Table structure for tipe_personil
-- ----------------------------
DROP TABLE "SIMPANDA"."tipe_personil";
CREATE TABLE "SIMPANDA"."tipe_personil" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) ,
  "flag" VARCHAR2(120 BYTE) ,
  "tipe_asset_id" NUMBER(2) ,
  "radio" NUMBER(1) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of tipe_personil
-- ----------------------------
INSERT INTO "SIMPANDA"."tipe_personil" VALUES ('1', 'Pandu', 'pandu', '0', '0');
INSERT INTO "SIMPANDA"."tipe_personil" VALUES ('2', 'Crew Kapal Tunda', 'pendukung', '1', '0');
INSERT INTO "SIMPANDA"."tipe_personil" VALUES ('3', 'Crew Motor Pandu', 'pendukung', '2', '0');
INSERT INTO "SIMPANDA"."tipe_personil" VALUES ('4', 'Crew Motor Kepil', 'pendukung', '3', '0');
INSERT INTO "SIMPANDA"."tipe_personil" VALUES ('5', 'Radio Operator', 'pendukung', '0', '1');
INSERT INTO "SIMPANDA"."tipe_personil" VALUES ('6', 'Planner', 'pendukung', '0', '0');

-- ----------------------------
-- Table structure for tipe_sarana_pemandu_kapal
-- ----------------------------
DROP TABLE "SIMPANDA"."tipe_sarana_pemandu_kapal";
CREATE TABLE "SIMPANDA"."tipe_sarana_pemandu_kapal" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of tipe_sarana_pemandu_kapal
-- ----------------------------
INSERT INTO "SIMPANDA"."tipe_sarana_pemandu_kapal" VALUES ('1', 'Tunda');
INSERT INTO "SIMPANDA"."tipe_sarana_pemandu_kapal" VALUES ('2', 'Pandu');
INSERT INTO "SIMPANDA"."tipe_sarana_pemandu_kapal" VALUES ('3', 'Kepil');

-- ----------------------------
-- Table structure for tipe_stasiun
-- ----------------------------
DROP TABLE "SIMPANDA"."tipe_stasiun";
CREATE TABLE "SIMPANDA"."tipe_stasiun" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of tipe_stasiun
-- ----------------------------
INSERT INTO "SIMPANDA"."tipe_stasiun" VALUES ('1', 'Stasiun Pandu');
INSERT INTO "SIMPANDA"."tipe_stasiun" VALUES ('2', 'Equipment');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE "SIMPANDA"."user";
CREATE TABLE "SIMPANDA"."user" (
  "id" NUMBER(10) NOT NULL ,
  "username" VARCHAR2(120 BYTE) ,
  "nama" VARCHAR2(120 BYTE) ,
  "password" VARCHAR2(120 BYTE) ,
  "user_group_id" NUMBER(10) ,
  "upd_date" DATE ,
  "flag" NUMBER(1) DEFAULT 0  ,
  "email" VARCHAR2(255 BYTE) ,
  "active" NUMBER(1) 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO "SIMPANDA"."user" VALUES ('41', 'dananglain', 'dng', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('42', '268046730', 'Medi Kusmana', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '0', TO_DATE('2021-06-07 17:16:15', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('43', '272106912', 'Santoso', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '0', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1000', 'simop', 'simop', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '80', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1067', 'Farres', 'Farres', 'dd130a849d7b29e5541b05d2f7f86a4acd4f1ec598c1c9438783f56bc4f0ff80', '7', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1072', 'UAT2023', 'UAT2023', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '21', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1073', '123', 'Pusat', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '7', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1077', 'exapps', 'exapps', 'a85a1421e885a64a166f1a171953c0c25091f39d747ffe0dbef8916d9a6cc0d8', '1', TO_DATE('2021-06-07 16:46:18', 'SYYYY-MM-DD HH24:MI:SS'), '0', 'exapps.pps@gmail.com', NULL);
INSERT INTO "SIMPANDA"."user" VALUES ('1060', '286098847', 'Yusrian', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '10', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1061', '274097311', 'Untung Murdiyanto', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '10', TO_DATE('2021-06-07 15:23:18', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1029', 'hafiizhekom', 'Hafiizh Eko', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '20', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1062', '268066762', 'Aria Rovino', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '17', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1063', '278106967', 'Irwan', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '17', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1042', 'hafiizhekomtest', 'Hafiizh Eko', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '7', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1045', 'danang', 'danang', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '1', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1055', 'als', 'als', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '15', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1001', '289048241', 'Rama Aulia', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '0', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1076', '123asdasd', 'test aut123', '3d6e909ad73b44fdcce64912f8eb5be9a8e2d23849a4488dc505685093d9b2da', '7', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1065', '286027902', 'Muhammad Rizwan Nasution', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '17', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1030', 'hafiizhekom', 'Hafiizh Eko', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '20', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1031', 'hafiizhekom', 'Hafiizh Eko', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '17', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1071', 'testinguat2021', 'UAT2021', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '0', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1075', 'eaaa', 'ea', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '6', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1004', 'adminILCS', 'Mang RYO', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '17', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1066', 'VAREL', 'VAREL GIVANZAH', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '1', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('81', 'pusat', 'User Pusat', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '0', TO_DATE('2021-06-07 16:47:44', 'SYYYY-MM-DD HH24:MI:SS'), '0', 'pusat@mail.com', '1');
INSERT INTO "SIMPANDA"."user" VALUES ('82', 'cabang', 'User Cabang', '5fdf54dc68d6348b46c269d4c190f407d74de4b657b3c88a6b96750d7cc3b5bd', '2', TO_DATE('2021-06-07 13:28:45', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('83', '282118637', 'Adi Priyatmono', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '0', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('84', 'staff', 'Staff', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '0', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1', '272116147', 'Mohammad Syawal', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '1', TO_DATE('2021-06-07 18:29:33', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('2', '271016917', 'Pujo Putranto', 'b17e1e0450dac425ea318253f6f852972d69731d6c7499c001468b695b6da219', '3', TO_DATE('2021-06-02 15:50:10', 'SYYYY-MM-DD HH24:MI:SS'), '3', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('3', '275037012', 'Sulistio Marfianton', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '15', TO_DATE('2021-06-02 15:59:27', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('4', '279097203', 'Setya Dwi Wahyudi', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '5', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '3', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('5', '286077454', 'Wawan Pujianto', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '7', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('6', '283108147', 'Rio Wijaya', '5fdf54dc68d6348b46c269d4c190f407d74de4b657b3c88a6b96750d7cc3b5bd', '12', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1059', 'fidiawan', 'Heri Fidiawan', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '1', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('8', '290028624', 'Dedi Kurniawan', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '11', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('9', '274107878', 'Romlih Rosyid', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '6', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('10', '278077545', 'Yoso Prawiro', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '4', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1068', 'VAREL01', 'VAREL 01', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '0', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('12', '272026916', 'Ferdi Hamonangan Harahap', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '3', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('13', '269056823', 'Eko Ari Wibowo', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '3', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('14', '271026307', 'Danny Boy', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '3', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('15', '265085510', 'Amir Hamzah', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '3', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('16', '266026767', 'Ferry Yani Pesik', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '15', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('17', '277117198', 'Subagio Wagiman', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '15', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('18', '273126868', 'Risdianto Wibowo', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '15', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('19', '284127968', 'Dody Nata Irawan', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '15', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('20', '279066948', 'Dedi Suryana', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '5', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('21', '272106422', 'Junaidi', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '5', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('22', '265096026', 'Hendro Subagio', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '7', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('23', '273116765', 'Yan Suharyanto', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '7', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1069', 'VAREL01', 'VAREL 01', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '0', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('25', '276106595', 'Ali Haryono', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '11', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1070', 'VAREL01', 'VAREL 01', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '0', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1074', 'farres', 'farres', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '21', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('28', '269066770', 'Teddy Gunawan', '3f99c537f1f93a050a7ff27c12a1a09be67478d0268dea2e1a0152b5b7419ef5', '1', TO_DATE('2021-06-07 13:28:27', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('29', '271017054', 'Didik Sutrisno', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '1', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('30', '277086874', 'Ronny Simanjuntak', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '1', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('31', '270086070', 'Posman Pangaribuan', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '1', TO_DATE('2021-06-07 17:28:33', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('32', '273125978', 'Budi Aryanto', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '1', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('33', '271066078', 'Mokhamad Muawan', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '1', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('37', '270087016', 'Agusman Katoroy', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '12', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('38', '286018764', 'Dimas Satrio Bayuaji', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '12', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('39', '274076753', 'Yulius Nurdin', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '12', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('40', '275016901', 'Sandri Soefianjsah', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '12', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1011', 'Farres', 'Farres', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', '7', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');
INSERT INTO "SIMPANDA"."user" VALUES ('1012', 'varel', 'Varel Givanzah', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '3', TO_DATE('2021-06-02 15:03:59', 'SYYYY-MM-DD HH24:MI:SS'), '0', NULL, '1');

-- ----------------------------
-- Table structure for user_access
-- ----------------------------
DROP TABLE "SIMPANDA"."user_access";
CREATE TABLE "SIMPANDA"."user_access" (
  "user_group_id" NUMBER(10) ,
  "menu_id" NUMBER(10) ,
  "id" NUMBER NOT NULL 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of user_access
-- ----------------------------
INSERT INTO "SIMPANDA"."user_access" VALUES ('0', '5', '842');
INSERT INTO "SIMPANDA"."user_access" VALUES ('0', '6', '843');
INSERT INTO "SIMPANDA"."user_access" VALUES ('0', '7', '844');
INSERT INTO "SIMPANDA"."user_access" VALUES ('0', '9', '845');
INSERT INTO "SIMPANDA"."user_access" VALUES ('0', '10', '846');
INSERT INTO "SIMPANDA"."user_access" VALUES ('0', '11', '847');
INSERT INTO "SIMPANDA"."user_access" VALUES ('0', '12', '848');
INSERT INTO "SIMPANDA"."user_access" VALUES ('0', '13', '849');
INSERT INTO "SIMPANDA"."user_access" VALUES ('0', '14', '850');
INSERT INTO "SIMPANDA"."user_access" VALUES ('0', '16', '854');
INSERT INTO "SIMPANDA"."user_access" VALUES ('0', '15', '851');
INSERT INTO "SIMPANDA"."user_access" VALUES ('0', '4', '853');
INSERT INTO "SIMPANDA"."user_access" VALUES ('12', '1', '588');
INSERT INTO "SIMPANDA"."user_access" VALUES ('12', '2', '589');
INSERT INTO "SIMPANDA"."user_access" VALUES ('12', '3', '590');
INSERT INTO "SIMPANDA"."user_access" VALUES ('12', '4', '591');
INSERT INTO "SIMPANDA"."user_access" VALUES ('12', '5', '592');
INSERT INTO "SIMPANDA"."user_access" VALUES ('12', '6', '593');
INSERT INTO "SIMPANDA"."user_access" VALUES ('12', '7', '594');
INSERT INTO "SIMPANDA"."user_access" VALUES ('12', '8', '595');
INSERT INTO "SIMPANDA"."user_access" VALUES ('12', '9', '596');
INSERT INTO "SIMPANDA"."user_access" VALUES ('12', '10', '597');
INSERT INTO "SIMPANDA"."user_access" VALUES ('12', '11', '598');
INSERT INTO "SIMPANDA"."user_access" VALUES ('12', '12', '599');
INSERT INTO "SIMPANDA"."user_access" VALUES ('0', '3', '839');
INSERT INTO "SIMPANDA"."user_access" VALUES ('12', '13', '600');
INSERT INTO "SIMPANDA"."user_access" VALUES ('12', '14', '601');
INSERT INTO "SIMPANDA"."user_access" VALUES ('12', '15', '602');
INSERT INTO "SIMPANDA"."user_access" VALUES ('5', '1', '603');
INSERT INTO "SIMPANDA"."user_access" VALUES ('5', '2', '604');
INSERT INTO "SIMPANDA"."user_access" VALUES ('5', '3', '605');
INSERT INTO "SIMPANDA"."user_access" VALUES ('5', '4', '606');
INSERT INTO "SIMPANDA"."user_access" VALUES ('5', '5', '607');
INSERT INTO "SIMPANDA"."user_access" VALUES ('5', '6', '608');
INSERT INTO "SIMPANDA"."user_access" VALUES ('5', '7', '609');
INSERT INTO "SIMPANDA"."user_access" VALUES ('5', '8', '610');
INSERT INTO "SIMPANDA"."user_access" VALUES ('5', '9', '611');
INSERT INTO "SIMPANDA"."user_access" VALUES ('5', '10', '612');
INSERT INTO "SIMPANDA"."user_access" VALUES ('5', '11', '613');
INSERT INTO "SIMPANDA"."user_access" VALUES ('5', '12', '614');
INSERT INTO "SIMPANDA"."user_access" VALUES ('5', '13', '615');
INSERT INTO "SIMPANDA"."user_access" VALUES ('5', '14', '616');
INSERT INTO "SIMPANDA"."user_access" VALUES ('5', '15', '617');
INSERT INTO "SIMPANDA"."user_access" VALUES ('15', '1', '618');
INSERT INTO "SIMPANDA"."user_access" VALUES ('15', '2', '619');
INSERT INTO "SIMPANDA"."user_access" VALUES ('15', '3', '620');
INSERT INTO "SIMPANDA"."user_access" VALUES ('15', '4', '621');
INSERT INTO "SIMPANDA"."user_access" VALUES ('15', '5', '622');
INSERT INTO "SIMPANDA"."user_access" VALUES ('15', '6', '623');
INSERT INTO "SIMPANDA"."user_access" VALUES ('15', '7', '624');
INSERT INTO "SIMPANDA"."user_access" VALUES ('15', '8', '625');
INSERT INTO "SIMPANDA"."user_access" VALUES ('15', '9', '626');
INSERT INTO "SIMPANDA"."user_access" VALUES ('15', '10', '627');
INSERT INTO "SIMPANDA"."user_access" VALUES ('15', '11', '628');
INSERT INTO "SIMPANDA"."user_access" VALUES ('15', '12', '629');
INSERT INTO "SIMPANDA"."user_access" VALUES ('15', '13', '630');
INSERT INTO "SIMPANDA"."user_access" VALUES ('15', '14', '631');
INSERT INTO "SIMPANDA"."user_access" VALUES ('15', '15', '632');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '3', '783');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '4', '784');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '5', '785');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '6', '786');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '7', '787');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '8', '788');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '9', '789');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '10', '790');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '11', '791');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '12', '792');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '13', '793');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '14', '794');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '15', '795');
INSERT INTO "SIMPANDA"."user_access" VALUES ('0', '2', '841');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '1', '781');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '2', '782');
INSERT INTO "SIMPANDA"."user_access" VALUES ('8', '1', '85');
INSERT INTO "SIMPANDA"."user_access" VALUES ('8', '2', '86');
INSERT INTO "SIMPANDA"."user_access" VALUES ('8', '3', '87');
INSERT INTO "SIMPANDA"."user_access" VALUES ('8', '4', '88');
INSERT INTO "SIMPANDA"."user_access" VALUES ('8', '5', '89');
INSERT INTO "SIMPANDA"."user_access" VALUES ('8', '6', '90');
INSERT INTO "SIMPANDA"."user_access" VALUES ('8', '7', '91');
INSERT INTO "SIMPANDA"."user_access" VALUES ('8', '8', '92');
INSERT INTO "SIMPANDA"."user_access" VALUES ('8', '9', '93');
INSERT INTO "SIMPANDA"."user_access" VALUES ('8', '10', '94');
INSERT INTO "SIMPANDA"."user_access" VALUES ('8', '11', '95');
INSERT INTO "SIMPANDA"."user_access" VALUES ('8', '12', '96');
INSERT INTO "SIMPANDA"."user_access" VALUES ('9', '1', '97');
INSERT INTO "SIMPANDA"."user_access" VALUES ('9', '2', '98');
INSERT INTO "SIMPANDA"."user_access" VALUES ('9', '3', '99');
INSERT INTO "SIMPANDA"."user_access" VALUES ('9', '4', '100');
INSERT INTO "SIMPANDA"."user_access" VALUES ('9', '5', '101');
INSERT INTO "SIMPANDA"."user_access" VALUES ('9', '6', '102');
INSERT INTO "SIMPANDA"."user_access" VALUES ('9', '7', '103');
INSERT INTO "SIMPANDA"."user_access" VALUES ('9', '8', '104');
INSERT INTO "SIMPANDA"."user_access" VALUES ('9', '9', '105');
INSERT INTO "SIMPANDA"."user_access" VALUES ('9', '10', '106');
INSERT INTO "SIMPANDA"."user_access" VALUES ('9', '11', '107');
INSERT INTO "SIMPANDA"."user_access" VALUES ('9', '12', '108');
INSERT INTO "SIMPANDA"."user_access" VALUES ('16', '1', '184');
INSERT INTO "SIMPANDA"."user_access" VALUES ('16', '2', '185');
INSERT INTO "SIMPANDA"."user_access" VALUES ('16', '3', '186');
INSERT INTO "SIMPANDA"."user_access" VALUES ('16', '4', '187');
INSERT INTO "SIMPANDA"."user_access" VALUES ('11', '1', '663');
INSERT INTO "SIMPANDA"."user_access" VALUES ('11', '2', '664');
INSERT INTO "SIMPANDA"."user_access" VALUES ('11', '3', '665');
INSERT INTO "SIMPANDA"."user_access" VALUES ('11', '4', '666');
INSERT INTO "SIMPANDA"."user_access" VALUES ('11', '5', '667');
INSERT INTO "SIMPANDA"."user_access" VALUES ('11', '6', '668');
INSERT INTO "SIMPANDA"."user_access" VALUES ('11', '7', '669');
INSERT INTO "SIMPANDA"."user_access" VALUES ('11', '8', '670');
INSERT INTO "SIMPANDA"."user_access" VALUES ('19', '2', '768');
INSERT INTO "SIMPANDA"."user_access" VALUES ('19', '4', '769');
INSERT INTO "SIMPANDA"."user_access" VALUES ('19', '5', '770');
INSERT INTO "SIMPANDA"."user_access" VALUES ('19', '6', '771');
INSERT INTO "SIMPANDA"."user_access" VALUES ('19', '7', '772');
INSERT INTO "SIMPANDA"."user_access" VALUES ('19', '8', '773');
INSERT INTO "SIMPANDA"."user_access" VALUES ('19', '9', '774');
INSERT INTO "SIMPANDA"."user_access" VALUES ('19', '10', '775');
INSERT INTO "SIMPANDA"."user_access" VALUES ('19', '11', '776');
INSERT INTO "SIMPANDA"."user_access" VALUES ('19', '12', '777');
INSERT INTO "SIMPANDA"."user_access" VALUES ('19', '13', '778');
INSERT INTO "SIMPANDA"."user_access" VALUES ('19', '14', '779');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '1', '216');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '2', '217');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '3', '218');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '4', '219');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '8', '220');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '7', '221');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '6', '222');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '5', '223');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '9', '224');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '10', '225');
INSERT INTO "SIMPANDA"."user_access" VALUES ('20', '11', '226');
INSERT INTO "SIMPANDA"."user_access" VALUES ('11', '9', '671');
INSERT INTO "SIMPANDA"."user_access" VALUES ('11', '10', '672');
INSERT INTO "SIMPANDA"."user_access" VALUES ('11', '11', '673');
INSERT INTO "SIMPANDA"."user_access" VALUES ('11', '12', '674');
INSERT INTO "SIMPANDA"."user_access" VALUES ('11', '13', '675');
INSERT INTO "SIMPANDA"."user_access" VALUES ('11', '14', '676');
INSERT INTO "SIMPANDA"."user_access" VALUES ('11', '15', '677');
INSERT INTO "SIMPANDA"."user_access" VALUES ('19', '3', '766');
INSERT INTO "SIMPANDA"."user_access" VALUES ('19', '1', '767');
INSERT INTO "SIMPANDA"."user_access" VALUES ('19', '15', '780');
INSERT INTO "SIMPANDA"."user_access" VALUES ('21', '3', '811');
INSERT INTO "SIMPANDA"."user_access" VALUES ('21', '4', '812');
INSERT INTO "SIMPANDA"."user_access" VALUES ('21', '5', '813');
INSERT INTO "SIMPANDA"."user_access" VALUES ('21', '10', '814');
INSERT INTO "SIMPANDA"."user_access" VALUES ('21', '11', '815');
INSERT INTO "SIMPANDA"."user_access" VALUES ('21', '9', '816');
INSERT INTO "SIMPANDA"."user_access" VALUES ('21', '1', '817');
INSERT INTO "SIMPANDA"."user_access" VALUES ('21', '2', '818');
INSERT INTO "SIMPANDA"."user_access" VALUES ('21', '6', '819');
INSERT INTO "SIMPANDA"."user_access" VALUES ('21', '7', '820');
INSERT INTO "SIMPANDA"."user_access" VALUES ('21', '8', '821');
INSERT INTO "SIMPANDA"."user_access" VALUES ('21', '12', '822');
INSERT INTO "SIMPANDA"."user_access" VALUES ('21', '13', '823');
INSERT INTO "SIMPANDA"."user_access" VALUES ('21', '14', '824');
INSERT INTO "SIMPANDA"."user_access" VALUES ('21', '15', '825');
INSERT INTO "SIMPANDA"."user_access" VALUES ('0', '1', '840');
INSERT INTO "SIMPANDA"."user_access" VALUES ('7', '1', '454');
INSERT INTO "SIMPANDA"."user_access" VALUES ('7', '2', '455');
INSERT INTO "SIMPANDA"."user_access" VALUES ('7', '3', '456');
INSERT INTO "SIMPANDA"."user_access" VALUES ('7', '4', '457');
INSERT INTO "SIMPANDA"."user_access" VALUES ('7', '5', '458');
INSERT INTO "SIMPANDA"."user_access" VALUES ('7', '6', '459');
INSERT INTO "SIMPANDA"."user_access" VALUES ('7', '7', '460');
INSERT INTO "SIMPANDA"."user_access" VALUES ('7', '8', '461');
INSERT INTO "SIMPANDA"."user_access" VALUES ('7', '9', '462');
INSERT INTO "SIMPANDA"."user_access" VALUES ('7', '10', '463');
INSERT INTO "SIMPANDA"."user_access" VALUES ('7', '11', '464');
INSERT INTO "SIMPANDA"."user_access" VALUES ('7', '12', '465');
INSERT INTO "SIMPANDA"."user_access" VALUES ('6', '1', '466');
INSERT INTO "SIMPANDA"."user_access" VALUES ('6', '2', '467');
INSERT INTO "SIMPANDA"."user_access" VALUES ('6', '3', '468');
INSERT INTO "SIMPANDA"."user_access" VALUES ('6', '4', '469');
INSERT INTO "SIMPANDA"."user_access" VALUES ('6', '5', '470');
INSERT INTO "SIMPANDA"."user_access" VALUES ('6', '6', '471');
INSERT INTO "SIMPANDA"."user_access" VALUES ('6', '7', '472');
INSERT INTO "SIMPANDA"."user_access" VALUES ('6', '8', '473');
INSERT INTO "SIMPANDA"."user_access" VALUES ('6', '9', '474');
INSERT INTO "SIMPANDA"."user_access" VALUES ('6', '10', '475');
INSERT INTO "SIMPANDA"."user_access" VALUES ('6', '11', '476');
INSERT INTO "SIMPANDA"."user_access" VALUES ('6', '12', '477');
INSERT INTO "SIMPANDA"."user_access" VALUES ('4', '1', '490');
INSERT INTO "SIMPANDA"."user_access" VALUES ('4', '2', '491');
INSERT INTO "SIMPANDA"."user_access" VALUES ('4', '3', '492');
INSERT INTO "SIMPANDA"."user_access" VALUES ('4', '4', '493');
INSERT INTO "SIMPANDA"."user_access" VALUES ('4', '5', '494');
INSERT INTO "SIMPANDA"."user_access" VALUES ('4', '6', '495');
INSERT INTO "SIMPANDA"."user_access" VALUES ('4', '7', '496');
INSERT INTO "SIMPANDA"."user_access" VALUES ('4', '8', '497');
INSERT INTO "SIMPANDA"."user_access" VALUES ('4', '9', '498');
INSERT INTO "SIMPANDA"."user_access" VALUES ('4', '10', '499');
INSERT INTO "SIMPANDA"."user_access" VALUES ('4', '11', '500');
INSERT INTO "SIMPANDA"."user_access" VALUES ('4', '12', '501');
INSERT INTO "SIMPANDA"."user_access" VALUES ('3', '2', '561');
INSERT INTO "SIMPANDA"."user_access" VALUES ('3', '3', '562');
INSERT INTO "SIMPANDA"."user_access" VALUES ('3', '4', '563');
INSERT INTO "SIMPANDA"."user_access" VALUES ('3', '5', '564');
INSERT INTO "SIMPANDA"."user_access" VALUES ('3', '6', '565');
INSERT INTO "SIMPANDA"."user_access" VALUES ('3', '7', '566');
INSERT INTO "SIMPANDA"."user_access" VALUES ('3', '8', '567');
INSERT INTO "SIMPANDA"."user_access" VALUES ('3', '9', '568');
INSERT INTO "SIMPANDA"."user_access" VALUES ('3', '10', '569');
INSERT INTO "SIMPANDA"."user_access" VALUES ('3', '11', '570');
INSERT INTO "SIMPANDA"."user_access" VALUES ('3', '12', '571');
INSERT INTO "SIMPANDA"."user_access" VALUES ('3', '13', '572');
INSERT INTO "SIMPANDA"."user_access" VALUES ('2', '1', '514');
INSERT INTO "SIMPANDA"."user_access" VALUES ('2', '2', '515');
INSERT INTO "SIMPANDA"."user_access" VALUES ('2', '3', '516');
INSERT INTO "SIMPANDA"."user_access" VALUES ('2', '4', '517');
INSERT INTO "SIMPANDA"."user_access" VALUES ('2', '5', '518');
INSERT INTO "SIMPANDA"."user_access" VALUES ('2', '6', '519');
INSERT INTO "SIMPANDA"."user_access" VALUES ('2', '7', '520');
INSERT INTO "SIMPANDA"."user_access" VALUES ('2', '8', '521');
INSERT INTO "SIMPANDA"."user_access" VALUES ('2', '9', '522');
INSERT INTO "SIMPANDA"."user_access" VALUES ('2', '10', '523');
INSERT INTO "SIMPANDA"."user_access" VALUES ('2', '11', '524');
INSERT INTO "SIMPANDA"."user_access" VALUES ('2', '12', '525');
INSERT INTO "SIMPANDA"."user_access" VALUES ('3', '1', '560');
INSERT INTO "SIMPANDA"."user_access" VALUES ('3', '14', '573');
INSERT INTO "SIMPANDA"."user_access" VALUES ('3', '15', '574');
INSERT INTO "SIMPANDA"."user_access" VALUES ('10', '2', '738');
INSERT INTO "SIMPANDA"."user_access" VALUES ('10', '4', '739');
INSERT INTO "SIMPANDA"."user_access" VALUES ('17', '3', '635');
INSERT INTO "SIMPANDA"."user_access" VALUES ('17', '4', '636');
INSERT INTO "SIMPANDA"."user_access" VALUES ('10', '5', '740');
INSERT INTO "SIMPANDA"."user_access" VALUES ('10', '6', '741');
INSERT INTO "SIMPANDA"."user_access" VALUES ('17', '5', '637');
INSERT INTO "SIMPANDA"."user_access" VALUES ('17', '6', '638');
INSERT INTO "SIMPANDA"."user_access" VALUES ('17', '7', '639');
INSERT INTO "SIMPANDA"."user_access" VALUES ('17', '8', '640');
INSERT INTO "SIMPANDA"."user_access" VALUES ('17', '9', '641');
INSERT INTO "SIMPANDA"."user_access" VALUES ('17', '10', '642');
INSERT INTO "SIMPANDA"."user_access" VALUES ('17', '11', '643');
INSERT INTO "SIMPANDA"."user_access" VALUES ('17', '12', '644');
INSERT INTO "SIMPANDA"."user_access" VALUES ('17', '13', '645');
INSERT INTO "SIMPANDA"."user_access" VALUES ('17', '14', '646');
INSERT INTO "SIMPANDA"."user_access" VALUES ('17', '1', '633');
INSERT INTO "SIMPANDA"."user_access" VALUES ('17', '2', '634');
INSERT INTO "SIMPANDA"."user_access" VALUES ('17', '15', '647');
INSERT INTO "SIMPANDA"."user_access" VALUES ('10', '3', '736');
INSERT INTO "SIMPANDA"."user_access" VALUES ('10', '1', '737');
INSERT INTO "SIMPANDA"."user_access" VALUES ('10', '7', '742');
INSERT INTO "SIMPANDA"."user_access" VALUES ('10', '8', '743');
INSERT INTO "SIMPANDA"."user_access" VALUES ('10', '9', '744');
INSERT INTO "SIMPANDA"."user_access" VALUES ('10', '10', '745');
INSERT INTO "SIMPANDA"."user_access" VALUES ('10', '11', '746');
INSERT INTO "SIMPANDA"."user_access" VALUES ('10', '12', '747');
INSERT INTO "SIMPANDA"."user_access" VALUES ('10', '13', '748');
INSERT INTO "SIMPANDA"."user_access" VALUES ('10', '14', '749');
INSERT INTO "SIMPANDA"."user_access" VALUES ('10', '15', '750');
INSERT INTO "SIMPANDA"."user_access" VALUES ('22', '2', '549');
INSERT INTO "SIMPANDA"."user_access" VALUES ('22', '3', '550');
INSERT INTO "SIMPANDA"."user_access" VALUES ('22', '4', '551');
INSERT INTO "SIMPANDA"."user_access" VALUES ('22', '5', '552');
INSERT INTO "SIMPANDA"."user_access" VALUES ('22', '6', '553');
INSERT INTO "SIMPANDA"."user_access" VALUES ('22', '7', '554');
INSERT INTO "SIMPANDA"."user_access" VALUES ('22', '8', '555');
INSERT INTO "SIMPANDA"."user_access" VALUES ('22', '9', '556');
INSERT INTO "SIMPANDA"."user_access" VALUES ('22', '10', '557');
INSERT INTO "SIMPANDA"."user_access" VALUES ('22', '11', '558');
INSERT INTO "SIMPANDA"."user_access" VALUES ('22', '12', '559');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '1', '856');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '2', '857');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '4', '858');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '5', '859');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '6', '860');
INSERT INTO "SIMPANDA"."user_access" VALUES ('13', '1', '234');
INSERT INTO "SIMPANDA"."user_access" VALUES ('13', '2', '235');
INSERT INTO "SIMPANDA"."user_access" VALUES ('13', '3', '236');
INSERT INTO "SIMPANDA"."user_access" VALUES ('13', '4', '237');
INSERT INTO "SIMPANDA"."user_access" VALUES ('13', '5', '238');
INSERT INTO "SIMPANDA"."user_access" VALUES ('13', '6', '239');
INSERT INTO "SIMPANDA"."user_access" VALUES ('13', '7', '240');
INSERT INTO "SIMPANDA"."user_access" VALUES ('13', '8', '241');
INSERT INTO "SIMPANDA"."user_access" VALUES ('13', '9', '242');
INSERT INTO "SIMPANDA"."user_access" VALUES ('13', '10', '243');
INSERT INTO "SIMPANDA"."user_access" VALUES ('13', '11', '244');
INSERT INTO "SIMPANDA"."user_access" VALUES ('13', '12', '245');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '7', '861');
INSERT INTO "SIMPANDA"."user_access" VALUES ('22', '1', '548');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '8', '862');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '9', '863');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '10', '864');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '11', '865');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '12', '866');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '13', '867');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '14', '868');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '15', '869');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '16', '870');
INSERT INTO "SIMPANDA"."user_access" VALUES ('1', '3', '855');
INSERT INTO "SIMPANDA"."user_access" VALUES ('18', '4', '724');
INSERT INTO "SIMPANDA"."user_access" VALUES ('18', '5', '725');
INSERT INTO "SIMPANDA"."user_access" VALUES ('18', '6', '726');
INSERT INTO "SIMPANDA"."user_access" VALUES ('18', '7', '727');
INSERT INTO "SIMPANDA"."user_access" VALUES ('18', '8', '728');
INSERT INTO "SIMPANDA"."user_access" VALUES ('18', '9', '729');
INSERT INTO "SIMPANDA"."user_access" VALUES ('18', '10', '730');
INSERT INTO "SIMPANDA"."user_access" VALUES ('18', '11', '731');
INSERT INTO "SIMPANDA"."user_access" VALUES ('18', '12', '732');
INSERT INTO "SIMPANDA"."user_access" VALUES ('18', '13', '733');
INSERT INTO "SIMPANDA"."user_access" VALUES ('18', '14', '734');
INSERT INTO "SIMPANDA"."user_access" VALUES ('18', '15', '735');
INSERT INTO "SIMPANDA"."user_access" VALUES ('18', '3', '722');
INSERT INTO "SIMPANDA"."user_access" VALUES ('18', '2', '723');

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE "SIMPANDA"."user_group";
CREATE TABLE "SIMPANDA"."user_group" (
  "id" NUMBER(10) NOT NULL ,
  "nama" VARCHAR2(120 BYTE) ,
  "keterangan" VARCHAR2(120 BYTE) ,
  "cabang_id" NUMBER(10) ,
  "visible" NUMBER(1) DEFAULT 1  ,
  "upd_date" DATE 
)
TABLESPACE "TBS_SIMPANDA"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO "SIMPANDA"."user_group" VALUES ('0', 'KANTOR PUSAT', '- b', '0', '1', TO_DATE('2021-06-02 16:25:49', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('21', 'BANTEN', '-', '12', '1', TO_DATE('2021-06-02 13:58:30', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('19', 'UAT2021', 'Testing UAT2021 Edit', '0', '1', TO_DATE('2021-05-19 11:20:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('15', 'PALEMBANG', '-', '15', '1', TO_DATE('2021-04-28 12:08:11', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('1', 'TANJUNG PRIOK', '-', '1', '1', TO_DATE('2021-06-02 17:19:31', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('2', 'SUNDA KELAPA', '-', '2', '1', TO_DATE('2021-04-27 22:26:24', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('3', 'PANJANG', '-', '3', '1', TO_DATE('2021-04-27 23:32:55', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('4', 'PANGKAL BALAM', '-', '4', '1', TO_DATE('2021-04-27 22:26:24', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('5', 'PONTIANAK', '-', '5', '1', TO_DATE('2021-04-28 12:06:36', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('6', 'TANJUNG PANDAN', '-', '6', '1', TO_DATE('2021-04-27 22:26:24', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('7', 'CIREBON', '-', '7', '1', TO_DATE('2021-04-27 22:26:24', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('8', 'TANJUNG PRIOK CAR TERMINAL', '-', '8', '1', TO_DATE('2021-04-27 22:26:24', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('18', 'Sarpras', 'Departemen Sarana dan Prasarana Pelayanan Kapal', '0', '1', TO_DATE('2021-04-29 10:32:40', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('10', 'JAMBI', '-', '10', '1', TO_DATE('2021-04-29 12:25:09', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('11', 'BENGKULU', '-', '11', '1', TO_DATE('2021-04-28 19:48:54', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('12', 'BANTEN', '-', '12', '1', TO_DATE('2021-04-28 12:06:16', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('20', 'UATkantorpusat', 'test', '0', '1', TO_DATE('2021-05-20 11:23:46', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SIMPANDA"."user_group" VALUES ('17', 'TELUK BAYUR', '-', '17', '1', TO_DATE('2021-04-28 13:33:17', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Function structure for PROCS
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "SIMPANDA"."PROCS" AS
BEGIN
		OPEN c1 FOR 
		SELECT
			"nama_asset" 
		FROM
			"asset_kapal";
END;
/

-- ----------------------------
-- Sequence structure for cabangS
-- ----------------------------
DROP SEQUENCE "SIMPANDA"."cabangS";
CREATE SEQUENCE "SIMPANDA"."cabangS" MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 NOCACHE;

-- ----------------------------
-- Primary Key structure for table action
-- ----------------------------
ALTER TABLE "SIMPANDA"."action" ADD CONSTRAINT "SYS_C0013129" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table action
-- ----------------------------
ALTER TABLE "SIMPANDA"."action" ADD CONSTRAINT "SYS_C0013067" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table activity_log
-- ----------------------------
ALTER TABLE "SIMPANDA"."activity_log" ADD CONSTRAINT "SYS_C0013145" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table activity_log
-- ----------------------------
ALTER TABLE "SIMPANDA"."activity_log" ADD CONSTRAINT "SYS_C0012978" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table activity_log
-- ----------------------------
CREATE TRIGGER "SIMPANDA"."trigger_change_activitylog" BEFORE INSERT OR UPDATE ON "SIMPANDA"."activity_log" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :new."date" := sysdate;
END;
/

-- ----------------------------
-- Primary Key structure for table approval_status
-- ----------------------------
ALTER TABLE "SIMPANDA"."approval_status" ADD CONSTRAINT "SYS_C0013146" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table approval_status
-- ----------------------------
ALTER TABLE "SIMPANDA"."approval_status" ADD CONSTRAINT "SYS_C0012980" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table armada_jaga
-- ----------------------------
ALTER TABLE "SIMPANDA"."armada_jaga" ADD CONSTRAINT "SYS_C0013147" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table armada_jaga
-- ----------------------------
ALTER TABLE "SIMPANDA"."armada_jaga" ADD CONSTRAINT "SYS_C0012982" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table armada_schedule
-- ----------------------------
ALTER TABLE "SIMPANDA"."armada_schedule" ADD CONSTRAINT "SYS_C0013148" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table armada_schedule
-- ----------------------------
ALTER TABLE "SIMPANDA"."armada_schedule" ADD CONSTRAINT "SYS_C0012984" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table asset_kapal
-- ----------------------------
ALTER TABLE "SIMPANDA"."asset_kapal" ADD CONSTRAINT "SYS_C0013227" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table asset_kapal
-- ----------------------------
ALTER TABLE "SIMPANDA"."asset_kapal" ADD CONSTRAINT "SYS_C0013220" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table asset_rumah_dinas
-- ----------------------------
ALTER TABLE "SIMPANDA"."asset_rumah_dinas" ADD CONSTRAINT "SYS_C0013150" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table asset_rumah_dinas
-- ----------------------------
ALTER TABLE "SIMPANDA"."asset_rumah_dinas" ADD CONSTRAINT "SYS_C0012988" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table asset_rumah_dinas
-- ----------------------------
CREATE TRIGGER "SIMPANDA"."trigger_change_rumahdinas" BEFORE INSERT OR UPDATE ON "SIMPANDA"."asset_rumah_dinas" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :new."upd_date" := sysdate;
END;
/

-- ----------------------------
-- Primary Key structure for table asset_stasiun_equipment
-- ----------------------------
ALTER TABLE "SIMPANDA"."asset_stasiun_equipment" ADD CONSTRAINT "SYS_C0013151" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table asset_stasiun_equipment
-- ----------------------------
ALTER TABLE "SIMPANDA"."asset_stasiun_equipment" ADD CONSTRAINT "SYS_C0012990" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table authorization
-- ----------------------------
ALTER TABLE "SIMPANDA"."authorization" ADD CONSTRAINT "SYS_C0013152" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cabang
-- ----------------------------
ALTER TABLE "SIMPANDA"."cabang" ADD CONSTRAINT "SYS_C0013153" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table cabang
-- ----------------------------
ALTER TABLE "SIMPANDA"."cabang" ADD CONSTRAINT "SYS_C0012992" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table cabang
-- ----------------------------
CREATE TRIGGER "SIMPANDA"."cabangT" BEFORE INSERT ON "SIMPANDA"."cabang" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW WHEN (new."id" IS NULL) 
BEGIN :new."id" := "cabangS".NEXTVAL; END;
/

-- ----------------------------
-- Primary Key structure for table countries
-- ----------------------------
ALTER TABLE "SIMPANDA"."countries" ADD CONSTRAINT "SYS_C0013191" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table dokumen_kapal
-- ----------------------------
ALTER TABLE "SIMPANDA"."dokumen_kapal" ADD CONSTRAINT "SYS_C0013154" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table dokumen_kapal
-- ----------------------------
ALTER TABLE "SIMPANDA"."dokumen_kapal" ADD CONSTRAINT "SYS_C0012994" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table enable
-- ----------------------------
ALTER TABLE "SIMPANDA"."enable" ADD CONSTRAINT "enable_pk" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table enable
-- ----------------------------
ALTER TABLE "SIMPANDA"."enable" ADD CONSTRAINT "SYS_C0012996" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table evaluasi_pelimpahan
-- ----------------------------
ALTER TABLE "SIMPANDA"."evaluasi_pelimpahan" ADD CONSTRAINT "SYS_C0013159" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table evaluasi_pelimpahan
-- ----------------------------
ALTER TABLE "SIMPANDA"."evaluasi_pelimpahan" ADD CONSTRAINT "SYS_C0012998" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table evaluasi_pelimpahan
-- ----------------------------
CREATE TRIGGER "SIMPANDA"."trigger_change_evpelimpahan" BEFORE INSERT OR UPDATE ON "SIMPANDA"."evaluasi_pelimpahan" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :new."upd_date" := sysdate;
END;
/

-- ----------------------------
-- Primary Key structure for table investigasi_insiden
-- ----------------------------
ALTER TABLE "SIMPANDA"."investigasi_insiden" ADD CONSTRAINT "SYS_C0013158" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table investigasi_insiden
-- ----------------------------
ALTER TABLE "SIMPANDA"."investigasi_insiden" ADD CONSTRAINT "SYS_C0013000" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table investigasi_insiden
-- ----------------------------
CREATE TRIGGER "SIMPANDA"."trigger_change_invinsiden" BEFORE INSERT OR UPDATE ON "SIMPANDA"."investigasi_insiden" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :new."upd_date" := sysdate;
END;
/

-- ----------------------------
-- Primary Key structure for table investigasi_insiden_tim
-- ----------------------------
ALTER TABLE "SIMPANDA"."investigasi_insiden_tim" ADD CONSTRAINT "SYS_C0013157" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table jenis_cert
-- ----------------------------
ALTER TABLE "SIMPANDA"."jenis_cert" ADD CONSTRAINT "SYS_C0013156" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table jenis_cert
-- ----------------------------
ALTER TABLE "SIMPANDA"."jenis_cert" ADD CONSTRAINT "SYS_C0013002" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table kepemilikan_kapal
-- ----------------------------
ALTER TABLE "SIMPANDA"."kepemilikan_kapal" ADD CONSTRAINT "SYS_C0013155" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table kepemilikan_kapal
-- ----------------------------
ALTER TABLE "SIMPANDA"."kepemilikan_kapal" ADD CONSTRAINT "SYS_C0013140" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table kondisi
-- ----------------------------
ALTER TABLE "SIMPANDA"."kondisi" ADD CONSTRAINT "SYS_C0013160" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table kondisi
-- ----------------------------
ALTER TABLE "SIMPANDA"."kondisi" ADD CONSTRAINT "SYS_C0013004" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table kondisi_umum
-- ----------------------------
ALTER TABLE "SIMPANDA"."kondisi_umum" ADD CONSTRAINT "SYS_C0013161" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table kondisi_umum
-- ----------------------------
ALTER TABLE "SIMPANDA"."kondisi_umum" ADD CONSTRAINT "SYS_C0013006" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table legal
-- ----------------------------
ALTER TABLE "SIMPANDA"."legal" ADD CONSTRAINT "SYS_C0013235" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table menu
-- ----------------------------
ALTER TABLE "SIMPANDA"."menu" ADD CONSTRAINT "SYS_C0013162" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table menu
-- ----------------------------
ALTER TABLE "SIMPANDA"."menu" ADD CONSTRAINT "SYS_C0013056" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table pandu_bandar_laut
-- ----------------------------
ALTER TABLE "SIMPANDA"."pandu_bandar_laut" ADD CONSTRAINT "SYS_C0013163" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table pandu_bandar_laut
-- ----------------------------
ALTER TABLE "SIMPANDA"."pandu_bandar_laut" ADD CONSTRAINT "SYS_C0013008" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table pandu_jaga
-- ----------------------------
ALTER TABLE "SIMPANDA"."pandu_jaga" ADD CONSTRAINT "SYS_C0013164" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pandu_schedule
-- ----------------------------
ALTER TABLE "SIMPANDA"."pandu_schedule" ADD CONSTRAINT "SYS_C0013165" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table pandu_schedule
-- ----------------------------
ALTER TABLE "SIMPANDA"."pandu_schedule" ADD CONSTRAINT "SYS_C0013012" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table pemeriksaan_kapal
-- ----------------------------
ALTER TABLE "SIMPANDA"."pemeriksaan_kapal" ADD CONSTRAINT "SYS_C0013166" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table pemeriksaan_kapal
-- ----------------------------
ALTER TABLE "SIMPANDA"."pemeriksaan_kapal" ADD CONSTRAINT "SYS_C0013014" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table pemeriksaan_kapal
-- ----------------------------
CREATE TRIGGER "SIMPANDA"."trigger_change_pemkapal" BEFORE INSERT OR UPDATE ON "SIMPANDA"."pemeriksaan_kapal" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :new."upd_date" := sysdate;
END;
/

-- ----------------------------
-- Primary Key structure for table pemeriksaan_kapal_check
-- ----------------------------
ALTER TABLE "SIMPANDA"."pemeriksaan_kapal_check" ADD CONSTRAINT "SYS_C0013167" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table pemeriksaan_kapal_check
-- ----------------------------
ALTER TABLE "SIMPANDA"."pemeriksaan_kapal_check" ADD CONSTRAINT "SYS_C0013016" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table pemeriksaan_kapal_check_data
-- ----------------------------
ALTER TABLE "SIMPANDA"."pemeriksaan_kapal_check_data" ADD CONSTRAINT "SYS_C0013168" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table pemeriksaan_kapal_check_data
-- ----------------------------
ALTER TABLE "SIMPANDA"."pemeriksaan_kapal_check_data" ADD CONSTRAINT "SYS_C0013018" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table pemeriksaan_kapal_upload
-- ----------------------------
ALTER TABLE "SIMPANDA"."pemeriksaan_kapal_upload" ADD CONSTRAINT "SYS_C0013213" PRIMARY KEY ("id");

-- ----------------------------
-- Triggers structure for table pemeriksaan_kapal_upload
-- ----------------------------
CREATE TRIGGER "SIMPANDA"."trigger_change_p_kapal" BEFORE INSERT OR UPDATE ON "SIMPANDA"."pemeriksaan_kapal_upload" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :new."upd_date" := sysdate;
END;
/

-- ----------------------------
-- Primary Key structure for table pemilik_kapal
-- ----------------------------
ALTER TABLE "SIMPANDA"."pemilik_kapal" ADD CONSTRAINT "SYS_C0013169" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table personil
-- ----------------------------
ALTER TABLE "SIMPANDA"."personil" ADD CONSTRAINT "SYS_C0013206" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table personil
-- ----------------------------
CREATE TRIGGER "SIMPANDA"."trigger_change_personil" BEFORE INSERT OR UPDATE ON "SIMPANDA"."personil" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :new."upd_date" := sysdate;
END;
/

-- ----------------------------
-- Primary Key structure for table role
-- ----------------------------
ALTER TABLE "SIMPANDA"."role" ADD CONSTRAINT "SYS_C0013171" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table role
-- ----------------------------
ALTER TABLE "SIMPANDA"."role" ADD CONSTRAINT "SYS_C0013022" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table sarana_bantu_pemandu
-- ----------------------------
ALTER TABLE "SIMPANDA"."sarana_bantu_pemandu" ADD CONSTRAINT "SYS_C0013172" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table sarana_bantu_pemandu
-- ----------------------------
ALTER TABLE "SIMPANDA"."sarana_bantu_pemandu" ADD CONSTRAINT "SYS_C0013024" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table sarana_bantu_pemandu
-- ----------------------------
CREATE TRIGGER "SIMPANDA"."trigger_change_saranabantu" BEFORE INSERT OR UPDATE ON "SIMPANDA"."sarana_bantu_pemandu" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :new."upd_date" := sysdate;
END;
/

-- ----------------------------
-- Primary Key structure for table sarana_bantu_pemandu_kapal
-- ----------------------------
ALTER TABLE "SIMPANDA"."sarana_bantu_pemandu_kapal" ADD CONSTRAINT "SYS_C0013173" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table sarana_bantu_pemandu_kapal
-- ----------------------------
ALTER TABLE "SIMPANDA"."sarana_bantu_pemandu_kapal" ADD CONSTRAINT "SYS_C0013026" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table sarana_bantu_pemandu_personil
-- ----------------------------
ALTER TABLE "SIMPANDA"."sarana_bantu_pemandu_personil" ADD CONSTRAINT "SYS_C0013174" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table sarana_bantu_pemandu_personil
-- ----------------------------
ALTER TABLE "SIMPANDA"."sarana_bantu_pemandu_personil" ADD CONSTRAINT "SYS_C0013028" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table sbp_data
-- ----------------------------
ALTER TABLE "SIMPANDA"."sbp_data" ADD CONSTRAINT "SYS_C0013195" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sertifikat
-- ----------------------------
ALTER TABLE "SIMPANDA"."sertifikat" ADD CONSTRAINT "SYS_C0013175" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table sertifikat
-- ----------------------------
ALTER TABLE "SIMPANDA"."sertifikat" ADD CONSTRAINT "SYS_C0013030" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table status_absen
-- ----------------------------
ALTER TABLE "SIMPANDA"."status_absen" ADD CONSTRAINT "SYS_C0013176" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table status_absen
-- ----------------------------
ALTER TABLE "SIMPANDA"."status_absen" ADD CONSTRAINT "SYS_C0013032" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table status_evaluasi_pelimpahan
-- ----------------------------
ALTER TABLE "SIMPANDA"."status_evaluasi_pelimpahan" ADD CONSTRAINT "SYS_C0013177" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table status_evaluasi_pelimpahan
-- ----------------------------
ALTER TABLE "SIMPANDA"."status_evaluasi_pelimpahan" ADD CONSTRAINT "SYS_C0013034" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table status_ijazah
-- ----------------------------
ALTER TABLE "SIMPANDA"."status_ijazah" ADD CONSTRAINT "SYS_C0013178" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table status_ijazah
-- ----------------------------
ALTER TABLE "SIMPANDA"."status_ijazah" ADD CONSTRAINT "SYS_C0013036" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table status_investigasi_insiden
-- ----------------------------
ALTER TABLE "SIMPANDA"."status_investigasi_insiden" ADD CONSTRAINT "SYS_C0013179" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table status_investigasi_insiden
-- ----------------------------
ALTER TABLE "SIMPANDA"."status_investigasi_insiden" ADD CONSTRAINT "SYS_C0013038" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table status_kepegawaian
-- ----------------------------
ALTER TABLE "SIMPANDA"."status_kepegawaian" ADD CONSTRAINT "SYS_C0013180" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table status_kepegawaian
-- ----------------------------
ALTER TABLE "SIMPANDA"."status_kepegawaian" ADD CONSTRAINT "SYS_C0013040" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tipe_asset
-- ----------------------------
ALTER TABLE "SIMPANDA"."tipe_asset" ADD CONSTRAINT "SYS_C0013181" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table tipe_asset
-- ----------------------------
ALTER TABLE "SIMPANDA"."tipe_asset" ADD CONSTRAINT "SYS_C0013042" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tipe_cert
-- ----------------------------
ALTER TABLE "SIMPANDA"."tipe_cert" ADD CONSTRAINT "SYS_C0013182" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table tipe_cert
-- ----------------------------
ALTER TABLE "SIMPANDA"."tipe_cert" ADD CONSTRAINT "SYS_C0013044" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tipe_personil
-- ----------------------------
ALTER TABLE "SIMPANDA"."tipe_personil" ADD CONSTRAINT "SYS_C0013183" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table tipe_personil
-- ----------------------------
ALTER TABLE "SIMPANDA"."tipe_personil" ADD CONSTRAINT "SYS_C0013046" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tipe_sarana_pemandu_kapal
-- ----------------------------
ALTER TABLE "SIMPANDA"."tipe_sarana_pemandu_kapal" ADD CONSTRAINT "SYS_C0013184" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table tipe_sarana_pemandu_kapal
-- ----------------------------
ALTER TABLE "SIMPANDA"."tipe_sarana_pemandu_kapal" ADD CONSTRAINT "SYS_C0013048" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tipe_stasiun
-- ----------------------------
ALTER TABLE "SIMPANDA"."tipe_stasiun" ADD CONSTRAINT "SYS_C0013185" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table tipe_stasiun
-- ----------------------------
ALTER TABLE "SIMPANDA"."tipe_stasiun" ADD CONSTRAINT "SYS_C0013050" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE "SIMPANDA"."user" ADD CONSTRAINT "SYS_C0013186" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table user
-- ----------------------------
ALTER TABLE "SIMPANDA"."user" ADD CONSTRAINT "SYS_C0013133" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table user
-- ----------------------------
CREATE TRIGGER "SIMPANDA"."trigger_change_user" BEFORE INSERT OR UPDATE ON "SIMPANDA"."user" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :new."upd_date" := sysdate;
END;
/

-- ----------------------------
-- Primary Key structure for table user_access
-- ----------------------------
ALTER TABLE "SIMPANDA"."user_access" ADD CONSTRAINT "SYS_C0013199" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table user_group
-- ----------------------------
ALTER TABLE "SIMPANDA"."user_group" ADD CONSTRAINT "SYS_C0013188" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table user_group
-- ----------------------------
ALTER TABLE "SIMPANDA"."user_group" ADD CONSTRAINT "SYS_C0013054" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table user_group
-- ----------------------------
CREATE TRIGGER "SIMPANDA"."trigger_change_usergroup" BEFORE INSERT OR UPDATE ON "SIMPANDA"."user_group" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :new."upd_date" := sysdate;
END;
/
