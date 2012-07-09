create table t_operationtype
(
  ID   NUMBER primary key,
  type VARCHAR2(50),
  PID  NUMBER,
  remind VARCHAR2(500)
);

create sequence seq_operationtype increment by 1 start with 200 nomaxvalue minvalue 1;

insert into t_operationtype (ID, TYPE, PID)
values (1, '即时业务', 0);

insert into t_operationtype (ID, TYPE, PID)
values (2, '非即时业务', 0);

insert into t_operationtype (ID, TYPE, PID)
values (11, '来电显示', 1);

insert into t_operationtype (ID, TYPE, PID)
values (12, '开通状态', 11);

insert into t_operationtype (ID, TYPE, PID)
values (13, '生效账期', 11);

insert into t_operationtype (ID, TYPE, PID)
values (14, '主叫隐藏', 1);

insert into t_operationtype (ID, TYPE, PID)
values (15, '开通状态', 14);

insert into t_operationtype (ID, TYPE, PID)
values (16, '生效日期', 14);

insert into t_operationtype (ID, TYPE, PID)
values (17, '呼叫转移', 1);

insert into t_operationtype (ID, TYPE, PID)
values (18, '开通状态', 17);

insert into t_operationtype (ID, TYPE, PID)
values (19, '用户来电号码', 17);

insert into t_operationtype (ID, TYPE, PID)
values (20, '呼叫转移号码', 17);

insert into t_operationtype (ID, TYPE, PID)
values (21, '立即开机', 1);

insert into t_operationtype (ID, TYPE, PID)
values (22, '临时授信', 1);

insert into t_operationtype (ID, TYPE, PID)
values (23, '可授信金额', 22);

insert into t_operationtype (ID, TYPE, PID)
values (24, '实际授信金额', 22);

insert into t_operationtype (ID, TYPE, PID)
values (25, '授信原因', 22);

insert into t_operationtype (ID, TYPE, PID)
values (26, '申挂停机', 1);

insert into t_operationtype (ID, TYPE, PID)
values (27, '撤销申挂停机', 1);

insert into t_operationtype (ID, TYPE, PID)
values (28, '国内长途', 2);

insert into t_operationtype (ID, TYPE, PID)
values (29, '开通状态', 28);

insert into t_operationtype (ID, TYPE, PID)
values (30, '国际长途', 2);

insert into t_operationtype (ID, TYPE, PID)
values (31, '开通状态', 30);

insert into t_operationtype (ID, TYPE, PID)
values (32, '增值业务', 2);

insert into t_operationtype (ID, TYPE, PID)
values (33, '开通状态', 32);

insert into t_operationtype (ID, TYPE, PID)
values (34, '生效账期', 32);

insert into t_operationtype (ID, TYPE, PID)
values (35, '联通秘书', 32);

insert into t_operationtype (ID, TYPE, PID)
values (36, '炫铃', 32);

insert into t_operationtype (ID, TYPE, PID)
values (37, '话费周周报', 32);

insert into t_operationtype (ID, TYPE, PID)
values (38, '如意邮箱', 32);

insert into t_operationtype (ID, TYPE, PID)
values (39, '随手看', 32);

insert into t_operationtype (ID, TYPE, PID)
values (40, '新闻', 39);

insert into t_operationtype (ID, TYPE, PID)
values (41, '笑话', 39);

insert into t_operationtype (ID, TYPE, PID)
values (42, '健康生活贴士', 39);

insert into t_operationtype (ID, TYPE, PID)
values (43, '天气预报', 39);

insert into t_operationtype (ID, TYPE, PID)
values (44, '全部', 39);

insert into t_operationtype (ID, TYPE, PID)
values (45, '8001短信', 32);

insert into t_operationtype (ID, TYPE, PID)
values (46, '客户化优惠', 2);

insert into t_operationtype (ID, TYPE, PID)
values (77, '香港', 69);

insert into t_operationtype (ID, TYPE, PID)
values (78, '新加坡', 69);

insert into t_operationtype (ID, TYPE, PID)
values (49, '短信包月', 46);

insert into t_operationtype (ID, TYPE, PID)
values (50, '网内', 49);

