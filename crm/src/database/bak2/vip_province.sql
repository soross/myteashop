drop table vip_province cascade constraints;

/*==============================================================*/
/* Table: vip_province                                          */
/*==============================================================*/
create table vip_province  (
   n_id                 NUMBER,
   v_code               CHAR(3),
   v_name               VARCHAR2(20),
   constraint PK_VIP_PROVINCE primary key (n_id)
);

comment on table vip_province is '省表';
comment on column vip_province.n_id is '编号';
comment on column vip_province.v_code is '代码';
comment on column vip_province.v_name is '名称';

-- 创建序列
drop sequence seq_province;
create sequence seq_province;

-- 添加初始数据
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '110', '北京市');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '120', '天津市');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '130', '河北省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '140', '山西省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '150', '内蒙古自治区');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '210', '辽宁省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '220', '吉林省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '230', '黑龙江省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '310', '上海市');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '320', '江苏省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '330', '浙江省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '340', '安徽省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '350', '福建省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '360', '江西省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '370', '山东省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '410', '河南省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '420', '湖北省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '430', '湖南省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '440', '广东省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '450', '广西壮族自治区');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '460', '海南省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '500', '重庆市');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '510', '四川省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '520', '贵州省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '530', '云南省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '540', '西藏自治区');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '610', '陕西省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '620', '甘肃省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '630', '青海省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '640', '宁夏回族自治区');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '650', '新疆维吾尔自治区');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '710', '台湾省');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '810', '香港特别行政区');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '820', '澳门特别行政区');

commit;