insert into t_operationtype (ID, TYPE, PID)
values (51, '3元50条', 50);

insert into t_operationtype (ID, TYPE, PID)
values (52, '6元100条', 50);

insert into t_operationtype (ID, TYPE, PID)
values (53, '10元150条', 50);

insert into t_operationtype (ID, TYPE, PID)
values (54, '15元300条', 50);

insert into t_operationtype (ID, TYPE, PID)
values (55, '20元500条', 50);

insert into t_operationtype (ID, TYPE, PID)
values (56, '网内外', 49);

insert into t_operationtype (ID, TYPE, PID)
values (57, '3元50条', 56);

insert into t_operationtype (ID, TYPE, PID)
values (58, '5元100条', 56);

insert into t_operationtype (ID, TYPE, PID)
values (59, '10元150条', 56);

insert into t_operationtype (ID, TYPE, PID)
values (60, '18元300条', 56);

insert into t_operationtype (ID, TYPE, PID)
values (61, '网外', 49);

insert into t_operationtype (ID, TYPE, PID)
values (62, '5元60条', 61);

insert into t_operationtype (ID, TYPE, PID)
values (63, '开通状态', 50);

insert into t_operationtype (ID, TYPE, PID)
values (64, '有效帐期', 50);

insert into t_operationtype (ID, TYPE, PID)
values (65, '开通状态', 56);

insert into t_operationtype (ID, TYPE, PID)
values (66, '有效帐期', 56);

insert into t_operationtype (ID, TYPE, PID)
values (67, '开通状态', 61);

insert into t_operationtype (ID, TYPE, PID)
values (68, '有效帐期', 61);

insert into t_operationtype (ID, TYPE, PID)
values (69, '国际长途优惠包', 46);

insert into t_operationtype (ID, TYPE, PID)
values (70, '澳门', 69);

insert into t_operationtype (ID, TYPE, PID)
values (71, '菲律宾', 69);

insert into t_operationtype (ID, TYPE, PID)
values (72, '韩国', 69);

insert into t_operationtype (ID, TYPE, PID)
values (73, '马来西亚', 69);

insert into t_operationtype (ID, TYPE, PID)
values (74, '美国、加拿大', 69);

insert into t_operationtype (ID, TYPE, PID)
values (75, '日本', 69);

insert into t_operationtype (ID, TYPE, PID)
values (76, '台湾', 69);

insert into t_operationtype (ID, TYPE, PID)
values (79, '以色列', 69);

insert into t_operationtype (ID, TYPE, PID)
values (80, '印度尼西亚', 69);

insert into t_operationtype (ID, TYPE, PID)
values (81, '英国', 69);

insert into t_operationtype (ID, TYPE, PID)
values (82, '国内长途优惠包', 46);

insert into t_operationtype (ID, TYPE, PID)
values (83, '3元、0.25元/分钟', 82);

insert into t_operationtype (ID, TYPE, PID)
values (84, '5元、0.2元/分钟', 82);

insert into t_operationtype (ID, TYPE, PID)
values (85, '10元、0.15元/分钟', 82);

insert into t_operationtype (ID, TYPE, PID)
values (86, '省内漫游优惠包', 46);

insert into t_operationtype (ID, TYPE, PID)
values (87, '10元,漫游费0.4元/分钟', 86);

insert into t_operationtype (ID, TYPE, PID)
values (88, '20元,漫游费0.3元/分钟', 86);

insert into t_operationtype (ID, TYPE, PID)
values (89, '30元,漫游费0.25元/分钟', 86);

insert into t_operationtype (ID, TYPE, PID)
values (90, '忙时优惠包', 46);

insert into t_operationtype (ID, TYPE, PID)
values (91, '客户查询信息变更', 2);

insert into t_operationtype (ID, TYPE, PID)
values (92, '邮寄服务', 2);

insert into t_operationtype (ID, TYPE, PID)
values (93, '备卡激活', 2);

insert into t_operationtype (ID, TYPE, PID)
values (94, '代办国际漫游', 2);

insert into t_operationtype (ID, TYPE, PID)
values (95, '套餐变更', 2);

insert into t_operationtype (ID, TYPE, PID)
values (96, '客户经理电话服务预约', 2);